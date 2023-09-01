#!/usr/bin/env sh
#
# Vim
# This installs vim and vim plugins (using Vundle)

echo " Override the default Vim for you."

# install vim via brew (the default one is usually broken)
brew install vim

# install vundle/vundlePlugins
$HOME/dotfiles/vim/vundle-install.sh 2>&1

# create temp files used by vim
mkdir -p $HOME/.vim/tmp/{backup,swap,tags,undo}

exit 0
