USE npshopdb;

CREATE TABLE `np_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


insert into `np_option`(`option_id`,`type`,`sort_order`) values (1,'radio',1);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (2,'checkbox',2);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (4,'text',3);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (5,'select',4);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (6,'textarea',5);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (7,'file',6);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (8,'date',7);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (9,'time',8);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (10,'datetime',9);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (11,'select',10);
insert into `np_option`(`option_id`,`type`,`sort_order`) values (12,'date',11);
