#!/usr/bin/env bash
# Script to install applications on a clean OS X machine
# Stacey Tay

# Ask for sudo
sudo -v
# Keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

xcode-select --install

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew upgrade

# oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Setup dotfiles
(mkdir Repositories && cd Repositories/ && git clone https://github.com/staceytay/dotfiles.git)
ln -s Repositories/dotfiles/.tmux.conf .tmux.conf
ln -s Repositories/dotfiles/zsh/.zshrc .zshrc

# Languages and tools
brew install aspell
brew install emacs --HEAD --use-git-head --cocoa --with-gnutls
brew linkapps emacs
git clone https://github.com/staceytay/emacs.d.git .emacs.d
brew install gcc
brew install ghostscript
brew install httrack
brew install nginx
brew install node
brew install ocaml
brew install opam
brew install libyaml
brew install python
brew install tmux
brew install tree

brew cleanup

# Apps
brew install caskroom/cask/brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew cask install alfred
brew cask install basictex
tlmgr install preprint
brew cask install bartender
brew cask install calibre
brew cask install dash
brew cask install dropbox
brew cask install evernote
brew cask install flux
brew cask install google-chrome
brew cask install google-drive
brew cask install haskell-platform
brew cask install hermes
brew cask install istat-menus
brew cask install java
brew cask install pandoc
brew cask install rescuetime
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install spotify-notifications
brew cask install vlc
brew cask install vmware-fusion
brew cask install ynab

# Python packages
pip install --upgrade setuptools
pip install --upgrade pip
pip install ipython
pip install mitmproxy
sudo pip install -U nltk
pip install -U numpy scipy scikit-learn
pip install scrapy
sudo pip install virtualenv

# Ruby gems
sudo gem install jekyll

# Config git
git config --global user.name "Stacey Tay"
git config --global user.email "stay.jw@gmail.com"
