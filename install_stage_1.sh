 #!/bin/bash -e

# First get updates
sudo apt-get update -y

# Then the upgrade
sudo apt-get full-upgrade -y
sudo apt dist-upgrade -y

# Remove Crap
sudo apt purge geany firefox bluej greenfoot-unbundled mu-editor scratch* sonic-pi sense-emu-tools thonny smartsim libreoffice claws-mail  openjdk-* libreoffice-* -y
sudo rm -rf MagPi/

# Clean up
sudo apt -y auto-clean
sudo apt -y auto-remove

# Finally rpi-update
sudo rpi-update -y

echo
echo "All done!"
echo
echo "Please reboot if a new firmware has been installed"
echo

# Reboot

COUNTER=20
while [ 1 ] 
do
    if [ ${COUNTER} -eq 0 ]
    then
        break
    fi
    echo "System rebooting in ${COUNTER}"
    sleep 1
    COUNTER=$( echo "${COUNTER}-1" | bc )
done
sudo reboot
