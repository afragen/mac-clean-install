#!/bin/sh
# Install Homebrew.
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update && brew upgrade && brew cleanup && brew doctor

brew bundle install --file=~/Brewfile

#cask "https://www.corecode.io/macupdater/casks/citrix-workspace.rb"
