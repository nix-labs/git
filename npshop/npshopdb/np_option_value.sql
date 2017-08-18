USE npshopdb;

CREATE TABLE `np_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;


insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (43,1,'',3);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (32,1,'',1);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (45,2,'',4);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (44,2,'',3);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (42,5,'',4);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (41,5,'',3);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (39,5,'',1);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (40,5,'',2);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (31,1,'',2);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (23,2,'',1);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (24,2,'',2);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (46,11,'',1);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (47,11,'',2);
insert into `np_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (48,11,'',3);
