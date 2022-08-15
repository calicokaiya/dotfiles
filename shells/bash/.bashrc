# CalicoKaiya's bashrc
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colorize ls output
alias ls='ls --color=auto'

# Fancy prompt:
# username@hostname [workingdir]
# ♡ 
export PS1="\[$(tput bold)\]\[\033[38;5;162m\]\u@\H\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;162m\][\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;162m\]\W\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;162m\]]\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;162m\]♡\[$(tput sgr0)\] \[$(tput sgr0)\]"


# Sudo tab autocompletion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi 
fi
. "$HOME/.cargo/env"
