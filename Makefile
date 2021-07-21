ifeq ($(PREFIX),)
    PREFIX := /usr
endif

.PHONY: install uninstall

install: docs/man/humble-lumpia.1.gz 
	install -Dm755 humble-lumpia -t "$(DESTDIR)$(PREFIX)/bin"
	install -d "$(DESTDIR)$(PREFIX)/share/man/man1"
	install -m444 docs/man/humble-lumpia.1.gz "$(DESTDIR)$(PREFIX)/share/man/man1"
	install -d "$(DESTDIR)$(PREFIX)/share/humble-lumpia"
	install -m444 docs/help "$(DESTDIR)$(PREFIX)/share/humble-lumpia"
	install -d "$(DESTDIR)$(PREFIX)/share/bash-completion/completions"
	install -m444 bash-completion/humble-lumpia "$(DESTDIR)$(PREFIX)/share/bash-completion/completions"

uninstall:
	rm "$(DESTDIR)$(PREFIX)/bin/humble-lumpia"
	rm "$(DESTDIR)$(PREFIX)/share/man/man1/humble-lumpia.1.gz"
	rm "$(DESTDIR)$(PREFIX)/share/bash-completion/completions/humble-lumpia"
	rm -r "$(DESTDIR)$(PREFIX)/share/humble-lumpia"

docs/man/humble-lumpia.1.gz: docs/man/humble-lumpia.1
	gzip --keep --force docs/man/humble-lumpia.1

