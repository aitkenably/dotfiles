#!/usr/bin/env zsh

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

alias l='ls -GFh'
alias ll='ls -lGFh'
alias rm='rm -i'
alias mv='mv -i'
alias cls='clear'
alias v='view'

# Print $PATH one entry per line
alias mypath="echo $PATH | tr : '\n'"

# Git
alias ga='git add'
alias gaa='git add -A'
alias gh='git push origin master'
alias gs='git status'
alias gc='git commit'
alias gd='git diff'

# Setup rbenv
eval "$(rbenv init -)"


PROMPT='%m:%d> '
RPROMPT='%t'

# Detect our OS 
OS=$(uname -s)

# Mac-specific settings 
if [[ $OS == 'Darwin' ]]; then
    
    function manp() {
        man -t "${1:-zsh}" | open -f -a /Applications/Preview.app
    } 

fi
