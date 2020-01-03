#!/bin/bash
mkdir -p $HOME/.vim/
cp -i "$DOTFILES_DIR/vim/.vimrc" $HOME/.vimrc
cp -i "$DOTFILES_DIRvim/plugins.vim" $HOME/.vim/plugins.vim
cp -i -r "$DOTFILES_DIR/vim/snippets" $HOME/.vim/

# Get Vundle plugin
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Plugins
vim +PluginInstall +qall
