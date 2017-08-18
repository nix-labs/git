USE npshopdb;

CREATE TABLE `np_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;


insert into `np_product_special`(`product_special_id`,`product_id`,`customer_group_id`,`priority`,`price`,`date_start`,`date_end`) values (419,42,1,1,90.0000,null,null);
insert into `np_product_special`(`product_special_id`,`product_id`,`customer_group_id`,`priority`,`price`,`date_start`,`date_end`) values (439,30,1,2,90.0000,null,null);
insert into `np_product_special`(`product_special_id`,`product_id`,`customer_group_id`,`priority`,`price`,`date_start`,`date_end`) values (438,30,1,1,80.0000,null,null);
