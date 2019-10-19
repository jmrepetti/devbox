# Development box with Vagrant + Chef Solo + Ruby (RBenv)

This is a work in progress. I'm trying to set up a working environment in MacOS for Rails development.
Docker is giving me a lot of problems and I still would like to share a working development environment with other users/platforms.

## Start:

    $ vagrant up --provision

## Folders:

**/cookbooks**

Vagrat with Cheffile will track recipes in /cookbooks which is not checked in git but will be generated on 'vagrant up --provision'

**/site-cookbooks**

This was added by me manually to manage custom recipes, for example to install ruby with rbenv.

**/code**

This where the real app source code will be. The folder name is arbitrary.


I will be adding more stuff, if something doesn't work please let me know.