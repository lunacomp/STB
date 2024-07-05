#!/bin/bash

# Function to uninstall EarnApp
uninstall_earnapp() {
  # Print message
  echo "Uninstalling EarnApp..."

  # Uninstall EarnApp and automatically confirm with 'y' twice
  # This assumes the uninstallation process is initiated via a command like 'apt-get remove' or similar
  # Replace 'apt-get remove earnapp' with the actual uninstallation command for EarnApp
  echo -e "y\ny\n" | sudo apt-get remove earnapp

  # Check if the uninstallation was successful
  if [ $? -eq 0 ]; then
    echo "EarnApp has been successfully uninstalled."
  else
    echo "Failed to uninstall EarnApp."
  fi
}

# Call the function
uninstall_earnapp

# Install EarnApp
# Download the install script for EarnApp
echo "Downloading the EarnApp install script..."
wget -qO- https://brightdata.com/static/earnapp/install.sh > /tmp/earnapp.sh

# Run the install script with automatic 'yes' confirmations
echo "Running the EarnApp install script..."
yes | sudo bash /tmp/earnapp.sh

# Check if the installation was successful
if [ $? -eq 0 ]; then
  echo "EarnApp has been successfully installed."
else
  echo "Failed to install EarnApp."
fi
