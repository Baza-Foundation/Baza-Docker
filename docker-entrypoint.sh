#!/bin/bash
set -e

mkdir -p /data/Baza

# First argument is a flag, assuming user wants to run bazad
if [ "${1:0:1}" = '-' ]; then
	set -- bazad -c /data/config.json "$@"
fi

# allow the container to be started with `--user`
if [ "$1" = 'bazad' -a "$(id -u)" = '0' ]; then
	find /data \! -user baza -exec chown baza '{}' +
	exec gosu baza "$@"
fi

exec "$@"
