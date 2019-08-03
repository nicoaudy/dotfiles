#!/bin/bash
mkdir -p ../vim/
cp $HOME/.vimrc ../vim/.vimrc
cp -r $HOME/.vim/ ../vim/

# ZSH
cp $HOME/.zshrc ../.zshrc 2>/dev/null
