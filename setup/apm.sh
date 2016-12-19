#!/bin/bash
echo ">>> Log into apm and install starred packages"

apm login
apm stars --install

echo ">>>"
echo ">>> Installed atom packages."
echo ">>>"
