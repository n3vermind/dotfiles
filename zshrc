if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

setopt prompt_subst
PROMPT='%m %F{blue}% :: %F{green} %3~ %F{$CARETCOLOR}> %f'

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

autoload -Uz compinit && compinit

bindkey -v
export KEYTIMEOUT=1

bindkey -M vicmd 'k' up-line-or-search
bindkey -M vicmd 'j' down-line-or-search
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^R' history-incremental-search-backward

bindkey "^?" backward-delete-char

alias ls='ls --color=auto'
export EDITOR=vim

[ -f ~/.zshlocal.rc ] && source ~/.zshlocal.rc
