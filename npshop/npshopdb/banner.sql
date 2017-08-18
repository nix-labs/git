USE npshopdb;

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


insert into `banner`(`banner_id`,`name`,`status`) values (6,'HP Products',1);
insert into `banner`(`banner_id`,`name`,`status`) values (7,'Home Page Slideshow',1);
insert into `banner`(`banner_id`,`name`,`status`) values (8,'Manufacturers',1);
