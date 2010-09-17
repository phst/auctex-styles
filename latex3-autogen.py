#!/usr/bin/env python3
#
# Copyright (c) 2010, Philipp Stephani <st_philipp@yahoo.de>
#
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation files
# (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge,
# publish, distribute, sublicense, and/or sell copies of the Software,
# and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
# BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
# ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import sys
import copy
import logging
import string
import re
import optparse
import os
import subprocess


def main():
    parser = optparse.OptionParser()
    parser.add_option("-i", "--input-dir", metavar="DIR",
                      help=("search LaTeX 3 sources in directory DIR "
                            "[default: %default]"))
    parser.add_option("-o", "--output-dir", metavar="DIR",
                      help=("place generated files in directory DIR "
                            "[default: %default]"))
    parser.add_option("-t", "--template", metavar="FILE",
                      help="use FILE as template [default: %default]")
    parser.add_option("-w", "--indent", type="int", metavar="NUM",
                      help=("add NUM space character at the beginning "
                            "of each line [default: %default]"))
    parser.add_option("-d", "--debug", action="store_const",
                      dest="log_level", const=logging.DEBUG,
                      help="emit debugging messages")
    parser.add_option("-v", "--verbose", action="store_const",
                      dest="log_level", const=logging.INFO,
                      help="emit informational messages")
    parser.add_option("-q", "--quiet", action="store_const",
                      dest="log_level", const=logging.CRITICAL,
                      help="only emit critical errors")
    parser.set_defaults(input_dir=get_default_input_dir(),
                        output_dir=get_default_output_dir(),
                        template=get_default_template(),
                        indent=5,
                        log_level=logging.WARNING)
    options, args = parser.parse_args()
    with open(options.template, "rt", encoding="UTF-8") as stream:
        template = string.Template(stream.read())
    logging.basicConfig(level=options.log_level)
    process_directory(options.input_dir, options.output_dir,
                      template, " " * options.indent)


def get_default_input_dir():
    process = subprocess.Popen(["kpsewhich", "expl3.dtx"],
                               stdout=subprocess.PIPE)
    stdout, stderr = process.communicate()
    if process.returncode == 0:
        return os.path.dirname(stdout.decode(sys.getfilesystemencoding())
                               .rstrip("\n"))
    else:
        return None


def get_default_output_dir():
    return os.path.join(os.getcwd(), "expl3")


def get_default_template():
    return os.path.join(os.path.dirname(os.path.abspath(__file__)),
                        "Template.el.tpl")


def process_directory(input_dir, output_dir, template, indent):
    logging.info("Reading directory %s", input_dir)
    for fname in os.listdir(input_dir):
        stem, ext = os.path.splitext(fname)
        if ext == ".dtx":
            input_file = os.path.join(input_dir, fname)
            output_file = os.path.join(output_dir, stem + ".el")
            process_file(input_file, output_file, template, indent)


#int_func_pat = r"\\(?P<name>[a-zA-Z_]+):(?P<args>[nNpTFwcVvxof]*)"
#int_func_rgx = re.compile(int_func_pat)
#int_var_pat = (r"\\(?P<scope>[cgl])_(?P<name>[a-zA-Z_]+)_"
#               r"(?P<type>int|tl|toks|box|skip|dim|seq|prop|clist|stream|bool)")
#int_var_rgx = re.compile(int_var_pat)
desc_func_pat = (r"^%[ \t]*\\begin[ \t]*\{function\}[ \t]*\{[\s%]*"
                 r"(?P<names>[^}]+)"
                 r"\}[\s%]*\n"
                 r"%[ \t]*\\begin\{syntax\}[\s%]*"
                 r"(?P<syntax>.+?)\n" # non-greedy repetition might be inefficient
                 r"%[ \t]*\\end\{syntax\}")
desc_func_rgx = re.compile(desc_func_pat, re.M)
desc_var_pat = (r"^%[ \t]*\\begin[ \t]*\{variable\}[ \t]*\{[\s%]*"
                r"(?P<names>[^}]+)"
                r"\}")
desc_var_rgx = re.compile(desc_var_pat, re.M)
token_arg_chars = frozenset("NVo")
braced_arg_chars = frozenset("nTFcvxf")
good_arg_chars = token_arg_chars | braced_arg_chars


