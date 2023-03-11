#!/bin/sh

# Install WordPress Coding Standards.
# https://www.edmundcwm.com/setting-up-wordpress-coding-standards-in-vs-code/
# https://github.com/brichards/dotfiles

echo "Installing WP Coding Standards\n"
composer global require "squizlabs/php_codesniffer=*"
composer global require friendsofphp/php-cs-fixer
composer global require yoast/phpunit-polyfills
# composer create-project wp-coding-standards/wpcs --no-dev
git clone -b master https://github.com/WordPress/WordPress-Coding-Standards.git ~/wpcs
composer global require phpcompatibility/phpcompatibility-wp:"*"

echo "export PATH=/Users/afragen/wpcs/vendor/bin:$PATH" >>~/.zshrc

# Get existing PHPCS isntall paths (just in case they already exist)
phpcs_install_config=$(phpcs --config-show installed_paths);
phpcs_install_paths=${phpcs_install_config##*:};

# Append our new install paths for WPCS and PHPCompatibility to the existing install path(s)
phpcs --config-set installed_paths ${phpcs_install_paths},"$HOME/wpcs","$HOME/.composer/vendor/phpcompatibility/php-compatibility","$HOME/.composer/vendor/phpcompatibility/phpcompatibility-paragonie","$HOME/.composer/vendor/phpcompatibility/phpcompatibility-wp"



# Install WordPress Coding Standards
# https://www.edmundcwm.com/setting-up-wordpress-coding-standards-in-vs-code/
#echo "Installing WP Coding Standards\n"
#composer global require squizlabs/
#composer global require "squizlabs/php_codesniffer=*"
#composer global require friendsofphp/php-cs-fixer
#composer global require yoast/phpunit-polyfills
#composer global require phpcompatibility/phpcompatibility-wp:"*"
# git clone -b master git@github.com:WordPress/WordPress-Coding-Standards.git ~/wpcs
#git clone -b master https://github.com/WordPress/WordPress-Coding-Standards.git ~/wpcs

# Get existing PHPCS isntall paths (just in case they already exist)
#phpcs_install_config=$(phpcs --config-show installed_paths);
#phpcs_install_paths=${phpcs_install_config##*:};

# Append our new install paths for WPCS and PHPCompatibility to the existing install path(s)
#phpcs --config-set installed_paths ${phpcs_install_paths},"$HOME/Sites/wpcs","$HOME/.composer/vendor/phpcompatibility/php-compatibility","$HOME/.composer/vendor/phpcompatibility/phpcompatibility-paragonie","$HOME/.composer/vendor/phpcompatibility/phpcompatibility-wp"

# https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs

# https://marketplace.visualstudio.com/items?itemName=persoderlind.vscode-phpcbf
# https://marketplace.visualstudio.com/items?itemName=simone-baldini.vscode-phpcbf

#    "phpcs.enable": true,
#    "phpcs.standard": "WordPress",
#    "phpcbf.enable": true,
#    "phpcbf.onsave": true,
#    "phpcbf.standard": "WordPress",
#    "phpcbf.documentFormattingProvider": true
