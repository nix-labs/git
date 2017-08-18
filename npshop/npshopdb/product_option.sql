USE npshopdb;

CREATE TABLE `product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;


insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (224,35,11,'',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (225,47,12,'2011-04-22',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (223,42,2,'',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (217,42,5,'',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (209,42,6,'',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (218,42,1,'',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (208,42,4,'test',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (219,42,8,'2011-02-20',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (222,42,7,'',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (221,42,9,'22:25',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (220,42,10,'2011-02-20 22:25',1);
insert into `product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (226,30,5,'',1);
