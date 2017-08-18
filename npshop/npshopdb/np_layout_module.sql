USE npshopdb;

CREATE TABLE `np_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;


insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (2,4,'0','content_top',0);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (3,4,'0','content_top',1);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (20,5,'0','column_left',2);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (69,10,'affiliate','column_right',1);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (68,6,'account','column_right',1);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (67,1,'carousel.29','content_top',3);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (66,1,'slideshow.27','content_top',1);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (65,1,'featured.28','content_top',2);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (72,3,'category','column_left',1);
insert into `np_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (73,3,'banner.30','column_left',2);
