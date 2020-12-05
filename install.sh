#!/usr/bin/env bash

echo "Installing dotfiles from GitHub"
echo ""

echo "Downloading .bash_aitkenably..."
wget -q -O ~/.bash_aitkenably.sh https://raw.githubusercontent.com/aitkenably/dotfiles/master/bash_aitkenably.sh 
 
echo "Dowloading .vimrc..."
wget -q -O ~/.vimrc https://raw.githubusercontent.com/aitkenably/dotfiles/master/vimrc

echo "Downloading vim color scheme..."
# instructions here: https://draculatheme.com/vim
mkdir -p ~/.vim/pack/themes/start
pushd
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula
popd

mkdir -p ~/.vim/colors
wget -q -O ~/.vim/colors/dracula.vim https://raw.githubusercontent.com/aitkenably/dotfiles/master/vim/colors/dracula.vim

echo ""
echo "Now complete your installation"
echo "Add the following to your ~/.bashrc: "  
echo -e "\t[ -f ~/.bash_aitkenably.sh ] && . ~/.bash_aitkenably.sh"  
