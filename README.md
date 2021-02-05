# aur

ArchLinux Package Manager Helper

Particularly the `pacman` is one of the best package manager I've ever used, but having to memorize the parameters to perform operations is not mentally comfortable (`-Ss` **WTF**), I understand that with the use this becomes natural, but it bothers me.

aur helper exists to create alias for the `pacman` parameters (and similar software) following the pattern of the commands of other package managers.

**support:**

- pacman
- pacaur
- yay


## Install

Git Version:

```sh
curl -L "https://raw.githubusercontent.com/avelino/aur/master/aur" -o /usr/local/bin/aur && \
chmod +x /usr/local/bin/aur && \
aur version
```

## Used

- `update` updates all software already installed
- `search` search _software_ on arch linux database
- `install` install software
- `remove` remove software
- `info` show software description
- `changelog` show software chnagelog (all description)
- `clear` clean up all traces of software installation
- `list` list all softare installed
- `orphans` list all orphan software installed
- `deps` lists all software installation dependencies
- `install_bin` install [yay](https://github.com/Jguer/yay) software
- `bin_refresh` upgrade `aur` bin

### How to

Example of how to use `aur` (this software)

```sh
aur update && \
aur install yay
```

### Removing unused packages (orphans)

For recursively removing orphans and their configuration files:

```sh
aur uninstall $(aur orphans)
```
