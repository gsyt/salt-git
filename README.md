salt-git
========

Salt formula to set up and configure [git](http://git-scm.com/)

Parameters
------------
Please refer to example.pillar for a list of available pillar configuration options

Usage
-----
- Apply state 'git.install' to install git to target minions
- Apply state 'git.purge' to remove git from target minions
- State 'git' is provided as an alias for 'git.install'

Compatibility
-------------
Ubuntu 13.10, 14.04 and CentOS 6.x
