#!/bin/bash
cp fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish

HERE=$(pwd)

echo "# Source aliases" >> ~/.config/fish/config.fish
echo "source ${HERE}/aliases.sh" >> ~/.config/fish/config.fish

echo ">>>"
echo ">>> Copied preferences to home."
echo ">>>"
