USE npshopdb;

CREATE TABLE `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `information_to_store`(`information_id`,`store_id`) values (3,0);
insert into `information_to_store`(`information_id`,`store_id`) values (4,0);
insert into `information_to_store`(`information_id`,`store_id`) values (5,0);
insert into `information_to_store`(`information_id`,`store_id`) values (6,0);
