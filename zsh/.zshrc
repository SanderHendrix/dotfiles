# Prompt
source /usr/share/git/completion/git-prompt.sh
COLOR="$(tput setaf 1)"
RESET="$(tput sgr0)"
PROMPT='[%n@${SSH_CLIENT+${COLOR}ssh${RESET}:}%m %c]$ '
setopt PROMPT_SUBST #; RPS1='$(__git_ps1 " (%s)")'

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%F{yellow}[ NORMAL ]%f"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(__git_ps1) $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select


# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias :q='exit'
alias ls='ls --color=auto --group-directories-first'
alias la='ls -hal'
alias ll='ls -hl'
alias please='sudo $(history -p !!)'
alias ffs='eval "sudo $(fc -ln -1)"'
alias nvidia-hotfix='nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceCompositionPipeline = On }"'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# Environment variables
export EDITOR=vim
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
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/nv"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
# Vim
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
# Python
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"




# The following lines were added by compinstall
zstyle :compinstall filename '/home/sander/.config/zsh/zshrc'

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE="$XDG_CACHE_HOME"/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
unsetopt beep
# End of lines configured by zsh-newuser-install
