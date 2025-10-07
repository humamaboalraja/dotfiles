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

eval "$(fzf --zsh)"

# export ATUIN_NOBIND="true" # disable atuin's invocation on up arrow
#bindkey '^a' _atuin_search_widget

#bindkey "[D" backward-word
#bindkey "[C" forward-word
#bindkey "^a[" beginning-of-line
#bindkey "^a]" end-of-line

# bindkey '^t' autosuggest-accept


PATH=~/.console-ninja/.bin:$PATH



# ---- FZF -----

# Set up fzf key bindings and fuzzy completion
# eval "$(fzf --zsh)"

# --- setup fzf theme ---
# fg="#CBE0F0"
# bg="#011628"
# bg_highlight="#143652"
# purple="#B388FF"
# blue="#06BCE4"
# cyan="#2CF9ED"
#
# export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"
#
# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

source ~/fzf-git.sh/fzf-git.sh

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

# ----- Bat (better cat) -----



#export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
#  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:#121212,bg+:#262626
#  --color=hl:#5f87af,hl+:#5fd7ff,info:#afaf87,marker:#87ff00
#  --color=prompt:#d7005f,spinner:#af5fff,pointer:#af5fff,header:#87afaf
#  --color=border:#262626,label:#aeaeae,query:#d9d9d9
#  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
#  --marker=">" --pointer="◆" --separator="─" --scrollbar="│"'
#
#
#

