USE npshopdb;

CREATE TABLE `tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `tax_rate_to_customer_group`(`tax_rate_id`,`customer_group_id`) values (86,1);
insert into `tax_rate_to_customer_group`(`tax_rate_id`,`customer_group_id`) values (87,1);
