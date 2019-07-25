#!/bin/sh

brew update
brew upgrade
brew tap caskroom/cask
brew cleanup
brew doctor

#brew bundle handles errors for already installed casks/brews/etc/
brew bundle --file=- <<-EOS
brew "composer"
brew "mas"
brew "php@7.2"
brew "phpunit"
brew "php-cs-fixer"
brew "php-code-sniffer"
brew "wp-cli"
cask "alfred"
cask "aerial"
cask "appcleaner"
cask "backblaze"
cask "bbedit"
cask "carbon-copy-cloner"
cask "docker"
cask "duet"
cask "encryptme"
cask "firefox"
cask "google-chrome"
cask "gitkraken"
cask "handbrake"
cask "horos"
cask "imazing"
cask "keybase"
cask "local-by-flywheel"
cask "local-lightning"
cask "plex-media-server"
cask "screens"
cask "homebrew/cask-versions/sequel-pro-nightly"
cask "slack"
cask "spamsieve"
cask "transmit"
cask "visual-studio-code"
cask "vlc"
cask "wordpresscom"
cask "zoomus"
EOS

sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/reinstall-quicklook.sh)"
