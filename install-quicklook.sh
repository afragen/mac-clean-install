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

#    qlcolorcode # Preview source code files with syntax highlighting
#    qlstephen # Preview plain text files without a file extension. Example: README, CHANGELOG, etc.
#    qlmarkdown # Preview Markdown files
#    quicklook-json # Preview JSON files
#    qlprettypatch # Preview .patch files
#    quicklook-csv # Preview CSV files
#    betterzip # Preview archives
#    qlimagesize # Display image size and resolution
#    suspicious-package # Preview the contents of a standard Apple installer package
