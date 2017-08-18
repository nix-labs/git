USE npshopdb;

CREATE TABLE `attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


insert into `attribute_group`(`attribute_group_id`,`sort_order`) values (3,2);
insert into `attribute_group`(`attribute_group_id`,`sort_order`) values (4,1);
insert into `attribute_group`(`attribute_group_id`,`sort_order`) values (5,3);
insert into `attribute_group`(`attribute_group_id`,`sort_order`) values (6,4);
