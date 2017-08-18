USE npshopdb;

CREATE TABLE `np_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


insert into `np_user`(`user_id`,`user_group_id`,`username`,`password`,`salt`,`firstname`,`lastname`,`email`,`image`,`code`,`ip`,`status`,`date_added`) values (1,1,'npadmin','b61cfc3bf93498aa6d4894b73f540202b4e7b4b9','c10e50044','John','Doe','npshopweb@gmail.com','','','',1,'2017-08-17 21:00:47');
