#!/usr/bin/env bash

brew update

echo ">>> Installing brew apps"

brew install \
caskroom/cask/brew-cask \
coreutils \
fish \
gcc \
gnu-sed \
imagemagick \
ack \
tree \
nodejs \
python \
ffmpeg \
wget \
go
