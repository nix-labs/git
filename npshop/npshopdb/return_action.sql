USE npshopdb;

CREATE TABLE `return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


insert into `return_action`(`return_action_id`,`language_id`,`name`) values (1,1,'Refunded');
insert into `return_action`(`return_action_id`,`language_id`,`name`) values (2,1,'Credit Issued');
insert into `return_action`(`return_action_id`,`language_id`,`name`) values (3,1,'Replacement Sent');
