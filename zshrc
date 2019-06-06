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
alias gh='git push origin master'
alias gs='git status'
alias gc='git commit'
alias gd='git diff'

# TODO: rbenv
# TODO: update (brew, gems)
# TODO: man page in preview
# TODO: function to grep to TODOs in directory
# TODO: update prompt
# TODO: handle vim directory

#
# Function: serve 
# Serves the current directory through HTTP
#function serve {
#    port="${1:-5000}"
#    ruby -run -e httpd . -p $port
#}
