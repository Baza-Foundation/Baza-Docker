#!/bin/sh
set -e

# First argument is a flag, assuming user wants to run bazad
if [ "${1:0:1}" = '-' ]; then
	set -- bazad "$@"
fi

# allow the container to be started with `--user`
if [ "$1" = 'bazad' -a "$(id -u)" = '0' ]; then
	exec gosu baza "$@"
fi

exec "$@"
