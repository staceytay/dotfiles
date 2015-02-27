# Stacey's bash profile
# 5th Sept 2014

# OPAM configuration
. /Users/stacey/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
eval `opam config env`

# Aliases
alias ls='ls -h' # makes file sizes human readable
alias ll='ls -lh'

# Enable color highlighting
export CLICOLOR=1
export LSCOLORS=CxGxBxDxFxegedabagacad

# Setting bash prompt
PS1="\[\033[\033[0;36m\\]\h\[\033[0m\][\[\033[0;33m\]\D{%a}\[\033[0m\]-\[\033[0;33m\]\A\[\033[0m\]]:\W\$ "

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
