# Requires: brew install coreutils
alias ls="gls --color"

# Requires: https://github.com/trapd00r/LS_COLORS
eval $( gdircolors -b ~/git/LS_COLORS/LS_COLORS )

# Colorful completion when navigating the filesystem
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Requires: https://github.com/zsh-users/zsh-syntax-highlighting
source ~/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
