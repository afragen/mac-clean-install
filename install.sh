# Let's get started.
xcode-select --install
git config --global user.email "andy@thefragens.com"
git config --global user.name "Andy Fragen"

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew tap caskroom/cask
brew cleanup
brew doctor

# Install Oh My ZSH!
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Install Node Version Manager (nvm)
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

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

mas install \
    1278508951 \ #Trello (2.10.14)
    1333542190 \ # 1Password 7 (7.3.1)
    1378283354 \ # Whalebird (2.8.1)
    639210716 \ # NeoOffice (2017.18)
    514489722 \ # VoodooPad (5.3.0)
    682658836 \ # GarageBand (10.3.2)
    429449079 \ # Patterns (1.2)
    497799835 \ # Xcode (10.3)
    430397512 \ # SnapNDrag Pro (4.3.1)
    434433123 \ # Apple Configurator (1.7.2)
    1384080005 \ # Tweetbot (3.3)
    1037126344 \ # Apple Configurator 2 (2.9)
    1289583905 \ # Pixelmator Pro (1.4)
    425424353 \ # The Unarchiver (4.1.0)
    621276561 \ # PDFOptim (2.3.1)
    1179623856 \ # Pastebot (2.2.1)
    409201541 \ # Pages (8.1)
    418778021 \ # MsgFiler (3.1.4)
    1437227804 \ # XDebugToggle (1.2)
    408981434 \ # iMovie (10.1.12)
    409203825 \ # Numbers (6.1)
    775737590 \ # iA Writer (5.2.7)
    409183694 # Keynote (9.1)
