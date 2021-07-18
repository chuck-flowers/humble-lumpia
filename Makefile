ifeq ($(PREFIX),)
    PREFIX := /usr
endif

.PHONY: install uninstall

install: docs/humble-lumpia.1.gz 
	install -Dm755 humble-lumpia -t "$(PREFIX)/bin"
	install -Dm444 docs/humble-lumpia.1.gz "$(PREFIX)/share/man/man1"
	install -Dm444 bash-completion/humble-lumpia "$(PREFIX)/share/bash-completion/completions"

uninstall:
	rm "$(PREFIX)/bin/humble-lumpia"
	rm "$(PREFIX)/share/man/man1/humble-lumpia.1.gz"
	rm "$(PREFIX)/share/bash-completion/completions/humble-lumpia"

docs/humble-lumpia.1.gz: docs/humble-lumpia.1
	gzip --keep --force docs/humble-lumpia.1

