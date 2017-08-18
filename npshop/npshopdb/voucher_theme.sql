USE npshopdb;

CREATE TABLE `voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


insert into `voucher_theme`(`voucher_theme_id`,`image`) values (8,'catalog/demo/canon_eos_5d_2.jpg');
insert into `voucher_theme`(`voucher_theme_id`,`image`) values (7,'catalog/demo/gift-voucher-birthday.jpg');
insert into `voucher_theme`(`voucher_theme_id`,`image`) values (6,'catalog/demo/apple_logo.jpg');
