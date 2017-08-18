USE npshopdb;

CREATE TABLE `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (43,1,1,'Large');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (32,1,1,'Small');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (45,1,2,'Checkbox 4');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (44,1,2,'Checkbox 3');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (31,1,1,'Medium');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (42,1,5,'Yellow');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (41,1,5,'Green');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (39,1,5,'Red');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (40,1,5,'Blue');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (23,1,2,'Checkbox 1');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (24,1,2,'Checkbox 2');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (48,1,11,'Large');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (47,1,11,'Medium');
insert into `option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (46,1,11,'Small');
