export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export LANG=en_US.UTF-8
export LANG_ALL=en_US.UTF-8

# zsh config
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# oh-my-zsh config
export ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_CUSTOM=$HOME/Repositories/dotfiles/zsh
ZSH_THEME="stacey"

# Get zsh man pages for builtin commands
unalias run-help
autoload run-help

plugins=(brew git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
