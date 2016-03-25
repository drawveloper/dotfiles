#!/bin/bash

# Copy preferences files
./setup-prefs.sh

# Basic installs
sudo ./setup-apps.sh

# Java

# Check if java is already installed
if hash java 2>/dev/null; then
    echo ">>> Java is installed. Skipping."
else
    sudo ./setup-java.sh
fi

# Setup git configurations and aliases
../setup-git-config.sh

echo ">>>"
echo ">>> Finished setup. Cheers!"
echo ">>>"
