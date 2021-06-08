.PHONY: install uninstall

install:
	cp ./humble-lumpia /usr/local/bin
	chmod a+x /usr/local/bin
	mkdir -p /var/local/humble-lumpia
uninstall:
	rm /usr/local/bin/humble-lumpia
	rm -r /var/local/humble-lumpia
