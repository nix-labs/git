USE npshopdb;

CREATE TABLE `np_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;


insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (25,'',0,1,1,3,1,'2009-01-31 01:04:25','2011-05-30 12:14:55');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (27,'',20,0,0,2,1,'2009-01-31 01:55:34','2010-08-22 06:32:15');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (20,'catalog/demo/compaq_presario.jpg',0,1,1,1,1,'2009-01-05 21:49:43','2011-07-16 02:14:42');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (24,'',0,1,1,5,1,'2009-01-20 02:36:26','2011-05-30 12:15:18');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (18,'catalog/demo/hp_2.jpg',0,1,0,2,1,'2009-01-05 21:49:15','2011-05-30 12:13:55');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (17,'',0,1,1,4,1,'2009-01-03 21:08:57','2011-05-30 12:15:11');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (28,'',25,0,0,1,1,'2009-02-02 13:11:12','2010-08-22 06:32:46');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (26,'',20,0,0,1,1,'2009-01-31 01:55:14','2010-08-22 06:31:45');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (29,'',25,0,0,1,1,'2009-02-02 13:11:37','2010-08-22 06:32:39');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (30,'',25,0,0,1,1,'2009-02-02 13:11:59','2010-08-22 06:33:00');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (31,'',25,0,0,1,1,'2009-02-03 14:17:24','2010-08-22 06:33:06');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (32,'',25,0,0,1,1,'2009-02-03 14:17:34','2010-08-22 06:33:12');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (33,'',0,1,1,6,1,'2009-02-03 14:17:55','2011-05-30 12:15:25');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (34,'catalog/demo/ipod_touch_4.jpg',0,1,4,7,1,'2009-02-03 14:18:11','2011-05-30 12:15:31');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (35,'',28,0,0,0,1,'2010-09-17 10:06:48','2010-09-18 14:02:42');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (36,'',28,0,0,0,1,'2010-09-17 10:07:13','2010-09-18 14:02:55');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (37,'',34,0,0,0,1,'2010-09-18 14:03:39','2011-04-22 01:55:08');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (38,'',34,0,0,0,1,'2010-09-18 14:03:51','2010-09-18 14:03:51');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (39,'',34,0,0,0,1,'2010-09-18 14:04:17','2011-04-22 01:55:20');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (40,'',34,0,0,0,1,'2010-09-18 14:05:36','2010-09-18 14:05:36');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (41,'',34,0,0,0,1,'2010-09-18 14:05:49','2011-04-22 01:55:30');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (42,'',34,0,0,0,1,'2010-09-18 14:06:34','2010-11-07 20:31:04');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (43,'',34,0,0,0,1,'2010-09-18 14:06:49','2011-04-22 01:55:40');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (44,'',34,0,0,0,1,'2010-09-21 15:39:21','2010-11-07 20:30:55');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (45,'',18,0,0,0,1,'2010-09-24 18:29:16','2011-04-26 08:52:11');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (46,'',18,0,0,0,1,'2010-09-24 18:29:31','2011-04-26 08:52:23');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (47,'',34,0,0,0,1,'2010-11-07 11:13:16','2010-11-07 11:13:16');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (48,'',34,0,0,0,1,'2010-11-07 11:13:33','2010-11-07 11:13:33');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (49,'',34,0,0,0,1,'2010-11-07 11:14:04','2010-11-07 11:14:04');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (50,'',34,0,0,0,1,'2010-11-07 11:14:23','2011-04-22 01:16:01');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (51,'',34,0,0,0,1,'2010-11-07 11:14:38','2011-04-22 01:16:13');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (52,'',34,0,0,0,1,'2010-11-07 11:16:09','2011-04-22 01:54:57');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (53,'',34,0,0,0,1,'2010-11-07 11:28:53','2011-04-22 01:14:36');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (54,'',34,0,0,0,1,'2010-11-07 11:29:16','2011-04-22 01:16:50');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (55,'',34,0,0,0,1,'2010-11-08 10:31:32','2010-11-08 10:31:32');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (56,'',34,0,0,0,1,'2010-11-08 10:31:50','2011-04-22 01:16:37');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (57,'',0,1,1,3,1,'2011-04-26 08:53:16','2011-05-30 12:15:05');
insert into `np_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (58,'',52,0,0,0,1,'2011-05-08 13:44:16','2011-05-08 13:44:16');
