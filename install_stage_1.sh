 #!/bin/bash -e

# First get updates
/usr/bin/sudo apt-get update -y

# Then the upgrade
/usr/bin/sudo apt-get full-upgrade -y
/usr/bin/sudo apt dist-upgrade -y

# Remove Crap
/usr/bin/sudo apt purge geany firefox bluej greenfoot-unbundled mu-editor scratch* sonic-pi sense-emu-tools thonny smartsim libreoffice claws-mail  openjdk-* libreoffice-* -y
/usr/bin/sudo rm -rf MagPi/

# Clean up
/usr/bin/sudo apt -y auto-clean
/usr/bin/sudo apt -y auto-remove

# Finally rpi-update
/usr/bin/sudo rpi-update -y

echo
echo "All done!"
echo
echo "Please reboot if a new firmware has been installed"
echo
