export ZSH=$HOME/.oh-my-zsh/

ZSH_THEME="afowler"
DISABLE_AUTO_UPDATE="true"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache

plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

bindkey -v
export KEYTIMEOUT=1

bindkey -M vicmd 'k' up-line-or-search
bindkey -M vicmd 'j' down-line-or-search
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

bindkey "^?" backward-delete-char

[ -f ~/.zshlocal.rc ] && source ~/.zshlocal.rc
