#!/bin/sh

# restore packages
pacman -Syu
pacman -S --needed $(cat pkglist-off.txt)

# install yaourt for AUR
pushd /tmp
pacman -S wget
wget https://aur.archlinux.org/packages/yaourt/yaourt.tar.gz
tar xvf yaourt.tar.gz && cd yaourt*
makepkg -s
pacman -U yaourt-*.pkg.tar.gz
popd

# restore AUR
yaourt -S $(cat pkglist-loc.txt | grep -vx "$(pacman -Qqm)")
