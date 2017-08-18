USE npshopdb;

CREATE TABLE `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `product_related`(`product_id`,`related_id`) values (40,42);
insert into `product_related`(`product_id`,`related_id`) values (41,42);
insert into `product_related`(`product_id`,`related_id`) values (42,40);
insert into `product_related`(`product_id`,`related_id`) values (42,41);
