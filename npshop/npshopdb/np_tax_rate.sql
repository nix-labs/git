USE npshopdb;

CREATE TABLE `np_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;


insert into `np_tax_rate`(`tax_rate_id`,`geo_zone_id`,`name`,`rate`,`type`,`date_added`,`date_modified`) values (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29');
insert into `np_tax_rate`(`tax_rate_id`,`geo_zone_id`,`name`,`rate`,`type`,`date_added`,`date_modified`) values (87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
