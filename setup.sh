#!/bin/bash

# Copy preferences files
./setup-prefs.sh

# Basic installs
sudo ./setup-initial.sh

# Java

# Check if java is already installed
if hash java 2>/dev/null; then
    echo ">>> Java is installed. Skipping."
else
    sudo ./setup-java.sh
fi

# Setup git configurations and aliases
./setup-git-config.sh

# Node

# Check if node is already installed
if hash node 2>/dev/null; then
    echo ">>> Node is installed. Skipping."
else
    ./setup-node.sh
    sudo ./setup-node-link-sudo.sh
    sudo setcap 'cap_net_bind_service=+ep' `which node`
fi

echo ">>>" 
echo ">>> Finished setup. Cheers!" 
echo ">>>"
