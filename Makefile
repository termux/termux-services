termux-services:

install: termux-services
	install sv-enable $(DESTDIR)$(PREFIX)/bin/
	install sv-disable $(DESTDIR)$(PREFIX)/bin/
	install service-daemon $(DESTDIR)$(PREFIX)/bin/
	mkdir -p $(DESTDIR)$(PREFIX)/etc/profile.d/
	install start-services.sh $(DESTDIR)$(PREFIX)/etc/profile.d
	mkdir -p $(DESTDIR)$(PREFIX)/etc/fish/conf.d
	install start-services.fish $(DESTDIR)$(PREFIX)/etc/fish/conf.d
	mkdir -p $(DESTDIR)$(PREFIX)/share/termux-services
	install svlogger $(DESTDIR)$(PREFIX)/share/termux-services

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/sv-enable
	rm -f $(DESTDIR)$(PREFIX)/bin/sv-disable
	rm -f $(DESTDIR)$(PREFIX)/bin/service-daemon
	rm -f $(DESTDIR)$(PREFIX)/etc/profile.d/start-services.sh
	rm -f $(DESTDIR)$(PREFIX)/etc/fish/conf.d/start-services.fish
	rm -rf $(DESTDIR)$(PREFIX)/share/termux-services

.PHONY: install uninstall
