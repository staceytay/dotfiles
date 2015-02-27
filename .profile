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
PS1="\[\033[1;93m\]\D{%a}-\A\[\033[0m\]#\[\033[1;36m\]\u\[\033[0m\] \[\033[1;32m\]\w\[\033[0m\]\$ "

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
