#!/bin/sh

function helptext {
	echo "Usage: restore_config.sh INPUT_TAR_GZ"
}

[[ $# -gt 0 ]] || { helptext; exit 1; }

# restore modified configuration files
tar xvf $1 -C /
