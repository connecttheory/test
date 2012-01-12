-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2012 at 03:50 PM
-- Server version: 5.0.92
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ngtv2_actived`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL auto_increment,
  `project_id` int(11) default NULL,
  `caption` varchar(100) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `proj_photo_file_name` varchar(255) default NULL,
  `proj_photo_content_type` varchar(255) default NULL,
  `proj_photo_file_size` int(11) default NULL,
  `proj_photo_updated_at` datetime default NULL,
  `carimage` varchar(255) default NULL,
  `position` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_images_on_project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=451 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `project_id`, `caption`, `created_at`, `updated_at`, `proj_photo_file_name`, `proj_photo_content_type`, `proj_photo_file_size`, `proj_photo_updated_at`, `carimage`, `position`) VALUES
(2, NULL, NULL, '2011-12-05 19:59:13', '2011-12-05 19:59:13', NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, '2011-12-05 19:59:17', '2011-12-05 19:59:17', NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, '2011-12-05 20:00:36', '2011-12-05 20:00:36', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 3, NULL, '2011-12-05 20:42:15', '2011-12-05 20:42:15', NULL, NULL, NULL, NULL, 'd722596c5d5d9a50b6a5bdd57258bd30f5679bea.jpeg', NULL),
(31, 3, NULL, '2011-12-05 20:42:16', '2011-12-05 20:42:16', NULL, NULL, NULL, NULL, 'better_mistakes.jpeg', NULL),
(32, 3, NULL, '2011-12-05 20:42:18', '2011-12-05 20:42:18', NULL, NULL, NULL, NULL, 'tumblr_l9maqu4bmY1qzn34eo1_500.jpeg', NULL),
(33, 3, NULL, '2011-12-05 20:42:18', '2011-12-05 20:42:18', NULL, NULL, NULL, NULL, '11bb0ce39c320a1e9266353c253f061c9c229740.jpeg', NULL),
(34, 3, NULL, '2011-12-05 20:42:19', '2011-12-05 20:42:19', NULL, NULL, NULL, NULL, 'tumblr_lie6bqDoS21qh2g2ro1_500.jpeg', NULL),
(35, 3, NULL, '2011-12-05 20:42:19', '2011-12-05 20:42:19', NULL, NULL, NULL, NULL, '217655_1920066292024_1553056560_2056419_3990564_n.jpeg', NULL),
(36, 3, NULL, '2011-12-05 20:42:22', '2011-12-05 20:42:22', NULL, NULL, NULL, NULL, 'tumblr_l98nx8GwMY1qcmlpfo1_500.png', NULL),
(37, 3, NULL, '2011-12-05 20:42:23', '2011-12-05 20:42:23', NULL, NULL, NULL, NULL, 'NudeStudy5.jpeg', NULL),
(38, 3, NULL, '2011-12-05 20:42:24', '2011-12-05 20:42:24', NULL, NULL, NULL, NULL, 'tumblr_ll7lfkqGhW1qd542r.jpeg', NULL),
(39, 3, NULL, '2011-12-05 20:42:27', '2011-12-05 20:42:27', NULL, NULL, NULL, NULL, 'sayi30.jpeg', NULL),
(40, 3, NULL, '2011-12-05 20:42:27', '2011-12-05 20:42:27', NULL, NULL, NULL, NULL, 'monster.jpeg', NULL),
(41, 3, NULL, '2011-12-05 20:42:27', '2011-12-05 20:42:27', NULL, NULL, NULL, NULL, 'OHSHITSON____1217751596.jpeg', NULL),
(42, 3, NULL, '2011-12-05 20:42:27', '2011-12-05 20:42:27', NULL, NULL, NULL, NULL, 'ngtv-channel46-upclose.jpg', NULL),
(43, 3, NULL, '2011-12-05 20:42:28', '2011-12-05 20:42:28', NULL, NULL, NULL, NULL, 'toko-typeface-2.jpeg', NULL),
(44, 3, NULL, '2011-12-05 20:42:28', '2011-12-05 20:42:28', NULL, NULL, NULL, NULL, 'sailing.png', NULL),
(45, 3, NULL, '2011-12-05 20:45:02', '2011-12-05 20:45:02', NULL, NULL, NULL, NULL, '1268227091-1.jpeg', NULL),
(46, 3, NULL, '2011-12-05 20:45:04', '2011-12-05 20:45:04', NULL, NULL, NULL, NULL, 'scook_201_0.jpeg', NULL),
(47, 3, NULL, '2011-12-05 20:45:06', '2011-12-05 20:45:06', NULL, NULL, NULL, NULL, '74-germany-40.jpeg', NULL),
(48, 3, NULL, '2011-12-05 20:45:10', '2011-12-05 20:45:10', NULL, NULL, NULL, NULL, '21MikeDornseifBIG.jpeg', NULL),
(49, 3, NULL, '2011-12-05 20:45:12', '2011-12-05 20:45:12', NULL, NULL, NULL, NULL, 'tumblr_lpvvsacIAr1qbl3i2o1_r1_500.gif', NULL),
(50, 3, NULL, '2011-12-05 20:45:13', '2011-12-05 20:45:13', NULL, NULL, NULL, NULL, '70-newzealandbutterfly1.jpeg', NULL),
(51, 3, NULL, '2011-12-05 20:46:23', '2011-12-05 20:46:23', NULL, NULL, NULL, NULL, 'emerald-city-comicon-20100309-084835.jpeg', NULL),
(52, 3, NULL, '2011-12-05 20:46:23', '2011-12-05 20:46:23', NULL, NULL, NULL, NULL, '4904829122_536ecf82d5_z.jpeg', NULL),
(53, 3, NULL, '2011-12-05 20:46:24', '2011-12-05 20:46:24', NULL, NULL, NULL, NULL, '3color_image_triptych.gif', NULL),
(65, NULL, NULL, '2011-12-05 21:04:44', '2011-12-05 21:04:44', NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, NULL, '2011-12-05 21:06:57', '2011-12-05 21:06:57', NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, NULL, '2011-12-05 21:07:00', '2011-12-05 21:07:00', NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, '2011-12-05 21:51:19', '2011-12-05 21:51:19', NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, '2011-12-05 21:52:14', '2011-12-05 21:52:14', NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, '2011-12-05 21:54:37', '2011-12-05 21:54:37', NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, '2011-12-05 21:55:32', '2011-12-05 21:55:32', NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, NULL, '2011-12-05 21:57:27', '2011-12-05 21:57:27', NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, NULL, '2011-12-05 22:02:36', '2011-12-05 22:02:36', NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, '2011-12-05 22:02:42', '2011-12-05 22:02:42', NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, NULL, '2011-12-05 22:02:58', '2011-12-05 22:02:58', NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, NULL, '2011-12-05 22:03:03', '2011-12-05 22:03:03', NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, NULL, '2011-12-05 22:03:15', '2011-12-05 22:03:15', NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, '2011-12-05 22:03:18', '2011-12-05 22:03:18', NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, NULL, '2011-12-05 22:03:21', '2011-12-05 22:03:21', NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, '2011-12-05 22:03:26', '2011-12-05 22:03:26', NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, NULL, '2011-12-05 22:03:28', '2011-12-05 22:03:28', NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, NULL, '2011-12-05 22:03:31', '2011-12-05 22:03:31', NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, NULL, '2011-12-05 22:03:33', '2011-12-05 22:03:33', NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, '2011-12-05 22:03:37', '2011-12-05 22:03:37', NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, NULL, '2011-12-05 22:03:57', '2011-12-05 22:03:57', NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, NULL, '2011-12-05 22:05:32', '2011-12-05 22:05:32', NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, NULL, '2011-12-05 22:11:42', '2011-12-05 22:11:42', NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, NULL, '2011-12-05 22:12:36', '2011-12-05 22:12:36', NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, NULL, '2011-12-05 22:12:55', '2011-12-05 22:12:55', NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, NULL, '2011-12-05 22:23:35', '2011-12-05 22:23:35', NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, '2011-12-05 22:23:39', '2011-12-05 22:23:39', NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, NULL, '2011-12-05 22:23:53', '2011-12-05 22:23:53', NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, '2011-12-05 22:23:58', '2011-12-05 22:23:58', NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, NULL, '2011-12-05 22:25:07', '2011-12-05 22:25:07', NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, NULL, '2011-12-05 22:53:15', '2011-12-05 22:53:15', NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, NULL, '2011-12-05 22:53:22', '2011-12-05 22:53:22', NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, '2011-12-05 22:53:28', '2011-12-05 22:53:28', NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, '2011-12-05 23:12:53', '2011-12-05 23:12:53', NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, '2011-12-05 23:17:35', '2011-12-05 23:17:35', NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, NULL, '2011-12-05 23:27:14', '2011-12-05 23:27:14', NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, '2011-12-05 23:27:51', '2011-12-05 23:27:51', NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, NULL, '2011-12-05 23:28:05', '2011-12-05 23:28:05', NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, NULL, '2011-12-05 23:28:19', '2011-12-05 23:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(114, NULL, NULL, '2011-12-05 23:28:22', '2011-12-05 23:28:22', NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, NULL, '2011-12-05 23:28:30', '2011-12-05 23:28:30', NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, NULL, '2011-12-05 23:28:36', '2011-12-05 23:28:36', NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, NULL, '2011-12-05 23:28:50', '2011-12-05 23:28:50', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 6, NULL, '2011-12-05 23:29:04', '2011-12-05 23:29:04', NULL, NULL, NULL, NULL, '081db954782b415eb2991c8a21ae0cbb_7.jpeg', NULL),
(120, 6, NULL, '2011-12-05 23:29:10', '2011-12-05 23:29:10', NULL, NULL, NULL, NULL, '492c36663376a7e6b535da55bff9c47e33aaa75f.gif', NULL),
(121, 6, NULL, '2011-12-05 23:29:10', '2011-12-05 23:29:10', NULL, NULL, NULL, NULL, 'tumblr_lgl90nLJcE1qztam9o1_400.gif', NULL),
(122, NULL, NULL, '2011-12-05 23:29:13', '2011-12-05 23:29:13', NULL, NULL, NULL, NULL, NULL, NULL),
(123, NULL, NULL, '2011-12-05 23:29:24', '2011-12-05 23:29:24', NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, NULL, '2011-12-05 23:29:26', '2011-12-05 23:29:26', NULL, NULL, NULL, NULL, NULL, NULL),
(125, NULL, NULL, '2011-12-05 23:35:03', '2011-12-05 23:35:03', NULL, NULL, NULL, NULL, NULL, NULL),
(126, NULL, NULL, '2011-12-05 23:35:11', '2011-12-05 23:35:11', NULL, NULL, NULL, NULL, NULL, NULL),
(127, NULL, NULL, '2011-12-05 23:35:15', '2011-12-05 23:35:15', NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, NULL, '2011-12-05 23:35:18', '2011-12-05 23:35:18', NULL, NULL, NULL, NULL, NULL, NULL),
(129, NULL, NULL, '2011-12-05 23:35:20', '2011-12-05 23:35:20', NULL, NULL, NULL, NULL, NULL, NULL),
(130, NULL, NULL, '2011-12-05 23:35:23', '2011-12-05 23:35:23', NULL, NULL, NULL, NULL, NULL, NULL),
(131, NULL, NULL, '2011-12-05 23:35:27', '2011-12-05 23:35:27', NULL, NULL, NULL, NULL, NULL, NULL),
(132, NULL, NULL, '2011-12-05 23:35:29', '2011-12-05 23:35:29', NULL, NULL, NULL, NULL, NULL, NULL),
(133, NULL, NULL, '2011-12-05 23:35:37', '2011-12-05 23:35:37', NULL, NULL, NULL, NULL, NULL, NULL),
(134, NULL, NULL, '2011-12-05 23:35:43', '2011-12-05 23:35:43', NULL, NULL, NULL, NULL, NULL, NULL),
(135, NULL, NULL, '2011-12-05 23:36:00', '2011-12-05 23:36:00', NULL, NULL, NULL, NULL, NULL, NULL),
(136, NULL, NULL, '2011-12-05 23:36:05', '2011-12-05 23:36:05', NULL, NULL, NULL, NULL, NULL, NULL),
(137, NULL, NULL, '2011-12-05 23:48:55', '2011-12-05 23:48:55', NULL, NULL, NULL, NULL, NULL, NULL),
(138, NULL, NULL, '2011-12-06 03:51:00', '2011-12-06 03:51:00', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 7, NULL, '2011-12-06 03:51:39', '2011-12-06 03:51:39', NULL, NULL, NULL, NULL, '081db954782b415eb2991c8a21ae0cbb_7.jpeg', NULL),
(140, 7, NULL, '2011-12-06 03:51:40', '2011-12-06 03:51:40', NULL, NULL, NULL, NULL, '82.jpeg', NULL),
(141, 7, NULL, '2011-12-06 03:51:41', '2011-12-06 03:51:41', NULL, NULL, NULL, NULL, '70-newzealandbutterfly1.jpeg', NULL),
(142, 7, NULL, '2011-12-06 03:51:42', '2011-12-06 03:51:42', NULL, NULL, NULL, NULL, '32.jpeg', NULL),
(143, 7, NULL, '2011-12-06 03:51:43', '2011-12-06 03:51:43', NULL, NULL, NULL, NULL, '217655_1920066292024_1553056560_2056419_3990564_n.jpeg', NULL),
(144, 7, NULL, '2011-12-06 03:51:43', '2011-12-06 03:51:43', NULL, NULL, NULL, NULL, '21MikeDornseifBIG.jpeg', NULL),
(145, 7, NULL, '2011-12-06 03:51:44', '2011-12-06 03:51:44', NULL, NULL, NULL, NULL, '182.jpeg', NULL),
(146, 7, NULL, '2011-12-06 03:51:44', '2011-12-06 03:51:44', NULL, NULL, NULL, NULL, '74-germany-40.jpeg', NULL),
(147, 7, NULL, '2011-12-06 03:51:45', '2011-12-06 03:51:45', NULL, NULL, NULL, NULL, '1268227091-1.jpeg', NULL),
(148, 7, NULL, '2011-12-06 03:51:48', '2011-12-06 03:51:48', NULL, NULL, NULL, NULL, '492c36663376a7e6b535da55bff9c47e33aaa75f.gif', NULL),
(149, NULL, NULL, '2011-12-06 03:51:57', '2011-12-06 03:51:57', NULL, NULL, NULL, NULL, NULL, NULL),
(150, NULL, NULL, '2011-12-06 05:21:07', '2011-12-06 05:21:07', NULL, NULL, NULL, NULL, NULL, NULL),
(151, NULL, NULL, '2011-12-06 08:10:27', '2011-12-06 08:10:27', NULL, NULL, NULL, NULL, NULL, NULL),
(152, NULL, NULL, '2011-12-06 08:28:35', '2011-12-06 08:28:35', NULL, NULL, NULL, NULL, NULL, NULL),
(153, NULL, NULL, '2011-12-06 16:12:09', '2011-12-06 16:12:09', NULL, NULL, NULL, NULL, NULL, NULL),
(155, NULL, NULL, '2011-12-06 16:12:28', '2011-12-06 16:12:28', NULL, NULL, NULL, NULL, NULL, NULL),
(156, NULL, NULL, '2011-12-06 16:12:32', '2011-12-06 16:12:32', NULL, NULL, NULL, NULL, NULL, NULL),
(157, NULL, NULL, '2011-12-06 16:12:35', '2011-12-06 16:12:35', NULL, NULL, NULL, NULL, NULL, NULL),
(158, NULL, NULL, '2011-12-06 16:20:13', '2011-12-06 16:20:13', NULL, NULL, NULL, NULL, NULL, NULL),
(159, NULL, NULL, '2011-12-06 16:29:05', '2011-12-06 16:29:05', NULL, NULL, NULL, NULL, NULL, NULL),
(160, NULL, NULL, '2011-12-06 16:29:42', '2011-12-06 16:29:42', NULL, NULL, NULL, NULL, NULL, NULL),
(161, NULL, NULL, '2011-12-06 16:38:07', '2011-12-06 16:38:07', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 9, NULL, '2011-12-06 18:02:47', '2011-12-06 18:02:47', NULL, NULL, NULL, NULL, '28-04-11Untitled-4-1.jpg', NULL),
(182, 9, NULL, '2011-12-06 18:02:47', '2011-12-06 18:02:47', NULL, NULL, NULL, NULL, '28-04-11Untitled-3-1.jpg', NULL),
(183, 9, NULL, '2011-12-06 18:02:48', '2011-12-06 18:02:48', NULL, NULL, NULL, NULL, '28-04-11incognit_1.jpg', NULL),
(184, 9, NULL, '2011-12-06 18:02:48', '2011-12-06 18:02:48', NULL, NULL, NULL, NULL, '28-04-11Untitled-3.jpg', NULL),
(185, 9, NULL, '2011-12-06 18:02:48', '2011-12-06 18:02:48', NULL, NULL, NULL, NULL, '28-04-11Untitled-2.jpg', NULL),
(186, 9, NULL, '2011-12-06 18:02:48', '2011-12-06 18:02:48', NULL, NULL, NULL, NULL, '28-04-11incognit_3.jpg', NULL),
(187, 9, NULL, '2011-12-06 18:02:49', '2011-12-06 18:02:49', NULL, NULL, NULL, NULL, '28-04-11Untitled-2-1.jpg', NULL),
(188, 9, NULL, '2011-12-06 18:02:49', '2011-12-06 18:02:49', NULL, NULL, NULL, NULL, '28-04-11incognit_2.jpg', NULL),
(189, 9, NULL, '2011-12-06 18:02:50', '2011-12-06 18:02:50', NULL, NULL, NULL, NULL, '28-04-11IMG_9230.JPG', NULL),
(190, 9, NULL, '2011-12-06 18:02:50', '2011-12-06 18:02:50', NULL, NULL, NULL, NULL, '24-04-11Untitled-1.jpg', NULL),
(191, 9, NULL, '2011-12-06 18:02:50', '2011-12-06 18:02:50', NULL, NULL, NULL, NULL, '28-04-11Untitled-1.jpg', NULL),
(192, 9, NULL, '2011-12-06 18:02:51', '2011-12-06 18:02:51', NULL, NULL, NULL, NULL, '28-04-11Untitled-4.jpg', NULL),
(193, 9, NULL, '2011-12-06 18:02:52', '2011-12-06 18:02:52', NULL, NULL, NULL, NULL, '28-04-11Untitled-2-2.jpg', NULL),
(194, 9, NULL, '2011-12-06 18:03:00', '2011-12-06 18:03:00', NULL, NULL, NULL, NULL, '24-04-11IMG_9345451.JPG', NULL),
(195, 10, NULL, '2011-12-06 18:06:03', '2011-12-06 18:06:03', NULL, NULL, NULL, NULL, 'tumblr_l9uk27u2BC1qagnvao1_500.jpeg', NULL),
(196, 10, NULL, '2011-12-06 18:06:05', '2011-12-06 18:06:05', NULL, NULL, NULL, NULL, 'tumblr_kxqhutM8ZA1qzhyr0o1_500.jpeg', NULL),
(197, 10, NULL, '2011-12-06 18:06:05', '2011-12-06 18:06:05', NULL, NULL, NULL, NULL, 'tumblr_lsrxc6a4Oh1qzd1nwo1_r1_500.jpeg', NULL),
(198, 10, NULL, '2011-12-06 18:06:07', '2011-12-06 18:06:07', NULL, NULL, NULL, NULL, 'tumblr_lv53tzjRSU1qau50i.jpeg', NULL),
(199, 10, NULL, '2011-12-06 18:06:08', '2011-12-06 18:06:08', NULL, NULL, NULL, NULL, 'tumblr_ln66x49kV91qzp6iio1_500.png', NULL),
(200, 10, NULL, '2011-12-06 18:08:24', '2011-12-06 18:08:24', NULL, NULL, NULL, NULL, 'tumblr_ls6e4umqfi1qzd1nwo1_500.jpeg', NULL),
(201, 10, NULL, '2011-12-06 18:08:24', '2011-12-06 18:08:24', NULL, NULL, NULL, NULL, 'tumblr_lrvkhanqne1qzd1nwo1_500.jpeg', NULL),
(206, 11, NULL, '2011-12-06 19:53:27', '2011-12-06 19:53:27', NULL, NULL, NULL, NULL, 'ngtv-channel46-siteframe-branding11-LU.jpg', NULL),
(207, 11, NULL, '2011-12-06 19:53:27', '2011-12-06 19:53:27', NULL, NULL, NULL, NULL, 'ngtv-channel46-siteframe-branding12-DMV.jpg', NULL),
(208, 11, NULL, '2011-12-06 19:53:28', '2011-12-06 19:53:28', NULL, NULL, NULL, NULL, 'ngtv-channel46-siteframe-branding12-RJ.jpg', NULL),
(209, 11, NULL, '2011-12-06 19:53:28', '2011-12-06 19:53:28', NULL, NULL, NULL, NULL, 'ngtv-channel46-siteframe-branding12-hustla.jpg', NULL),
(268, 13, NULL, '2011-12-06 23:54:55', '2011-12-06 23:54:55', NULL, NULL, NULL, NULL, 'WordPress_CMS_Plugin_1314860306404.png', NULL),
(270, 14, NULL, '2011-12-07 06:02:32', '2011-12-07 06:02:32', NULL, NULL, NULL, NULL, '1017731244079941.jpeg', NULL),
(271, 14, NULL, '2011-12-07 06:02:32', '2011-12-07 06:02:32', NULL, NULL, NULL, NULL, '1017731244079968.jpeg', NULL),
(272, 14, NULL, '2011-12-07 06:02:33', '2011-12-07 06:02:33', NULL, NULL, NULL, NULL, '1017731244079762.jpeg', NULL),
(273, 14, NULL, '2011-12-07 06:02:33', '2011-12-07 06:02:33', NULL, NULL, NULL, NULL, '1017731244079809.jpeg', NULL),
(275, 13, NULL, '2011-12-08 18:57:25', '2011-12-08 18:57:25', NULL, NULL, NULL, NULL, 'Gravity_Forms_CSS_Visual_Guide.png', NULL),
(276, 13, NULL, '2011-12-08 18:57:42', '2011-12-08 18:57:42', NULL, NULL, NULL, NULL, 'mrDika_9.jpg', NULL),
(277, 15, NULL, '2011-12-08 19:04:10', '2011-12-08 19:04:10', NULL, NULL, NULL, NULL, 'Untitled-1.png', NULL),
(278, 15, NULL, '2011-12-08 19:04:10', '2011-12-08 19:04:10', NULL, NULL, NULL, NULL, 'Strokenation.jpg', NULL),
(280, 3, NULL, '2011-12-10 23:37:37', '2011-12-10 23:37:37', NULL, NULL, NULL, NULL, NULL, NULL),
(281, 3, NULL, '2011-12-10 23:38:10', '2011-12-10 23:38:10', NULL, NULL, NULL, NULL, NULL, NULL),
(282, 14, NULL, '2011-12-10 23:39:08', '2011-12-10 23:39:08', NULL, NULL, NULL, NULL, 'Screen_shot_2011-12-10_at_1.59.27_PM.png', NULL),
(283, 14, NULL, '2011-12-10 23:39:16', '2011-12-10 23:39:16', NULL, NULL, NULL, NULL, 'Screen_shot_2011-12-10_at_1.58.32_PM.png', NULL),
(284, 14, NULL, '2011-12-10 23:39:19', '2011-12-10 23:39:19', NULL, NULL, NULL, NULL, 'Screen_shot_2011-12-10_at_2.00.09_PM.png', NULL),
(310, 20, NULL, '2011-12-16 16:33:54', '2011-12-16 16:33:54', NULL, NULL, NULL, NULL, 'trio4.jpeg', NULL),
(311, 20, NULL, '2011-12-16 16:33:54', '2011-12-16 16:33:54', NULL, NULL, NULL, NULL, '16_muge-yilmaz-trees9_905.jpeg', NULL),
(312, 20, NULL, '2011-12-16 16:33:55', '2011-12-16 16:33:55', NULL, NULL, NULL, NULL, 'DSC_0892.jpeg', NULL),
(313, 20, NULL, '2011-12-16 16:33:56', '2011-12-16 16:33:56', NULL, NULL, NULL, NULL, 'VennDiagram_jesus.gif', NULL),
(314, 20, NULL, '2011-12-16 16:33:56', '2011-12-16 16:33:56', NULL, NULL, NULL, NULL, 'c28_21036465.jpeg', NULL),
(315, 20, NULL, '2011-12-16 16:33:58', '2011-12-16 16:33:58', NULL, NULL, NULL, NULL, '16115820_500.jpeg', NULL),
(316, 20, NULL, '2011-12-16 16:34:03', '2011-12-16 16:34:03', NULL, NULL, NULL, NULL, '23_04.jpeg', NULL),
(317, 20, NULL, '2011-12-16 16:34:19', '2011-12-16 16:34:19', NULL, NULL, NULL, NULL, '89bfa6b813052b26525e0549f7f5adc09071c238.gif', NULL),
(383, 2, NULL, '2011-12-20 22:00:36', '2011-12-20 22:00:36', NULL, NULL, NULL, NULL, 'decorative-security-door-king-1.jpg', NULL),
(384, 12, NULL, '2011-12-20 22:00:51', '2011-12-20 22:00:51', NULL, NULL, NULL, NULL, 'decorative-security-door-king-2.jpg', NULL),
(385, 13, NULL, '2011-12-20 22:01:03', '2011-12-20 22:01:03', NULL, NULL, NULL, NULL, 'decorative-security-door-king-3.jpg', NULL),
(387, 23, NULL, '2011-12-20 22:04:58', '2011-12-20 22:04:58', NULL, NULL, NULL, NULL, 'stroke_holding.jpg', 4),
(388, 23, NULL, '2011-12-20 22:05:00', '2011-12-20 22:05:00', NULL, NULL, NULL, NULL, 'mrDika_9.jpg', 5),
(389, 23, NULL, '2011-12-20 22:05:03', '2011-12-20 22:05:03', NULL, NULL, NULL, NULL, 'WOW-Basic-Templates.png', 7),
(390, 24, NULL, '2011-12-20 22:52:51', '2011-12-20 22:52:51', NULL, NULL, NULL, NULL, '780x1328.jpeg', NULL),
(391, 24, NULL, '2011-12-20 22:52:54', '2011-12-20 22:52:54', NULL, NULL, NULL, NULL, '601x850.jpeg', NULL),
(392, 24, NULL, '2011-12-20 22:52:58', '2011-12-20 22:52:58', NULL, NULL, NULL, NULL, '780x1102.jpeg', NULL),
(393, 24, NULL, '2011-12-20 22:53:05', '2011-12-20 22:53:05', NULL, NULL, NULL, NULL, '780x2764.jpeg', NULL),
(394, 24, NULL, '2011-12-20 22:53:09', '2011-12-20 22:53:09', NULL, NULL, NULL, NULL, '940x727.jpeg', NULL),
(395, 24, NULL, '2011-12-20 22:53:13', '2011-12-20 22:53:13', NULL, NULL, NULL, NULL, '842x1191.jpeg', NULL),
(396, 24, NULL, '2011-12-20 22:53:20', '2011-12-20 22:53:20', NULL, NULL, NULL, NULL, '780x2923.jpeg', NULL),
(397, 24, NULL, '2011-12-20 22:53:24', '2011-12-20 22:53:24', NULL, NULL, NULL, NULL, '713x1000.jpeg', NULL),
(398, 24, NULL, '2011-12-20 22:53:33', '2011-12-20 22:53:33', NULL, NULL, NULL, NULL, '780x2792.jpeg', NULL),
(399, 24, NULL, '2011-12-20 22:53:36', '2011-12-20 22:53:36', NULL, NULL, NULL, NULL, '940x512.jpeg', NULL),
(400, 24, NULL, '2011-12-20 22:53:44', '2011-12-20 22:53:44', NULL, NULL, NULL, NULL, '780x3063.jpeg', NULL),
(401, 25, NULL, '2011-12-22 22:39:53', '2011-12-22 22:39:53', NULL, NULL, NULL, NULL, 'avatar_Untitled.jpg', NULL),
(402, 25, NULL, '2011-12-22 22:39:59', '2011-12-22 22:39:59', NULL, NULL, NULL, NULL, 'stroke_holding.jpg', NULL),
(403, 25, NULL, '2011-12-22 22:40:04', '2011-12-22 22:40:04', NULL, NULL, NULL, NULL, 'large_Untitled.png', NULL),
(405, 26, NULL, '2011-12-23 00:34:45', '2011-12-23 00:34:45', NULL, NULL, NULL, NULL, 'awesome-snow-leopard-wallpaper-1920x1200-1012067.jpg', NULL),
(406, 26, NULL, '2011-12-23 00:35:00', '2011-12-23 00:35:00', NULL, NULL, NULL, NULL, 'EgFox_Snow_Leopard_2_HD_by_Eg_Art.jpg', NULL),
(407, 26, NULL, '2011-12-23 00:35:06', '2011-12-23 00:35:06', NULL, NULL, NULL, NULL, 'snow_leopard-1280x720.jpg', NULL),
(408, 26, NULL, '2011-12-23 00:35:13', '2011-12-23 00:35:13', NULL, NULL, NULL, NULL, 'ws_Snow_Leopard_Mac_1600x1200.jpg', NULL),
(409, 26, NULL, '2011-12-23 00:35:17', '2011-12-23 00:35:17', NULL, NULL, NULL, NULL, 'Snow_Capped__Grand_Tetons__Wyoming.jpg', NULL),
(410, 26, NULL, '2011-12-23 00:35:22', '2011-12-23 00:35:22', NULL, NULL, NULL, NULL, 'snow_leopard.jpg', NULL),
(411, 27, NULL, '2011-12-23 20:37:33', '2011-12-23 20:37:33', NULL, NULL, NULL, NULL, 'avatar_Untitled.jpg', NULL),
(412, 27, NULL, '2011-12-23 20:37:37', '2011-12-23 20:37:37', NULL, NULL, NULL, NULL, 'large_Untitled.png', NULL),
(413, 28, NULL, '2011-12-23 20:47:19', '2011-12-23 20:47:19', NULL, NULL, NULL, NULL, 'send-me-a-quote.png', NULL),
(414, 28, NULL, '2011-12-23 20:47:23', '2011-12-23 20:47:23', NULL, NULL, NULL, NULL, 'Strokenation.jpg', NULL),
(415, 28, NULL, '2011-12-23 20:47:26', '2011-12-23 20:47:26', NULL, NULL, NULL, NULL, 'design2net.jpg', NULL),
(416, 28, NULL, '2011-12-23 20:47:35', '2011-12-23 20:47:35', NULL, NULL, NULL, NULL, 'design3.jpg', NULL),
(417, 29, NULL, '2011-12-23 21:12:24', '2011-12-23 21:12:24', NULL, NULL, NULL, NULL, 'carbonmade_1.jpg', NULL),
(418, 29, NULL, '2011-12-23 21:12:26', '2011-12-23 21:12:26', NULL, NULL, NULL, NULL, 'gmail.png', NULL),
(419, 29, NULL, '2011-12-23 21:12:32', '2011-12-23 21:12:32', NULL, NULL, NULL, NULL, 'design2.jpg', NULL),
(420, 29, NULL, '2011-12-23 21:12:35', '2011-12-23 21:12:35', NULL, NULL, NULL, NULL, 'design2net.jpg', NULL),
(421, 30, NULL, '2011-12-23 22:21:18', '2011-12-23 22:21:18', NULL, NULL, NULL, NULL, 'design2.jpg', NULL),
(422, 30, NULL, '2011-12-23 22:21:21', '2011-12-23 22:21:21', NULL, NULL, NULL, NULL, 'send-me-a-quote.png', NULL),
(423, 30, NULL, '2011-12-23 22:21:23', '2011-12-23 22:21:23', NULL, NULL, NULL, NULL, 'Strokenation.jpg', NULL),
(424, 31, NULL, '2011-12-23 22:24:52', '2011-12-23 22:24:52', NULL, NULL, NULL, NULL, 'avatar_Untitled.jpg', NULL),
(425, 31, NULL, '2011-12-23 22:24:54', '2011-12-23 22:24:54', NULL, NULL, NULL, NULL, 'send-me-a-quote.png', NULL),
(426, 31, NULL, '2011-12-23 22:24:57', '2011-12-23 22:24:57', NULL, NULL, NULL, NULL, 'Strokenation.jpg', NULL),
(427, 31, NULL, '2011-12-23 22:25:03', '2011-12-23 22:25:03', NULL, NULL, NULL, NULL, 'design2.jpg', NULL),
(428, 23, NULL, '2011-12-27 20:26:27', '2011-12-27 20:26:27', NULL, NULL, NULL, NULL, 'design3.jpg', 3),
(429, 23, NULL, '2011-12-27 20:26:33', '2011-12-27 20:26:33', NULL, NULL, NULL, NULL, 'large_Untitled.png', 2),
(431, 23, NULL, '2011-12-27 20:26:45', '2011-12-27 20:26:45', NULL, NULL, NULL, NULL, 'design2.jpg', 1),
(432, 23, NULL, '2011-12-27 20:26:49', '2011-12-27 20:26:49', NULL, NULL, NULL, NULL, 'design2net.jpg', 8),
(433, 32, NULL, '2011-12-29 22:02:28', '2011-12-29 22:02:28', NULL, NULL, NULL, NULL, 'img4747iw2.jpeg', 4),
(434, 32, NULL, '2011-12-29 22:02:33', '2011-12-29 22:02:33', NULL, NULL, NULL, NULL, 'ferrari_sports_car_images.jpeg', 2),
(435, 32, NULL, '2011-12-29 22:02:38', '2011-12-29 22:02:38', NULL, NULL, NULL, NULL, 'ferrari_enzo_05.jpeg', 1),
(436, 32, NULL, '2011-12-29 22:02:42', '2011-12-29 22:02:42', NULL, NULL, NULL, NULL, '1989_Ferrari_F40LM1.jpeg', 7),
(437, 32, NULL, '2011-12-29 22:02:48', '2011-12-29 22:02:48', NULL, NULL, NULL, NULL, 'ferrari.jpeg', 5),
(438, 32, NULL, '2011-12-29 22:02:54', '2011-12-29 22:02:54', NULL, NULL, NULL, NULL, '2007-Ferrari-Millechili-Concept-Model-Front-Angle-Top-1280x960.jpeg', 6),
(439, 32, NULL, '2011-12-29 22:11:20', '2011-12-29 22:11:20', NULL, NULL, NULL, NULL, 'Ferrari-Yellow-rear-1_4.jpeg', 3),
(440, 20, NULL, '2012-01-03 00:59:49', '2012-01-03 00:59:49', NULL, NULL, NULL, NULL, 'Axiom_Health_Chiropractic_and_Physical_thearpy_in_Venice_California_-.jpg', NULL),
(441, 33, NULL, '2012-01-03 01:03:43', '2012-01-03 01:03:43', NULL, NULL, NULL, NULL, 'Axiom_Health_Chiropractic_and_Physical_thearpy_in_Venice_California_--1.jpg', NULL),
(442, 23, NULL, '2012-01-04 23:57:51', '2012-01-04 23:57:51', NULL, NULL, NULL, NULL, 'send-me-a-quote.png', 6),
(443, 35, NULL, '2012-01-05 18:13:40', '2012-01-05 18:13:40', NULL, NULL, NULL, NULL, 'lamborghini-murcielago-5.jpeg', 6),
(444, 35, NULL, '2012-01-05 18:13:44', '2012-01-05 18:13:44', NULL, NULL, NULL, NULL, 'lamborghini-cars-wallpapers.jpeg', 1),
(445, 35, NULL, '2012-01-05 18:13:51', '2012-01-05 18:13:51', NULL, NULL, NULL, NULL, 'Lamborghini-Sesto-Elemento-Photo-3.jpeg', 3),
(446, 35, NULL, '2012-01-05 18:13:53', '2012-01-05 18:13:53', NULL, NULL, NULL, NULL, 'lamborghini_2.jpeg', 8),
(447, 35, NULL, '2012-01-05 18:13:57', '2012-01-05 18:13:57', NULL, NULL, NULL, NULL, 'lamborghini-ml10-1280x800w.jpeg', 5),
(448, 35, NULL, '2012-01-05 18:14:01', '2012-01-05 18:14:01', NULL, NULL, NULL, NULL, 'Lamborghini-Reventon-Front-Angle1-2008.jpeg', 2),
(449, 35, NULL, '2012-01-05 18:14:03', '2012-01-05 18:14:03', NULL, NULL, NULL, NULL, 'lamborghini_murcielago_lp640_101-4e2cbbde25eb4.jpeg', 7),
(450, 35, NULL, '2012-01-05 18:14:06', '2012-01-05 18:14:06', NULL, NULL, NULL, NULL, 'Lamborghini-Cars-Wallpapers-2.jpeg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `project_type` varchar(255) default NULL,
  `title` varchar(100) NOT NULL default '',
  `client` varchar(255) default NULL,
  `project_category` varchar(255) default NULL,
  `layout` int(11) default NULL,
  `visible` tinyint(1) default '0',
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `project_url` varchar(255) default NULL,
  `custom_image_thumbnail` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_projects_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `project_type`, `title`, `client`, `project_category`, `layout`, `visible`, `description`, `created_at`, `updated_at`, `project_url`, `custom_image_thumbnail`) VALUES
(2, 1, '', 'The Title', 'Mr. Client', 'PHP, Wordpress, CSS, JAVASCRIPT', 1, 1, 'The Description', '2011-11-29 00:35:01', '2012-01-06 16:51:14', 'www.theurl.com', NULL),
(3, 2, 'whatistype', 'project1', NULL, NULL, 1, 0, 'hello', '2011-11-29 22:32:02', '2011-11-29 22:32:02', NULL, NULL),
(4, 3, 'Image', 'Sample Project', NULL, NULL, 1, 1, 'fdsaf', '2011-11-29 23:53:10', '2011-11-29 23:53:10', NULL, NULL),
(6, 2, 'motion graphics', 'more work', NULL, NULL, 1, 1, 'here is some motion graphics..', '2011-12-05 23:27:07', '2011-12-05 23:27:07', NULL, NULL),
(7, 2, 'advertising', 'New car client', NULL, NULL, 1, 1, 'This was a new car client, this is a long discription\r\n', '2011-12-06 03:50:54', '2011-12-06 03:51:19', NULL, NULL),
(9, 2, 'Print', 'Caro', NULL, NULL, 1, 1, 'With the overwhelming number of choices the consumer faces each day, it is crucial that a brand distinguishes itself from all the others. Since its beginnings, BridgerConway has maintained an integrated approach to branding by implementing customized marketing solutions that generate brand awareness via innovation, passion and strategic thinking.\r\n', '2011-12-06 18:02:33', '2011-12-06 18:02:33', NULL, NULL),
(10, 2, 'interior design', 'Cool spaces', NULL, NULL, 1, 1, 'These are great interior design', '2011-12-06 18:05:45', '2011-12-06 18:05:45', NULL, NULL),
(11, 2, 'print', 'remote', NULL, NULL, 1, 1, 'stuff..', '2011-12-06 19:52:24', '2011-12-06 19:52:24', NULL, NULL),
(12, 1, 'Images', 'New Project', NULL, NULL, 1, 1, '', '2011-12-06 20:22:20', '2011-12-20 22:25:51', NULL, NULL),
(13, 1, '', 'New Sample Project', NULL, NULL, 1, 1, '', '2011-12-06 23:54:44', '2011-12-20 22:25:55', NULL, NULL),
(14, 2, 'photography', 'new glamor shoot', NULL, NULL, 1, 0, 'this is hot', '2011-12-07 06:02:22', '2011-12-07 06:02:22', NULL, NULL),
(15, 4, 'Image', 'The new project', NULL, NULL, 1, 1, 'The Description', '2011-12-08 19:03:54', '2011-12-08 19:03:54', NULL, NULL),
(16, 2, 'poster', 'Another One', NULL, NULL, 1, 0, 'Here is the latest poster work I did', '2011-12-10 06:06:12', '2011-12-10 06:06:12', NULL, NULL),
(20, 6, 'CloudStorage', 'S3', NULL, NULL, 2, 1, 'Lets test the cloudstorage options', '2011-12-16 16:30:21', '2012-01-05 02:16:32', NULL, 316),
(23, 1, 'Image', 'For design', '', NULL, 2, 1, 'gasfsdf', '2011-12-20 21:43:38', '2012-01-08 00:53:25', NULL, 388),
(24, 6, 'print', 'testy', NULL, NULL, 3, 1, 'hello this is my printy', '2011-12-20 22:50:49', '2012-01-09 11:38:58', NULL, 393),
(25, 5, 'Images', 'subdomain', NULL, NULL, NULL, 1, 'subdomainsubdomainsubdomainsubdomainsubdomainsubdomainsubdomain', '2011-12-22 22:39:41', '2011-12-22 22:39:41', NULL, NULL),
(26, 8, 'rr', 'testy', NULL, NULL, NULL, 1, 'asdfaf', '2011-12-23 00:18:33', '2011-12-23 00:18:33', NULL, NULL),
(27, 9, 'Image', 'fbfixfbfix', NULL, NULL, NULL, 1, 'fbfixfbfixfbfixfbfix', '2011-12-23 20:37:18', '2011-12-23 20:37:18', NULL, NULL),
(28, 10, 'Image', 'fbfixfbfix2', NULL, NULL, NULL, 1, '', '2011-12-23 20:46:54', '2011-12-23 20:46:54', NULL, NULL),
(29, 11, 'Image', 'fbfixfbfix3', NULL, NULL, NULL, 1, 'fbfixfbfix3fbfixfbfix3fbfixfbfix3fbfixfbfix3', '2011-12-23 21:12:08', '2011-12-23 21:12:08', NULL, NULL),
(30, 12, 'Image', 'fbfixfbfix4', NULL, NULL, NULL, 1, 'ffbfixfbfix4fbfixfbfix4fbfixfbfix4fbfixfbfix4fbfixfbfix4fbfixfbfix4', '2011-12-23 22:21:04', '2011-12-23 22:21:04', NULL, NULL),
(31, 13, 'Image', 'fbfixfbfix5', NULL, NULL, NULL, 1, 'fbfixfbfix5 fbfixfbfix5fbfixfbfix5fbfixfbfix5fbfixfbfix5fbfixfbfix5', '2011-12-23 22:24:40', '2011-12-23 22:24:40', NULL, NULL),
(32, 15, 'print', 'my new ', NULL, NULL, 2, 1, 'this is my print', '2011-12-29 21:58:43', '2012-01-09 11:36:08', NULL, 438),
(33, 16, 'd', 'dragin', NULL, NULL, 3, 1, '', '2012-01-03 01:03:15', '2012-01-09 18:28:29', NULL, NULL),
(34, 16, 'd', 'dragin', NULL, NULL, NULL, 0, '', '2012-01-03 01:03:16', '2012-01-03 01:03:16', NULL, NULL),
(35, 17, 'cars', 'lambo', NULL, NULL, 3, 1, 'these are lambos', '2012-01-05 18:13:18', '2012-01-06 23:52:17', NULL, 444),
(36, 1, 'Video', 'Sample Videos', NULL, NULL, NULL, 1, 'The videos', '2012-01-05 22:29:54', '2012-01-05 22:29:54', NULL, NULL),
(37, 18, 'lambo2', 'lamo', NULL, NULL, NULL, 1, '', '2012-01-06 11:07:38', '2012-01-06 11:07:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20111123111430'),
('20111123123711'),
('20111123123720'),
('20111125075404'),
('20111125144312'),
('20111203215620'),
('20111205193421'),
('20111209222519'),
('20111212225310'),
('20111213000247'),
('20111214193313'),
('20111219194220'),
('20111222175543'),
('20111222194208'),
('20111228180410'),
('20111229232119'),
('20120104202424'),
('20120104234320'),
('20120105194646'),
('20120105202442');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(25) default NULL,
  `last_name` varchar(50) default NULL,
  `username` varchar(25) default NULL,
  `email` varchar(100) NOT NULL default '',
  `hashed_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `about_user` text,
  `expertise` text,
  `skills` text,
  `location` text,
  `phone` text,
  `availability` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_name` varchar(255) default NULL,
  `photo_content_type` varchar(255) default NULL,
  `photo_file_size` int(11) default NULL,
  `photo_updated_at` datetime default NULL,
  `subdomain_name` varchar(255) default NULL,
  `password_reset_token` varchar(255) default NULL,
  `password_reset_sent_at` datetime default NULL,
  `auth_token` varchar(255) default NULL,
  `color_scheme` int(11) default NULL,
  `font_face` int(11) default NULL,
  `image_size` int(11) default NULL,
  `header_title` varchar(255) default NULL,
  `logo` varchar(255) default NULL,
  `footer_title` varchar(255) default NULL,
  `avatar` varchar(255) default NULL,
  `fb_like` tinyint(1) default NULL,
  `image_capacity` int(11) default '30',
  `project_capacity` int(11) default '3',
  `google_analytics` varchar(255) default NULL,
  `fb_sm` varchar(255) default NULL,
  `twitter_sm` varchar(255) default NULL,
  `linkedin_sm` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_users_on_username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `hashed_password`, `salt`, `about_user`, `expertise`, `skills`, `location`, `phone`, `availability`, `created_at`, `updated_at`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`, `subdomain_name`, `password_reset_token`, `password_reset_sent_at`, `auth_token`, `color_scheme`, `font_face`, `image_size`, `header_title`, `logo`, `footer_title`, `avatar`, `fb_like`, `image_capacity`, `project_capacity`, `google_analytics`, `fb_sm`, `twitter_sm`, `linkedin_sm`) VALUES
