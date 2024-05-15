# Set DOTFILE_ROOT to the absolute path of the directory containing the script
DOTFILE_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Create utils config folders
mkdir -p $HOME/.config
mkdir -p $HOME/.config/sheldon
mkdir -p $HOME/.config/alacritty
mkdir -p $HOME/.config/tmux
mkdir -p $HOME/.oh-my-zsh

# Symlinks
ln -sfn $DOTFILE_ROOT/.aliases $HOME/.aliases
ln -sfn $DOTFILE_ROOT/.path $HOME/.path
ln -sfn $DOTFILE_ROOT/nvim $HOME/.config/nvim
ln -sfn $DOTFILE_ROOT/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
ln -sfn $DOTFILE_ROOT/zsh/.zshrc $HOME/.zshrc
ln -sfn $DOTFILE_ROOT/zsh/p10k/.p10k.zsh $HOME/.p10k.zsh
ln -sfn $DOTFILE_ROOT/sheldon/plugins.toml $HOME/.config/sheldon/plugins.toml
ln -sfn $DOTFILE_ROOT/tmux/.tmux.conf $HOME/.tmux.conf
ln -sfn $DOTFILE_ROOT/sheldon/plugins.toml $HOME/sheldon/plugins.toml
ln -sfn $DOTFILE_ROOT/aliases $HOME/aliases
ln -sfn $DOTFILE_ROOT/.gitconfig $HOME/.gitconfig
