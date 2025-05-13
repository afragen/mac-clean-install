# Mac Clean Install

I'm hoping to make my setup of a clean MacBook as simple as possible. Must restart computer afterwards.

* Log into Mac App Store account.
* `xcode-select --install` to install XCode command line tools.

* # Add `/opt/homebrew/bin` and `/opt/homebrew/sbin` to `/etc/paths`

* Execute the `install.sh`
  * Install Homebrew and Oh-My-ZSH!
  * Setup WordPress Coding Standards
  * Install Node Version Manager as Oh-My-ZSH! plugin.
  * Install Brewfile.
  * Load as many apps via `brew bundle install` as I can.
  * Update MacOS System Preferences.
  * Restart computer.
* Update VS Code settings.

## Setup WordPress Coding Standards set in `install.sh`
```
composer global remove --dev dealerdirect/phpcodesniffer-composer-installer higidi/composer-phpcodesniffer-standards-plugin squizlabs/PHP_codesniffer
composer global config allow-plugins.dealerdirect/phpcodesniffer-composer-installer true
composer global require --dev wp-coding-standards/wpcs:"^3.0.0" --update-with-dependencies
```


## Execute the folllowing in your shell.
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install.sh)"`

For VS Code
  1. Settings Sync extension installed from `install.sh`
  2. Open VS Code and setup with GitHub access.
  3. Download Settings Sync settings.

## Set `sudo` to use touch ID
https://sixcolors.com/post/2020/11/quick-tip-enable-touch-id-for-sudo/

1. `cd /etc/pam.d`
2. `sudo pico sudo`
3. Add `auth sufficient pam_tid.so` as first line under headers

## Set daily scripts - run in periodic daily, set in `install.sh`
* Script must be executable, `chmod +x <path to script>`
* `sudo mkdir -p /usr/local/etc/periodic/daily`
* Symlink daily backup scripts to above folder
  * `ln -s <path to script> /usr/local/etc/periodic/daily`

## Setup node for arm64 (Apple Silicon)
* open terminal session, oh-my-zsh should automatically install nvm
* `nvm install 20` as of node v20.0 compiled for Apple Silicon.
* allow time for node 20.x to build/compile
* `nvm use 20` to set node for current session
* `nvm alias default 20` to set default shell session version of node
