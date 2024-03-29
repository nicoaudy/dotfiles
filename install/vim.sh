#!/bin/bash
if [ -f $HOME/.config/nvim/init.lua ]; then
  rm $HOME/.config/nvim/init.lua 
  rm -rf $HOME/.config/nvim/lua
fi

mkdir -p $HOME/.vim/
#cp -i "$DOTFILES_DIR/vim/.vimrc" $HOME/.vimrc
#cp -i "$DOTFILES_DIRvim/plugins.vim" $HOME/.vim/plugins.vim
#cp -i -r "$DOTFILES_DIR/vim/snippets" $HOME/.vim/

ln -sfv "$DOTFILES_DIR/vim/.vimrc" $HOME/.vimrc
ln -sfv "$DOTFILES_DIR/vim/plugins.vim" $HOME/.vim/plugins.vim
ln -sfv "$DOTFILES_DIR/vim/coc-settings.json" $HOME/.vim/coc-settings.json
ln -sfv "$DOTFILES_DIR/vim/snippets" $HOME/.vim/
ln -sfv "$DOTFILES_DIR/vim/colors" $HOME/.vim/
ln -sfv "$DOTFILES_DIR/vim/plugins" $HOME/.vim/
ln -sfv "$DOTFILES_DIR/vim/settings" $HOME/.vim/

# For neovim spesific
ln -sfv "$DOTFILES_DIR/vim/init.vim" $HOME/.config/nvim/

ln -sfv "$DOTFILES_DIR/vim/init.vim" $HOME/.ideavimrc

# Get Vundle plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Plugins
vim +PlugInstall +qall
