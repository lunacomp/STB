#!/bin/bash

# Run the uninstall command for EarnApp
echo "y" | sudo earnapp uninstall
echo "y" | sudo earnapp uninstall --force

echo "EarnApp has been uninstalled."

# Download and install EarnApp
echo "Downloading and installing EarnApp..."
wget -qO- https://brightdata.com/static/earnapp/install.sh > /tmp/earnapp.sh

# Automate the confirmation of terms and installation
echo "yes" | sudo bash /tmp/earnapp.sh

# Check if the installation was successful
if [ $? -eq 0 ]; then
  echo "EarnApp has been successfully installed."
else
  echo "Failed to install EarnApp."
fi

