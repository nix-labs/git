USE npshopdb;

CREATE TABLE `np_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


insert into `np_category_path`(`category_id`,`path_id`,`level`) values (25,25,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (28,25,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (28,28,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (35,25,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (35,28,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (35,35,2);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (36,25,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (36,28,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (36,36,2);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (29,25,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (29,29,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (30,25,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (30,30,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (31,25,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (31,31,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (32,25,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (32,32,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (20,20,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (27,20,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (27,27,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (26,20,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (26,26,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (24,24,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (18,18,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (45,18,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (45,45,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (46,18,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (46,46,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (17,17,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (33,33,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (34,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (37,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (37,37,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (38,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (38,38,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (39,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (39,39,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (40,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (40,40,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (41,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (41,41,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (42,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (42,42,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (43,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (43,43,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (44,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (44,44,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (47,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (47,47,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (48,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (48,48,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (49,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (49,49,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (50,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (50,50,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (51,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (51,51,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (52,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (52,52,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (58,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (58,52,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (58,58,2);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (53,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (53,53,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (54,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (54,54,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (55,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (55,55,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (56,34,0);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (56,56,1);
insert into `np_category_path`(`category_id`,`path_id`,`level`) values (57,57,0);
