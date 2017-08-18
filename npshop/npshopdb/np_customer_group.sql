USE npshopdb;

CREATE TABLE `np_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


insert into `np_customer_group`(`customer_group_id`,`approval`,`sort_order`) values (1,0,1);
