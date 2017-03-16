#!/bin/bash

## Init
#sudo apt-get -y install git
#sudo git clone https://github.com/nix-labs/git.git
#cd git
#sudo chmod 777 setup-script.sh
#sudo ./setup-script

## Repositories
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

## Updates
sudo apt-get -y update
sudo apt-get -y upgrade

## Params
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'

## Installations
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y chromium-browser apache2 mysql-server-5.5 mysql-client-5.5 php5 php5-mysql libapache2-mod-php5 php5-gd php5-mcrypt php5-curl sublime-text-installer

## Configs

#Apache
sudo echo "ServerName localhost">>/etc/apache2/apache2.conf
mkdir /home/dev/webroot

VHOST=$(cat <<EOF
<VirtualHost *:80>
    DocumentRoot /home/dev/webroot
    <Directory /home/dev/webroot/>
		Options Indexes FollowSymLinks
		AllowOverride None
		Require all granted
	</Directory>
</VirtualHost>
EOF
)
echo "${VHOST}" > /etc/apache2/sites-available/000-default.conf

sudo a2enmod rewrite

#MySQL
sudo echo "DROP DATABASE IF EXISTS webshopdb" | mysql -uroot -proot
sudo echo "CREATE USER 'webadmin'@'localhost' IDENTIFIED BY 'webadmin'" | mysql -uroot -proot
sudo echo "CREATE DATABASE webshopdb" | mysql -uroot -proot
sudo echo "GRANT ALL PRIVILEGES ON webshopdb.* TO 'webadmin'@'localhost'" | mysql -uroot -proot
sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot

#PHP
sudo php5enmod mcrypt

#Git
sudo git config --global user.email "dev@sandbox"
sudo git config --global user.name "developer"

#Opencart
sudo cp -a /home/dev/git/shop/. /home/dev/webroot/shop

## Permissions
sudo chown -R dev:dev /home/dev/webroot
sudo chown -R dev:dev /home/dev/git
sudo find /home/dev/webroot -type d -exec chmod 2750 {} \;
sudo find /home/dev/webroot -type f -exec chmod 0644 {} \;
sudo find /home/dev/git -type d -exec chmod 2750 {} \;
sudo find /home/dev/git -type f -exec chmod 0644 {} \;
sed -i 's/www-data/dev/g' /etc/apache2/envvars

#sudo cp -a /home/dev/git/shop/. /home/dev/webroot/shop

sudo reboot
