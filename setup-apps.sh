#!/bin/bash
echo ">>> Installing brew"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo ">>> Installing cask"

brew install caskroom/cask/brew-cask

echo ">>> Installing cask apps"

brew cask install \
google-chrome \
iterm2 \
dropbox \
1password \
atom \
heroku-toolbelt \
spotify \
spotify-notifications \
slack \
skype \
firefox \
clipmenu \
tunnelblick \
google-drive \
google-earth \
chromecast \
virtualbox \
charles \
licecap

echo ">>> Installing brew apps"

brew install \
fish \
vagrant \
nodejs \
python \
ffmpeg \
wget \
postgresql \
go

echo ">>> Installing node packages"

npm i -g \
grunt-cli \
gulp \
mocha \
karma \
coffee-script \
releasy \
pm2 \
nodemon \
yo \
node-inspector \
webpack \
webpack-dev-server \
mkdirp

echo ">>> Installing python packages"

pip install flake8 \
flake8-docstrings

echo ">>>"
echo ">>> Installed apps."
echo ">>>"
