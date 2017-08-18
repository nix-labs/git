USE npshopdb;

CREATE TABLE `np_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `np_product_attribute`(`product_id`,`attribute_id`,`language_id`,`text`) values (43,2,1,'1');
insert into `np_product_attribute`(`product_id`,`attribute_id`,`language_id`,`text`) values (47,4,1,'16GB');
insert into `np_product_attribute`(`product_id`,`attribute_id`,`language_id`,`text`) values (43,4,1,'8gb');
insert into `np_product_attribute`(`product_id`,`attribute_id`,`language_id`,`text`) values (42,3,1,'100mhz');
insert into `np_product_attribute`(`product_id`,`attribute_id`,`language_id`,`text`) values (47,2,1,'4');
