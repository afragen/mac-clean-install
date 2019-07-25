# Mac Clean Install

I'm hoping to make my setup of a clean MacBook as simple as possible. So far this is untested.

Install Homebrew and Oh-My-ZSH!
Install Node Version Manager as Oh-My-ZSH! plugin.

Load as many apps via `brew install` or `mas install` as I can.

Install `composer` dependencies afterwards.
    composer global require hirak/prestissimo
    composer global require friendsofphp/php-cs-fixer

    composer create-project wp-coding-standards/wpcs --no-dev

Need to complete Node Version Manager installation.
Must be moved in .zshrc before oh-my-zsh.sh is sourced.
`echo "plugins+=(zsh-nvm)\n" >> ~/.zshrc` # Or just add to plugins.
`upgrade_oh_my_zsh`

For VS Code, install Sync Settings extension and download settings.
