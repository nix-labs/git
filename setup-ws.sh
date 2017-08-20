#!/bin/bash

#Ubuntu
sudo xrandr -s 1440x900

#npshop
sudo cp -a /home/dev/git/npshop/. /home/dev/webroot/npshop
mysql -u root -p root < /home/dev/git/npshop/npshopdb/npshopdb.sql
sudo echo "GRANT ALL PRIVILEGES ON npshopdb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot
sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot

wget http://mirror.cc.vt.edu/pub/eclipse/technology/epp/downloads/release/indigo/SR2/eclipse-jee-indigo-SR2-linux-gtk-x86_64.tar.gz
sudo tar -xvzf eclipse-jee-indigo-SR2-linux-gtk-x86_64.tar.gz -C /opt


#sudo echo "DROP DATABASE IF EXISTS marsdb" | mysql -uroot -proot
#sudo echo "CREATE DATABASE marsdb" | mysql -uroot -proot
#sudo echo "GRANT ALL PRIVILEGES ON marsdb.* TO 'dbadmin'@'localhost'" | mysql -uroot -proot
#sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot
