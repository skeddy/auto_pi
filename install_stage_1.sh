#!/bin/bash -e

# First do apt-get update
/usr/bin/sudo apt-get -y update

# Then the upgrade
/usr/bin/sudo apt-get -y upgrade

# Finally rpi-update
/usr/bin/sudo rpi-update