# startup-scripts
My personal startup scripts


Concept
-------

These startup scripts are to be run after third-party configuration is run (eg. oh-my-zsh, .bashrc, etc.).  They provide my custom tweaks on my environment.

* `startup-*.sh`
  * Eg. `startup-yoga.sh`, `startup-waterloo-linux.sh`
  * Collection of scripts, one for each host
  * Will call all the other scripts specific to this host
  * Make sure to call the appropriate `startup-*` script in `.bashrc` or `.zshrc`
* `general.sh`
  * General customization that should apply to all hosts
* `*.sh`
  * Eg. `yoga.sh`, `waterloo-linux.sh`
  * Ideally, configuration specific to each host goes here.

Example
-------

Host: `Yoga`

`.zshrc` (includes boiler-plater oh-my-zsh stuff) -> `startup-yoga.sh` -> (`general.sh` + `yoga.sh`)
