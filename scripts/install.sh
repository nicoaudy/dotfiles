#!/bin/bash
mkdir -p $HOME/.vim/
cp -i ../vim/.vimrc $HOME/.vimrc
cp -i ../vim/plugins.vim $HOME/.vim/plugins.vim
cp -i -r ../vim/snippets $HOME/.vim/
# cp -i -r ../vim/bundle $HOME/.vim/

# Copy zsh
cp -i ../.zshrc $HOME/.zshrc

# Get Vundle plugin
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Plugins
vim +PluginInstall +qall
