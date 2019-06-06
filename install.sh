#!/usr/bin/env sh

# Function: timestamp
# Create a timestamp in the form: 2017-05-06_18:29:44
function timestamp {
    date +"%Y-%m-%d_%H:%M:%S"
}

# Function: backup_file <filename>
# Backup up a file by copying it with an appended timestamp
function backupFile {
    if [ -f "$1" ]; then
        local ts=$(timestamp) 
        cp "$1" "$1.bak.$ts" 
    fi
}

# Function: replace_file <current_file> <new_file> 
# Makes a backup of <current_file> and then replaces 
# it with a symbolic link to <new_file>
function installFile {
    if [ -f "$2" ]; then
        if [ -f "$1" ]; then
            backupFile "$1"
            rm "$1" 
        fi
        ln -s "$2" "$1"
    fi
}

installFile ~/.vimrc ~/.dotfiles/vimrc
installFile ~/.zshrc ~/.dotfiles/zshrc

#replace_file ~/.gitconfig ~/.dotfiles/gitconfig