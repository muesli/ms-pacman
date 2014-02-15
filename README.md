ms-pacman
=========

Handy scripts for Arch Linux users

## Scripts

### backup_config.sh
Finds all modified configuration files and creates a backup named backup_config.tar.gz

### backup_packagelists.sh
Finds all installed official & AUR packages and creates two package lists

### backup_system.sh
Helper script to launch all backup scripts and create one "master" backup archive

### restore_config.sh
Restores all modified configuration files from a previously created backup_config.tar.gz

### restore_packages.sh
Install all official & AUR packages from the package lists created by backup_packagelists.sh

### restore_system.sh
Helper script to restore the entire system from the "master" backup archive created by backup_system.sh
