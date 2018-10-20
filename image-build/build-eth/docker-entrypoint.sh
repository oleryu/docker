#!/bin/sh
###################################################################
# OLERY 2018-09-21
# All the better ^_^
# @dev.olery.xyz
###################################################################
set -e

# first arg is `-f` or `--some-option`
# or first arg is `something.conf`
if [ "${1#-}" != "$1" ] || [ "${1%.conf}" != "$1" ]; then
        set -- all_start "$@"
fi

exec "$@" 2>&1