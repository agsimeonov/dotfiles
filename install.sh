# Zsh
if ! [ -d ~/.dotfiles ]; then
  git clone git@github.com:agsimeonov/dotfiles.git ~/.dotfiles
fi
if ! [ -e ~/.zshenv ]; then
  ln -s ~/.dotfiles/.zshenv ~/.
fi
if ! [ -e ~/.zshrc ]; then
  ln -s ~/.dotfiles/.zshrc ~/.
fi
if ! [ -e ~/.zsh ]; then
  ln -s ~/.dotfiles/.zsh ~/.
fi

# Tmux
if ! [ -e ~/.tmux.conf ]; then
  ln -s ~/.dotfiles/.tmux.conf ~/.
fi
