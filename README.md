# dotfiles

Hi, this is the home directory of my files.  It's also the repository for my configuration.


## How It Works

Every machine has its own configuration, and thus has its own branch in this git repository (eg. `waterloo-linux` or `inspiron`).


## Installation

The following instructions are for installing the configuration for this branch.


### Dependencies

Before installing, you should update/install the following dependencies for this branch:


#### zsh

Install zsh if you don't have it already:

```shell
sudo apt install zsh
```


#### VIM

Update vim:

```shell
sudo apt-get update
sudo apt-get install vim
```


#### pip

If you don't have pip installed already, [install it](https://pip.pypa.io/en/stable/installing/).


#### virtualenvwrapper

Install [virtualenvwrapper](http://virtualenvwrapper.readthedocs.io/en/latest/install.html).


#### fasd

Install [fasd](https://github.com/clvv/fasd/wiki/Installing-via-Package-Managers).




### Installing dotfiles

* Before proceeding, you should backup your config in $HOME (eg. .bashrc, .vimrc, etc.), as the following instructions will overwrite your current config. 
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
*  To create custom scripts for your machine, customize the startup script `startup-scripts`.  You can put aliases and other custom configuration there. Every branch/machine should have its own version of the startup script.  See the README.md in `startup-scripts` for more information.


### Installing zsh plugins


#### zsh-syntax-highlighting

To run, the `zsh-syntax-highlighting` plugin, you must first clone it into `oh-my-zsh`'s plugins directory:
```
 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
