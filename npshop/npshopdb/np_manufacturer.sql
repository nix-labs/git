USE npshopdb;

CREATE TABLE `np_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


insert into `np_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (5,'HTC','catalog/demo/htc_logo.jpg',0);
insert into `np_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (6,'Palm','catalog/demo/palm_logo.jpg',0);
insert into `np_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0);
insert into `np_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (8,'Apple','catalog/demo/apple_logo.jpg',0);
insert into `np_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (9,'Canon','catalog/demo/canon_logo.jpg',0);
insert into `np_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (10,'Sony','catalog/demo/sony_logo.jpg',0);
