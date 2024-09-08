#!/bin/bash

set -e

FOREGROUND=0 ./init-wp.sh

ln -s /wp-theme/dist /wp/wp-content/themes/j2digital

tail -f /dev/null

exit 0
