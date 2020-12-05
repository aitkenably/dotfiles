#!/usr/bin/env bash

echo "Installing dotfiles from GitHub"
echo ""

echo "Downloading .bash_aitkenably..."
wget -q -O ~/.bash_aitkenably.sh https://raw.githubusercontent.com/aitkenably/dotfiles/master/bash_aitkenably.sh 
 
echo "Dowloading .vimrc..."
wget -q -O ~/.vimrc https://raw.githubusercontent.com/aitkenably/dotfiles/master/vimrc

echo "Downloading vim color scheme..."
# instructions from here: https://draculatheme.com/vim
if [ -d "~/.vim/pack/themes/start/dracula" ]; then
    cd ~/.vim/pack/themes/start/dracula
    git pull origin master
elseo
    mkdir -p ~/.vim/pack/themes/start
    cd ~/.vim/pack/themes/start
    git clone https://github.com/dracula/vim.git dracula
fi

echo ""
echo "Now complete your installation"
echo "Add the following to your ~/.bashrc: "  
echo -e "\t[ -f ~/.bash_aitkenably.sh ] && . ~/.bash_aitkenably.sh"  
