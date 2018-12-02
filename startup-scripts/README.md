# startup-scripts

My personal startup scripts


Concept
-------

These startup scripts are to be run after third-party configuration is run (eg. oh-my-zsh, .bashrc, etc.).  They provide my custom tweaks on my environment.

* `pre-rc.sh`
    * **Source this script before you run your shell `rc`**
* `post-rc.sh`
    * **Source this script after you run your shell `rc`**
* `instance_specific.sh`
    * If you have some specific instance for this particular instance, then put it in this file.
    * This file is deliberately not included with this repository.
    * If no instance-specific configuration is required, this file is unnecessary.
