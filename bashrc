#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Git tabcompletion and prompt
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

# Aliases
alias :q='exit'
alias ls='ls --color=auto'
alias la='ls -hal'
alias ll='ls -hl'
alias please='sudo $(history -p !!)'
alias ffs='eval "sudo $(fc -ln -1)"'
#alias nvidia-hotfix='nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceCompositionPipeline = On }"'

# Decluttering $HOME
# Forcing the use of ~/.config and ~/.cache
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
# GNUPG
export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg
# Less
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
# GTK 2
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
# Nvidia & CUDA
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/nv"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
# Vim
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
# Vimperator
export VIMPERATOR_RUNTIME="$XDG_CONFIG_HOME/vimperator"
export VIMPERATOR_INIT=":source $VIMPERATOR_RUNTIME/vimperatorrc"

# Prompt
#PS1='[\u@\h \W]\$ '

COLOR="$(tput setaf 1)"                                                         
RESET="$(tput sgr0)"
PS1='[\u@${SSH_CLIENT+${COLOR}ssh${RESET}:}\h \W$(__git_ps1 " (%s)")]\$ '
