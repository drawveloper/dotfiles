#!/usr/bin/env bash

# Work in progress
# https://github.com/atom/atom/blob/master/docs/build-instructions/linux.md

# Install pre-requisites
sudo apt-get install build-essential git libgnome-keyring-dev fakeroot

# Clone repo
git clone https://github.com/atom/atom
cd atom
git checkout $(git describe --tags `git rev-list --tags --max-count=1`)

# Build and install
script/build
sudo script/grunt install
