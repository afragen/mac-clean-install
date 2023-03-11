#!/bin/sh
# Install Homebrew.
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update && brew upgrade && brew cleanup && brew doctor

# Install Brewfile
curl -o ~/Brewfile https://raw.githubusercontent.com/afragen/mac-clean-install/master/Brewfile

brew bundle install --file=~/Brewfile
