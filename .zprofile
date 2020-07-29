#
# ~/.bash_profile
#

export PATH="${PATH}:/home/seqre/.local/bin"

[[ -f ~/.zshrc ]] && . ~/.zshrc

[[ "$(tty)" == "/dev/tty1" ]] && startx

