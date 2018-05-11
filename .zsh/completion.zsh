# Load completion scripts in $FPATH
autoload -Uz compinit && compinit

# http://zsh.sourceforge.net/Doc/Release/Zsh-Modules.html#The-zsh_002fcomplist-Module
zstyle ':completion:*' menu select

# Handle specials dirs such as ..
zstyle ':completion:*' special-dirs true

# Case insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Tab completion starts without an extra tab
setopt MENU_COMPLETE
