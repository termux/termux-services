termux-services:

install: termux-services
		install sv-enable  $(PREFIX)/bin/
		install sv-disable $(PREFIX)/bin/
		install service-daemon $(PREFIX)/bin/
		mkdir -p $(PREFIX)/etc/profile.d/
		install start-services.sh $(PREFIX)/etc/profile.d


uninstall:
	rm -f $(PREFIX)/bin/sv-enable
	rm -f $(PREFIX)/bin/sv-disable
	rm -f $(PREFIX)/bin/service-daemon
	rm -f $(PREFIX)/etc/profile.d/start-services.sh

.PHONY: install uninstall
