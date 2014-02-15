#!/bin/sh

# backup modified configuration files
pacman -Qii | awk '/^MODIFIED/ {print $2}' | tar -n -cvzf backup_config.tar.gz -T -
