#!/bin/bash
mkdir -p $HOME/.vim/
#cp -i "$DOTFILES_DIR/vim/.vimrc" $HOME/.vimrc
#cp -i "$DOTFILES_DIRvim/plugins.vim" $HOME/.vim/plugins.vim
#cp -i -r "$DOTFILES_DIR/vim/snippets" $HOME/.vim/

ln -sfv "$DOTFILES_DIR/vim/.vimrc" $HOME/.vimrc
ln -sfv "$DOTFILES_DIR/vim/plugins.vim" $HOME/.vim/plugins.vim
ln -sfv "$DOTFILES_DIR/vim/snippets" $HOME/.vim/

# For neovim spesific
ln -sfv "$DOTFILES_DIR/vim/init.vim" $HOME/.config/nvim/

# Get Vundle plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Plugins
vim +PlugInstall +qall
