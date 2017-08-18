USE npshopdb;

CREATE TABLE `np_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (79,1,7,'iPhone 6');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (87,1,6,'HP Banner');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (93,1,8,'Canon');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (92,1,8,'Burger King');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (91,1,8,'Coca Cola');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (90,1,8,'Disney');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (89,1,8,'Dell');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (80,1,7,'MacBookAir');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (88,1,8,'Harley Davidson');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (94,1,8,'NFL');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (95,1,8,'RedBull');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (96,1,8,'Sony');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (97,1,8,'Starbucks');
insert into `np_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (98,1,8,'Nintendo');
