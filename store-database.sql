-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2023 at 05:23 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `store`
--
CREATE DATABASE IF NOT EXISTS `store` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `store`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idcategory` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `dt_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idcategory`, `name`, `description`, `image`, `dt_created`) VALUES
(1, 'Luminate Foundation', 'Occupant (driver) (passenger) of pick-up truck or van injured in unspecified nontraffic accident, sequela', 'http://dummyimage.com/138x100.png/dddddd/000000', '2021-12-17 18:58:19'),
(2, 'Naproxen', 'Contusion of lung, bilateral, sequela', 'http://dummyimage.com/107x100.png/5fa2dd/ffffff', '2021-05-30 05:53:30'),
(3, 'SINGULAIR', 'Diabetes mellitus due to underlying condition with mild nonproliferative diabetic retinopathy without macular edema, unspecified eye', 'http://dummyimage.com/216x100.png/5fa2dd/ffffff', '2022-03-14 18:14:41'),
(4, 'Gabapentin', 'Other fracture of lower end of right femur, initial encounter for closed fracture', 'http://dummyimage.com/242x100.png/cc0000/ffffff', '2021-05-27 18:28:33'),
(5, 'Pramipexole Dihydrochloride', 'Unspecified open wound of lower back and pelvis with penetration into retroperitoneum, sequela', 'http://dummyimage.com/165x100.png/cc0000/ffffff', '2022-03-15 16:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `category_idcategory` int(11) NOT NULL,
  `photos` varchar(1024) DEFAULT NULL,
  `dt_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idproduct`, `name`, `price`, `category_idcategory`, `photos`, `dt_created`) VALUES
(1, 'RE NUTRIV RADIANT UV BASE', '507.47', 2, 'http://dummyimage.com/243x100.png/cc0000/ffffff', '2021-10-20 07:16:13'),
(2, 'Topcare childrens pain and fever', '545.94', 2, 'http://dummyimage.com/199x100.png/dddddd/000000', '2021-10-18 11:42:58'),
(3, 'Levothyroxine Sodium', '879.22', 3, 'http://dummyimage.com/165x100.png/5fa2dd/ffffff', '2022-04-05 03:24:49'),
(4, 'Cefaclor', '5.86', 5, 'http://dummyimage.com/134x100.png/dddddd/000000', '2021-09-02 22:55:35'),
(5, 'Amlodipine Besylate and Benazepril Hydrochloride', '992.83', 3, 'http://dummyimage.com/225x100.png/cc0000/ffffff', '2021-09-08 06:32:49'),
(6, 'Meloxicam', '53.19', 4, 'http://dummyimage.com/249x100.png/5fa2dd/ffffff', '2021-09-03 03:38:21'),
(7, 'Oil-Free Acne Cleanser', '966.50', 5, 'http://dummyimage.com/185x100.png/ff4444/ffffff', '2021-12-04 10:30:31'),
(8, 'Topcare childrens pain relief', '377.34', 4, 'http://dummyimage.com/149x100.png/5fa2dd/ffffff', '2021-09-09 19:02:22'),
(9, 'Fosinopril Sodium', '943.57', 5, 'http://dummyimage.com/130x100.png/ff4444/ffffff', '2021-06-24 15:59:09'),
(10, 'Givenchy Fluid Foundation Airy-light Mat Radiance SPF 20 Tint 8', '12.38', 2, 'http://dummyimage.com/113x100.png/dddddd/000000', '2021-06-16 03:11:07'),
(11, 'Betamethasone Dipropionate', '605.81', 5, 'http://dummyimage.com/172x100.png/dddddd/000000', '2021-08-14 08:45:48'),
(12, 'INDOMETHACIN', '479.26', 2, 'http://dummyimage.com/121x100.png/ff4444/ffffff', '2022-05-08 05:44:39'),
(13, 'RISPERDAL', '599.00', 5, 'http://dummyimage.com/247x100.png/cc0000/ffffff', '2021-12-10 12:22:51'),
(14, 'Pioglitazone Hydrochloride and Metformin Hydrochloride', '879.92', 2, 'http://dummyimage.com/228x100.png/cc0000/ffffff', '2021-12-08 22:52:56'),
(15, 'Inflammation I', '27.47', 5, 'http://dummyimage.com/128x100.png/5fa2dd/ffffff', '2021-06-04 12:26:31'),
(16, 'ESIKA', '453.09', 5, 'http://dummyimage.com/113x100.png/dddddd/000000', '2021-07-28 19:11:16'),
(17, 'DOPamine Hydrochloride', '884.76', 3, 'http://dummyimage.com/212x100.png/cc0000/ffffff', '2022-01-23 17:18:54'),
(18, 'Johnson Grass', '326.27', 3, 'http://dummyimage.com/228x100.png/ff4444/ffffff', '2021-09-18 09:30:20'),
(19, 'Focalin', '68.26', 4, 'http://dummyimage.com/210x100.png/ff4444/ffffff', '2022-04-27 01:38:49'),
(20, 'Xodol', '818.08', 3, 'http://dummyimage.com/186x100.png/cc0000/ffffff', '2022-02-14 17:32:48'),
(21, 'Gabapentin', '692.25', 2, 'http://dummyimage.com/199x100.png/ff4444/ffffff', '2022-04-27 20:06:48'),
(22, 'Metoprolol Tartrate', '811.68', 4, 'http://dummyimage.com/241x100.png/dddddd/000000', '2021-09-27 01:05:55'),
(23, 'Endopath-F', '390.61', 1, 'http://dummyimage.com/187x100.png/5fa2dd/ffffff', '2021-08-01 19:44:28'),
(24, 'acid reducer', '667.26', 3, 'http://dummyimage.com/131x100.png/dddddd/000000', '2022-05-03 14:09:12'),
(25, 'Fluconazole', '854.44', 4, 'http://dummyimage.com/185x100.png/ff4444/ffffff', '2022-03-17 00:40:21'),
(26, 'Methazolamide', '88.12', 3, 'http://dummyimage.com/199x100.png/5fa2dd/ffffff', '2021-08-02 18:47:46'),
(27, 'Easy Care First Aid Chest - Home and Workshop', '118.94', 1, 'http://dummyimage.com/182x100.png/cc0000/ffffff', '2021-06-06 22:57:20'),
(28, 'Glytone Clarifying SunVanish with Sunscreen', '115.84', 1, 'http://dummyimage.com/181x100.png/5fa2dd/ffffff', '2021-12-05 17:35:06'),
(29, 'Indomethacin', '467.12', 1, 'http://dummyimage.com/250x100.png/5fa2dd/ffffff', '2021-05-29 20:56:20'),
(30, 'ARTHROTEC', '603.91', 4, 'http://dummyimage.com/201x100.png/cc0000/ffffff', '2021-06-02 07:15:32'),
(31, 'Venlafaxine', '708.09', 5, 'http://dummyimage.com/160x100.png/5fa2dd/ffffff', '2022-03-18 21:47:13'),
(32, 'Carbon Dioxide', '632.78', 4, 'http://dummyimage.com/134x100.png/ff4444/ffffff', '2021-06-05 13:35:10'),
(33, 'PENTOXIFYLLINE', '662.78', 1, 'http://dummyimage.com/177x100.png/dddddd/000000', '2021-09-13 14:39:28'),
(34, 'BeneFIX', '993.34', 3, 'http://dummyimage.com/230x100.png/cc0000/ffffff', '2021-10-25 04:44:48'),
(35, 'LBEL EFFET PARFAIT Spots Reducing Effect Foundation SPF 18 - MEDIUM 6A', '31.69', 5, 'http://dummyimage.com/191x100.png/cc0000/ffffff', '2022-03-08 09:00:15'),
(36, 'anti bacterial hand sanitizer', '421.05', 4, 'http://dummyimage.com/212x100.png/cc0000/ffffff', '2021-10-01 00:27:14'),
(37, 'Tyzeka', '37.79', 1, 'http://dummyimage.com/101x100.png/ff4444/ffffff', '2021-12-12 16:08:01'),
(38, 'CAPTOPRIL', '774.35', 3, 'http://dummyimage.com/137x100.png/5fa2dd/ffffff', '2021-06-08 23:23:22'),
(39, 'Gabapentin', '845.22', 4, 'http://dummyimage.com/181x100.png/5fa2dd/ffffff', '2021-05-31 22:14:07'),
(40, 'Belladonna', '412.34', 3, 'http://dummyimage.com/194x100.png/dddddd/000000', '2022-03-20 09:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `idpurchase` int(11) NOT NULL,
  `user_iduser` int(11) DEFAULT NULL,
  `product_idproduct` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `dt_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`idpurchase`, `user_iduser`, `product_idproduct`, `quantity`, `discount`, `dt_created`) VALUES
