#!/bin/bash

# Uninstall EarnApp script with automatic 'y' responses

# Function to simulate automatic 'y' input
auto_yes() {
  echo "y"
  sleep 1
}

# Uninstall EarnApp
{
  auto_yes | ./path_to_earnapp_uninstaller
} || {
  echo "Failed to uninstall EarnApp."
}

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

