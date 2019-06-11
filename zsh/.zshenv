#!/usr/bin/env zsh

typeset -U path

# Add home directory bin folder to path
if [[ -d "$HOME/bin" ]]; then
    path=($path ~/bin)
fi

# Add .dotfiles bin folder to path
path=($path ~/.dotfiles/bin)

export EDITOR="vim"
export VISUAL="vim"