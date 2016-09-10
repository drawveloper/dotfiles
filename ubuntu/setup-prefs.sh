#!/bin/bash

echo ">>>"
echo ">>> Configuring preferences."
echo ">>>"

cp bash_profile $HOME/.bash_profile
cp inputrc $HOME/.inputrc

echo ">>>"
echo ">>> Copied preferences to home."
echo ">>>"

chsh -s `which fish`

mkdir -p $HOME/.config/fish/functions/
cp ../fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish

HERE=$(pwd)

echo "# Source aliases" >> ~/.config/fish/config.fish
echo "source ${HERE}/../aliases.sh" >> ~/.config/fish/config.fish

echo ">>>"
echo ">>> Set fish as shell."
echo ">>>"
