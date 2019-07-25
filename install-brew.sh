#!/bin/sh
# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew tap caskroom/cask
brew cleanup
brew doctor

brew install \
    composer \
    mas \
    php@7.2 \
    phpunit \
    php-cs-fixer \
    php-code-sniffer \
    wp-cli

brew cask install \
    alfred \
    aerial \
    amphetimine \
    appcleaner \
    backblaze \
    bbedit \
    carbon-copy-cloner \
    docker \
    duet \
    encryptme \
    firefox \
    google-chrome \
    gitkraken \
    handbrake \
    horos \
    imazing \
    keybase \
    local-by-flywheel \
#    local-lightning \
    plex-media-server \
    screens \
    homebrew/cask-versions/sequel-pro-nightly \
    slack \
    spamsieve \
    transmit \
    visual-studio-code \
    vlc \
    wordpresscom \
    zoomus

brew cask install https://www.corecode.io/macupdater/casks/citrix-workspace.rb

sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install-quicklook.sh)"
