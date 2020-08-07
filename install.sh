#!/usr/bin/env bash

echo "Installing dotfiles from GitHub"
echo ""

echo "Downloading .bash_aitkenably..."
wget -q -O ~/.bash_aitkenably https://raw.githubusercontent.com/aitkenably/dotfiles/master/bash_aitkenably 
 

echo ""
echo "Now complete your installation"
echo "Add the following to your ~/.bashrc: "  
echo -e "\t[ -f ~/.bash_aitkenably ] && . ~/.bash_aitkenably"  
