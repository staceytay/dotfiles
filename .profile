# Stacey's bash profile
# 30th Oct 2013

# MacPorts Installer addition on 2013-10-29_at_22:29:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting mit-scheme up
# Taken from http://dustingram.com/articles/2012/08/01/using-scheme-in-macos-x-on-the-command-line/
export MITSCHEME_LIBRARY_PATH="/Applications/mit-scheme.app/Contents/Resources"
export MIT_SCHEME_EXE="/usr/local/scheme"

# OPAM configuration
. /Users/staceytay/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# configuring utop
eval `opam config env`

# Aliases
alias nus='cd ~/Google\ Drive/NUS/'
alias prolog='swipl'
alias CS2104='cd ~/Google\ Drive/NUS/CS2104/'
alias TypeIt='java -jar ~/Google\ Drive/NUS/CS2103/Project/TypeIt.jar'
alias ftab='osascript ~/Scripts/find_safari_tab.scpt'
alias sunfire='ssh stacey@sunfire.comp.nus.edu.sg'
alias site='cd ~/Google\ Drive/Site/'
# Enable color highlighting
export CLICOLOR=1
export LSCOLORS=CxGxBxDxFxegedabagacad

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
