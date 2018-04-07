#!/bin/bash

#Ubuntu
xrandr -s 1440x900

#npshop
cp -a /home/dev/sites/npshop/. /home/dev/webroot/npshop
mysql -u root -proot < /home/dev/sites/npshop/config/bootstrap_magic.sql
echo "GRANT ALL PRIVILEGES ON magic.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

#shadi
cp -a /home/dev/git/shadi/. /home/dev/webroot/shadi
mysql -u root -proot < /home/dev/git/shadi/rsvp.sql
echo "GRANT ALL PRIVILEGES ON shadidb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

#venus
cd /home/dev/git/Venus
mvn eclipse:eclipse
mvn eclipse:configure-workspace -Declipse.workspace=/home/dev/workspace
mysql -u root -proot < /home/dev/git/Venus/sql/venus.sql
echo "GRANT ALL PRIVILEGES ON venusdb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

echo "FLUSH PRIVILEGES" | mysql -uroot -proot

find /home/dev/git -type d -exec chmod 2750 {} \;
find /home/dev/git -type f -exec chmod 0644 {} \;
find /home/dev/sites -type d -exec chmod 2750 {} \;
find /home/dev/sites -type f -exec chmod 0644 {} \;
