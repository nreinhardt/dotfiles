# startup-scripts
My personal startup scripts


Concept
-------

These startup scripts are to be run after third-party configuration is run (eg. oh-my-zsh, .bashrc, etc.).  They provide my custom tweaks on my environment.

* `custom-startup.sh`
  * **Source this script from your shell `rc`**
  * Every branch should have its own version, which may call its own scripts.
* `general.sh`
  * General configuration that applies to all hosts.
  * Should have no software dependencies.


Example
-------

Host: `Yoga`

`.zshrc` -> `custom-startup.sh` -> (`general.sh` + `yoga.sh`)


Host: `linux.student.cs.uwaterloo.ca`

`.zshrc` -> `custom-startup.sh` -> (`general.sh` + `waterloo-linux.sh`)
