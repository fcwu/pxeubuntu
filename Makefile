INSTALL = /usr/bin/install
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA    = ${INSTALL} -m 644

all: bin/pxeubuntu

install: all
	mkdir -p $(DESTDIR)/usr/sbin/
	$(INSTALL_PROGRAM) bin/pxeubuntu $(DESTDIR)/usr/sbin/
	mkdir -p $(DESTDIR)/usr/share/pxeubuntu/
	cp -r share/tftpboot $(DESTDIR)/usr/share/pxeubuntu/
