set nocompatible
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set number cursorline mouse=a
set incsearch
set noswapfile
set clipboard+=unnamedplus
set splitbelow
set splitright
set backspace=indent,eol,start
set laststatus=2

let g:airline_theme='powerlineish'

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

if filereadable(expand("~/.vim/youcompleteme.rc"))
  source ~/.vim/youcompleteme.rc
endif

call vundle#end()

if filereadable(expand("~/.vim/local.rc"))
  source ~/.vim/local.rc
endif

filetype plugin indent on
syntax on

hi SpellBad term=reverse cterm=reverse ctermbg=none
hi Visual term=reverse cterm=reverse ctermbg=none
