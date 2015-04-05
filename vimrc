set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set number cursorline mouse=a
set incsearch
set noswapfile
set clipboard=unnamedplus
filetype plugin indent on
syntax on

execute pathogen#infect()

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
set backspace=indent,eol,start

hi SpellBad term=reverse cterm=reverse ctermbg=none
hi Visual term=reverse cterm=reverse ctermbg=none
