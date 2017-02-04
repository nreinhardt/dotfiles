###############################################################################
# FUNCTIONS
###############################################################################

# wincopy <file1> <file2>
function wincopy {
    COPY_TMP=`for f in $@; do readlink -f $f; done`
}

# Copy all files from wincopy to .
function winpaste {
   rsync --recursive --human-readable --progress $COPY_TMP .
}

function path {
    readlink -f $1
}  


###############################################################################
# EDITOR
###############################################################################

# Use vim as the default editor
export EDITOR=vim


###############################################################################
# GIT
###############################################################################

alias commit='git add -A :/; git commit -m "AUTO: commit all files"'


###############################################################################
# FASD
###############################################################################

# oh-my-zsh doesn't set this up properly because $EDITOR is not defined when fasd is initialized
alias v="f -e $EDITOR"


###############################################################################
# ALIAS
###############################################################################

alias grep="egrep"
alias rsync="rsync --progress --human-readable --recursive"
