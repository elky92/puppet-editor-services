PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
LIBDIR = $(PREFIX)/lib
DOCDIR = $(PREFIX)/share/doc/puppet-editor-services

.PHONY: all install uninstall

all:

install:
	install -m755 -d $(BINDIR)
	install -m755 -d $(LIBDIR)
	install -m755 -d $(DOCDIR)
	install -m755 puppet-debugserver $(BINDIR)
	install -m755 puppet-languageserver $(BINDIR)
	install -m755 puppet-languageserver-sidecar $(BINDIR)
	install -m644 docs/language-server.md $(DOCDIR)

uninstall:
	rm -f $(BINDIR)/puppet-debugserver
	rm -f $(BINDIR)/puppet-languageserver
	rm -f $(BINDIR)/puppet-languageserver-sidecar
	rm -rf $(DOCDIR)
