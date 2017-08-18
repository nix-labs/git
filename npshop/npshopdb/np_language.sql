USE npshopdb;

CREATE TABLE `np_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


insert into `np_language`(`language_id`,`name`,`code`,`locale`,`image`,`directory`,`sort_order`,`status`) values (1,'English','en','en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1);
