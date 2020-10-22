# aur
ArchLinux Package Manager helper

support:

- pacman
- pacaur
- yay


## Install

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
	aur changelog <PACKAGE>
	aur clear
	aur list
	aur orphans
	aur deps
	aur bin_refresh


### Removing unused packages (orphans)

For recursively removing orphans and their configuration files:

```
aur uninstall $(aur orphans)
```
