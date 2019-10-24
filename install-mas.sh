#!/bin/sh

# Install Mac App Store apps.
# Get list of installed Mac App Store apps using `mas list`
#brew bundle handles errors for already installed casks/brews/etc/
brew bundle --file=- <<-EOS

mas "Trello", id: 1278508951
mas "1Password 7", id: 1333542190
mas "Whalebird", id: 1378283354
mas "NeoOffice", id: 639210716
mas "VoodooPad", id: 514489722
mas "Patterns", id: 429449079
mas "SnapNDrag Pro", id: 430397512
mas "Tweetbot", id: 1384080005
mas "Amphetamine", id: 937984704
mas "Pixelmator Pro", id: 1289583905
mas "The Unarchiver", id: 425424353
mas "PDFOptim", id: 621276561
mas "MsgFiler", id: 418778021
mas "XDebugToggle", id: 1437227804
mas "iA Writer", id: 775737590
mas "Apple Configurator 2", id: 1037126344
mas "Pages", id: 409201541
mas "iMovie", id: 408981434
mas "Numbers", id: 409203825
mas "Keynote", id: 409183694
mas "GarageBand", id: 682658836
mas "xCode", id: 497799835

EOS
