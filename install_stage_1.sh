#!/bin/bash -e

# First get updates
sudo apt-get update -y

# Then the upgrade
sudo apt-get full-upgrade -y
sudo apt dist-upgrade -y

# Remove Crap
sudo apt purge geany firefox bluej greenfoot-unbundled mu-editor scratch* sonic-pi sense-emu-tools thonny smartsim libreoffice claws-mail openjdk-* libreoffice-* -y

# Clean up
sudo apt -y auto-clean
sudo apt -y auto-remove

# Finally rpi-update
sudo rpi-update -y

echo
echo "All done!"
echo
echo "Please reboot if a new firmware has been installed."
echo
