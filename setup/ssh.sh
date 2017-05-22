#!/usr/bin/env bash

echo ">>>"
echo ">>> Copy ssh config"
echo ">>>"

mkdir -p $HOME/.ssh
echo "Host *
  UseKeychain yes
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_rsa
" >> ~/.ssh/config
