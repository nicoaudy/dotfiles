#!/bin/bash
if [ -f $HOME/.config/nvim/init.vim ]; then
  rm $HOME/.config/nvim/init.vim 
fi
if [ -f $HOME/.config/nvim/init.lua ]; then
  rm $HOME/.config/nvim/init.lua 
fi

ln -sfv "$DOTFILES_DIR/nvim_lua/init.lua" $HOME/.config/nvim/
ln -sfv "$DOTFILES_DIR/nvim_lua/lua" $HOME/.config/nvim/

vim +PackerInstall +qall
