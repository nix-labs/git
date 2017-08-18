USE npshopdb;

CREATE TABLE `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (1,6,1);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (2,6,5);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (3,6,3);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (4,3,1);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (5,3,2);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (6,3,3);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (7,3,4);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (8,3,5);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (9,3,6);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (10,3,7);
insert into `attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (11,3,8);
