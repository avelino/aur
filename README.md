# aur
ArchLinux Package Manager helper

support:

- pacman
- pacaur


## Install

Via AUR repository (https://aur.archlinux.org/packages/aur/):

    pacaur -S aur


Git Version:

    curl -L "https://raw.githubusercontent.com/avelino/aur/master/aur" -o /usr/local/bin/aur
    chmod +x /usr/local/bin/aur
    aur version


## Used

    aur update
	aur search <PACKAGE>
	aur install <PACKAGE>
	aur remove <PACKAGE>
	aur info <PACKAGE>
	aur clear
	aur list
