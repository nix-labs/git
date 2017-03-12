#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y chromium-browser

#Apache
sudo apt-get -y install apache2
sudo echo "ServerName localhost">>/etc/apache2/apache2.conf
##update DocumentRoot to /home/dev/webroot
##update VH path to /home/dev/webroot
sudo a2enmod rewrite

#MySQL
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'

sudo apt-get -y install mysql-server mysql-client

sudo echo "DROP DATABASE IF EXISTS webshopdb" | mysql -uroot -proot
sudo echo "CREATE USER 'webadmin'@'localhost' IDENTIFIED BY 'webadmin'" | mysql -uroot -proot
sudo echo "CREATE DATABASE webshopdb" | mysql -uroot -proot
sudo echo "GRANT ALL PRIVILEGES ON webshopdb.* TO 'webadmin'@'localhost'" | mysql -uroot -proot
sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot


#PHP
sudo apt-get -y install php5 php5-mysql libapache2-mod-php5 php5-gd php5-mcrypt php5-curl
#service apache2 restart

#Git
#sudo apt-get -y install git

#Misc
#apt-get install ssh openssh-server


sudo reboot
