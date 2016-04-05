set nocompatible
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set number cursorline mouse=a
set incsearch
set noswapfile
set clipboard+=unnamedplus

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'

if filereadable(expand("~/.vim/youcompleteme.rc"))
  source ~/.vim/youcompleteme.rc
endif

if filereadable(expand("~/.vim/local.rc"))
  source ~/.vim/local.rc
endif

call vundle#end()

filetype plugin indent on
syntax on

set backspace=indent,eol,start

hi SpellBad term=reverse cterm=reverse ctermbg=none
hi Visual term=reverse cterm=reverse ctermbg=none
