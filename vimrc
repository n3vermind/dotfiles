set nocompatible
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set number cursorline mouse=a
set incsearch
set noswapfile
set clipboard=unnamedplus

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on
syntax on

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
set backspace=indent,eol,start

hi SpellBad term=reverse cterm=reverse ctermbg=none
hi Visual term=reverse cterm=reverse ctermbg=none
