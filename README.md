# dotfiles

Hi, this is the home directory of my files.  It's also the repository for my configuration.


## Installation

The following instructions are for installing the configuration for this branch.


### Linuxbrew

Install Linuxbrew as a **non-root** user:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
```


### zsh

```
~/.linuxbrew/bin/brew install zsh
```


### fasd

```
~/.linuxbrew/bin/brew install fasd
```


### oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```




### Installing dotfiles

* Before proceeding, you should backup your config in $HOME (eg. .bashrc, .vimrc, etc.), as the following instructions will overwrite your current config. 
*  Get the config
```shell
git clone git@github.com:ndrein/dotfiles.git # Clone the repo
cp -r dotfiles/* dotfiles/.* $HOME # Copy all the files into $HOME - WARNING: this will overwrite your home config.
rm -rf dotfiles # Once we copy out the files, we don't the original repo anymore
```


## Instance-specific configuration

If you need to convert 
*  To create custom scripts for your machine, customize the startup script `startup-scripts`.  You can put aliases and other custom configuration there. Every branch/machine should have its own version of the startup script.  See the README.md in `startup-scripts` for more information.


### Installing zsh plugins


#### zsh-syntax-highlighting

To run, the `zsh-syntax-highlighting` plugin, you must first clone it into `oh-my-zsh`'s plugins directory:
```
 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
