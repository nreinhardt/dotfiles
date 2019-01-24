#################################################################
# EDTIOR
#################################################################

export EDITOR=vim


#################################################################
# antigen
#################################################################

source ~/antigen.zsh

antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle fasd
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle docker
antigen bundle pip
antigen bundle sudo
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle colored-man-pages

antigen theme candy

antigen apply


###############################################################################
# Custom functions
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
# git
###############################################################################

alias commit='git add -A :/; git commit -m "AUTO: commit all files"'


###############################################################################
# Vundle
###############################################################################

# Automatically install and remove plugins
nohup vim +PluginInstall +PluginClean! +qall! </dev/null >/dev/null 2>&1 &
disown


###############################################################################
# Run instance specific configuration
###############################################################################

instance_specific="$HOME/.instance_specific.sh"

if [[ -r ${instance_specific} ]]; then
    source ${instance_specific}
fi
