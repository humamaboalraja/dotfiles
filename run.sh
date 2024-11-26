#!/bin/bash

echo "Dotfiles setup"

# Homebrew setup
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi


# Set DOTFILE_ROOT to the absolute path of the directory containing the script
DOTFILE_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Create utils config folders
mkdir -p $HOME/.config
mkdir -p $HOME/.config/sheldon
mkdir -p $HOME/.config/alacritty
mkdir -p $HOME/.config/tmux
mkdir -p $HOME/.config/atuin
mkdir -p $HOME/.zsh
touch ~/.hushlogin


## Homebrew depepdencies
brew update
brew analytics off
brew bundle install -v --file=homebrew/Brewfile


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

# Symlinks
ln -sfn $DOTFILE_ROOT/nvim $HOME/.config/nvim
ln -sfn $DOTFILE_ROOT/starship/starship.toml $HOME/.config/starship.toml
ln -sfn $DOTFILE_ROOT/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
ln -sfn $DOTFILE_ROOT/zsh/.zshrc $HOME/.zshrc
ln -sfn $DOTFILE_ROOT/zsh/plugins $HOME/.zsh/plugins
ln -sfn $DOTFILE_ROOT/sheldon/plugins.toml $HOME/.config/sheldon/plugins.toml
ln -sfn $DOTFILE_ROOT/atuin $HOME/.config/atuin
ln -sfn $DOTFILE_ROOT/tmux/.tmux.conf $HOME/.tmux.conf
ln -sfn $DOTFILE_ROOT/.gitconfig $HOME/.gitconfig

