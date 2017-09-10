#!/bin/bash

#Ubuntu
sudo xrandr -s 1440x900

#npshop
sudo cp -a /home/dev/git/npshop/. /home/dev/webroot/npshop
mysql -u root -proot < /home/dev/git/npshop/npshopdb/npshopdb.sql
sudo echo "GRANT ALL PRIVILEGES ON npshopdb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

#shadi
sudo cp -a /home/dev/git/shadi/. /home/dev/webroot/shadi
mysql -u root -proot < /home/dev/git/shadi/rsvp.sql
sudo echo "GRANT ALL PRIVILEGES ON shadidb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

#venus
cd /home/dev/git/Venus
mvn eclipse:eclipse
sudo chown -R dev:dev /home/dev
mysql -u root -proot < /home/dev/git/Venus/sql/venus.sql
sudo echo "GRANT ALL PRIVILEGES ON venusdb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot


#tomcat config
#cd ~/workspace/.metadata/.plugins/org.eclipse.core.runtime/.settings/    
#rm org.eclipse.jst.server.tomcat.core.prefs    
#rm org.eclipse.wst.server.core.prefs

