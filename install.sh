#!/usr/bin/env bash

echo "Installing dotfiles from GitHub"
echo ""

echo "Downloading .bash_aitkenably..."
wget -q -O ~/.bash_aitkenably.sh https://raw.githubusercontent.com/aitkenably/dotfiles/master/bash_aitkenably.sh 
 

echo ""
echo "Now complete your installation"
echo "Add the following to your ~/.bashrc: "  
echo -e "\t[ -f ~/.bash_aitkenably.sh ] && . ~/.bash_aitkenably.sh"  
