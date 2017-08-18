USE npshopdb;

CREATE TABLE `return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


insert into `return_reason`(`return_reason_id`,`language_id`,`name`) values (1,1,'Dead On Arrival');
insert into `return_reason`(`return_reason_id`,`language_id`,`name`) values (2,1,'Received Wrong Item');
insert into `return_reason`(`return_reason_id`,`language_id`,`name`) values (3,1,'Order Error');
insert into `return_reason`(`return_reason_id`,`language_id`,`name`) values (4,1,'Faulty, please supply details');
insert into `return_reason`(`return_reason_id`,`language_id`,`name`) values (5,1,'Other, please supply details');
