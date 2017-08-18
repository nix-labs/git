USE npshopdb;

CREATE TABLE `np_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=428 DEFAULT CHARSET=utf8;


insert into `np_extension`(`extension_id`,`type`,`code`) values (23,'payment','cod');
insert into `np_extension`(`extension_id`,`type`,`code`) values (22,'total','shipping');
insert into `np_extension`(`extension_id`,`type`,`code`) values (57,'total','sub_total');
insert into `np_extension`(`extension_id`,`type`,`code`) values (58,'total','tax');
insert into `np_extension`(`extension_id`,`type`,`code`) values (59,'total','total');
insert into `np_extension`(`extension_id`,`type`,`code`) values (410,'module','banner');
insert into `np_extension`(`extension_id`,`type`,`code`) values (426,'module','carousel');
insert into `np_extension`(`extension_id`,`type`,`code`) values (390,'total','credit');
insert into `np_extension`(`extension_id`,`type`,`code`) values (387,'shipping','flat');
insert into `np_extension`(`extension_id`,`type`,`code`) values (349,'total','handling');
insert into `np_extension`(`extension_id`,`type`,`code`) values (350,'total','low_order_fee');
insert into `np_extension`(`extension_id`,`type`,`code`) values (389,'total','coupon');
insert into `np_extension`(`extension_id`,`type`,`code`) values (413,'module','category');
insert into `np_extension`(`extension_id`,`type`,`code`) values (408,'module','account');
insert into `np_extension`(`extension_id`,`type`,`code`) values (393,'total','reward');
insert into `np_extension`(`extension_id`,`type`,`code`) values (398,'total','voucher');
insert into `np_extension`(`extension_id`,`type`,`code`) values (407,'payment','free_checkout');
insert into `np_extension`(`extension_id`,`type`,`code`) values (427,'module','featured');
insert into `np_extension`(`extension_id`,`type`,`code`) values (419,'module','slideshow');
