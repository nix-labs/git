USE npshopdb;

CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


insert into `order_status`(`order_status_id`,`language_id`,`name`) values (2,1,'Processing');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (3,1,'Shipped');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (7,1,'Canceled');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (5,1,'Complete');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (8,1,'Denied');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (9,1,'Canceled Reversal');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (10,1,'Failed');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (11,1,'Refunded');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (12,1,'Reversed');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (13,1,'Chargeback');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (1,1,'Pending');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (16,1,'Voided');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (15,1,'Processed');
insert into `order_status`(`order_status_id`,`language_id`,`name`) values (14,1,'Expired');
