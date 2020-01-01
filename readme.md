# Dotfiles
Dotfiles I use with MacOS Sierra mostly for Web Development.

## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Clone and install dotfiles:

    cd ~/dotfiles
    cd ~/dotfiles/install
    chmod +wx install.sh
    chmod -R +wx ~/dotfiles/bin
    ./install.sh

## Additional steps

1. Install fonts
2. In iterm `Preferences > General > Load preferences from a custom folder or URL` and set it to `~/dotfiles/iterm`
3. `sudo reboot`
4. Enjoy

## The `dotfiles` command

    $ dotfiles
    ￫ Usage: dotfiles <command>

    Commands:
       help             This help message
       update           Update packages and pkg managers (OS, brew, npm, yarn, commposer)
       clean            Clean up caches (brew, npm, yarn, composer)
       symlinks         Run symlinks script
       brew             Run brew script
       node             Run node setup script
       valet            Run valet script
       ohmyzsh          Run oh my zsh script
       hosts            Run hosts script
       defaults         Run MacOS defaults script
       dock             Run MacOS dock script

## The `ssh-manager` command

    $ ssh-manager
    ￫ Usage: ssh-manager <command>

    Commands:
       help             This help message
       list             List of all SSH keys and hosts in SSH config
       list-keys        List of all SSH keys
       copy             Copy public SSH key
       new              Generate new SSH key
       host             Add host to SSH config, use --key to generate new key
       remove           Remove host from SSH config
       list-host        List of all hosts in SSH config

## VIM

```bash
cd scripts
chmod +x vim-install.sh
chmod +x vim-save.sh
./install
```

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.