def process_file(input_file, output_file, template, indent):
    package = os.path.splitext(os.path.basename(input_file))[0]
    logging.info("Reading file %s", input_file)
    with open(input_file, "rt", encoding="UTF-8") as stream:
        text = stream.read()
    symbols = []
    for match in desc_func_rgx.finditer(text):
        names, syntax = match.group("names", "syntax")
        names = parse_func_names(names)
        syntax = parse_func_syntax(syntax)
        for name in names:
            if name not in syntax:
                if name.endswith(("T", "F")):
                    full_name = name[:-1] + "TF"
                    if full_name in syntax:
                        logging.info("Synthesizing argument description for "
                                     "function %s", name)
                        args = copy.copy(syntax[full_name])
                        del args[-1 if name.endswith("T") else -2]
                        syntax[name] = args
            if name not in syntax:
                logging.warning("No argument description for "
                                "function %s found", name)
                parts = name.split(":", 1)
                if len(parts) != 2:
                    logging.warning("Function %s has no argument specification",
                                    name)
                    continue
                desc, arg_spec = parts
                if not all(char in good_arg_chars for char in arg_spec):
                    logging.warning("Cannot synthesize argument list "
                                    "from argument specification %s", arg_spec)
                    continue
                logging.info("Synthesizing argument list for function %s", name)
                args = [(TokenArgument
                         if char in token_arg_chars
                         else BracedArgument)("arg{0}".format(i))
                        for i, char in enumerate(arg_spec, 1)]
                syntax[name] = args
            if name not in syntax:
                logging.warning("Unknown syntax for function %s", name)
                syntax[name] = None
            args = syntax[name]
            if args:
                fmt = " ".join(arg.format() for arg in args)
                symbol = '{0}\'("{1}" {2})'.format(indent, name[1:], fmt)
            else:
                symbol = '{0}"{1}"'.format(indent, name[1:])
            symbols.append(symbol)
    for match in desc_var_rgx.finditer(text):
        names = parse_var_names(match.group("names"))
        symbols.extend('{0}"{1}"'.format(indent, name[1:]) for name in names)
    symbols = "\n".join(symbols)
    logging.info("Writing %d symbols to file %s", len(symbols), output_file)
    with open(output_file, "wt", encoding="UTF-8") as stream:
        stream.write(template.substitute(package=package, symbols=symbols))


def parse_func_names(string):
    names = "".join(line.strip("%").strip()
                    for line in string.splitlines()).split("|")
    result = []
    for name in names:
        name = name.strip()
        if not name:
            continue
        logging.debug("Parsing function name %s", name)
        parts = [part.strip() for part in name.split("/", 1)]
        if not parts:
            continue
        base = parts[0]
        if len(parts) == 2:
            flags = frozenset(flag_rgx.findall(parts[1]))
        else:
            flags = frozenset()
        if "TF" in flags:
            logging.debug("Adding variants for boolean function %s", name)
            result.extend(base + suffix for suffix in ("T", "F", "TF"))
        else:
            result.append(base)
    return result


syntax_entry_pat = (r'^\s*"(?P<name>\\[\w]+:[\w]*)"\s*'
                    r"(?P<arglist>.*?)\s*$")
syntax_entry_rgx = re.compile(syntax_entry_pat)
syntax_arg_pat = (r"<(?P<token>[^>]+)>"
                  r"|\\Arg\{(?P<arg>[^}]+)\}"
                  r"|=")
syntax_arg_rgx = re.compile(syntax_arg_pat)
flag_pat = r"\((?P<flag>[^)]+)\)"
flag_rgx = re.compile(flag_pat)


class Argument:
    def __init__(self, name):
        self.name = name

    def format(self):
        raise NotImplementedError


class TokenArgument(Argument):
    def format(self):
        return "TeX-arg-macro"


class BracedArgument(Argument):
    def format(self):
        return '"{0}"'.format(self.name)


def parse_func_syntax(string):
    entries = "".join(line.strip("%").strip()
                      for line in string.splitlines()).split(r"\\")
    result = {}
    for entry in entries:
        entry = entry.strip()
        if not entry:
            continue
        logging.debug("Parsing syntax entry %s", entry)
        match = syntax_entry_rgx.match(entry)
        if match is None:
            logging.warning("Cannot parse syntax entry %s", entry)
            continue
        name, arglist = match.group("name", "arglist")
        args = []
        for match in syntax_arg_rgx.finditer(arglist):
            token, arg = match.group("token", "arg")
            if token is not None:
                args.append(TokenArgument(token))
            elif arg is not None:
                args.append(BracedArgument(arg))
            else:
                logging.warning("Cannot handle argument %s", match.group())
                args = None
                break
        result[name] = args
    return result


def parse_var_names(string):
    names = "".join(line.strip("%").strip()
                    for line in string.splitlines()).split("|")
    result = []
    for name in names:
        name = name.strip()
        if not name:
            continue
        result.append(name)
    return result


if __name__ == "__main__":
    main()
