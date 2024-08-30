-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2024 at 01:35 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `drag` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `level` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `program` longtext NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `drag`, `name`, `level`, `phone`, `username`, `password`, `program`, `create_at`, `update_at`) VALUES
(1, 1, 'الدعم الفني', 'support', '929', 'dts-admin', 'dts-admin', 'dashboard,account,file,petition,setting,header,build,log,signout', '2024-08-30 13:33:01', '2024-08-30 13:33:52'),
(2, 2, 'مصطفى علي', 'client', '0770', 'admin', 'admin', 'dashboard,account,file,petition,setting,header,build,log,signout', '2024-08-30 13:33:57', '2024-08-30 13:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `tracking` bigint(20) NOT NULL,
  `ip` longtext NOT NULL,
  `column1` longtext NOT NULL,
  `column2` longtext NOT NULL,
  `column3` longtext NOT NULL,
  `column4` longtext NOT NULL,
  `column5` longtext NOT NULL,
  `column6` longtext NOT NULL,
  `column7` longtext NOT NULL,
  `column8` longtext NOT NULL,
  `calculation` varchar(500) NOT NULL,
  `reply` longtext NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `tracking`, `ip`, `column1`, `column2`, `column3`, `column4`, `column5`, `column6`, `column7`, `column8`, `calculation`, `reply`, `create_at`, `update_at`) VALUES
