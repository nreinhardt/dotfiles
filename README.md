# startup-scripts
My personal bash startup scripts


Concept
-------

* `.bash_profile`
  * Contains code upon first login
  * Pre-existing code can stay here
* `.bashrc`
  * Contains code for each new shell.
  * Pre-existing code can stay here.
  * Must source the appropriate `startup/startup-*.sh` script at the end of the script.
* `startup-*.sh`
  * Eg. `startup-yoga.sh`, `startup-waterloo-linux.sh`
  * Collection of scripts, one for each host
  * Should call the appropriate `startup/*.sh` scripts.
* `general.sh`
  * General customization that should apply to all hosts
* `*.sh`
  * Other scripts that are run by the host-appropriate `startup-*.sh` script

Example
-------

Host: `Yoga`

`.bash_profile` -> `.bashrc` (includes boiler-plate code) -> `startup/startup-yoga.sh` -> (`general.sh` + `yoga.sh`)
