export ZSH=/usr/share/oh-my-zsh/

ZSH_THEME="afowler"
DISABLE_AUTO_UPDATE="true"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
    mkdir $ZSH_CACHE_DIR;
fi

plugins=(git)

# User configuration

bindkey -v
export KEYTIMEOUT=1

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

source $ZSH/oh-my-zsh.sh
