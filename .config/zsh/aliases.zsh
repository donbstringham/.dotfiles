# quick config
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dailybrew='brew upgrade; brew update;brew cleanup -s; brew doctor'
alias omz='$EDITOR ~/.oh-my-zsh'
alias zc='$EDITOR ~/.config/zsh/zshrc'
alias hosts='sudo $EDITOR /etc/hosts'

# golang
alias gotest='go test -covermode=count -coverprofile=coverage.out'
alias gocover='gotest && go tool cover -html=coverage.out'

# shorten common commands
alias git='/usr/local/bin/git'
alias l='ls -alF'
alias h='history'
alias ha='history 1'
alias hg='history 1|grep'
alias po='popd'
alias prv="fzf --preview 'pygmentize -f terminal256 -g {}'"
alias ports="sudo lsof -i -P -n | grep LISTEN"
alias pu='pushd'
alias top='sudo htop'

# file cleanup
alias fcln="find . -type f -name '*.DS_Store' -ls -delete"

# ip
alias ip='curl ipinfo.io/ip'
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# misc
alias currentdate='date "+%Y.%m.%d"'
alias sha256="shasum -a 256 "$1" "
alias tailf="less +F $0"

