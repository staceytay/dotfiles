# Script to install applications on a clean OS X machine
# Stacey Tay

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# First things first, install emacs.
brew install aspell
brew install emacs --HEAD --use-git-head --cocoa --with-gnutls
brew linkapps
git clone https://github.com/staceytay/emacs.d.git .emacs.d
(cd .emacs.d/ && git checkout stacey)
(mkdir Repositories && cd Repositories/ && git clone git@github.com:staceytay/dotfiles.git)
ln -s Repositories/dotfiles/.profile .profile
ln -s Repositories/dotfiles/.emacs_bash .emacs_bash

# Languages and tools
brew install ocaml
brew install opam
brew install python
pip install --upgrade setuptools
pip install --upgrade pip
sudo gem install jekyll
# Fish shell
brew install fish
sudo -s 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

brew install caskroom/cask/brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew cask install dash
brew cask install evernote
brew cask install flux
brew cask install google-chrome
brew cask install google-drive
brew cask install mailbox
brew cask install shiftit
brew cask install spotify
brew cask install vlc
brew cask install vmware-fusion
brew cask install xquartz

# NLTK
brew install libyaml
sudo pip install -U nltk
