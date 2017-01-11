###############################################################################
# FASD                                                                         
###############################################################################
                                                                               
# Initialize [fasd](https://github.com/clvv/fasd/wiki)                         
eval "$(fasd --init auto)"                                                     
# Use 'v' to open any file                                                     
alias v="f -e vim"                                                             
# Autocomplete 'v'                                                             
_fasd_bash_hook_cmd_complete v                                                 
                                                                               
                                                                               
###############################################################################
# LS-COLORS
###############################################################################

alias ls="~/software/ls-colors/bin/ls"
alias mips="/u4/cs251/Simulator/mips"
