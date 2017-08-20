#!/bin/bash

#Ubuntu
sudo xrandr -s 1440x900

#npshop
sudo cp -a /home/dev/git/npshop/. /home/dev/webroot/npshop
mysql -u root -proot < /home/dev/git/npshop/npshopdb/npshopdb.sql
sudo echo "GRANT ALL PRIVILEGES ON npshopdb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot
sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot

#sudo echo "DROP DATABASE IF EXISTS marsdb" | mysql -uroot -proot
#sudo echo "CREATE DATABASE marsdb" | mysql -uroot -proot
#sudo echo "GRANT ALL PRIVILEGES ON marsdb.* TO 'dbadmin'@'localhost'" | mysql -uroot -proot
#sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot
