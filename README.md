# Mac Clean Install

I'm hoping to make my setup of a clean MacBook as simple as possible. Must restart computer afterwards.

* Log into iTunes account from iTunes.
* Execute the `install.sh`
  * Install Homebrew and Oh-My-ZSH!
  * Install Node Version Manager as Oh-My-ZSH! plugin.
  * Install Brewfile.
  * Load as many apps via `brew bundle install` as I can.
  * Update MacOS System Preferences.
  * Restart computer.
 * Install `composer` dependencies afterwards.
* Update VS Code settings.

```
composer global require hirak/prestissimo
composer global require friendsofphp/php-cs-fixer
composer create-project wp-coding-standards/wpcs --no-dev
```


## Execute the folllowing in your shell.
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/afragen/mac-clean-install/master/install.sh)"`

For VS Code
  1. Settings Sync extension installed from `install.sh`
  2. Open VS Code and setup with GitHub access.
  3. Download Settings Sync settings.
