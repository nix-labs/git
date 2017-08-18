USE npshopdb;

CREATE TABLE `np_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;


insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (79,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (87,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (94,8,'','catalog/demo/manufacturer/nfl.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (95,8,'','catalog/demo/manufacturer/redbull.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (96,8,'','catalog/demo/manufacturer/sony.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (91,8,'','catalog/demo/manufacturer/cocacola.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (92,8,'','catalog/demo/manufacturer/burgerking.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (93,8,'','catalog/demo/manufacturer/canon.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (88,8,'','catalog/demo/manufacturer/harley.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (89,8,'','catalog/demo/manufacturer/dell.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (90,8,'','catalog/demo/manufacturer/disney.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (80,7,'','catalog/demo/banners/MacBookAir.jpg',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (97,8,'','catalog/demo/manufacturer/starbucks.png',0);
insert into `np_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (98,8,'','catalog/demo/manufacturer/nintendo.png',0);
