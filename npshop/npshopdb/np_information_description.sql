USE npshopdb;

CREATE TABLE `np_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `np_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (4,1,'About Us','&lt;p&gt;
	About Us&lt;/p&gt;
','','','');
insert into `np_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (5,1,'Terms &amp; Conditions','&lt;p&gt;
	Terms &amp;amp; Conditions&lt;/p&gt;
','','','');
insert into `np_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (3,1,'Privacy Policy','&lt;p&gt;
	Privacy Policy&lt;/p&gt;
','','','');
insert into `np_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (6,1,'Delivery Information','&lt;p&gt;
	Delivery Information&lt;/p&gt;
','','','');
