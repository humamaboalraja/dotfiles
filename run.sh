#!/bin/bash

echo "Dotfiles setup"

# Homebrew setup
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

## Homebrew depepdencies
brew update
brew analytics off
brew bundle install -v --file=homebrew/Brewfile


# Install tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier


# Install oh-my-zsh
source ./zsh/oh-my-zsh.sh

## Simpletex installer
bash ./userscripts/simpletex-installer.sh

# Setup macos defaults
source ./os/mac/finder.sh

#  macos dock settings
source ./os/mac/dock.sh

# Setup trakcpad settings 
source ./os/mac/trackpad.sh

# Setup OS keys remapping 
source ./os/mac/keysremap.sh

# add symlinks
source symlinks.sh

