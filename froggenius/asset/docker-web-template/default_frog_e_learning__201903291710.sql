# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 27.131.173.4 (MySQL 5.7.24)
# Database: frog_e_learning
# Generation Time: 2019-03-29 10:10:24 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin2group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin2group`;

CREATE TABLE `admin2group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admins_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admin2group` WRITE;
/*!40000 ALTER TABLE `admin2group` DISABLE KEYS */;

INSERT INTO `admin2group` (`id`, `admins_id`, `groups_id`)
VALUES
	(1,1,1);

/*!40000 ALTER TABLE `admin2group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin2level_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin2level_group`;

CREATE TABLE `admin2level_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admins_id` int(11) DEFAULT NULL,
  `level_groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table admins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admins_groups_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `super_users` tinyint(1) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `encode_password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `my_session_id` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_changed_password` datetime DEFAULT NULL,
  `limit_groups` int(11) DEFAULT NULL,
  `upload_status` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=non-activated,1=activated, 2=suspended',
  `active_remark` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=first time login,1=normal,2=has group changing,3=re-active',
  `suspended_datetime` datetime DEFAULT NULL,
  `incorrect_password` int(2) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;

INSERT INTO `admins` (`id`, `admins_groups_id`, `groups_id`, `sub_groups_id`, `super_users`, `username`, `password`, `encode_password`, `remember_token`, `first_name`, `last_name`, `email`, `mobile`, `phone`, `address`, `avatar`, `my_session_id`, `last_login`, `last_changed_password`, `limit_groups`, `upload_status`, `active`, `active_remark`, `suspended_datetime`, `incorrect_password`, `status`, `create_datetime`, `create_by`, `modify_datetime`, `modify_by`)
VALUES
	(1,1,NULL,NULL,NULL,'thailivestream','VRThebest@TH@','$2y$10$XU/3iAk9Wf5lKL5oV5KWgOsfUZLp7PgEkmEdaHlCRLwqxajbhP6ea','ff2ezTNhgmgm5DbkrvSdElG3YBYW3klBU3mT1UqE3kPOKXetacwJYZWVfT84','Thailivestream','Admin','dev@dootvmedia.com','0873433362','02-412-8880, 090-986-1388','4/4 M.11 Ratchaphruek Rd.\nBangprom TalingChan\nBangkok 10170','64.png','acdHzzBffdYhVpzlHvNUzpNJAg4cD5BrMqD0mbF5','2019-03-29 16:59:14',NULL,NULL,1,1,0,NULL,0,1,NULL,NULL,'2018-10-26 15:44:28',1),
	(2,2,NULL,NULL,NULL,'admin01','Admin#01','$2y$10$iJQBZViOzbRjL1UO2RTPW./bnR34R/XzKjvFlsXttRGuxTs9tVMte',NULL,'Admin','01','dev@dootvmedia.com','0873433362',NULL,NULL,NULL,NULL,NULL,'2019-03-29 17:03:07',NULL,1,1,0,NULL,0,1,'2019-03-29 17:03:07',1,'2019-03-29 17:03:07',1);

/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admins_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins_groups`;

CREATE TABLE `admins_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `external` tinyint(1) DEFAULT NULL,
  `max_account_age` int(4) unsigned NOT NULL DEFAULT '90',
  `max_password_age` int(4) unsigned NOT NULL DEFAULT '90',
  `max_password_history` int(3) unsigned NOT NULL DEFAULT '5',
  `incorrect_password_limit` int(3) unsigned NOT NULL DEFAULT '5',
  `order` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admins_groups` WRITE;
/*!40000 ALTER TABLE `admins_groups` DISABLE KEYS */;

INSERT INTO `admins_groups` (`id`, `title`, `external`, `max_account_age`, `max_password_age`, `max_password_history`, `incorrect_password_limit`, `order`, `status`, `create_datetime`, `modify_datetime`, `modify_by`)
VALUES
	(1,'Super Administrator',NULL,0,0,5,5,1,1,'2016-07-12 14:58:05','2019-03-08 17:03:08',1),
	(2,'Admin',NULL,90,90,5,5,2,1,'2017-08-01 10:36:33','2018-01-17 11:39:58',1);

/*!40000 ALTER TABLE `admins_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admins_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins_logs`;

CREATE TABLE `admins_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admins_groups_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `admins_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` text,
  `return` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `isoCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `continent` varchar(50) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `platform_version` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `browser_version` varchar(50) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table admins_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins_menu`;

CREATE TABLE `admins_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `in_process` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admins_menu` WRITE;
/*!40000 ALTER TABLE `admins_menu` DISABLE KEYS */;

