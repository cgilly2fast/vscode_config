alias oc="OPENCODE_ENABLE_EXA=1 opencode"
alias vim="nvim"

# git
alias g="git"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gaa="git add --all"
alias gcm="git commit -m"
alias gp="git push"
alias gl="git pull"
alias gco="git checkout"

## Jump backward to your previous Git branch
alias gback="git checkout @{-1}"


# Docker

alias dps="docker ps"
alias dpa="docker ps -a"
alias dimg="docker images"
alias dc="docker-compose"

## Nuke all running/stopped containers (Community Favorite)
alias drmf='docker rm -f $(docker ps -a -q)'


# Faster directory climbing
alias ..="cd .."
...() { cd ../../"$1"; }
....() { cd ../../../"$1"; }

# Safer file management (prompts before destroying files)
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Colorized, better default listings (or use 'eza'/'exa' if installed)
alias ls="ls -G"
alias ll="ls -laG"

# fun
alias please="sudo"


# mise
eval "$(/opt/homebrew/bin/mise activate zsh)" # added by https://mise.run/zsh

