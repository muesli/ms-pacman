#!/bin/sh

function helptext {
	echo "Usage: restore_system.sh INPUT_TAR_GZ"
}

[[ $# -gt 0 ]] || { helptext; exit 1; }

# extract master backup archive
tar xf $1

./restore_config.sh backup_config.tar.gz
./restore_packages.sh

# clean up
rm backup_config.tar.gz pkglist-off.txt pkglist-loc.txt
