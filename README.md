# startup-scripts
My personal bash startup scripts


Concept
-------

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

Host: `linux.student.cs.uwaterloo.ca`

`.bash_profile` -> `.bashrc` (includes boiler-plate code) -> `startup/startup-waterloo-linux.sh` -> (`general.sh` + `yoga.sh`)
