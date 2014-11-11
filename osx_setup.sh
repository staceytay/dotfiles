#!/usr/bin/env bash
# Script to install applications on a clean OS X machine
# Stacey Tay

# Ask for sudo
sudo -v
# Keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

xcode-select --install

# Config git
git config --global user.name "Stacey Tay"
git config --global user.email "stay.jw@gmail.com"

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew upgrade

# Setup dotfiles
(mkdir Repositories && cd Repositories/ && git clone git@github.com:staceytay/dotfiles.git)
ln -s Repositories/dotfiles/.profile .profile
ln -s Repositories/dotfiles/.emacs_bash .emacs_bash
ln -s Repositories/dotfiles/.tmux.conf .tmux.conf

# Languages and tools
brew install aspell
brew install emacs --HEAD --use-git-head --cocoa --with-gnutls
git clone https://github.com/staceytay/emacs.d.git .emacs.d
(cd .emacs.d/ && git checkout stacey)
brew install gcc
brew install node
brew install ocaml
brew install opam
brew install libyaml
brew install python
brew install tree
brew install fish
sudo -s 'echo "/usr/local/bin/fish" >> /etc/shells'

brew cleanup

# Apps
brew install caskroom/cask/brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew cask install alfred
brew cask install dash
brew cask install dropbox
brew cask install evernote
brew cask install flux
brew cask install google-chrome
brew cask install google-drive
brew cask install java
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install vlc
brew cask install vmware-fusion
brew cask install xquartz

brew cask alfred link

# Python packages
pip install --upgrade setuptools
pip install --upgrade pip
pip install ipython
sudo pip install -U nltk
pip install -U numpy scipy scikit-learn
pip install scrapy
sudo pip install virtualenv

# Ruby gems
sudo gem install jekyll
