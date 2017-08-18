USE npshopdb;

CREATE TABLE `weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


insert into `weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (1,1,'Kilogram','kg');
insert into `weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (2,1,'Gram','g');
insert into `weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (5,1,'Pound ','lb');
insert into `weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (6,1,'Ounce','oz');
