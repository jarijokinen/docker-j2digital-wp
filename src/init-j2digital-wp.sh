#!/bin/bash

set -e

DISABLE_FOREGROUND=1 ./init-wp.sh

if [[ ! -e /wp/wp-content/themes/j2digital ]]; then
  ln -s /wp-theme/dist /wp/wp-content/themes/j2digital
fi

chown -R wp:wp /wp/wp-content/themes/j2digital

rm -rf /wp/wp-content/themes/twenty*
rm -rf /wp/wp-content/plugins/akismet
rm -rf /wp/wp-content/plugins/hello.php

tail -f /dev/null

exit 0
