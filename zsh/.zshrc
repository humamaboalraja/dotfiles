#!/usr/bin/env zsh

# Set up basic environment variables & Paths
export BAT_THEME="gruvbox-dark"
export EDITOR=/opt/homebrew/bin/nvim

# Sheldon
eval "$(sheldon source)"

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Atuin
eval "$(atuin init zsh)"

# export ATUIN_NOBIND="true" # disable atuin's invocation on up arrow
#bindkey '^a' _atuin_search_widget

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^a[" beginning-of-line
bindkey "^a]" end-of-line

bindkey '^t' autosuggest-accept

