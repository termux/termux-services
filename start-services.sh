export SVDIR=$PREFIX/var/service
export LOGDIR=$PREFIX/var/log
(service-daemon start >/dev/null 2>&1 & )
