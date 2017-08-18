USE npshopdb;

CREATE TABLE `api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


insert into `api`(`api_id`,`username`,`firstname`,`lastname`,`password`,`status`,`date_added`,`date_modified`) values (1,'c9Jpls5nKgIwF8fc1MReavKOSvWhYymtN9Hot3mpYlTmKt5ziXqKeHS7cC9Davdx','','','0W8BsaMFeEXzI2OkH58NZ0TDere6TFMOWGqvkVo1c4TZ8XYsj1HnN6MgZs1NFwyCtNR2Un8BTHHWqQbN2KJb3a8XMHG1t1SO9suW6TLiCsyrQhWGE1DmcRlk13O2QSoxHkFNaVQdnqXYsKKVJ40K2fHLYDOQoH3uIzTcxvNuHBydDLz8FVeFLHfKyjGC5U9DBcYECiCZdtH6QjX84JBYWFwfGd1LE38uwbWDJstbryTvVUxWlUaEZb5OQudrG00y',1,'2017-08-17 19:40:34','2017-08-17 19:40:34');
