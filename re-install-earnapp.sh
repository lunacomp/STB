#!/bin/bash

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

