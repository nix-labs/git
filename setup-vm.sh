#!/bin/bash

## Init
#wget https://goo.gl/z3uKuj -O setup-vm.sh
#sudo chmod 777 setup-vm.sh
#sudo ./setup-vm.sh

## Updates
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

## Params
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'

## Installations
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y default-jdk firefox apache2 mysql-server-5.5 mysql-client-5.5 php5 php5-mysql libapache2-mod-php5 php5-gd php5-mcrypt php5-curl mysql-workbench git open-vm-tools-lts-trusty

## Configs

mkdir /home/dev/webroot
mkdir /home/dev/workspace

#Apache
sudo a2enmod rewrite

#MySQL
sudo echo "CREATE USER 'tgadmin'@'localhost' IDENTIFIED BY 'passw0rd'" | mysql -uroot -proot

#PHP
sudo php5enmod mcrypt

#Git
sudo git config --global user.email "dev@ubuntu"
sudo git config --global user.name "developer"
sudo git clone https://github.com/nix-labs/git.git

## Permissions
sudo chown -R dev:dev /home/dev
sudo sed -i 's/www-data/dev/g' /etc/apache2/envvars
sudo find /home/dev/git -type d -exec chmod 2750 {} \;
sudo find /home/dev/git -type f -exec chmod 0644 {} \;

sudo cp -a /home/dev/git/config/000-default.conf /etc/apache2/sites-available/000-default.conf

#eclipse
wget http://mirror.cc.vt.edu/pub/eclipse/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz
sudo tar -xvzf eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz -C /opt
sudo rm eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz
sudo cp /home/dev/git/config/eclipse.desktop /usr/share/applications/eclipse.desktop
sudo desktop-file-install /usr/share/applications/eclipse.desktop
sudo ln -s /opt/eclipse/eclipse /usr/local/bin

#Cleanup
sudo apt-get -f install
sudo apt-get autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean
rm /home/dev/setup-vm.sh

#sudo reboot
