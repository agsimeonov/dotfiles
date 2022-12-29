# Mac OS X uses path_helper and /etc/paths.d to preload PATH, clear it out first
if [ -x /usr/libexec/path_helper ]; then
  PATH=''
  eval `/usr/libexec/path_helper -s`
fi

# Homebrew M1
if [ -d /opt/homebrew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Homebrew Intel
if [ -d /usr/local/sbin ]; then
  export PATH=/usr/local/sbin:$PATH
fi

# Linux Homebrew
if [ -d $HOME/.linuxbrew ]; then
  export PATH="$HOME/.linuxbrew/bin:$PATH"
  export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
  if [ -d $HOME/.linuxbrew/sbin ]; then
    export PATH=$HOME/.linuxbrew/sbin:$PATH
  fi
fi

# User Binaries
if [ -d $HOME/.local/bin ]; then
  export PATH=$HOME/.local/bin:$PATH
fi
