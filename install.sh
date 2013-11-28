#!/bin/bash

ln -sf ~/.dotfiles/zshrc ~/.zshrc
ln -sf ~/.dotfiles/vimrc ~/.vimrc

if [ ! -d ~/.vim ]; then
	git clone https://github.com/scrooloose/vimfiles.git ~/.vim
	cd ~/.vim && git submodule init && git submodule update
else
	cd ~/.vim && git submodule update
fi

