USE npshopdb;

CREATE TABLE `np_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


insert into `np_length_class`(`length_class_id`,`value`) values (1,1.00000000);
insert into `np_length_class`(`length_class_id`,`value`) values (2,10.00000000);
insert into `np_length_class`(`length_class_id`,`value`) values (3,0.39370000);
