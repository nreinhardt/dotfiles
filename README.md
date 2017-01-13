# dotfiles

Hi, this is the home directory of my files.  It's also the repository for my dotfiles (configuration etc.).

## Installation

The following instructions are for using this config on a new machine.  Before proceeding, you should backup your config in ~ (eg. .bashrc, .vimrc, etc.), as the following instructions will overwrite your current config.

*  Get the config
    ```shell
    git clone git@github.com:ndrein/dotfiles.git # Clone the repo
    cp -r dotfiles/* dotfiles/.* $HOME # Copy all the files into $HOME - WARNING: this will overwrite your home config.
    ```
*  Get the submodule dependencies.
    ```shell
    cd $HOME && git submodule init && git submodule update
    ```
*  To install vim plugins (including Vundle), open vim and run:
    ```vim
    :PluginInstall
    ```
*  To create custom scripts for your machine, make a `startup-*` script in `startup-scripts`.  You can put aliases and other custom configuration there.  Make sure to `source` your `startup-scripts/startup-*` script in your shell `rc` file.


## Branches

The master branch contains the configuration for my main computer.  My best configuration goes here.

All other branches should be machine-specific (eg. waterloo-linux).


## startup-scripts

Contains my custom startup scripts, such as `alias` information and shell functions.  See the README.md there for more information.
