CREATE DATABASE npshopdb;
CREATE USER 'tgadmin'@'localhost' IDENTIFIED BY 'passw0rd';
GRANT ALL PRIVILEGES ON npshopdb.* TO 'tgadmin'@'localhost';
FLUSH PRIVILEGES;

mysqldump --add-drop-database -u tgadmin -p --databases npshopdb > npshopdb.sql
mysql -u tgadmin -p npshopdb < npshopdb.sql
