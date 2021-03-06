# Install Homebrew

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# Cask
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
brew tap neovim/homebrew-neovim

# ------------------------------------------------------------------------------
# Command line interface from brew
# ------------------------------------------------------------------------------
brew install bash
brew install grep
brew install telnet

# Install packages
brew install iftop
brew install openssl
brew install composer
brew install brew-php-switcher
brew install git
brew install python3
brew install thefuck
brew install wget
brew install zsh
brew install zsh-completions
brew install unrar
brew install wifi-password
brew install sqlite
brew install potrace
brew install ctags
brew install --HEAD neovim
brew install tmux
brew install tableplus
brew install the_silver_searcher

# Binaries
brew install tree
brew install yarn

# PHP
brew install composer
brew install php@7.4
brew install php-code-sniffer
brew install pkg-config
brew install imagemagick
brew install php-cs-fixer

# Database & servers
brew install dnsmasq
brew install mariadb
brew install nginx
brew install redis

brew install starship

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Basic brew packages are installed."
echo "Use pecl install <package> to install additional PHP extensions. Example: pecl install imagick"


# Install cask packages

brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" spotify
# brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" filezilla
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" teamviewer
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" appcleaner
# brew cask install --appdir="/Applications" skype
# brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" apple-juice

# Utils
brew cask install --appdir="/Applications" avibrazil-rdm
brew cask install --appdir="/Applications" bartender
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" dockutil

# Browsers and drives
brew cask install --appdir="/Applications" brave-browser
# brew cask install --appdir="/Applications" google-backup-and-sync

# Editors and git management
brew cask install --appdir="/Applications" visual-studio-code
brew cask install alacritty

# Development
brew cask install --appdir="/Applications" java

# Others
brew cask install --appdir="/Applications" vlc

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook qlvideo

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew additional applications are installed."
