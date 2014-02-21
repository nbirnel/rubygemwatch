PREFIX = /usr/local

install :: rubygemwatch rubygemwatch.1
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f rubygemwatch ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/rubygemwatch
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f rubygemwatch.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/rubygemwatch.1

pdf :: rubygemwatch.1
	man -t ./rubygemwatch.1 > rubygemwatch.ps
	ps2pdf rubygemwatch.ps

print-pdf :: rubygemwatch.pdf
	cygstart -p rubygemwatch.pdf

clean ::
	rm -r rubygemwatch.ps

remove ::
	rm -f ${DESTDIR}${PREFIX}/bin/rubygemwatch
	rm -f ${DESTDIR}${PREFIX}/man/man1/rubygemwatch.1
