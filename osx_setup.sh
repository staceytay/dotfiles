#!/bin/bash
# Script to install applications on a clean OS X machine
# Stacey Tay

# Ask for sudo
sudo -v
# Keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

xcode-select --install

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create Respositories folder
mkdir Repositories

# Setup dotfiles
git clone git@github.com:staceytay/dotfiles.git Repositories/dotfiles
ln -s Repositories/dotfiles/.tmux.conf .tmux.conf
ln -Fs Repositories/dotfiles/zsh/.zshrc .zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/staceytay/emacs.d.git .emacs.d

# Languages and tools
brew install aspell
brew install httpie
brew install httrack
brew install nginx
brew install node
brew install ocaml
brew install opam
brew install python
brew install ripgrep
brew install ruby
brew install tmux
brew install tree

brew cleanup

# Apps
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew cask install alfred
brew cask install basictex
tlmgr install preprint
brew cask install bartender
brew cask install dropbox
brew cask install evernote
brew cask install emacs
brew cask install flux
brew cask install google-chrome
brew cask install google-drive
brew cask install pandoc
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install vlc

# JS stuff
npm install -g tern

# Python packages
pip install --upgrade setuptools
pip install --upgrade pip
pip install ipython

# Ruby gems
sudo gem install jekyll

# Initialize opam config and install packages
opam init

# Config git
git config --global user.name "Stacey Tay"
git config --global user.email "staceytay@users.noreply.github.com"
