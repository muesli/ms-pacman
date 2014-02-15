#!/bin/sh
pacman -Qii | awk '/^MODIFIED/ {print $2}' | tar -n -czf config_backup.tar.gz -T -
