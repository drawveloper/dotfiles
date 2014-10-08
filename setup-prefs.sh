#!/bin/bash
cp bash_prompt $HOME/.bash_prompt
cp bash_aliases $HOME/.bash_aliases
cp inputrc $HOME/.inputrc

echo "# Source bash-prompt" >> ~/.bashrc
echo ". ~/.bash_prompt" >> ~/.bashrc

echo ">>>" 
echo ">>> Copied preferences to home." 
echo ">>>"

