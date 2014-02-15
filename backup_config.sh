#!/bin/sh

function helptext {
	echo "Usage: backup_config.sh OUTPUT_TAR_GZ"
}

[[ $# -gt 0 ]] || { helptext; exit 1; }

# backup modified configuration files
pacman -Qii | awk '/^MODIFIED/ {print $2}' | tar -n -cvzf $1 -T -
