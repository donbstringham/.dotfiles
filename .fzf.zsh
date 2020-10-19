# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/stringhamdb/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/stringhamdb/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/stringhamdb/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/stringhamdb/.fzf/shell/key-bindings.zsh"
