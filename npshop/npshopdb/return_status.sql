USE npshopdb;

CREATE TABLE `return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


insert into `return_status`(`return_status_id`,`language_id`,`name`) values (1,1,'Pending');
insert into `return_status`(`return_status_id`,`language_id`,`name`) values (3,1,'Complete');
insert into `return_status`(`return_status_id`,`language_id`,`name`) values (2,1,'Awaiting Products');
