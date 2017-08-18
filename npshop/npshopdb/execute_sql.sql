CREATE DATABASE npshopdb;
CREATE USER 'tgadmin'@'localhost' IDENTIFIED BY 'passw0rd';
GRANT ALL PRIVILEGES ON npshopdb.* TO 'tgadmin'@'localhost';
FLUSH PRIVILEGES;
