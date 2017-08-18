USE npshopdb;

CREATE TABLE `np_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;


insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (515,42,1,100);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (519,47,1,300);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (379,28,1,400);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (329,43,1,600);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (339,29,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (343,48,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (335,40,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (539,30,1,200);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (331,44,1,700);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (333,45,1,800);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (337,31,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (425,35,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (345,33,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (347,46,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (545,41,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (351,36,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (353,34,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (355,32,1,0);
insert into `np_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (521,49,1,1000);
