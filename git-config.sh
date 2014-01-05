#!/usr/bin/env bash
git config --global user.name "Guilherme Rodrigues"
git config --global user.email "gadr90@gmail.com"
git config --global alias.changelog 'log --oneline --abbrev-commit --no-merges'
git config --global alias.graph 'log --oneline --graph --decorate'

echo "Applied git configurations."