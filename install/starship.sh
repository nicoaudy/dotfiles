#!/bin/bash
mkdir -p $HOME/.config/

ln -sfv "$DOTFILES_DIR/etc/starship.toml" $HOME/.config/
