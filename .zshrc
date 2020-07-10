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
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle colored-man-pages
antigen bundle mvn
antigen bundle pyenv
# Completions for commands that are not recognized by zsh yet
antigen bundle zsh-users/zsh-completions
# Displays Time: ... after long-running commands
antigen bundle popstas/zsh-command-time

    #################################################################
    # THEME
    #################################################################
    
    #antigen theme terminalparty
    #antigen theme ys
    # I like this one
    antigen theme tjkirch

    # Pure theme - shouldn't use `antigen theme`
    #antigen bundle mafredri/zsh-async
    #antigen bundle sindresorhus/pure


antigen apply


###############################################################################
# Custom functions
###############################################################################


###############################################################################
# Aliases
###############################################################################

alias commit='git commit -m "AUTO: commit all files"'


#################################################################
# history
#################################################################

export HISTSIZE=100000

###############################################################################
# Run instance specific configuration
# This should be the last section of this file
###############################################################################

instance_specific="$HOME/.instance_specific.sh"

if [[ -r ${instance_specific} ]]; then
    source ${instance_specific}
fi
