ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_COLOR_SCHEME='dark'

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
	brew
	cp
	dotenv
	git
	git-extras
	golang
	history
	history-search-multi-word
	marked2
	zsh-autosuggestions
	zsh-completions
	zsh-history-substring-search
    zsh-syntax-highlighting
    z
)

source $ZSH/oh-my-zsh.sh
source $CONFIG/zsh/zsh-sourced/.aliases
source $CONFIG/zsh/zsh-sourced/.conf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# misc
test -e "${HOME}/.iterm2_shell_integration.`basename $SHELL`" && source "${HOME}/.iterm2_shell_integration.`basename $SHELL`"
autoload -U compinit && compinit
eval "$(direnv hook zsh)"
zstyle ':completion:*:default' list-colors ''

# makes cd=pushd
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_TO_HOME

# history setup
unsetopt nomatch
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
setopt INTERACTIVE_COMMENTS

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"