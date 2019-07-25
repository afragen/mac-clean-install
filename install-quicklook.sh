#!/bin/sh

# Install QuickLook plugins.
brew cask install \
    qlcolorcode \
    qlstephen \
    qlmarkdown \
    quicklook-json \
    qlprettypatch \
    quicklook-csv \
    betterzip \
    qlimagesize \
    suspicious-package

#    qlcolorcode \ # Preview source code files with syntax highlighting
#    qlstephen \ # Preview plain text files without a file extension. Example: README, #CHANGELOG, etc.
#    qlmarkdown \ # Preview Markdown files
#    quicklook-json \ # Preview JSON files
#    qlprettypatch \ # Preview .patch files
#    quicklook-csv \ # Preview CSV files
#    betterzip \ # Preview archives
#    qlimagesize \ # Display image size and resolution
#    suspicious-package # Preview the contents of a standard Apple installer package
