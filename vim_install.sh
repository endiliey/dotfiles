#!/bin/bash

# Remove previous vim
sudo apt-get remove vim-common vim-runtime
sudo apt-get remove vim-tiny
cd ~
rm -rf vim

# Install vim
sudo apt-get update
sudo apt-get install vim vim-nox-py2

#if you want python 3 support, remove vim-nox-py2
#sudo apt-get install vim

# get vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy vimrc file in this repo to ~/.vimrc
sudo cp vimrc ~/.vimrc
touch ~/.vimrc

#install plugin
sudo vim +PluginInstall +qall

echo "You need to manually install YoucompleteMe plugin for python and c-lang family"
echo "https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64"
echo "Don't forget .ycm_extra_conf.py"
echo "sudo cp .ycm_extra_conf.py ~/.vim"
echo "Enjoy Vim !"
