# Requires: brew install coreutils
if which gls &> /dev/null; then
  alias ls="gls --color"
elif ls --color &> /dev/null; then 
  alias ls="ls --color"
fi

# Requires: https://github.com/trapd00r/LS_COLORS
if which gdircolors &> /dev/null; then
  eval $( gdircolors -b $ZSH_LS_COLORS_DIR/LS_COLORS )
else
  eval $( dircolors -b $ZSH_LS_COLORS_DIR/LS_COLORS )
fi

# Colorful completion when navigating the filesystem
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Requires: https://github.com/zsh-users/zsh-syntax-highlighting
source $ZSH_SYNTAX_HIGHLIGHTING_DIR/zsh-syntax-highlighting.zsh
