termux-services:

install: termux-services
	install sv-enable  $(PREFIX)/bin/
	install sv-disable $(PREFIX)/bin/
	install service-daemon $(PREFIX)/bin/
	mkdir -p $(PREFIX)/etc/profile.d/
	install start-services.sh $(PREFIX)/etc/profile.d
	mkdir -p $(PREFIX)/etc/conf.d
	install start-services.fish $(PREFIX)/etc/fish/conf.d
	mkdir -p $(PREFIX)/share/termux-services
	install svlogger $(PREFIX)/share/termux-services

uninstall:
	rm -f $(PREFIX)/bin/sv-enable
	rm -f $(PREFIX)/bin/sv-disable
	rm -f $(PREFIX)/bin/service-daemon
	rm -f $(PREFIX)/etc/profile.d/start-services.sh
	rm -f $(PREFIX)/etc/fish/conf.d/start-services.fish
	rm -rf $(PREFIX)/share/termux-services

.PHONY: install uninstall
