ifeq ($(PREFIX),)
    PREFIX := /usr
endif

.PHONY: install uninstall

install:
	install -Dm755 humble-lumpia -t "$(PREFIX)/bin"

uninstall:
	rm "$(PREFIX)/bin/humble-lumpia"
