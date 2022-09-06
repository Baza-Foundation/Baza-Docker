#!/bin/bash
set -e

# First argument is a flag, assuming user wants to run bazad
if [ "${1:0:1}" = '-' ]; then
	set -- bazad -c /data/config.json "$@"
fi

# allow the container to be started with `--user`
if [ "$1" = 'bazad' -a "$(id -u)" = '0' ]; then
	exec gosu baza "$@"
fi
# NOTE: Not sure about this, should both uid and gid change, also 
# is there some better option fot this
gosu baza chown $(id -u):$(id -g) /data

exec "$@"
