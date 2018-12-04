#################################################################
# pre-rc
#################################################################

source ~/startup-scripts/pre-rc.sh


#################################################################
# antigen
#################################################################

source ~/.linuxbrew/share/antigen/antigen.zsh

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

antigen theme robbyrussell

antigen apply


#################################################################
# post-rc
#################################################################

source ~/startup-scripts/post-rc.sh
