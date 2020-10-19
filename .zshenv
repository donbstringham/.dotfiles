# config setup
export DOTCONF="~/.config"
export EDITOR='nvim'
export GREP_OPTIONS="--color=auto";
export PROMPT_COMMAND="${PROMPT_TITLE}; ${PROMPT_COMMAND}"
export PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export TERM="xterm-256color"

# history setup
export HISTSIZE=32768
export HISTFILE=$HOME/.zsh/zsh_history
export SAVEHIST=$HISTSIZE

# homebrew
export HOMEBREW_NO_ANALYTICS=1

# language
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# ls colors
export CLICOLOR=1

# PATH setup
PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/local/sbin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/Users/stringhamdb/Go/bin
PATH=${PATH}:/Users/stringhamdb/.oh-my-zsh/plugins/z

export PATH=${PATH}

source $DOTCONF/zsh/.zshrc