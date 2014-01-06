#!/bin/bash
ln -s $HOME/local/bin/node /usr/bin/node
ln -s $HOME/local/lib/node /usr/lib/node
ln -s $HOME/local/bin/npm /usr/bin/npm
ln -s $HOME/local/bin/node-waf /usr/bin/node-waf

echo 'Finished linking node to /usr/bin'