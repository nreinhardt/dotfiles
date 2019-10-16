#################################################################
# vim
#################################################################

# Not sure why/if this is necessary...
export EDITOR=vim

# Remove old vim plugins and install/update the others
echo "Updating vim plugins in the background."
nohup vim -c "PluginClean" -c "PluginInstall!" </dev/null >/dev/null 2>&1 &
disown


#################################################################
# antigen
#################################################################

source ~/antigen.zsh

antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle clvv/fasd
antigen bundle fasd
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle docker
antigen bundle pip
antigen bundle sudo
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle colored-man-pages
antigen bundle mvn

#antigen theme terminalparty
#antigen theme ys
antigen theme tjkirch

antigen apply


###############################################################################
# Custom functions
###############################################################################


###############################################################################
# Aliases
###############################################################################

alias commit='git commit -m "AUTO: commit all files"'


###############################################################################
# Run instance specific configuration
# This should be the last section of this file
###############################################################################

instance_specific="$HOME/.instance_specific.sh"

if [[ -r ${instance_specific} ]]; then
    source ${instance_specific}
fi
