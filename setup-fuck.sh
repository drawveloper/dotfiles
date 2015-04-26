#!/usr/bin/env bash
sudo pip install thefuck
echo "alias fuck='eval $(thefuck $(fc -ln -1))'" >> ~/.bashrc
