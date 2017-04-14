set nocompatible
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set number cursorline mouse=a
set incsearch ignorecase smartcase
set noswapfile
set clipboard=unnamedplus,unnamed
set splitbelow splitright
set backspace=indent,eol,start
set laststatus=2
set ttyfast
set formatoptions+=j "delete comment character when joining lines
let mapleader = ","

inoremap jk <ESC>

let g:airline_theme='powerlineish'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'

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
