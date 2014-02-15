#!/bin/sh

# TODO:
#  - Backup enabled systemd services
#  - Backup home directories
#

function helptext {
	echo "Usage: backup_system.sh OUTPUT_TAR_GZ"
}

[[ $# -gt 0 ]] || { helptext; exit 1; }

./backup_config.sh backup_config.tar.gz
./backup_packagelists.sh

# create master backup archive
tar -czf $1 backup_config.tar.gz pkglist-off.txt pkglist-loc.txt

# clean up
rm backup_config.tar.gz pkglist-off.txt pkglist-loc.txt
