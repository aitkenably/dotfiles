#!/usr/bin/env bash

# Function: timestamp
# Create a timestamp in the form: 2017-05-06_18:29:44
function timestamp {
    date +"%Y-%m-%d_%H:%M:%S"
}

# Function: backup_file <filename>
# Backup up a file by copying it with an appended timestamp
function backup_file {
    if [ -f "$1" ]; then
        local ts=$(timestamp) 
        cp "$1" "$1.bak.$ts" 
    fi
}

# Function: replace_file <current_file> <new_file> 
# Makes a backup of <current_file> and then replaces 
# it with a symbolic link to <new_file>
function replace_file {
    if [ -f "$1" ] && [ -f "$2" ]; then
        backup_file "$1"
        rm "$1" 
        ln -s "$2" "$1"
    fi
}

replace_file ~/.bash_profile ~/.dotfiles/bash_profile
replace_file ~/.bashrc ~/.dotfiles/bashrc
replace_file ~/.vimrc ~/.dotfiles/vimrc
replace_file ~/.gitconfig ~/.dotfiles/gitconfig
