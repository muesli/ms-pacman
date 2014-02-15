ms-pacman
=========

Handy scripts for Arch Linux users

### Backup Scripts

#### Creating the backup

###### backup_config.sh OUTPUT_TAR_GZ
Finds all modified configuration files and creates a backup named OUTPUT_TAR_GZ

###### backup_packagelists.sh
Finds all installed official & AUR packages and creates two package lists

###### backup_system.sh OUTPUT_TAR_GZ
Helper script to launch all backup scripts and create one "master" backup archive named OUTPUT_TAR_GZ

#### Restoring backups

###### restore_config.sh INPUT_TAR_GZ
Restores all modified configuration files from a previously created INPUT_TAR_GZ

###### restore_packages.sh
Install all official & AUR packages from the package lists created by backup_packagelists.sh

###### restore_system.sh INPUT_TAR_GZ
Helper script to restore the entire system from the "master" backup archive INPUT_TAR_GZ created by backup_system.sh
