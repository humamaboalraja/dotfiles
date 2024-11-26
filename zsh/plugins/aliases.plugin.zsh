#!/usr/bin/env zsh

## Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
fcd() { cd "$(find . -type d -not -path '*/.*' |  fzf)" && l; }
f() { echo "$(find . -type f -not -path '*/.*' | fzf)" | pbcopy }
fv() { nvim "$(find . -type f -not -path '*/.*' | fzf)" }


## Default util alternatives

## List
alias ls="lsd -la --icon=always"
alias lst="lsd -la --tree  --long -G --depth=2"

## Task manager
alias top="bpytop"
alias top_l="top"


## Reads files
alias cat=bat


## File manager
alias rr="ranger"


## Zoxide
alias c="z"
alias cd=c


# Exit
alias x=exit


## HTTP Client
alias http="xh"


## Vim
alias vim=nvim
alias v=nvim

# Tmux 
alias tx=tmux


# ANSI 256-color palette
alias ansi2560="for i in {0..255}; do printf '\x1b[38;5;%dmcolor%-5i\x1b[0m' \$i \$i ; if ! (( (\$i - 3) % 6 )); then echo ; fi ; done"


# Alacritty's tailored nonsense
alias cr=clear 


# Fd
alias fd='fd --type f --hidden --follow'


# Net utils
alias whp="lsof -i" # :0x


# K8s aliases 
alias k="kubectl"
alias ka="kubectl apply -f"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kdel="kubectl delete"
alias kl="kubectl logs"
alias kgpo="kubectl get pod"
alias kgd="kubectl get deployments"
alias kctx="kubectx"
alias kns="kubens"
alias kl="kubectl logs -f"
alias ke="kubectl exec -it"
alias kcns='kubectl config set-context --current --namespace'


# Git aliases
alias g='git'
alias gpu="git pull origin"
alias gco="git checkout"
alias ga='git add'
alias gr='git remote'
alias gre='git reset'
alias gbl='git blame -w -e'
alias gbs='git bisect'
alias gb='git branch'
alias gba='git branch --all'
alias gcb='git checkout -b'
alias gcp='git cherry-pick'
alias gc="git commit -m"
alias gcn!='git commit --verbose --no-edit --amend'
alias gd='git diff'
alias gdw='git diff --word-iff'
alias gf='git fetch'
alias gfo='git fetch origin'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glod='git log --graph --topo-order --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
alias glola='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
alias glols='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat'
alias glol='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
alias gloga='git log --oneline --decorate --graph --all'
alias glg='git log --stat'
alias glgp='git log --stat --patch'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gprom='git pull --rebase origin $(git_main_branch)'
alias gp='git push'
alias gpf!='git push --force'
alias grev='git revert'
alias grm='git rm'
alias gcount='git shortlog --summary --numbered'
alias gsh='git show'
alias gsps='git show --pretty=short --show-signature'
alias gsta='git stash'
alias gst='git status'
alias gss='git status --short'


# Docker
alias dr='docker'


# Docker Compose
alias dco="docker-compose"


# Terraform
alias tf='terraform'


# Customs
alias mts='maps-tools'

