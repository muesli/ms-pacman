#!/bin/sh

# TODO:
#  - Backup enabled systemd services
#  - Backup home directories
#

./backup_config.sh
./backup_packagelists.sh

# create master backup archive
tar -czf backup_system.tar.gz backup_config.tar.gz pkglist-off.txt pkglist-loc.txt

# clean up
rm backup_config.tar.gz pkglist-off.txt pkglist-loc.txt
