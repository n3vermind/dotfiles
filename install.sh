#!/bin/bash

ln -s ~/.dotfiles/xinitrc ~/.xinitrc
ln -s ~/.dotfiles/Xresource ~/.Xresource

ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc

mkdir -p ~/.config
ln -s ~/.dotfiles/awesome ~/.config/awesome
