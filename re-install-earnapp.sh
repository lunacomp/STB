#!/bin/bash

# Command to uninstall EarnApp
echo "Are you sure you want to uninstall EarnApp? [y/N]"
echo "y"

# Automatically answering the second prompt
echo "You may lose your earnings if you haven't added this device in the dashboard yet [y/N]"
echo "y"

# Actual uninstall command (replace with the actual uninstall command for EarnApp)
earnapp uninstall <<EOF
y
y
EOF

echo "EarnApp has been uninstalled."

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

