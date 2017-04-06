#!/bin/bash

## Init
#wget https://goo.gl/z3uKuj -O setup-script.sh
#sudo chmod 777 setup-script.sh
#sudo ./setup-script.sh

## Updates
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

## Params
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'

## Installations
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y default-jdk chromium-browser apache2 mysql-server-5.5 mysql-client-5.5 php5 php5-mysql libapache2-mod-php5 php5-gd php5-mcrypt php5-curl eclipse maven eclipse-egit mysql-workbench git

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
sudo echo "CREATE USER 'dbadmin'@'localhost' IDENTIFIED BY 'dbadmin'" | mysql -uroot -proot
sudo echo "DROP DATABASE IF EXISTS webshopdb" | mysql -uroot -proot
sudo echo "DROP DATABASE IF EXISTS marsdb" | mysql -uroot -proot
sudo echo "CREATE DATABASE webshopdb" | mysql -uroot -proot
sudo echo "CREATE DATABASE marsdb" | mysql -uroot -proot
sudo echo "GRANT ALL PRIVILEGES ON webshopdb.* TO 'dbadmin'@'localhost'" | mysql -uroot -proot
sudo echo "GRANT ALL PRIVILEGES ON marsdb.* TO 'dbadmin'@'localhost'" | mysql -uroot -proot

sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot

#PHP
sudo php5enmod mcrypt

#Git
sudo git config --global user.email "dev@ubuntu"
sudo git config --global user.name "developer"
sudo git clone https://github.com/nix-labs/git.git

#Opencart
sudo cp -a /home/dev/git/shop/. /home/dev/webroot/shop

#JShop
cd /home/dev/git/jshop
mkdir /home/dev/workspace
sudo mvn eclipse:eclipse -Dwtpversion=2.0
mvn -Declipse.workspace="/home/dev/workspace" eclipse:configure-workspace

## Permissions
sudo chown -R dev:dev /home/dev/webroot
sudo chown -R dev:dev /home/dev/git
sudo chown -R dev:dev /home/dev/workspace
sudo find /home/dev/webroot -type d -exec chmod 2750 {} \;
sudo find /home/dev/webroot -type f -exec chmod 0644 {} \;
sudo find /home/dev/git -type d -exec chmod 2750 {} \;
sudo find /home/dev/git -type f -exec chmod 0644 {} \;
sudo sed -i 's/www-data/dev/g' /etc/apache2/envvars

ln -s /home/dev/webroot/shop/ext/admin/controller/enquiry.php /home/dev/webroot/shop/admin/controller/extension/module/enquiry.php
ln -s /home/dev/webroot/shop/ext/admin/language/enquiry.php /home/dev/webroot/shop/admin/language/en-gb/extension/module/enquiry.php
ln -s /home/dev/webroot/shop/ext/catalog/controller/enquiry.php /home/dev/webroot/shop/catalog/controller/extension/module/enquiry.php

ln -s /home/dev/webroot/shop/ext/catalog/controller/contact.php /home/dev/webroot/shop/catalog/controller/extension/total/contact.php
ln -s /home/dev/webroot/shop/ext/catalog/language/contact.php /home/dev/webroot/shop/catalog/language/en-gb/extension/total/contact.php
ln -s /home/dev/webroot/shop/ext/catalog/view/contact.tpl /home/dev/webroot/shop/catalog/view/theme/default/template/extension/total/contact.tpl

ln -s /home/dev/webroot/shop/ext/catalog/view/xheader.tpl /home/dev/webroot/shop/catalog/view/theme/default/template/common/xheader.tpl
ln -s /home/dev/webroot/shop/ext/catalog/view/xfooter.tpl /home/dev/webroot/shop/catalog/view/theme/default/template/common/xfooter.tpl
ln -s /home/dev/webroot/shop/ext/catalog/language/xheader.php /home/dev/webroot/shop/catalog/language/en-gb/common/xheader.php
ln -s /home/dev/webroot/shop/ext/catalog/language/xfooter.php /home/dev/webroot/shop/catalog/language/en-gb/common/xfooter.php

#Ubuntu
sudo xrandr -s 1440x900

#Cleanup
sudo apt-get -f install
sudo apt-get autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean
rm /home/dev/setup-script.sh

sudo reboot
