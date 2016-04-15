# Load completion scripts in $FPATH
autoload -Uz compinit && compinit

# http://zsh.sourceforge.net/Doc/Release/Zsh-Modules.html#The-zsh_002fcomplist-Module
zstyle ':completion:*' menu select
