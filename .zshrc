source $HOME/.zsh/setup.zsh
source $HOME/.zsh/mode.zsh
source $HOME/.zsh/options.zsh
source $HOME/.zsh/alias.zsh
source $HOME/.zsh/history.zsh
source $HOME/.zsh/theme.zsh
source $HOME/.zsh/completion.zsh
source $HOME/.zsh/color.zsh
source $HOME/.zsh/misc.zsh

if [ -d $HOME/.dotfiles-local ]; then
  for dotfile in $HOME/.dotfiles-local/**/*(.); do source $dotfile; done
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
