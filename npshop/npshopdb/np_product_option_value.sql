USE npshopdb;

CREATE TABLE `np_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (1,217,42,5,41,100,0,1.0000,'+',0,'+',1.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (6,218,42,1,31,146,1,20.0000,'+',2,'-',20.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (7,218,42,1,43,300,1,30.0000,'+',3,'+',30.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (5,218,42,1,32,96,1,10.0000,'+',1,'+',10.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (4,217,42,5,39,92,1,4.0000,'+',0,'+',4.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (2,217,42,5,42,200,1,2.0000,'+',0,'+',2.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (3,217,42,5,40,300,0,3.0000,'+',0,'+',3.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (8,223,42,2,23,48,1,10.0000,'+',0,'+',10.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (10,223,42,2,44,2696,1,30.0000,'+',0,'+',30.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (9,223,42,2,24,194,1,20.0000,'+',0,'+',20.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (11,223,42,2,45,3998,1,40.0000,'+',0,'+',40.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (12,224,35,11,46,0,1,5.0000,'+',0,'+',0.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (13,224,35,11,47,10,1,10.0000,'+',0,'+',0.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (14,224,35,11,48,15,1,15.0000,'+',0,'+',0.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (16,226,30,5,40,5,1,0.0000,'+',0,'+',0.00000000,'+');
insert into `np_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (15,226,30,5,39,2,1,0.0000,'+',0,'+',0.00000000,'+');
