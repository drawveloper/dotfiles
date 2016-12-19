#!/bin/bash

echo ">>>"
echo ">>> Welcome to your new env!"
echo ">>>"

# Basic installs
sudo ./setup-apps.sh

# Copy preferences files
./setup-prefs.sh

# Setup git configurations and aliases
../setup/git.sh

# Java

# Check if java is already installed
if hash java 2>/dev/null; then
    echo ">>> Java is installed. Skipping."
else
    sudo ./setup-java.sh
fi

echo ">>>"
echo ">>> Finished setup. Cheers!"
echo ">>>"
