# Mac OS X uses path_helper and /etc/paths.d to preload PATH, clear it out first
if [ -x /usr/libexec/path_helper ]; then
  PATH=''
  eval `/usr/libexec/path_helper -s`
fi

# Homebrew
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

# Android Home
if [ -d /usr/local/opt/android-sdk ]; then
  export ANDROID_HOME=/usr/local/opt/android-sdk
fi

# User Binaries
if [ -d $HOME/local/bin ]; then
  export PATH=$HOME/local/bin:$PATH
fi

# Go
export GOROOT=/usr/local/opt/go/libexec
if [ -d $GOROOT ]; then
  export PATH=$PATH:$GOROOT/bin
fi
export GOPATH=$HOME/.go
if [ -d $GOPATH ]; then
  export PATH=$PATH:$GOPATH/bin
fi
