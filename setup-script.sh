#!/bin/bash

#Git
#sudo apt-get -y install git
#sudo git clone https://github.com/nix-labs/git.git
#sudo chmod u+x setup-script.sh
#sudo ./setup-script

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y chromium-browser

#Apache
sudo apt-get -y install apache2
sudo echo "ServerName localhost">>/etc/apache2/apache2.conf
mkdir /home/dev/webroot
##update DocumentRoot to /home/dev/webroot in /etc/apache2/sites-available/000-default.conf
##update directory path to /home/dev/webroot in /etc/apache2/apache2.conf
sudo a2enmod rewrite

#MySQL
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'

sudo apt-get -y install mysql-server-5.5 mysql-client-5.5

sudo echo "DROP DATABASE IF EXISTS webshopdb" | mysql -uroot -proot
sudo echo "CREATE USER 'webadmin'@'localhost' IDENTIFIED BY 'webadmin'" | mysql -uroot -proot
sudo echo "CREATE DATABASE webshopdb" | mysql -uroot -proot
sudo echo "GRANT ALL PRIVILEGES ON webshopdb.* TO 'webadmin'@'localhost'" | mysql -uroot -proot
sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot


#PHP
sudo apt-get -y install php5 php5-mysql libapache2-mod-php5 php5-gd php5-mcrypt php5-curl
sudo php5enmod mcrypt


#Misc
#apt-get install ssh openssh-server


sudo reboot
