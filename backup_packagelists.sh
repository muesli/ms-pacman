#!/bin/sh

# backup package lists
pacman -Qqe | grep -v "$(pacman -Qqm)" > pkglist-off.txt
pacman -Qqm > pkglist-loc.txt
