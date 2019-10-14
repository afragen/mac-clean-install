#!/bin/sh
# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew tap caskroom/cask
brew tap "homebrew/cask-fonts"
brew cleanup
brew doctor

#brew bundle handles errors for already installed casks/brews/etc/
brew bundle --file=- <<-EOS
cask_args appdir: "/Applications"

brew "cask"
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
cask "bartender"
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
cask "netnewswire"
cask "maccy"
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

cask "https://www.corecode.io/macupdater/casks/citrix-workspace.rb"
EOS

sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install-quicklook.sh)"
