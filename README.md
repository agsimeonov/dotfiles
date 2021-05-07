# How to Install on macOS

## Install homebrew if you don't have it
```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

## Install the following libraries
```brew install zsh vim git coreutils tmux```

## Clone this repository as follows
```git clone https://github.com/agsimeonov/dotfiles.git ~/.dotfiles```

## Run install script
```~/.dotfiles/install.sh```

## Install iTerm2
```brew cask install iterm2```

## Install an awesome Font
```open ~/.dotfiles/SourceCodePro+Powerline+Awesome+Regular.ttf```

* Click `Install Font`

## Open iTerm2
```open /Applications/iTerm.app```

## Install iTerm2 Color Preset
```open ~/.dotfiles/Obsidian.itermcolors```

## In iTerm2
* Go to `Preferences > Profiles`
* Select the `General` Tab
* Select `Command`
* Next to `Command` type `/usr/local/bin/zsh`
* Select the `Colors` Tab
* In the `Color Presets...` dropdown select `Obsidian`
* Select the `Text` tab
* Click `Change Font`
* Select `12pt SourceCodePro+Powerline+Awesome Regular`

## Restart iTerm2 and you are all set!
Congratualations!

## If you are getting: `zsh compinit: insecure directories, run compaudit for list.`
```compaudit | xargs chmod g-w```
