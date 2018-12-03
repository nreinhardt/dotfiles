# dotfiles

Hi, this is the home directory of my files.  It's also the repository for my configuration.


## Installation

The following instructions are for installing the configuration for this branch.


### Linuxbrew

Install Linuxbrew as a **non-root** user:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
```

Modify shell environment to use Linuxbrew:
```
eval $($HOME/.linuxbrew/bin/brew shellenv)
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

* Before proceeding, you should backup your config in $HOME (e.g. .bashrc, .vimrc), as the following instructions will overwrite your current config.  Example (but not necessarily exhaustive) backup procedure follows.  Note that error:
```shell
# Ignore error messages
cp ~/.profile ~/.profile.bak 2>/dev/null
cp ~/.bash_profile ~/.bash_profile.bak 2>/dev/null
cp ~/.vimrc ~/.vimrc.bak 2>/dev/null
cp ~/.zshrc ~/.zshrc.bak 2>/dev/null
```
*  Get the config
```shell
git clone git@github.com:ndrein/dotfiles.git $HOME/dotfiles # Clone the repo
cp -r $HOME/dotfiles/. $HOME # Copy all the files into $HOME - WARNING: this will overwrite your home config.
rm -rf $HOME/dotfiles # Once we copy out the files, we don't the original repo anymore
```


## Instance-specific configuration

See `startup-scripts` for instance-specific configuration.


### zsh-syntax-highlighting

To run, the `zsh-syntax-highlighting` plugin, you must first clone it into `oh-my-zsh`'s plugins directory:
```
 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
