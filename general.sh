###############################################################################
# FUNCTIONS
###############################################################################

function profile {
    source ~/.bash_profile
}

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
# LESS
###############################################################################

export LESS="-R"


###############################################################################
# GIT
###############################################################################

alias push='git add -A && git commit -m "AUTO: push all files" && git push'


###############################################################################
# ALIAS
###############################################################################

alias grep="egrep"
alias rsync="rsync --progress --human-readable --recursive"
