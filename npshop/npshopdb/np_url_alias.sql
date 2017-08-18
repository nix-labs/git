USE npshopdb;

CREATE TABLE `np_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=844 DEFAULT CHARSET=utf8;


insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (824,'product_id=48','ipod-classic');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (836,'category_id=20','desktops');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (834,'category_id=26','pc');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (835,'category_id=27','mac');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (730,'manufacturer_id=8','apple');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (772,'information_id=4','about_us');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (768,'product_id=42','test');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (789,'category_id=34','mp3-players');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (781,'category_id=36','test2');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (774,'category_id=18','laptop-notebook');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (775,'category_id=46','macs');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (776,'category_id=45','windows');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (777,'category_id=25','component');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (778,'category_id=29','mouse');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (779,'category_id=28','monitor');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (780,'category_id=35','test1');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (782,'category_id=30','printer');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (783,'category_id=31','scanner');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (784,'category_id=32','web-camera');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (785,'category_id=57','tablet');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (786,'category_id=17','software');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (787,'category_id=24','smartphone');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (788,'category_id=33','camera');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (790,'category_id=43','test11');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (791,'category_id=44','test12');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (792,'category_id=47','test15');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (793,'category_id=48','test16');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (794,'category_id=49','test17');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (795,'category_id=50','test18');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (796,'category_id=51','test19');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (797,'category_id=52','test20');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (798,'category_id=58','test25');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (799,'category_id=53','test21');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (800,'category_id=54','test22');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (801,'category_id=55','test23');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (802,'category_id=56','test24');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (803,'category_id=38','test4');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (804,'category_id=37','test5');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (805,'category_id=39','test6');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (806,'category_id=40','test7');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (807,'category_id=41','test8');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (808,'category_id=42','test9');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (809,'product_id=30','canon-eos-5d');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (840,'product_id=47','hp-lp3065');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (811,'product_id=28','htc-touch-hd');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (812,'product_id=43','macbook');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (813,'product_id=44','macbook-air');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (814,'product_id=45','macbook-pro');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (816,'product_id=31','nikon-d300');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (817,'product_id=29','palm-treo-pro');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (818,'product_id=35','product-8');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (819,'product_id=49','samsung-galaxy-tab-10-1');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (820,'product_id=33','samsung-syncmaster-941bw');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (821,'product_id=46','sony-vaio');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (837,'product_id=41','imac');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (823,'product_id=40','iphone');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (825,'product_id=36','ipod-nano');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (826,'product_id=34','ipod-shuffle');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (827,'product_id=32','ipod-touch');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (828,'manufacturer_id=9','canon');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (829,'manufacturer_id=5','htc');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (830,'manufacturer_id=7','hewlett-packard');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (831,'manufacturer_id=6','palm');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (832,'manufacturer_id=10','sony');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (841,'information_id=6','delivery');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (842,'information_id=3','privacy');
insert into `np_url_alias`(`url_alias_id`,`query`,`keyword`) values (843,'information_id=5','terms');
