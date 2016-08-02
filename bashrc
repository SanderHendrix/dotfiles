#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -hal'
alias ll='ls -hl'
alias please='sudo $(history -p !!)'
alias ffs='eval "sudo $(fc -ln -1)"'
alias test='eval "sudo cat /sys/kernel/debug/vgaswitcheroo/switch"'
alias :q='exit'
alias nvidia-hotfix='nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceCompositionPipeline = On }"'

PATH=$HOME/bin:$PATH
export PATH

export XDG_CONFIG_HOME="$HOME/.config"

export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export VIMPERATOR_INIT=":source $XDG_CONFIG_HOME/vimperator/vimperatorrc"
export VIMPERATOR_RUNTIME="$XDG_CONFIG_HOME"/vimperator

PS1='[\u@\h \W]\$ '