INSERT INTO `admins_menu` (`id`, `parent_id`, `title`, `link`, `icon`, `in_process`, `order`, `status`, `create_datetime`, `modify_datetime`, `modify_by`)
VALUES
	(1,0,'Dashboard','','icon-home',0,1,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(2,0,'Configuration','configuration','icon-wrench',0,2,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(3,2,'Infomation','configuration',NULL,0,3,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(4,2,'Groups','groups',NULL,0,4,0,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(5,2,'Categories','categories',NULL,0,5,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(6,2,'About','about',NULL,0,6,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(7,2,'FAQs','faqs',NULL,0,7,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(8,0,'Administrator','admins','icon-users',0,8,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(9,8,'Administrator Groups','admins_groups',NULL,0,9,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(10,8,'Administrator List','admins',NULL,0,10,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(11,8,'Super Users','super_users',NULL,0,11,0,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(12,0,'Courses Management','courses','icon-camcorder',0,12,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(13,12,'Documents','documents',NULL,0,13,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(14,12,'Courses','courses',NULL,0,14,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(15,12,'Topics','topics',NULL,0,15,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(16,12,'Quiz','quiz',NULL,0,16,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(17,12,'Instructors','instructors',NULL,0,17,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(18,0,'Courses Option','slides','icon-note',0,18,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(19,18,'Sync Slides','slides',NULL,0,19,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(20,18,'Class Rooms','classrooms',NULL,0,20,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(21,18,'Discussions','discussions',NULL,0,21,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(22,18,'Certificates','certificates','',0,22,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(23,18,'Questionnaire Packs','questionnaire_packs',NULL,0,23,0,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(24,0,'Report','stats','icon-graph',0,24,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(25,24,'Stats (VOD)','stats',NULL,0,25,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(26,24,'Stats (LIVE)','stats_live',NULL,0,26,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(27,24,'User Report','usage_statistic',NULL,0,27,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(28,0,'Payment','payments','icon-credit-card',0,28,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(29,28,'Orders','orders',NULL,0,29,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(30,28,'Payments','payments',NULL,0,30,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(33,0,'Group Management','sub_groups','icon-briefcase',0,11,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(34,33,'Sub Groups','sub_groups',NULL,0,12,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(35,33,'Units','level_groups',NULL,0,13,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(36,0,'Member','members','icon-users',0,34,1,'2016-11-22 14:00:00','2016-11-22 14:00:00',1),
	(37,2,'Highlights','highlights','icon-fire',0,35,0,'2016-11-22 14:00:00','2016-11-22 14:00:00',1);

/*!40000 ALTER TABLE `admins_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admins_menu2admins_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins_menu2admins_groups`;

CREATE TABLE `admins_menu2admins_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admins_groups_id` int(11) DEFAULT NULL,
  `admins_menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admins_menu2admins_groups` WRITE;
/*!40000 ALTER TABLE `admins_menu2admins_groups` DISABLE KEYS */;

INSERT INTO `admins_menu2admins_groups` (`id`, `admins_groups_id`, `admins_menu_id`)
VALUES
	(1,1,1),
	(2,1,3),
	(3,1,4),
	(4,1,5),
	(5,1,6),
	(6,1,7),
	(7,1,9),
	(8,1,10),
	(9,1,11),
	(10,1,13),
	(11,1,14),
	(12,1,15),
	(13,1,16),
	(14,1,17),
	(15,1,19),
	(16,1,20),
	(17,1,21),
	(18,1,22),
	(19,1,25),
	(20,1,26),
	(21,1,27),
	(22,1,29),
	(23,1,30),
	(24,1,34),
	(25,1,35),
	(26,1,36);

/*!40000 ALTER TABLE `admins_menu2admins_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table answer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `questions_id` int(11) DEFAULT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `correct` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table avatars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `avatars`;

CREATE TABLE `avatars` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `avatar_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `avatars` WRITE;
/*!40000 ALTER TABLE `avatars` DISABLE KEYS */;

INSERT INTO `avatars` (`id`, `avatar_img`, `status`, `order`, `create_datetime`, `modify_datetime`, `modify_by`)
VALUES
	(1,'avatar-man-1.jpg',1,1,'2017-05-31 09:36:46','2017-05-31 09:36:50',1),
	(2,'avatar-man-2.jpg',1,2,'2017-05-31 09:38:52','2017-05-31 09:38:56',1),
	(3,'avatar-man-3.jpg',1,3,'2017-05-31 09:39:07','2017-05-31 09:39:09',1),
	(4,'avatar-man-4.jpg',1,4,'2017-05-31 09:39:23','2017-05-31 09:39:24',1),
	(5,'avatar-man-5.jpg',1,5,'2017-05-31 09:39:37','2017-05-31 09:39:38',1),
	(6,'avatar-man-6.jpg',1,6,'2017-05-31 09:39:54','2017-05-31 09:39:55',1),
	(7,'avatar-girl-1.jpg',1,7,'2017-05-31 09:40:09','2017-05-31 09:40:10',1),
	(8,'avatar-girl-2.jpg',1,8,'2017-05-31 09:40:19','2017-05-31 09:40:20',1),
	(9,'avatar-girl-3.jpg',1,9,'2017-05-31 09:40:29','2017-05-31 09:40:30',1),
	(10,'avatar-girl-4.jpg',1,10,'2017-05-31 09:40:40','2017-05-31 09:40:42',1),
	(11,'avatar-girl-5.jpg',1,11,'2017-05-31 09:40:51','2017-05-31 09:40:52',1),
	(12,'avatar-girl-6.jpg',1,12,'2017-05-31 09:41:00','2017-05-31 09:41:01',1);

/*!40000 ALTER TABLE `avatars` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bandwidths
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bandwidths`;

CREATE TABLE `bandwidths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `bandwidth_rx` int(11) DEFAULT NULL,
  `bandwidth_tx` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bandwidths` WRITE;
/*!40000 ALTER TABLE `bandwidths` DISABLE KEYS */;

INSERT INTO `bandwidths` (`id`, `server_name`, `bandwidth_rx`, `bandwidth_tx`, `datetime`)
VALUES
	(1,'setlive-stream-cdn.open-cdn.com',0,0,'2019-03-12 13:38:39');

/*!40000 ALTER TABLE `bandwidths` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admins_id` int(11) unsigned DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `css_class` varchar(50) DEFAULT NULL,
  `hex_color` varchar(50) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `admins_id`, `groups_id`, `title`, `description`, `css_class`, `hex_color`, `icon`, `order`, `status`, `create_datetime`, `create_by`, `modify_datetime`, `modify_by`)
VALUES
	(1,NULL,1,'ความรู้ทั่วไป','','t1','#ffe76d','icon-course-black.png',1,1,'2017-02-01 14:45:33',1,'2017-06-05 15:50:42',1);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table certificates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `certificates`;

CREATE TABLE `certificates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_preview` varchar(255) DEFAULT NULL,
  `body_text_1` text,
  `body_text_1_en` text,
  `body_text_2` text,
  `body_text_2_en` text,
  `footer_text` text,
  `footer_text_en` text,
  `number_of_logo` int(1) NOT NULL DEFAULT '1',
  `logo_align` enum('L','C','R','LR') DEFAULT NULL,
  `logo_1` varchar(255) DEFAULT NULL,
  `logo_1_en` varchar(255) DEFAULT NULL,
  `logo_2` varchar(255) DEFAULT NULL,
  `logo_2_en` varchar(255) DEFAULT NULL,
  `logo_3` varchar(255) DEFAULT NULL,
  `logo_3_en` varchar(255) DEFAULT NULL,
  `number_of_signature` int(1) NOT NULL DEFAULT '1',
  `signature_align` enum('L','C','R','LR') DEFAULT NULL,
  `signature_1` varchar(255) DEFAULT NULL,
  `signature_1_en` varchar(255) DEFAULT NULL,
  `name_of_signature_1` varchar(255) DEFAULT NULL,
  `name_of_signature_1_en` varchar(255) DEFAULT NULL,
  `position_of_signature_1` varchar(255) DEFAULT NULL,
  `position_of_signature_1_en` varchar(255) DEFAULT NULL,
  `remark_of_signature_1` varchar(255) DEFAULT NULL,
  `remark_of_signature_1_en` varchar(255) DEFAULT NULL,
  `signature_2` varchar(255) DEFAULT NULL,
  `signature_2_en` varchar(255) DEFAULT NULL,
  `name_of_signature_2` varchar(255) DEFAULT NULL,
  `name_of_signature_2_en` varchar(255) DEFAULT NULL,
  `position_of_signature_2` varchar(255) DEFAULT NULL,
  `position_of_signature_2_en` varchar(255) DEFAULT NULL,
  `remark_of_signature_2` varchar(255) DEFAULT NULL,
  `remark_of_signature_2_en` varchar(255) DEFAULT NULL,
  `signature_3` varchar(255) DEFAULT NULL,
  `signature_3_en` varchar(255) DEFAULT NULL,
  `name_of_signature_3` varchar(255) DEFAULT NULL,
  `name_of_signature_3_en` varchar(255) DEFAULT NULL,
  `position_of_signature_3` varchar(255) DEFAULT NULL,
  `position_of_signature_3_en` varchar(255) DEFAULT NULL,
  `remark_of_signature_3` varchar(255) DEFAULT NULL,
  `remark_of_signature_3_en` varchar(255) DEFAULT NULL,
  `background_color` varchar(50) NOT NULL DEFAULT '#FFFFFF',
  `text_color` varchar(50) NOT NULL DEFAULT '#000000',
  `is_border` tinyint(1) NOT NULL DEFAULT '1',
  `border_color` varchar(50) NOT NULL DEFAULT '#FFA400',
  `border_style` enum('normal','radius') NOT NULL DEFAULT 'radius',
  `is_control_logo` tinyint(1) NOT NULL DEFAULT '0',
  `is_upload_logo` tinyint(1) NOT NULL DEFAULT '0',
  `is_control_signature` tinyint(1) NOT NULL DEFAULT '0',
  `is_upload_signature` tinyint(1) NOT NULL DEFAULT '0',
  `is_control_footer` tinyint(1) NOT NULL DEFAULT '0',
  `is_edit_footer` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_datetime` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;

INSERT INTO `certificates` (`id`, `groups_id`, `courses_id`, `title`, `file_preview`, `body_text_1`, `body_text_1_en`, `body_text_2`, `body_text_2_en`, `footer_text`, `footer_text_en`, `number_of_logo`, `logo_align`, `logo_1`, `logo_1_en`, `logo_2`, `logo_2_en`, `logo_3`, `logo_3_en`, `number_of_signature`, `signature_align`, `signature_1`, `signature_1_en`, `name_of_signature_1`, `name_of_signature_1_en`, `position_of_signature_1`, `position_of_signature_1_en`, `remark_of_signature_1`, `remark_of_signature_1_en`, `signature_2`, `signature_2_en`, `name_of_signature_2`, `name_of_signature_2_en`, `position_of_signature_2`, `position_of_signature_2_en`, `remark_of_signature_2`, `remark_of_signature_2_en`, `signature_3`, `signature_3_en`, `name_of_signature_3`, `name_of_signature_3_en`, `position_of_signature_3`, `position_of_signature_3_en`, `remark_of_signature_3`, `remark_of_signature_3_en`, `background_color`, `text_color`, `is_border`, `border_color`, `border_style`, `is_control_logo`, `is_upload_logo`, `is_control_signature`, `is_upload_signature`, `is_control_footer`, `is_edit_footer`, `order`, `status`, `create_datetime`, `created_by`, `modify_datetime`, `modify_by`)
VALUES
	(1,1,NULL,'Cert-Default','Certificate-Preview-1553585358-59.pdf','วุฒิบัตรฉบับนี้ให้ไว้เพื่อแสดงว่า','This certificate is provided to show that.','ได้ผ่านการเรียน e-Learning ครบถ้วนตามหลักสูตร','Through e-Learning course.','สอบถามข้อมูลเพิ่มเติมกรุณาติดต่อ Contact Center โทรศัพท์ 02-412-8880 หรือ e-mail: info@frogdigital.co เว็บไซต์ https://froggenius.com','For more information, please contact Tel: 02-412-8880, E-Mail: info@frogdigital.co, Website: https://froggenius.com',1,'L','120319151153-Frog_logo_website.png','120319151153-Frog_logo_website.png',NULL,NULL,NULL,NULL,1,'C','120319155205-signature-demo.png','120319155205-signature-demo.png','สุรเทศ ศรีชุมเทศ','Suratest Srichumtest','อาจารย์ผู้สอน','Instructor','###############','###############',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#ffffff','#000000',1,'#20acfb','radius',1,1,1,1,1,1,1,1,'2017-11-17 09:54:34',1,'2019-03-26 14:29:18',1);

/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table classroom2course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classroom2course`;

CREATE TABLE `classroom2course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classrooms_id` int(11) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table classroom2level_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classroom2level_group`;

CREATE TABLE `classroom2level_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classrooms_id` int(11) DEFAULT NULL,
  `level_groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table classroom2member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classroom2member`;

CREATE TABLE `classroom2member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classrooms_id` int(11) DEFAULT NULL,
  `members_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table classroom2members_pre_approved
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classroom2members_pre_approved`;

CREATE TABLE `classroom2members_pre_approved` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classrooms_id` int(11) DEFAULT NULL,
  `members_pre_approved_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table classroom2sub_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classroom2sub_group`;

CREATE TABLE `classroom2sub_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classrooms_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table classrooms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classrooms`;

CREATE TABLE `classrooms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL COMMENT 'ไม่ได้ใช้แล้ว',
  `admins_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table configuration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `configuration`;

CREATE TABLE `configuration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `meta_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description_status` tinyint(1) NOT NULL DEFAULT '0',
  `about` text,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `contact_center` varchar(255) DEFAULT NULL,
  `contact_mail` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `certificate_number_prefix` varchar(255) DEFAULT NULL,
  `address` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `footer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `modify_datetime` datetime DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicons` varchar(255) DEFAULT NULL,
  `is_show_credit` tinyint(1) NOT NULL DEFAULT '1',
  `ga` text,
  `og_image` varchar(255) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;

INSERT INTO `configuration` (`id`, `title`, `meta_description`, `meta_keywords`, `description`, `description_status`, `about`, `company_name`, `tax_id`, `contact_center`, `contact_mail`, `contact_phone`, `certificate_number_prefix`, `address`, `facebook`, `twitter`, `google`, `youtube`, `footer`, `modify_datetime`, `logo`, `favicons`, `is_show_credit`, `ga`, `og_image`, `modify_by`)
VALUES
	(1,'FROGGenius','หล่งความรู้การเงินการลงทุนแบบดิจิทัล ผสมผสานเทคโนโลยีมัลติมีเดีย พร้อมบทเรียนที่เหมาะสำหรับนิสิต นักศึกษา และนักลงทุนที่ต้องการพัฒนาตนเองไปสู่นักลงทุนมืออาชีพแบบ Step by Step','elearning, ห้องเรียนนักลงทุน, เรียนรู้การลงทุน, เรียนรู้การเงิน','',0,'<h1 style=\"text-align: center;\">FROGGenius e-Learning</h1>\n\n<p>บริการเว็บไซต์ระบบ e-Learning ระดับประเทศ ด้วยฟังก์ชั่นที่ครบ จบ ในที่เดียว สามารถปรับแต่งให้เหมาะสมกับองค์กรหรือหน่วยงานต่างๆ ได้อย่างลงตัว ด้วยฟังก์ชั่นมากกว่า 80 ฟังก์ชั่น เพื่อตอบโจทย์ทุกความต้องการอย่างมีประสิทธิภาพ</p>\n','Frog Digital Group Co., Ltd.','612548896521','Contact Center','info@dootvmedia.com','02-412-8880','FGN','4/4 หมู่ที่ 11 ถนนราชพฤกษ์ แขวงบางพรม เขตตลิ่งชัน กรุงเทพมหานคร 10170','http://froggenius.open-cdn.com','http://froggenius.open-cdn.com','','http://froggenius.open-cdn.com','<p>สอบถามข้อมูลเพิ่มเติม กรุณาติดต่อ Contact Center โทร. <span class=\"text-white\">02-412-8880</span> อีเมล์: info@dootvmedia.com</p>\n','2019-03-29 16:05:00','logo.png','220319110604-favicon.png',1,'','290319160458-default-share.jpg',1);

/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table country
# ------------------------------------------------------------

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`)
VALUES
	(1,'AF','AFGHANISTAN','Afghanistan','AFG',4,93),
	(2,'AL','ALBANIA','Albania','ALB',8,355),
	(3,'DZ','ALGERIA','Algeria','DZA',12,213),
	(4,'AS','AMERICAN SAMOA','American Samoa','ASM',16,1684),
	(5,'AD','ANDORRA','Andorra','AND',20,376),
	(6,'AO','ANGOLA','Angola','AGO',24,244),
	(7,'AI','ANGUILLA','Anguilla','AIA',660,1264),
	(8,'AQ','ANTARCTICA','Antarctica',NULL,NULL,0),
	(9,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28,1268),
	(10,'AR','ARGENTINA','Argentina','ARG',32,54),
	(11,'AM','ARMENIA','Armenia','ARM',51,374),
	(12,'AW','ARUBA','Aruba','ABW',533,297),
	(13,'AU','AUSTRALIA','Australia','AUS',36,61),
	(14,'AT','AUSTRIA','Austria','AUT',40,43),
	(15,'AZ','AZERBAIJAN','Azerbaijan','AZE',31,994),
	(16,'BS','BAHAMAS','Bahamas','BHS',44,1242),
	(17,'BH','BAHRAIN','Bahrain','BHR',48,973),
	(18,'BD','BANGLADESH','Bangladesh','BGD',50,880),
	(19,'BB','BARBADOS','Barbados','BRB',52,1246),
	(20,'BY','BELARUS','Belarus','BLR',112,375),
	(21,'BE','BELGIUM','Belgium','BEL',56,32),
	(22,'BZ','BELIZE','Belize','BLZ',84,501),
	(23,'BJ','BENIN','Benin','BEN',204,229),
	(24,'BM','BERMUDA','Bermuda','BMU',60,1441),
	(25,'BT','BHUTAN','Bhutan','BTN',64,975),
	(26,'BO','BOLIVIA','Bolivia','BOL',68,591),
	(27,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70,387),
	(28,'BW','BOTSWANA','Botswana','BWA',72,267),
	(29,'BV','BOUVET ISLAND','Bouvet Island',NULL,NULL,0),
	(30,'BR','BRAZIL','Brazil','BRA',76,55),
	(31,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL,246),
	(32,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96,673),
	(33,'BG','BULGARIA','Bulgaria','BGR',100,359),
	(34,'BF','BURKINA FASO','Burkina Faso','BFA',854,226),
	(35,'BI','BURUNDI','Burundi','BDI',108,257),
	(36,'KH','CAMBODIA','Cambodia','KHM',116,855),
	(37,'CM','CAMEROON','Cameroon','CMR',120,237),
	(38,'CA','CANADA','Canada','CAN',124,1),
	(39,'CV','CAPE VERDE','Cape Verde','CPV',132,238),
	(40,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136,1345),
	(41,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140,236),
	(42,'TD','CHAD','Chad','TCD',148,235),
	(43,'CL','CHILE','Chile','CHL',152,56),
	(44,'CN','CHINA','China','CHN',156,86),
	(45,'CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL,61),
	(46,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL,672),
	(47,'CO','COLOMBIA','Colombia','COL',170,57),
	(48,'KM','COMOROS','Comoros','COM',174,269),
	(49,'CG','CONGO','Congo','COG',178,242),
	(50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180,243),
	(51,'CK','COOK ISLANDS','Cook Islands','COK',184,682),
	(52,'CR','COSTA RICA','Costa Rica','CRI',188,506),
	(53,'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384,225),
	(54,'HR','CROATIA','Croatia','HRV',191,385),
	(55,'CU','CUBA','Cuba','CUB',192,53),
	(56,'CY','CYPRUS','Cyprus','CYP',196,357),
	(57,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203,420),
	(58,'DK','DENMARK','Denmark','DNK',208,45),
	(59,'DJ','DJIBOUTI','Djibouti','DJI',262,253),
	(60,'DM','DOMINICA','Dominica','DMA',212,1767),
	(61,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214,1809),
	(62,'EC','ECUADOR','Ecuador','ECU',218,593),
	(63,'EG','EGYPT','Egypt','EGY',818,20),
	(64,'SV','EL SALVADOR','El Salvador','SLV',222,503),
	(65,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226,240),
	(66,'ER','ERITREA','Eritrea','ERI',232,291),
	(67,'EE','ESTONIA','Estonia','EST',233,372),
	(68,'ET','ETHIOPIA','Ethiopia','ETH',231,251),
	(69,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238,500),
	(70,'FO','FAROE ISLANDS','Faroe Islands','FRO',234,298),
	(71,'FJ','FIJI','Fiji','FJI',242,679),
	(72,'FI','FINLAND','Finland','FIN',246,358),
	(73,'FR','FRANCE','France','FRA',250,33),
	(74,'GF','FRENCH GUIANA','French Guiana','GUF',254,594),
	(75,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258,689),
	(76,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL,0),
	(77,'GA','GABON','Gabon','GAB',266,241),
	(78,'GM','GAMBIA','Gambia','GMB',270,220),
	(79,'GE','GEORGIA','Georgia','GEO',268,995),
	(80,'DE','GERMANY','Germany','DEU',276,49),
	(81,'GH','GHANA','Ghana','GHA',288,233),
	(82,'GI','GIBRALTAR','Gibraltar','GIB',292,350),
	(83,'GR','GREECE','Greece','GRC',300,30),
	(84,'GL','GREENLAND','Greenland','GRL',304,299),
	(85,'GD','GRENADA','Grenada','GRD',308,1473),
	(86,'GP','GUADELOUPE','Guadeloupe','GLP',312,590),
	(87,'GU','GUAM','Guam','GUM',316,1671),
	(88,'GT','GUATEMALA','Guatemala','GTM',320,502),
	(89,'GN','GUINEA','Guinea','GIN',324,224),
	(90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624,245),
	(91,'GY','GUYANA','Guyana','GUY',328,592),
	(92,'HT','HAITI','Haiti','HTI',332,509),
	(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL,0),
	(94,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336,39),
	(95,'HN','HONDURAS','Honduras','HND',340,504),
	(96,'HK','HONG KONG','Hong Kong','HKG',344,852),
	(97,'HU','HUNGARY','Hungary','HUN',348,36),
	(98,'IS','ICELAND','Iceland','ISL',352,354),
	(99,'IN','INDIA','India','IND',356,91),
	(100,'ID','INDONESIA','Indonesia','IDN',360,62),
	(101,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364,98),
	(102,'IQ','IRAQ','Iraq','IRQ',368,964),
	(103,'IE','IRELAND','Ireland','IRL',372,353),
	(104,'IL','ISRAEL','Israel','ISR',376,972),
	(105,'IT','ITALY','Italy','ITA',380,39),
	(106,'JM','JAMAICA','Jamaica','JAM',388,1876),
	(107,'JP','JAPAN','Japan','JPN',392,81),
	(108,'JO','JORDAN','Jordan','JOR',400,962),
	(109,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398,7),
	(110,'KE','KENYA','Kenya','KEN',404,254),
	(111,'KI','KIRIBATI','Kiribati','KIR',296,686),
	(112,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408,850),
	(113,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410,82),
	(114,'KW','KUWAIT','Kuwait','KWT',414,965),
	(115,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417,996),
	(116,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418,856),
	(117,'LV','LATVIA','Latvia','LVA',428,371),
	(118,'LB','LEBANON','Lebanon','LBN',422,961),
	(119,'LS','LESOTHO','Lesotho','LSO',426,266),
	(120,'LR','LIBERIA','Liberia','LBR',430,231),
	(121,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434,218),
	(122,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438,423),
	(123,'LT','LITHUANIA','Lithuania','LTU',440,370),
	(124,'LU','LUXEMBOURG','Luxembourg','LUX',442,352),
	(125,'MO','MACAO','Macao','MAC',446,853),
	(126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807,389),
	(127,'MG','MADAGASCAR','Madagascar','MDG',450,261),
	(128,'MW','MALAWI','Malawi','MWI',454,265),
	(129,'MY','MALAYSIA','Malaysia','MYS',458,60),
	(130,'MV','MALDIVES','Maldives','MDV',462,960),
	(131,'ML','MALI','Mali','MLI',466,223),
	(132,'MT','MALTA','Malta','MLT',470,356),
	(133,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584,692),
	(134,'MQ','MARTINIQUE','Martinique','MTQ',474,596),
	(135,'MR','MAURITANIA','Mauritania','MRT',478,222),
	(136,'MU','MAURITIUS','Mauritius','MUS',480,230),
	(137,'YT','MAYOTTE','Mayotte',NULL,NULL,269),
	(138,'MX','MEXICO','Mexico','MEX',484,52),
	(139,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583,691),
	(140,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498,373),
	(141,'MC','MONACO','Monaco','MCO',492,377),
	(142,'MN','MONGOLIA','Mongolia','MNG',496,976),
	(143,'MS','MONTSERRAT','Montserrat','MSR',500,1664),
	(144,'MA','MOROCCO','Morocco','MAR',504,212),
	(145,'MZ','MOZAMBIQUE','Mozambique','MOZ',508,258),
	(146,'MM','MYANMAR','Myanmar','MMR',104,95),
	(147,'NA','NAMIBIA','Namibia','NAM',516,264),
	(148,'NR','NAURU','Nauru','NRU',520,674),
	(149,'NP','NEPAL','Nepal','NPL',524,977),
	(150,'NL','NETHERLANDS','Netherlands','NLD',528,31),
	(151,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530,599),
	(152,'NC','NEW CALEDONIA','New Caledonia','NCL',540,687),
	(153,'NZ','NEW ZEALAND','New Zealand','NZL',554,64),
	(154,'NI','NICARAGUA','Nicaragua','NIC',558,505),
	(155,'NE','NIGER','Niger','NER',562,227),
	(156,'NG','NIGERIA','Nigeria','NGA',566,234),
	(157,'NU','NIUE','Niue','NIU',570,683),
	(158,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574,672),
	(159,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580,1670),
	(160,'NO','NORWAY','Norway','NOR',578,47),
	(161,'OM','OMAN','Oman','OMN',512,968),
	(162,'PK','PAKISTAN','Pakistan','PAK',586,92),
	(163,'PW','PALAU','Palau','PLW',585,680),
	(164,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL,970),
	(165,'PA','PANAMA','Panama','PAN',591,507),
	(166,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598,675),
	(167,'PY','PARAGUAY','Paraguay','PRY',600,595),
	(168,'PE','PERU','Peru','PER',604,51),
	(169,'PH','PHILIPPINES','Philippines','PHL',608,63),
	(170,'PN','PITCAIRN','Pitcairn','PCN',612,0),
	(171,'PL','POLAND','Poland','POL',616,48),
	(172,'PT','PORTUGAL','Portugal','PRT',620,351),
	(173,'PR','PUERTO RICO','Puerto Rico','PRI',630,1787),
	(174,'QA','QATAR','Qatar','QAT',634,974),
	(175,'RE','REUNION','Reunion','REU',638,262),
	(176,'RO','ROMANIA','Romania','ROM',642,40),
	(177,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643,7),
	(178,'RW','RWANDA','Rwanda','RWA',646,250),
	(179,'SH','SAINT HELENA','Saint Helena','SHN',654,290),
	(180,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659,1869),
	(181,'LC','SAINT LUCIA','Saint Lucia','LCA',662,1758),
	(182,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666,508),
	(183,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670,1784),
	(184,'WS','SAMOA','Samoa','WSM',882,684),
	(185,'SM','SAN MARINO','San Marino','SMR',674,378),
	(186,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678,239),
	(187,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682,966),
	(188,'SN','SENEGAL','Senegal','SEN',686,221),
	(189,'SC','SEYCHELLES','Seychelles','SYC',690,248),
	(190,'SL','SIERRA LEONE','Sierra Leone','SLE',694,232),
	(191,'SG','SINGAPORE','Singapore','SGP',702,65),
	(192,'SK','SLOVAKIA','Slovakia','SVK',703,421),
	(193,'SI','SLOVENIA','Slovenia','SVN',705,386),
	(194,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90,677),
	(195,'SO','SOMALIA','Somalia','SOM',706,252),
	(196,'ZA','SOUTH AFRICA','South Africa','ZAF',710,27),
	(197,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL,0),
	(198,'ES','SPAIN','Spain','ESP',724,34),
	(199,'LK','SRI LANKA','Sri Lanka','LKA',144,94),
	(200,'SD','SUDAN','Sudan','SDN',736,249),
	(201,'SR','SURINAME','Suriname','SUR',740,597),
	(202,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744,47),
	(203,'SZ','SWAZILAND','Swaziland','SWZ',748,268),
	(204,'SE','SWEDEN','Sweden','SWE',752,46),
	(205,'CH','SWITZERLAND','Switzerland','CHE',756,41),
	(206,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760,963),
	(207,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158,886),
	(208,'TJ','TAJIKISTAN','Tajikistan','TJK',762,992),
	(209,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834,255),
	(210,'TH','THAILAND','Thailand','THA',764,66),
	(211,'TL','TIMOR-LESTE','Timor-Leste',NULL,NULL,670),
	(212,'TG','TOGO','Togo','TGO',768,228),
	(213,'TK','TOKELAU','Tokelau','TKL',772,690),
	(214,'TO','TONGA','Tonga','TON',776,676),
	(215,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780,1868),
	(216,'TN','TUNISIA','Tunisia','TUN',788,216),
	(217,'TR','TURKEY','Turkey','TUR',792,90),
	(218,'TM','TURKMENISTAN','Turkmenistan','TKM',795,7370),
	(219,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796,1649),
	(220,'TV','TUVALU','Tuvalu','TUV',798,688),
	(221,'UG','UGANDA','Uganda','UGA',800,256),
	(222,'UA','UKRAINE','Ukraine','UKR',804,380),
	(223,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784,971),
	(224,'GB','UNITED KINGDOM','United Kingdom','GBR',826,44),
	(225,'US','UNITED STATES','United States','USA',840,1),
	(226,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL,1),
	(227,'UY','URUGUAY','Uruguay','URY',858,598),
	(228,'UZ','UZBEKISTAN','Uzbekistan','UZB',860,998),
	(229,'VU','VANUATU','Vanuatu','VUT',548,678),
	(230,'VE','VENEZUELA','Venezuela','VEN',862,58),
	(231,'VN','VIET NAM','Viet Nam','VNM',704,84),
	(232,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92,1284),
	(233,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850,1340),
	(234,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876,681),
	(235,'EH','WESTERN SAHARA','Western Sahara','ESH',732,212),
	(236,'YE','YEMEN','Yemen','YEM',887,967),
	(237,'ZM','ZAMBIA','Zambia','ZMB',894,260),
	(238,'ZW','ZIMBABWE','Zimbabwe','ZWE',716,263),
	(239,'RS','SERBIA','Serbia','SRB',688,381),
	(240,'AP','ASIA PACIFIC REGION','Asia / Pacific Region','0',0,0),
	(241,'ME','MONTENEGRO','Montenegro','MNE',499,382),
	(242,'AX','ALAND ISLANDS','Aland Islands','ALA',248,358),
	(243,'BQ','BONAIRE, SINT EUSTATIUS AND SABA','Bonaire, Sint Eustatius and Saba','BES',535,599),
	(244,'CW','CURACAO','Curacao','CUW',531,599),
	(245,'GG','GUERNSEY','Guernsey','GGY',831,44),
	(246,'IM','ISLE OF MAN','Isle of Man','IMN',833,44),
	(247,'JE','JERSEY','Jersey','JEY',832,44),
	(248,'XK','KOSOVO','Kosovo','---',0,381),
	(249,'BL','SAINT BARTHELEMY','Saint Barthelemy','BLM',652,590),
	(250,'MF','SAINT MARTIN','Saint Martin','MAF',663,590),
	(251,'SX','SINT MAARTEN','Sint Maarten','SXM',534,1),
	(252,'SS','SOUTH SUDAN','South Sudan','SSD',728,211);

/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table course2category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course2category`;

CREATE TABLE `course2category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table course2group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course2group`;

CREATE TABLE `course2group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_id` (`courses_id`),
  KEY `groups_id` (`groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table course2instructor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course2instructor`;

CREATE TABLE `course2instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `instructors_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table course2level_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course2level_group`;

CREATE TABLE `course2level_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `level_groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table course2member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course2member`;

CREATE TABLE `course2member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `members_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table course2members_pre_approved
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course2members_pre_approved`;

CREATE TABLE `course2members_pre_approved` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `members_pre_approved_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table course2related
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course2related`;

CREATE TABLE `course2related` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table course2sub_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course2sub_group`;

CREATE TABLE `course2sub_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admins_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` text,
  `duration` varchar(50) DEFAULT NULL,
  `information` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `objective` text,
  `suitable` text,
  `level` text,
  `introductory` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `getting_certificate` text,
  `getting_certificate_url` varchar(255) DEFAULT NULL,
  `sync_slides` tinyint(1) DEFAULT '0',
  `more_details` text,
  `structure` text,
  `thumbnail` varchar(255) DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `latest` tinyint(1) NOT NULL DEFAULT '0',
  `latest_end_datetime` datetime DEFAULT NULL,
  `random_quiz` tinyint(1) DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `price` int(11) DEFAULT NULL,
  `free` tinyint(1) DEFAULT NULL,
  `state` enum('live','upcoming','vod') DEFAULT 'vod',
  `review_streaming_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `streaming_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `not_skip` tinyint(1) NOT NULL DEFAULT '0',
  `not_seek` tinyint(1) NOT NULL DEFAULT '0',
  `level_public` tinyint(1) NOT NULL DEFAULT '0',
  `download_certificate` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `certificates_id` int(11) DEFAULT NULL,
  `certificates_used_type` enum('default','custom') DEFAULT NULL,
  `certificates_show_logo` tinyint(1) NOT NULL DEFAULT '0',
  `certificates_logo_1` varchar(255) DEFAULT NULL,
  `certificates_logo_1_en` varchar(255) DEFAULT NULL,
  `certificates_logo_2` varchar(255) DEFAULT NULL,
  `certificates_logo_2_en` varchar(255) DEFAULT NULL,
  `certificates_logo_3` varchar(255) DEFAULT NULL,
  `certificates_logo_3_en` varchar(255) DEFAULT NULL,
  `certificates_show_signature` tinyint(1) NOT NULL DEFAULT '0',
  `certificates_signature_1` varchar(255) DEFAULT NULL,
  `certificates_signature_1_en` varchar(255) DEFAULT NULL,
  `certificates_name_of_signature_1` varchar(255) DEFAULT NULL,
  `certificates_name_of_signature_1_en` varchar(255) DEFAULT NULL,
  `certificates_position_of_signature_1` varchar(255) DEFAULT NULL,
  `certificates_position_of_signature_1_en` varchar(255) DEFAULT NULL,
  `certificates_remark_of_signature_1` varchar(255) DEFAULT NULL,
  `certificates_remark_of_signature_1_en` varchar(255) DEFAULT NULL,
  `certificates_signature_2` varchar(255) DEFAULT NULL,
  `certificates_signature_2_en` varchar(255) DEFAULT NULL,
  `certificates_name_of_signature_2` varchar(255) DEFAULT NULL,
  `certificates_name_of_signature_2_en` varchar(255) DEFAULT NULL,
  `certificates_position_of_signature_2` varchar(255) DEFAULT NULL,
  `certificates_position_of_signature_2_en` varchar(255) DEFAULT NULL,
  `certificates_remark_of_signature_2` varchar(255) DEFAULT NULL,
  `certificates_remark_of_signature_2_en` varchar(255) DEFAULT NULL,
  `certificates_signature_3` varchar(255) DEFAULT NULL,
  `certificates_signature_3_en` varchar(255) DEFAULT NULL,
  `certificates_name_of_signature_3` varchar(255) DEFAULT NULL,
  `certificates_name_of_signature_3_en` varchar(255) DEFAULT NULL,
  `certificates_position_of_signature_3` varchar(255) DEFAULT NULL,
  `certificates_position_of_signature_3_en` varchar(255) DEFAULT NULL,
  `certificates_remark_of_signature_3` varchar(255) DEFAULT NULL,
  `certificates_remark_of_signature_3_en` varchar(255) DEFAULT NULL,
  `certificates_show_footer_text` tinyint(1) NOT NULL DEFAULT '0',
  `certificates_footer_text` text,
  `certificates_footer_text_en` text,
  `is_discussion` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `admins_id` (`admins_id`),
  KEY `sub_groups_id` (`sub_groups_id`),
  KEY `sync_slides` (`sync_slides`),
  KEY `level_public` (`level_public`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table cron_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cron_jobs`;

CREATE TABLE `cron_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `is_notify_mail` tinyint(1) NOT NULL DEFAULT '0',
  `notify_mail_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status_code` varchar(255) DEFAULT NULL,
  `status_remark` text,
  `action_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table discussions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discussions`;

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `mention_id` int(11) DEFAULT NULL,
  `enroll_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `topics_id` int(11) DEFAULT NULL,
  `members_id` int(11) DEFAULT NULL,
  `instructors_id` int(11) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `description` text,
  `file` varchar(255) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=user 1=admin 2=instructors',
  `view` int(11) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `count_like` int(11) NOT NULL DEFAULT '0',
  `count_dislike` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `is_sent_instructor` tinyint(1) NOT NULL DEFAULT '0',
  `is_reject` tinyint(1) NOT NULL DEFAULT '0',
  `reject_remark` text,
  `reject_datetime` datetime DEFAULT NULL,
  `reject_by` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `read_by` int(11) DEFAULT NULL,
  `read_datetime` datetime DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table documents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file` varchar(255) NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table domains
# ------------------------------------------------------------

DROP TABLE IF EXISTS `domains`;

CREATE TABLE `domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_groups_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enroll
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enroll`;

CREATE TABLE `enroll` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `members_id` int(11) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `enroll_type_id` int(11) DEFAULT NULL,
  `enroll_type` varchar(128) DEFAULT NULL,
  `enroll_datetime` datetime DEFAULT NULL,
  `last_datetime` datetime DEFAULT NULL,
  `certificate_reference_number` varchar(255) DEFAULT NULL,
  `certificate_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_id` (`groups_id`),
  KEY `sub_groups_id` (`sub_groups_id`),
  KEY `members_id` (`members_id`),
  KEY `courses_id` (`courses_id`),
  KEY `enroll_type_id` (`enroll_type_id`),
  KEY `enroll_datetime` (`enroll_datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table enroll2quiz
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enroll2quiz`;

CREATE TABLE `enroll2quiz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enroll_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table enroll2topic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enroll2topic`;

CREATE TABLE `enroll2topic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enroll_id` int(11) DEFAULT NULL,
  `topics_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table enroll2topic_live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enroll2topic_live`;

CREATE TABLE `enroll2topic_live` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enroll_id` int(11) DEFAULT NULL,
  `topics_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `enter_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table faqs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `faqs`;

CREATE TABLE `faqs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `order`, `create_datetime`, `modify_datetime`, `modify_by`)
VALUES
	(1,'ความต้องการของการใช้งานระบบมีอะไรบ้าง ?','<p><strong>Operating System</strong></p>\n\n<ul>\n	<li><i class=\"fab fa-windows mr-2\"></i>Microsoft windows 7, 8, 8.1 หรือสูงกว่า</li>\n	<li><i class=\"fab fa-apple mr-2\"></i>MAC OS X 10.8 หรือสูงกว่า</li>\n</ul>\n\n<p><strong>Mobile Device</strong></p>\n\n<ul>\n	<li><i class=\"fab fa-android mr-2\"></i>Android 4.4 ขึ้นไป</li>\n	<li><i class=\"fab fa-apple mr-2\"></i>MAC OS X 9 ขึ้นไป</li>\n	<li><i class=\"fab fa-windows mr-2\"></i>Windows Phone 8.1 ขึ้นไป</li>\n</ul>\n\n<p><strong>Browser</strong></p>\n\n<ul>\n	<li><i class=\"fab fa-chrome mr-2\"></i>Chrome (แนะนำ)</li>\n	<li><i class=\"fab fa-firefox mr-2\"></i>Firefox</li>\n	<li><i class=\"fab fa-internet-explorer mr-2\"></i>Internet Explorer 9 หรือสูงกว่า</li>\n	<li><i class=\"fab fa-safari mr-2\"></i>Safari</li>\n</ul>\n',1,1,'2019-03-28 15:16:07','2019-03-28 16:46:50',1);

/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table filter_courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `filter_courses`;

CREATE TABLE `filter_courses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `members_id` int(11) DEFAULT NULL,
  `questionnaire_packs_title` varchar(255) DEFAULT NULL,
  `questionnaire_packs_description` text,
  `questionnaire_packs_force_datetime` datetime DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table filter_courses_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `filter_courses_detail`;

CREATE TABLE `filter_courses_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filter_courses_id` int(11) NOT NULL,
  `question` text,
  `question_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Single Answer, 2=Multiple Answer',
  `question_known` varchar(255) DEFAULT NULL,
  `question_condition_type` enum('level','code') DEFAULT NULL,
  `answer` text,
  `answer_known` varchar(255) DEFAULT NULL,
  `answer_condition_list` varchar(255) DEFAULT NULL,
  `answer_condition_fix_list` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table filter_courses2courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `filter_courses2courses`;

CREATE TABLE `filter_courses2courses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filter_courses_id` int(11) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `keyset` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `internal` tinyint(1) NOT NULL DEFAULT '1',
  `need_approval` tinyint(1) NOT NULL DEFAULT '1',
  `field_approval` enum('full_name','id_card','email') NOT NULL DEFAULT 'email',
  `is_connect_regis` tinyint(1) NOT NULL DEFAULT '1',
  `targetaudience` enum('O','B','L','F','R') NOT NULL DEFAULT 'O' COMMENT 'B - Broker, L - Lisetd Company, F - Fund, R - Retail Investor, O - Other (SETGroup)',
  `max_account_age` int(4) unsigned NOT NULL DEFAULT '90',
  `max_password_age` int(4) unsigned NOT NULL DEFAULT '90',
  `max_password_history` int(3) unsigned NOT NULL DEFAULT '5',
  `incorrect_password_limit` int(3) unsigned NOT NULL DEFAULT '5',
  `meaning_of_occupation_id` varchar(255) DEFAULT NULL,
  `meaning_of_occupation_id_en` varchar(255) DEFAULT NULL,
  `meaning_of_level_groups_id` varchar(255) DEFAULT NULL,
  `meaning_of_level_groups_id_en` varchar(255) DEFAULT NULL,
  `meaning_of_level_groups_id_en_plural` varchar(255) DEFAULT NULL,
  `meaning_of_sub_groups_id` varchar(255) DEFAULT NULL,
  `meaning_of_sub_groups_id_en` varchar(255) DEFAULT NULL,
  `meaning_of_sub_groups_id_en_plural` varchar(255) DEFAULT NULL,
  `meaning_of_institution_id` varchar(255) DEFAULT NULL,
  `use_sub_groups_single` tinyint(1) NOT NULL DEFAULT '1',
  `thumbnail` varchar(255) DEFAULT NULL,
  `page` tinyint(1) NOT NULL DEFAULT '1',
  `multi_lang_certificate` tinyint(1) NOT NULL DEFAULT '0',
  `contact_profile_editing` text,
  `is_show_register_btn` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `key`, `keyset`, `title`, `subject`, `internal`, `need_approval`, `field_approval`, `is_connect_regis`, `targetaudience`, `max_account_age`, `max_password_age`, `max_password_history`, `incorrect_password_limit`, `meaning_of_occupation_id`, `meaning_of_occupation_id_en`, `meaning_of_level_groups_id`, `meaning_of_level_groups_id_en`, `meaning_of_level_groups_id_en_plural`, `meaning_of_sub_groups_id`, `meaning_of_sub_groups_id_en`, `meaning_of_sub_groups_id_en_plural`, `meaning_of_institution_id`, `use_sub_groups_single`, `thumbnail`, `page`, `multi_lang_certificate`, `contact_profile_editing`, `is_show_register_btn`, `status`, `order`, `create_datetime`, `modify_datetime`, `modify_by`)
VALUES
	(1,'G_Education','G_Education','G_Education','ห้องเรียนออนไลน์',1,0,'id_card',0,'B',90,90,5,0,'รหัสประจำตัว','Occupation ID','กลุ่มย่อย','Unit','Units','กลุ่มย่อยหลัก','Sub Group','Sub Groups','รหัสหน่วยงาน',1,NULL,1,1,'** หากต้องการแก้ไขข้อมูลส่วนอื่นเพิ่มเติม กรุณาติดต่อผู้ดูแลหลักสูตร **',1,1,1,'2017-01-18 18:00:00','2019-02-14 14:01:12',1);

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table highlights
# ------------------------------------------------------------

DROP TABLE IF EXISTS `highlights`;

CREATE TABLE `highlights` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admins_id` int(11) unsigned DEFAULT NULL,
  `groups_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '1=logo, 2=signature',
  `picture` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `admins_id`, `groups_id`, `title`, `type`, `picture`, `order`, `status`, `create_datetime`, `created_by`, `modify_datetime`, `modify_by`)
VALUES
	(1,1,1,'Frog_logo_website.png',1,'120319151153-Frog_logo_website.png',1,1,'2019-03-12 15:11:53',1,'2019-03-12 15:11:53',1),
	(2,1,1,'signature-demo.png',2,'120319155205-signature-demo.png',2,1,'2019-03-12 15:52:05',1,'2019-03-12 15:52:05',1);

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table instructor2discussion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instructor2discussion`;

CREATE TABLE `instructor2discussion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instructor_id` int(11) DEFAULT NULL,
  `discussion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table instructors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instructors`;

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `admins_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `short_remark` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(11) unsigned NOT NULL,
  `sc_job_id` int(11) unsigned NOT NULL,
  `sc_job_filename` varchar(255) DEFAULT NULL,
  `sc_job_status` varchar(255) DEFAULT NULL,
  `sc_job_error_code` varchar(255) DEFAULT NULL,
  `sc_job_error_message` varchar(255) DEFAULT NULL,
  `sc_job_submit_time` datetime NOT NULL,
  `sc_job_start_time` datetime DEFAULT NULL,
  `sc_job_finish_time` datetime DEFAULT NULL,
  `sc_raw_data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `streaming_url_type` enum('full','review') NOT NULL DEFAULT 'full',
  `is_notify` tinyint(1) NOT NULL DEFAULT '0',
  `is_moved_file` tinyint(1) NOT NULL DEFAULT '0',
  `is_generate_smil` tinyint(1) NOT NULL DEFAULT '0',
  `is_sent_start_mail` tinyint(1) NOT NULL DEFAULT '0',
  `is_sent_finish_mail` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_job_id` (`sc_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table level_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `level_groups`;

CREATE TABLE `level_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `admins_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table live_results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `live_results`;

CREATE TABLE `live_results` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) unsigned DEFAULT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `live_start_datetime` datetime DEFAULT NULL,
  `live_end_datetime` datetime DEFAULT NULL,
  `is_record` tinyint(1) DEFAULT '0',
  `video_status` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `enroll_type_id` int(11) DEFAULT NULL,
  `enroll_type` varchar(128) DEFAULT NULL,
  `members_id` int(11) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` text,
  `return` text,
  `status` int(11) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `isoCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `continent` varchar(50) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `platform_version` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `browser_version` varchar(50) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table member2level_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `member2level_group`;

CREATE TABLE `member2level_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `members_id` int(11) DEFAULT NULL,
  `level_groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table member2live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `member2live`;

CREATE TABLE `member2live` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `enroll_type_id` int(11) DEFAULT NULL,
  `enroll_type` varchar(128) DEFAULT NULL,
  `members_id` int(11) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `topics_id` int(11) DEFAULT NULL,
  `md5_uip` text,
  `user_agent` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `isoCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `continent` varchar(50) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `platform_version` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `browser_version` varchar(50) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table member2sub_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `member2sub_group`;

CREATE TABLE `member2sub_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `members_id` int(11) NOT NULL,
  `sub_groups_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=non-activated,1=activated, 2=conflict,3=terminate,4=ignore',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `company_code` varchar(255) DEFAULT NULL,
  `ref_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `password` varchar(255) DEFAULT NULL,
  `encrypt_password` varchar(255) DEFAULT NULL,
  `name_title` varchar(128) DEFAULT NULL,
  `name_title_en` varchar(128) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `first_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name_en` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name_en` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `id_card` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `is_foreign` tinyint(1) NOT NULL DEFAULT '0',
  `mobile_number` varchar(10) DEFAULT NULL,
  `position_id` varchar(128) DEFAULT NULL,
  `department` varchar(128) DEFAULT NULL,
  `institution_id` varchar(128) DEFAULT NULL,
  `license_type_id` int(3) DEFAULT NULL,
  `role` varchar(128) DEFAULT NULL,
  `license_id` varchar(128) DEFAULT NULL,
  `education_degree_id` int(3) DEFAULT NULL,
  `faculty_id` int(3) DEFAULT NULL,
  `occupation_id` varchar(13) DEFAULT NULL,
  `table_number` varchar(128) DEFAULT NULL,
  `chief_name` varchar(128) DEFAULT NULL,
  `field_study_id` int(3) DEFAULT NULL,
  `education_level_id` int(3) DEFAULT NULL,
  `token` text,
  `ip` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `last_changed_password` datetime DEFAULT NULL,
  `my_session_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `platform_version` varchar(255) DEFAULT NULL,
  `avatar_id` int(11) DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `approved_type` tinyint(1) DEFAULT NULL COMMENT '1=pre-approved, 2=manual, 3=not to need approval',
  `approved_field` enum('full_name','id_card','occupation_id','license_id','email') DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_datetime` datetime DEFAULT NULL,
  `reject_status` tinyint(1) NOT NULL DEFAULT '0',
  `rejected_by` int(11) DEFAULT NULL,
  `rejected_datetime` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=non-activated,1=activated, 2=suspended',
  `active_remark` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=first time login,1=normal,2=has group changing,3=re-active',
  `suspended_datetime` datetime DEFAULT NULL,
  `incorrect_password` int(2) NOT NULL DEFAULT '0',
  `filter_courses_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not filter and show again, 1=not filter without show again, 2=filterd',
  `latest_type_tax` enum('personal','corporate') DEFAULT NULL,
  `inv_personal_first_name` varchar(255) DEFAULT NULL,
  `inv_personal_last_name` varchar(255) DEFAULT NULL,
  `inv_personal_tax_id` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_personal_email` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_personal_tel` varchar(10) DEFAULT NULL,
  `inv_personal_address` text,
  `inv_personal_zip_code` varchar(5) DEFAULT NULL,
  `inv_corporate_name` varchar(255) DEFAULT NULL,
  `inv_corporate_branch` tinyint(1) DEFAULT NULL,
  `inv_corporate_branch_no` varchar(5) DEFAULT NULL,
  `inv_corporate_tax_id` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_corporate_email` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_corporate_tel` varchar(10) DEFAULT NULL,
  `inv_corporate_address` text,
  `inv_corporate_zip_code` varchar(5) DEFAULT NULL,
  `created_type` tinyint(1) DEFAULT NULL COMMENT '1=registered, 2=uploaded, 3=SSO',
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table members_pre_approved
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members_pre_approved`;

CREATE TABLE `members_pre_approved` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `sub_groups_id` int(11) DEFAULT NULL,
  `company_code` varchar(255) DEFAULT NULL,
  `ref_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `password` varchar(255) DEFAULT NULL,
  `encrypt_password` varchar(255) DEFAULT NULL,
  `name_title` varchar(128) DEFAULT NULL,
  `name_title_en` varchar(128) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `first_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name_en` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name_en` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `is_foreign` tinyint(1) NOT NULL DEFAULT '0',
  `mobile_number` varchar(10) DEFAULT NULL,
  `position_id` varchar(128) DEFAULT NULL,
  `department` varchar(128) DEFAULT NULL,
  `institution_id` varchar(128) DEFAULT NULL,
  `license_type_id` int(3) DEFAULT NULL,
  `role` varchar(128) DEFAULT NULL,
  `license_id` varchar(128) DEFAULT NULL,
  `education_degree_id` int(3) DEFAULT NULL,
  `faculty_id` int(3) DEFAULT NULL,
  `occupation_id` varchar(13) DEFAULT NULL,
  `table_number` varchar(128) DEFAULT NULL,
  `chief_name` varchar(128) DEFAULT NULL,
  `field_study_id` int(3) DEFAULT NULL,
  `education_level_id` int(3) DEFAULT NULL,
  `token` text,
  `ip` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `last_changed_password` datetime DEFAULT NULL,
  `my_session_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `platform_version` varchar(255) DEFAULT NULL,
  `avatar_id` int(11) DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `approved_type` tinyint(1) DEFAULT NULL COMMENT '1=pre-approved, 2=manual, 3=not to need approval',
  `approved_field` enum('full_name','id_card','occupation_id','license_id','email') DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_datetime` datetime DEFAULT NULL,
  `reject_status` tinyint(1) NOT NULL DEFAULT '0',
  `rejected_by` int(11) DEFAULT NULL,
  `rejected_datetime` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=non-activated,1=activated, 2=suspended',
  `active_remark` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=first time login,1=normal,2=has group changing,3=re-active',
  `suspended_datetime` datetime DEFAULT NULL,
  `incorrect_password` int(2) NOT NULL DEFAULT '0',
  `created_type` tinyint(1) DEFAULT NULL COMMENT '1=registered, 2=uploaded, 3=SSO',
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table members_pre_approved2level_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members_pre_approved2level_group`;

CREATE TABLE `members_pre_approved2level_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `members_pre_approved_id` int(11) DEFAULT NULL,
  `level_groups_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table members2license_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members2license_types`;

CREATE TABLE `members2license_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `members_id` int(11) NOT NULL,
  `license_types_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `methods`;

CREATE TABLE `methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `term` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `md5_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime NOT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `methods` WRITE;
/*!40000 ALTER TABLE `methods` DISABLE KEYS */;

INSERT INTO `methods` (`id`, `title`, `business_email`, `payment_url`, `currency`, `merchant`, `term`, `md5_key`, `picture`, `status`, `order`, `create_datetime`, `modify_datetime`, `modify_by`)
VALUES
	(1,'2C2P',NULL,NULL,'THB',NULL,NULL,NULL,'2c2p-logo.png',1,1,'2017-09-12 17:22:49','2018-10-18 16:16:30',1),
	(2,'Omise','','','THB','','','','Omise-Logo-crop',1,2,'2019-01-24 11:32:55','2019-01-24 11:32:55',1);

/*!40000 ALTER TABLE `methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) NOT NULL,
  `methods_id` int(11) DEFAULT NULL,
  `members_id` int(11) NOT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `courses_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courses_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courses_price` float(7,2) DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_tax_invoice` enum('personal','corporate') COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_branch` tinyint(1) DEFAULT NULL,
  `inv_branch_no` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_tax_id` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_tel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_address` text COLLATE utf8_unicode_ci,
  `inv_zip_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isoCode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `continent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table password_histories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_histories`;

CREATE TABLE `password_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `password_histories` WRITE;
/*!40000 ALTER TABLE `password_histories` DISABLE KEYS */;

INSERT INTO `password_histories` (`id`, `member_id`, `admin_id`, `password`, `active`, `create_datetime`, `create_by`, `modify_datetime`, `modify_by`)
VALUES
	(1,NULL,2,'Admin#01',1,'2019-03-29 17:03:07',NULL,'2019-03-29 17:03:07',NULL);

/*!40000 ALTER TABLE `password_histories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orders_id` int(11) NOT NULL,
  `methods` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `methods_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float(7,2) DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_datetime` datetime DEFAULT NULL,
  `paid_channel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `payment_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `payment_message` text COLLATE utf8_unicode_ci,
  `raw_data` text COLLATE utf8_unicode_ci,
  `approve_remark` text COLLATE utf8_unicode_ci,
  `approve_datetime` datetime DEFAULT NULL,
  `approve_by` int(11) DEFAULT NULL,
  `validate_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=none validate, 1=valid, 2=invalid',
  `validate_remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validate_file_csv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validate_datetime` datetime DEFAULT NULL,
  `is_canceled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=none validate, 1=valid, 2=invalid',
  `create_datetime` datetime NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table questionnaire_choices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questionnaire_choices`;

CREATE TABLE `questionnaire_choices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `questionnaires_id` int(11) DEFAULT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `answer_known` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition_list` varchar(255) DEFAULT NULL,
  `condition_fix_list` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table questionnaire_packs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questionnaire_packs`;

CREATE TABLE `questionnaire_packs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `force_by` int(11) DEFAULT NULL,
  `force_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table questionnaires
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questionnaires`;

CREATE TABLE `questionnaires` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `questionnaire_packs_id` int(11) DEFAULT NULL,
  `question` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Single Answer, 2=Multiple Answer',
  `question_known` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition_type` enum('level','code') DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `questions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `answer_info` text,
  `type` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table questions2answer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions2answer`;

CREATE TABLE `questions2answer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enroll2quiz_id` int(11) DEFAULT NULL,
  `questions_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `answer_text` varchar(255) DEFAULT NULL,
  `answer_type` int(11) DEFAULT NULL,
  `correct` tinyint(1) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table quiz
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `passing_score` int(20) DEFAULT NULL,
  `take_new_exam` int(20) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `answer` tinyint(1) DEFAULT NULL,
  `answer_submit` tinyint(1) DEFAULT NULL,
  `limit_questions` int(11) DEFAULT NULL,
  `pass` tinyint(1) NOT NULL DEFAULT '0',
  `random_questions` tinyint(1) DEFAULT NULL,
  `random_answer` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_id` (`courses_id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table quiz2score
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quiz2score`;

CREATE TABLE `quiz2score` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enroll2quiz_id` int(11) DEFAULT NULL,
  `questions_id` int(11) DEFAULT NULL,
  `correct` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table slides
# ------------------------------------------------------------

DROP TABLE IF EXISTS `slides`;

CREATE TABLE `slides` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slide_active` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table slides_times
# ------------------------------------------------------------

DROP TABLE IF EXISTS `slides_times`;

CREATE TABLE `slides_times` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slides_id` int(11) NOT NULL,
  `courses_id` int(11) NOT NULL,
  `topics_id` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sub_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sub_groups`;

CREATE TABLE `sub_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `restriction_mode` enum('allow','deny','off') NOT NULL DEFAULT 'off',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table sub_groups2domains
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sub_groups2domains`;

CREATE TABLE `sub_groups2domains` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_groups_id` int(11) DEFAULT NULL,
  `domains_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table subtitles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subtitles`;

CREATE TABLE `subtitles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `message` text,
  `from_time` time DEFAULT NULL,
  `from_mill_time` int(3) DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `to_mill_time` int(3) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `auto_quiz` tinyint(1) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `live_start_datetime` datetime DEFAULT NULL,
  `live_end_datetime` datetime DEFAULT NULL,
  `state` enum('live','vod') DEFAULT 'vod',
  `streaming_status` tinyint(1) NOT NULL DEFAULT '0',
  `streaming_pause` tinyint(1) NOT NULL DEFAULT '0',
  `streaming_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_transcode_server` varchar(255) DEFAULT NULL,
  `streaming_server` varchar(255) DEFAULT NULL,
  `streaming_server_cdn` varchar(255) DEFAULT NULL,
  `streaming_applications` varchar(255) DEFAULT NULL,
  `streaming_prefix_streamname` varchar(255) DEFAULT NULL,
  `streaming_streamname` varchar(255) DEFAULT NULL,
  `streaming_record_part` varchar(255) DEFAULT NULL,
  `streaming_record_filename` varchar(255) DEFAULT NULL,
  `hit_live` int(11) DEFAULT '0',
  `uip_live` int(11) DEFAULT '0',
  `current_duration_record` int(11) DEFAULT '0',
  `is_stop_record` tinyint(1) DEFAULT NULL,
  `is_stop_stream` tinyint(1) DEFAULT '0',
  `is_auto_convert` tinyint(1) DEFAULT '0',
  `vod_format` enum('vod_now','vod_later','end_live') DEFAULT NULL,
  `slide_delay` int(2) DEFAULT '0',
  `live_event_id` int(11) DEFAULT NULL,
  `live_event_status` varchar(255) DEFAULT NULL,
  `detail` text,
  `videos_id` int(11) DEFAULT NULL,
  `is_show_subtitles` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table transcodings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transcodings`;

CREATE TABLE `transcodings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(11) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `log_file` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `transcode_status` enum('inappropriate','waiting','submitted','converting','error','converted') NOT NULL DEFAULT 'waiting',
  `transcode_status_remark` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sc_job_id` int(11) unsigned DEFAULT NULL,
  `course_id` int(11) unsigned DEFAULT NULL,
  `topic_id` int(11) unsigned DEFAULT NULL,
  `dir_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `extFile` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `contentType` varchar(255) DEFAULT NULL,
  `isVideoType` tinyint(1) NOT NULL DEFAULT '0',
  `url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `thumbnailUrl` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `deleteType` varchar(255) DEFAULT NULL,
  `deleteUrl` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `deleteWithCredentials` tinyint(1) NOT NULL DEFAULT '0',
  `modifiedDateFile` varchar(255) DEFAULT NULL,
  `smil_name` varchar(255) DEFAULT NULL,
  `smil_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `subtitle_edge_style` enum('none','dropshadow','raised','depressed','uniform') NOT NULL DEFAULT 'none',
  `subtitle_font_color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `subtitle_font_opacity` int(3) NOT NULL DEFAULT '100',
  `subtitle_background_color` varchar(255) NOT NULL DEFAULT '#000000',
  `subtitle_background_opacity` int(3) NOT NULL DEFAULT '100',
  `subtitle_window_color` varchar(255) NOT NULL DEFAULT '#000000',
  `subtitle_window_opacity` int(3) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_datetime` datetime DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table views
# ------------------------------------------------------------

DROP TABLE IF EXISTS `views`;

CREATE TABLE `views` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enroll_id` int(11) DEFAULT NULL,
  `topics_id` int(11) DEFAULT NULL,
  `state` enum('live','vod') NOT NULL DEFAULT 'vod',
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enroll_id` (`enroll_id`),
  KEY `topics_id` (`topics_id`),
  KEY `start_datetime` (`start_datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
