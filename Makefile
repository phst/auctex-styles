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

SHELL := /bin/sh
INSTALL := install
INSTALL_PROGRAM := $(INSTALL)
INSTALL_DATA := $(INSTALL) -m 644

bundle := phst
destdir_man := ~/.emacs.d/auctex/style/$(bundle)
destdir_auto := $(destdir_man)/expl3-autogen
sources_man := *.el
sources_auto := expl3/*.el
sources := $(sources_man) $(sources_auto)


all: auto

auto:
	./latex3-autogen.py

install: all install-man install-auto

install-man: $(sources_man)
	$(INSTALL) -d $(destdir_man)
	for file in $? ; do $(INSTALL_DATA) $$file $(destdir_man) ; done

install-auto: $(sources_auto)
	$(INSTALL) -d $(destdir_auto)
	for file in $? ; do $(INSTALL_DATA) $$file $(destdir_auto) ; done

.SUFFIXES:
