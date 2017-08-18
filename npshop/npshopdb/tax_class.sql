USE npshopdb;

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


insert into `tax_class`(`tax_class_id`,`title`,`description`,`date_added`,`date_modified`) values (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50');
insert into `tax_class`(`tax_class_id`,`title`,`description`,`date_added`,`date_modified`) values (10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
