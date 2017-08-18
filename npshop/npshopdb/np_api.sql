USE npshopdb;

CREATE TABLE `np_api` (
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


insert into `np_api`(`api_id`,`username`,`firstname`,`lastname`,`password`,`status`,`date_added`,`date_modified`) values (1,'qeojZSI7c7OhRiKL1qnNoc1encjVQv9ng9zr1OSXQDHAMkhbnYOBCkclXu3fH9xl','','','O21MLhUK6h3198wFRcsNSE5F9ZGCzje5yIxFXNOVfYhEov4Gy4Ewa6Q7dcL7bhDnQwkUbRA35mCpL44fMtTtaMdL02IO42eslwP7YrpzONbolbwQd5aCTyjxFp73QkxKyKx7MfMHZMr93UgZmfZtEyhxMzp5eq8A35NV3rlxci0sDmJ5ocQxrLXJMXOVkICN1EgGdP20YR1yFQozhw9ON5G3DSqHj88xrkqN4LCRMYuRASBGTdlDkCrAxkBRZMxu',1,'2017-08-17 21:00:47','2017-08-17 21:00:47');
