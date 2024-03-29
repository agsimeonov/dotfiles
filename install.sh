#!/bin/bash

# Zsh
if ! [ -d $HOME/.dotfiles ]; then
  git clone https://github.com/agsimeonov/dotfiles.git $HOME/.dotfiles
fi
if ! [ -e $HOME/.zprofile ]; then
  ln -s $HOME/.dotfiles/.zprofile $HOME/.
fi
if ! [ -e $HOME/.zshrc ]; then
  ln -s $HOME/.dotfiles/.zshrc $HOME/.
fi
if ! [ -e $HOME/.zsh ]; then
  ln -s $HOME/.dotfiles/.zsh $HOME/.
fi

# Tmux
if ! [ -e $HOME/.tmux.conf ]; then
  ln -s $HOME/.dotfiles/.tmux.conf $HOME/.
fi

# Vim
if ! [ -e $HOME/.vimrc ]; then
  ln -s $HOME/.dotfiles/.vimrc $HOME/.
fi

# Postgres
if ! [ -e $HOME/.psqlrc ]; then
  ln -s $HOME/.dotfiles/.psqlrc $HOME/.
fi

# Interactive Shell
if ! [ -e $HOME/.inputrc ]; then
  ln -s $HOME/.dotfiles/.inputrc $HOME/.
fi
