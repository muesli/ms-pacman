#!/bin/sh

# extract master backup archive
tar xf backup_system.tar.gz

./restore_config.sh
./restore_packages.sh

# clean up
rm backup_config.tar.gz pkglist-off.txt pkglist-loc.txt
