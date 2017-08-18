USE npshopdb;

CREATE TABLE `length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


insert into `length_class_description`(`length_class_id`,`language_id`,`title`,`unit`) values (1,1,'Centimeter','cm');
insert into `length_class_description`(`length_class_id`,`language_id`,`title`,`unit`) values (2,1,'Millimeter','mm');
insert into `length_class_description`(`length_class_id`,`language_id`,`title`,`unit`) values (3,1,'Inch','in');
