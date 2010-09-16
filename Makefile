SHELL := /bin/sh
INSTALL := install
INSTALL_PROGRAM := $(INSTALL)
INSTALL_DATA := $(INSTALL) -m 644

bundle := phst
destdir := ~/.emacs.d/auctex/style/$(bundle)
sources := *.el


install: $(sources)
	$(INSTALL) -d $(destdir)
	for file in $? ; do $(INSTALL_DATA) $$file $(destdir) ; done

.SUFFIXES:
