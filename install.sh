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

YOUCOMPLETEMERC_SRC=$DIR/youcompleteme.rc
YOUCOMPLETEMERC_LINK=$DIR/vim/youcompleteme.rc

function install_youcompleteme {
  link $YOUCOMPLETEMERC_SRC $YOUCOMPLETEMERC_LINK
  YCMPATH=$DIR/vim/bundle/YouCompleteMe
  if [ -f $YCMPATH/third_party/ycmd/ycm_core.so ]; then
    echo "YouCompleteMe already installed"
  else
    $(cd $YCMPATH && ./install.sh --clang-completer --system-libclang --gocode-completer)
  fi
}

function remove_youcompleteme {
  if [ -L $YOUCOMPLETEMERC_LINK ]; then
    unlink $YOUCOMPLETEMERC_LINK
  fi
}

git submodule update --init --recursive

link $DIR/xinitrc $HOME/.xinitrc
link $DIR/xprofile $HOME/.xprofile
link $DIR/Xresources $HOME/.Xresources

link $DIR/vim $HOME/.vim
link $DIR/vimrc $HOME/.vimrc

read -p "Do you want to install youcompleteme? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  install_youcompleteme
else
  remove_youcompleteme
fi

vim +PluginInstall +qall

mkdir -p ~/.config
link $DIR/awesome $HOME/.config/awesome

link $DIR/oh-my-zsh $HOME/.oh-my-zsh
link $DIR/zshrc $HOME/.zshrc

link $DIR/gdbinit $HOME/.gdbinit

link $DIR/gitconfig $HOME/.gitconfig

link $DIR/tmux.conf $HOME/.tmux.conf
