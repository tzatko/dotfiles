#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew install caskroom/cask/brew-cask


brew cask install alfred
brew cask install flux
brew cask install iterm2
brew cask install torbrowser
brew cask install vlc
brew cask install spectacle
brew cask install disk-inventory-x
brew cask install licecap
brew cask install appcleaner
brew cask install handbrake
brew cask install the-unarchiver
brew cask install java

# VimR with vimr script integration
brew cask install vimr
mkdir -p ~/bin
ln -sf ~/Applications/VimR.app/Contents/Resources/vimr ~/bin/


