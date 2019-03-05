# How to run services with runit on Termux

1. Run `make install`
2. Restart your Shell
3. Start a service with `sv up <servicename>`. For example `sv up crond`
4. To have a service start automatically, run `sv-enable <service>`

You can also stop services with `sv down <service>`
