#!/bin/sh

# Let's get started.
xcode-select --install
git config --global credential.helper osxkeychain
git config --global user.email "andy@thefragens.com"
git config --global user.name "Andy Fragen"

# Install Oh My ZSH!
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Install Node Version Manager (nvm)
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
echo "plugins+=(zsh-nvm)\n" >> ~/.zshrc

# Install Homebrew and all apps on Homebrew.
# Run install-brew.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install-brew.sh)"

# Install apps from Mac App Store.
# Run install-mas.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install-mas.sh)"
