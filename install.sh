pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
git clone git@github.com:agsimeonov/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/.zshenv ~/.
ln -s ~/.dotfiles/.zshrc ~/.
ln -s ~/.dotfiles/.zsh ~/.
