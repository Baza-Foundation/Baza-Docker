#!/bin/bash
set -e

# First argument is a flag, assuming user wants to run bazad
if [ "${1:0:1}" = '-' ]; then
	set -- bazad -c /data/config.json "$@"
fi

# NOTE: for now user is changed to "baza" even if someone 
# uses the --user flag, due to failure of creation blockchain
# db file
if [ "$1" = 'bazad' ]; then
	exec gosu baza "$@"
fi

exec "$@"
