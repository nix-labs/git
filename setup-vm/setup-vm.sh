#!/bin/bash

## Updates
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

## Params
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'

## Installations
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y default-jdk firefox apache2 mysql-server-5.5 mysql-client-5.5 php5 php5-mysql libapache2-mod-php5 php5-gd php5-mcrypt php5-curl mysql-workbench eclipse git maven eclipse-egit open-vm-tools-lts-trusty open-vm-tools-lts-trusty-desktop

## Configs

mkdir sites webroot workspace

#Apache
sudo a2enmod rewrite

#MySQL
sudo echo "CREATE USER 'tgadmin'@'localhost' IDENTIFIED BY 'passw0rd'" | mysql -uroot -proot

#PHP
sudo php5enmod mcrypt

#Git
sudo git config --global user.email "dev@ubuntu"
sudo git config --global user.name "developer"
sudo git clone https://github.com/nix-labs/git.git /home/dev
sudo git clone https://github.com/nix-labs/npshop.git /home/dev/sites

## Permissions
sudo sed -i 's/www-data/dev/g' /etc/apache2/envvars
sudo chown -R dev:dev /home/dev
sudo cp -a /home/dev/git/setup-vm/000-default.conf /etc/apache2/sites-available/000-default.conf

#Cleanup
sudo apt-get -f install
sudo apt-get autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean
sudo rm /home/dev/setup-vm.sh
sudo rm /home/dev/setup-init.sh
sudo chmod 777 /home/dev/git/setup-vm/setup-ws.sh
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false

sudo reboot
