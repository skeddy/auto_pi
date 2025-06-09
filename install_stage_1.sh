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

# Install and enable VNC
echo
echo "Installing and enabling VNC..."
sudo apt install realvnc-vnc-server realvnc-vnc-viewer -y
sudo systemctl enable vncserver-x11-serviced.service
sudo systemctl start vncserver-x11-serviced.service

# Finally rpi-update
sudo rpi-update -y

echo
echo "All done!"
echo
echo "VNC enabled"
echo "Please reboot if a new firmware has been installed."
echo
