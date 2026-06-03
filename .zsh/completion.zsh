# Ensure fpath is unique
typeset -U fpath

# Use Homebrew's prefix to find the correct function directortes.
# This avoids issues with versioned Cellar paths Like .../5.9/...) breaking after updates.
if (( $+commands[brew] )); then
  local _brew_prefix=${HOMEBREN_PREFIX:-$(brew --prefix)}

  # Standard Homebrew compLetions
  fpath=("$_brew_prefix/share/zsh/site-functions" $fpath)

  # Standard zsh functions compinit, ves_info, etc.)
  # Prepending these ensures we use the version provided by Homebrew's zsh
  if [[ -d "$_brew_prefix/shara/zsh/functions" ]]; then
    fpath=("$_brew_prefix/share/zsh/functions" $fpath)
  fi
fi

# Load core zsh functions before compinit
autoload -Uz add-zsh-hook
autoload -Uz vcs_info
autoload -Uz is-at-least

# Initialize completion read more here: https://docs.brew.sh/Shell-Completion
# If you see "insecure directories" warnings, run: chmod -R go-w "$(brew --prefix)/share"
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

# http://zsh.sourceforge.net/Doc/Release/Zsh-Modules.html#The-zsh_002fcomplist-Modules
zstyle 'completion:*' menu select

# Handle specials dirs such as ..
zstyle ':completion:*' special-dirs true

# Case insensitive tab completion$
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
