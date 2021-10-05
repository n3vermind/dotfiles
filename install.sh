#!/bin/bash

set -e

DIR=$(dirname "$(readlink -f "$0")")

cd $DIR

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

git submodule update --init --recursive

link $DIR $HOME/.dotfiles

link $DIR/vim $HOME/.vim
link $DIR/vimrc $HOME/.vimrc

vim +PluginInstall +qall

mkdir -p ~/.config
link $DIR/sway $HOME/.config/sway
link $DIR/waybar $HOME/.config/waybar

link $DIR/zshrc $HOME/.zshrc

link $DIR/gdbinit $HOME/.gdbinit

link $DIR/gitconfig $HOME/.gitconfig

link $DIR/tmux.conf $HOME/.tmux.conf
