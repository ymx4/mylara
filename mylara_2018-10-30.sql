# ************************************************************
# Sequel Pro SQL dump
# Version 5224
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.12)
# Database: mylara
# Generation Time: 2018-10-30 13:29:24 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`)
VALUES
	(1,0,1,'Index','fa-bar-chart','/',NULL,NULL),
	(2,0,2,'Admin','fa-tasks','',NULL,NULL),
	(3,2,3,'Users','fa-users','auth/users',NULL,NULL),
	(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL),
	(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL),
	(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL),
	(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL),
	(8,0,8,'前台导航','fa-bars','links','2018-10-17 15:15:06','2018-10-27 14:48:18');

/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_operation_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_operation_log`;

CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`)
VALUES
	(1,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-17 14:53:50','2018-10-17 14:53:50'),
	(2,1,'admin/auth/menu','POST','172.18.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\",\"icon\":\"fa-bars\",\"uri\":\"courses\",\"roles\":[null],\"_token\":\"yXZg55f99udbVzKr37ADeZd9fR6s8tDscXaLZ4tW\"}','2018-10-17 15:15:06','2018-10-17 15:15:06'),
	(3,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-17 15:15:07','2018-10-17 15:15:07'),
	(4,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-17 15:15:14','2018-10-17 15:15:14'),
	(5,1,'admin/courses','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-17 15:15:19','2018-10-17 15:15:19'),
	(6,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-23 14:57:04','2018-10-23 14:57:04'),
	(7,1,'admin/auth/menu','POST','172.18.0.1','{\"parent_id\":\"8\",\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-bars\",\"uri\":\"courses\",\"roles\":[null],\"_token\":\"Zl00eHyZIpSCRZfSpGfgAjUXLADMA1w4T7AUatwl\"}','2018-10-23 14:57:19','2018-10-23 14:57:19'),
	(8,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-23 14:57:21','2018-10-23 14:57:21'),
	(9,1,'admin/auth/menu','POST','172.18.0.1','{\"_token\":\"Zl00eHyZIpSCRZfSpGfgAjUXLADMA1w4T7AUatwl\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9}]\"}','2018-10-23 14:57:42','2018-10-23 14:57:42'),
	(10,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-23 14:57:44','2018-10-23 14:57:44'),
	(11,1,'admin/auth/menu','POST','172.18.0.1','{\"_token\":\"Zl00eHyZIpSCRZfSpGfgAjUXLADMA1w4T7AUatwl\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]}]\"}','2018-10-23 14:58:00','2018-10-23 14:58:00'),
	(12,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-23 14:58:01','2018-10-23 14:58:01'),
	(13,1,'admin/auth/menu','POST','172.18.0.1','{\"_token\":\"Zl00eHyZIpSCRZfSpGfgAjUXLADMA1w4T7AUatwl\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":9},{\\\"id\\\":8}]\"}','2018-10-23 14:58:24','2018-10-23 14:58:24'),
	(14,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-23 14:58:26','2018-10-23 14:58:26'),
	(15,1,'admin/auth/menu','POST','172.18.0.1','{\"_token\":\"Zl00eHyZIpSCRZfSpGfgAjUXLADMA1w4T7AUatwl\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]}]\"}','2018-10-23 14:58:43','2018-10-23 14:58:43'),
	(16,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-23 14:58:45','2018-10-23 14:58:45'),
	(17,1,'admin/auth/menu/9','DELETE','172.18.0.1','{\"_method\":\"delete\",\"_token\":\"Zl00eHyZIpSCRZfSpGfgAjUXLADMA1w4T7AUatwl\"}','2018-10-23 14:58:57','2018-10-23 14:58:57'),
	(18,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-23 14:58:59','2018-10-23 14:58:59'),
	(19,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-27 10:46:48','2018-10-27 10:46:48'),
	(20,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-27 14:31:09','2018-10-27 14:31:09'),
	(21,1,'admin/auth/menu/8/edit','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 14:31:16','2018-10-27 14:31:16'),
	(22,1,'admin/auth/menu/8','PUT','172.18.0.1','{\"parent_id\":\"0\",\"title\":\"\\u524d\\u53f0\\u5bfc\\u822a\",\"icon\":\"fa-bars\",\"uri\":\"link\",\"roles\":[null],\"_token\":\"OQGJk6NpmRYbVfk1OSdbsMoe5edjVrxqEtdJhAhq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.ml.com\\/admin\\/auth\\/menu\"}','2018-10-27 14:34:18','2018-10-27 14:34:18'),
	(23,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-27 14:34:19','2018-10-27 14:34:19'),
	(24,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-27 14:34:25','2018-10-27 14:34:25'),
	(25,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-27 14:35:06','2018-10-27 14:35:06'),
	(26,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 14:35:40','2018-10-27 14:35:40'),
	(27,1,'admin/links/create','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 14:36:04','2018-10-27 14:36:04'),
	(28,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 14:36:22','2018-10-27 14:36:22'),
	(29,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 14:48:02','2018-10-27 14:48:02'),
	(30,1,'admin/auth/menu/8/edit','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 14:48:10','2018-10-27 14:48:10'),
	(31,1,'admin/auth/menu/8','PUT','172.18.0.1','{\"parent_id\":\"0\",\"title\":\"\\u524d\\u53f0\\u5bfc\\u822a\",\"icon\":\"fa-bars\",\"uri\":\"links\",\"roles\":[null],\"_token\":\"OQGJk6NpmRYbVfk1OSdbsMoe5edjVrxqEtdJhAhq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.ml.com\\/admin\\/auth\\/menu\"}','2018-10-27 14:48:17','2018-10-27 14:48:17'),
	(32,1,'admin/auth/menu','GET','172.18.0.1','[]','2018-10-27 14:48:19','2018-10-27 14:48:19'),
	(33,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:11:02','2018-10-27 15:11:02'),
	(34,1,'admin/links/1','GET','172.18.0.1','[]','2018-10-27 15:11:15','2018-10-27 15:11:15'),
	(35,1,'admin/links/index','GET','172.18.0.1','[]','2018-10-27 15:11:29','2018-10-27 15:11:29'),
	(36,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:11:37','2018-10-27 15:11:37'),
	(37,1,'admin/auth/users','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:16:28','2018-10-27 15:16:28'),
	(38,1,'admin/links/index/1','GET','172.18.0.1','[]','2018-10-27 15:26:08','2018-10-27 15:26:08'),
	(39,1,'admin/links/index/1','GET','172.18.0.1','[]','2018-10-27 15:26:58','2018-10-27 15:26:58'),
	(40,1,'admin/links/index/1','GET','172.18.0.1','[]','2018-10-27 15:27:10','2018-10-27 15:27:10'),
	(41,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:27:15','2018-10-27 15:27:15'),
	(42,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:28:21','2018-10-27 15:28:21'),
	(43,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:29:00','2018-10-27 15:29:00'),
	(44,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:30:56','2018-10-27 15:30:56'),
	(45,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:31:13','2018-10-27 15:31:13'),
	(46,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:32:26','2018-10-27 15:32:26'),
	(47,1,'admin/auth/users','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:32:42','2018-10-27 15:32:42'),
	(48,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:32:49','2018-10-27 15:32:49'),
	(49,1,'admin/auth/menu/1/edit','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:34:16','2018-10-27 15:34:16'),
	(50,1,'admin/auth/menu','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:34:20','2018-10-27 15:34:20'),
	(51,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:39:13','2018-10-27 15:39:13'),
	(52,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:39:18','2018-10-27 15:39:18'),
	(53,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:40:03','2018-10-27 15:40:03'),
	(54,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:42:14','2018-10-27 15:42:14'),
	(55,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:43:01','2018-10-27 15:43:01'),
	(56,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:43:36','2018-10-27 15:43:36'),
	(57,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:43:38','2018-10-27 15:43:38'),
	(58,1,'admin/links','POST','172.18.0.1','{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"uri\":\"\\/\",\"_token\":\"OQGJk6NpmRYbVfk1OSdbsMoe5edjVrxqEtdJhAhq\"}','2018-10-27 15:43:47','2018-10-27 15:43:47'),
	(59,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:43:49','2018-10-27 15:43:49'),
	(60,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:43:51','2018-10-27 15:43:51'),
	(61,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:43:54','2018-10-27 15:43:54'),
	(62,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:43:57','2018-10-27 15:43:57'),
	(63,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:00','2018-10-27 15:44:00'),
	(64,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:03','2018-10-27 15:44:03'),
	(65,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:06','2018-10-27 15:44:06'),
	(66,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:10','2018-10-27 15:44:10'),
	(67,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:13','2018-10-27 15:44:13'),
	(68,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:16','2018-10-27 15:44:16'),
	(69,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:19','2018-10-27 15:44:19'),
	(70,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:22','2018-10-27 15:44:22'),
	(71,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:24','2018-10-27 15:44:24'),
	(72,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:28','2018-10-27 15:44:28'),
	(73,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:31','2018-10-27 15:44:31'),
	(74,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:34','2018-10-27 15:44:34'),
	(75,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:37','2018-10-27 15:44:37'),
	(76,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:41','2018-10-27 15:44:41'),
	(77,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:44','2018-10-27 15:44:44'),
	(78,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:47','2018-10-27 15:44:47'),
	(79,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:44:50','2018-10-27 15:44:50'),
	(80,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:45:31','2018-10-27 15:45:31'),
	(81,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:45:49','2018-10-27 15:45:49'),
	(82,1,'admin/links','POST','172.18.0.1','{\"parent_id\":\"1\",\"title\":\"\\u8bfe\\u7a0b\",\"uri\":\"\\/courses\",\"_token\":\"OQGJk6NpmRYbVfk1OSdbsMoe5edjVrxqEtdJhAhq\"}','2018-10-27 15:46:18','2018-10-27 15:46:18'),
	(83,1,'admin/links','GET','172.18.0.1','[]','2018-10-27 15:46:19','2018-10-27 15:46:19'),
	(84,1,'admin/links','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:46:30','2018-10-27 15:46:30'),
	(85,1,'admin/links','POST','172.18.0.1','{\"_token\":\"OQGJk6NpmRYbVfk1OSdbsMoe5edjVrxqEtdJhAhq\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":2}]}]\"}','2018-10-27 15:46:41','2018-10-27 15:46:41'),
	(86,1,'admin/links','POST','172.18.0.1','{\"_token\":\"OQGJk6NpmRYbVfk1OSdbsMoe5edjVrxqEtdJhAhq\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":2}]}]\"}','2018-10-27 15:46:43','2018-10-27 15:46:43'),
	(87,1,'admin/links','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:46:43','2018-10-27 15:46:43'),
	(88,1,'admin/links','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:46:45','2018-10-27 15:46:45'),
	(89,1,'admin/links','GET','172.18.0.1','{\"_pjax\":\"#pjax-container\"}','2018-10-27 15:48:34','2018-10-27 15:48:34');

/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_permissions`;

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`)
VALUES
	(1,'All permission','*','','*',NULL,NULL),
	(2,'Dashboard','dashboard','GET','/',NULL,NULL),
	(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),
	(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),
	(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);

/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_menu`;

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`)
VALUES
	(1,2,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_permissions`;

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_users`;

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_roles`;

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Administrator','administrator','2018-10-17 14:53:12','2018-10-17 14:53:12');

/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user_permissions`;

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table admin_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','$2y$10$9QdJmnDDmyB5ytm1xfeMFeZjtmA7.Op5wot.VdvjgV3RoRIkOaywq','Administrator',NULL,NULL,'2018-10-17 14:53:12','2018-10-17 14:53:12');

/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;

INSERT INTO `links` (`id`, `parent_id`, `order`, `title`, `uri`, `tag`, `created_at`, `updated_at`)
VALUES
	(1,0,1,'首页','/',1,'2018-10-27 15:43:47','2018-10-27 15:46:42'),
	(2,1,2,'课程','/courses',1,'2018-10-27 15:46:18','2018-10-27 15:46:42');

/*!40000 ALTER TABLE `links` ENABLE KEYS */;
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

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2016_01_04_173148_create_admin_tables',1),
	(15,'2018_10_27_142808_create_links_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
