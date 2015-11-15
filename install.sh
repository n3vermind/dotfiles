#!/bin/bash

git submodule update --init --recursive

ln -s ~/.dotfiles/xinitrc ~/.xinitrc
ln -s ~/.dotfiles/Xresources ~/.Xresources

ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
vim +PluginInstall +qall
(cd ./vim/bundle/youcompleteme && ./install.sh --clang-completer --system-libclang)

mkdir -p ~/.config
ln -s ~/.dotfiles/awesome ~/.config/awesome

ln -s ~/.dotfiles/zshrc ~/.zshrc

ln -s ~/.dotfiles/gdbinit ~/.gdbinit
