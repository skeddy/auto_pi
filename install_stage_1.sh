#!/bin/bash -e

# First do apt-get update
/usr/bin/sudo apt-get -y update

# Then the upgrade
/usr/bin/sudo apt-get -y upgrade

# Remove Crap
/usr/bin/sudo apt purge geany bluej greenfoot-unbundled mu-editor scratch* sonic-pi sense-emu-tools thonny smartsim libreoffice claws-mail  openjdk-* libreoffice-* -y
usr/bin/sudo rm -rf MagPi/

# Clean up
/usr/bin/sudo apt -y auto-clean
/usr/bin/sudo apt -y auto-remove

# Finally rpi-update
/usr/bin/sudo rpi-update
