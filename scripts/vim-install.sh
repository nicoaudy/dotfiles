#!/bin/bash
mkdir -p $1/.vim/
cp -i vim/.vimrc $1/.vimrc
cp -i vim/plugin.vim $1/.vim/
cp -i -r vim/snippets $1/.vim/
cp -i -r vim/bundle $1/.vim/

# Get Vundle plugin
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Plugins
vim +PluginInstall +qall