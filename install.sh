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

# Install my modified robbyrussell.zsh-theme.
curl -o ~/.oh-my-zsh/themes/robbyrussell-mod.zsh-theme https://gist.githubusercontent.com/afragen/b5c7360618558ed305fef00b01db9116/raw/3ce7b4eab96a01bf7b46e7e3c17d7dc181cd51fe/robbyrussell-mod.zsh-theme

# Finish setting up oh-my-zsh!
sed -i '.bak' 's/^ZSH_THEME=.*$/ZSH_THEME="robbyrussell-mod"/' ~/.zshrc
sed -i '.bak' '/^source/ i\
plugins\+=\(zsh-nvm\)
' ~/.zshrc
upgrade_oh_my_zsh

# Install Homebrew and all apps on Homebrew.
# Run install-brew.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install-brew.sh)"

# Install apps from Mac App Store.
# Run install-mas.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install-mas.sh)"

# Install VSCode Settings Sync extension
code --install-extension Shan.code-settings-sync
