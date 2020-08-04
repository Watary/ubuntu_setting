#!/bin/bash

sudo a2dismod php5.6
sudo a2dismod php7.0
sudo a2dismod php7.1
sudo a2dismod php7.2
sudo a2dismod php7.3
sudo a2dismod php7.4

sudo a2enmod php$1

sudo service apache2 restart

sudo update-alternatives --set php /usr/bin/php$1
sudo update-alternatives --set phar /usr/bin/phar$1
sudo update-alternatives --set phar.phar /usr/bin/phar.phar$1
sudo update-alternatives --set phpize /usr/bin/phpize$1
sudo update-alternatives --set php-config /usr/bin/php-config$1

php -v
