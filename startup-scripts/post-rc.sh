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
# GIT
###############################################################################

alias commit='git add -A :/; git commit -m "AUTO: commit all files"'


###############################################################################
# ALIAS
###############################################################################

alias grep="egrep"


###############################################################################
# Run instance specific configuration
###############################################################################

instance_specific="${0:a:h}"/instance-specific.sh

if [[ -r ${instance_specific} ]]; then
    source ${instance_specific}
fi

