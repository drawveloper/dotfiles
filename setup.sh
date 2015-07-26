#!/bin/bash

# Basic installs
./setup-apps.sh

# Copy preferences files
./setup-prefs.sh

# Setup git configurations and aliases
./setup-git-config.sh

# Atom
./setup-apm.sh

echo ">>>"
echo ">>> Finished setup. Cheers!"
echo ">>>"
