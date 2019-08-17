# How to run services with runit on Termux

1. Install termux-services with `pkg install termux-services`
2. Restart your shell so that the service-daemon is started
3. Start a service with `sv up <servicename>`. For example `sv up sshd`
4. Check the log content of `$PREFIX/var/log/sv/<servicename>/current` in case there are problems

You can also stop services with `sv down <service>`
