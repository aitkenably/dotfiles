#!/usr/bin/env zsh

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

alias l='ls -GFh'
alias ll='ls -lGFh'
alias rm='rm -i'
alias mv='mv -i'
alias cls='clear'

# Print $PATH one entry per line
alias mypath="echo $PATH | tr : '\n'"
