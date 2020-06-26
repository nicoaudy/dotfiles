ln -sfv "$DOTFILES_DIR/dots/.hushlogin" ~
ln -sfv "$DOTFILES_DIR/dots/.exports" ~
ln -sfv "$DOTFILES_DIR/dots/.functions" ~
ln -sfv "$DOTFILES_DIR/dots/.extra" ~
ln -sfv "$DOTFILES_DIR/dots/.aliases" ~
ln -sfv "$DOTFILES_DIR/dots/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/dots/.inputrc" ~
ln -sfv "$DOTFILES_DIR/dots/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/dots/.zshrc" ~
ln -sfv "$DOTFILES_DIR/dots/.gitmodules" ~
ln -sfv "$DOTFILES_DIR/oh-my-zsh/themes/taybalt.zsh-theme" ~/.oh-my-zsh/themes
ln -sfv "$DOTFILES_DIR/dots/.tmux.conf" ~

# Hyper
ln -sfv "$DOTFILES_DIR/dots/.hyper-nico.js" ~/.hyper.js

# PHP Related
ln -sfv "$DOTFILES_DIR/dots/.phpcsfixer" ~
ln -sfv "$DOTFILES_DIR/dots/.phpcs.xml" ~/phpcs.xml

# ctags
ln -sfv "$DOTFILES_DIR/dots/.ctags" ~

# Add global gitignore
git config --global core.excludesfile ~/.gitignore_global
