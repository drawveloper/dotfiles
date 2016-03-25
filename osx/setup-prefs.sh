#!/bin/bash
mkdir -p $HOME/.config/fish/functions/
cp ../fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish

HERE=$(pwd)

echo "# Source aliases" >> ~/.config/fish/config.fish
echo "source ${HERE}/../aliases.sh" >> ~/.config/fish/config.fish

echo ">>>"
echo ">>> Copied preferences to home."
echo ">>>"

sudo bash -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

echo ">>>"
echo ">>> Configured fish as default terminal."
echo ">>>"
