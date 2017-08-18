#!/bin/bash

#Ubuntu
sudo xrandr -s 1440x900

#npshop
sudo cp -a /home/dev/git/npshop/. /home/dev/webroot/npshop
mysql -u root -p root < /home/dev/git/npshop/npshopdb/npshopdb.sql
sudo echo "GRANT ALL PRIVILEGES ON npshopdb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot
sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot



#sudo echo "DROP DATABASE IF EXISTS webshopdb" | mysql -uroot -proot
#sudo echo "DROP DATABASE IF EXISTS marsdb" | mysql -uroot -proot
#sudo echo "CREATE DATABASE webshopdb" | mysql -uroot -proot
#sudo echo "CREATE DATABASE marsdb" | mysql -uroot -proot
#sudo echo "GRANT ALL PRIVILEGES ON webshopdb.* TO 'dbadmin'@'localhost'" | mysql -uroot -proot
#sudo echo "GRANT ALL PRIVILEGES ON marsdb.* TO 'dbadmin'@'localhost'" | mysql -uroot -proot

#sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot



#JShop
#cd /home/dev/git/jshop
#mvn eclipse:eclipse
#mvn eclipse:configure-workspace -Declipse.workspace="/home/dev/workspace" 



#ln -s /home/dev/webroot/shop/ext/admin/controller/enquiry.php /home/dev/webroot/shop/admin/controller/extension/module/enquiry.php
#ln -s /home/dev/webroot/shop/ext/admin/language/enquiry.php /home/dev/webroot/shop/admin/language/en-gb/extension/module/enquiry.php
#ln -s /home/dev/webroot/shop/ext/catalog/controller/enquiry.php /home/dev/webroot/shop/catalog/controller/extension/module/enquiry.php

#ln -s /home/dev/webroot/shop/ext/catalog/controller/contact.php /home/dev/webroot/shop/catalog/controller/extension/total/contact.php
#ln -s /home/dev/webroot/shop/ext/catalog/language/contact.php /home/dev/webroot/shop/catalog/language/en-gb/extension/total/contact.php
#ln -s /home/dev/webroot/shop/ext/catalog/view/contact.tpl /home/dev/webroot/shop/catalog/view/theme/default/template/extension/total/contact.tpl

#ln -s /home/dev/webroot/shop/ext/catalog/view/xheader.tpl /home/dev/webroot/shop/catalog/view/theme/default/template/common/xheader.tpl
#ln -s /home/dev/webroot/shop/ext/catalog/view/xfooter.tpl /home/dev/webroot/shop/catalog/view/theme/default/template/common/xfooter.tpl
#ln -s /home/dev/webroot/shop/ext/catalog/language/xheader.php /home/dev/webroot/shop/catalog/language/en-gb/common/xheader.php
#ln -s /home/dev/webroot/shop/ext/catalog/language/xfooter.php /home/dev/webroot/shop/catalog/language/en-gb/common/xfooter.php
