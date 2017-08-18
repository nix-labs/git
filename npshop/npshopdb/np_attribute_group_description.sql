USE npshopdb;

CREATE TABLE `np_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `np_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (3,1,'Memory');
insert into `np_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (4,1,'Technical');
insert into `np_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (5,1,'Motherboard');
insert into `np_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (6,1,'Processor');
