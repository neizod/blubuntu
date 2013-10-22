SIGNKEY = 2B12B7A2
APPNAME = blubuntu
INPAREN = 's/.*(\(.\+\)).*/\1/'
VERSION = $(shell head -n 1 src/debian/changelog | sed ${INPAREN})

main:
	cd src/ && debuild -us -uc

signed:
	tar -zcvf ${APPNAME}_${VERSION}.orig.tar.gz src/
	cd src/ && debuild -S -k${SIGNKEY}

upload: signed
	dput ppa:neizod/ppa ${APPNAME}_${VERSION}_source.changes

clean:
	rm -rf *.deb *.tar.gz *.build *.changes *.dsc src/debian/${APPNAME}*/ \
	       src/debian/files src/debian/*.log src/debian/*.substvars
