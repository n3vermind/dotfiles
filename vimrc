set nocompatible
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set number mouse=a
set incsearch ignorecase smartcase
set noswapfile
set clipboard=unnamedplus,unnamed
set splitbelow splitright
set backspace=indent,eol,start
set laststatus=2
set ttyfast
set ttymouse=sgr
set formatoptions+=j "delete comment character when joining lines
let mapleader = ","

inoremap jk <ESC>

let g:airline_theme='minimalist'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dense-analysis/ale'
Plugin 'arcticicestudio/nord-vim'

call vundle#end()

if filereadable(expand("~/.vim/local.rc"))
  source ~/.vim/local.rc
endif

filetype plugin indent on
syntax on

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_linters = {'rust': ['analyzer']}
let g:ale_completion_autoimport = 1
let g:ale_fixers = {'rust': ['rustfmt']}
let g:ale_fix_on_save = 1
nnoremap <leader>g :ALEGoToDefinition<CR>

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme nord
hi Normal guibg=NONE
