termux-services:

install: termux-services
		install sv-enable  $(PREFIX)/bin/
		install sv-disable $(PREFIX)/bin/
		install service-daemon $(PREFIX)/bin/
		mkdir -p $(PREFIX)/etc/profile.d/
		cp start-services.sh $(PREFIX)/etc/profile.d
		chmod +x $(PREFIX)/etc/profile.d/start-services.sh


uninstall:
	rm -f $(PREFIX)/bin/sv-enable
	rm -f $(PREFIX)/bin/sv-disable
	rm -f $(PREFIX)/bin/service-daemon
	rm -f $(PREFIX)/etc/profile.d/start-services.sh

.PHONY: install uninstall
