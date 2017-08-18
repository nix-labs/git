USE npshopdb;

CREATE TABLE `np_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;


insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (38,6,0,'account/%');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (17,10,0,'affiliate/%');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (44,3,0,'product/category');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (42,1,0,'common/home');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (20,2,0,'product/product');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (24,11,0,'information/information');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (23,7,0,'checkout/%');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (31,8,0,'information/contact');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (32,9,0,'information/sitemap');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (34,4,0,'');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (45,5,0,'product/manufacturer');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (52,12,0,'product/compare');
insert into `np_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (53,13,0,'product/search');
