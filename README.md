# dotfiles

Hi, this is the home directory of my files.  It's also the repository for my configuration.


## Installation


### Prerequisites

Note: [Linuxbrew](http://linuxbrew.sh/) may be useful for installing dependencies when root is not available.

* Install `zsh`


### antigen

Antigen must be cloned into this location:
```
curl -L git.io/antigen > ~/antigen.zsh
```


### Installing dotfiles

* Before proceeding, you should backup your config in $HOME (e.g. .bashrc, .vimrc), as the following instructions will overwrite your current config.  Example (but not necessarily exhaustive) backup procedure follows:
```shell
# Ignore error messages
cp ~/.vimrc ~/.vimrc.bak 2>/dev/null
cp ~/.zshrc ~/.zshrc.bak 2>/dev/null
```
*  Get the config
```shell
# Clone the repo
git clone git@github.com:ndrein/dotfiles.git $HOME/dotfiles 
# Copy all the files into $HOME - WARNING: this will overwrite your home config.
cp -r $HOME/dotfiles/. $HOME 
# Once we copy out the files, we don't the original repo anymore
rm -rf $HOME/dotfiles 
```


### Change shell

Change your default shell to zsh with `chsh -s $PATH_TO_ZSH` or `exec` zsh from your current shell's configuration scripts.


## Instance-specific configuration

Include all instance-specific configuration in the optional file `~/.instance_specific.sh`.
