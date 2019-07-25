#!/bin/sh

#brew bundle handles errors for already installed casks/brews/etc/
brew bundle --file=- <<-EOS
cask "qlcolorcode"
cask "qlstephen"
cask "qlmarkdown"
cask "quicklook-json"
cask "qlprettypatch"
cask "quicklook-csv"
cask "betterzip"
cask "qlimagesize"
cask "suspicious-package"
EOS

qlmanage -r
