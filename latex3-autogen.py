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


class FunctionGroup:
    def __init__(self, match):
        names_text, syntax_text = match.group("names", "syntax")
        self.names = self.parse_names(names_text)
        self.syntax = self.parse_syntax(syntax_text)
        self.synthesize()
        self.emit_warnings()

    def parse_names(self, string):
        names = strip_prefix(string).split("|")
        result = []
        for name in names:
            name = name.strip()
            if not name or name.endswith(":D"):
                continue
            logging.debug("Parsing function name %s", name)
            name, flags = self.split_name(name)
            if "TF" in flags:
                logging.debug("Adding variants for boolean function %s", name)
                result.extend(name + suffix for suffix in ("T", "F", "TF"))
            else:
                result.append(name)
        return result

    flag_pat = r"\((?P<flag>[^)]+)\)"
    flag_rgx = re.compile(flag_pat)

    def split_name(self, name):
        parts = [part.strip() for part in name.split("/", 1)]
        base = parts[0]
        if len(parts) == 2:
            flags = frozenset(self.flag_rgx.findall(parts[1]))
        else:
            flags = frozenset()
        return base, flags

    syn_entry_pat = (r'^\s*"(?P<name>\\[\w]+:[\w]*)"\s*'
                     r"(?P<arglist>.*?)\s*$")
    syn_entry_rgx = re.compile(syn_entry_pat)

    def parse_syntax(self, string):
        entries = strip_prefix(string).split(r"\\")
        result = {}
        for entry in entries:
            entry = entry.strip()
            if not entry:
                continue
            logging.debug("Parsing syntax entry %s", entry)
            match = self.syn_entry_rgx.match(entry)
            if match is None:
                logging.warning("Cannot parse syntax entry %s", entry)
                continue
            name, args_text = match.group("name", "arglist")
            args = self.parse_args(args_text)
            if args:
                result[name] = args
        return result

    syn_arg_pat = (r"<(?P<token>[^>]+)>"
                   r"|\\Arg\{(?P<arg>[^}]+)\}"
                   r"|=")
    syn_arg_rgx = re.compile(syn_arg_pat)

    def parse_args(self, string):
        result = []
        for match in self.syn_arg_rgx.finditer(string):
            token, arg = match.group("token", "arg")
            if token is not None:
                result.append(TokenArgument(token))
            elif arg is not None:
                result.append(BracedArgument(arg))
            else:
                logging.warning("Cannot handle argument %s", match.group())
                return None
        return result

    def synthesize(self):
        self.synthesize_boolean()
        self.synthesize_other()

    def synthesize_boolean(self):
        for name in self.names:
            if name not in self.syntax and name.endswith(("T", "F")):
                full_name = name[:-1] + "TF"
                if full_name in self.syntax:
                    self.synthesize_bool_func(full_name, name)

    def synthesize_bool_func(self, full_name, new_name):
        logging.info("Synthesizing argument description for function %s",
                     new_name)
        args = copy.copy(self.syntax[full_name])
        del args[-1 if new_name.endswith("T") else -2]
        self.syntax[new_name] = args

    def synthesize_other(self):
        for name in self.names:
            if name not in self.syntax:
                self.synthesize_from_argspec(name)

    token_arg_chars = frozenset("NVo")
    braced_arg_chars = frozenset("nTFcvxf")
    good_arg_chars = token_arg_chars | braced_arg_chars

    def synthesize_from_argspec(self, name):
        logging.info("No argument description for function %s found", name)
        parts = name.split(":", 1)
        if len(parts) != 2:
            logging.warning("Function %s has no argument specification", name)
            return
        desc, arg_spec = parts
        if not all(char in self.good_arg_chars for char in arg_spec):
            logging.info("Cannot synthesize argument list "
                         "from argument specification %s", arg_spec)
            return
        logging.info("Synthesizing argument list for function %s", name)
        args = []
        for i, char in enumerate(arg_spec, 1):
            cls = (TokenArgument
                   if char in self.token_arg_chars
                   else BracedArgument)
            args.append(cls("arg{0}".format(i)))
        self.syntax[name] = args

    def emit_warnings(self):
        for name in self.names:
            if name not in self.syntax:
                logging.warning("Unknown syntax for function %s", name)


class VariableGroup:
    def __init__(self, match):
        self.names = self.parse_names(match.group("names"))

    def parse_names(self, string):
        names = strip_prefix(string).split("|")
        result = []
        for name in names:
            name = name.strip()
            if name:
                result.append(name)
        return result


