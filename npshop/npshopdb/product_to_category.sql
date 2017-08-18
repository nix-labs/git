USE npshopdb;

CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `product_to_category`(`product_id`,`category_id`) values (28,20);
insert into `product_to_category`(`product_id`,`category_id`) values (28,24);
insert into `product_to_category`(`product_id`,`category_id`) values (29,20);
insert into `product_to_category`(`product_id`,`category_id`) values (29,24);
insert into `product_to_category`(`product_id`,`category_id`) values (30,20);
insert into `product_to_category`(`product_id`,`category_id`) values (30,33);
insert into `product_to_category`(`product_id`,`category_id`) values (31,33);
insert into `product_to_category`(`product_id`,`category_id`) values (32,34);
insert into `product_to_category`(`product_id`,`category_id`) values (33,20);
insert into `product_to_category`(`product_id`,`category_id`) values (33,28);
insert into `product_to_category`(`product_id`,`category_id`) values (34,34);
insert into `product_to_category`(`product_id`,`category_id`) values (35,20);
insert into `product_to_category`(`product_id`,`category_id`) values (36,34);
insert into `product_to_category`(`product_id`,`category_id`) values (40,20);
insert into `product_to_category`(`product_id`,`category_id`) values (40,24);
insert into `product_to_category`(`product_id`,`category_id`) values (41,27);
insert into `product_to_category`(`product_id`,`category_id`) values (42,20);
insert into `product_to_category`(`product_id`,`category_id`) values (42,28);
insert into `product_to_category`(`product_id`,`category_id`) values (43,18);
insert into `product_to_category`(`product_id`,`category_id`) values (43,20);
insert into `product_to_category`(`product_id`,`category_id`) values (44,18);
insert into `product_to_category`(`product_id`,`category_id`) values (44,20);
insert into `product_to_category`(`product_id`,`category_id`) values (45,18);
insert into `product_to_category`(`product_id`,`category_id`) values (46,18);
insert into `product_to_category`(`product_id`,`category_id`) values (46,20);
insert into `product_to_category`(`product_id`,`category_id`) values (47,18);
insert into `product_to_category`(`product_id`,`category_id`) values (47,20);
insert into `product_to_category`(`product_id`,`category_id`) values (48,20);
insert into `product_to_category`(`product_id`,`category_id`) values (48,34);
insert into `product_to_category`(`product_id`,`category_id`) values (49,57);
