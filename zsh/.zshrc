
export ZSH="$HOME/.oh-my-zsh"

export BAT_THEME=gruvbox-dark

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  docker
  kubectl
  terraform
)
source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Paths
source "$HOME/.path"

# Aliases
source "$HOME/.aliases"

# Sheldon
eval "$(sheldon source)"

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"


# export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Tmux
export EDITOR="nvim"
#eval "$(tmuxifier init -)"

