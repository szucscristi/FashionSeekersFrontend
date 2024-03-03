-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mydatabase
CREATE DATABASE IF NOT EXISTS `mydatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydatabase`;

-- Dumping structure for table mydatabase.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.blogs: ~0 rows (approximately)

-- Dumping structure for table mydatabase.categorii
CREATE TABLE IF NOT EXISTS `categorii` (
  `id` bigint unsigned NOT NULL,
  `denumire` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mydatabase.categorii: ~5 rows (approximately)
INSERT INTO `categorii` (`id`, `denumire`) VALUES
	(1, 'Tricouri'),
	(2, 'Pantaloni'),
	(3, 'Cămăși'),
	(4, 'Hanorace'),
	(5, 'Jachete & Paltoane');

-- Dumping structure for table mydatabase.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table mydatabase.forms
CREATE TABLE IF NOT EXISTS `forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Nume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Prenume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Telefon` varchar(50) DEFAULT NULL,
  `Adresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mydatabase.forms: ~48 rows (approximately)
INSERT INTO `forms` (`id`, `Nume`, `Prenume`, `Email`, `Telefon`, `Adresa`, `created_at`, `updated_at`) VALUES
	(1, 'test1', 'test2', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aaww', '2023-07-18 05:17:12', '2023-07-18 05:17:12'),
	(2, 'test1', 'test2', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aaww', '2023-07-18 05:17:32', '2023-07-18 05:17:32'),
	(3, 'dwdw', 'dwdwdw', 'cristian.stefan.szucs@gmail.com', '0756512443', 'arare', '2023-07-18 05:25:01', '2023-07-18 05:25:01'),
	(4, 'testare', 'testare', 'cristian.stefan.szucs@gmail.com', '0756512443', 'sstrr', '2023-07-18 05:28:57', '2023-07-18 05:28:57'),
	(5, 'testtt', 'tettt', 'cristian.stefan.szucs@gmail.com', '0756512443', 'asassa', '2023-07-20 14:43:28', '2023-07-20 14:43:28'),
	(6, 'testt', 'tettt', 'cristian.stefan.szucs@gmail.com', '0756512443', 'vv', '2023-07-24 06:44:09', '2023-07-24 06:44:09'),
	(7, 'ttttt', 'tttttttt', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qqqqq', '2023-07-24 07:40:15', '2023-07-24 07:40:15'),
	(8, 'egw', 'twew', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aeraerrae', '2023-07-24 07:42:30', '2023-07-24 07:42:30'),
	(9, 'wddw', 'dwdw', 'cristian.stefan.szucs@gmail.com', '0756512443', 'waawwaaw', '2023-07-24 07:43:49', '2023-07-24 07:43:49'),
	(10, 'esf', 'fsefs', 'cristian.stefan.szucs@gmail.com', '0756512443', 'stsrtsrsr', '2023-07-24 07:46:52', '2023-07-24 07:46:52'),
	(11, 'dw', 'dwdwd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'earreer', '2023-07-24 07:50:14', '2023-07-24 07:50:14'),
	(12, 'dfh', 'fxthxf', 'cristian.stefan.szucs@gmail.com', '0756512443', 'dgd', '2023-07-24 08:01:26', '2023-07-24 08:01:26'),
	(13, 'ttt', 'ttttt', 'cristian.stefan.szucs@gmail.com', '0756512443', 'wwww', '2023-07-24 10:11:27', '2023-07-24 10:11:27'),
	(14, 'ddsfbs', 'sgt', 'cristian.stefan.szucs@gmail.com', '0756512443', 'sasaa', '2023-07-24 10:13:35', '2023-07-24 10:13:35'),
	(15, 'waawawaw', 'wawaawawwawa', 'cristian.stefan.szucs@gmail.com', '0756512443', 'raeraeare', '2023-07-24 10:16:25', '2023-07-24 10:16:25'),
	(16, 'fxg', 'gfbgfbgf', 'cristian.stefan.szucs@gmail.com', '0756512443', 'rreesr', '2023-07-24 10:19:40', '2023-07-24 10:19:40'),
	(17, 'aww', 'wawa', 'cristian.stefan.szucs@gmail.com', '0756512443', 'eaeea', '2023-07-25 03:35:58', '2023-07-25 03:35:58'),
	(18, 'waaw', 'wwww', 'cristian.stefan.szucs@gmail.com', '0756512443', 'wwwwww', '2023-07-25 03:37:19', '2023-07-25 03:37:19'),
	(19, 'ww', 'wwwww', 'cristian.stefan.szucs@gmail.com', '0756512443', 'wawra', '2023-07-25 03:38:05', '2023-07-25 03:38:05'),
	(20, 'dwdw', 'dwd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'awawaw', '2023-07-25 03:40:38', '2023-07-25 03:40:38'),
	(21, 'wwwwww', 'wwwww', 'cristian.stefan.szucs@gmail.com', '0756512443', 'fffff', '2023-07-25 03:46:19', '2023-07-25 03:46:19'),
	(22, 'wwww', 'wwww', 'cristian.stefan.szucs@gmail.com', '0756512443', 'awawaw', '2023-07-25 03:47:44', '2023-07-25 03:47:44'),
	(23, 'wwwdd', 'ddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qqq', '2023-07-25 03:51:11', '2023-07-25 03:51:11'),
	(24, 'www', 'wwwwww', 'cristian.stefan.szucs@gmail.com', '0756512443', 'hhhh', '2023-07-25 04:01:04', '2023-07-25 04:01:04'),
	(25, 'wwww', 'wwdd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qwqwq', '2023-07-25 04:02:44', '2023-07-25 04:02:44'),
	(26, 'adsfsd', 'fdsfssd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'sds', '2023-07-25 04:05:51', '2023-07-25 04:05:51'),
	(27, 'ddd', 'dddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aaaa', '2023-07-25 04:14:35', '2023-07-25 04:14:35'),
	(28, 'adda', 'asa', 'cristian.stefan.szucs@gmail.com', '0756512443', 'ddd', '2023-07-25 04:24:10', '2023-07-25 04:24:10'),
	(29, 'ddd', 'dddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qqqq', '2023-07-25 04:27:04', '2023-07-25 04:27:04'),
	(30, 'dddd', 'ddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qqqq', '2023-07-25 04:33:32', '2023-07-25 04:33:32'),
	(31, 'dddd', 'dddddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'zdffdzzdf', '2023-07-25 04:34:40', '2023-07-25 04:34:40'),
	(32, 'ddd', 'ddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'ffff', '2023-07-25 05:05:03', '2023-07-25 05:05:03'),
	(33, 'ddd', 'ddddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'wwww', '2023-07-25 05:08:37', '2023-07-25 05:08:37'),
	(34, 'dddd', 'dddddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aaaaaaaaaaaa', '2023-07-25 05:09:44', '2023-07-25 05:09:44'),
	(35, 'dddd', 'ddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'wwwwww', '2023-07-25 05:25:58', '2023-07-25 05:25:58'),
	(36, 'dddddw', 'wwwwwww', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qqqq', '2023-07-25 05:26:22', '2023-07-25 05:26:22'),
	(37, 'wwwwww', 'dddddd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qqqq', '2023-07-25 05:29:50', '2023-07-25 05:29:50'),
	(38, 'dddd', 'wwww', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qqqq', '2023-07-25 05:30:25', '2023-07-25 05:30:25'),
	(39, 'asaa', 'aaaa', 'cristian.stefan.szucs@gmail.com', '0756512443', 'qqqq', '2023-07-25 05:41:55', '2023-07-25 05:41:55'),
	(40, 'testtt', 'tttt', 'cristian.stefan.szucs@gmail.com', '0756512443', 'dtddtdt', '2023-07-25 06:48:07', '2023-07-25 06:48:07'),
	(41, 'wegesrge', 'rrgrgrgr', 'cristian.stefan.szucs@gmail.com', '0756512443', 'essserseser', '2023-07-25 09:29:03', '2023-07-25 09:29:03'),
	(42, 'ddd', 'dd', 'cristian.stefan.szucs@gmail.com', '0756512443', 's\\f\\s', '2023-07-25 10:07:38', '2023-07-25 10:07:38'),
	(43, 'ddd', 'dd', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aaaa', '2023-07-25 10:11:34', '2023-07-25 10:11:34'),
	(44, 'efaef', 'eafr', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aerae', '2023-07-25 10:13:18', '2023-07-25 10:13:18'),
	(45, 'sery', 'srytsr', 'cristian.stefan.szucs@gmail.com', '0756512443', 'sdfsdfs', '2023-08-08 16:07:10', '2023-08-08 16:07:10'),
	(46, 'xfg', 'xfgbxfg', 'cristian.stefan.szucs@gmail.com', '0756512443', 'gfhxf', '2023-08-08 17:58:18', '2023-08-08 17:58:18'),
	(47, 'Szucs', 'Cristian', 'cristian.stefan.szucs@gmail.com', '0756512442', 'Str. Casei nr.14', '2024-01-08 10:08:32', '2024-01-08 10:08:32'),
	(48, 'Szucs', 'Cristian', 'cristian.stefan.szucs@gmail.com', '0756512442', 'Str. Pascal', '2024-01-10 13:27:44', '2024-01-10 13:27:44');

-- Dumping structure for table mydatabase.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.migrations: ~11 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_07_17_095621_create_blogs_table', 1),
	(6, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
	(7, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
	(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
	(9, '2016_06_01_000004_create_oauth_clients_table', 2),
	(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
	(11, '2023_07_25_114650_create_roles_table', 3);

-- Dumping structure for table mydatabase.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_access_tokens: ~92 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('00d8b128e19e3d3cbde1abc7f9120daaf4f1331301be1f3024df74829bc37cbbb0c0a37003517166', 3, 1, 'App', '[]', 0, '2023-07-20 06:55:26', '2023-07-20 06:55:26', '2024-07-20 09:55:26'),
	('013dd34b45ba6472df22ac2cfd0b6c358b79c7c79942fcdaf12d9864fd4a86f3b20e0686e48e8ec8', 3, 1, 'App', '[]', 0, '2023-07-25 09:28:46', '2023-07-25 09:28:46', '2024-07-25 12:28:46'),
	('0180b35f60d7995de63506a8203ec6b13e3b4e3518ffeafce1c871f4a49e02422b8ce6eb0ae38178', 3, 1, 'App', '[]', 0, '2023-07-19 10:17:42', '2023-07-19 10:17:42', '2024-07-19 13:17:42'),
	('018365ceaa755c313f5660d102f70ac6546e58a0adf2c7c3e693a480b4b1f8487163e3a825d9236c', 3, 1, 'App', '[]', 0, '2023-07-20 06:49:04', '2023-07-20 06:49:04', '2024-07-20 09:49:04'),
	('02f9797ea8346e394a11ae7c031acaa9d5f6527982c72784e55905d742a633286436c40ed2fb1692', 3, 1, 'App', '[]', 0, '2023-07-24 06:22:24', '2023-07-24 06:22:24', '2024-07-24 09:22:24'),
	('055d9b87475bf2d1415909922a4849d493ae37df7bd9e7c318c3d5420273324ec888f3e918a0d5a2', 3, 1, 'App', '[]', 0, '2023-07-25 09:53:03', '2023-07-25 09:53:03', '2024-07-25 12:53:03'),
	('0d1cf6419a17f1d65f228f156f8800cfc4e68ea820fdb1a005f1847318ac499713eaf32ba0afc663', 3, 1, 'App', '[]', 0, '2023-07-24 07:39:55', '2023-07-24 07:39:55', '2024-07-24 10:39:55'),
	('0f317e4235df4264691a4f84c3efd86f11d1629d4d652bdb587cb690573a0bf1080bc65b41f69d35', 3, 1, 'App', '[]', 0, '2023-07-24 03:30:21', '2023-07-24 03:30:21', '2024-07-24 06:30:21'),
	('0fde0d48f6e347104b893636abec9d325dd26b291c030b72f7d947e96c2a4a5077cc3e5c3d6ee498', 3, 1, 'App', '[]', 0, '2023-07-24 06:33:03', '2023-07-24 06:33:03', '2024-07-24 09:33:03'),
	('11db8ca1216079ad49f27862a60505369d2e2c6f42c5792a85846bbaace87394679fbb853efba906', 3, 1, 'App', '[]', 0, '2023-07-20 05:58:28', '2023-07-20 05:58:28', '2024-07-20 08:58:28'),
	('131fafdb9a5587858cf1bb0195f380f7de3a20d95a8841439979e245831b9007aee9619aa6b0c56d', 3, 1, 'App', '[]', 0, '2023-07-24 05:22:19', '2023-07-24 05:22:19', '2024-07-24 08:22:19'),
	('1c1767b0a5c2a853470b3f99a94b5b8c94fa8179a9ca9704e4c5ae2c2fcf96c925fbbd2b2efdfb3c', 3, 1, 'App', '[]', 0, '2024-01-08 10:07:22', '2024-01-08 10:07:22', '2025-01-08 12:07:22'),
	('1dfb0dff0f8825beae5395261243e1c59dacbd11a1c78a4a022d94ff71de209289977029867ad04b', 3, 1, 'App', '[]', 0, '2023-07-20 06:02:28', '2023-07-20 06:02:28', '2024-07-20 09:02:28'),
	('1f3b4ba1417a70375b84e33ccc3550c5d7c091d68462687adeed1f5dccb6f61797f16d1aab97096e', 3, 1, 'App', '[]', 0, '2023-07-25 09:18:04', '2023-07-25 09:18:04', '2024-07-25 12:18:04'),
	('2184cce0754e486c94528f02dc898b52ab5a2391a15fba8ed93e76de108c9a5e49fcb45dc0ce4029', 3, 1, 'App', '[]', 0, '2023-07-24 08:52:12', '2023-07-24 08:52:13', '2024-07-24 11:52:12'),
	('23839b859bf9b2726971b9ea41b43ecfa0fa45379849e01d6d7fa9912b7e7688c271aa1a2ad9779e', 3, 1, 'App', '[]', 0, '2023-07-24 05:13:42', '2023-07-24 05:13:42', '2024-07-24 08:13:42'),
	('30852a7b3192972ba402875af3e97a8c5605299cff58771ba2e90425e7e60cbb9c46ae3373e54404', 3, 1, 'App', '[]', 0, '2023-07-20 06:16:47', '2023-07-20 06:16:47', '2024-07-20 09:16:47'),
	('31b9c47a8f1c2ecba96094480fbe289bf54605fcd3bcce8509b64619963b007713fc54ac99f49040', 3, 1, 'App', '[]', 0, '2023-07-20 14:42:57', '2023-07-20 14:42:57', '2024-07-20 17:42:57'),
	('3229f742b96c315c83e731ec5321d5c04085c1fe4daa77d3148f2a60d9bd222500af7ac46aea1cbd', 3, 1, 'App', '[]', 0, '2023-07-20 05:49:31', '2023-07-20 05:49:31', '2024-07-20 08:49:31'),
	('33b39ef41bdc87717a60d7ef6d3a998ee4b3a7731c4738506c695cb32155d2347494770348d93053', 3, 1, 'App', '[]', 0, '2023-07-20 08:20:07', '2023-07-20 08:20:07', '2024-07-20 11:20:07'),
	('38d460f8d47a7d80d89b4c65424383a406fcd632d84aa95e1c96db1dc4139db8191d8db938884190', 3, 1, 'App', '[]', 0, '2023-07-24 07:25:23', '2023-07-24 07:25:23', '2024-07-24 10:25:23'),
	('39161b29ab9af1cd3510c372f4eae4dda93794b9691c53cef0ae27d77da44616e05dae9269077e25', 3, 1, 'App', '[]', 0, '2023-07-24 07:20:58', '2023-07-24 07:20:58', '2024-07-24 10:20:58'),
	('3bd20f58ef911d6909450a573b303c73e2871071f0457532718efbf1c09123b9912a9f35244d16a3', 3, 1, 'App', '[]', 0, '2023-07-25 06:40:12', '2023-07-25 06:40:12', '2024-07-25 09:40:12'),
	('3eb3c50c0df360bb66b6056f4d497c4a2aaed423b8ad287205eeba725eb2c5618a4934f89922eb60', 2, 1, 'MyApp', '[]', 0, '2023-07-18 06:17:53', '2023-07-18 06:17:53', '2024-07-18 09:17:53'),
	('3edf37bcdf4ac025c3e10de873701550c67e4abbcaef959157ecb9dbebc187057e4860daa68c3c94', 3, 1, 'App', '[]', 0, '2023-07-19 09:50:28', '2023-07-19 09:50:28', '2024-07-19 12:50:28'),
	('3fc1196ca255c350ff24538eb6ac13ae79e04dc8c3edab801254c5f2228f8537cafa9bb9a3dcb575', 3, 1, 'App', '[]', 0, '2023-07-24 04:51:37', '2023-07-24 04:51:37', '2024-07-24 07:51:37'),
	('40edf8c8718cce5d70b269392fc646b1a2418a77dff47e1609aace8127fd0cde68cd69e584d28e7a', 3, 1, 'App', '[]', 0, '2023-07-19 10:10:21', '2023-07-19 10:10:21', '2024-07-19 13:10:21'),
	('470089ea1be224d0307d2a730acdaa4d4921160c36fc0c0e2b6670cd0e83e7bd69838fdf6e98e479', 3, 1, 'App', '[]', 0, '2023-07-20 08:10:03', '2023-07-20 08:10:03', '2024-07-20 11:10:03'),
	('4cd63316c8b1dbcfe9ef32d4f4a23a139358103010deb8273b5676ac0169c03ff3c662106fb1384d', 3, 1, 'App', '[]', 0, '2023-07-24 05:14:26', '2023-07-24 05:14:26', '2024-07-24 08:14:26'),
	('4ed42217d904fd332219e3650d23e8bab54fc6f0fc0e87d86090b7bf59417cc0670e748fdde72653', 3, 1, 'App', '[]', 0, '2023-07-25 09:27:08', '2023-07-25 09:27:08', '2024-07-25 12:27:08'),
	('50fc926e0a032de6ed6d6a12025fad244f742f256444e74d2032b592257bf2e552443607de46c811', 3, 1, 'App', '[]', 0, '2023-07-25 09:18:10', '2023-07-25 09:18:10', '2024-07-25 12:18:10'),
	('52a20704bd3a55ef92073f8f67f4b736ac940dc31a02fd8f23010a6d70f86e55b0dbe2d7a4b068bc', 3, 1, 'App', '[]', 0, '2023-07-20 07:18:17', '2023-07-20 07:18:17', '2024-07-20 10:18:17'),
	('54a1f743538dd7ee4eaf51c369246cd4cc1ac2ff30ca61e64c743ca31de476b24aeaf28d38f97ba2', 3, 1, 'App', '[]', 0, '2023-07-20 06:11:58', '2023-07-20 06:11:58', '2024-07-20 09:11:58'),
	('578f51d6f920e82c4c28a8a58db5a85d3e31e49f3fa7c8e1441e3bd2b683e518e4db2f38324c1133', 3, 1, 'App', '[]', 0, '2023-07-20 05:17:41', '2023-07-20 05:17:42', '2024-07-20 08:17:41'),
	('5a90083f2d806467a00f48fe58b002dd569580d47cc8a4b38ab5a3814c747a44dc71ae9a9e582792', 3, 1, 'App', '[]', 0, '2023-07-24 07:24:15', '2023-07-24 07:24:15', '2024-07-24 10:24:15'),
	('5d9d86d403c11d5c771ae051abdb35324b6fcbfa30454f9a2534c110d411b4165f84700af822b8a6', 3, 1, 'App', '[]', 0, '2023-07-24 03:59:47', '2023-07-24 03:59:48', '2024-07-24 06:59:47'),
	('5eb8f61bcd028cb8c1145cedabb1e36c730e9942192e1ce282489f14be0b04b075656add6a9fc1e9', 3, 1, 'App', '[]', 0, '2024-01-10 13:26:42', '2024-01-10 13:26:42', '2025-01-10 15:26:42'),
	('6197f7f51672b7ef507d853966b168f672535a55105f5c868fdb395e1f5c48c91aafe8862dfa835a', 3, 1, 'App', '[]', 0, '2023-07-24 06:31:33', '2023-07-24 06:31:33', '2024-07-24 09:31:33'),
	('6374283f5be3c8f3f9ad8b6fd3a291a0506dcc19202682a223c192e6725ab959e4294f9b1755901a', 3, 1, 'App', '[]', 0, '2023-07-20 06:03:11', '2023-07-20 06:03:11', '2024-07-20 09:03:11'),
	('6485d90b7d7a721044c9c8917b4c12d4bbd647c93ee252575868137fdcbeec77cdb35d0ddf870e67', 3, 1, 'App', '[]', 0, '2023-07-24 05:00:01', '2023-07-24 05:00:01', '2024-07-24 08:00:01'),
	('6927f591fdf80bfef0c7644f4d8be6d1afb9588af8eaae0fa2b0d7baff8efd16f9de85c117f70a08', 3, 1, 'App', '[]', 0, '2023-11-29 12:31:58', '2023-11-29 12:31:58', '2024-11-29 14:31:58'),
	('6dcd86adc6802b007a734f42dce083cc2300051129244103cef9b299e68f35fd43f06d2c3b16249d', 3, 1, 'App', '[]', 0, '2023-07-20 08:21:37', '2023-07-20 08:21:37', '2024-07-20 11:21:37'),
	('700e542321ee38c46a1318e1780f10d4a32e094a29a379523b2c37bca0548c17ecb120200b3ffd21', 3, 1, 'App', '[]', 0, '2023-07-24 07:03:21', '2023-07-24 07:03:21', '2024-07-24 10:03:21'),
	('70f8a736f763a41bb83332ee1e848bf2739b7e5ba455f3ea6388b3c1997b72a7e59e39360eb37f0c', 1, 1, 'MyApp', '[]', 0, '2023-07-17 09:40:30', '2023-07-17 09:40:30', '2024-07-17 12:40:30'),
	('72269a3ddf3c99667b227af69fbed9397d6655c3f19fd13a0acc35a6ce3704e0781337a0093cd759', 3, 1, 'App', '[]', 0, '2023-12-12 19:18:33', '2023-12-12 19:18:33', '2024-12-12 21:18:33'),
	('7286287534dec79679b97e138cfd68387441e9fe9a1bc4a50a6b22591b56e8426db12177f4340264', 3, 1, 'App', '[]', 0, '2023-07-24 08:28:44', '2023-07-24 08:28:44', '2024-07-24 11:28:44'),
	('764ed5985c7510efd9be2e6aebb5e69537870fe78f9e80b431dc7803b59bdb833d1abc93336d9c33', 3, 1, 'App', '[]', 0, '2023-08-08 16:06:13', '2023-08-08 16:06:13', '2024-08-08 19:06:13'),
	('795182c79119508c119d82fcdadd911f7c3b1cc222d500836173b15e80a0ea7e200adf3dcb09f161', 3, 1, 'App', '[]', 0, '2023-07-24 08:03:32', '2023-07-24 08:03:32', '2024-07-24 11:03:32'),
	('7e5e06075f4ccabb6b7ba1a96357f9b61243a40f6708a1012217629b6f496111cc5b61f5e9fc2103', 3, 1, 'App', '[]', 0, '2023-07-24 05:20:59', '2023-07-24 05:20:59', '2024-07-24 08:20:59'),
	('8115521b7b9a10410083bfcff9d36c64d19578a31086602821d4fde1274d41d6cced240a793a2404', 3, 1, 'App', '[]', 0, '2023-07-20 07:16:03', '2023-07-20 07:16:03', '2024-07-20 10:16:03'),
	('8a80a021b4b21caf0dd5c0c46b79cf18df9563ef1307b7ca963f98b703e1c585545c2632fe890bd6', 3, 1, 'App', '[]', 0, '2023-07-24 04:50:02', '2023-07-24 04:50:02', '2024-07-24 07:50:02'),
	('8dea1309bfc3734a0a7d3954de8e052e862cc966a580d17d204d0e65d6d7f54a72d37248fc50a55a', 3, 1, 'App', '[]', 0, '2023-07-20 06:09:41', '2023-07-20 06:09:41', '2024-07-20 09:09:41'),
	('8e468b5bab4582a22eb0ed857e2ea4fe2e7d7bc25e327c50749295b1fa26a39e17be2a29e3a9d3ad', 3, 1, 'App', '[]', 0, '2023-07-24 08:58:09', '2023-07-24 08:58:09', '2024-07-24 11:58:09'),
	('9352d6171ecc78d5b13585c44ee70168889240dfac6dccf9a110afc3d39358b46500b8cc78f99586', 3, 1, 'App', '[]', 0, '2023-07-21 06:25:12', '2023-07-21 06:25:12', '2024-07-21 09:25:12'),
	('964a24da2bfe550d437317df05920f2c2d91cfa4bb13a6db162f0788f57820f0ca43e1c17b44d3cf', 3, 1, 'App', '[]', 0, '2024-01-08 10:07:20', '2024-01-08 10:07:20', '2025-01-08 12:07:20'),
	('96f0761c9680f3a7db476fbe9dd8535161a3e44fee3b144b145fc066b01ab901c308be0706b14b48', 3, 1, 'App', '[]', 0, '2023-07-25 09:33:34', '2023-07-25 09:33:34', '2024-07-25 12:33:34'),
	('9be2c51ee25f99932e6b0fb755a3be6b51e94b6ba901bef281462dc62022da844f8ce4b9674a5d21', 3, 1, 'App', '[]', 0, '2023-07-24 04:44:07', '2023-07-24 04:44:07', '2024-07-24 07:44:07'),
	('9d2026a60185e4f5410617140fadb7383dedcd53fa78ba59bd6f4fefe8b665ebbc306a73927b2139', 3, 1, 'App', '[]', 0, '2023-07-24 09:38:58', '2023-07-24 09:38:58', '2024-07-24 12:38:58'),
	('9fba5f87b2d5b32d77be78fdf74da1edec743c790e115573406b1a1e4152f7a2995e08fce0ee7aa4', 3, 1, 'App', '[]', 0, '2023-07-25 10:13:04', '2023-07-25 10:13:04', '2024-07-25 13:13:04'),
	('a725b36aed341eec524c04aa72abf24a074eee82dd1da3e43c00e3341e65f6ab21db90dc644c00c9', 3, 1, 'App', '[]', 0, '2023-07-20 09:57:58', '2023-07-20 09:57:58', '2024-07-20 12:57:58'),
	('a9b9fba836e628327632bce3c566f8ab9e90fdeee2ee21055b8d295bd484051f1a26bfeff22c61e6', 3, 1, 'App', '[]', 0, '2023-07-19 09:50:10', '2023-07-19 09:50:10', '2024-07-19 12:50:10'),
	('ac93d98d10b49e7f372edee8b72a34b01fdd4031b6821e73668611b3a1e2dd64cd33c8c8b648f386', 3, 1, 'App', '[]', 0, '2023-07-19 10:15:42', '2023-07-19 10:15:42', '2024-07-19 13:15:42'),
	('aef8f5c5b2aea15499a1526464079fd2383d669b92da2db9940242fd8a632850d0c688d99156e177', 3, 1, 'App', '[]', 0, '2023-07-19 10:05:07', '2023-07-19 10:05:07', '2024-07-19 13:05:07'),
	('b0ade81fd0115331ebdfe4d68b84a4c6ff603cea01a33d8ffe71886be87efcfd23916f7fe0410be0', 3, 1, 'App', '[]', 0, '2023-07-25 09:04:32', '2023-07-25 09:04:32', '2024-07-25 12:04:32'),
	('b35c9f1b2fe16808fe010a83ae7adbb8676c75f75e10a3f9c0c015eb43d7cf5a3e34be43758ad02b', 3, 1, 'App', '[]', 0, '2023-07-21 08:25:43', '2023-07-21 08:25:43', '2024-07-21 11:25:43'),
	('b4173f89c560fb42e01861567f3657998f414abea38aee5c3a01eb90ea1460bd8bc78a9364ba663b', 3, 1, 'App', '[]', 0, '2023-07-24 06:10:16', '2023-07-24 06:10:16', '2024-07-24 09:10:16'),
	('b42b4673ca45ab16cf2dfcb5737ffb2d49e4f65b4b45b98aa1c2eef0462540bbff549eaa7d8c6f3d', 3, 1, 'App', '[]', 0, '2024-01-08 10:07:20', '2024-01-08 10:07:20', '2025-01-08 12:07:20'),
	('b4a06f8c7fb3576168d14ff294341ee668a1dde2ab4633c86b3c171f3d60e2fc9bcde763f57c5830', 3, 1, 'App', '[]', 0, '2023-07-20 05:36:37', '2023-07-20 05:36:37', '2024-07-20 08:36:37'),
	('b911bb404a4abf7ccd73a771d3c9bfad936d3c05af4319e8e344598fdd976a971c2d9ea486e81476', 3, 1, 'App', '[]', 0, '2023-07-24 08:42:52', '2023-07-24 08:42:52', '2024-07-24 11:42:52'),
	('ba5709bf353f68ef4b8c647b001dcc4bbffe1fcfc5bfa0681ca1f899aee5505f08a80a204cb5b935', 3, 1, 'App', '[]', 0, '2023-07-24 06:17:15', '2023-07-24 06:17:15', '2024-07-24 09:17:15'),
	('bb030fbdec44b4cc578a7c5ddfdb9cd1af355dd283c5c3d3943c97da99848f611b6ff1400214d900', 3, 1, 'App', '[]', 0, '2023-07-24 05:09:03', '2023-07-24 05:09:03', '2024-07-24 08:09:03'),
	('bfc65cb88ddeab7cd9a4fe354fe4019805992963ce2f2f2c0662732e44cb286e5b82fda34573bc41', 3, 1, 'App', '[]', 0, '2023-07-19 10:02:51', '2023-07-19 10:02:51', '2024-07-19 13:02:51'),
	('c49fada09fa52a2f5bf4cdc20d6003543bbeb5bc56d9555374889cef85a9bb5b48564fdfa13b7af6', 3, 1, 'App', '[]', 0, '2023-07-24 08:34:55', '2023-07-24 08:34:55', '2024-07-24 11:34:55'),
	('c717cc1fa09c95692a16f9f3ab6ce7ba69e709cd6df3cd55ee642201cc9b24a1d354f719fef61bfe', 3, 1, 'App', '[]', 0, '2023-07-24 07:06:18', '2023-07-24 07:06:18', '2024-07-24 10:06:18'),
	('c80232dd99f9862942d4e524b798f00d58533dc56144c7a7524eda23a010eecafa4603f33539491a', 3, 1, 'App', '[]', 0, '2023-07-24 04:49:17', '2023-07-24 04:49:17', '2024-07-24 07:49:17'),
	('c810f175313c07ea72704654c00c7a58e09405abf24b50dca3c5807ffbab85ba26014dda94b539e2', 3, 1, 'App', '[]', 0, '2023-07-24 06:13:52', '2023-07-24 06:13:52', '2024-07-24 09:13:52'),
	('c9b51fb2739ffa1fb61195583e55f269f9bd44f46edf1ff40023dc907568a16c3e16be0fd48fcfdf', 3, 1, 'App', '[]', 0, '2023-07-24 05:25:45', '2023-07-24 05:25:45', '2024-07-24 08:25:45'),
	('d0799daf7f17053867d658ef7ae97b4cd26c379d718e021e60866ad4e6e7b64ff3ec75c79d245f6f', 3, 1, 'App', '[]', 0, '2023-07-20 06:13:31', '2023-07-20 06:13:31', '2024-07-20 09:13:31'),
	('d24f62a25026d720af2fe2ea201ea5b6e562b6bf7e97bf0551ebeb68f9119cf57dc641b5bb7f439e', 3, 1, 'App', '[]', 0, '2023-07-24 08:01:09', '2023-07-24 08:01:09', '2024-07-24 11:01:09'),
	('d2cce35faa904f6451249b597a97cd0712c4eac913d01d87b539dcf284ce5d1804b356c67ad87202', 3, 1, 'App', '[]', 0, '2023-07-25 10:07:23', '2023-07-25 10:07:23', '2024-07-25 13:07:23'),
	('db370447d4e6523fe66615a25579e545e2d61531243a67dc2e85f5106fb049f99fc3f7eb23e9870c', 3, 1, 'App', '[]', 0, '2023-07-20 06:16:22', '2023-07-20 06:16:22', '2024-07-20 09:16:22'),
	('e04e4ec4d24a75f2af731c3d17ed712a37502840c7ba060f27c92db12c1c66e73d8818bba34e78f4', 3, 1, 'App', '[]', 0, '2023-07-24 04:43:29', '2023-07-24 04:43:29', '2024-07-24 07:43:29'),
	('e3af5db9595f45341c63dfd7f68c5f5c89f9449fc0835a5d53b972a064ddc33acd1aa3cf2bff8163', 3, 1, 'App', '[]', 0, '2023-07-20 06:54:14', '2023-07-20 06:54:14', '2024-07-20 09:54:14'),
	('ed82b574c70c04a1f948dc1755ee5858c694e373f0373101a7292f8c99e960fb61755816d67f1013', 3, 1, 'App', '[]', 0, '2023-07-20 06:47:17', '2023-07-20 06:47:17', '2024-07-20 09:47:17'),
	('edb19b76e00059d144f327e68da4067096dfd9bc938d22f8e5439df6bec4708ab9f460d150c41825', 3, 1, 'App', '[]', 0, '2023-07-24 08:58:55', '2023-07-24 08:58:55', '2024-07-24 11:58:55'),
	('eef625c19037a2e39e79cba0fa95637365eda8c57b999a2675765f091e1553095ac67364c482b8c0', 3, 1, 'App', '[]', 0, '2023-07-24 07:04:03', '2023-07-24 07:04:03', '2024-07-24 10:04:03'),
	('f13848bf4a079f14eac0890cba08282935d5b8bb1299ba78a2abc6e9be2a750ef24d30fe9c63b7c8', 3, 1, 'App', '[]', 0, '2023-07-21 03:50:00', '2023-07-21 03:50:00', '2024-07-21 06:50:00'),
	('f3774be7fcc326cda86ba3cce32f21565cbb75c09449a8c55f5ff9f3d5334684f7b3a895af1493f9', 3, 1, 'App', '[]', 0, '2023-07-20 06:49:44', '2023-07-20 06:49:44', '2024-07-20 09:49:44'),
	('fa81cc863a3d9a909b2aabaffe00440e6a3892676d10bc7e283d953fce59dd00aa61bd4053e75c41', 3, 1, 'App', '[]', 0, '2023-07-24 06:27:43', '2023-07-24 06:27:43', '2024-07-24 09:27:43'),
	('fbd59beb4e6a53b73449fb730fd0ca491d3263e3c0cb3ed42234cce6b63765b9de30f043061ad93a', 3, 1, 'App', '[]', 0, '2023-08-08 17:57:45', '2023-08-08 17:57:45', '2024-08-08 20:57:45'),
	('fec5ee7a30b405da9cf1df53fa28a108bd50d0c343c3498d10324f7d98d6b76e77e598c1da7fbfc2', 1, 1, 'MyApp', '[]', 0, '2023-07-17 09:39:25', '2023-07-17 09:39:25', '2024-07-17 12:39:25'),
	('ff2e1b8b29f350a8eac8be61044a42ff4a103780cbb3879f24d5e0aaebeac584d252ba86a12f1545', 3, 1, 'App', '[]', 0, '2023-07-24 08:21:12', '2023-07-24 08:21:12', '2024-07-24 11:21:12');

-- Dumping structure for table mydatabase.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_auth_codes: ~0 rows (approximately)

-- Dumping structure for table mydatabase.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_clients: ~2 rows (approximately)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'rSLYZOkhzysztvgdfaKlIAaIV415aoXuRkSOXsA9', NULL, 'http://localhost', 1, 0, 0, '2023-07-17 07:47:35', '2023-07-17 07:47:35'),
	(2, NULL, 'Laravel Password Grant Client', 'mmW5L6MC5rdwlo7vIMLeRhW1H7POvEAdwLrkMpwf', 'users', 'http://localhost', 0, 1, 0, '2023-07-17 07:47:35', '2023-07-17 07:47:35');

-- Dumping structure for table mydatabase.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_personal_access_clients: ~1 rows (approximately)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2023-07-17 07:47:35', '2023-07-17 07:47:35');

-- Dumping structure for table mydatabase.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_refresh_tokens: ~0 rows (approximately)

-- Dumping structure for table mydatabase.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table mydatabase.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table mydatabase.produse
CREATE TABLE IF NOT EXISTS `produse` (
  `id` bigint unsigned NOT NULL,
  `denumire` varchar(50) DEFAULT NULL,
  `descriere` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pret` int DEFAULT NULL,
  `id_categorie` int DEFAULT NULL,
  `alegere` varchar(50) DEFAULT NULL,
  `imagine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mydatabase.produse: ~22 rows (approximately)
INSERT INTO `produse` (`id`, `denumire`, `descriere`, `pret`, `id_categorie`, `alegere`, `imagine`) VALUES
	(0, 'Jachetă sport Relaxed Fit', 'Mărime: L\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială lejeră\r\nGuler: Guler ridicat\r\nStil: Smoching\r\nStil mânecă: Mâneci raglan\r\nDescriere: Albastru-închis/albastru, În culori bloc', 70, 5, 'Barbati', 'JachetaSportRelaxedFitBarbati.jpg'),
	(1, 'Tricou Relaxed Fit', 'Mărime: L\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci scurte\r\nCroială: Croială lejeră\r\nRăscroială: Decolteu rotund\r\nDescriere: Galben, Uni\r\nConcept: BASICS', 48, 1, 'Femei', 'TricouRelaxedFitFemei.jpg'),
	(2, 'Tricou de bumbac', 'Lungime: Lungime normală\r\nLungime mânecă: Cu mâneci scurte\r\nRăscroială: Decolteu rotund\r\nDescriere: Negru, Uni\r\nConcept: BASICS', 20, 1, 'Copii', 'TricouDeBumbacCopii.jpg'),
	(3, 'Tricou Long Fit', 'Mărime: M\r\nLungime: Lungă\r\nLungime mânecă: Cu mâneci scurte\r\nRăscroială: Decolteu rotund\r\nDescriere: Alb, Uni\r\nConcept: BASICS, DIVIDED', 35, 1, 'Barbati', 'TricouLongFitBarbati.jpg'),
	(4, 'Tricou cu imprimeu', 'Lungime: Lungime normală\r\nLungime mânecă: Cu mâneci scurte\r\nCroială: Croială largă\r\nRăscroială: Decolteu rotund\r\nDescriere: Bej-deschis/mov/verde, Fructe de pădure\r\nConcept: EXCLUSIV PENTRU BEBELUȘI\r\nBine de știut: Foarte moale', 38, 1, 'Bebelusi', 'TricouCuImprimeuBebelusi.jpg'),
	(5, 'Pantaloni Regular Fit din amestec de in', 'Mărime: Modelul are 185cm/6\'1" și poartă mărimea M\r\nMărime: Interiorul piciorului: Lungime: 76.0 cm (Mărimea L)\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie normală\r\nCroială: Croială normală\r\nDescriere: Crem, Uni\r\nConcept: H&M MAN', 130, 2, 'Barbati', 'PantaloniRegularFitDinAmestecDeInBarbati.jpg'),
	(6, 'Pantaloni de costum Skinny Fit', 'Mărime: Modelul are 188cm/6\'2" și poartă mărimea 50\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie normală\r\nCroială: Croială foarte strânsă\r\nStil: Pantaloni de costum\r\nDescriere: Uni\r\nConcept: H&M MAN', 120, 2, 'Barbati', 'PantaloniDeCostumSkinnyFitBarbati.jpg'),
	(7, 'Jachetă de baschet din DryMove', 'Lungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială largă\r\nGuler: Guler ridicat\r\nStil: Jachetă de baseball\r\nFuncţii: Înlătură umezeala\r\nDescriere: Albastru/alb, Uni\r\nConcept: H&M Move', 109, 5, 'Copii', 'JachetaDeBaschetDinDryMoveCopii.jpg'),
	(8, 'Hanorac Oversized Fit', 'Mărime: Modelul are 184cm/6\'0" și poartă mărimea M\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Supradimensionat\r\nStil: Bluză cu glugă\r\nDescriere: Negru/portocaliu, Venice', 50, 4, 'Barbati', 'HanoracOversizedFitBarbati.jpg'),
	(9, 'Hanorac cu imprimeu Relaxed Fit', 'Mărime: L\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială lejeră\r\nStil: Bluză cu glugă\r\nDescriere: Gri-închis/alb/negru', 129, 4, 'Copii', 'HanoracCuImprimeuRelaxedFitCopii.jpg'),
	(10, 'Cămașă din amestec de in albă', 'Mărime: M\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială normală\r\nGuler: Guler răsfrânt\r\nDescriere: Alb, Uni', 92, 3, 'Femei', 'CamasaDinAmestecDeInFemei.jpg'),
	(11, 'Cămașă din amestec de in', 'Marime: S\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială largă\r\nGuler: Guler răsfrânt\r\nDescriere: Negru, Uni', 89, 3, 'Copii', 'CamasaDinAmestecDeInCopii.jpg'),
	(12, 'Tricou Relaxed Fit', 'Mărime: M\r\nLungime: Lungă\r\nLungime mânecă: Cu mâneci lungi\r\nRăscroială: Decolteu tip V\r\nDescriere: Negru, Uni\r\nConcept: BASICS', 25, 1, 'Barbati', 'TricouRelaxedFitBarbati.jpg'),
	(13, 'Cămașă din amestec de in', 'Mărime: L\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci scurte\r\nCroială: Croială normală\r\nGuler: Cămașă cu guler deschis\r\nDescriere: Alb/negru, Cu dungi\r\nConcept: H&M MAN', 110, 3, 'Barbati', 'CamasaRegularFitDinAmestecDeInBarbati.jpg'),
	(14, 'Jachetă supradimensionată din denim', 'Mărime: M\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Supradimensionat\r\nGuler: Guler răsfrânt\r\nStil: Jachetă în stil camionagiu\r\nDescriere: Albastru-denim deschis, Uni\r\nConcept: DIVIDED', 200, 5, 'Femei', 'JachetaSupradimensionataDinDenim.jpg'),
	(15, 'Pantaloni largi de twill', 'Mărime: 38\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie înaltă\r\nCroială: Croială strânsă\r\nStil: Drept pe picioare, Largi\r\nDescriere: Negru, Uni', 85, 2, 'Femei', 'PantaloniLargiDeTwillFemei.jpg'),
	(16, 'Hanorac cu fermuar', 'Mărime: S\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială normală\r\nStil: Jachetă cu glugă\r\nDescriere: Albastru-închis, Uni\r\nConcept: BASICS, EVERYDAY FASHION', 90, 4, 'Femei', 'HanoracCuFermuarFemei.jpg'),
	(17, 'Loose Fit Jeans', 'Mărime: M\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie normală\r\nCroială: Croială largă\r\nStil: Drept pe picioare\r\nDescriere: Albastru-denim deschis, Uni', 110, 2, 'Copii', 'LooseFitJeansCopii.jpg'),
	(18, 'Pantaloni, 3 perechi', 'Mărime: 50 (0-1M)\r\nBucăți/Perechi: 3\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie înaltă\r\nDescriere: Uni', 60, 2, 'Bebelusi', 'PantaloniTreiPerechiBebelusi.jpg'),
	(19, 'Cămașă de bumbac', 'Mărime: 74 (6-9M)\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială normală\r\nGuler: Guler răsfrânt\r\nDescriere: Alb, Uni', 35, 3, 'Bebelusi', 'CamasaDeBumbacBebelusi.jpg'),
	(20, 'Hanorac cu fermuar', 'Mărime: 56(1-2M)\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială normală\r\nStil: Jachetă cu glugă\r\nDescriere: Bej/alb, Cu dungi\r\nConcept: BASICS', 55, 4, 'Bebelusi', 'HanoracCuFermuarBebelusi.jpg'),
	(21, 'Jachetă matlasată', 'Mărime: 50(0-1M)\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nRăscroială: Decolteu rotund\r\nDescriere: Gri-deschis/alb/galben-șofran, Cu motive, Umbrele\r\nConcept: EXCLUSIV PENTRU BEBELUȘI', 100, 5, 'Bebelusi', 'JachetaMatlasataBebelusi.jpg');

-- Dumping structure for table mydatabase.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `user_id` int unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.roles: ~0 rows (approximately)

-- Dumping structure for table mydatabase.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(3, 'Szucs Cristian', 'cristian.stefan.szucs@gmail.com', NULL, '$2y$10$Txr/ztI5qvda0kVJN1hssOI5NIjpsmwPNEornqNo.Yhq9ysU6L6A6', NULL, '2023-07-18 06:40:39', '2023-07-18 06:40:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
