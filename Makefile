ifeq ($(PREFIX),)
    PREFIX := /usr
endif

.PHONY: install uninstall

install: docs/man/humble-lumpia.1.gz 
	install -Dm755 humble-lumpia -t "$(PREFIX)/bin"
	install -Dm444 docs/man/humble-lumpia.1.gz "$(PREFIX)/share/man/man1"
	mkdir "$(PREFIX)/share/humble-lumpia"
	install -Dm444 docs/help "$(PREFIX)/share/humble-lumpia"
	install -Dm444 bash-completion/humble-lumpia "$(PREFIX)/share/bash-completion/completions"

uninstall:
	rm "$(PREFIX)/bin/humble-lumpia"
	rm "$(PREFIX)/share/man/man1/humble-lumpia.1.gz"
	rm "$(PREFIX)/share/bash-completion/completions/humble-lumpia"
	rm -r "$(PREFIX)/share/humble-lumpia"

docs/man/humble-lumpia.1.gz: docs/man/humble-lumpia.1
	gzip --keep --force docs/man/humble-lumpia.1

