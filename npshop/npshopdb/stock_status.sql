USE npshopdb;

CREATE TABLE `stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


insert into `stock_status`(`stock_status_id`,`language_id`,`name`) values (7,1,'In Stock');
insert into `stock_status`(`stock_status_id`,`language_id`,`name`) values (8,1,'Pre-Order');
insert into `stock_status`(`stock_status_id`,`language_id`,`name`) values (5,1,'Out Of Stock');
insert into `stock_status`(`stock_status_id`,`language_id`,`name`) values (6,1,'2-3 Days');
