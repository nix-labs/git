#!/bin/bash
sudo apt-get install -y default-jdk eclipse maven eclipse-egit mysql-workbench

#pdt
#oc cli


## Configs

#MySQL
sudo echo "DROP DATABASE IF EXISTS marsdb" | mysql -uroot -proot
#sudo echo "CREATE USER 'webadmin'@'localhost' IDENTIFIED BY 'webadmin'" | mysql -uroot -proot
sudo echo "CREATE DATABASE marsdb" | mysql -uroot -proot
sudo echo "GRANT ALL PRIVILEGES ON marsdb.* TO 'dbadmin'@'localhost'" | mysql -uroot -proot
sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot

#Java



#Mars
#sudo cp -a /home/dev/git/shop/. /home/dev/webroot/shop

## Permissions
#sudo chown -R dev:dev /home/dev/webroot
#sudo chown -R dev:dev /home/dev/git
#sudo find /home/dev/webroot -type d -exec chmod 2750 {} \;
#sudo find /home/dev/webroot -type f -exec chmod 0644 {} \;
#sudo find /home/dev/git -type d -exec chmod 2750 {} \;
#sudo find /home/dev/git -type f -exec chmod 0644 {} \;
#sudo sed -i 's/www-data/dev/g' /etc/apache2/envvars

#sudo reboot

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
