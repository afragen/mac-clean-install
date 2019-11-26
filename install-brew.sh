#!/bin/sh
# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade && brew cleanup && brew doctor

brew bundle install

#cask "https://www.corecode.io/macupdater/casks/citrix-workspace.rb"
