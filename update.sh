#!/bin/bash

# Update package list
sudo apt-get update

# Check if update was successful
if [ $? -eq 0 ]; then
    echo "apt-get update successful."

    # Upgrade all packages
    sudo apt-get upgrade -y

    # Check if upgrade was successful
    if [ $? -eq 0 ]; then
        echo "apt-get upgrade successful. System will reboot now."

        # Reboot the system
        sudo reboot
    else
        echo "apt-get upgrade failed."
        exit 1
    fi
else
    echo "apt-get update failed."
    exit 1
fi
