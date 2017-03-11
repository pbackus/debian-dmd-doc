dmd-doc.deb:
	dpkg-deb --build dmd-doc

install: dmd-doc.deb
	sudo dpkg -i dmd-doc.deb

uninstall:
	sudo dpkg -r dmd-doc

check:
	install-docs --verbose --check dmd-doc/usr/share/doc-base/dmd-doc

clean:
	rm dmd-doc.deb
