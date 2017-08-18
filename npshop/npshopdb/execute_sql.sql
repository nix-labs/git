CREATE DATABASE npshopdb;
CREATE USER 'npdbadmin'@'localhost' IDENTIFIED BY 'np@india';
GRANT ALL PRIVILEGES ON npshopdb.* TO 'npdbadmin'@'localhost';
FLUSH PRIVILEGES;
