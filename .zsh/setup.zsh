export ZSH_BIN_DIR=$(which zsh)
#export ECLIPSE_HOME=$HOME/.eclim/Eclipse.app/Contents/Eclipse

ZSH_DOTFILES_DIR=$HOME/.dotfiles
ZSH_SYNTAX_HIGHLIGHTING_DIR=$HOME/.zsh/git/syntax_highlighting
ZSH_LS_COLORS_DIR=$HOME/.zsh/git/ls_colors
ZSH_THEME_DIR=$HOME/.zsh/git/theme
ZSH_UPDATE_FILE=$HOME/.zsh/update.log
ZSH_LAST_UPDATE=0

# Account for first run
if [ -f $ZSH_UPDATE_FILE ]; then
  ZSH_LAST_UPDATE=$(cat $ZSH_UPDATE_FILE)
fi

# Make sure to update once a week
(( ZSH_UPDATE_THRESHOLD = $ZSH_LAST_UPDATE + 604800 ))

# Update if a week has passed
if [ $(date +%s) -ge $ZSH_UPDATE_THRESHOLD ]; then
  # Log new update time
  date +%s > $ZSH_UPDATE_FILE

  # Install files if necessary
  /bin/bash $ZSH_DOTFILES_DIR/install.sh

  if which git &> /dev/null; then
    # Dotfiles
    git -C $ZSH_DOTFILES_DIR pull

    # LS_COLORS
    if [ ! -d $ZSH_LS_COLORS_DIR ]; then
      git clone https://github.com/trapd00r/LS_COLORS.git $ZSH_LS_COLORS_DIR 
    fi
    git -C $ZSH_LS_COLORS_DIR pull

    # Zsh Syntax Highlighting
    if [ ! -d $ZSH_SYNTAX_HIGHLIGHTING_DIR ]; then
      git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_SYNTAX_HIGHLIGHTING_DIR
    fi
    git -C $ZSH_SYNTAX_HIGHLIGHTING_DIR pull

    # Theme
    if [ ! -d $ZSH_THEME_DIR ]; then
      git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_THEME_DIR
    fi
    git -C $ZSH_THEME_DIR pull
  fi

  # Install new files if necessary
  /bin/bash $ZSH_DOTFILES_DIR/install.sh
fi