class File:
    def __init__(self, app, path):
        self.input_file = path
        self.autogen_template = app.autogen_template
        self.master_template = app.master_template
        self.indent = app.indent
        self.autogen_suffix = app.autogen_suffix
        self.package = os.path.splitext(os.path.basename(path))[0]
        self.autogen_file = (os.path.join
                             (app.output_dir,
                              self.package + self.autogen_suffix + ".el"))
        self.master_file = os.path.join(app.output_dir, self.package + ".el")
        self.text = self.read()
        func_names, syntax = self.get_functions()
        var_names = self.get_variables()
        self.names = func_names + var_names
        self.syntax = syntax

    def read(self):
        logging.info("Reading file %s", self.input_file)
        with open(self.input_file, "rt", encoding="UTF-8") as stream:
            return stream.read()

    func_pat = (r"^%[ \t]*\\begin[ \t]*\{function\}[ \t]*\{[\s%]*"
                r"(?P<names>[^}]+)"
                r"\}[\s%]*\n"
                r"%[ \t]*\\begin\{syntax\}[\s%]*"
                # non-greedy repetition might be inefficient
                r"(?P<syntax>.+?)\n"
                r"%[ \t]*\\end\{syntax\}")
    func_rgx = re.compile(func_pat, re.M)

    def get_functions(self):
        names = []
        syntax = {}
        for match in self.func_rgx.finditer(self.text):
            group = FunctionGroup(match)
            names.extend(group.names)
            syntax.update(group.syntax)
        return names, syntax

    var_pat = (r"^%[ \t]*\\begin[ \t]*\{variable\}[ \t]*\{[\s%]*"
               r"(?P<names>[^}]+)"
               r"\}")
    var_rgx = re.compile(var_pat, re.M)

    def get_variables(self):
        names = []
        for match in self.var_rgx.finditer(self.text):
            group = VariableGroup(match)
            names.extend(group.names)
        return names

    def write(self):
        if self.names:
            self.write_autogen_file()
            if not os.path.exists(self.master_file):
                self.write_master_file()

    def write_autogen_file(self):
        logging.info("Writing %d symbols to file %s",
                     len(self.names), self.autogen_file)
        symbols = self.make_symbols()
        with open(self.autogen_file, "wt", encoding="UTF-8") as stream:
            stream.write(self.autogen_template.substitute
                         (package=self.package, suffix=self.autogen_suffix,
                          symbols=symbols))

    def make_symbols(self):
        symbols = []
        for name in self.names:
            args = self.syntax.get(name)
            if args:
                fmt = " ".join(arg.format() for arg in args)
                symbol = '{0}\'("{1}" {2})'.format(self.indent, name[1:], fmt)
            else:
                symbol = '{0}"{1}"'.format(self.indent, name[1:])
            symbols.append(symbol)
        return "\n".join(symbols)

    def write_master_file(self):
        logging.info("Writing master file %s", self.master_file)
        with open(self.master_file, "wt", encoding="UTF-8") as stream:
            stream.write(self.master_template.substitute
                         (package=self.package, suffix=self.autogen_suffix))


class Application:
    def __init__(self, options):
        logging.basicConfig(level=options.log_level)
        with open(options.autogen_template, "rt", encoding="UTF-8") as stream:
            self.autogen_template = string.Template(stream.read())
        with open(options.master_template, "rt", encoding="UTF-8") as stream:
            self.master_template = string.Template(stream.read())
        self.input_dir = options.input_dir
        self.output_dir = options.output_dir
        self.autogen_suffix = options.autogen_suffix
        self.indent = options.indent * " "

    def run(self):
        logging.info("Reading directory %s", self.input_dir)
        for fname in os.listdir(self.input_dir):
            stem, ext = os.path.splitext(fname)
            if ext == ".dtx":
                path = os.path.join(self.input_dir, fname)
                self.process(path)

    def process(self, path):
        file = File(self, path)
        file.write()


def get_input_dir():
    path = kpsewhich("expl3.dtx")
    if path:
        return os.path.dirname(path)
    else:
        return None


def get_output_dir():
    return os.getcwd()


def kpsewhich(fname):
    process = subprocess.Popen(["kpsewhich", fname], stdout=subprocess.PIPE)
    stdout, stderr = process.communicate()
    if process.returncode == 0:
        return stdout.decode(sys.getfilesystemencoding()).rstrip("\n")
    else:
        return None


def get_autogen_template():
    return os.path.join(get_script_dir(), "autogen.el.tpl")


def get_master_template():
    return os.path.join(get_script_dir(), "master.el.tpl")


def get_script_dir():
    return os.path.dirname(os.path.abspath(__file__))


def strip_prefix(string):
    return "".join([line.strip("%").strip() for line in string.splitlines()])


def main():
    parser = optparse.OptionParser()
    parser.add_option("-d", "--debug", action="store_const",
                      dest="log_level", const=logging.DEBUG,
                      help="emit debugging messages")
    parser.add_option("-v", "--verbose", action="store_const",
                      dest="log_level", const=logging.INFO,
                      help="emit informational messages")
    parser.add_option("-q", "--quiet", action="store_const",
                      dest="log_level", const=logging.CRITICAL,
                      help="only emit critical errors")
    parser.add_option("-i", "--input-dir", metavar="DIR",
                      help=("search LaTeX 3 sources in directory DIR "
                            "[default: %default]"))
    parser.add_option("-o", "--output-dir", metavar="DIR",
                      help=("place generated files in directory DIR "
                            "[default: %default]"))
    parser.add_option("-t", "--autogen-template", metavar="FILE",
                      help=("use FILE as template for auto-generated style "
                            "files [default: %default]"))
    parser.add_option("-m", "--master-template", metavar="FILE",
                      help="use FILE as master template [default: %default]")
    parser.add_option("-s", "--autogen-suffix", metavar="SUFFIX",
                      help=("suffix for auto-generated files "
                            "[default: %default]"))
    parser.add_option("-w", "--indent", type="int", metavar="NUM",
                      help=("add NUM space character at the beginning "
                            "of each line [default: %default]"))
    parser.set_defaults(input_dir=get_input_dir(),
                        output_dir=get_output_dir(),
                        autogen_template=get_autogen_template(),
                        master_template=get_master_template(),
                        autogen_suffix="-autogen",
                        indent=5,
                        log_level=logging.WARNING)
    options, args = parser.parse_args()
    app = Application(options)
    app.run()


if __name__ == "__main__":
    main()
