
BIN=kindle-send kindle-email

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ${BIN} ${DESTDIR}${PREFIX}/bin
	for f in ${BIN}; do chmod 755 ${DESTDIR}${PREFIX}/bin/$$f; done
