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

