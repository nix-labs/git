-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 28, 2017 at 10:09 PM
-- Server version: 5.6.32
-- PHP Version: 4.4.9
-- 
-- Database: labworks
-- Username: root
-- Password: passw0rd
-- Port 3306
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `rsvp`
-- 

CREATE TABLE `rsvp` (
  `rsvp_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `time_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rsvp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `rsvp`
-- 

INSERT INTO `rsvp` VALUES (17, 'Reziya Younus ', '9717705547', 'reziya2@gmail.com', 'Loads & Loads of Love <3 Prachi <3 ', '1', '2016-06-21 06:15:41');
INSERT INTO `rsvp` VALUES (20, 'Leena', '', '', 'Congratulations tushar... I will not be able to attend this event.  My heartly wishes to both of you. \r\n', '2', '2016-06-24 12:29:05');
INSERT INTO `rsvp` VALUES (21, 'Jo Paul', '', '', 'Wish you a wonderful happy married life.\r\n', '2', '2016-06-24 13:26:11');
INSERT INTO `rsvp` VALUES (22, 'Puja', '9899001375', 'puja@naukri.com', 'Congratulations to both of you !!!\r\nI so much want to attend this event, but i ll be travelling from 6th July on wards. I am sorry :( and i know you will forgive me :)\r\n\r\nWish you both a very Happy Ma', '2', '2016-06-27 04:45:10');
INSERT INTO `rsvp` VALUES (23, 'Wade Vann', '706 504 6193', 'wvann@augustasportswear.com', 'Congratulations to you both.  May your journey together be long and full of love and happiness.\r\n\r\nGod Bless you both.\r\n\r\nWade Vann', '2', '2016-06-30 08:04:38');
INSERT INTO `rsvp` VALUES (24, 'tarun pundir', '9212241191', 'mistarun9@gmail.com', 'congrats bro', '1', '2016-07-10 06:53:27');
INSERT INTO `rsvp` VALUES (25, 'Hemlata & Guru', '8790983232', 'dhemlata@gmail.com', 'May your married life be filled with right ingredients:\r\nFaith, trust, humour, passion, romance, understanding and timeless love!Wishing that you keep falling in love with each other again and again, ', '1', '2016-07-11 04:43:34');
