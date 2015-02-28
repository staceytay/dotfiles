# Stacey's zsh config
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export LANG=en_US.UTF-8
export PATH="/Users/stacey/.opam/system/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin"
export ZSH=/Users/stacey/.oh-my-zsh

DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd" # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
ZSH_CUSTOM=/Users/stacey/Repositories/dotfiles/zsh
ZSH_THEME="stacey"

plugins=(brew git)

source $ZSH/oh-my-zsh.sh
