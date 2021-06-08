.PHONY: install uninstall

install:
	cp ./humble-lumpia /usr/local/bin
	chmod a+x /usr/local/bin

uninstall:
	rm /usr/local/bin
