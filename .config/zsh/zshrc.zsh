ZSH=$DOTCONF/oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_COLOR_SCHEME='dark'
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

ENABLE_CORRECTION="false"
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
	zsh-autosuggestions
	zsh-completions
	zsh-history-substring-search
    zsh-syntax-highlighting
    z
)

# source files
source $DOTCONF/oh-my-zsh/oh-my-zsh.sh
source $DOTCONF/zsh/aliases.zsh
source $DOTCONF/zsh/config.zsh
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

# history options
HISTSIZE=50000
HISTFILE=$DOTCONF/zsh/zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt sharehistory

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
