#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -al'
alias ll='ls -l'
alias please='sudo $(history -p !!)'
alias ffs='eval "sudo $(fc -ln -1)"'
alias test='eval "sudo cat /sys/kernel/debug/vgaswitcheroo/switch"'
alias :q='exit'

PATH=$HOME/bin:$PATH
export PATH

PS1='[\u@\h \W]\$ '
