#!/bin/bash

## Init
#sudo apt-get -y install git
#sudo git clone https://github.com/nix-labs/git.git
#cd git
#sudo chmod u+x setup-script.sh
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
##update DocumentRoot to /home/dev/webroot in /etc/apache2/sites-available/000-default.conf
##update directory path to /home/dev/webroot in /etc/apache2/apache2.conf

VHOST=$(cat <<EOF
<VirtualHost *:80>
    DocumentRoot "/home/dev/webroot"
    <Directory "/home/dev/webroot">
        AllowOverride All
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
sudo chmod 777 /home/dev/webroot/shop/index.php 
sudo chmod 777 /home/dev/webroot/shop/admin/index.php
sudo chmod 777 /home/dev/webroot/shop/config.php 
sudo chmod 777 /home/dev/webroot/shop/admin/config.php
sudo chmod 777 /home/dev/webroot/shop/image
sudo chmod 777 /home/dev/webroot/shop/image/cache
sudo chmod 777 /home/dev/webroot/shop/image/catalog
sudo chmod 777 /home/dev/webroot/shop/system/storage/cache
sudo chmod 777 /home/dev/webroot/shop/system/storage/logs
sudo chmod 777 /home/dev/webroot/shop/system/storage/download
sudo chmod 777 /home/dev/webroot/shop/system/storage/upload
sudo chmod 777 /home/dev/webroot/shop/system/storage/modification


sudo reboot
