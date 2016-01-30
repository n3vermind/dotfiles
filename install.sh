#!/bin/bash

set -e

function link {
  SOURCE=$1
  DEST=$2

  if [ -L $DEST ]; then
    unlink $DEST
  fi

  if [ -f $DEST ]; then
    echo "$DEST is a regular file"
  elif [ -d $DEST ]; then
    echo "$DEST is a directory"
  else
    ln -s $SOURCE $DEST
    echo "linked $SOURCE to $DEST"
  fi
}

function install_youcompleteme {
  YCMPATH=$DIR/vim/bundle/YouCompleteMe
  if [ -f $YCMPATH/third_party/ycmd/ycm_core.so ]; then
    echo "YouCompleteMe already installed"
  else
    $(cd $YCMPATH && ./install.sh --clang-completer --system-libclang --gocode-completer)
  fi
}

DIR=$(dirname "$(readlink -f "$0")")

cd $DIR

git submodule update --init --recursive

link $DIR/xinitrc $HOME/.xinitrc
link $DIR/Xresources $HOME/.Xresources

link $DIR/vim $HOME/.vim
link $DIR/vimrc $HOME/.vimrc
vim +PluginInstall +qall
install_youcompleteme

mkdir -p ~/.config
link $DIR/awesome $HOME/.config/awesome

link $DIR/oh-my-zsh $HOME/.oh-my-zsh
link $DIR/zshrc $HOME/.zshrc

link $DIR/gdbinit $HOME/.gdbinit

link $DIR/gitconfig $HOME/.gitconfig
