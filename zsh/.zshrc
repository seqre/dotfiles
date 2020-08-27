# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1024
SAVEHIST=2048
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/seqre/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export EDITOR=nvim
export PS1=" > "

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -a'
alias lA='ls -A'