(1, 10, 7, 2, '0.76', '2021-09-15 14:06:49'),
(2, 8, 15, 7, '0.80', '2021-08-21 09:42:55'),
(3, 19, 38, 2, '0.82', '2021-09-15 13:33:24'),
(4, 15, 16, 8, '0.78', '2021-07-29 11:13:25'),
(5, 3, 30, 2, '0.86', '2021-12-24 22:54:48'),
(6, 20, 11, 10, '0.34', '2022-02-23 16:24:27'),
(7, 14, 37, 10, '0.51', '2021-12-04 17:55:54'),
(8, 1, 16, 1, '0.36', '2021-10-18 03:35:04'),
(9, 11, 4, 4, '0.82', '2021-08-10 20:06:53'),
(10, 1, 24, 3, '0.35', '2022-05-20 17:44:59'),
(11, 1, 8, 2, '0.69', '2021-12-25 04:52:07'),
(12, 3, 39, 9, '0.49', '2022-01-27 03:27:57'),
(13, 3, 32, 5, '0.22', '2022-05-16 16:01:47'),
(14, 19, 26, 4, '0.71', '2022-02-21 00:08:25'),
(15, 19, 2, 9, '0.98', '2022-01-28 01:48:16'),
(16, 19, 20, 10, '0.27', '2022-03-15 11:39:28'),
(17, 19, 23, 7, '0.10', '2021-06-02 15:12:57'),
(18, 8, 35, 9, '0.95', '2022-04-02 23:46:43'),
(19, 18, 14, 1, '0.76', '2022-03-07 20:28:56'),
(20, 14, 7, 7, '0.56', '2022-04-07 21:18:28'),
(21, 10, 20, 3, '0.25', '2021-11-30 10:33:10'),
(22, 20, 12, 8, '0.81', '2021-09-06 00:06:05'),
(23, 9, 11, 1, '0.94', '2021-12-18 00:42:41'),
(24, 11, 33, 3, '0.81', '2022-04-16 12:19:33'),
(25, 12, 12, 7, '0.79', '2022-03-30 12:22:54'),
(26, 6, 16, 10, '0.01', '2021-07-27 12:58:14'),
(27, 11, 7, 8, '0.36', '2021-10-19 10:52:20'),
(28, 10, 33, 2, '0.56', '2021-12-09 16:11:53'),
(29, 11, 24, 5, '0.40', '2022-03-21 04:57:48'),
(30, 15, 11, 9, '0.73', '2022-02-12 03:23:13'),
(31, 1, 27, 7, '0.87', '2021-07-21 06:04:04'),
(32, 18, 22, 8, '0.43', '2021-11-22 08:40:58'),
(33, 4, 17, 4, '0.99', '2021-10-11 05:43:01'),
(34, 9, 18, 10, '0.18', '2021-12-21 14:16:49'),
(35, 4, 8, 10, '0.82', '2021-11-23 17:31:57'),
(36, 12, 5, 4, '0.01', '2021-12-03 22:50:28'),
(37, 18, 18, 1, '0.43', '2021-08-10 22:18:40'),
(38, 9, 25, 8, '1.00', '2021-08-18 11:02:09'),
(39, 3, 14, 7, '0.56', '2022-03-08 12:43:02'),
(40, 2, 16, 6, '0.57', '2021-09-04 12:34:09'),
(41, 20, 40, 5, '0.29', '2021-11-29 11:57:55'),
(42, 1, 19, 2, '0.16', '2021-10-18 21:57:11'),
(43, 8, 10, 3, '0.51', '2021-08-17 02:42:33'),
(44, 2, 12, 10, '0.14', '2021-06-12 05:54:59'),
(45, 2, 32, 1, '0.24', '2021-08-12 17:10:59'),
(46, 13, 38, 1, '0.11', '2021-12-19 06:34:16'),
(47, 17, 15, 5, '0.72', '2021-12-09 10:39:25'),
(48, 1, 29, 6, '0.84', '2021-10-09 22:42:15'),
(49, 15, 20, 9, '0.64', '2021-11-05 22:20:20'),
(50, 9, 9, 6, '0.03', '2021-09-20 10:20:44'),
(51, 9, 27, 8, '0.40', '2022-03-14 06:22:22'),
(52, 13, 26, 9, '0.03', '2022-05-10 23:52:54'),
(53, 18, 13, 5, '0.69', '2022-01-20 21:23:31'),
(54, 3, 13, 8, '0.24', '2022-05-18 19:41:15'),
(55, 2, 12, 2, '0.69', '2021-12-22 06:21:43'),
(56, 12, 14, 1, '0.56', '2021-09-22 20:13:47'),
(57, 16, 20, 8, '0.88', '2021-07-08 14:56:11'),
(58, 11, 17, 5, '0.05', '2021-12-27 10:38:14'),
(59, 5, 5, 10, '0.91', '2021-05-30 03:04:31'),
(60, 7, 39, 8, '0.04', '2021-07-23 00:18:52'),
(61, 2, 7, 4, '0.75', '2022-04-02 21:59:05'),
(62, 16, 19, 5, '0.66', '2022-05-18 02:04:16'),
(63, 15, 7, 3, '0.24', '2022-05-19 19:08:25'),
(64, 2, 4, 4, '0.33', '2022-03-10 05:54:05'),
(65, 3, 17, 9, '0.23', '2022-04-13 13:12:30'),
(66, 2, 23, 1, '0.89', '2021-07-07 04:14:34'),
(67, 1, 31, 4, '0.53', '2021-10-10 23:48:52'),
(68, 14, 27, 10, '0.69', '2022-03-13 04:09:05'),
(69, 3, 8, 1, '0.48', '2021-07-30 14:51:14'),
(70, 3, 17, 10, '0.32', '2021-12-01 01:10:57'),
(71, 1, 29, 8, '0.59', '2021-09-26 00:23:03'),
(72, 13, 28, 1, '0.05', '2021-08-19 03:29:07'),
(73, 15, 1, 4, '0.67', '2021-11-26 04:48:06'),
(74, 14, 31, 7, '0.85', '2022-02-27 15:47:48'),
(75, 10, 8, 5, '0.24', '2021-09-10 00:30:41'),
(76, 6, 24, 1, '0.39', '2021-11-27 00:51:56'),
(77, 2, 3, 8, '0.57', '2022-01-04 07:16:02'),
(78, 9, 4, 10, '0.65', '2022-03-12 09:06:24'),
(79, 5, 26, 4, '0.22', '2021-09-16 21:14:15'),
(80, 9, 31, 4, '0.64', '2021-10-10 18:51:18'),
(81, 8, 19, 10, '0.56', '2022-04-11 12:53:44'),
(82, 10, 11, 2, '0.88', '2022-04-26 18:52:53'),
(83, 11, 18, 3, '0.95', '2021-08-05 08:01:26'),
(84, 7, 20, 3, '0.85', '2022-03-01 05:17:27'),
(85, 17, 23, 3, '0.99', '2021-07-24 02:19:12'),
(86, 5, 35, 7, '0.68', '2021-07-12 09:50:47'),
(87, 5, 19, 10, '0.36', '2021-09-28 06:40:58'),
(88, 15, 10, 7, '0.62', '2022-01-25 09:32:45'),
(89, 16, 40, 1, '0.84', '2021-06-27 20:39:01'),
(90, 13, 36, 8, '0.27', '2022-05-22 14:00:32'),
(91, 20, 26, 2, '0.86', '2021-06-16 19:47:32'),
(92, 20, 22, 2, '0.68', '2022-04-24 13:24:11'),
(93, 9, 29, 7, '0.12', '2021-06-10 06:36:11'),
(94, 20, 9, 10, '0.54', '2022-01-05 08:24:05'),
(95, 12, 33, 4, '0.28', '2021-12-18 02:40:06'),
(96, 2, 33, 8, '0.32', '2021-11-26 16:54:41'),
(97, 5, 16, 4, '0.95', '2021-07-16 02:59:13'),
(98, 2, 35, 3, '0.14', '2021-07-20 06:53:43'),
(99, 20, 16, 6, '0.86', '2022-03-10 22:11:26'),
(100, 2, 11, 10, '0.96', '2022-04-01 15:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `avatar` varchar(1024) DEFAULT NULL,
  `address_name` varchar(45) DEFAULT NULL,
  `address_nr` varchar(10) DEFAULT NULL,
  `address_postal_code` varchar(45) DEFAULT NULL,
  `address_country` varchar(45) DEFAULT NULL,
  `dt_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `name`, `email`, `password`, `avatar`, `address_name`, `address_nr`, `address_postal_code`, `address_country`, `dt_created`) VALUES
(1, 'Estele Dickens', 'edickens0@phpbb.com', '3UPO9ZbA040H', 'https://robohash.org/quodinventoreconsequatur.png?size=50x50&set=set1', 'Randy', '2958', NULL, 'China', '2022-02-07 21:13:23'),
(2, 'Town McGuffog', 'tmcguffog1@instagram.com', 'yEEA3JqAw', 'https://robohash.org/idmaioresrerum.png?size=50x50&set=set1', 'Eastlawn', '3', NULL, 'China', '2021-11-03 05:55:30'),
(3, 'Panchito Jime', 'pjime2@reddit.com', 'fSfmIg3Ezx', 'https://robohash.org/quamdelectusdolore.png?size=50x50&set=set1', 'Tomscot', '94', '3720-546', 'Portugal', '2021-06-06 01:38:00'),
(4, 'Eugene Scholtis', 'escholtis3@comcast.net', 'uOpkNFM1mrQY', 'https://robohash.org/beataeutqui.png?size=50x50&set=set1', 'Hollow Ridge', '76033', '760050', 'Colombia', '2021-08-10 06:17:51'),
(5, 'Jess Murrhardt', 'jmurrhardt4@wikia.com', 'hZRs8M', 'https://robohash.org/recusandaeatdoloribus.png?size=50x50&set=set1', '4th', '2', '353147', 'Russia', '2021-06-05 18:13:47'),
(6, 'Molli Trevear', 'mtrevear5@domainmarket.com', 'csaKi4rX', 'https://robohash.org/hicautdolore.png?size=50x50&set=set1', 'Michigan', '5', '26930', 'Mexico', '2021-12-25 16:09:04'),
(7, 'Marigold Willcott', 'mwillcott6@360.cn', 'PQ2SwEJ0m', 'https://robohash.org/omniseaeos.png?size=50x50&set=set1', 'Coleman', '72745', '18320-000', 'Brazil', '2021-08-30 20:55:22'),
(8, 'Agretha Cardoe', 'acardoe7@mapy.cz', 'i1PYxB', 'https://robohash.org/quibusdamquisvoluptatem.png?size=50x50&set=set1', 'Pond', '0202', '58880', 'Mexico', '2021-07-26 21:21:56'),
(9, 'Joanna Costard', 'jcostard8@ocn.ne.jp', 'AkCgJnG', 'https://robohash.org/nesciuntautdeleniti.png?size=50x50&set=set1', 'Heffernan', '0', '453480', 'Russia', '2022-02-05 21:21:48'),
(10, 'Dix Hyland', 'dhyland9@twitter.com', 'iwe6D5', 'https://robohash.org/voluptasautemsequi.png?size=50x50&set=set1', 'Mallard', '88526', NULL, 'China', '2021-05-25 03:42:57'),
(11, 'Colver Lightbody', 'clightbodya@amazon.de', 'NEniVKBIWq', 'https://robohash.org/evenietanimialias.png?size=50x50&set=set1', 'Boyd', '56', '5004', 'Philippines', '2021-06-05 21:35:14'),
(12, 'Claudelle Waugh', 'cwaughb@nifty.com', 'g6Nxz8ViqPo', 'https://robohash.org/esteiusvoluptatibus.png?size=50x50&set=set1', 'Nelson', '81437', '613366', 'Russia', '2021-09-23 07:35:07'),
(13, 'Nelle Frediani', 'nfredianic@bbb.org', 'CluQ4aQHnd', 'https://robohash.org/natusmolestiasquo.png?size=50x50&set=set1', 'Schurz', '0601', '7216', 'Macedonia', '2022-01-18 00:14:04'),
(14, 'Dalia Devonport', 'ddevonportd@soundcloud.com', 'i5fhESJQ', 'https://robohash.org/autidet.png?size=50x50&set=set1', 'Hooker', '14144', '463-0015', 'Japan', '2022-02-22 09:24:38'),
(15, 'Corey Gianneschi', 'cgianneschie@hatena.ne.jp', 'wFn9gYNTCuf', 'https://robohash.org/expeditaassumendamagni.png?size=50x50&set=set1', 'Lien', '82161', NULL, 'Indonesia', '2021-12-14 16:24:36'),
(16, 'Alf Cattrell', 'acattrellf@i2i.jp', '9gKREA1b', 'https://robohash.org/beataevoluptatemomnis.png?size=50x50&set=set1', 'Weeping Birch', '141', NULL, 'China', '2021-12-01 18:26:15'),
(17, 'Boote Windebank', 'bwindebankg@furl.net', 'CUhgdSRJIGtX', 'https://robohash.org/sitinventoreconsectetur.png?size=50x50&set=set1', 'Declaration', '23', NULL, 'China', '2021-07-27 04:27:59'),
(18, 'Holly-anne O Canavan', 'hocanavanh@artisteer.com', 'YvLnkZgzY0', 'https://robohash.org/estrerumducimus.png?size=50x50&set=set1', 'Declaration', '120', '92179 CEDEX', 'France', '2022-02-21 20:59:14'),
(19, 'Leland Tacker', 'ltackeri@fastcompany.com', 'C2Nj8Sa9cW', 'https://robohash.org/reiciendisevenietaut.png?size=50x50&set=set1', 'Bluejay', '3154', NULL, 'Mongolia', '2021-09-11 14:56:05'),
(20, 'Jedd Derrington', 'jderringtonj@paypal.com', 'Bhpk8nD', 'https://robohash.org/assumendaetoptio.png?size=50x50&set=set1', 'Muir', '115', '69240', 'Pakistan', '2022-02-03 01:43:52'),
(21, 'humberto', 'hjmn@me.com', 'eddcc7500f93ed665510ac0e27f92e9a', '', '', '', '', '', '2023-05-23 22:09:02'),
(22, '', 'hjmn2@me.com', 'eddcc7500f93ed665510ac0e27f92e9a', '', '', '', '', '', '2023-05-30 21:49:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idproduct`,`category_idcategory`),
  ADD KEY `fk_product_category_idx` (`category_idcategory`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`idpurchase`),
  ADD KEY `fk_user_has_product_product1_idx` (`product_idproduct`),
  ADD KEY `fk_user_has_product_user1_idx` (`user_iduser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idproduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `idpurchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_idcategory`) REFERENCES `category` (`idcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `fk_user_has_product_product1` FOREIGN KEY (`product_idproduct`) REFERENCES `product` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_product_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;
