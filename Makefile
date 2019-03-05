termux-services:

install: termux-services
		cp sv-enable  $(PREFIX)/bin/
		chmod +x $(PREFIX)/bin/sv-enable
		cp sv-disable $(PREFIX)/bin/
		chmod +x $(PREFIX)/bin/sv-disable
		cp service-daemon $(PREFIX)/bin/
		chmod +x $(PREFIX)/bin/service-daemon
		mkdir -p $(PREFIX)/etc/profile.d/
		cp start-services.sh $(PREFIX)/etc/profile.d
		chmod +x $(PREFIX)/etc/profile.d/start-services.sh


uninstall:
	rm -f $(PREFIX)/bin/sv-enable
	rm -f $(PREFIX)/bin/sv-disable
	rm -f $(PREFIX)/bin/service-daemon
	rm -f $(PREFIX)/etc/profile.d/start-services.sh

.PHONY: install uninstall
