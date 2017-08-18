USE npshopdb;

CREATE TABLE `geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


insert into `geo_zone`(`geo_zone_id`,`name`,`description`,`date_modified`,`date_added`) values (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25');
insert into `geo_zone`(`geo_zone_id`,`name`,`description`,`date_modified`,`date_added`) values (4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
