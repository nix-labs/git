USE npshopdb;

CREATE TABLE `weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


insert into `weight_class`(`weight_class_id`,`value`) values (1,1.00000000);
insert into `weight_class`(`weight_class_id`,`value`) values (2,1000.00000000);
insert into `weight_class`(`weight_class_id`,`value`) values (5,2.20460000);
insert into `weight_class`(`weight_class_id`,`value`) values (6,35.27400000);
