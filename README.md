# dotfiles

Hi, this is the home directory of my files.  It's also the repository for my dotfiles (configuration etc.).


## Installation

The following instructions are for using this config on a new machine.


* Before proceeding, you should backup your config in $HOME (eg. .bashrc, .vimrc, etc.), as the following instructions will overwrite your current config. 
* You should also have the following packages installed:
```shell
sudo apt-get install exuberant-ctags
```
*  Get the config
```shell
git clone git@github.com:ndrein/dotfiles.git # Clone the repo
cp -r dotfiles/* dotfiles/.* $HOME # Copy all the files into $HOME - WARNING: this will overwrite your home config.
rm -rf dotfiles # Once we copy out the files, we don't the original repo anymore
```
* Make your own branch for this machine.
```shell
cd $HOME && git checkout -b <MACHINE_BRANCH_NAME>
```
*  Get the submodule dependencies.
```shell
cd $HOME && git submodule init && git submodule update
```
*  To install vim plugins (including Vundle), open vim and run:
```vim
:PluginInstall
```
*  To create custom scripts for your machine, customize the startup script `startup-scripts`.  You can put aliases and other custom configuration there. Every branch/machine should have its own version of the startup script.  See the README.md there for more info. 


## Branches

Every machine should have it's own branch (eg. `waterloo-linux` or `inspiron`).
