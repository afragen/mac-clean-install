#!/bin/sh

# Let's get started.
cd ~
xcode-select --install
git config --global credential.helper osxkeychain
git config --global user.email "andy@thefragens.com"
git config --global user.name "Andy Fragen"

# Install Oh My ZSH!
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Install Node Version Manager (nvm)
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Install my modified robbyrussell.zsh-theme.
curl -o ~/.oh-my-zsh/themes/afragen.zsh-theme https://gist.githubusercontent.com/afragen/b5c7360618558ed305fef00b01db9116/raw/afragen.zsh-theme

# Install my zsh aliases
curl -o ~/.oh-my-zsh/custom/aliases.zsh https://gist.githubusercontent.com/afragen/7fc208a836db4b669927a0fae8fc4089/raw/aliases.zsh

# Finish setting up oh-my-zsh!
sed -i '.bak' 's/^ZSH_THEME=.*$/ZSH_THEME="afragen"/' ~/.zshrc
sed -i '.bak' '/^source/ i\
plugins\+=\(git zsh-nvm zsh-autosuggestions\)
' ~/.zshrc
omz update

# Install and activate periodic daily backup
curl -o ~/Documents/backup-periodic-daily.sh https://raw.githubusercontent.com/afragen/mac-clean-install/master/backup-periodic-daily.sh
chmod +x ~/Documents/backup-periodic-daily.sh
sudo mkdir -p /usr/local/etc/periodic/daily
sudo ln -s ~/Documents/backup-periodic-daily.sh /usr/local/etc/periodic/daily

# Install Homebrew and all apps on Homebrew.
# Run install-brew.sh
# Add `/opt/homebrew/bin` and `/opt/homebrew/sbin` to `/etc/paths`
echo -e "/opt/homebrew/bin\n/opt/homebrew/sbin\n$(cat /etc/paths)"
# Remove duplicate lines
awk '!seen[$0]++' /etc/paths
sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install-brew.sh)"

# Install VSCode Settings Sync extension
code --install-extension Shan.code-settings-sync

# Add xDebug idekey for VSCode to shell.
# echo "export XDEBUG_CONFIG=\"idekey=VSCODE\"" >>~/.zshrc

# Install WordPress Coding Standards.
composer global require friendsofphp/php-cs-fixer
composer global require yoast/phpunit-polyfills
composer create-project wp-coding-standards/wpcs --no-dev
composer require --dev --working-dir=/Users/afragen/wpcs phpcompatibility/phpcompatibility-wp:"*"
echo "export PATH=/Users/afragen/wpcs/vendor/bin:$PATH" >>~/.zshrc
phpcs --config-set installed_paths ~/wpcs

## Import base `ruleset.xml` for PHPCS
curl --create-dirs -o ~/code-standards/ruleset.xml https://gist.githubusercontent.com/afragen/341bc1c7f7438cf963d4f6e08f403f40/raw/ruleset.xml

# Install/Update System Prefs
# Run macos-prefs.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/macos-prefs.sh)"

# Prevent duplicate PATH variables.
echo "typeset -U PATH" >>~/.zshrc
