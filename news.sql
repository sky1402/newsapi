-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 11:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorytbl`
--

CREATE TABLE `categorytbl` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_slug` varchar(100) NOT NULL,
  `doc_typ` int(11) DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `delete_status` int(11) NOT NULL,
  `added_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorytbl`
--

INSERT INTO `categorytbl` (`cat_id`, `cat_name`, `cat_slug`, `doc_typ`, `created_by`, `delete_status`, `added_on`) VALUES
(1, 'राजनीति', 'राजनीति', 1, 0, 0, '2024-01-09'),
(2, 'अर्थतन्त्र', 'अर्थतन्त्र', 1, 0, 0, '2024-01-09'),
(3, 'बैंक-बित्', 'बैंक-बित्', 1, 0, 0, '2024-01-09'),
(4, 'शेयर', 'शेयर', 1, 0, 0, '2024-01-09'),
(5, 'भिडयो', 'भिडयो', 1, 0, 0, '2024-01-09'),
(6, 'अटो', 'अटो', 1, 0, 0, '2024-01-09'),
(7, 'breaking', 'breaking', 1, 0, 0, '2024-01-09'),
(8, 'Highlights', 'highlights', 1, 0, 0, '2024-01-09'),
(9, 'मुख्य समाचार', 'मुख्य-समाचार', 1, 0, 0, '2024-01-10'),
(10, 'फिचर ', 'फिचर', 1, 0, 0, '2024-01-11'),
(11, 'अन्तर्वार्ता', 'अन्तर्वार्ता', 1, 0, 0, '2024-01-11'),
(12, 'विचार', 'विचार', 1, 0, 0, '2024-01-11'),
(13, 'बैंक-वित्त', 'बैंक-वित्त', 1, 0, 0, '2024-01-11'),
(14, 'बिमा', 'बिमा', 1, 0, 0, '2024-01-11'),
(15, 'कर्पोरेट', 'कर्पोरेट', 1, 0, 0, '2024-01-11'),
(16, 'बजार', 'बजार', 1, 0, 0, '2024-01-11'),
(17, 'उर्जा ', 'उर्जा', 1, 0, 0, '2024-01-11'),
(18, 'प्रविधि', 'प्रविधि', 1, 0, 0, '2024-01-11'),
(19, 'अनियमितता', 'अनियमितता', 1, 0, 0, '2024-01-11'),
(20, 'राजनीति', 'राजनीति', 1, 0, 0, '2024-01-11'),
(21, 'विश्व', 'विश्व', 1, 0, 0, '2024-01-11'),
(22, 'मनोरञ्जन', 'मनोरञ्जन', 1, 0, 0, '2024-01-11'),
(23, 'खेलकुद', 'खेलकुद', 1, 0, 0, '2024-01-11'),
(24, 'कृषि', 'कषि', 1, 0, 0, '2024-01-11'),
(25, 'पर्यटन', 'पर्यटन', 1, 0, 0, '2024-01-11'),
(26, 'समाज ', 'समाज', 1, 0, 0, '2024-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `document_tbl`
--

CREATE TABLE `document_tbl` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(200) NOT NULL,
  `doc_temp_name` varchar(200) NOT NULL,
  `delete_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document_tbl`
--

INSERT INTO `document_tbl` (`doc_id`, `doc_name`, `doc_temp_name`, `delete_status`, `added_on`, `added_by`) VALUES
(1, 'mahat_20240108195923.jpeg', '659ce464d215f.jpeg', 1, '2024-01-09 12:00:00', 0),
(2, 'm5_20240109072940.jpg', '659ce464d2f19.jpg', 1, '2024-01-09 12:00:00', 0),
(3, 'wepik-aesthetic-texture-together-youtube-thumbnail-20240109021102L3vO_20240109075618.jpeg', '659ce464d364d.jpeg', 1, '2024-01-09 12:00:00', 0),
(4, 'vishalgroup_20240109090342.jpeg', '659ce464d3d4f.jpeg', 1, '2024-01-09 12:00:00', 0),
(5, 'nepalelectricityauthority_20230210140200.jpg', '659ce464d448c.jpg', 1, '2024-01-09 12:00:00', 0),
(6, 'mahat_20240108195923.jpeg', '659ce4d72c7b6.jpeg', 0, '2024-01-09 12:01:55', 0),
(7, 'm5_20240109072940.jpg', '659ce4d72d28b.jpg', 0, '2024-01-09 12:01:55', 0),
(8, 'wepik-aesthetic-texture-together-youtube-thumbnail-20240109021102L3vO_20240109075618.jpeg', '659ce4d72df0e.jpeg', 0, '2024-01-09 12:01:55', 0),
(9, 'vishalgroup_20240109090342.jpeg', '659ce4d72eb31.jpeg', 0, '2024-01-09 12:01:55', 0),
(10, 'nepalelectricityauthority_20230210140200.jpg', '659ce4d72f497.jpg', 0, '2024-01-09 12:01:55', 0),
(11, 'Balen-police-at-UML-office-3.jpg', '6742e4d110128.jpg', 0, '2024-11-24 14:18:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `featured_card`
--

CREATE TABLE `featured_card` (
  `f_id` int(11) NOT NULL,
  `featured_title` varchar(50) DEFAULT NULL,
  `first_title` varchar(100) DEFAULT NULL,
  `second_title` varchar(100) DEFAULT NULL,
  `third_title` varchar(100) DEFAULT NULL,
  `fourth_title` varchar(100) DEFAULT NULL,
  `fifth_title` varchar(100) NOT NULL,
  `first_desc` varchar(255) DEFAULT NULL,
  `sec_desc` varchar(255) DEFAULT NULL,
  `third_desc` varchar(255) DEFAULT NULL,
  `fourth_des` varchar(255) DEFAULT NULL,
  `fifth_desc` varchar(255) DEFAULT NULL,
  `first_icon` varchar(100) DEFAULT NULL,
  `second_icon` varchar(100) DEFAULT NULL,
  `third_icon` varchar(100) DEFAULT NULL,
  `fourth_icon` varchar(100) DEFAULT NULL,
  `fifth_icon` varchar(100) DEFAULT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `featured_tbl`
--

CREATE TABLE `featured_tbl` (
  `featured_id` int(11) NOT NULL,
  `featured_title` varchar(50) DEFAULT NULL,
  `featured_pages` varchar(20) DEFAULT NULL,
  `added_on` datetime DEFAULT current_timestamp(),
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `footer_table`
--

CREATE TABLE `footer_table` (
  `footer_id` int(11) NOT NULL,
  `footer_title` varchar(50) DEFAULT NULL,
  `footer_description` longtext DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `header_id` int(11) NOT NULL,
  `province_name` varchar(150) DEFAULT NULL,
  `ministry` varchar(150) DEFAULT NULL,
  `nirdeshnalaya` varchar(150) DEFAULT NULL,
  `office_name` varchar(150) DEFAULT NULL,
  `office_location` varchar(150) DEFAULT NULL,
  `left_logo` varchar(100) DEFAULT NULL,
  `right_logo` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`header_id`, `province_name`, `ministry`, `nirdeshnalaya`, `office_name`, `office_location`, `left_logo`, `right_logo`, `created_by`, `deleted_by`, `added_on`) VALUES
(1, NULL, NULL, NULL, 'Online News Channel', 'Kathmandu, Nepal', '1732436815_0eca59192d3d46adefba.png', '', 0, 0, '2023-03-13 15:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_sections`
--

CREATE TABLE `homepage_sections` (
  `id` int(11) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `category_ids` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `item_count` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homepage_sections`
--

INSERT INTO `homepage_sections` (`id`, `section_name`, `category_ids`, `priority`, `content_type`, `item_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Breaking News', '1,2,3', 1, 'Breaking Section', 2, 1, '2024-11-24 09:54:24', '2024-11-24 10:12:59'),
(2, 'News Section', '4,5', 2, 'videos', 3, 1, '2024-11-24 09:54:24', '2024-11-24 09:55:06'),
(3, 'Entertainment Buzz', '6', 3, 'mixed', 4, 1, '2024-11-24 09:54:24', '2024-11-24 09:54:24'),
(4, 'Health & Wellness', '7,8', 4, 'articles', 6, 1, '2024-11-24 09:54:24', '2024-11-24 09:54:24'),
(5, 'Technology Trends', '9', 5, 'articles', 5, 0, '2024-11-24 09:54:24', '2024-11-24 09:54:24'),
(6, 'Opinion & Editorial', '10', 6, 'articles', 2, 1, '2024-11-24 09:54:24', '2024-11-24 09:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `icon_tbl`
--

CREATE TABLE `icon_tbl` (
  `icon_id` int(11) NOT NULL,
  `icon_class` varchar(30) NOT NULL,
  `unicode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `icon_tbl`
--

INSERT INTO `icon_tbl` (`icon_id`, `icon_class`, `unicode`) VALUES
(4, 'fa-ad', 'f641'),
(5, 'fa-address-book', 'f2b9'),
(6, 'fa-address-card', 'f2bb'),
(7, 'fa-adjust', 'f042'),
(11, 'fa-air-freshener', 'f5d0'),
(14, 'fa-align-center', 'f037'),
(15, 'fa-align-justify', 'f039'),
(16, 'fa-align-left', 'f036'),
(17, 'fa-align-right', 'f038'),
(19, 'fa-allergies', 'f461'),
(22, 'fa-ambulance', 'f0f9'),
(23, 'fa-american-sign-language-inte', 'f2a3'),
(25, 'fa-anchor', 'f13d'),
(28, 'fa-angle-double-down', 'f103'),
(29, 'fa-angle-double-left', 'f100'),
(30, 'fa-angle-double-right', 'f101'),
(31, 'fa-angle-double-up', 'f102'),
(32, 'fa-angle-down', 'f107'),
(33, 'fa-angle-left', 'f104'),
(34, 'fa-angle-right', 'f105'),
(35, 'fa-angle-up', 'f106'),
(38, 'fa-angular', 'f420'),
(39, 'fa-ankh', 'f644'),
(44, 'fa-apple-alt', 'f5d1'),
(46, 'fa-archive', 'f187'),
(47, 'fa-archway', 'f557'),
(48, 'fa-arrow-alt-circle-down', 'f358'),
(49, 'fa-arrow-alt-circle-left', 'f359'),
(50, 'fa-arrow-alt-circle-right', 'f35a'),
(51, 'fa-arrow-alt-circle-up', 'f35b'),
(52, 'fa-arrow-circle-down', 'f0ab'),
(53, 'fa-arrow-circle-left', 'f0a8'),
(54, 'fa-arrow-circle-right', 'f0a9'),
(55, 'fa-arrow-circle-up', 'f0aa'),
(56, 'fa-arrow-down', 'f063'),
(57, 'fa-arrow-left', 'f060'),
(58, 'fa-arrow-right', 'f061'),
(59, 'fa-arrow-up', 'f062'),
(60, 'fa-arrows-alt', 'f0b2'),
(61, 'fa-arrows-alt-h', 'f337'),
(62, 'fa-arrows-alt-v', 'f338'),
(64, 'fa-assistive-listening-systems', 'f2a2'),
(65, 'fa-asterisk', 'f069'),
(67, 'fa-at', 'f1fa'),
(68, 'fa-atlas', 'f558'),
(70, 'fa-atom', 'f5d2'),
(72, 'fa-audio-description', 'f29e'),
(76, 'fa-award', 'f559'),
(78, 'fa-baby', 'f77c'),
(79, 'fa-baby-carriage', 'f77d'),
(80, 'fa-backspace', 'f55a'),
(81, 'fa-backward', 'f04a'),
(82, 'fa-bacon', 'f7e5'),
(83, 'fa-bacteria', 'e059'),
(84, 'fa-bacterium', 'e05a'),
(85, 'fa-bahai', 'f666'),
(86, 'fa-balance-scale', 'f24e'),
(87, 'fa-balance-scale-left', 'f515'),
(88, 'fa-balance-scale-right', 'f516'),
(89, 'fa-ban', 'f05e'),
(90, 'fa-band-aid', 'f462'),
(92, 'fa-barcode', 'f02a'),
(93, 'fa-bars', 'f0c9'),
(94, 'fa-baseball-ball', 'f433'),
(95, 'fa-basketball-ball', 'f434'),
(96, 'fa-bath', 'f2cd'),
(97, 'fa-battery-empty', 'f244'),
(98, 'fa-battery-full', 'f240'),
(99, 'fa-battery-half', 'f242'),
(100, 'fa-battery-quarter', 'f243'),
(101, 'fa-battery-three-quarters', 'f241'),
(103, 'fa-bed', 'f236'),
(104, 'fa-beer', 'f0fc'),
(107, 'fa-bell', 'f0f3'),
(108, 'fa-bell-slash', 'f1f6'),
(109, 'fa-bezier-curve', 'f55b'),
(110, 'fa-bible', 'f647'),
(111, 'fa-bicycle', 'f206'),
(112, 'fa-biking', 'f84a'),
(114, 'fa-binoculars', 'f1e5'),
(115, 'fa-biohazard', 'f780'),
(116, 'fa-birthday-cake', 'f1fd'),
(122, 'fa-blender', 'f517'),
(123, 'fa-blender-phone', 'f6b6'),
(124, 'fa-blind', 'f29d'),
(125, 'fa-blog', 'f781'),
(130, 'fa-bold', 'f032'),
(131, 'fa-bolt', 'f0e7'),
(132, 'fa-bomb', 'f1e2'),
(133, 'fa-bone', 'f5d7'),
(134, 'fa-bong', 'f55c'),
(135, 'fa-book', 'f02d'),
(136, 'fa-book-dead', 'f6b7'),
(137, 'fa-book-medical', 'f7e6'),
(138, 'fa-book-open', 'f518'),
(139, 'fa-book-reader', 'f5da'),
(140, 'fa-bookmark', 'f02e'),
(142, 'fa-border-all', 'f84c'),
(143, 'fa-border-none', 'f850'),
(144, 'fa-border-style', 'f853'),
(145, 'fa-bowling-ball', 'f436'),
(146, 'fa-box', 'f466'),
(147, 'fa-box-open', 'f49e'),
(148, 'fa-box-tissue', 'e05b'),
(149, 'fa-boxes', 'f468'),
(150, 'fa-braille', 'f2a1'),
(151, 'fa-brain', 'f5dc'),
(152, 'fa-bread-slice', 'f7ec'),
(153, 'fa-briefcase', 'f0b1'),
(154, 'fa-briefcase-medical', 'f469'),
(155, 'fa-broadcast-tower', 'f519'),
(156, 'fa-broom', 'f51a'),
(157, 'fa-brush', 'f55d'),
(159, 'fa-buffer', 'f837'),
(160, 'fa-bug', 'f188'),
(161, 'fa-building', 'f1ad'),
(162, 'fa-bullhorn', 'f0a1'),
(163, 'fa-bullseye', 'f140'),
(164, 'fa-burn', 'f46a'),
(166, 'fa-bus', 'f207'),
(167, 'fa-bus-alt', 'f55e'),
(168, 'fa-business-time', 'f64a'),
(170, 'fa-buysellads', 'f20d'),
(171, 'fa-calculator', 'f1ec'),
(172, 'fa-calendar', 'f133'),
(173, 'fa-calendar-alt', 'f073'),
(174, 'fa-calendar-check', 'f274'),
(175, 'fa-calendar-day', 'f783'),
(176, 'fa-calendar-minus', 'f272'),
(177, 'fa-calendar-plus', 'f271'),
(178, 'fa-calendar-times', 'f273'),
(179, 'fa-calendar-week', 'f784'),
(180, 'fa-camera', 'f030'),
(181, 'fa-camera-retro', 'f083'),
(182, 'fa-campground', 'f6bb'),
(184, 'fa-candy-cane', 'f786'),
(185, 'fa-cannabis', 'f55f'),
(186, 'fa-capsules', 'f46b'),
(187, 'fa-car', 'f1b9'),
(188, 'fa-car-alt', 'f5de'),
(189, 'fa-car-battery', 'f5df'),
(190, 'fa-car-crash', 'f5e1'),
(191, 'fa-car-side', 'f5e4'),
(192, 'fa-caravan', 'f8ff'),
(193, 'fa-caret-down', 'f0d7'),
(194, 'fa-caret-left', 'f0d9'),
(195, 'fa-caret-right', 'f0da'),
(196, 'fa-caret-square-down', 'f150'),
(197, 'fa-caret-square-left', 'f191'),
(198, 'fa-caret-square-right', 'f152'),
(199, 'fa-caret-square-up', 'f151'),
(200, 'fa-caret-up', 'f0d8'),
(201, 'fa-carrot', 'f787'),
(202, 'fa-cart-arrow-down', 'f218'),
(203, 'fa-cart-plus', 'f217'),
(204, 'fa-cash-register', 'f788'),
(205, 'fa-cat', 'f6be'),
(218, 'fa-certificate', 'f0a3'),
(219, 'fa-chair', 'f6c0'),
(220, 'fa-chalkboard', 'f51b'),
(221, 'fa-chalkboard-teacher', 'f51c'),
(222, 'fa-charging-station', 'f5e7'),
(223, 'fa-chart-area', 'f1fe'),
(224, 'fa-chart-bar', 'f080'),
(225, 'fa-chart-line', 'f201'),
(226, 'fa-chart-pie', 'f200'),
(227, 'fa-check', 'f00c'),
(228, 'fa-check-circle', 'f058'),
(229, 'fa-check-double', 'f560'),
(230, 'fa-check-square', 'f14a'),
(231, 'fa-cheese', 'f7ef'),
(232, 'fa-chess', 'f439'),
(233, 'fa-chess-bishop', 'f43a'),
(234, 'fa-chess-board', 'f43c'),
(235, 'fa-chess-king', 'f43f'),
(236, 'fa-chess-knight', 'f441'),
(237, 'fa-chess-pawn', 'f443'),
(238, 'fa-chess-queen', 'f445'),
(239, 'fa-chess-rook', 'f447'),
(240, 'fa-chevron-circle-down', 'f13a'),
(241, 'fa-chevron-circle-left', 'f137'),
(242, 'fa-chevron-circle-right', 'f138'),
(243, 'fa-chevron-circle-up', 'f139'),
(244, 'fa-chevron-down', 'f078'),
(245, 'fa-chevron-left', 'f053'),
(246, 'fa-chevron-right', 'f054'),
(247, 'fa-chevron-up', 'f077'),
(248, 'fa-child', 'f1ae'),
(249, 'fa-chrome', 'f268'),
(251, 'fa-church', 'f51d'),
(252, 'fa-circle', 'f111'),
(253, 'fa-circle-notch', 'f1ce'),
(254, 'fa-city', 'f64f'),
(255, 'fa-clinic-medical', 'f7f2'),
(256, 'fa-clipboard', 'f328'),
(257, 'fa-clipboard-check', 'f46c'),
(258, 'fa-clipboard-list', 'f46d'),
(259, 'fa-clock', 'f017'),
(260, 'fa-clone', 'f24d'),
(261, 'fa-closed-captioning', 'f20a'),
(262, 'fa-cloud', 'f0c2'),
(263, 'fa-cloud-download-alt', 'f381'),
(264, 'fa-cloud-meatball', 'f73b'),
(265, 'fa-cloud-moon', 'f6c3'),
(266, 'fa-cloud-moon-rain', 'f73c'),
(267, 'fa-cloud-rain', 'f73d'),
(268, 'fa-cloud-showers-heavy', 'f740'),
(269, 'fa-cloud-sun', 'f6c4'),
(270, 'fa-cloud-sun-rain', 'f743'),
(271, 'fa-cloud-upload-alt', 'f382'),
(276, 'fa-cocktail', 'f561'),
(277, 'fa-code', 'f121'),
(278, 'fa-code-branch', 'f126'),
(281, 'fa-coffee', 'f0f4'),
(282, 'fa-cog', 'f013'),
(283, 'fa-cogs', 'f085'),
(284, 'fa-coins', 'f51e'),
(285, 'fa-columns', 'f0db'),
(286, 'fa-comment', 'f075'),
(287, 'fa-comment-alt', 'f27a'),
(288, 'fa-comment-dollar', 'f651'),
(289, 'fa-comment-dots', 'f4ad'),
(290, 'fa-comment-medical', 'f7f5'),
(291, 'fa-comment-slash', 'f4b3'),
(292, 'fa-comments', 'f086'),
(293, 'fa-comments-dollar', 'f653'),
(294, 'fa-compact-disc', 'f51f'),
(295, 'fa-compass', 'f14e'),
(296, 'fa-compress', 'f066'),
(297, 'fa-compress-alt', 'f422'),
(298, 'fa-compress-arrows-alt', 'f78c'),
(299, 'fa-concierge-bell', 'f562'),
(300, 'fa-confluence', 'f78d'),
(301, 'fa-connectdevelop', 'f20e'),
(302, 'fa-contao', 'f26d'),
(303, 'fa-cookie', 'f563'),
(304, 'fa-cookie-bite', 'f564'),
(305, 'fa-copy', 'f0c5'),
(306, 'fa-copyright', 'f1f9'),
(307, 'fa-cotton-bureau', 'f89e'),
(308, 'fa-couch', 'f4b8'),
(309, 'fa-cpanel', 'f388'),
(310, 'fa-creative-commons', 'f25e'),
(311, 'fa-creative-commons-by', 'f4e7'),
(312, 'fa-creative-commons-nc', 'f4e8'),
(313, 'fa-creative-commons-nc-eu', 'f4e9'),
(314, 'fa-creative-commons-nc-jp', 'f4ea'),
(315, 'fa-creative-commons-nd', 'f4eb'),
(316, 'fa-creative-commons-pd', 'f4ec'),
(317, 'fa-creative-commons-pd-alt', 'f4ed'),
(318, 'fa-creative-commons-remix', 'f4ee'),
(319, 'fa-creative-commons-sa', 'f4ef'),
(320, 'fa-creative-commons-sampling', 'f4f0'),
(321, 'fa-creative-commons-sampling-p', 'f4f1'),
(322, 'fa-creative-commons-share', 'f4f2'),
(323, 'fa-creative-commons-zero', 'f4f3'),
(324, 'fa-credit-card', 'f09d'),
(325, 'fa-critical-role', 'f6c9'),
(326, 'fa-crop', 'f125'),
(327, 'fa-crop-alt', 'f565'),
(328, 'fa-cross', 'f654'),
(329, 'fa-crosshairs', 'f05b'),
(330, 'fa-crow', 'f520'),
(331, 'fa-crown', 'f521'),
(332, 'fa-crutch', 'f7f7'),
(333, 'fa-css3', 'f13c'),
(334, 'fa-css3-alt', 'f38b'),
(335, 'fa-cube', 'f1b2'),
(336, 'fa-cubes', 'f1b3'),
(337, 'fa-cut', 'f0c4'),
(338, 'fa-cuttlefish', 'f38c'),
(339, 'fa-d-and-d', 'f38d'),
(340, 'fa-d-and-d-beyond', 'f6ca'),
(341, 'fa-dailymotion', 'e052'),
(342, 'fa-dashcube', 'f210'),
(343, 'fa-database', 'f1c0'),
(344, 'fa-deaf', 'f2a4'),
(345, 'fa-deezer', 'e077'),
(346, 'fa-delicious', 'f1a5'),
(347, 'fa-democrat', 'f747'),
(348, 'fa-deploydog', 'f38e'),
(349, 'fa-deskpro', 'f38f'),
(350, 'fa-desktop', 'f108'),
(351, 'fa-dev', 'f6cc'),
(352, 'fa-deviantart', 'f1bd'),
(353, 'fa-dharmachakra', 'f655'),
(354, 'fa-dhl', 'f790'),
(355, 'fa-diagnoses', 'f470'),
(356, 'fa-diaspora', 'f791'),
(357, 'fa-dice', 'f522'),
(358, 'fa-dice-d20', 'f6cf'),
(359, 'fa-dice-d6', 'f6d1'),
(360, 'fa-dice-five', 'f523'),
(361, 'fa-dice-four', 'f524'),
(362, 'fa-dice-one', 'f525'),
(363, 'fa-dice-six', 'f526'),
(364, 'fa-dice-three', 'f527'),
(365, 'fa-dice-two', 'f528'),
(366, 'fa-digg', 'f1a6'),
(367, 'fa-digital-ocean', 'f391'),
(368, 'fa-digital-tachograph', 'f566'),
(369, 'fa-directions', 'f5eb'),
(370, 'fa-discord', 'f392'),
(371, 'fa-discourse', 'f393'),
(372, 'fa-disease', 'f7fa'),
(373, 'fa-divide', 'f529'),
(374, 'fa-dizzy', 'f567'),
(375, 'fa-dna', 'f471'),
(376, 'fa-dochub', 'f394'),
(377, 'fa-docker', 'f395'),
(378, 'fa-dog', 'f6d3'),
(379, 'fa-dollar-sign', 'f155'),
(380, 'fa-dolly', 'f472'),
(381, 'fa-dolly-flatbed', 'f474'),
(382, 'fa-donate', 'f4b9'),
(383, 'fa-door-closed', 'f52a'),
(384, 'fa-door-open', 'f52b'),
(385, 'fa-dot-circle', 'f192'),
(386, 'fa-dove', 'f4ba'),
(387, 'fa-download', 'f019'),
(388, 'fa-draft2digital', 'f396'),
(389, 'fa-drafting-compass', 'f568'),
(390, 'fa-dragon', 'f6d5'),
(391, 'fa-draw-polygon', 'f5ee'),
(392, 'fa-dribbble', 'f17d'),
(393, 'fa-dribbble-square', 'f397'),
(394, 'fa-dropbox', 'f16b'),
(395, 'fa-drum', 'f569'),
(396, 'fa-drum-steelpan', 'f56a'),
(397, 'fa-drumstick-bite', 'f6d7'),
(398, 'fa-drupal', 'f1a9'),
(399, 'fa-dumbbell', 'f44b'),
(400, 'fa-dumpster', 'f793'),
(401, 'fa-dumpster-fire', 'f794'),
(402, 'fa-dungeon', 'f6d9'),
(403, 'fa-dyalog', 'f399'),
(404, 'fa-earlybirds', 'f39a'),
(405, 'fa-ebay', 'f4f4'),
(406, 'fa-edge', 'f282'),
(407, 'fa-edge-legacy', 'e078'),
(408, 'fa-edit', 'f044'),
(409, 'fa-egg', 'f7fb'),
(410, 'fa-eject', 'f052'),
(411, 'fa-elementor', 'f430'),
(412, 'fa-ellipsis-h', 'f141'),
(413, 'fa-ellipsis-v', 'f142'),
(414, 'fa-ello', 'f5f1'),
(415, 'fa-ember', 'f423'),
(416, 'fa-empire', 'f1d1'),
(417, 'fa-envelope', 'f0e0'),
(418, 'fa-envelope-open', 'f2b6'),
(419, 'fa-envelope-open-text', 'f658'),
(420, 'fa-envelope-square', 'f199'),
(421, 'fa-envira', 'f299'),
(422, 'fa-equals', 'f52c'),
(423, 'fa-eraser', 'f12d'),
(424, 'fa-erlang', 'f39d'),
(425, 'fa-ethereum', 'f42e'),
(426, 'fa-ethernet', 'f796'),
(427, 'fa-etsy', 'f2d7'),
(428, 'fa-euro-sign', 'f153'),
(429, 'fa-evernote', 'f839'),
(430, 'fa-exchange-alt', 'f362'),
(431, 'fa-exclamation', 'f12a'),
(432, 'fa-exclamation-circle', 'f06a'),
(433, 'fa-exclamation-triangle', 'f071'),
(434, 'fa-expand', 'f065'),
(435, 'fa-expand-alt', 'f424'),
(436, 'fa-expand-arrows-alt', 'f31e'),
(437, 'fa-expeditedssl', 'f23e'),
(438, 'fa-external-link-alt', 'f35d'),
(439, 'fa-external-link-square-alt', 'f360'),
(440, 'fa-eye', 'f06e'),
(441, 'fa-eye-dropper', 'f1fb'),
(442, 'fa-eye-slash', 'f070'),
(443, 'fa-facebook', 'f09a'),
(444, 'fa-facebook-f', 'f39e'),
(445, 'fa-facebook-messenger', 'f39f'),
(446, 'fa-facebook-square', 'f082'),
(447, 'fa-fan', 'f863'),
(448, 'fa-fantasy-flight-games', 'f6dc'),
(449, 'fa-fast-backward', 'f049'),
(450, 'fa-fast-forward', 'f050'),
(451, 'fa-faucet', 'e005'),
(452, 'fa-fax', 'f1ac'),
(453, 'fa-feather', 'f52d'),
(454, 'fa-feather-alt', 'f56b'),
(455, 'fa-fedex', 'f797'),
(456, 'fa-fedora', 'f798'),
(457, 'fa-female', 'f182'),
(458, 'fa-fighter-jet', 'f0fb'),
(459, 'fa-figma', 'f799'),
(460, 'fa-file', 'f15b'),
(461, 'fa-file-alt', 'f15c'),
(462, 'fa-file-archive', 'f1c6'),
(463, 'fa-file-audio', 'f1c7'),
(464, 'fa-file-code', 'f1c9'),
(465, 'fa-file-contract', 'f56c'),
(466, 'fa-file-csv', 'f6dd'),
(467, 'fa-file-download', 'f56d'),
(468, 'fa-file-excel', 'f1c3'),
(469, 'fa-file-export', 'f56e'),
(470, 'fa-file-image', 'f1c5'),
(471, 'fa-file-import', 'f56f'),
(472, 'fa-file-invoice', 'f570'),
(473, 'fa-file-invoice-dollar', 'f571'),
(474, 'fa-file-medical', 'f477'),
(475, 'fa-file-medical-alt', 'f478'),
(476, 'fa-file-pdf', 'f1c1'),
(477, 'fa-file-powerpoint', 'f1c4'),
(478, 'fa-file-prescription', 'f572'),
(479, 'fa-file-signature', 'f573'),
(480, 'fa-file-upload', 'f574'),
(481, 'fa-file-video', 'f1c8'),
(482, 'fa-file-word', 'f1c2'),
(483, 'fa-fill', 'f575'),
(484, 'fa-fill-drip', 'f576'),
(485, 'fa-film', 'f008'),
(486, 'fa-filter', 'f0b0'),
(487, 'fa-fingerprint', 'f577'),
(488, 'fa-fire', 'f06d'),
(489, 'fa-fire-alt', 'f7e4'),
(490, 'fa-fire-extinguisher', 'f134'),
(491, 'fa-firefox', 'f269'),
(492, 'fa-firefox-browser', 'e007'),
(493, 'fa-first-aid', 'f479'),
(494, 'fa-first-order', 'f2b0'),
(495, 'fa-first-order-alt', 'f50a'),
(496, 'fa-firstdraft', 'f3a1'),
(497, 'fa-fish', 'f578'),
(498, 'fa-fist-raised', 'f6de'),
(499, 'fa-flag', 'f024'),
(500, 'fa-flag-checkered', 'f11e'),
(501, 'fa-flag-usa', 'f74d'),
(502, 'fa-flask', 'f0c3'),
(503, 'fa-flickr', 'f16e'),
(504, 'fa-flipboard', 'f44d'),
(505, 'fa-flushed', 'f579'),
(506, 'fa-fly', 'f417'),
(507, 'fa-folder', 'f07b'),
(508, 'fa-folder-minus', 'f65d'),
(509, 'fa-folder-open', 'f07c'),
(510, 'fa-folder-plus', 'f65e'),
(511, 'fa-font', 'f031'),
(512, 'fa-font-awesome', 'f2b4'),
(513, 'fa-font-awesome-alt', 'f35c'),
(514, 'fa-font-awesome-flag', 'f425'),
(515, 'fa-font-awesome-logo-full', 'f4e6'),
(516, 'fa-fonticons', 'f280'),
(517, 'fa-fonticons-fi', 'f3a2'),
(518, 'fa-football-ball', 'f44e'),
(519, 'fa-fort-awesome', 'f286'),
(520, 'fa-fort-awesome-alt', 'f3a3'),
(521, 'fa-forumbee', 'f211'),
(522, 'fa-forward', 'f04e'),
(523, 'fa-foursquare', 'f180'),
(524, 'fa-free-code-camp', 'f2c5'),
(525, 'fa-freebsd', 'f3a4'),
(526, 'fa-frog', 'f52e'),
(527, 'fa-frown', 'f119'),
(528, 'fa-frown-open', 'f57a'),
(529, 'fa-fulcrum', 'f50b'),
(530, 'fa-funnel-dollar', 'f662'),
(531, 'fa-futbol', 'f1e3'),
(532, 'fa-galactic-republic', 'f50c'),
(533, 'fa-galactic-senate', 'f50d'),
(534, 'fa-gamepad', 'f11b'),
(535, 'fa-gas-pump', 'f52f'),
(536, 'fa-gavel', 'f0e3'),
(537, 'fa-gem', 'f3a5'),
(538, 'fa-genderless', 'f22d'),
(539, 'fa-get-pocket', 'f265'),
(540, 'fa-gg', 'f260'),
(541, 'fa-gg-circle', 'f261'),
(542, 'fa-ghost', 'f6e2'),
(543, 'fa-gift', 'f06b'),
(544, 'fa-gifts', 'f79c'),
(545, 'fa-git', 'f1d3'),
(546, 'fa-git-alt', 'f841'),
(547, 'fa-git-square', 'f1d2'),
(548, 'fa-github', 'f09b'),
(549, 'fa-github-alt', 'f113'),
(550, 'fa-github-square', 'f092'),
(551, 'fa-gitkraken', 'f3a6'),
(552, 'fa-gitlab', 'f296'),
(553, 'fa-gitter', 'f426'),
(554, 'fa-glass-cheers', 'f79f'),
(555, 'fa-glass-martini', 'f000'),
(556, 'fa-glass-martini-alt', 'f57b'),
(557, 'fa-glass-whiskey', 'f7a0'),
(558, 'fa-glasses', 'f530'),
(559, 'fa-glide', 'f2a5'),
(560, 'fa-glide-g', 'f2a6'),
(561, 'fa-globe', 'f0ac'),
(562, 'fa-globe-africa', 'f57c'),
(563, 'fa-globe-americas', 'f57d'),
(564, 'fa-globe-asia', 'f57e'),
(565, 'fa-globe-europe', 'f7a2'),
(566, 'fa-gofore', 'f3a7'),
(567, 'fa-golf-ball', 'f450'),
(568, 'fa-goodreads', 'f3a8'),
(569, 'fa-goodreads-g', 'f3a9'),
(570, 'fa-google', 'f1a0'),
(571, 'fa-google-drive', 'f3aa'),
(572, 'fa-google-pay', 'e079'),
(573, 'fa-google-play', 'f3ab'),
(574, 'fa-google-plus', 'f2b3'),
(575, 'fa-google-plus-g', 'f0d5'),
(576, 'fa-google-plus-square', 'f0d4'),
(577, 'fa-google-wallet', 'f1ee'),
(578, 'fa-gopuram', 'f664'),
(579, 'fa-graduation-cap', 'f19d'),
(580, 'fa-gratipay', 'f184'),
(581, 'fa-grav', 'f2d6'),
(582, 'fa-greater-than', 'f531'),
(583, 'fa-greater-than-equal', 'f532'),
(584, 'fa-grimace', 'f57f'),
(585, 'fa-grin', 'f580'),
(586, 'fa-grin-alt', 'f581'),
(587, 'fa-grin-beam', 'f582'),
(588, 'fa-grin-beam-sweat', 'f583'),
(589, 'fa-grin-hearts', 'f584'),
(590, 'fa-grin-squint', 'f585'),
(591, 'fa-grin-squint-tears', 'f586'),
(592, 'fa-grin-stars', 'f587'),
(593, 'fa-grin-tears', 'f588'),
(594, 'fa-grin-tongue', 'f589'),
(595, 'fa-grin-tongue-squint', 'f58a'),
(596, 'fa-grin-tongue-wink', 'f58b'),
(597, 'fa-grin-wink', 'f58c'),
(598, 'fa-grip-horizontal', 'f58d'),
(599, 'fa-grip-lines', 'f7a4'),
(600, 'fa-grip-lines-vertical', 'f7a5'),
(601, 'fa-grip-vertical', 'f58e'),
(602, 'fa-gripfire', 'f3ac'),
(603, 'fa-grunt', 'f3ad'),
(604, 'fa-guilded', 'e07e'),
(605, 'fa-guitar', 'f7a6'),
(606, 'fa-gulp', 'f3ae'),
(607, 'fa-h-square', 'f0fd'),
(608, 'fa-hacker-news', 'f1d4'),
(609, 'fa-hacker-news-square', 'f3af'),
(610, 'fa-hackerrank', 'f5f7'),
(611, 'fa-hamburger', 'f805'),
(612, 'fa-hammer', 'f6e3'),
(613, 'fa-hamsa', 'f665'),
(614, 'fa-hand-holding', 'f4bd'),
(615, 'fa-hand-holding-heart', 'f4be'),
(616, 'fa-hand-holding-medical', 'e05c'),
(617, 'fa-hand-holding-usd', 'f4c0'),
(618, 'fa-hand-holding-water', 'f4c1'),
(619, 'fa-hand-lizard', 'f258'),
(620, 'fa-hand-middle-finger', 'f806'),
(621, 'fa-hand-paper', 'f256'),
(622, 'fa-hand-peace', 'f25b'),
(623, 'fa-hand-point-down', 'f0a7'),
(624, 'fa-hand-point-left', 'f0a5'),
(625, 'fa-hand-point-right', 'f0a4'),
(626, 'fa-hand-point-up', 'f0a6'),
(627, 'fa-hand-pointer', 'f25a'),
(628, 'fa-hand-rock', 'f255'),
(629, 'fa-hand-scissors', 'f257'),
(630, 'fa-hand-sparkles', 'e05d'),
(631, 'fa-hand-spock', 'f259'),
(632, 'fa-hands', 'f4c2'),
(633, 'fa-hands-helping', 'f4c4'),
(634, 'fa-hands-wash', 'e05e'),
(635, 'fa-handshake', 'f2b5'),
(636, 'fa-handshake-alt-slash', 'e05f'),
(637, 'fa-handshake-slash', 'e060'),
(638, 'fa-hanukiah', 'f6e6'),
(639, 'fa-hard-hat', 'f807'),
(640, 'fa-hashtag', 'f292'),
(641, 'fa-hat-cowboy', 'f8c0'),
(642, 'fa-hat-cowboy-side', 'f8c1'),
(643, 'fa-hat-wizard', 'f6e8'),
(644, 'fa-hdd', 'f0a0'),
(645, 'fa-head-side-cough', 'e061'),
(646, 'fa-head-side-cough-slash', 'e062'),
(647, 'fa-head-side-mask', 'e063'),
(648, 'fa-head-side-virus', 'e064'),
(649, 'fa-heading', 'f1dc'),
(650, 'fa-headphones', 'f025'),
(651, 'fa-headphones-alt', 'f58f'),
(652, 'fa-headset', 'f590'),
(653, 'fa-heart', 'f004'),
(654, 'fa-heart-broken', 'f7a9'),
(655, 'fa-heartbeat', 'f21e'),
(656, 'fa-helicopter', 'f533'),
(657, 'fa-highlighter', 'f591'),
(658, 'fa-hiking', 'f6ec'),
(659, 'fa-hippo', 'f6ed'),
(660, 'fa-hips', 'f452'),
(661, 'fa-hire-a-helper', 'f3b0'),
(662, 'fa-history', 'f1da'),
(663, 'fa-hive', 'e07f'),
(664, 'fa-hockey-puck', 'f453'),
(665, 'fa-holly-berry', 'f7aa'),
(666, 'fa-home', 'f015'),
(667, 'fa-hooli', 'f427'),
(668, 'fa-hornbill', 'f592'),
(669, 'fa-horse', 'f6f0'),
(670, 'fa-horse-head', 'f7ab'),
(671, 'fa-hospital', 'f0f8'),
(672, 'fa-hospital-alt', 'f47d'),
(673, 'fa-hospital-symbol', 'f47e'),
(674, 'fa-hospital-user', 'f80d'),
(675, 'fa-hot-tub', 'f593'),
(676, 'fa-hotdog', 'f80f'),
(677, 'fa-hotel', 'f594'),
(678, 'fa-hotjar', 'f3b1'),
(679, 'fa-hourglass', 'f254'),
(680, 'fa-hourglass-end', 'f253'),
(681, 'fa-hourglass-half', 'f252'),
(682, 'fa-hourglass-start', 'f251'),
(683, 'fa-house-damage', 'f6f1'),
(684, 'fa-house-user', 'e065'),
(685, 'fa-houzz', 'f27c'),
(686, 'fa-hryvnia', 'f6f2'),
(687, 'fa-html5', 'f13b'),
(688, 'fa-hubspot', 'f3b2'),
(689, 'fa-i-cursor', 'f246'),
(690, 'fa-ice-cream', 'f810'),
(691, 'fa-icicles', 'f7ad'),
(692, 'fa-icons', 'f86d'),
(693, 'fa-id-badge', 'f2c1'),
(694, 'fa-id-card', 'f2c2'),
(695, 'fa-id-card-alt', 'f47f'),
(696, 'fa-ideal', 'e013'),
(697, 'fa-igloo', 'f7ae'),
(698, 'fa-image', 'f03e'),
(699, 'fa-images', 'f302'),
(700, 'fa-imdb', 'f2d8'),
(701, 'fa-inbox', 'f01c'),
(702, 'fa-indent', 'f03c'),
(703, 'fa-industry', 'f275'),
(704, 'fa-infinity', 'f534'),
(705, 'fa-info', 'f129'),
(706, 'fa-info-circle', 'f05a'),
(707, 'fa-innosoft', 'e080'),
(708, 'fa-instagram', 'f16d'),
(709, 'fa-instagram-square', 'e055'),
(710, 'fa-instalod', 'e081'),
(711, 'fa-intercom', 'f7af'),
(712, 'fa-internet-explorer', 'f26b'),
(713, 'fa-invision', 'f7b0'),
(714, 'fa-ioxhost', 'f208'),
(715, 'fa-italic', 'f033'),
(716, 'fa-itch-io', 'f83a'),
(717, 'fa-itunes', 'f3b4'),
(718, 'fa-itunes-note', 'f3b5'),
(719, 'fa-java', 'f4e4'),
(720, 'fa-jedi', 'f669'),
(721, 'fa-jedi-order', 'f50e'),
(722, 'fa-jenkins', 'f3b6'),
(723, 'fa-jira', 'f7b1'),
(724, 'fa-joget', 'f3b7'),
(725, 'fa-joint', 'f595'),
(726, 'fa-joomla', 'f1aa'),
(727, 'fa-journal-whills', 'f66a'),
(728, 'fa-js', 'f3b8'),
(729, 'fa-js-square', 'f3b9'),
(730, 'fa-jsfiddle', 'f1cc'),
(731, 'fa-kaaba', 'f66b'),
(732, 'fa-kaggle', 'f5fa'),
(733, 'fa-key', 'f084'),
(734, 'fa-keybase', 'f4f5'),
(735, 'fa-keyboard', 'f11c'),
(736, 'fa-keycdn', 'f3ba'),
(737, 'fa-khanda', 'f66d'),
(738, 'fa-kickstarter', 'f3bb'),
(739, 'fa-kickstarter-k', 'f3bc'),
(740, 'fa-kiss', 'f596'),
(741, 'fa-kiss-beam', 'f597'),
(742, 'fa-kiss-wink-heart', 'f598'),
(743, 'fa-kiwi-bird', 'f535'),
(744, 'fa-korvue', 'f42f'),
(745, 'fa-landmark', 'f66f'),
(746, 'fa-language', 'f1ab'),
(747, 'fa-laptop', 'f109'),
(748, 'fa-laptop-code', 'f5fc'),
(749, 'fa-laptop-house', 'e066'),
(750, 'fa-laptop-medical', 'f812'),
(751, 'fa-laravel', 'f3bd'),
(752, 'fa-lastfm', 'f202'),
(753, 'fa-lastfm-square', 'f203'),
(754, 'fa-laugh', 'f599'),
(755, 'fa-laugh-beam', 'f59a'),
(756, 'fa-laugh-squint', 'f59b'),
(757, 'fa-laugh-wink', 'f59c'),
(758, 'fa-layer-group', 'f5fd'),
(759, 'fa-leaf', 'f06c'),
(760, 'fa-leanpub', 'f212'),
(761, 'fa-lemon', 'f094'),
(762, 'fa-less', 'f41d'),
(763, 'fa-less-than', 'f536'),
(764, 'fa-less-than-equal', 'f537'),
(765, 'fa-level-down-alt', 'f3be'),
(766, 'fa-level-up-alt', 'f3bf'),
(767, 'fa-life-ring', 'f1cd'),
(768, 'fa-lightbulb', 'f0eb'),
(769, 'fa-line', 'f3c0'),
(770, 'fa-link', 'f0c1'),
(771, 'fa-linkedin', 'f08c'),
(772, 'fa-linkedin-in', 'f0e1'),
(773, 'fa-linode', 'f2b8'),
(774, 'fa-linux', 'f17c'),
(775, 'fa-lira-sign', 'f195'),
(776, 'fa-list', 'f03a'),
(777, 'fa-list-alt', 'f022'),
(778, 'fa-list-ol', 'f0cb'),
(779, 'fa-list-ul', 'f0ca'),
(780, 'fa-location-arrow', 'f124'),
(781, 'fa-lock', 'f023'),
(782, 'fa-lock-open', 'f3c1'),
(783, 'fa-long-arrow-alt-down', 'f309'),
(784, 'fa-long-arrow-alt-left', 'f30a'),
(785, 'fa-long-arrow-alt-right', 'f30b'),
(786, 'fa-long-arrow-alt-up', 'f30c'),
(787, 'fa-low-vision', 'f2a8'),
(788, 'fa-luggage-cart', 'f59d'),
(789, 'fa-lungs', 'f604'),
(790, 'fa-lungs-virus', 'e067'),
(791, 'fa-lyft', 'f3c3'),
(792, 'fa-magento', 'f3c4'),
(793, 'fa-magic', 'f0d0'),
(794, 'fa-magnet', 'f076'),
(795, 'fa-mail-bulk', 'f674'),
(796, 'fa-mailchimp', 'f59e'),
(797, 'fa-male', 'f183'),
(798, 'fa-mandalorian', 'f50f'),
(799, 'fa-map', 'f279'),
(800, 'fa-map-marked', 'f59f'),
(801, 'fa-map-marked-alt', 'f5a0'),
(802, 'fa-map-marker', 'f041'),
(803, 'fa-map-marker-alt', 'f3c5'),
(804, 'fa-map-pin', 'f276'),
(805, 'fa-map-signs', 'f277'),
(806, 'fa-markdown', 'f60f'),
(807, 'fa-marker', 'f5a1'),
(808, 'fa-mars', 'f222'),
(809, 'fa-mars-double', 'f227'),
(810, 'fa-mars-stroke', 'f229'),
(811, 'fa-mars-stroke-h', 'f22b'),
(812, 'fa-mars-stroke-v', 'f22a'),
(813, 'fa-mask', 'f6fa'),
(814, 'fa-mastodon', 'f4f6'),
(815, 'fa-maxcdn', 'f136'),
(816, 'fa-mdb', 'f8ca'),
(817, 'fa-medal', 'f5a2'),
(818, 'fa-medapps', 'f3c6'),
(819, 'fa-medium', 'f23a'),
(820, 'fa-medium-m', 'f3c7'),
(821, 'fa-medkit', 'f0fa'),
(822, 'fa-medrt', 'f3c8'),
(823, 'fa-meetup', 'f2e0'),
(824, 'fa-megaport', 'f5a3'),
(825, 'fa-meh', 'f11a'),
(826, 'fa-meh-blank', 'f5a4'),
(827, 'fa-meh-rolling-eyes', 'f5a5'),
(828, 'fa-memory', 'f538'),
(829, 'fa-mendeley', 'f7b3'),
(830, 'fa-menorah', 'f676'),
(831, 'fa-mercury', 'f223'),
(832, 'fa-meteor', 'f753'),
(833, 'fa-microblog', 'e01a'),
(834, 'fa-microchip', 'f2db'),
(835, 'fa-microphone', 'f130'),
(836, 'fa-microphone-alt', 'f3c9'),
(837, 'fa-microphone-alt-slash', 'f539'),
(838, 'fa-microphone-slash', 'f131'),
(839, 'fa-microscope', 'f610'),
(840, 'fa-microsoft', 'f3ca'),
(841, 'fa-minus', 'f068'),
(842, 'fa-minus-circle', 'f056'),
(843, 'fa-minus-square', 'f146'),
(844, 'fa-mitten', 'f7b5'),
(845, 'fa-mix', 'f3cb'),
(846, 'fa-mixcloud', 'f289'),
(847, 'fa-mixer', 'e056'),
(848, 'fa-mizuni', 'f3cc'),
(849, 'fa-mobile', 'f10b'),
(850, 'fa-mobile-alt', 'f3cd'),
(851, 'fa-modx', 'f285'),
(852, 'fa-monero', 'f3d0'),
(853, 'fa-money-bill', 'f0d6'),
(854, 'fa-money-bill-alt', 'f3d1'),
(855, 'fa-money-bill-wave', 'f53a'),
(856, 'fa-money-bill-wave-alt', 'f53b'),
(857, 'fa-money-check', 'f53c'),
(858, 'fa-money-check-alt', 'f53d'),
(859, 'fa-monument', 'f5a6'),
(860, 'fa-moon', 'f186'),
(861, 'fa-mortar-pestle', 'f5a7'),
(862, 'fa-mosque', 'f678'),
(863, 'fa-motorcycle', 'f21c'),
(864, 'fa-mountain', 'f6fc'),
(865, 'fa-mouse', 'f8cc'),
(866, 'fa-mouse-pointer', 'f245'),
(867, 'fa-mug-hot', 'f7b6'),
(868, 'fa-music', 'f001'),
(869, 'fa-napster', 'f3d2'),
(870, 'fa-neos', 'f612'),
(871, 'fa-network-wired', 'f6ff'),
(872, 'fa-neuter', 'f22c'),
(873, 'fa-newspaper', 'f1ea'),
(874, 'fa-nimblr', 'f5a8'),
(875, 'fa-node', 'f419'),
(876, 'fa-node-js', 'f3d3'),
(877, 'fa-not-equal', 'f53e'),
(878, 'fa-notes-medical', 'f481'),
(879, 'fa-npm', 'f3d4'),
(880, 'fa-ns8', 'f3d5'),
(881, 'fa-nutritionix', 'f3d6'),
(882, 'fa-object-group', 'f247'),
(883, 'fa-object-ungroup', 'f248'),
(884, 'fa-octopus-deploy', 'e082'),
(885, 'fa-odnoklassniki', 'f263'),
(886, 'fa-odnoklassniki-square', 'f264'),
(887, 'fa-oil-can', 'f613'),
(888, 'fa-old-republic', 'f510'),
(889, 'fa-om', 'f679'),
(890, 'fa-opencart', 'f23d'),
(891, 'fa-openid', 'f19b'),
(892, 'fa-opera', 'f26a'),
(893, 'fa-optin-monster', 'f23c'),
(894, 'fa-orcid', 'f8d2'),
(895, 'fa-osi', 'f41a'),
(896, 'fa-otter', 'f700'),
(897, 'fa-outdent', 'f03b'),
(898, 'fa-page4', 'f3d7'),
(899, 'fa-pagelines', 'f18c'),
(900, 'fa-pager', 'f815'),
(901, 'fa-paint-brush', 'f1fc'),
(902, 'fa-paint-roller', 'f5aa'),
(903, 'fa-palette', 'f53f'),
(904, 'fa-palfed', 'f3d8'),
(905, 'fa-pallet', 'f482'),
(906, 'fa-paper-plane', 'f1d8'),
(907, 'fa-paperclip', 'f0c6'),
(908, 'fa-parachute-box', 'f4cd'),
(909, 'fa-paragraph', 'f1dd'),
(910, 'fa-parking', 'f540'),
(911, 'fa-passport', 'f5ab'),
(912, 'fa-pastafarianism', 'f67b'),
(913, 'fa-paste', 'f0ea'),
(914, 'fa-patreon', 'f3d9'),
(915, 'fa-pause', 'f04c'),
(916, 'fa-pause-circle', 'f28b'),
(917, 'fa-paw', 'f1b0'),
(918, 'fa-paypal', 'f1ed'),
(919, 'fa-peace', 'f67c'),
(920, 'fa-pen', 'f304'),
(921, 'fa-pen-alt', 'f305'),
(922, 'fa-pen-fancy', 'f5ac'),
(923, 'fa-pen-nib', 'f5ad'),
(924, 'fa-pen-square', 'f14b'),
(925, 'fa-pencil-alt', 'f303'),
(926, 'fa-pencil-ruler', 'f5ae'),
(927, 'fa-penny-arcade', 'f704'),
(928, 'fa-people-arrows', 'e068'),
(929, 'fa-people-carry', 'f4ce'),
(930, 'fa-pepper-hot', 'f816'),
(931, 'fa-perbyte', 'e083'),
(932, 'fa-percent', 'f295'),
(933, 'fa-percentage', 'f541'),
(934, 'fa-periscope', 'f3da'),
(935, 'fa-person-booth', 'f756'),
(936, 'fa-phabricator', 'f3db'),
(937, 'fa-phoenix-framework', 'f3dc'),
(938, 'fa-phoenix-squadron', 'f511'),
(939, 'fa-phone', 'f095'),
(940, 'fa-phone-alt', 'f879'),
(941, 'fa-phone-slash', 'f3dd'),
(942, 'fa-phone-square', 'f098'),
(943, 'fa-phone-square-alt', 'f87b'),
(944, 'fa-phone-volume', 'f2a0'),
(945, 'fa-photo-video', 'f87c'),
(946, 'fa-php', 'f457'),
(947, 'fa-pied-piper', 'f2ae'),
(948, 'fa-pied-piper-alt', 'f1a8'),
(949, 'fa-pied-piper-hat', 'f4e5'),
(950, 'fa-pied-piper-pp', 'f1a7'),
(951, 'fa-pied-piper-square', 'e01e'),
(952, 'fa-piggy-bank', 'f4d3'),
(953, 'fa-pills', 'f484'),
(954, 'fa-pinterest', 'f0d2'),
(955, 'fa-pinterest-p', 'f231'),
(956, 'fa-pinterest-square', 'f0d3'),
(957, 'fa-pizza-slice', 'f818'),
(958, 'fa-place-of-worship', 'f67f'),
(959, 'fa-plane', 'f072'),
(960, 'fa-plane-arrival', 'f5af'),
(961, 'fa-plane-departure', 'f5b0'),
(962, 'fa-plane-slash', 'e069'),
(963, 'fa-play', 'f04b'),
(964, 'fa-play-circle', 'f144'),
(965, 'fa-playstation', 'f3df'),
(966, 'fa-plug', 'f1e6'),
(967, 'fa-plus', 'f067'),
(968, 'fa-plus-circle', 'f055'),
(969, 'fa-plus-square', 'f0fe'),
(970, 'fa-podcast', 'f2ce'),
(971, 'fa-poll', 'f681'),
(972, 'fa-poll-h', 'f682'),
(973, 'fa-poo', 'f2fe'),
(974, 'fa-poo-storm', 'f75a'),
(975, 'fa-poop', 'f619'),
(976, 'fa-portrait', 'f3e0'),
(977, 'fa-pound-sign', 'f154'),
(978, 'fa-power-off', 'f011'),
(979, 'fa-pray', 'f683'),
(980, 'fa-praying-hands', 'f684'),
(981, 'fa-prescription', 'f5b1'),
(982, 'fa-prescription-bottle', 'f485'),
(983, 'fa-prescription-bottle-alt', 'f486'),
(984, 'fa-print', 'f02f'),
(985, 'fa-procedures', 'f487'),
(986, 'fa-product-hunt', 'f288'),
(987, 'fa-project-diagram', 'f542'),
(988, 'fa-pump-medical', 'e06a'),
(989, 'fa-pump-soap', 'e06b'),
(990, 'fa-pushed', 'f3e1'),
(991, 'fa-puzzle-piece', 'f12e'),
(992, 'fa-python', 'f3e2'),
(993, 'fa-qq', 'f1d6'),
(994, 'fa-qrcode', 'f029'),
(995, 'fa-question', 'f128'),
(996, 'fa-question-circle', 'f059'),
(997, 'fa-quidditch', 'f458'),
(998, 'fa-quinscape', 'f459'),
(999, 'fa-quora', 'f2c4'),
(1000, 'fa-quote-left', 'f10d'),
(1001, 'fa-quote-right', 'f10e'),
(1002, 'fa-quran', 'f687'),
(1003, 'fa-r-project', 'f4f7'),
(1004, 'fa-radiation', 'f7b9'),
(1005, 'fa-radiation-alt', 'f7ba'),
(1006, 'fa-rainbow', 'f75b'),
(1007, 'fa-random', 'f074'),
(1008, 'fa-raspberry-pi', 'f7bb'),
(1009, 'fa-ravelry', 'f2d9'),
(1010, 'fa-react', 'f41b'),
(1011, 'fa-reacteurope', 'f75d'),
(1012, 'fa-readme', 'f4d5'),
(1013, 'fa-rebel', 'f1d0'),
(1014, 'fa-receipt', 'f543'),
(1015, 'fa-record-vinyl', 'f8d9'),
(1016, 'fa-recycle', 'f1b8'),
(1017, 'fa-red-river', 'f3e3'),
(1018, 'fa-reddit', 'f1a1'),
(1019, 'fa-reddit-alien', 'f281'),
(1020, 'fa-reddit-square', 'f1a2'),
(1021, 'fa-redhat', 'f7bc'),
(1022, 'fa-redo', 'f01e'),
(1023, 'fa-redo-alt', 'f2f9'),
(1024, 'fa-registered', 'f25d'),
(1025, 'fa-remove-format', 'f87d'),
(1026, 'fa-renren', 'f18b'),
(1027, 'fa-reply', 'f3e5'),
(1028, 'fa-reply-all', 'f122'),
(1029, 'fa-replyd', 'f3e6'),
(1030, 'fa-republican', 'f75e'),
(1031, 'fa-researchgate', 'f4f8'),
(1032, 'fa-resolving', 'f3e7'),
(1033, 'fa-restroom', 'f7bd'),
(1034, 'fa-retweet', 'f079'),
(1035, 'fa-rev', 'f5b2'),
(1036, 'fa-ribbon', 'f4d6'),
(1037, 'fa-ring', 'f70b'),
(1038, 'fa-road', 'f018'),
(1039, 'fa-robot', 'f544'),
(1040, 'fa-rocket', 'f135'),
(1041, 'fa-rocketchat', 'f3e8'),
(1042, 'fa-rockrms', 'f3e9'),
(1043, 'fa-route', 'f4d7'),
(1044, 'fa-rss', 'f09e'),
(1045, 'fa-rss-square', 'f143'),
(1046, 'fa-ruble-sign', 'f158'),
(1047, 'fa-ruler', 'f545'),
(1048, 'fa-ruler-combined', 'f546'),
(1049, 'fa-ruler-horizontal', 'f547'),
(1050, 'fa-ruler-vertical', 'f548'),
(1051, 'fa-running', 'f70c'),
(1052, 'fa-rupee-sign', 'f156'),
(1053, 'fa-rust', 'e07a'),
(1054, 'fa-sad-cry', 'f5b3'),
(1055, 'fa-sad-tear', 'f5b4'),
(1056, 'fa-safari', 'f267'),
(1057, 'fa-salesforce', 'f83b'),
(1058, 'fa-sass', 'f41e'),
(1059, 'fa-satellite', 'f7bf'),
(1060, 'fa-satellite-dish', 'f7c0'),
(1061, 'fa-save', 'f0c7'),
(1062, 'fa-schlix', 'f3ea'),
(1063, 'fa-school', 'f549'),
(1064, 'fa-screwdriver', 'f54a'),
(1065, 'fa-scribd', 'f28a'),
(1066, 'fa-scroll', 'f70e'),
(1067, 'fa-sd-card', 'f7c2'),
(1068, 'fa-search', 'f002'),
(1069, 'fa-search-dollar', 'f688'),
(1070, 'fa-search-location', 'f689'),
(1071, 'fa-search-minus', 'f010'),
(1072, 'fa-search-plus', 'f00e'),
(1073, 'fa-searchengin', 'f3eb'),
(1074, 'fa-seedling', 'f4d8'),
(1075, 'fa-sellcast', 'f2da'),
(1076, 'fa-sellsy', 'f213'),
(1077, 'fa-server', 'f233'),
(1078, 'fa-servicestack', 'f3ec'),
(1079, 'fa-shapes', 'f61f'),
(1080, 'fa-share', 'f064'),
(1081, 'fa-share-alt', 'f1e0'),
(1082, 'fa-share-alt-square', 'f1e1'),
(1083, 'fa-share-square', 'f14d'),
(1084, 'fa-shekel-sign', 'f20b'),
(1085, 'fa-shield-alt', 'f3ed'),
(1086, 'fa-shield-virus', 'e06c'),
(1087, 'fa-ship', 'f21a'),
(1088, 'fa-shipping-fast', 'f48b'),
(1089, 'fa-shirtsinbulk', 'f214'),
(1090, 'fa-shoe-prints', 'f54b'),
(1091, 'fa-shopify', 'e057'),
(1092, 'fa-shopping-bag', 'f290'),
(1093, 'fa-shopping-basket', 'f291'),
(1094, 'fa-shopping-cart', 'f07a'),
(1095, 'fa-shopware', 'f5b5'),
(1096, 'fa-shower', 'f2cc'),
(1097, 'fa-shuttle-van', 'f5b6'),
(1098, 'fa-sign', 'f4d9'),
(1099, 'fa-sign-in-alt', 'f2f6'),
(1100, 'fa-sign-language', 'f2a7'),
(1101, 'fa-sign-out-alt', 'f2f5'),
(1102, 'fa-signal', 'f012'),
(1103, 'fa-signature', 'f5b7'),
(1104, 'fa-sim-card', 'f7c4'),
(1105, 'fa-simplybuilt', 'f215'),
(1106, 'fa-sink', 'e06d'),
(1107, 'fa-sistrix', 'f3ee'),
(1108, 'fa-sitemap', 'f0e8'),
(1109, 'fa-sith', 'f512'),
(1110, 'fa-skating', 'f7c5'),
(1111, 'fa-sketch', 'f7c6'),
(1112, 'fa-skiing', 'f7c9'),
(1113, 'fa-skiing-nordic', 'f7ca'),
(1114, 'fa-skull', 'f54c'),
(1115, 'fa-skull-crossbones', 'f714'),
(1116, 'fa-skyatlas', 'f216'),
(1117, 'fa-skype', 'f17e'),
(1118, 'fa-slack', 'f198'),
(1119, 'fa-slack-hash', 'f3ef'),
(1120, 'fa-slash', 'f715'),
(1121, 'fa-sleigh', 'f7cc'),
(1122, 'fa-sliders-h', 'f1de'),
(1123, 'fa-slideshare', 'f1e7'),
(1124, 'fa-smile', 'f118'),
(1125, 'fa-smile-beam', 'f5b8'),
(1126, 'fa-smile-wink', 'f4da'),
(1127, 'fa-smog', 'f75f'),
(1128, 'fa-smoking', 'f48d'),
(1129, 'fa-smoking-ban', 'f54d'),
(1130, 'fa-sms', 'f7cd'),
(1131, 'fa-snapchat', 'f2ab'),
(1132, 'fa-snapchat-ghost', 'f2ac'),
(1133, 'fa-snapchat-square', 'f2ad'),
(1134, 'fa-snowboarding', 'f7ce'),
(1135, 'fa-snowflake', 'f2dc'),
(1136, 'fa-snowman', 'f7d0'),
(1137, 'fa-snowplow', 'f7d2'),
(1138, 'fa-soap', 'e06e'),
(1139, 'fa-socks', 'f696'),
(1140, 'fa-solar-panel', 'f5ba'),
(1141, 'fa-sort', 'f0dc'),
(1142, 'fa-sort-alpha-down', 'f15d'),
(1143, 'fa-sort-alpha-down-alt', 'f881'),
(1144, 'fa-sort-alpha-up', 'f15e'),
(1145, 'fa-sort-alpha-up-alt', 'f882'),
(1146, 'fa-sort-amount-down', 'f160'),
(1147, 'fa-sort-amount-down-alt', 'f884'),
(1148, 'fa-sort-amount-up', 'f161'),
(1149, 'fa-sort-amount-up-alt', 'f885'),
(1150, 'fa-sort-down', 'f0dd'),
(1151, 'fa-sort-numeric-down', 'f162'),
(1152, 'fa-sort-numeric-down-alt', 'f886'),
(1153, 'fa-sort-numeric-up', 'f163'),
(1154, 'fa-sort-numeric-up-alt', 'f887'),
(1155, 'fa-sort-up', 'f0de'),
(1156, 'fa-soundcloud', 'f1be'),
(1157, 'fa-sourcetree', 'f7d3'),
(1158, 'fa-spa', 'f5bb'),
(1159, 'fa-space-shuttle', 'f197'),
(1160, 'fa-speakap', 'f3f3'),
(1161, 'fa-speaker-deck', 'f83c'),
(1162, 'fa-spell-check', 'f891'),
(1163, 'fa-spider', 'f717'),
(1164, 'fa-spinner', 'f110'),
(1165, 'fa-splotch', 'f5bc'),
(1166, 'fa-spotify', 'f1bc'),
(1167, 'fa-spray-can', 'f5bd'),
(1168, 'fa-square', 'f0c8'),
(1169, 'fa-square-full', 'f45c'),
(1170, 'fa-square-root-alt', 'f698'),
(1171, 'fa-squarespace', 'f5be'),
(1172, 'fa-stack-exchange', 'f18d'),
(1173, 'fa-stack-overflow', 'f16c'),
(1174, 'fa-stackpath', 'f842'),
(1175, 'fa-stamp', 'f5bf'),
(1176, 'fa-star', 'f005'),
(1177, 'fa-star-and-crescent', 'f699'),
(1178, 'fa-star-half', 'f089'),
(1179, 'fa-star-half-alt', 'f5c0'),
(1180, 'fa-star-of-david', 'f69a'),
(1181, 'fa-star-of-life', 'f621'),
(1182, 'fa-staylinked', 'f3f5'),
(1183, 'fa-steam', 'f1b6'),
(1184, 'fa-steam-square', 'f1b7'),
(1185, 'fa-steam-symbol', 'f3f6'),
(1186, 'fa-step-backward', 'f048'),
(1187, 'fa-step-forward', 'f051'),
(1188, 'fa-stethoscope', 'f0f1'),
(1189, 'fa-sticker-mule', 'f3f7'),
(1190, 'fa-sticky-note', 'f249'),
(1191, 'fa-stop', 'f04d'),
(1192, 'fa-stop-circle', 'f28d'),
(1193, 'fa-stopwatch', 'f2f2'),
(1194, 'fa-stopwatch-20', 'e06f'),
(1195, 'fa-store', 'f54e'),
(1196, 'fa-store-alt', 'f54f'),
(1197, 'fa-store-alt-slash', 'e070'),
(1198, 'fa-store-slash', 'e071'),
(1199, 'fa-strava', 'f428'),
(1200, 'fa-stream', 'f550'),
(1201, 'fa-street-view', 'f21d'),
(1202, 'fa-strikethrough', 'f0cc'),
(1203, 'fa-stripe', 'f429'),
(1204, 'fa-stripe-s', 'f42a'),
(1205, 'fa-stroopwafel', 'f551'),
(1206, 'fa-studiovinari', 'f3f8'),
(1207, 'fa-stumbleupon', 'f1a4'),
(1208, 'fa-stumbleupon-circle', 'f1a3'),
(1209, 'fa-subscript', 'f12c'),
(1210, 'fa-subway', 'f239'),
(1211, 'fa-suitcase', 'f0f2'),
(1212, 'fa-suitcase-rolling', 'f5c1'),
(1213, 'fa-sun', 'f185'),
(1214, 'fa-superpowers', 'f2dd');

-- --------------------------------------------------------

--
-- Table structure for table `introduction_table`
--

CREATE TABLE `introduction_table` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `introduction_table`
--

INSERT INTO `introduction_table` (`id`, `title`, `description`) VALUES
(1, 'घरेलु तथा साना उद्योग कार्यालय, बारा', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgb(0, 0, 0); font-size: 12pt;\">कुनै उद्योग खोल्ने सोचिरहनुभएको छ भने तपाईँले नपुगी नहुने ठाँउ हो घरेलु तथा साना उद्योग कार्यालय। उद्योग दर्ता गर्ने देखि सिप विकास सम्बन्धि विभिन्न तालिमहरू दिने सरकारी निकाय भएकाले पनि त्यहाँ नपुगी हुँदैन। यो कार्यालयले दिने सुविधाहरू मध्ये केहीलाई हामीले यो लेखमा समावेश गरेका छौँ।</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `label_menu` varchar(100) NOT NULL,
  `url_menu` varchar(300) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `has_child` int(11) NOT NULL,
  `content_type` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `navigation_tbl`
--

CREATE TABLE `navigation_tbl` (
  `nav_id` int(11) NOT NULL,
  `img_icon` varchar(100) DEFAULT NULL,
  `page_order` int(11) NOT NULL,
  `nav_pg_id` varchar(50) NOT NULL,
  `delete_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_ticker`
--

CREATE TABLE `new_ticker` (
  `ticker_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `add_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `new_ticker`
--

INSERT INTO `new_ticker` (`ticker_id`, `category_id`, `add_on`) VALUES
(1, 7, '2024-11-24 14:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `pagetbl`
--

CREATE TABLE `pagetbl` (
  `pg_id` int(11) NOT NULL,
  `page_title` varchar(200) DEFAULT NULL,
  `page_status` int(11) NOT NULL,
  `page_desc` longtext DEFAULT NULL,
  `page_featured_img` varchar(100) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `doc_typ` int(11) DEFAULT 1,
  `order_by` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `delete_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posttbl`
--

CREATE TABLE `posttbl` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(200) DEFAULT NULL,
  `post_caty_id` varchar(255) DEFAULT NULL,
  `featured_image` varchar(200) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `slug` varchar(50) DEFAULT NULL,
  `doc_typ` int(11) NOT NULL DEFAULT 2,
  `content_section` longtext DEFAULT NULL,
  `downloadable_file` varchar(100) DEFAULT NULL,
  `delete_status` int(11) NOT NULL,
  `added_on` date NOT NULL,
  `updated_on` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posttbl`
--

INSERT INTO `posttbl` (`post_id`, `post_title`, `post_caty_id`, `featured_image`, `status_id`, `slug`, `doc_typ`, `content_section`, `downloadable_file`, `delete_status`, `added_on`, `updated_on`, `created_by`) VALUES
(1, 'एमालेले बुझ्न मानेन महानगरको जरिवाना पत्र', '7', '1732437234_df11c9131667ae1866e5.jpg', 1, 'एमालेले-बुझ्न-मानेन-महानगरको-जरिवाना-पत्र', 2, '<p>९ मंसिर, काठमाडौं । काठमाडौं महानगरपालिकाले तोकेको एक लाख जरिवानाको पत्र बुझ्न सत्तारुढ दल नेकपा एमालेले अस्वीकार गरेको छ । आइतबार जरिवानापत्र बुझाउन पार्टी कार्यालय पुगेको महानगरको टोलीलाई आफूहरू आयोजक नभएको भन्दै एमालेले पत्र बुझ्न अस्वीकार गरेको हो ।</p>\r\n<p>गत शुक्रबार दरबारमार्गमा जागरण सभामा सडक तथा पेटीमा जथाभावी फोहोर गरेको भन्दै जरिवानाको पत्र लेखेको थियो । उक्त पत्र लिएर पुगेको टोलीलाई एमालेले पत्र नबुझी फिर्ता गरेको हो ।</p>\r\n<p>&nbsp;</p>\r\n<p>गत शुक्रबार एमालेका काठमाडौं, भक्तपुर र ललितपुर जिल्ला कमिटीको आयोजनामा दरबारमार्गमा जागरण सभा आयोजना गरिएको थियो ।</p>\r\n<p>महानगरपालिकाले फोहरमैला व्यवस्थापन ऐन, २०६८ र काठमाडौं महानगरपालिकाको आर्थिक ऐन, २०८१ बमोजिम जरिवाना तोकिएको बताएकाे छ ।</p>\r\n<p>एमालेले पत्र बुझ्न नमानेपछि महानगरको टोली केहीबेर कार्यालय परिसरमा रोकिएर फर्किएको छ ।</p>\r\n<p>अनलाइनखबरसँग कुरा गर्दै एमाले केन्द्रीय कार्यालय सचिव भिष्म अधिकारीले आफूहरूले सभा गरेको स्थान आफैं सफा गरिसकेकाले जरिवाना तिर्न नपर्ने तर्क गरेका छन् ।</p>\r\n<p>&nbsp;</p>', '', 0, '2024-11-24', '0000-00-00', 0),
(2, 'एनआरएनको इन्भेस्टमेन्ट कम्पनीले सेयर-घरजग्गामा लगानी गर्न पाउँदैन, केमा पाउँछ ?', '7', '1732438868_03ec94bbe8ddb0f899ce.jpg', 1, 'एनआरएनको-इन्भेस्टमेन्ट-कम्पनीले-सेयर-घरजग्गामा-लगा', 2, '<p>९ मंसिर, काठमाडौं । गैरआवासीय नेपाली (एनआरएन)को लगानी भित्र्याउनका लागि धितोपत्र निष्कासन तथा बाँडफाँड निर्देशिका संशोधन भएको छ । संशोधित व्यवस्थाले एनआरएनको इन्भेस्टमेन्ट कम्पनीलाई सेयर जारी गर्न सक्ने व्यवस्था गरेको छ ।</p>\r\n<p>यहीं विषयलाई लिएर ती कम्पनीले सेयर बजारमा लगानी गर्ने भन्दै गलत व्याख्या गरिएका छन् । कतिपय लगानीकर्ता समेत भ्रममा परेका छन् । &nbsp;तर यस्ता इन्भेस्टमेन्ट कम्पनीले नेपालको सेयर बजारमा लगानी गर्न नपाउने बोर्डका कार्यकारी निर्देशक नवराज अधिकारीले बताए ।</p>\r\n<p>&nbsp;</p>\r\n<p>&lsquo;इन्भेस्टमेन्ट कम्पनीले नेपालका पूर्वाधार तथा ठूला आयोजनामा मात्रै लगानी गर्छन्&rsquo; उनले भने &lsquo;सेयर बजारमा लगानी गर्न पाउँदैनन् ।&rsquo; &nbsp;औद्योगिक व्यवसाय ऐनमै यसलाई समेटिएको छ । जसमा &nbsp;इन्भेस्टमेन्ट कम्पनी स्थापना गर्दा पालना गर्नुपर्ने विषय तथा लगानी गर्न नपाउने क्षेत्रहरु समेत स्पष्टसँग तोकेको छ ।</p>\r\n<p>जसअनुसार यस्ता इन्भेस्टमेन्ट कम्पनीले सेयर पूँजीको रुपमा मात्रै आयोजनाहरुमा लगानी गर्न पाउँछन् । तर ऋण, बोन्ड वा डिवेन्चरमार्फत पनि लगानी गर्न नपाउने व्यवस्था तोकिएको छ ।</p>', '', 0, '2024-11-24', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quick_links_tbl`
--

CREATE TABLE `quick_links_tbl` (
  `link_id` int(11) NOT NULL,
  `link_label` varchar(100) DEFAULT NULL,
  `link_url` varchar(50) DEFAULT NULL,
  `link_icon` varchar(50) DEFAULT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pswrd_reset`
--

CREATE TABLE `tbl_pswrd_reset` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topbar`
--

CREATE TABLE `topbar` (
  `topbar_id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `yotube` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topbar`
--

INSERT INTO `topbar` (`topbar_id`, `email`, `mobile_number`, `facebook`, `twitter`, `yotube`, `created_by`, `deleted_by`, `added_on`) VALUES
(1, ' csiobara145@gmail.com', '0987654321', 'facebook', 'twitter', 'youtube', 1, 0, '2023-03-02 12:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `role` int(10) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `userImage` text DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `delete_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `role`, `gender`, `status`, `username`, `email`, `userImage`, `password`, `delete_status`, `added_on`) VALUES
(1, 'Narayan', 'kumar', 'yadav', 1, 1, 'active', 'Narayan', 'admin@admin.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, '2023-05-15 14:28:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorytbl`
--
ALTER TABLE `categorytbl`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `document_tbl`
--
ALTER TABLE `document_tbl`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `featured_card`
--
ALTER TABLE `featured_card`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `featured_tbl`
--
ALTER TABLE `featured_tbl`
  ADD PRIMARY KEY (`featured_id`);

--
-- Indexes for table `footer_table`
--
ALTER TABLE `footer_table`
  ADD PRIMARY KEY (`footer_id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`header_id`);

--
-- Indexes for table `homepage_sections`
--
ALTER TABLE `homepage_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icon_tbl`
--
ALTER TABLE `icon_tbl`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `introduction_table`
--
ALTER TABLE `introduction_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `navigation_tbl`
--
ALTER TABLE `navigation_tbl`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `new_ticker`
--
ALTER TABLE `new_ticker`
  ADD PRIMARY KEY (`ticker_id`);

--
-- Indexes for table `pagetbl`
--
ALTER TABLE `pagetbl`
  ADD PRIMARY KEY (`pg_id`),
  ADD UNIQUE KEY `order` (`order_by`);

--
-- Indexes for table `posttbl`
--
ALTER TABLE `posttbl`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `quick_links_tbl`
--
ALTER TABLE `quick_links_tbl`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `tbl_pswrd_reset`
--
ALTER TABLE `tbl_pswrd_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar`
--
ALTER TABLE `topbar`
  ADD PRIMARY KEY (`topbar_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorytbl`
--
ALTER TABLE `categorytbl`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `document_tbl`
--
ALTER TABLE `document_tbl`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `featured_card`
--
ALTER TABLE `featured_card`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_tbl`
--
ALTER TABLE `featured_tbl`
  MODIFY `featured_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_table`
--
ALTER TABLE `footer_table`
  MODIFY `footer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `header_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepage_sections`
--
ALTER TABLE `homepage_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `icon_tbl`
--
ALTER TABLE `icon_tbl`
  MODIFY `icon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1215;

--
-- AUTO_INCREMENT for table `introduction_table`
--
ALTER TABLE `introduction_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `navigation_tbl`
--
ALTER TABLE `navigation_tbl`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_ticker`
--
ALTER TABLE `new_ticker`
  MODIFY `ticker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pagetbl`
--
ALTER TABLE `pagetbl`
  MODIFY `pg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posttbl`
--
ALTER TABLE `posttbl`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quick_links_tbl`
--
ALTER TABLE `quick_links_tbl`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pswrd_reset`
--
ALTER TABLE `tbl_pswrd_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topbar`
--
ALTER TABLE `topbar`
  MODIFY `topbar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
