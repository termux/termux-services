# How to run services with runit on Termux

1. Place the .sv folder in your home directory. You can only copy the services that you need.
2. Put the contents of `bin/startservices` into your .bash_profile or .zshrc
3. Restart your Shell
4. Start a service with `sv up <servicename>`. For example `sv up crond`
5. To have a service start automatically, remove the down file. For example `rm ~/.sv/crond/down`

You can also stop services with `sv down crond`