(1, 'King', 'Pangilinan', 'kingpangilinan', 'king_pangilinan@rocketmail.com', 'e19aae9389c9847997a74d3efc6537689beb6227', 'db6fa47c3957beb9cfcc83a30d8a7f40f4bbf67e', 'Something About me edited fdsafsafsa 3', 'My Expertise ed', 'My Skills\r\nsdfsa', 'Pampanga Philippines', NULL, NULL, '2011-11-28 18:06:55', '2012-01-04 22:35:20', 'Picture2.jpg', 'image/jpeg', 21321, '2011-12-13 21:46:13', 'kingpangi', '-OCPQwTlUUb2JVd9pM8VEw==', '2011-12-13 00:31:38', 's2pxG3mrCxvnN3y6_8xo_A==', 1, NULL, NULL, 'King''s Profile', 'mrDika_9.jpg', 'The sample footer', 'WOW-Basic-Templates.png', 1, 30, 3, 'UA-27965420-1', 'pages/King-Pangilinan/265119090210076', 'khing251990', 'http://www.linkedin.com/pub/sarah-hoit/7/695/778'),
(2, 'amul', 'patel', '12345678', 'amulp84@test.com', '0158be198c57364facaf2f87b4f6f1ede3c884a1', '4e6b90824a6035e4dc3d84247d39bb963a5cce24', 'love design', 'image making', 'design', 'los angeles', '310-594-1123', 1, '2011-11-29 22:30:49', '2011-12-13 00:03:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-wfzJK8MnquBE_LCS95C0A==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(3, 'Sample Fname', 'Sample Lname', 'samplesample', 'sample@email.com', '1f6dd1a1444060e1fb8c2d1910de3ceac3582347', 'f8cb92a2c9c34eebf30c57a593232859c3d5b828', NULL, NULL, NULL, NULL, NULL, NULL, '2011-11-29 23:51:33', '2011-12-13 00:03:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'blWHgoYYDvUCs9tZ0GwNiA==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(4, 'New FNAME', 'New LNAME', 'theusername', 'email@somthing.com', 'd75bb7ce6ad2d8a225c6b225ae7c3a5fe1505bac', 'b3036d8677dd15e1c98c46a85bbab953905a0523', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-08 19:02:08', '2011-12-13 00:03:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4p7f9K3I1Y-2aLrdp_LsYQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(5, 'subdomain', 'subdomain', 'subdomain', 'subdomain@subdomain.com', '8328003551e4e089db8c8cb3f22b04a8399bd161', '7f4a8b8592a47d7a5e5b7e9f5be97cb9917fbf70', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-09 22:41:17', '2011-12-22 22:44:04', NULL, NULL, NULL, NULL, 'subdomain', NULL, NULL, '183xHMcIsM0PY2UzZvVB-Q==', NULL, NULL, NULL, NULL, NULL, NULL, 'design2net.jpg', NULL, 30, 3, NULL, NULL, NULL, NULL),
(6, 'amulp', 'patel', 'amulamul', 'amulp84@gmail.com', '405c870ae675cdf3067d598a5a36258d4d103e0a', '0f80c39d12a41ac3fd2bbba3d556f3891492ef35', 'Man I love iterating the user experience! BIG TIME.', 'photoshop, illustrator', 'graphic design', NULL, NULL, NULL, '2011-12-13 00:49:13', '2012-01-03 06:01:34', NULL, NULL, NULL, NULL, 'amul', NULL, NULL, 'hF54jS1MsHmtC9Kbd_GBNw==', 2, NULL, NULL, 'what yp', NULL, 'here is the Footer!', 'scook_201_0.jpeg', 1, 30, 3, NULL, NULL, NULL, NULL),
(7, 'jane', 'sandsersw', 'jane_free', 'freesuperrrr1@gmail.com', '9161047ed36658d6b4cefbf261b10ed7ca13a0e7', '5230e36822e092e3646511aa7a1ca3b3765bd07d', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-23 00:11:59', '2011-12-23 00:13:56', NULL, NULL, NULL, NULL, 'jane_free', 'wM0o3NpKpz7NtE7Qr5_Xew==', '2011-12-23 00:13:56', 'nRqhPpnHXFhBfgyyv-PzMg==', NULL, NULL, NULL, 'jane_free''s Porfolio', NULL, '2011', NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(8, 'thomas', 'cruise', 'thomascruise', 'amulp85@gmail.com', '332235bb36c0efb6e0c2ec8630bb7acaefc287e6', '9e9c98222fe8aa2bd973fcaf274c08276f6f7c77', 'i love design', NULL, NULL, NULL, NULL, NULL, '2011-12-23 00:17:55', '2011-12-23 00:36:26', NULL, NULL, NULL, NULL, 'thomascruise', NULL, NULL, '4hgTyiYDoyPRzSq29mllqA==', NULL, NULL, NULL, 'thomascruise''s Porfolio', NULL, '2011', NULL, 1, 30, 3, NULL, NULL, NULL, NULL),
(9, 'fbfixfbfix', 'fbfixfbfix', 'fbfixfbfix', 'fbfix@fbfix.com', '5e0e44aca8f260e8b8ea18272ff3126f639280c1', 'c9cb60897fcf21d569eebb45950bbca7c1a21ced', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-23 20:36:00', '2011-12-23 20:36:00', NULL, NULL, NULL, NULL, 'fbfixfbfix', NULL, NULL, '25GaOJEEcQfgvsxnF4aEfw==', NULL, NULL, NULL, 'fbfixfbfix''s Porfolio', NULL, '2011', NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(10, 'fbfixfbfix2', 'fbfixfbfix2', 'fbfixfbfix2', 'fbfixfbfix2@fbfixfbfix2.com', 'a2a2b92171ae721a75c052972e6107a60f379213', '8b75cb2ee0ccfd00c7217f8715c018e87e7b5550', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-23 20:46:36', '2011-12-23 20:46:36', NULL, NULL, NULL, NULL, 'fbfixfbfix2', NULL, NULL, 'Qb5-CXgbkNGWA5l7hh6wKw==', NULL, NULL, NULL, 'fbfixfbfix2''s Porfolio', NULL, '2011', NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(11, 'fbfixfbfix3', 'fbfixfbfix3', 'fbfixfbfix3', 'fbfixfbfix3@fbfixfbfix3.com', '7e27cedbc11bfa68dbcd1b7bcc22ae47be90067f', '4d23557fc64ae47de82210743d6afa5cad4df54e', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-23 21:11:34', '2011-12-23 21:11:49', NULL, NULL, NULL, NULL, 'fbfixfbfix3', NULL, NULL, 'jg4T4wXSaiSDcgl68VOxlA==', NULL, NULL, NULL, 'fbfixfbfix3''s Porfolio', NULL, '2011', NULL, 1, 30, 3, NULL, NULL, NULL, NULL),
(12, 'fbfixfbfix4', 'fbfixfbfix4', 'fbfixfbfix4', 'fbfixfbfix4@fbfixfbfix4.com', 'f8eabb9b31dbd5c4c8713597f83ff69657667ea4', '9a86709f12ba66eb83bd571649791109730ca525', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-23 22:20:42', '2011-12-23 22:22:58', NULL, NULL, NULL, NULL, 'fbfixfbfix4', NULL, NULL, 'MjDRXZUaNowZbDZjx-Uxwg==', NULL, NULL, NULL, 'fbfixfbfix4''s Porfolio', NULL, '2011', NULL, 1, 30, 3, NULL, NULL, NULL, NULL),
(13, 'fbfixfbfix5', 'fbfixfbfix5', 'fbfixfbfix5', 'fbfixfbfix5@fbfixfbfix5.com', '70c9633bb21b5afddf20bbd8c3d182833abe02d6', '8db9609fa5beaf441eac189b527ce46754223dba', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-23 22:24:24', '2011-12-23 22:24:24', NULL, NULL, NULL, NULL, 'fbfixfbfix5', NULL, NULL, 'vYMj5lHRxmhfJo0GT0VH9g==', NULL, NULL, NULL, 'fbfixfbfix5''s Porfolio', NULL, '2011', NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(14, 'yayipadd', 'yayipadd', 'yayipadd', 'yayipadd@yayipadd.com', '734a53c6a5cffc33eefb35f34dda76a651b28efa', 'e12c22adaf6348ce2a83035ef29bf8713eadad58', NULL, NULL, NULL, NULL, NULL, NULL, '2011-12-29 20:45:34', '2011-12-29 22:47:42', NULL, NULL, NULL, NULL, 'yayipadd', NULL, NULL, 'TMHizquI9h2UMGn__dee8Q==', NULL, NULL, NULL, 'yayipadd''s Porfolio', NULL, '2011', 'visible.png', NULL, 30, 3, NULL, NULL, NULL, NULL),
(15, 'john', 'black', 'johnblack', 'joneblacky@sdfs.com', '506a7a78401e445e41656e2138bc940ae7d30770', '77df8590e5fe0daa3e12617d6a9089810d4b1266', 'this is john..', 'lots of stuff..', 'many things', NULL, NULL, NULL, '2011-12-29 21:57:53', '2012-01-05 17:52:46', NULL, NULL, NULL, NULL, 'jblack', NULL, NULL, 'I4SQEuuvngNeuw8Q14OcLg==', NULL, NULL, NULL, 'johnblack''s Porfolio', NULL, '2011', NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(16, 'amul3', 'pate2', 'amul1111', 'amulp84@gmail.com', '2081f4099cd546efff64045cd79042eca68eeffa', 'e819d0bc96e2b807d6f15ab20bf0f465814f4c11', NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-03 01:02:28', '2012-01-03 01:04:47', NULL, NULL, NULL, NULL, 'amul1111', NULL, NULL, 'LdygSwiE3qC5BfQ7Gbm9ag==', 1, NULL, NULL, 'amul1111''s Porfolio', NULL, '2012', NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(17, 'amul4', 'patte1', 'patelpatel', 'amulp84@gmail.com', '8ab73d7b46c0a8edcf75d8e67777f25ba0c0db5e', 'e0a3854236801ef663381e35fa930a72dedefa6f', NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-05 18:08:54', '2012-01-05 18:08:54', NULL, NULL, NULL, NULL, 'patelpatel', NULL, NULL, 'YeN3CFlTwFkfB0c7xtw5Pg==', NULL, NULL, NULL, 'patelpatel''s Porfolio', NULL, '2012', NULL, NULL, 30, 3, NULL, NULL, NULL, NULL),
(18, 'patel4', 'patel5', 'patelpatel2', 'amulp84@test2.com', 'ce94d29880625c3c6f1b9cb40c6bb215f518bf0f', '0ba146eb70303df8e148f912481ec63654943bb0', NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-06 11:07:02', '2012-01-06 11:07:02', NULL, NULL, NULL, NULL, 'patelpatel2', NULL, NULL, '69vLfYXmA-PM5zCCYl5GIA==', NULL, NULL, NULL, 'patelpatel2''s Porfolio', NULL, '2012', NULL, NULL, 30, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL auto_increment,
  `project_id` int(11) default NULL,
  `caption` varchar(255) default NULL,
  `video_embed` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_videos_on_project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `project_id`, `caption`, `video_embed`, `created_at`, `updated_at`) VALUES
(13, 36, NULL, 'http://www.youtube.com/watch?v=fl19JYqW6MI&feature=g-vrec&context=G2ffd38cRVAAAAAAAAAQ', '2012-01-05 23:03:29', '2012-01-05 23:03:29'),
(14, 36, NULL, '<iframe width="560" height="315" src="http://www.youtube.com/embed/fl19JYqW6MI" frameborder="0" allowfullscreen></iframe>', '2012-01-05 23:22:20', '2012-01-05 23:22:20');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
