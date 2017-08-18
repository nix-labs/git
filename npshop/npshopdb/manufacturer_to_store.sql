USE npshopdb;

CREATE TABLE `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `manufacturer_to_store`(`manufacturer_id`,`store_id`) values (5,0);
insert into `manufacturer_to_store`(`manufacturer_id`,`store_id`) values (6,0);
insert into `manufacturer_to_store`(`manufacturer_id`,`store_id`) values (7,0);
insert into `manufacturer_to_store`(`manufacturer_id`,`store_id`) values (8,0);
insert into `manufacturer_to_store`(`manufacturer_id`,`store_id`) values (9,0);
insert into `manufacturer_to_store`(`manufacturer_id`,`store_id`) values (10,0);
