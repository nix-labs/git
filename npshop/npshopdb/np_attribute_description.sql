USE npshopdb;

CREATE TABLE `np_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (1,1,'Description');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (2,1,'No. of Cores');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (4,1,'test 1');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (5,1,'test 2');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (6,1,'test 3');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (7,1,'test 4');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (8,1,'test 5');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (9,1,'test 6');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (10,1,'test 7');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (11,1,'test 8');
insert into `np_attribute_description`(`attribute_id`,`language_id`,`name`) values (3,1,'Clockspeed');
