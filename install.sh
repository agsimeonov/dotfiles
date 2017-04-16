#!/bin/bash

# Zsh
if ! [ -d $HOME/.dotfiles ]; then
  git clone https://github.com/agsimeonov/dotfiles.git $HOME/.dotfiles
fi
if ! [ -e $HOME/.zshenv ]; then
  ln -s $HOME/.dotfiles/.zshenv $HOME/.
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

# Vrapper
if ! [ -e $HOME/.vrapperrc ]; then
  ln -s $HOME/.dotfiles/.vrapperrc $HOME/.
fi

# Postgres
if ! [ -e $HOME/.psqlrc ]; then
  ln -s $HOME/.dotfiles/.psqlrc $HOME/.
fi

# Interactive Shell
if ! [ -e $HOME/.inputrc ]; then
  ln -s $HOME/.dotfiles/.inputrc $HOME/.
fi

# Counter-Strike Global Offensive
if [ -d $HOME/Library/Application\ Support/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/csgo/cfg/ ]; then
  if ! [ -e $HOME/Library/Application\ Support/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/csgo/cfg/autoexec.cfg ]; then
    ln -s $HOME/.dotfiles/autoexec.cfg $HOME/Library/Application\ Support/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/csgo/cfg/autoexec.cfg
  fi
fi

# Livestreamer
if ! [ -e $HOME/.livestreamerrc ]; then
  ln -s $HOME/.dotfiles/.livestreamerrc $HOME/.
fi

# Vim Plug
if ! [ -e $HOME/.vim/autoload/plug.vim ]; then
  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