(1, 72221017250, '127.0.0.1', 'محمد علي', '07708059744', 'y@gmail.com', 'قطاع حكومي', 'نص الشكوى', 'https://storage.nodesbox.com/nodesbox.com/2024/08/30/2024_08_30_12075135597_4143214774052752.jpg\n\n', 'https://storage.nodesbox.com/nodesbox.com/2024/08/30/2024_08_30_12075135604_9831940214508096.jpg\n\n', 'empty', '9', 'تم الاجابة يرجى زيارة المركز', '2024-08-30 12:03:02.655273', '2024-08-30 12:04:15.301925'),
(2, 25698917250, '127.0.0.1', '234', '324234324', 'reer@gmasil.com', 'قطاع خاص', '234', 'https://storage.nodesbox.com/nodesbox.com/2024/08/30/2024_08_30_12075138075_8401563886367334.jpg\n\n', 'https://storage.nodesbox.com/nodesbox.com/2024/08/30/2024_08_30_12075138075_3071895238663608.jpg\n\n', 'empty', '1', '', '2024-08-30 12:08:55.490848', '2024-08-30 12:08:55.490848');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `drag` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `size` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `drag`, `id_account`, `name`, `description`, `size`, `type`, `create_at`, `update_at`) VALUES
(3, 1, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051650772_7727520966878838.jpg\n\n', '234', '54643', 'image/jpeg', '2024-07-22 16:06:39.532927', '2024-07-22 18:40:31.491836'),
(4, 4, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051654608_6959446795468503.jpg\n\n', '98', '54643', 'image/jpeg', '2024-07-22 16:15:47.828245', '2024-07-22 16:15:47.828245'),
(5, 3, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051689839_1622475847080130.jpg\n\n', '', '54643', 'image/jpeg', '2024-07-22 17:39:40.321061', '2024-07-22 18:40:31.487201'),
(6, 2, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051700052_5260446215802374.jpg\n\n', 'y', '54643', 'image/jpeg', '2024-07-22 18:03:59.368124', '2024-07-22 18:40:31.489693'),
(7, 5, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051705582_5090754170170377.docx\n\n', 's', '2214617', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2024-07-22 18:17:09.473268', '2024-07-22 18:40:31.483200'),
(8, 6, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051717279_3340067919773856.jpg\n\n', 's', '251590', 'image/jpeg', '2024-07-22 18:45:00.238197', '2024-07-22 18:45:00.238197'),
(9, 7, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051718539_7241077385879212.jpg\n\n', '', '251590', 'image/jpeg', '2024-07-22 18:48:00.326006', '2024-07-22 18:48:00.326006'),
(10, 8, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051718644_9125825792937783.jpg\n\n', '', '1755043', 'image/jpeg', '2024-07-22 18:48:15.001778', '2024-07-22 18:48:15.001778'),
(11, 9, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/22/2024_07_22_12051718987_8771822339773345.jpg\n\n', 'ث', '1755043', 'image/jpeg', '2024-07-22 18:49:04.919529', '2024-07-22 18:49:04.919529'),
(12, 10, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052155934_3127803518804655.jpg\n\n', '8', '1755043', 'image/jpeg', '2024-07-23 12:09:25.260356', '2024-07-23 12:09:25.260356'),
(13, 11, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052156039_2535125453711819.jpg\n\n', '', '1755043', 'image/jpeg', '2024-07-23 12:09:40.778166', '2024-07-23 12:09:40.778166'),
(14, 12, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052157691_3311914311912868.jpg\n\n', 's', '1755043', 'image/jpeg', '2024-07-23 12:13:36.498081', '2024-07-23 12:13:36.498081'),
(15, 13, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052157845_5803739349914267.jpg\n\n', 'w', '1755043', 'image/jpeg', '2024-07-23 12:13:58.407598', '2024-07-23 12:13:58.407598'),
(16, 14, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052157922_8010986169103746.jpg\n\n', 'e', '1755043', 'image/jpeg', '2024-07-23 12:14:09.984607', '2024-07-23 12:14:09.984607'),
(17, 16, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052157978_8873673682412184.jpg\n\n', 'e', '2102731', 'image/jpeg', '2024-07-23 12:14:17.588137', '2024-07-23 13:59:01.435163'),
(18, 15, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052158069_4211104171470170.jpg\n\n', 'e', '4140306', 'image/jpeg', '2024-07-23 12:14:31.176850', '2024-07-23 13:59:01.438645'),
(19, 17, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052158202_2894177772189643.jpg\n\n', 'e', '2102731', 'image/jpeg', '2024-07-23 12:14:50.012933', '2024-07-23 12:14:50.012933'),
(20, 18, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052200559_6220292885047548.jpg\n\n', '', '251590', 'image/jpeg', '2024-07-23 13:55:40.711359', '2024-07-23 13:55:40.711359'),
(21, 19, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052203905_8972610040175305.jpg\n\n', '', '251590', 'image/jpeg', '2024-07-23 14:03:38.217274', '2024-07-23 14:03:38.217274'),
(22, 20, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052212221_8880848197481523.jpg\n\n', 's', '2102731', 'image/jpeg', '2024-07-23 14:23:27.004534', '2024-07-23 14:23:27.004534'),
(24, 21, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/23/2024_07_23_12052212655_5167499044788600.jpg\n\n', 's', '1755043', 'image/jpeg', '2024-07-23 14:24:28.390246', '2024-07-25 15:46:45.121347'),
(26, 24, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/24/2024_07_24_12052806598_1630737439276177.jpg\n\n', '', '1755043', 'image/jpeg', '2024-07-24 13:58:38.563733', '2024-08-28 21:21:33.742519'),
(27, 22, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/25/2024_07_25_12053456156_1637898247734962.png\n\n', '', '205185', 'image/png', '2024-07-25 15:45:12.769027', '2024-07-26 15:25:45.079995'),
(28, 25, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/25/2024_07_25_12053458270_8883847425235347.png\n\n', '', '205185', 'image/png', '2024-07-25 15:50:15.626069', '2024-08-28 21:21:33.740831'),
(33, 23, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/26/2024_07_26_12054067368_4008741093405384.svg\n\n', 'logo', '4180', 'image/svg+xml', '2024-07-26 16:00:29.163604', '2024-07-26 17:46:46.307572'),
(35, 28, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/28/2024_07_28_12054932372_6598210633815444.jpg\n\n', '', '34875', 'image/jpeg', '2024-07-28 02:20:02.192538', '2024-08-23 00:14:56.492510'),
(36, 27, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/28/2024_07_28_12054933751_4260795723783414.jpg\n\n', '', '35455', 'image/jpeg', '2024-07-28 02:23:19.011866', '2024-08-23 00:14:56.494758'),
(37, 26, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/07/30/2024_07_30_12056543114_6160070736721323.mp4\n\n', '', '2937024', 'video/mp4', '2024-07-30 18:15:09.205277', '2024-08-23 00:14:56.497376'),
(38, 29, 268, 'Invalid file Extensions', '', '17730', 'image/webp', '2024-08-29 19:53:36.260352', '2024-08-29 19:53:36.260352'),
(40, 31, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/08/29/2024_08_29_12074741042_6354000791644232.png\n\n', '', '788017', 'image/png', '2024-08-29 20:23:35.343669', '2024-08-29 20:23:35.343669'),
(41, 32, 268, 'https://storage.nodesbox.com/nodesbox.com/2024/08/29/2024_08_29_12074741728_6540782949789143.png\n\n', 'pdf-header', '790003', 'image/png', '2024-08-29 20:25:12.675861', '2024-08-29 20:25:12.675861');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `json` longtext NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `json`, `create_at`, `update_at`) VALUES
(1, '[{\"type\":\"text\",\"label\":\"الأسم الثلاثي\",\"req\":1,\"dis\":1},{\"type\":\"text\",\"label\":\"رقم الهاتف\",\"req\":0,\"dis\":1},{\"type\":\"email\",\"label\":\"البريد الألكتروني\",\"req\":0,\"dis\":0},{\"type\":\"select\",\"label\":\"الجهة المشتكي عليها\",\"req\":0,\"dis\":0,\"choices\":[{\"label\":\"قطاع حكومي\",\"sel\":0},{\"label\":\"قطاع خاص\",\"sel\":0}]},{\"type\":\"text\",\"label\":\"نص الشكوى\",\"req\":1,\"dis\":1},{\"type\":\"file\",\"label\":\"محتوى الشكوى\",\"req\":0,\"dis\":0},{\"type\":\"file\",\"label\":\"المرفق رقم 1\",\"req\":1,\"dis\":0},{\"type\":\"file\",\"label\":\"المرفق رقم 2\",\"req\":0,\"dis\":0}]', '2024-08-13 15:36:07', '2024-08-30 12:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `header` longtext NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `header`, `create_at`, `update_at`) VALUES
(1, '<div class=\"banner\">\n	<img src=\"img/logo.svg\">\n	<p>النظام الألكتروني لتتبع شكاوى المواطنين</p>\n</div>\n\n<style>\n.banner{\n	position:sticky;\n	top:0;\n	width:100%;\n	height:50px;\n	user-select:none;\n	background-image: linear-gradient(#2c3e4e, #2c3e4e);\n	display:flex;\n	align-items:center;\n	justify-content:center;\n	flex-direction:column;\n	z-index:1;\n}\n\n.banner img{\n	position:absolute;\n	width:45px;\n	height:45px;\n	right: calc(50% - 220px);\n	}\n\n.banner p{\n	font-size:17px;\n	color:#FFFFFF;\n	line-height:1.2;\n	margin:0;\n	}\n\n@media (max-width: 700px){\n.banner img{\n	right:2%;\n	}\n.banner p{\n	font-size:16px;\n	}\n}\n</style>', '2024-07-26 13:39:45.000000', '2024-08-30 13:09:55.190980');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `level` varchar(500) NOT NULL,
  `ip` varchar(500) NOT NULL,
  `browser_details` text NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `id_account`, `name`, `phone`, `level`, `ip`, `browser_details`, `create_at`, `update_at`) VALUES
(1, 268, 'amelia', '7890', 'user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-23 13:10:40.507613', '2024-07-23 13:10:40.507613'),
(2, 268, 'amelia', '7890', 'user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-23 13:14:23.012861', '2024-07-23 13:14:23.012861'),
(3, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-23 13:16:27.087961', '2024-07-23 13:16:27.087961'),
(4, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-23 14:31:42.358996', '2024-07-23 14:31:42.358996'),
(5, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-23 14:34:33.899604', '2024-07-23 14:34:33.899604'),
(6, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-23 14:40:23.171868', '2024-07-23 14:40:23.171868'),
(7, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-23 14:43:21.076812', '2024-07-23 14:43:21.076812'),
(8, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 12:29:08.859186', '2024-07-24 12:29:08.859186'),
(9, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 13:48:25.614767', '2024-07-24 13:48:25.614767'),
(10, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 14:22:15.317481', '2024-07-24 14:22:15.317481'),
(11, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 20:55:42.085973', '2024-07-24 20:55:42.085973'),
(12, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 20:59:44.040165', '2024-07-24 20:59:44.040165'),
(13, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 21:30:39.639104', '2024-07-24 21:30:39.639104'),
(14, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 21:34:05.879118', '2024-07-24 21:34:05.879118'),
(15, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 21:36:48.856919', '2024-07-24 21:36:48.856919'),
(16, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 21:51:50.096596', '2024-07-24 21:51:50.096596'),
(17, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 21:54:56.627331', '2024-07-24 21:54:56.627331'),
(18, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-24 21:55:50.546383', '2024-07-24 21:55:50.546383'),
(19, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 02:29:23.280335', '2024-07-25 02:29:23.280335'),
(20, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 02:29:30.831717', '2024-07-25 02:29:30.831717'),
(21, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 02:47:02.575108', '2024-07-25 02:47:02.575108'),
(22, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 13:11:32.344092', '2024-07-25 13:11:32.344092'),
(23, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 14:12:33.504948', '2024-07-25 14:12:33.504948'),
(24, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 14:50:09.374298', '2024-07-25 14:50:09.374298'),
(25, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 15:30:39.657410', '2024-07-25 15:30:39.657410'),
(26, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 15:54:48.646726', '2024-07-25 15:54:48.646726'),
(27, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 15:55:03.046482', '2024-07-25 15:55:03.046482'),
(28, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 16:01:54.984573', '2024-07-25 16:01:54.984573'),
(29, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 16:02:09.771101', '2024-07-25 16:02:09.771101'),
(30, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 16:02:59.314233', '2024-07-25 16:02:59.314233'),
(31, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 16:05:12.637031', '2024-07-25 16:05:12.637031'),
(32, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 16:27:11.472531', '2024-07-25 16:27:11.472531'),
(33, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-25 16:33:20.606332', '2024-07-25 16:33:20.606332'),
(34, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 01:56:24.354001', '2024-07-26 01:56:24.354001'),
(35, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 03:58:37.177258', '2024-07-26 03:58:37.177258'),
(36, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 14:33:49.331192', '2024-07-26 14:33:49.331192'),
(37, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:17:55.221563', '2024-07-26 16:17:55.221563'),
(38, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:33:35.178337', '2024-07-26 16:33:35.178337'),
(39, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:36:04.750484', '2024-07-26 16:36:04.750484'),
(40, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:36:38.805531', '2024-07-26 16:36:38.805531'),
(41, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:39:14.451171', '2024-07-26 16:39:14.451171'),
(42, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:50:50.991770', '2024-07-26 16:50:50.991770'),
(43, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:51:14.846036', '2024-07-26 16:51:14.846036'),
(44, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:52:00.955372', '2024-07-26 16:52:00.955372'),
(45, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:54:00.162049', '2024-07-26 16:54:00.162049'),
(46, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 17:11:46.369977', '2024-07-26 17:11:46.369977'),
(47, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 17:26:04.260202', '2024-07-26 17:26:04.260202'),
(48, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 17:36:11.380503', '2024-07-26 17:36:11.380503'),
(49, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 17:38:24.035314', '2024-07-26 17:38:24.035314'),
(50, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 17:39:00.078207', '2024-07-26 17:39:00.078207'),
(51, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 17:41:19.857921', '2024-07-26 17:41:19.857921'),
(52, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 17:45:40.104374', '2024-07-26 17:45:40.104374'),
(53, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 18:04:56.314428', '2024-07-26 18:04:56.314428'),
(54, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 18:22:19.941300', '2024-07-26 18:22:19.941300'),
(55, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 18:58:57.485620', '2024-07-26 18:58:57.485620'),
(56, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 15:08:41.976807', '2024-07-27 15:08:41.976807'),
(57, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 15:30:29.647614', '2024-07-27 15:30:29.647614'),
(58, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 17:04:34.094365', '2024-07-27 17:04:34.094365'),
(59, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 17:08:35.939905', '2024-07-27 17:08:35.939905'),
(60, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 17:11:00.851196', '2024-07-27 17:11:00.851196'),
(61, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 18:05:52.834583', '2024-07-27 18:05:52.834583'),
(62, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 18:52:01.888497', '2024-07-27 18:52:01.888497'),
(63, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 19:07:18.336641', '2024-07-27 19:07:18.336641'),
(64, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 20:50:43.276211', '2024-07-27 20:50:43.276211'),
(65, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 21:36:18.334736', '2024-07-27 21:36:18.334736'),
(66, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 23:33:28.073326', '2024-07-27 23:33:28.073326'),
(67, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-28 01:43:37.724913', '2024-07-28 01:43:37.724913'),
(68, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-28 02:07:32.706810', '2024-07-28 02:07:32.706810'),
(69, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-28 02:19:51.391620', '2024-07-28 02:19:51.391620'),
(70, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-28 02:25:46.875349', '2024-07-28 02:25:46.875349'),
(71, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-29 13:07:30.222023', '2024-07-29 13:07:30.222023'),
(72, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 13:04:23.441483', '2024-07-30 13:04:23.441483'),
(73, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 13:37:58.248179', '2024-07-30 13:37:58.248179'),
(74, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 14:58:53.994887', '2024-07-30 14:58:53.994887'),
(75, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 15:05:08.651051', '2024-07-30 15:05:08.651051'),
(76, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 17:05:52.629838', '2024-07-30 17:05:52.629838'),
(77, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 17:22:23.815971', '2024-07-30 17:22:23.815971'),
(78, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 17:48:01.243265', '2024-07-30 17:48:01.243265'),
(79, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 18:16:52.391416', '2024-07-30 18:16:52.391416'),
(80, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 18:22:38.370988', '2024-07-30 18:22:38.370988'),
(81, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 18:24:14.456179', '2024-07-30 18:24:14.456179'),
(82, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 18:24:21.938768', '2024-07-30 18:24:21.938768'),
(83, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 18:25:00.696742', '2024-07-30 18:25:00.696742'),
(84, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 18:54:41.466212', '2024-07-30 18:54:41.466212'),
(85, 268, 'amelia', '7890', 'supportt', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-07-31 02:25:48.174039', '2024-07-31 02:25:48.174039'),
(86, 268, 'amelia', '7890', 'supportt', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-07-31 02:37:03.269016', '2024-07-31 02:37:03.269016'),
(87, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-31 02:41:28.911881', '2024-07-31 02:41:28.911881'),
(88, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-31 12:00:10.683058', '2024-07-31 12:00:10.683058'),
(89, 268, 'amelia', '7890', 'supportt', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-07-31 12:01:21.220062', '2024-07-31 12:01:21.220062'),
(90, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-31 12:01:30.717947', '2024-07-31 12:01:30.717947'),
(91, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-31 21:24:41.548070', '2024-07-31 21:24:41.548070'),
(92, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-01 01:24:54.209151', '2024-08-01 01:24:54.209151'),
(93, 268, 'amelia', '7890', 'supportt', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 01:56:47.765270', '2024-08-01 01:56:47.765270'),
(94, 268, 'amelia', '7890', 'supportt', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 02:11:54.544672', '2024-08-01 02:11:54.544672'),
(95, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-01 12:36:25.651799', '2024-08-01 12:36:25.651799'),
(96, 268, 'amelia', '7890', 'supportt', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 12:50:40.153800', '2024-08-01 12:50:40.153800'),
(97, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 12:36:44.860998', '2024-08-02 12:36:44.860998'),
(98, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 14:22:05.965215', '2024-08-02 14:22:05.965215'),
(99, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 14:30:53.153507', '2024-08-02 14:30:53.153507'),
(100, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-05 00:22:44.718989', '2024-08-05 00:22:44.718989'),
(101, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-05 02:13:47.525217', '2024-08-05 02:13:47.525217'),
(102, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-05 03:32:55.728934', '2024-08-05 03:32:55.728934'),
(103, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-05 15:06:36.438175', '2024-08-05 15:06:36.438175'),
(104, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-12 01:59:21.732261', '2024-08-12 01:59:21.732261'),
(105, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 15:12:44.132981', '2024-08-13 15:12:44.132981'),
(106, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 15:18:56.141996', '2024-08-13 15:18:56.141996'),
(107, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 16:02:25.894477', '2024-08-13 16:02:25.894477'),
(108, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 17:00:15.276793', '2024-08-13 17:00:15.276793'),
(109, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 17:09:54.945165', '2024-08-13 17:09:54.945165'),
(110, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 17:12:08.866911', '2024-08-13 17:12:08.866911'),
(111, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 17:17:32.768499', '2024-08-13 17:17:32.768499'),
(112, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 02:34:32.046883', '2024-08-14 02:34:32.046883'),
(113, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 11:59:07.033727', '2024-08-14 11:59:07.033727'),
(114, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 12:45:17.714018', '2024-08-14 12:45:17.714018'),
(115, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 15:01:56.264317', '2024-08-14 15:01:56.264317'),
(116, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 16:47:10.128808', '2024-08-14 16:47:10.128808'),
(117, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 16:49:09.987540', '2024-08-14 16:49:09.987540'),
(118, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 16:58:05.195546', '2024-08-14 16:58:05.195546'),
(119, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 17:05:41.517188', '2024-08-14 17:05:41.517188'),
(120, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 17:58:10.037879', '2024-08-14 17:58:10.037879'),
(121, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 18:27:12.043566', '2024-08-14 18:27:12.043566'),
(122, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-15 01:22:33.355752', '2024-08-15 01:22:33.355752'),
(123, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-19 15:32:27.757262', '2024-08-19 15:32:27.757262'),
(124, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 11:58:57.011117', '2024-08-20 11:58:57.011117'),
(125, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 18:18:17.917846', '2024-08-20 18:18:17.917846'),
(126, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 19:03:18.183471', '2024-08-20 19:03:18.183471'),
(127, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 19:49:06.918369', '2024-08-20 19:49:06.918369'),
(128, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-21 12:33:20.615676', '2024-08-21 12:33:20.615676'),
(129, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-21 18:53:11.776652', '2024-08-21 18:53:11.776652'),
(130, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-22 11:56:14.221412', '2024-08-22 11:56:14.221412'),
(131, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-22 23:52:59.596616', '2024-08-22 23:52:59.596616'),
(132, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-23 03:14:11.468515', '2024-08-23 03:14:11.468515'),
(133, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-25 02:08:52.080608', '2024-08-25 02:08:52.080608'),
(134, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-28 13:24:24.554311', '2024-08-28 13:24:24.554311'),
(135, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-28 15:01:53.915267', '2024-08-28 15:01:53.915267'),
(136, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-28 16:15:11.697278', '2024-08-28 16:15:11.697278'),
(137, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-28 19:41:36.010528', '2024-08-28 19:41:36.010528'),
(138, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-29 01:13:13.242272', '2024-08-29 01:13:13.242272'),
(139, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-29 13:10:54.946313', '2024-08-29 13:10:54.946313'),
(140, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-29 13:21:45.105234', '2024-08-29 13:21:45.105234'),
(141, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-29 15:32:39.336810', '2024-08-29 15:32:39.336810'),
(142, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-29 19:20:02.833951', '2024-08-29 19:20:02.833951'),
(143, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-29 20:17:37.304555', '2024-08-29 20:17:37.304555'),
(144, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-29 20:28:50.816879', '2024-08-29 20:28:50.816879'),
(145, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-29 20:59:01.722583', '2024-08-29 20:59:01.722583'),
(146, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-30 00:06:38.093795', '2024-08-30 00:06:38.093795'),
(147, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-30 01:44:24.061460', '2024-08-30 01:44:24.061460'),
(148, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-30 01:58:33.511147', '2024-08-30 01:58:33.511147'),
(149, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-30 02:02:27.702648', '2024-08-30 02:02:27.702648'),
(150, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-30 11:58:24.493871', '2024-08-30 11:58:24.493871'),
(151, 268, 'amelia', '7890', 'supportt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-30 13:16:10.616844', '2024-08-30 13:16:10.616844');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `system` varchar(1000) NOT NULL,
  `favicon` longtext NOT NULL,
  `printheader` longtext NOT NULL,
  `headerpdf` longtext NOT NULL,
  `expire` date DEFAULT NULL,
  `storagebox` longtext NOT NULL,
  `version` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `system`, `favicon`, `printheader`, `headerpdf`, `expire`, `storagebox`, `version`) VALUES
(1, 'دائرة صحة كركوك', 'نظام تتبع طلبات المواطنين', 'https://storage.nodesbox.com/nodesbox.com/2024/07/26/2024_07_26_12054072639_9869901170084973.svg', 'https://storage.nodesbox.com/nodesbox.com/2024/07/28/2024_07_28_12054933751_4260795723783414.jpg', 'https://storage.nodesbox.com/nodesbox.com/2024/08/29/2024_08_29_12074741728_6540782949789143.png', '2025-08-28', 'https://api1.nodesbox.com/index.php?linkurl=external&token=grfc121234r344efde&domain=nodesbox.com', 'v11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
