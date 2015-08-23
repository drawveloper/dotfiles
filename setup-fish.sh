#!/bin/bash
sudo bash -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

echo ">>>"
echo ">>> Configured fish as default terminal."
echo ">>>"
