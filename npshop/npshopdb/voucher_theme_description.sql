USE npshopdb;

CREATE TABLE `voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `voucher_theme_description`(`voucher_theme_id`,`language_id`,`name`) values (6,1,'Christmas');
insert into `voucher_theme_description`(`voucher_theme_id`,`language_id`,`name`) values (7,1,'Birthday');
insert into `voucher_theme_description`(`voucher_theme_id`,`language_id`,`name`) values (8,1,'General');
