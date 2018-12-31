# dotfiles

Hi, this is the home directory of my files.  It's also the repository for my configuration.


## Installation

Note: These instructions have been tested on systems running Ubuntu.  If you are using MacOS, you may have difficulties since MacOS uses Homebrew instead of Linuxbrew.


### Linuxbrew

Install Linuxbrew as a **non-root** user.  Do **not** supply any credentials to Linuxbrew.  If asked for a password, press `<Enter>`.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
```
Modify shell environment to use Linuxbrew:
```
eval $($HOME/.linuxbrew/bin/brew shellenv)
```


### zsh

```
brew install zsh
```


### fasd

```
brew install fasd
```


### antigen

```
brew install antigen
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
# Clone the repo
git clone git@github.com:ndrein/dotfiles.git $HOME/dotfiles 
# Copy all the files into $HOME - WARNING: this will overwrite your home config.
cp -r $HOME/dotfiles/. $HOME 
# Once we copy out the files, we don't the original repo anymore
rm -rf $HOME/dotfiles 
```


## Instance-specific configuration

See `startup-scripts` for instance-specific configuration.
