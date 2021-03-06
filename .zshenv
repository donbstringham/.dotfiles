# config setup
export DOTCONF=$HOME/.config
export EDITOR='nvim'
export GREP_OPTIONS="--color=auto";
export PROMPT_COMMAND="${PROMPT_TITLE}; ${PROMPT_COMMAND}"
export PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export TERM="xterm-256color"
# language
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# ls colors
export CLICOLOR=1

# POWERLEVEL10K quiet boot
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# PATH setup
PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/local/sbin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/Users/stringhamdb/Go/bin
PATH=${PATH}:/Users/stringhamdb/.config/oh-my-zsh/plugins/z

export PATH=${PATH}

source $DOTCONF/zsh/zshrc.zsh
