#!/usr/bin/env bash

echo "Installing dotfiles from GitHub"
echo ""

echo "Downloading .bash_aitkenably..."
wget -q -O ~/.bash_aitkenably.sh https://raw.githubusercontent.com/aitkenably/dotfiles/master/bash_aitkenably.sh 
 
echo "Dowloading .vimrc..."
wget -q -O ~/.vimrc https://raw.githubusercontent.com/aitkenably/dotfiles/master/vimrc

echo "Downloading and installing vim color scheme"
mkdir -p ~/.vim/colors
wget -q -O https://raw.githubusercontent.com/aitkenably/dotfiles/master/vim/colors/dracula.vim

echo ""
echo "Now complete your installation"
echo "Add the following to your ~/.bashrc: "  
echo -e "\t[ -f ~/.bash_aitkenably.sh ] && . ~/.bash_aitkenably.sh"  
