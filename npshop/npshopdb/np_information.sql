USE npshopdb;

CREATE TABLE `np_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


insert into `np_information`(`information_id`,`bottom`,`sort_order`,`status`) values (3,1,3,1);
insert into `np_information`(`information_id`,`bottom`,`sort_order`,`status`) values (4,1,1,1);
insert into `np_information`(`information_id`,`bottom`,`sort_order`,`status`) values (5,1,4,1);
insert into `np_information`(`information_id`,`bottom`,`sort_order`,`status`) values (6,1,2,1);
