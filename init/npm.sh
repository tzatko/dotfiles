#!/usr/bin/env bash

# Install some useful npm modules. You should have installed npm:
# brew install node

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# upgrade npm
sudo npm install -g npm
sudo npm update -g

sudo npm install -g typescript
sudo npm install -g yarn webpack
sudo npm install -g truffle truffle-expect truffle-config web3
sudo npm install -g ethereumjs-testrpc

