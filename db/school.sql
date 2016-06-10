-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 07, 2016 at 04:03 PM
-- Server version: 5.6.27-0ubuntu0.14.04.1
-- PHP Version: 5.6.16-2+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `to_role_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_role_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `amount_type_id` int(11) NOT NULL,
  `amount_category_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_translations`
--

CREATE TABLE `account_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_type_translations`
--

CREATE TABLE `account_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `account_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_field_to_tables`
--

CREATE TABLE `add_field_to_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `add_field_to_tables`
--

INSERT INTO `add_field_to_tables` (`id`, `key`, `value`, `field_id`, `field_type`, `site_id`) VALUES
(1, 'fhhfhfhff', 'jhgdgdg', 21, 'genders', NULL),
(2, 'fhhfhfhff', 'hghd', 21, 'gender_translations', NULL),
(3, 'fhhfhfhff', 'sddssd', 22, 'gender_translations', NULL),
(4, 'usrextranm', 'dfd', 10, 'Erp\\Models\\Role\\Role', NULL),
(5, 'status', 'a', 151, 'Erp\\Models\\User\\User', NULL),
(6, 'status', 'b', 152, 'Erp\\Models\\User\\User', NULL),
(7, 'status', 'a', 153, 'Erp\\Models\\User\\User', NULL),
(8, 'info', 'infformat', 155, 'Erp\\Models\\User\\User', NULL),
(9, 'choose', 'a', 155, 'Erp\\Models\\User\\User', NULL),
(10, 'status', 'a', 155, 'Erp\\Models\\User\\User', NULL),
(11, 'info', 'helo info', 156, 'Erp\\Models\\User\\User', NULL),
(12, 'choose', 'a', 156, 'Erp\\Models\\User\\User', NULL),
(13, 'status', 'b', 156, 'Erp\\Models\\User\\User', NULL),
(14, 'test_teacher', 'Test', 165, 'Erp\\Models\\User\\User', NULL),
(15, 'test_teacher', 'Test dffd', 166, 'Erp\\Models\\User\\User', NULL),
(16, 'fddf', 'fdfgd', 166, 'Erp\\Models\\User\\User', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amount_categories`
--

CREATE TABLE `amount_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amount_category_translations`
--

CREATE TABLE `amount_category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount_category_id` int(11) DEFAULT NULL,
  `amount_category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amount_types`
--

CREATE TABLE `amount_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amount_type_translations`
--

CREATE TABLE `amount_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount_type_id` int(11) DEFAULT NULL,
  `amount_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_of_birth` date NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `author_translations`
--

CREATE TABLE `author_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_birth_place` varchar(255) DEFAULT NULL,
  `author_note` text,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `account_no`, `bank_name`, `ifsc_code`, `pan_no`, `branch`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES
(26, 120, '4878756ljkhgufyg', 'gfxhghjkl899g', 'sryuhihhgfy797g', 'xygvrrtuh988g', 'hghvcrtryuij8978g', 'Active', 1, NULL, NULL, NULL),
(27, 120, '4878756ljkhgufygd', 'dgfxhghjkl899g', 'sryuhihhgfy797gd', 'dxygvrrtuh988g', 'hghvcrtryuij8978gd', 'Active', 1, NULL, NULL, NULL),
(31, 120, '4878756ldjkhgufygd', 'dgfxhghdjkl899g', 'sryuhihhdgfy797gd', 'dxygvrrtuh98d8g', 'hghvcrtrdyuij8978gd', 'Active', 1, NULL, NULL, NULL),
(33, 120, '4878756ldjkshgufygd', 'dgfxhghdjkl899gs', 'ssryuhihhdgfy797gd', 'dxygvrrtuh98d8gs', 'hghvcrtrdyuij8978gds', 'Active', 1, NULL, NULL, NULL),
(34, 120, 's4878756ldjkshgufygd', 'dsgfxhghdjkl899gs', 'ssryushihhdgfy797gd', 'dxygvrsrtuh98d8gs', 'hghsvcrtrdyuij8978gds', 'Active', 1, NULL, NULL, NULL),
(35, 120, 's487c8756ldjkshgufygd', 'dsgfxhghdjkl899gsc', 'ssryushihhdgfy797cgd', 'dxygvrsrtuh98d8cgs', 'hghsvcrtrdyuij8978gdsc', 'Active', 1, NULL, NULL, NULL),
(36, 120, 's487c8756ldjkshgufygdf', 'dsgfxhghdjkl899gscf', 'ssryushihhdgfy797cgdf', 'dxygvrsrtuh98d8cgsf', 'hghsvcrtrdyuij8978gdscf', 'Active', 1, NULL, NULL, NULL),
(37, 120, 's487c8756ldjkshgudfygdf', 'dsgfxhghdjkl89d9gscf', 'ssryushihhdgfy797dcgdf', 'dxygvrsrtuh98dd8cgsf', 'hghsvcrtrdyuij89d78gdscf', 'Active', 1, NULL, NULL, NULL),
(38, 120, 's487c8756ldjkdshgudfygdf', 'dsgfxhghdjkld89d9gscf', 'ssryushihhddgfy797dcgdf', 'dxygvrsrtuhd98dd8cgsf', 'hghsvcrtrdyudij89d78gdscf', 'Active', 1, NULL, NULL, NULL),
(39, 124, '1258963', '3695214', '125896', '245879', '1258963', 'Active', 1, NULL, NULL, NULL),
(41, 120, 's487c8756ldjekdshgudfygdf', 'dsgfxhghdjkled89d9gscf', 'ssryushihhddgefy797dcgdf', 'dxygvrsrtuhd98dd8cgsfe', 'hghsvcrtrdyudeij89d78gdscf', 'Active', 1, NULL, NULL, NULL),
(42, 120, 's487c8756ldjekdshgudfygdfr', 'dsgfxhghdjkled89d9gscfr', 'ssryushihhddgefy797dcgdfr', 'dxygvrsrtuhd98dd8cgsfer', 'hghsvcrtrdyudeij89d78gdscfr', 'Active', 1, NULL, NULL, NULL),
(43, 120, 's487c8756ldjekddshgudfygdfr', 'dsgfxhghdjkleqd89d9gscfr', 'ssryushihhdrdgefy797dcgdfr', 'dxygvrsrturhd98dd8cgsfer', 'hghsvcrtrdryudeij89d78gdscfr', 'Active', 1, NULL, NULL, NULL),
(44, 120, 's487c8756ldjekddsdhgudfygdfr', 'dsgfxhghdjkleqdd89d9gscfr', 'ssryushihhdrdgefd797dcgdfr', 'dxygvrsrturhd98ddd8cgsfer', 'hghsvcrtrdryudeid89d78gdscfr', 'Active', 1, NULL, NULL, NULL),
(46, 124, '12589632', '36952142', '1258962', '2458792', '12589632', 'Active', 1, NULL, NULL, NULL),
(47, 124, '12589632f', '36952142f', 'f1258962', '2458792f', '12589632f', 'Active', 1, NULL, NULL, NULL),
(51, 120, 'akshay123', 'Chandra', '1598647', '5789425', 'Mayaboti', 'Active', 1, NULL, NULL, NULL),
(52, 128, 'salman', 'IFIC', '12348957', 'abc125489', 'Delhi', 'Active', 1, NULL, NULL, NULL),
(54, 124, '12589632fd', '36952142fd', 'f1258962d', '2458792fd', '12589632fd', 'Active', 1, NULL, NULL, NULL),
(55, 120, 'akshay123d', 'Chandrad', '1598647d', '5789425d', 'Mayabotid', 'Active', 1, NULL, NULL, NULL),
(56, 120, 'akshay123dd', 'Chandradd', '1598647dd', '5789425dd', 'Mayabotidd', 'Active', 1, NULL, NULL, NULL),
(57, 120, 'akshay123ddf', 'Chandraddf', '1598647ddf', '5789425ddf', 'Mayabotiddf', 'Active', 1, NULL, NULL, NULL),
(58, 128, 'salmana', 'IFICb', '12348957f', 'abc125489f', 'Delhibr', 'Active', 1, NULL, NULL, NULL),
(62, 132, '12345896', 'habijabi', '456789', '123569', 'habdab', 'Active', 1, NULL, NULL, NULL),
(63, 133, '1598745623', 'hello world', '87koil', '251lki', 'hello', 'Active', 1, NULL, NULL, NULL),
(65, 135, 'jkjkjk456', '45454iuytr', 'hhkjk9898201487', 'asoythkhk7878', '58984567klkl', 'Active', 1, NULL, NULL, NULL),
(66, 136, '7979898', '989898989', '98989898988', '8989898989', '898989898', 'Active', 1, NULL, NULL, NULL),
(68, 138, '7979898aa', '989898989aa', '98989898988aa', '8989898989aa', '898989898aa', 'Active', 1, NULL, NULL, NULL),
(69, 139, '7979898aad', '989898989aad', '98989898988aad', '8989898989aad', '898989898aad', 'Active', 1, NULL, NULL, NULL),
(70, 140, '7979898aads', '989898989aads', '98989898988aads', '8989898989aads', '898989898aads', 'Active', 1, NULL, NULL, NULL),
(71, 141, '7979898aadsh', 'h989898989aads', 'h98989898988aads', '8989898989aadsh', '898989898aadsh', 'Active', 1, NULL, NULL, NULL),
(72, 141, '454545454', '45454554545', '545454545454', '54545454545', '545454545454', 'Active', 1, NULL, NULL, NULL),
(73, 141, '454545454f', '45454554545f', '545454545454f', '54545454545f', '545454545454f', 'Active', 1, NULL, NULL, NULL),
(74, 141, '454545454fd', '45454554545fd', '545454545454fd', '54545454545fd', '545454545454fd', 'Active', 1, NULL, NULL, NULL),
(75, 124, '12589632fdf', '36952142fdf', 'f1258962df', '2458792fdf', '12589632fdf', 'Active', 1, NULL, NULL, NULL),
(76, 124, '12589632fdff', '36952142fdff', 'f1258962dff', '2458792fdff', '12589632fdff', 'Active', 1, NULL, NULL, NULL),
(84, 125, '454545448987878jkj', '56599744jkgyfy', '45878hghghg', '454878988956', 'jjjhgjg5896', NULL, NULL, NULL, NULL, NULL),
(85, 126, '869547', '1523', '25496', '23658', '54879', NULL, NULL, NULL, NULL, NULL),
(86, 127, '2546897kkl', 'fdfd87964', '569897', 'hjhjjjkjkj458', 'fdsf1545', NULL, NULL, '2016-04-09', NULL, NULL),
(87, 128, '5623014', '89653', '215689', '698741', '2569847', NULL, NULL, '2016-04-10', NULL, NULL),
(88, 157, '2589632', '569874', '236589', '4751589', '145896', NULL, NULL, '2016-05-02', NULL, NULL),
(89, 159, '1236455', '147852369', '147852', '369852147', '154854', NULL, NULL, '2016-05-14', NULL, NULL),
(90, 160, '12354787', 'dggdg', 'dfgd', 'dfgd', 'gfdgd', NULL, NULL, '2016-05-14', NULL, NULL),
(91, 161, '89898989894457', '59898955565', '456565623221', '79895656556', '99977979955522', NULL, NULL, '2016-05-15', NULL, NULL),
(92, 162, '456987', '236547', '21458', '325698', '123456', NULL, NULL, '2016-05-15', NULL, NULL),
(94, 164, '456987454', '236547598998', '2145826565', '3256981545454', '123456985656', NULL, NULL, '2016-05-15', NULL, NULL),
(95, 165, '8547962147', 'jkjjk45454', '4544878wewr', '45454544ttt', '4545dfsdgds', NULL, NULL, '2016-05-15', NULL, NULL),
(96, 166, 'ffd', 'dfdf', 'fddf', 'fddf', 'dffd', NULL, NULL, '2016-05-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_attributes`
--

CREATE TABLE `bonus_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `month` int(11) DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bonus_attributes`
--

INSERT INTO `bonus_attributes` (`id`, `month`, `salary_types`, `amount`, `amount_type`, `site_id`) VALUES
(217, 3, '{"total":"total"}', 50, 'percent', NULL),
(218, 3, 'null', 5000, 'fixed', NULL),
(219, 6, '{"basic":"basic","home_rent":"home_rent"}', 50, 'percent', NULL),
(220, 9, '{"extra":"extra"}', 25, 'percent', NULL),
(222, NULL, 'null', 0, NULL, NULL),
(223, NULL, 'null', 0, NULL, NULL),
(224, NULL, 'null', 0, NULL, NULL),
(225, 7, 'null', 5000, 'fixed', NULL),
(226, 4, '{"basic":"basic"}', 25, 'percent', NULL),
(227, 3, '{"total":"total"}', 5000, 'fixed', NULL),
(228, 2, '{"total":"total"}', 20, 'percent', NULL),
(229, 1, '{"basic":"basic"}', 50, 'percent', NULL),
(230, 9, '{"total":"total"}', 35, 'percent', NULL),
(231, 1, '{"medical_allowance":"medical_allowance","travel_allowance":"travel_allowance","extra":"extra","sltpe":"sltpe","t_a_d_a":"t_a_d_a"}', 100, 'percent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_rules`
--

CREATE TABLE `bonus_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules` longtext COLLATE utf8_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bonus_rules`
--

INSERT INTO `bonus_rules` (`id`, `name`, `rules`, `status_id`, `position`, `site_id`) VALUES
(18, 'bonus 1', '"217,218"', NULL, NULL, NULL),
(19, 'bonus 2', '"219,220"', NULL, NULL, NULL),
(20, 'one  level', '"229,230,231"', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `subject_code` varchar(255) DEFAULT NULL,
  `book_price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rack_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_category_translations`
--

CREATE TABLE `book_category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_category_id` int(11) DEFAULT NULL,
  `book_category_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_translations`
--

CREATE TABLE `book_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `building_name`, `status`, `site_id`, `deleted_at`) VALUES
(1, 'Aaaabbbb', 'Active', 1, NULL),
(2, 'Arts', 'Active', 0, NULL),
(3, 'Fhhfg', 'Active', 0, NULL),
(4, 'Rrrrrr', 'Active', 0, NULL),
(5, 'Rrrrrr', 'Active', 0, NULL),
(6, 'Ggggg', 'Active', 1, NULL),
(7, 'Amanullah Building', 'Active', 0, NULL),
(8, 'Top ', 'Active', 1, NULL),
(9, 'Test Building', 'Active', 0, NULL),
(10, 'Building One', 'Active', 0, NULL),
(11, 'Helloo', 'Active', 0, NULL),
(12, 'Fdfdf', 'Inactive', 0, NULL),
(13, 'Dfdfd', 'Inactive', 0, NULL),
(14, 'Fdfdf', 'Active', 0, NULL),
(15, 'Fdfdf', 'Active', 0, NULL),
(16, 'Fdfgdsg', 'Active', 1, NULL),
(17, 'Fdfd', 'Active', 0, NULL),
(18, 'Dsfds', 'Active', 0, NULL),
(19, NULL, NULL, 0, NULL),
(20, NULL, NULL, 0, NULL),
(21, 'Dfsdf', 'Active', 0, NULL),
(22, NULL, NULL, 0, NULL),
(23, NULL, NULL, 0, NULL),
(24, 'Fdfdsfdsf', 'Active', 1, NULL),
(25, 'Lplplplplpll', 'Active', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `status`, `deleted_at`, `site_id`) VALUES
(1, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country_translations`
--

INSERT INTO `country_translations` (`id`, `country_id`, `country_name`, `locale`, `site_id`) VALUES
(1, 1, 'india', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `position`, `site_id`) VALUES
(2, 'Hr', 'Active', 0, NULL),
(3, 'Management', 'Active', 0, NULL),
(4, 'IT', 'Active', 0, NULL),
(5, 'Eeeeeee', 'Active', 0, NULL),
(6, 'Department 5', 'Active', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_shift`
--

CREATE TABLE `department_shift` (
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department_shift`
--

INSERT INTO `department_shift` (`department_id`, `shift_id`, `site_id`) VALUES
(2, 11, NULL),
(4, 11, NULL),
(4, 10, NULL),
(3, 11, NULL),
(2, 1, NULL),
(2, 4, NULL),
(3, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `position`, `site_id`) VALUES
(1, 4, 'Sr Software Engineer', 'Active', NULL, NULL),
(3, 3, 'Officer', 'Active', NULL, NULL),
(4, 4, 'Web Developer', 'Active', NULL, NULL),
(5, 2, 'Dfdsf', 'Sdfdsf', NULL, NULL),
(6, 3, 'Sr Officer', 'Active', NULL, NULL),
(7, 3, 'Jr Officer', '454', NULL, NULL),
(8, 3, 'Sr Manager', 'Active', NULL, NULL),
(9, 3, 'Director', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `country_id`, `division_id`, `status`, `deleted_at`, `site_id`) VALUES
(1, 1, 1, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `district_translations`
--

CREATE TABLE `district_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district_translations`
--

INSERT INTO `district_translations` (`id`, `district_id`, `district_name`, `locale`, `site_id`) VALUES
(1, 1, 'hawra', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `country_id`, `status`, `deleted_at`, `site_id`) VALUES
(1, 1, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `division_translations`
--

CREATE TABLE `division_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `division_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `division_translations`
--

INSERT INTO `division_translations` (`id`, `division_id`, `division_name`, `locale`, `site_id`) VALUES
(1, 1, 'kolkata', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailer_id` int(11) DEFAULT NULL,
  `emailer_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`, `emailer_id`, `emailer_type`, `status`, `is_default`, `site_id`) VALUES
(42, 'raja@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0, NULL),
(43, 'kamu@kamu.com', 73, 'Erp\\Models\\User\\User', 0, 0, NULL),
(44, 'anis@gmail.com', 75, 'Erp\\Models\\User\\User', 0, 0, NULL),
(45, 'harun@harun.com', 76, 'Erp\\Models\\User\\User', 0, 0, NULL),
(46, 'ala@ala.com', 77, 'Erp\\Models\\User\\User', 0, 0, NULL),
(47, 'harun@gmail.com', 76, 'Erp\\Models\\User\\User', 0, 0, NULL),
(48, 'sami@gmail.com', 80, 'Erp\\Models\\User\\User', 0, 0, NULL),
(49, 'masum@gmail.com', 83, 'Erp\\Models\\User\\User', 0, 0, NULL),
(50, 'masum@yahoo.com', 84, 'Erp\\Models\\User\\User', 0, 0, NULL),
(51, 'masum@email.com', 83, 'Erp\\Models\\User\\User', 0, 0, NULL),
(60, 'danis@gmail.com', 75, 'Erp\\Models\\User\\User', 0, 0, NULL),
(61, 'monir@gmail.com', 85, 'Erp\\Models\\User\\User', 0, 0, NULL),
(62, 'monirul@gmail.com', 85, 'Erp\\Models\\User\\User', 0, 0, NULL),
(63, 'huzurd@gmail.com', 87, 'Erp\\Models\\User\\User', 0, 0, NULL),
(64, 'admin@yahoo.com', 90, 'Erp\\Models\\User\\User', 0, 0, NULL),
(65, 'huzurr@gmail.com', 91, 'Erp\\Models\\User\\User', 0, 0, NULL),
(66, 'suniya@yahoo.com', 92, 'Erp\\Models\\User\\User', 0, 0, NULL),
(67, 'rajas@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0, NULL),
(68, 'raj@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0, NULL),
(69, 'superadmin@superadmin.com', 93, 'Erp\\Models\\User\\User', 0, 0, NULL),
(70, 'firoza@yahoo.com', 94, 'Erp\\Models\\User\\User', 0, 0, NULL),
(71, 'firozaa@yahoo.com', 95, 'Erp\\Models\\User\\User', 0, 0, NULL),
(72, 'so@gmail.com', 96, 'Erp\\Models\\User\\User', 0, 0, NULL),
(73, 'jjkjjk@yahoo.com', 97, 'Erp\\Models\\User\\User', 0, 0, NULL),
(74, 'jkjkjk@ouo.com', 98, 'Erp\\Models\\User\\User', 0, 0, NULL),
(75, 'kjkjkjkj@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, NULL),
(76, 'kjkjkjkjff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, NULL),
(77, 'dkjkjkjkjff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, NULL),
(78, 'dkjkjkff@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, NULL),
(79, 'dkjkjkffse@uiuytjhjg', 99, 'Erp\\Models\\User\\User', 0, 0, NULL),
(80, 'dkjkjkffse@uiuytjhjg.kj', 99, 'Erp\\Models\\User\\User', 0, 0, NULL),
(81, 'hjk@yu.piouiy', 100, 'Erp\\Models\\User\\User', 0, 0, NULL),
(82, 'lftrt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(83, 'lftrdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(84, 'lftrdft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(85, 'lftrdftg@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(86, 'lft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(87, 'lfdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(88, 'ulfdt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(89, 'ulfdht@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(90, 'ulfdhft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(91, 'ulfdhfft@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(92, 'ulfdhffwt@iyuyt.jhjh', 102, 'Erp\\Models\\User\\User', 0, 0, NULL),
(93, 'jlj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(94, 'jerlj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(95, 'jerlretj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(96, 'jer4lretj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(97, 'jer4lretyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(98, 'jer4lrfetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(99, 'jer4lrfeetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(100, 'jer4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(101, 'jerw4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(102, 'rw4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(103, 'w4lrfteetyj@ert.poiui', 103, 'Erp\\Models\\User\\User', 0, 0, NULL),
(104, 'lkjljl@jl.khkjh', 104, 'Erp\\Models\\User\\User', 0, 0, NULL),
(105, 'lkjljwl@jl.khkjh', 105, 'Erp\\Models\\User\\User', 0, 0, NULL),
(106, 'lkjljwl@jl.khkjhf', 106, 'Erp\\Models\\User\\User', 0, 0, NULL),
(107, 'qlkjljwl@jl.khkjhf', 107, 'Erp\\Models\\User\\User', 0, 0, NULL),
(108, 'qlkjwwl@jl.khkjhf', 108, 'Erp\\Models\\User\\User', 0, 0, NULL),
(109, 'qluipoil@jl.khkjhf', 109, 'Erp\\Models\\User\\User', 0, 0, NULL),
(110, 'kjk@iyt.com', 110, 'Erp\\Models\\User\\User', 0, 0, NULL),
(111, 'kjke@iyt.com', 111, 'Erp\\Models\\User\\User', 0, 0, NULL),
(112, 'email@uyty.kjhjk', 112, 'Erp\\Models\\User\\User', 0, 0, NULL),
(113, 'lhlkhlh@jh.joiuo', 113, 'Erp\\Models\\User\\User', 0, 0, NULL),
(114, 'hals@uyo.com', 114, 'Erp\\Models\\User\\User', 0, 0, NULL),
(115, 'halsr@uyo.com', 115, 'Erp\\Models\\User\\User', 0, 0, NULL),
(116, 'iuyt@jiue.com', 116, 'Erp\\Models\\User\\User', 0, 0, NULL),
(117, 'iuyt@jiure.com', 117, 'Erp\\Models\\User\\User', 0, 0, NULL),
(118, 'iuytqw@jiudre.com', 118, 'Erp\\Models\\User\\User', 0, 0, NULL),
(119, 'hemD@email.com', 119, 'Erp\\Models\\User\\User', 0, 0, NULL),
(120, 'hemD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(121, 'hemeD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(122, 'ljlkjlkjlj@hjh.jk', 121, 'Erp\\Models\\User\\User', 0, 0, NULL),
(123, 'ljlkjlkwjlj@hjh.jk', 122, 'Erp\\Models\\User\\User', 0, 0, NULL),
(124, 'sami@sami.com', 123, 'Erp\\Models\\User\\User', 0, 0, NULL),
(125, 'hemesD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(126, 'hsemesD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(127, 'hsemesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(128, 'hsesmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(129, 'hsesdmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(130, 'hsesdfmesdD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(131, 'hsesdfmesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(132, 'hsesdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(133, 'hello@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0, NULL),
(134, 'hseqsdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(135, '1hseqsdfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(136, '1hsedfmfesddD@emagil.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(137, '1hsedfmfesddD@emagi.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(138, '1hsedfemfesddD@emagi.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(139, 'hekki@heu.com', 125, 'Erp\\Models\\User\\User', 0, 0, NULL),
(140, 'helleo@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0, NULL),
(141, 'helleod@hyo.com', 124, 'Erp\\Models\\User\\User', 0, 0, NULL),
(142, 'r@gmail.com', 72, 'Erp\\Models\\User\\User', 0, 0, NULL),
(143, 'sumaiya@gmail.com', 126, 'Erp\\Models\\User\\User', 0, 0, NULL),
(144, 'sumaaiya@gmail.com', 126, 'Erp\\Models\\User\\User', 0, 0, NULL),
(145, 'sdsd@kjk.jkjk', 127, 'Erp\\Models\\User\\User', 0, 0, NULL),
(146, 'akki@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(147, 'sallu@gmail.com', 128, 'Erp\\Models\\User\\User', 0, 0, NULL),
(148, 'rrr@gmail.com', 129, 'Erp\\Models\\User\\User', 0, 0, NULL),
(149, 'helleod@hyo.comg', 124, 'Erp\\Models\\User\\User', 0, 0, NULL),
(150, 'ak@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(151, 'akk@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(152, 'kk@gmail.com', 120, 'Erp\\Models\\User\\User', 0, 0, NULL),
(153, 'salu@gmail.com', 128, 'Erp\\Models\\User\\User', 0, 0, NULL),
(154, 'test@gmail.com', 130, 'Erp\\Models\\User\\User', 0, 0, NULL),
(155, 'saifu@gmail.com', 131, 'Erp\\Models\\User\\User', 0, 0, NULL),
(156, 'saifu5@gmail.com', 131, 'Erp\\Models\\User\\User', 0, 0, NULL),
(157, 'sohag@gmail.com', 132, 'Erp\\Models\\User\\User', 0, 0, NULL),
(158, 'admin@admin.com', 133, 'Erp\\Models\\User\\User', 0, 0, NULL),
(159, 'adminn@admin.com', 134, 'Erp\\Models\\User\\User', 0, 0, NULL),
(160, 'helloadmin@gmail.com', 135, 'Erp\\Models\\User\\User', 0, 0, NULL),
(161, 'edu@gmail.com', 136, 'Erp\\Models\\User\\User', 0, 0, NULL),
(162, 'eduu@gmail.com', 137, 'Erp\\Models\\User\\User', 0, 0, NULL),
(163, 'eduud@gmail.com', 138, 'Erp\\Models\\User\\User', 0, 0, NULL),
(164, 'eduudd@gmail.com', 139, 'Erp\\Models\\User\\User', 0, 0, NULL),
(165, 'eduudd@gmail.comd', 140, 'Erp\\Models\\User\\User', 0, 0, NULL),
(166, 'eduudd@gmail.comdf', 141, 'Erp\\Models\\User\\User', 0, 0, NULL),
(167, 'hello@hello.com', 141, 'Erp\\Models\\User\\User', 0, 0, NULL),
(168, 'hello@helloo.com', 141, 'Erp\\Models\\User\\User', 0, 0, NULL),
(169, 'helloo@helloo.com', 141, 'Erp\\Models\\User\\User', 0, 0, NULL),
(170, 'helleod@hello.comg', 124, 'Erp\\Models\\User\\User', 0, 0, NULL),
(171, 'hell@hello.com', 124, 'Erp\\Models\\User\\User', 0, 0, NULL),
(172, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, NULL),
(173, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, NULL),
(174, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, NULL),
(175, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, NULL),
(176, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, NULL),
(177, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, NULL),
(178, NULL, 120, 'Erp\\Models\\User\\User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_histories`
--

CREATE TABLE `employee_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `dept_join_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_histories`
--

INSERT INTO `employee_histories` (`id`, `user_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `status`, `position`, `created_at`, `updated_at`, `site_id`) VALUES
(56, 120, 2, 5, 4, '2016-01-21', NULL, NULL, '2016-05-02', '2016-03-05', NULL),
(110, 120, 2, 5, 4, '2016-04-13', NULL, NULL, NULL, '2016-04-09', NULL),
(111, 120, 2, 5, 1, '2016-04-13', NULL, NULL, NULL, '2016-04-09', NULL),
(112, 120, 2, 5, 1, '2016-11-21', NULL, NULL, NULL, '2016-04-09', NULL),
(114, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', NULL),
(115, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', NULL),
(116, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', NULL),
(117, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', NULL),
(118, 126, 2, 5, 1, '2016-04-06', NULL, NULL, NULL, '2016-04-09', NULL),
(119, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09', NULL),
(120, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09', NULL),
(121, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09', NULL),
(122, 126, 2, 5, 1, '2016-04-04', NULL, NULL, NULL, '2016-04-09', NULL),
(123, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', NULL),
(124, 126, 2, 5, 1, '2016-04-09', NULL, NULL, NULL, '2016-04-09', NULL),
(125, 127, 2, 5, 4, '2016-03-09', NULL, NULL, '2016-04-09', NULL, NULL),
(126, 127, 2, 5, 1, '2016-06-09', NULL, NULL, '2016-04-09', NULL, NULL),
(127, 127, 2, 5, 1, '2016-06-09', NULL, NULL, '2016-04-09', NULL, NULL),
(128, 127, 2, 5, 4, '2016-04-09', NULL, NULL, '2016-04-09', NULL, NULL),
(129, 128, 2, 5, 1, '2016-12-31', NULL, NULL, '2016-04-10', NULL, NULL),
(130, 120, 2, 5, 1, '2016-04-20', NULL, NULL, NULL, '2016-04-20', NULL),
(131, 157, 2, 5, 1, '2016-05-05', NULL, NULL, '2016-05-02', NULL, NULL),
(132, 159, 3, 7, 5, '2016-05-01', NULL, NULL, '2016-05-14', NULL, NULL),
(133, 160, 3, 3, 5, '2016-02-24', NULL, NULL, '2016-05-14', NULL, NULL),
(134, 161, 3, 9, 5, '2016-05-01', NULL, NULL, '2016-05-15', NULL, NULL),
(135, 162, 3, 9, 5, '2016-05-01', NULL, NULL, '2016-05-15', NULL, NULL),
(136, 163, 3, 9, 5, '2016-05-01', NULL, NULL, '2016-05-15', NULL, NULL),
(137, 164, 3, 9, 5, '2016-05-01', NULL, NULL, '2016-05-15', NULL, NULL),
(138, 165, 3, 9, 5, '2016-05-08', NULL, NULL, '2016-05-15', NULL, NULL),
(139, 166, 3, 6, 5, '2016-05-11', NULL, NULL, '2016-05-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event_translations`
--

CREATE TABLE `event_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  `event_venue` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `examinations`
--

CREATE TABLE `examinations` (
  `id` int(10) UNSIGNED NOT NULL,
  `examination_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `examination_date` date NOT NULL,
  `examination_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examinations`
--

INSERT INTO `examinations` (`id`, `examination_name`, `examination_date`, `examination_note`, `status`, `deleted_at`, `site_id`) VALUES
(1, 'First Semester', '2016-05-10', 'Jkjkjkjkjjkj', 'Active', NULL, 1),
(2, '2nd Semester', '2016-05-11', 'Fdfdf', 'Active', NULL, 1),
(3, 'Final_exam', '2016-05-14', 'Gcgghgh', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `examination_schedules`
--

CREATE TABLE `examination_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `examination_id` int(11) DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `examination_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examination_schedules`
--

INSERT INTO `examination_schedules` (`id`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `examination_date`, `start_time`, `end_time`, `building_id`, `floor_id`, `room_id`, `status`, `deleted_at`, `site_id`) VALUES
(1, 3, 5, 8, 7, '2016-05-14', '14:59:15', '14:59:15', 1, 2, 2, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `building_id`, `floor_name`, `status`, `deleted_at`, `site_id`) VALUES
(1, 1, '1', 'Active', NULL, NULL),
(2, 2, 'Floor 1', 'Active', NULL, NULL),
(3, 2, 'Floor 2', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `status`, `site_id`) VALUES
(17, 'Active', 1),
(18, 'Active', 1),
(19, 'Active', 1),
(20, 'Active', 1),
(21, 'Active', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gender_translations`
--

CREATE TABLE `gender_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `gender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gender_translations`
--

INSERT INTO `gender_translations` (`id`, `gender_id`, `gender_name`, `locale`, `site_id`) VALUES
(17, 17, 'Male', 'en', 1),
(18, 18, 'Female', 'en', 1),
(19, 19, 'Common', 'en', 1),
(20, 20, 'Gender', 'en', 1),
(21, 21, 'Hi', 'en', 2),
(22, 21, 'Gvu', 'es', 2);

-- --------------------------------------------------------

--
-- Table structure for table `group_accesses`
--

CREATE TABLE `group_accesses` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `add` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_accesses`
--

INSERT INTO `group_accesses` (`id`, `menu_id`, `role_id`, `view`, `add`, `edit`, `delete`, `site_id`) VALUES
(1, 2, 3, 1, 0, 0, 0, 1),
(12, 2, 4, 1, 1, 0, 0, 1),
(13, 23, 4, 1, 0, 0, 0, 1),
(14, 24, 4, 1, 0, 0, 0, 1),
(15, 25, 4, 1, 0, 0, 0, 1),
(16, 26, 4, 1, 0, 0, 0, 1),
(17, 27, 4, 1, 0, 0, 0, 1),
(18, 29, 4, 1, 0, 0, 0, 1),
(19, 30, 4, 1, 0, 0, 0, 1),
(20, 31, 4, 1, 0, 0, 0, 1),
(21, 32, 4, 1, 0, 0, 0, 1),
(22, 33, 4, 1, 0, 0, 0, 1),
(23, 34, 4, 1, 0, 0, 0, 1),
(24, 35, 4, 1, 0, 0, 0, 1),
(25, 36, 4, 1, 0, 0, 0, 1),
(26, 37, 4, 1, 0, 0, 0, 1),
(27, 38, 4, 1, 0, 0, 0, 1),
(28, 39, 4, 1, 0, 0, 0, 1),
(29, 40, 4, 1, 0, 0, 0, 1),
(30, 23, 2, 0, 0, 0, 0, 1),
(31, 25, 2, 0, 0, 0, 0, 1),
(32, 41, 4, 1, 0, 0, 0, 1),
(33, 42, 4, 1, 0, 0, 0, 1),
(34, 43, 4, 1, 0, 0, 0, 1),
(35, 44, 4, 1, 0, 0, 0, 1),
(36, 45, 4, 1, 0, 0, 0, 1),
(37, 46, 4, 1, 0, 0, 0, 1),
(38, 28, 4, 1, 0, 0, 0, 1),
(39, 47, 4, 1, 0, 0, 0, 1),
(40, 5, 4, 1, 0, 0, 0, 1),
(41, 48, 4, 1, 0, 0, 0, 1),
(42, 49, 4, 1, 0, 0, 0, 1),
(43, 50, 4, 1, 0, 0, 0, 1),
(44, 51, 4, 1, 0, 0, 0, 1),
(45, 52, 4, 1, 0, 0, 0, 1),
(46, 53, 4, 1, 0, 0, 0, 1),
(47, 54, 4, 1, 0, 0, 0, 1),
(48, 55, 4, 1, 0, 0, 0, 1),
(49, 56, 4, 1, 0, 0, 0, 1),
(50, 57, 4, 1, 0, 0, 0, 1),
(51, 58, 4, 1, 0, 0, 0, 1),
(52, 59, 4, 1, 0, 0, 0, 1),
(53, 60, 4, 1, 0, 0, 0, 1),
(54, 61, 4, 1, 0, 0, 0, 1),
(55, 62, 4, 1, 0, 0, 0, 1),
(56, 63, 4, 1, 0, 0, 0, 1),
(57, 64, 4, 1, 0, 0, 0, 1),
(58, 65, 4, 1, 0, 0, 0, 1),
(59, 66, 4, 1, 0, 0, 0, 1),
(60, 67, 4, 1, 0, 0, 0, 1),
(61, 68, 4, 1, 0, 0, 0, 1),
(62, 69, 4, 1, 0, 0, 0, 1),
(63, 70, 4, 1, 0, 0, 0, 1),
(64, 71, 4, 1, 0, 0, 0, 1),
(65, 72, 4, 1, 0, 0, 0, 1),
(66, 73, 4, 1, 0, 0, 0, 1),
(67, 74, 4, 1, 0, 0, 0, 1),
(68, 75, 4, 1, 0, 0, 0, 1),
(69, 76, 4, 1, 0, 0, 0, 1),
(70, 77, 4, 1, 0, 0, 0, 1),
(71, 78, 4, 1, 0, 0, 0, 1),
(72, 79, 4, 1, 0, 0, 0, 1),
(73, 80, 4, 1, 0, 0, 0, 1),
(74, 81, 4, 1, 0, 0, 0, 1),
(75, 82, 4, 1, 0, 0, 0, 1),
(76, 83, 4, 1, 0, 0, 0, 1),
(77, 84, 4, 1, 0, 0, 0, 1),
(78, 85, 4, 1, 0, 0, 0, 1),
(79, 86, 4, 1, 0, 0, 0, 1),
(80, 87, 4, 1, 0, 0, 0, 1),
(81, 88, 4, 1, 0, 0, 0, 1),
(82, 89, 4, 1, 0, 0, 0, 1),
(83, 90, 4, 1, 0, 0, 0, 1),
(84, 91, 4, 1, 0, 0, 0, 1),
(85, 92, 4, 1, 0, 0, 0, 1),
(86, 93, 4, 1, 0, 0, 0, 1),
(87, 94, 4, 1, 0, 0, 0, 1),
(88, 95, 4, 1, 0, 0, 0, 1),
(89, 96, 4, 1, 0, 0, 0, 1),
(90, 97, 4, 1, 0, 0, 0, 1),
(91, 98, 4, 1, 0, 0, 0, 1),
(92, 99, 4, 1, 0, 0, 0, 1),
(93, 100, 4, 1, 0, 0, 0, 1),
(94, 101, 4, 1, 0, 0, 0, 1),
(95, 102, 4, 1, 0, 0, 0, 1),
(96, 103, 4, 1, 0, 0, 0, 1),
(97, 104, 4, 1, 0, 0, 0, 1),
(98, 105, 4, 1, 0, 0, 0, 1),
(99, 106, 4, 1, 0, 0, 0, 1),
(100, 107, 4, 1, 0, 0, 0, 1),
(101, 108, 4, 1, 0, 0, 0, 1),
(102, 109, 4, 1, 0, 0, 0, 1),
(103, 110, 4, 1, 0, 0, 0, 1),
(104, 111, 4, 1, 0, 0, 0, 1),
(105, 112, 4, 1, 0, 0, 0, 1),
(106, 113, 4, 1, 0, 0, 0, 1),
(107, 114, 4, 1, 0, 0, 0, 1),
(108, 115, 4, 1, 0, 0, 0, 1),
(109, 116, 4, 1, 0, 0, 0, 1),
(110, 117, 4, 1, 0, 0, 0, 1),
(111, 118, 4, 1, 0, 0, 0, 2),
(112, 119, 4, 1, 0, 0, 0, 1),
(113, 120, 4, 1, 0, 0, 0, 1),
(114, 121, 4, 1, 0, 0, 0, 1),
(115, 122, 4, 1, 0, 0, 0, 1),
(116, 123, 4, 1, 0, 0, 0, 1),
(117, 124, 4, 1, 0, 0, 0, 1),
(118, 125, 4, 1, 0, 0, 0, 1),
(119, 126, 4, 1, 0, 0, 0, 1),
(120, 127, 4, 1, 0, 0, 0, 1),
(121, 128, 4, 1, 0, 0, 0, 1),
(122, 129, 4, 1, 0, 0, 0, 1),
(123, 130, 4, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holydays`
--

CREATE TABLE `holydays` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `occasion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holydays`
--

INSERT INTO `holydays` (`id`, `date`, `occasion`, `type_id`, `status_id`, `position`, `site_id`) VALUES
(1, '2016-01-24', 'Optional', 2, 1, NULL, NULL),
(2, '2016-01-04', 'Winter', 2, 1, NULL, NULL),
(3, '2016-01-06', 'Tour', 2, 2, NULL, NULL),
(4, '2016-01-07', 'Hello Trip', 2, 1, NULL, NULL),
(5, '0000-00-00', 'Study Tour', 2, 1, NULL, NULL),
(6, '2016-01-25', 'Dfdsgdsgsd', 1, 1, NULL, NULL),
(7, '2016-01-25', 'New Vacation', 2, 2, NULL, NULL),
(8, '2016-01-06', 'Gsdgsdg', 1, 1, NULL, NULL),
(9, '2016-01-07', 'Testing', 1, 1, NULL, NULL),
(10, '2016-01-06', 'Fdsfsdf', 1, 2, NULL, NULL),
(11, '2016-02-02', 'Martyrs Day', 5, 1, NULL, NULL),
(12, '2016-03-01', 'Dayoff', 6, 1, NULL, NULL),
(13, '2016-03-12', 'Testing Holiday', 2, 1, NULL, NULL),
(14, '2016-03-13', 'Gfgfd', 1, 1, NULL, NULL),
(15, '2016-05-19', 'Optional', 1, 1, NULL, NULL),
(16, '2016-03-31', 'Kkkkkkkk', 1, 1, NULL, NULL),
(17, '2016-01-15', 'Suti', 7, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holy_day_types`
--

CREATE TABLE `holy_day_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holy_day_types`
--

INSERT INTO `holy_day_types` (`id`, `type`, `status_id`, `position`, `site_id`) VALUES
(1, 'Rgional', 1, NULL, NULL),
(2, 'Office Owned ', 1, NULL, NULL),
(5, 'Hype', 1, NULL, NULL),
(6, 'Weekend', 1, NULL, NULL),
(7, 'Sobe Barat', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leave_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_days` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `type`, `leave_details`, `max_days`, `status`, `position`, `site_id`) VALUES
(2, 'Maternal', 'When a female employee conceives, she will go under this type of leave', 180, 'Active', 1, NULL),
(3, 'Casual Leave', 'sfsdfsdfdsfdsfdsf', 25, 'Fdsfsdfsd', 1, NULL),
(4, 'Eid', 'sfkjsk', 5, 'Active', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `applied_on` date DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT '2',
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_id`, `user_id`, `from`, `to`, `applied_on`, `status_id`, `position`, `site_id`) VALUES
(10, 2, 120, '2016-01-08', '2016-01-01', '2016-01-28', 2, NULL, NULL),
(11, 3, 128, '2016-01-28', '2016-02-02', '2016-01-27', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_application_translations`
--

CREATE TABLE `leave_application_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_application_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explanation` text COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_application_translations`
--

INSERT INTO `leave_application_translations` (`id`, `leave_application_id`, `subject`, `explanation`, `locale`, `site_id`) VALUES
(9, 10, 'testing', 'explaination', 'en', NULL),
(10, 11, 'Travel', 'Travel', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_tables`
--

CREATE TABLE `log_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loggable_id` int(11) NOT NULL,
  `loggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `examination_id` int(11) DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `mark_types` text COLLATE utf8_unicode_ci,
  `total` double(8,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `user_id`, `roll_no`, `examination_id`, `student_class_id`, `section_id`, `subject_id`, `mark_types`, `total`, `status`, `deleted_at`, `site_id`) VALUES
(29, 145, '45454554', 1, 1, 2, 1, '{"Written":"20","Objective":"21"}', 41.00, 'Active', NULL, 1),
(30, 146, '454545454', 1, 1, 2, 1, '{"Written":"22","Objective":"22"}', 44.00, 'Active', NULL, 1),
(32, 148, '45444454', 1, 1, 2, 1, '{"Written":"20","Objective":"24","class_performance":"45"}', 89.00, 'Active', NULL, 1),
(33, 150, '45444454', 1, 1, 2, 1, '{"Written":"23","Objective":"25","class_performance":"24"}', 72.00, 'Active', NULL, 1),
(34, 151, '45444454', 1, 1, 2, 1, '{"Written":"54","Objective":"24","class_performance":"25"}', 103.00, 'Active', NULL, 1),
(35, 152, '4545454545', 1, 1, 2, 1, '{"Written":"24","Objective":"53","class_performance":"24"}', 101.00, 'Active', NULL, 1),
(36, 153, '4545454', 1, 1, 2, 1, '{"Written":"24","Objective":"24","class_performance":"24"}', 72.00, 'Active', NULL, 1),
(37, 154, '454454', 1, 1, 2, 1, '{"Written":"24","Objective":"25","class_performance":"25"}', 74.00, 'Active', NULL, 1),
(38, 155, '45454545', 1, 1, 2, 1, '{"Written":"24","Objective":"25","class_performance":"24"}', 73.00, 'Active', NULL, 1),
(39, 156, '77797897978', 1, 1, 2, 1, '{"Written":"25","Objective":"24","class_performance":"24"}', 73.00, 'Active', NULL, 1),
(40, 145, '45454554', 3, 1, 2, 1, '{"Written":"15","Objective":"27"}', 42.00, 'Active', NULL, NULL),
(41, 146, '454545454', 3, 1, 2, 1, '{"Written":"47","Objective":"3"}', 50.00, 'Active', NULL, NULL),
(44, 149, '45444454', 1, 1, 2, 1, '{"Written":"24","Objective":"25","class_performance":"25"}', 74.00, 'Active', NULL, 1),
(45, 145, '45454554', 1, 1, 2, 5, '{"Written":"35"}', 35.00, 'Active', NULL, 1),
(46, 146, '454545454', 1, 1, 2, 5, '{"Written":"25"}', 25.00, 'Active', NULL, 1),
(47, 147, '45444454', 1, 1, 2, 5, '{"Written":"56"}', 56.00, 'Active', NULL, 1),
(48, 148, '45444454', 1, 1, 2, 5, '{"Written":"35"}', 35.00, 'Active', NULL, 1),
(49, 149, '45444454', 1, 1, 2, 5, '{"Written":"36"}', 36.00, 'Active', NULL, 1),
(50, 150, '45444454', 1, 1, 2, 5, '{"Written":"36"}', 36.00, 'Active', NULL, 1),
(51, 151, '45444454', 1, 1, 2, 5, '{"Written":"35"}', 35.00, 'Active', NULL, 1),
(52, 152, '4545454545', 1, 1, 2, 5, '{"Written":"40"}', 40.00, 'Active', NULL, 1),
(53, 153, '4545454', 1, 1, 2, 5, '{"Written":"35"}', 35.00, 'Active', NULL, 1),
(54, 154, '454454', 1, 1, 2, 5, '{"Written":"36"}', 36.00, 'Active', NULL, 1),
(55, 155, '45454545', 1, 1, 2, 5, '{"Written":"32"}', 32.00, 'Active', NULL, 1),
(56, 156, '77797897978', 1, 1, 2, 5, '{"Written":"36"}', 36.00, 'Active', NULL, 1),
(57, 145, '45454554', 1, 1, 2, 3, '{"Objective":"52"}', 52.00, 'Active', NULL, 1),
(58, 146, '454545454', 1, 1, 2, 3, '{"Objective":"30"}', 30.00, 'Active', NULL, 1),
(60, 148, '45444454', 1, 1, 2, 3, '{"Objective":"35"}', 35.00, 'Active', NULL, 1),
(61, 149, '45444454', 1, 1, 2, 3, '{"Objective":"24"}', 24.00, 'Active', NULL, 1),
(62, 150, '45444454', 1, 1, 2, 3, '{"Objective":"35"}', 35.00, 'Active', NULL, 1),
(63, 151, '45444454', 1, 1, 2, 3, '{"Objective":"35"}', 35.00, 'Active', NULL, 1),
(64, 152, '4545454545', 1, 1, 2, 3, '{"Objective":"34"}', 34.00, 'Active', NULL, 1),
(65, 153, '4545454', 1, 1, 2, 3, '{"Objective":"36"}', 36.00, 'Active', NULL, 1),
(66, 154, '454454', 1, 1, 2, 3, '{"Objective":"34"}', 34.00, 'Active', NULL, 1),
(67, 155, '45454545', 1, 1, 2, 3, '{"Objective":"36"}', 36.00, 'Active', NULL, 1),
(68, 156, '77797897978', 1, 1, 2, 3, '{"Objective":"35"}', 35.00, 'Active', NULL, 1),
(69, 158, '124589', 1, 2, 1, 2, '{"Written":"50"}', 50.00, 'Active', NULL, 1),
(70, 158, '124589', 1, 2, 1, 8, '{"Written":"20","Objective":"10"}', 30.00, 'Active', NULL, 1),
(71, 167, '3578956', 1, 2, 1, 2, '{"Written":"45"}', 45.00, 'Active', NULL, 1),
(72, 167, '3578956', 1, 2, 1, 8, '{"Written":"35","Objective":"45"}', 80.00, 'Active', NULL, 1),
(73, 147, '45444454', 1, 1, 2, 1, '{"Written":"20","Objective":"25"}', 45.00, 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks_types`
--

CREATE TABLE `marks_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `marks_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks_types`
--

INSERT INTO `marks_types` (`id`, `marks_type`, `status`, `deleted_at`, `site_id`) VALUES
(1, 'Written', 'Active', NULL, 1),
(2, 'Objective', 'Active', NULL, 1),
(3, 'Practical', 'Active', '2016-05-11 07:04:46', 1),
(4, 'Assignment', 'Active', '2016-05-11 07:04:44', 1),
(5, 'Viva', 'Active', '2016-05-11 07:04:40', 1),
(6, 'class_performance', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `filable_id` int(11) DEFAULT NULL,
  `filable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `name`, `extension`, `path`, `user_id`, `filable_id`, `filable_type`, `site_id`) VALUES
(1, NULL, NULL, '14532854550b12016-01-09-195845.jpg', NULL, 109, 'Erp\\Models\\User\\User', NULL),
(2, '1453286207UBY2016-01-09-195845.jpg', 'jpg', NULL, 111, 111, 'Erp\\Models\\User\\User', NULL),
(3, '14532867245mY2016-01-09-195845', 'jpg', NULL, 112, 112, 'Erp\\Models\\User\\User', NULL),
(4, '1453287116Rb92016-01-09-195845', 'jpg', NULL, 113, 113, 'Erp\\Models\\User\\User', NULL),
(5, '1453289014dfHsadi-min', 'sql~', NULL, 115, 115, 'Erp\\Models\\User\\User', NULL),
(6, '1453289014K1vschoolsoft', 'sql', NULL, 115, 115, 'Erp\\Models\\User\\User', NULL),
(7, '1453290599Sejsvecommerce', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', NULL),
(8, '14532905992W7schoolsoft', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', NULL),
(9, '1453290599oAjsadi-excel', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', NULL),
(10, '1453290599QfAsadi', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', NULL),
(11, '1453290599YqQschoolsoft', 'sql', NULL, 116, 116, 'Erp\\Models\\User\\User', NULL),
(12, '1453290942pqqsvecommerce', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User', NULL),
(13, '1453290942cIoschoolsoft', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User', NULL),
(14, '14532909422Vdschoolsoft', 'sql', NULL, 118, 118, 'Erp\\Models\\User\\User', NULL),
(15, '1453290942yAcsadi-min', 'sql~', NULL, 118, 118, 'Erp\\Models\\User\\User', NULL),
(16, '1453290942ERssadi-min', 'sql~', NULL, 118, 118, 'Erp\\Models\\User\\User', NULL),
(17, '1453291476NPpsadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User', NULL),
(18, '1453291476EO5sadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User', NULL),
(19, '1453291476aRxschoolsoft', 'sql', NULL, 119, 119, 'Erp\\Models\\User\\User', NULL),
(20, '14532914762hoschoolsoft', 'sql', NULL, 119, 119, 'Erp\\Models\\User\\User', NULL),
(21, '1453291476dKTsadi-min', 'sql~', NULL, 119, 119, 'Erp\\Models\\User\\User', NULL),
(22, '1453291583RXeschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(23, '1453291583Waesadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(24, '1453291583fZOschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(25, '1453291583YKWsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(26, '1453291583MbJschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(27, '1453352490bCqsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(28, '1453352490Rdvschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(29, '1453352490w6kschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(30, '1453352490rwFschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(31, '1453352490l2Msadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(32, '1453357796Ksfschoolsoft', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User', NULL),
(33, '1453357797syrsadi-min', 'sql~', NULL, 123, 123, 'Erp\\Models\\User\\User', NULL),
(34, '145335779720qsadi-min', 'sql~', NULL, 123, 123, 'Erp\\Models\\User\\User', NULL),
(35, '14533577977Rrsadi-min', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User', NULL),
(36, '1453357797yhbschoolsoft', 'sql', NULL, 123, 123, 'Erp\\Models\\User\\User', NULL),
(37, '1453360363ylxsadi-min', 'sql~', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(38, '1453360440merschoolsoft', 'sql', NULL, 120, 120, 'Erp\\Models\\User\\User', NULL),
(39, '1453360986fbSschoolsoft', 'sql', NULL, 124, 124, 'Erp\\Models\\User\\User', NULL),
(40, '1453370772nXnschoolsoft', 'sql', NULL, 126, 126, 'Erp\\Models\\User\\User', NULL),
(41, '1453714476Evuexel1', 'xlsx', NULL, 127, 127, 'Erp\\Models\\User\\User', NULL),
(42, '1461497493Okutimepicki', 'css', NULL, 143, 143, 'Erp\\Models\\User\\User', NULL),
(43, '1461567330GLJschool (1)', 'sql', NULL, 144, 144, 'Erp\\Models\\User\\User', NULL),
(44, '1461580394Vq7school', 'sql', NULL, 145, 145, 'Erp\\Models\\User\\User', NULL),
(45, '14615806319j1lara-erp (29)', 'sql', NULL, 146, 146, 'Erp\\Models\\User\\User', NULL),
(46, '1463292789hb4superfish', 'js', NULL, 165, 165, 'Erp\\Models\\User\\User', NULL),
(47, '1463565029C2Ssample_teacher', 'csv', NULL, 167, 167, 'Erp\\Models\\User\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `route_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_displayable` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `icon_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_common_access` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `route_name`, `parent_id`, `position`, `status`, `is_displayable`, `site_id`, `deleted_at`, `icon_name`, `is_common_access`) VALUES
(2, 'holydaytype-list', 0, 0, 1, 1, 1, '2016-05-29 06:42:48', NULL, 0),
(3, 'holydaytype-list', 2, 0, 1, 1, 1, '2016-05-29 06:42:46', NULL, 0),
(4, 'holydaytype-list', 0, 0, 1, 1, 1, '2016-05-29 06:42:40', NULL, 0),
(5, 'student-list', 41, 0, 1, 1, 1, NULL, '', 0),
(6, 'log-out', 0, 0, 1, 0, 1, NULL, '', 1),
(7, 'sign-in', 0, 0, 1, 0, 1, NULL, '', 1),
(8, 'sign-in-form', 0, 0, 1, 0, 1, NULL, '', 1),
(9, 'log-in', 0, 0, 1, 0, 1, NULL, '', 1),
(10, 'role-check', 0, 0, 1, 0, 1, NULL, '', 1),
(11, '''/''', 0, 0, 1, 1, 1, NULL, '', 0),
(12, 'login-form', 0, 0, 1, 0, 1, NULL, '', 1),
(13, 'admin', 0, 0, 1, 1, 1, NULL, '', 1),
(14, 'employee-profile', 0, 0, 1, 0, 1, NULL, '', 1),
(15, 'choose-lang', 0, 0, 1, 0, 1, NULL, '', 1),
(16, 'imagecache', 0, 0, 1, 0, 1, NULL, '', 1),
(17, 'menu-list', 0, 0, 1, 0, 1, NULL, '', 1),
(18, 'menu-create-form', 0, 0, 1, 0, 1, NULL, '', 1),
(19, 'menu-create', 0, 0, 1, 0, 1, NULL, '', 1),
(20, 'menu-edit-form', 0, 0, 1, 0, 1, NULL, '', 1),
(21, 'menu-edit', 0, 0, 1, 0, 1, NULL, '', 1),
(22, 'menu-delete', 0, 0, 1, 0, 1, NULL, '', 1),
(23, 'status-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(24, 'status-create', 0, 0, 1, 0, 1, NULL, '', 0),
(25, 'status-list', 0, 0, 1, 1, 1, NULL, '', 0),
(26, 'edit-status-form', 0, 0, 1, 0, 1, NULL, '', 0),
(27, 'edit-status', 0, 0, 1, 0, 1, NULL, '', 0),
(28, 'group-info', 0, 0, 1, 0, 1, NULL, '', 0),
(29, 'role-list', 90, 0, 1, 1, 1, NULL, '', 0),
(30, 'role-assign-form', 90, 0, 1, 1, 1, NULL, '', 0),
(31, 'assign-permission-form', 90, 0, 1, 1, 1, NULL, '', 0),
(32, 'role-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(33, 'role-create', 0, 0, 1, 0, 1, NULL, '', 0),
(34, 'role-assign', 0, 0, 1, 0, 1, NULL, '', 0),
(35, 'role-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(36, 'role-view', 0, 0, 1, 0, 1, NULL, '', 0),
(37, 'role-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(38, 'role-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(39, 'group-access', 0, 0, 1, 0, 1, NULL, '', 0),
(40, 'role-access', 0, 0, 1, 0, 1, NULL, '', 0),
(41, '#', 0, 0, 1, 1, 1, NULL, '', 0),
(42, 'user-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(43, 'user-create', 0, 0, 1, 0, 1, NULL, '', 0),
(44, 'user-view', 0, 0, 1, 0, 1, NULL, '', 0),
(45, 'user-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(46, 'user-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(47, 'user-list', 41, 0, 1, 1, 1, NULL, '', 0),
(48, 'student_add_form', 0, 0, 1, 0, 1, NULL, '', 0),
(49, 'student-create', 0, 0, 1, 0, 1, NULL, '', 0),
(50, 'student-list-by-class', 0, 0, 1, 0, 1, NULL, '', 0),
(51, 'student-list-by-section', 0, 0, 1, 0, 1, NULL, '', 0),
(52, 'student-list-by-sub', 0, 0, 1, 0, 1, NULL, '', 0),
(53, 'student-class', 0, 0, 1, 0, 1, NULL, '', 0),
(54, 'student-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(55, 'student-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(56, 'student-view', 0, 0, 1, 0, 1, NULL, '', 0),
(57, 'student-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(58, 'teacher-list', 41, 0, 1, 1, 1, NULL, '', 0),
(59, 'teacher-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(60, 'teacher-create', 0, 0, 1, 0, 1, NULL, '', 0),
(61, 'teacher-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(62, 'teacher-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(63, 'teacher-view', 0, 0, 1, 0, 1, NULL, '', 0),
(64, 'teacher-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(65, 'guardian-list', 41, 0, 1, 1, 1, NULL, '', 0),
(66, 'guardian-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(67, 'guardian-create', 0, 0, 1, 0, 1, NULL, '', 0),
(68, 'guardian-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(69, 'guardian-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(70, 'guardian-view', 0, 0, 1, 0, 1, NULL, '', 0),
(71, 'guardian-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(72, 'gender-religion', 0, 0, 1, 0, 1, NULL, '', 0),
(73, 'gender-list', 90, 0, 1, 1, 1, NULL, '', 0),
(74, 'gender-add-form', 72, 0, 1, 0, 1, NULL, '', 0),
(75, 'religion-list', 90, 0, 1, 1, 1, NULL, '', 0),
(76, 'religion-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(77, 'religion-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(78, 'religion-view', 0, 0, 1, 0, 1, NULL, '', 0),
(79, 'religion-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(80, 'gender-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(81, 'gender-view', 0, 0, 1, 0, 1, NULL, '', 0),
(82, 'gender-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(83, 'gender-add', 0, 0, 1, 0, 1, NULL, '', 0),
(84, 'religion-add', 0, 0, 1, 0, 1, NULL, '', 0),
(85, 'department-designation', 0, 0, 1, 0, 1, NULL, '', 0),
(86, 'gender-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(87, 'religion-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(88, 'department-list', 90, 0, 1, 1, 1, NULL, '', 0),
(89, 'designation-list', 90, 0, 1, 1, 1, NULL, '', 0),
(90, 'user-settings', 0, 0, 1, 1, 1, NULL, '', 0),
(91, 'academic-settings', 0, 0, 1, 1, 1, NULL, '', 0),
(92, 'department-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(93, 'department-create', 0, 0, 1, 0, 1, NULL, '', 0),
(94, 'department-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(95, 'department-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(96, 'department-view', 0, 0, 1, 0, 1, NULL, '', 0),
(97, 'department-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(98, 'designation-add-form', 0, 0, 1, 0, 1, NULL, '', 0),
(99, 'designation-add', 0, 0, 1, 0, 1, NULL, '', 0),
(100, 'designation-edit-form', 0, 0, 1, 0, 1, NULL, '', 0),
(101, 'designation-edit', 0, 0, 1, 0, 1, NULL, '', 0),
(102, 'designation-view', 0, 0, 1, 0, 1, NULL, '', 0),
(103, 'designation-delete', 0, 0, 1, 0, 1, NULL, '', 0),
(104, 'designation-dept', 0, 0, 1, 0, 1, NULL, '', 0),
(105, 'designation-user', 0, 0, 1, 0, 1, NULL, '', 0),
(106, 'building-list', 91, 0, 1, 1, 1, NULL, '', 0),
(107, 'floor-list', 91, 0, 1, 1, 1, NULL, '', 0),
(108, 'room-list', 91, 0, 1, 1, 1, NULL, '', 0),
(109, 'class-list', 91, 0, 1, 1, 1, NULL, '', 0),
(110, 'section-list', 91, 0, 1, 1, 1, NULL, '', 0),
(111, 'subject-list', 91, 0, 1, 1, 1, NULL, '', 0),
(112, 'routine-list', 91, 0, 1, 1, 1, NULL, '', 0),
(114, 'marks-marks', 0, 0, 1, 1, 1, NULL, '', 0),
(115, 'mark-type-list', 114, 0, 1, 1, 1, NULL, '', 0),
(116, 'create-marks-form', 114, 0, 1, 1, 1, NULL, '', 0),
(117, 'student-marks-form', 114, 0, 1, 1, 1, NULL, '', 0),
(118, 'shift-add-form', 0, 0, 1, 1, 2, NULL, '', 0),
(119, 'site-list', 0, 0, 1, 1, 1, NULL, '', 0),
(120, 'site-create-form', 119, 0, 1, 0, 1, NULL, '', 0),
(121, 'site-create', 119, 0, 1, 0, 1, NULL, '', 0),
(122, 'site-edit-form', 119, 0, 1, 0, 1, NULL, '', 0),
(123, 'site-edit', 119, 0, 1, 0, 1, NULL, '', 0),
(124, 'site-view', 119, 0, 1, 0, 1, NULL, '', 0),
(125, 'site-delete', 119, 0, 1, 0, 1, NULL, '', 0),
(126, 'site-group-list', 119, 0, 1, 1, 1, NULL, '', 0),
(127, 'site-group-create-form', 119, 0, 1, 0, 1, NULL, '', 0),
(128, 'site-group-create', 119, 0, 1, 0, 1, NULL, '', 0),
(129, 'site-group-edit-form', 119, 0, 1, 0, 1, NULL, '', 0),
(130, 'site-group-edit', 119, 0, 1, 0, 1, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `menu_name`, `locale`, `site_id`) VALUES
(2, 2, 'Hello', 'en', 1),
(3, 3, 'Hello Testing', 'en', 1),
(4, 4, 'Hello World', 'en', 1),
(5, 5, 'Students', 'en', 1),
(6, 6, 'Sign Out', 'en', 1),
(7, 7, 'Sign In', 'en', 1),
(8, 8, 'Sign In Form', 'en', 1),
(9, 9, 'Log In', 'en', 1),
(10, 10, 'Role Check', 'en', 1),
(11, 11, 'First Sign In', 'en', 1),
(12, 12, 'First Sign In', 'en', 1),
(13, 13, 'Dashboard', 'en', 1),
(14, 14, 'Profile', 'en', 1),
(15, 15, 'Language Chooser', 'en', 1),
(16, 16, 'Imagecache', 'en', 1),
(17, 17, 'Menu', 'en', 1),
(18, 18, 'Create Menu Get', 'en', 1),
(19, 19, 'Create Menu Post', 'en', 1),
(20, 20, 'Edit Menu Form', 'en', 1),
(21, 21, 'Edit Menu', 'en', 1),
(22, 22, 'Delete Menu', 'en', 1),
(23, 23, 'Create Status Form', 'en', 1),
(24, 24, 'Create Status', 'en', 1),
(25, 25, 'Status', 'en', 1),
(26, 26, 'Edit Status Form', 'en', 1),
(27, 27, 'Edit Status', 'en', 1),
(28, 28, 'Group Info', 'en', 1),
(29, 29, 'User Group', 'en', 1),
(30, 30, 'Assign Role', 'en', 1),
(31, 31, 'Assign Permission', 'en', 1),
(32, 32, 'Create Role Form', 'en', 1),
(33, 33, 'Create Role', 'en', 1),
(34, 34, 'Assign Role Post', 'en', 1),
(35, 35, 'Edit Role Form', 'en', 1),
(36, 36, 'View Role', 'en', 1),
(37, 37, 'Delete Role', 'en', 1),
(38, 38, 'Edit Role', 'en', 1),
(39, 39, 'Group Access', 'en', 1),
(40, 40, 'Role Access', 'en', 1),
(41, 41, 'Users', 'en', 1),
(42, 42, 'Add User Form', 'en', 1),
(43, 43, 'Create User', 'en', 1),
(44, 44, 'View User', 'en', 1),
(45, 45, 'Edit User Form', 'en', 1),
(46, 46, 'Edit User', 'en', 1),
(47, 47, 'Employees', 'en', 1),
(48, 48, 'Add Student Form', 'en', 1),
(49, 49, 'Add Student', 'en', 1),
(50, 50, 'Student List By Class', 'en', 1),
(51, 51, 'Student List by Section', 'en', 1),
(52, 52, 'Student List by Subject', 'en', 1),
(53, 53, 'Student Class for Department', 'en', 1),
(54, 54, 'Edit Student Form', 'en', 1),
(55, 55, 'Edit Student', 'en', 1),
(56, 56, 'View Students', 'en', 1),
(57, 57, 'Delete Student', 'en', 1),
(58, 58, 'Teachers', 'en', 1),
(59, 59, 'Add Teacher Form', 'en', 1),
(60, 60, 'Create Teacher', 'en', 1),
(61, 61, 'Edit Teacher Form', 'en', 1),
(62, 62, 'Edit Teacher', 'en', 1),
(63, 63, 'View Teacher', 'en', 1),
(64, 64, 'Delete Teacher', 'en', 1),
(65, 65, 'Guardians', 'en', 1),
(66, 66, 'Add Guardian Form', 'en', 1),
(67, 67, 'Add Guardian', 'en', 1),
(68, 68, 'Edit Guardian Form', 'en', 1),
(69, 69, 'Edit Guardian', 'en', 1),
(70, 70, 'View Guardian', 'en', 1),
(71, 71, 'Delete Guardian', 'en', 1),
(72, 72, 'Gender & Religion', 'en', 1),
(73, 73, 'Gender', 'en', 1),
(74, 74, 'Add Gender Form', 'en', 1),
(75, 75, 'Religion', 'en', 1),
(76, 76, 'Add Religion Form', 'en', 1),
(77, 77, 'Edit Religion Form', 'en', 1),
(78, 78, 'View Religion', 'en', 1),
(79, 79, 'Delete Religion', 'en', 1),
(80, 80, 'Edit Gender Form', 'en', 1),
(81, 81, 'View Gender', 'en', 1),
(82, 82, 'Delete Gender', 'en', 1),
(83, 83, 'Add Gender', 'en', 1),
(84, 84, 'Add Religion', 'en', 1),
(85, 85, 'Department & Designation', 'en', 1),
(86, 86, 'Edit Gender', 'en', 1),
(87, 87, 'Edit Religion', 'en', 1),
(88, 88, 'Department', 'en', 1),
(89, 89, 'Designation', 'en', 1),
(90, 90, 'User Settings', 'en', 1),
(91, 91, 'Academic Settings', 'en', 1),
(92, 92, 'Add Department Form', 'en', 1),
(93, 93, 'Add Department', 'en', 1),
(94, 94, 'Edit Department Form', 'en', 1),
(95, 95, 'Edit Department', 'en', 1),
(96, 96, 'View Department', 'en', 1),
(97, 97, 'Delete Department', 'en', 1),
(98, 98, 'Add Designation Form', 'en', 1),
(99, 99, 'Add Designation', 'en', 1),
(100, 100, 'Edit Designation Form', 'en', 1),
(101, 101, 'Edit Designation', 'en', 1),
(102, 102, 'View Designation', 'en', 1),
(103, 103, 'Delete Designation', 'en', 1),
(104, 104, 'Designation of Dept', 'en', 1),
(105, 105, 'Edit User Designation', 'en', 1),
(106, 106, 'Buildings', 'en', 1),
(107, 107, 'Floors', 'en', 1),
(108, 108, 'Rooms', 'en', 1),
(109, 109, 'Classes', 'en', 1),
(110, 110, 'Sections', 'en', 1),
(111, 111, 'Subjects', 'en', 1),
(112, 112, 'Routine', 'en', 1),
(113, 113, 'Marks', 'en', 1),
(114, 114, 'Marks', 'en', 1),
(115, 115, 'Mark Types', 'en', 1),
(116, 116, 'Add Marks Form', 'en', 1),
(117, 117, 'Student Marks Form', 'en', 1),
(118, 118, 'Shift Add Form', 'en', 2),
(119, 119, 'Site Info', 'en', 1),
(120, 120, 'Create Site Form', 'en', 1),
(121, 121, 'Create Site', 'en', 1),
(122, 122, 'Edit Site Info Form', 'en', 1),
(123, 123, 'Edit Site Info', 'en', 1),
(124, 124, 'View Site', 'en', 1),
(125, 125, 'Delete Site', 'en', 1),
(126, 126, 'Site Group', 'en', 1),
(127, 127, 'Create Site Group Form', 'en', 1),
(128, 128, 'Create Site Group', 'en', 1),
(129, 129, 'Edit Site Group Form', 'en', 1),
(130, 130, 'Edit Site Group', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meta_settings`
--

CREATE TABLE `meta_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_field_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_options` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wrapclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validation_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_displayable` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_translatable` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meta_settings`
--

INSERT INTO `meta_settings` (`id`, `form_field_name`, `field_level`, `field_type`, `field_options`, `field_value_type`, `default_value`, `labclass`, `wrapclass`, `field_style`, `field_class`, `field_id`, `form_name`, `validation_type`, `description`, `is_displayable`, `is_required`, `is_translatable`, `is_deleted`, `status`, `position`, `site_id`) VALUES
(5, 'info', 'Information', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student', NULL, NULL, 1, 1, 0, 0, 'Inactive', NULL, NULL),
(6, 'choose', 'choose ur book', 'select', 'a,b,c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student', NULL, NULL, 1, 0, 0, 0, 'Inactive', NULL, NULL),
(7, 'status', 'Status', 'radio', 'a,b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student', NULL, NULL, 1, 0, 0, 0, 'Inactive', NULL, NULL),
(8, 'unique_id', 'Unique Id', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student', NULL, NULL, 0, 1, 0, 0, 'Inactive', NULL, NULL),
(9, 'test_teacher', 'Test', 'text', NULL, NULL, 'Test', NULL, NULL, NULL, NULL, NULL, 'teacher', NULL, NULL, 0, 0, 0, 0, 'Active', NULL, NULL),
(10, 'gfgf', 'gff', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, 1, 1, 0, 1, 'Active', NULL, NULL),
(11, 'fddf', 'fddf', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'teacher', NULL, NULL, 1, 1, 0, 1, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`, `site_id`) VALUES
('2014_10_12_000000_create_users_table', 1, NULL),
('2014_10_12_100000_create_password_resets_table', 1, NULL),
('2015_12_05_053734_languages', 1, NULL),
('2015_12_05_055339_create_company_groups_table', 2, NULL),
('2015_12_05_061945_create_companies_table', 3, NULL),
('2015_12_05_064229_create_genders_table', 4, NULL),
('2015_12_05_072222_create_religions_table', 4, NULL),
('2015_12_05_072649_create_emails_table', 5, NULL),
('2015_12_05_081947_update_users_table', 6, NULL),
('2015_12_05_091238_create_passwords_table', 7, NULL),
('2015_11_15_103357_create_roles_table', 8, NULL),
('2015_12_05_094138_create_log_tables_table', 9, NULL),
('2015_12_05_101349_create_options_table', 10, NULL),
('2015_12_05_101607_create_add_field_to_tables_table', 11, NULL),
('2015_12_05_102313_create_media_table', 12, NULL),
('2015_12_05_104930_create_departments_table', 13, NULL),
('2015_12_05_111042_add_company_id_dept_id_to_users_table', 14, NULL),
('2015_12_06_040317_create_user_translations_table', 15, NULL),
('2015_12_06_041229_add_address_to_user_translations', 16, NULL),
('2015_12_06_042029_drop_address_firstname_lastname_from_users_table', 17, NULL),
('2015_12_06_045020_sixty_password_passwords_table', 18, NULL),
('2015_12_06_050155_email_unique_emails_table', 19, NULL),
('2015_12_06_050802_create_gender_translations_table', 20, NULL),
('2015_12_06_051417_drop_name_from_genders', 21, NULL),
('2015_12_06_051659_unique_username_in_users_table', 22, NULL),
('2015_12_22_045955_ttts', 23, NULL),
('2015_12_26_063509_drop_company_id_from_depts', 24, NULL),
('2015_12_26_064252_drop_company_id_from_depts', 25, NULL),
('2016_01_17_054556_create_bank_accounts_table', 26, NULL),
('2016_01_17_104403_create_designations_table', 27, NULL),
('2016_01_17_110047_create_employee_histories_table', 28, NULL),
('2016_01_17_110819_add_status_position_to_bankaccounts_table', 29, NULL),
('2016_01_18_101033_add_dept_id_to_users', 30, NULL),
('2016_01_18_101654_add_dept_id_to_users', 31, NULL),
('2016_01_19_064429_add_join_date_to_users', 32, NULL),
('2016_01_19_091227_add_father_mother_name_to_users_translation', 33, NULL),
('2016_01_19_091438_add_father_mother_name_to_users_translation', 34, NULL),
('2016_01_19_091611_add_father_mother_name_to_users_translation', 35, NULL),
('2016_01_19_095659_add_joining_salary_user_translations', 36, NULL),
('2016_01_19_095851_add_joining_salary_user_translations', 37, NULL),
('2016_01_19_100322_add_birthday_users', 38, NULL),
('2016_01_19_100447_add_birthday_users', 39, NULL),
('2016_01_19_105234_remove_foreign_account_no_bank_accounts', 40, NULL),
('2014_10_12_000000_create_users_table', 1, NULL),
('2014_10_12_100000_create_password_resets_table', 1, NULL),
('2015_09_10_092223_creat_photos_table', 1, NULL),
('2015_09_12_072416_add_profession_to_users_table', 2, NULL),
('2015_09_13_101110_create_types_table', 3, NULL),
('2015_09_13_110004_create_types_table', 4, NULL),
('2015_09_13_110906_add_type_id_to_users', 5, NULL),
('2015_09_13_111634_type_id_foregign_key_to_users', 6, NULL),
('2015_09_13_112849_add_user_id_to_photos_table_foreign_key', 7, NULL),
('2015_09_14_102825_add_user_type_collumn_to_users', 8, NULL),
('2015_09_14_112353_change_user_type_to_users_type', 9, NULL),
('2015_09_15_045419_add_utype_to_users', 10, NULL),
('2015_09_16_101646_create_articles_table', 11, NULL),
('2015_09_17_204114_create_countries_table', 12, NULL),
('2016_01_20_074201_add_polymorph_to_medias_table', 41, NULL),
('2016_01_20_113443_create_photos_table', 42, NULL),
('2016_01_21_104136_create_leaves_tables', 43, NULL),
('2016_01_21_110133_create_models_leave_leave_applications_table', 44, NULL),
('2016_01_23_071904_add_leave_details_and_max_days', 45, NULL),
('2016_01_23_072314_add_leave_details_and_max_days', 46, NULL),
('2016_01_23_090556_add_foregin_keys_leav_applications', 47, NULL),
('2016_01_23_091300_create_statuses_table', 48, NULL),
('2016_01_23_095851_create_leave_application_translations_table', 49, NULL),
('2016_01_23_111945_add_applied_on_to_leave_applications', 50, NULL),
('2016_01_24_045117_set_default_value_to_leave_applications', 51, NULL),
('2016_01_24_055451_change_status_to_status_id_leave_applications', 52, NULL),
('2016_01_24_055954_change_status_to_status_id_leave_applications', 53, NULL),
('2016_01_24_060502_ljjllj', 54, NULL),
('2016_01_24_091714_create_holydays_table', 55, NULL),
('2016_01_24_093813_create_holy_day_types_table', 56, NULL),
('2016_01_24_095732_add_status_positon_holy_day_types', 57, NULL),
('2016_01_24_100226_add_status_position_holydays', 58, NULL),
('2016_01_25_043900_rename_date_in_holydays', 59, NULL),
('2016_01_25_044332_add_to_in_holydays', 60, NULL),
('2016_01_25_071926_change_from_to_date_holydays', 61, NULL),
('2016_01_27_044212_change_holiday_foreign_key', 62, NULL),
('2016_01_27_103106_create_notice_boards_table', 63, NULL),
('2016_01_31_055951_create_shifts_table', 64, NULL),
('2016_01_31_062226_change_status_type_in_shifts', 65, NULL),
('2016_01_31_071159_drop_name_from_shifts', 66, NULL),
('2016_01_31_071711_create_shift_translations_table', 67, NULL),
('2016_02_01_090809_add_shift_id_to_shift_translations', 68, NULL),
('2016_02_01_102232_create_department_shifts_table', 69, NULL),
('2016_02_02_041905_add_shift_id_to_users', 70, NULL),
('2016_02_02_091556_create_punches_table', 71, NULL),
('2016_02_03_075337_add_punch_flag_to_punches', 72, NULL),
('2016_02_07_051953_create_shifts', 73, NULL),
('2016_02_07_053855_change_status_to_status_id_int', 74, NULL),
('2016_02_10_043613_change_and_add_collumn_name_punches', 75, NULL),
('2016_02_10_044656_change_punch_out_datetime_position_punches', 76, NULL),
('2016_02_10_051636_punch_out_date_time', 77, NULL),
('2016_02_10_051826_punch_out_dat_time', 78, NULL),
('2016_02_13_043857_add_overtime_to_punches', 79, NULL),
('2016_02_13_102300_add_working_hours_to_punches', 80, NULL),
('2016_02_14_094813_add_punch_date_time', 81, NULL),
('2016_02_20_053644_create_salary_types_table', 82, NULL),
('2016_02_20_100927_create_salary_rules_table', 83, NULL),
('2016_02_23_045539_create_overtime_rules_table', 84, NULL),
('2016_02_23_050838_add_status_overtimerules', 85, NULL),
('2016_02_23_052252_create_salary_cuts_table', 86, NULL),
('2016_02_23_052303_create_bonuses_table', 86, NULL),
('2016_02_24_054731_create_user_salaries_table', 87, NULL),
('2016_02_24_063123_add_basic_to_user_salaries', 88, NULL),
('2016_02_27_084038_modify_bonus_rules', 89, NULL),
('2016_02_27_092643_create_bonus_attributes_table', 90, NULL),
('2016_03_28_055450_add_employee_id_to_users', 91, NULL),
('2016_03_28_062815_add_employee_id_to_punches', 92, NULL),
('2016_04_04_051213_add_shift_id_to_employee_histories', 93, NULL),
('2016_04_04_052705_add_shift_id_to_employee_histories', 94, NULL),
('2016_04_05_054348_add_month_year_day_to_employee_histories', 95, NULL),
('2016_04_06_051639_add_timestamps_to_user_salaries', 96, NULL),
('2016_04_09_094121_add_created_at_updated_at_to_bank_accounts', 97, NULL),
('2016_04_23_070022_add_fields_to_users', 98, NULL),
('2016_04_23_080849_create_student_classes_table', 99, NULL),
('2016_04_23_081759_create_sections_table', 100, NULL),
('2016_04_23_082251_change_studentclass_nullable', 101, NULL),
('2016_04_23_082402_change_sections_nullable', 102, NULL),
('2016_04_23_084759_create_student_histories_table', 103, NULL),
('2016_04_25_062931_add_more_fields_users', 104, NULL),
('2016_04_25_070712_rename_field_in_sections', 105, NULL),
('2016_04_27_043314_create_result_systems_table', 106, NULL),
('2016_04_28_090914_create_meta_settings_table', 107, NULL),
('2016_04_30_094312_create_subjects_table', 108, NULL),
('2016_05_02_045315_add_more_field_subjects', 109, NULL),
('2016_05_02_055208_create_buildings_table', 109, NULL),
('2016_05_02_055717_create_floors_table', 109, NULL),
('2016_05_02_055942_create_rooms_table', 109, NULL),
('2016_05_02_084103_create_student_attendances_table', 109, NULL),
('2016_05_03_063943_create_routines_table', 110, NULL),
('2016_05_03_082053_create_examinations_table', 110, NULL),
('2016_05_03_083604_create_examination_schedules_table', 110, NULL),
('2016_05_07_043822_create_countries_table', 111, NULL),
('2016_05_07_045031_create_country_translations_table', 111, NULL),
('2016_05_07_082853_create_divisions_table', 112, NULL),
('2016_05_07_084154_create_division_translations_table', 112, NULL),
('2016_05_07_105354_create_districts_table', 112, NULL),
('2016_05_07_110114_create_district_translations_table', 112, NULL),
('2016_05_08_064334_add_soft_delete_option_in_district_table', 113, NULL),
('2016_05_08_085425_add_soft_delete_option_in_division_table', 113, NULL),
('2016_05_08_090518_add_soft_delete_option_in_countries_table', 113, NULL),
('2016_05_08_092224_add_soft_delete_option_in_users_table', 113, NULL),
('2016_05_09_123350_add_soft_delete_option_in_buildings_table', 114, NULL),
('2016_05_09_124045_add_soft_delete_option_in_floors_table', 114, NULL),
('2016_05_09_124511_add_soft_delete_option_in_rooms_table', 114, NULL),
('2016_05_09_125123_add_soft_delete_option_in_routines_table', 114, NULL),
('2016_05_09_125613_add_soft_delete_option_in_examinations_table', 114, NULL),
('2016_05_09_130048_add_soft_delete_option_in_examination_schedules_table', 114, NULL),
('2016_05_09_144304_add_soft_delete_option_in_student_classes_table', 114, NULL),
('2016_05_09_145012_add_soft_delete_option_in_sections_table', 114, NULL),
('2016_05_10_094424_create_marks_types_table', 115, NULL),
('2016_05_10_124729_add_deleted_at_to_marks_types', 116, NULL),
('2016_05_10_150031_create_marks_table', 117, NULL),
('2016_05_10_153734_add_sof_delete_to_marks', 118, NULL),
('2016_05_10_170632_create_marks_table', 119, NULL),
('2016_05_10_171237_add_subject_total_subjects', 119, NULL),
('2016_05_10_171944_change_class_id_to_student_class_id', 120, NULL),
('2016_05_11_114202_add_roll_marks', 121, NULL),
('2016_05_15_155101_add_site_id', 122, NULL),
('2016_05_16_125605_create_notices_table', 123, NULL),
('2016_05_16_132543_create_notice_translations_table', 124, NULL),
('2016_05_17_135030_site_id_default_1', 125, NULL),
('2016_05_18_112128_site_id_default', 126, 1),
('2016_05_18_112745_jkjkkj', 127, 1),
('2016_05_18_114540_siteIdSubjectDefault', 128, 1),
('2016_05_18_114701_siteIdtDefault', 129, 1),
('2016_05_18_123943_create_account_types_table', 130, 1),
('2016_05_18_125203_create_account_type_translations_table', 130, 1),
('2016_05_18_160928_create_amount_types_table', 130, 1),
('2016_05_18_162302_create_amount_type_translations_table', 130, 1),
('2016_05_18_172221_create_amount_categories_table', 130, 1),
('2016_05_18_174103_create_amount_category_translations_table', 130, 1),
('2016_05_22_120552_create_accounts_table', 131, 1),
('2016_05_22_122442_create_account_translations_table', 131, 1),
('2016_05_24_131706_create_menus_table', 132, 1),
('2016_05_25_155451_create_events_table', 133, 1),
('2016_05_25_160739_create_event_translations_table', 133, 1),
('2016_05_26_103310_add_soft_delete_menus', 134, 1),
('2016_05_26_104130_add_soft_delete_menus', 135, 1),
('2016_05_26_105454_create_group_accesses_table', 136, 1),
('2016_05_26_125918_add_site_id_group_access', 137, 1),
('2016_05_29_114400_add_common_access', 138, 1),
('2016_05_31_123459_create_site_infos_table', 139, 1),
('2016_06_01_130900_create_sessions_table', 140, 1),
('2016_06_04_163632_book_categories_table', 141, 1),
('2016_06_04_164245_book_category_translations_table', 141, 1),
('2016_06_05_112535_create_authors_table', 142, 1),
('2016_06_05_113318_create_author_translations_table', 142, 1),
('2016_06_05_154944_create_racks_table', 142, 1),
('2016_06_06_105206_create_books_table', 143, 1),
('2016_06_06_111630_create_book_translations', 143, 1),
('2016_06_07_122401_add_more_fields_to_site_groups', 144, 1),
('2016_06_06_174526_create_trainings_table', 145, 1),
('2016_06_07_103524_create_training_translations', 145, 1),
('2016_06_07_141807_create_professional_qualifications_table', 145, 1),
('2016_06_07_142612_create_professional_qualification_translations_table', 145, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1',
  `from_send` varchar(150) NOT NULL,
  `to_send` varchar(300) NOT NULL,
  `type` varchar(150) NOT NULL,
  `is_read` varchar(50) NOT NULL,
  `access_lists` longtext,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_date`, `status`, `site_id`, `from_send`, `to_send`, `type`, `is_read`, `access_lists`, `deleted_at`) VALUES
(1, '2016-05-16', 'Active', 0, '120', 'Student', 'Notice', '0', NULL, '2016-05-16 11:48:42'),
(2, '2016-05-17', 'Active', 0, '120', 'Teacher', 'notice', '0', NULL, NULL),
(3, '2016-05-11', 'Active', 0, '120', 'Student', 'Notice', '0', NULL, NULL),
(4, '2016-05-25', 'Active', 1, '120', 'Teacher', 'Notice', '0', NULL, NULL),
(5, '2016-05-28', 'Inactive', 1, '120', 'All', 'notice', '0', NULL, NULL),
(6, '2016-05-16', 'Active', 1, '120', 'Manager', 'notice', '0', NULL, NULL),
(7, '2016-05-11', 'Active', 1, '120', 'All', 'notice', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notice_translations`
--

CREATE TABLE `notice_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice_id` int(11) DEFAULT NULL,
  `notice_name` varchar(255) DEFAULT NULL,
  `notice_description` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice_translations`
--

INSERT INTO `notice_translations` (`id`, `notice_id`, `notice_name`, `notice_description`, `locale`, `site_id`) VALUES
(1, 1, 'Test notice', 'ddcvdv', 'en', NULL),
(2, 2, 'urgant', 'ddvfv frgr', 'en', NULL),
(3, 2, 'jhgg', 'kjhhggg', 'bn', NULL),
(4, 3, 'Test notice', 'sdsd', 'en', 1),
(5, 4, 'fggf', 'fgfg', 'en', 1),
(6, 5, 'qwqwq  edit', 'fdfd edited', 'en', 1),
(7, 6, 'df', 'asda', 'en', 1),
(8, 7, 'fvdgfdf', 'dfgd', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtime_rules`
--

CREATE TABLE `overtime_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `overtime_rules`
--

INSERT INTO `overtime_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status_id`, `position`, `site_id`) VALUES
(4, 'overtime 1', '{"total":"total"}', 25, 'percent', 1, NULL, NULL),
(5, 'overtime 2', '[]', 5000, 'fixed', 1, NULL, NULL),
(6, 'overtime 3', '{"basic":"basic","home_rent":"2","medical_allowance":"3"}', 25, 'percent', 1, NULL, NULL),
(7, 'one  level', '{"basic":"basic"}', 200, 'percent', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passwords`
--

CREATE TABLE `passwords` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passwords`
--

INSERT INTO `passwords` (`id`, `password`, `status`, `user_id`, `is_default`, `site_id`) VALUES
(111, '$2y$10$w.czDutnybbXFgpCXUB7ieEitXgAqN0qMOcp70Sb.Xr2KgC16kEPW', 0, 120, 0, NULL),
(112, '$2y$10$7Uk6cSf7xyiQFm5fIujcMuix0C6avAkxccO6zbyu4xwFl9BiLNNoW', 0, 120, 0, NULL),
(116, '$2y$10$3kz4tdhaT0w7r/ZnZZUu0eGlG55/9fOSaPd5TXI2wS3ct8ylPSjPm', 0, 120, 0, NULL),
(117, '$2y$10$1LdXgo1HsFhdoTWgzfMfYettz0TWBTXSXjdNlQA/6Gov8d2iSBsXy', 0, 120, 0, NULL),
(118, '$2y$10$fFHNMTPY5cudxs75pztkeOeTQ.IdkUREsOpoqxtoeksc1J2ZlNC/e', 0, 120, 0, NULL),
(119, '$2y$10$X6A5.iPnogLEmt24gK5a2OWwHvNQeBeS1wOohxP3bDsSaYrtTKCBu', 0, 120, 0, NULL),
(120, '$2y$10$sLhLyzNYzYEIKDS5cMxivuF.kyOzZ469/LKlyRqYjophY3oNHF8EC', 0, 120, 0, NULL),
(121, '$2y$10$6H4FfW0jrHyY72MCVE9dg.31Pa5uCOatEQr9CSe2d.WtoY.bClMuK', 0, 120, 0, NULL),
(122, '$2y$10$Y6kQwu8ZfxzuBc.T3yaQH.CrtjdStEMaR1JXmBk7SGOrcx4/LZlgS', 0, 120, 0, NULL),
(123, '$2y$10$tmlqSun8RLI7MCYbUdwmXuAYXwXX3jA14RbltNL3PZ1Tk9l49DA/y', 0, 120, 0, NULL),
(124, '$2y$10$HVib762lX6.icwyhXULkDu0arqw5GkBIBcims1qN8/ueamfZm7rpG', 0, 124, 0, NULL),
(125, '$2y$10$nKct.VUYIrTcP0LJfU6SqOU52j0LeKEQo7/3PtVnJBRf4jbfKd0wO', 0, 120, 0, NULL),
(126, '$2y$10$fPfZw1BoNpT54ifguxZkmOp63mEgsREc.Gfixn5WbagF.enK.3WTW', 0, 120, 0, NULL),
(127, '$2y$10$YhucaRcbO8HRE6yrFHBoLOxK1mHKKWF4tMnFImyXjhvTUNZD.UzGa', 0, 120, 0, NULL),
(128, '$2y$10$rL40Wt/8mmb6LyB3CI.EyOSRwyZWvHh5/aVWZbcZ8UNuXdnC2MDVK', 0, 120, 0, NULL),
(129, '$2y$10$q.hllN77hArRPBJtmml40uH./kV6XpCSvNf.e36.6.1gReifITnie', 0, 120, 0, NULL),
(131, '$2y$10$jUUqq8.yrSMEiYPqJC7Afe3cFOqwovnE66TBcRfm89M2uN.T7UcSy', 0, 124, 0, NULL),
(132, '$2y$10$dgC4daA/TMXg60zMtKaruuPil2gG.MbCUlMjw39R1vX0kETD6khZC', 0, 124, 0, NULL),
(137, '$2y$10$19QW6/oFuV4UjgjQVY4QV.yU93GTdZJ4/kRmJim41H9tUYoSy8ngO', 0, 120, 0, NULL),
(138, '$2y$10$q9h5epByrsjgA8IGvx4kYebL6YjYSDrtXC9LY1Cbc6iA5bAHckz66', 0, 128, 0, NULL),
(140, '$2y$10$eTCQkfTNI2Z/EhGdMVMK9OiS3iVPsBOUOKIuGQUnUmn8AjW3P4Lca', 0, 124, 0, NULL),
(141, '$2y$10$Dkne.dSvBokCdbNX8tgl4O44arraASlgXDHN469ub3tNWu80Cxu2y', 0, 120, 0, NULL),
(142, '$2y$10$UvLWkdo.9fEWnkvQgAUnleyjjF2GZh40MMa3xbSc4HFrzu5afYR.C', 0, 120, 0, NULL),
(143, '$2y$10$iMLHPG6vyw/hlPWps.979u.y6BFKvUQWig/5nLg5wrO0karDmEb.G', 0, 120, 0, NULL),
(144, '$2y$10$vZG3Zo.xp0Efhlp/cIAwyOH.J3G9X4zkIvXI6ebLzHCOg.YJWeChi', 0, 128, 0, NULL),
(148, '$2y$10$IIml7.4WMnLGjNXJCAGueucHDOIBha8ivwjm6vbbGA..ezEmDiQAK', 0, 132, 0, NULL),
(149, '$2y$10$DPcKANayp9yscMDa3u0XwOctHB5ncNYE9YwGZKS08Jvm2aNt0Ce2y', 0, 133, 0, NULL),
(150, '$2y$10$bgXVIaxN9cVYnUFYDr6rfOKhqVCdOlMZ.DxsAMB3y8sYqYn/MBVCu', 0, 134, 0, NULL),
(151, '$2y$10$BKWGE7/QlEUARaCYiEYSWOfZmu5AUX/G2PsYTfA6SqSCO35BS8V7q', 0, 135, 0, NULL),
(152, '$2y$10$L5MzlYoD0hFKJohErDK..OVgIwWANawopsTp8mHlhwjtc8bquBsRi', 0, 136, 0, NULL),
(153, '$2y$10$Jt2fwAWiDAowV4K6Hlb61eVGgT0ktfJAL8VJquKLlzIyWAxWzd8e2', 0, 137, 0, NULL),
(154, '$2y$10$Adfs4uzZO9s.OenfBCLdq.p.2pSiSzjeu4S7l0Gv2J9g/wf/oqQ.C', 0, 138, 0, NULL),
(155, '$2y$10$VBrXO76qz7YhmoUcHknNrOo3GzalBbmKXAe8kJoM85wuicnGs3Rvu', 0, 139, 0, NULL),
(156, '$2y$10$LhieZOpRbA5o8X5ZEGYQ4efW6EH.9ImRNE76UGpswwQ2asT3OMXOq', 0, 140, 0, NULL),
(157, '$2y$10$6/TDeOcZxlUlZlDmik26HOSrD939K0TvWRQuqrsoPD6ciobZ4sVr6', 0, 141, 0, NULL),
(158, '$2y$10$chhjMNNslrheV..thRj2guCNvQnriqiPcSpv0GxfpJX3wQIRN1Gnm', 0, 141, 0, NULL),
(159, '$2y$10$2rxHqUo3GkrltlzlNQJnOOiGLnIJv0bm9MLs8rLKdOdc83BbFboEG', 0, 141, 0, NULL),
(160, '$2y$10$7YIqqDOrbpAHEXoGrwBMl.6GvJNM672HqtNQ0Vn/FXedmmJz2.opq', 0, 141, 0, NULL),
(161, '$2y$10$AYR.URWTJYlbo.eyTmm.rOQmCyLBQYq0PYAI91ueYtcOZdoF9dXyK', 0, 124, 0, NULL),
(162, '$2y$10$7YeYCIwxk7FcudkN.KDIGetVsFdxlLEoompVTU.aWPrTvhUNcxboa', 0, 124, 0, NULL),
(163, '$2y$10$OTxuYgQaNP6NvaQz4pGwaOBJKCfndUlDWULClEpMriRArR9Qf.FyK', 0, 120, 0, NULL),
(164, '$2y$10$7/KFhha0VxaMU8ltTpw8PuRMlmQl2bt6WQ3qXB1yVj54kDfwBEwqK', 0, 120, 0, NULL),
(165, '$2y$10$c2.SS.hOohSAxMlyRqEpBut.Xj80DFVhznn44M5sDXrtEk/uFxuCa', 0, 120, 0, NULL),
(166, '$2y$10$ATtiNRH9DV3O.l5hA63moO8yMFwRps2ee.m13Or3xxh.zHpHddaGG', 0, 120, 0, NULL),
(167, '$2y$10$9LFXUZndK/HZE6AL4TCdReaSvlSKprGrKb3wXkmj9YY9mBQIA9mvW', 0, 120, 0, NULL),
(168, '$2y$10$ja0UWYB7NnHWQs.2m2AAkeWAI57bKfqCy2XMyKq4vyF/eAh7yBosW', 0, 120, 0, NULL),
(169, '$2y$10$jb0u7h/WWnfzrmPUl/zf3.x/melScq4ro5nORUY/wHEN7WkgaccqW', 0, 120, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `status`, `position`, `site_id`) VALUES
(1, 'Create Things', 'whoever assigned this permission can create anything in the system', '0', 0, 1),
(2, 'Edit', 'whoever assigned this permission can edit anything in the system', '0', 0, 1),
(3, 'Hello', 'Hello World', '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`, `site_id`) VALUES
(2, 1, 1),
(2, 3, 1),
(3, 1, 1),
(3, 2, 1),
(4, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `imageable_id`, `imageable_type`, `name`, `path`, `extension`, `site_id`) VALUES
(1, 120, 120, 'Erp\\Models\\User\\User', '1453291583SFf2016-01-09-195845.jpg', NULL, 'jpg', NULL),
(2, 120, 120, 'Erp\\Models\\User\\User', '1453352490Hk12016-01-09-195845.jpg', NULL, '', NULL),
(3, 122, 122, 'Erp\\Models\\User\\User', '1453354270gnI2016-01-09-195845.jpg', NULL, '', NULL),
(4, 123, 123, 'Erp\\Models\\User\\User', '1453357797aWn2016-01-09-195845.jpg', NULL, '', NULL),
(5, 120, 120, 'Erp\\Models\\User\\User', '1453358953q8M2016-01-09-195845.jpg', NULL, '', NULL),
(6, 124, 124, 'Erp\\Models\\User\\User', '1453359264oDW2016-01-09-195845.jpg', NULL, '', NULL),
(7, 125, 125, 'Erp\\Models\\User\\User', '1453360599lqb2016-01-09-195845.jpg', NULL, '', NULL),
(8, 124, 124, 'Erp\\Models\\User\\User', '1453360985VaD2016-01-09-195845.jpg', NULL, '', NULL),
(9, 126, 126, 'Erp\\Models\\User\\User', '1453370411lXy2016-01-09-195845.jpg', NULL, '', NULL),
(10, 126, 126, 'Erp\\Models\\User\\User', '1453370772wJa2016-01-09-195845.jpg', NULL, '', NULL),
(11, 127, 127, 'Erp\\Models\\User\\User', '1453714476BE52016-01-09-195845.jpg', NULL, '', NULL),
(12, 120, 120, 'Erp\\Models\\User\\User', '1453888494hDG2016-01-09-195845.jpg', NULL, '', NULL),
(13, 128, 128, 'Erp\\Models\\User\\User', '1453894001vx62016-01-09-195845.jpg', NULL, '', NULL),
(14, 129, 129, 'Erp\\Models\\User\\User', '14543895801Fp2016-01-09-195845.jpg', NULL, '', NULL),
(15, 124, 124, 'Erp\\Models\\User\\User', '1454395442KPt2016-01-09-195845.jpg', NULL, '', NULL),
(16, 120, 120, 'Erp\\Models\\User\\User', '145440801153H2016-01-09-195845.jpg', NULL, '', NULL),
(17, 120, 120, 'Erp\\Models\\User\\User', '1454836303ttZ2016-01-09-195845.jpg', NULL, '', NULL),
(18, 120, 120, 'Erp\\Models\\User\\User', '1455012726XVp2016-01-09-195845.jpg', NULL, '', NULL),
(19, 128, 128, 'Erp\\Models\\User\\User', '1455348360YWW2016-01-09-195845.jpg', NULL, '', NULL),
(20, 130, 130, 'Erp\\Models\\User\\User', '14553609881ji2016-01-09-195845.jpg', NULL, '', NULL),
(21, 131, 131, 'Erp\\Models\\User\\User', '1456306315aLT2016-01-09-195845.jpg', NULL, '', NULL),
(22, 131, 131, 'Erp\\Models\\User\\User', '1456309612Vdk2016-01-09-195845.jpg', NULL, '', NULL),
(23, 132, 132, 'Erp\\Models\\User\\User', '14575012467Xv2016-01-09-195845.jpg', NULL, '', NULL),
(24, 135, 135, 'Erp\\Models\\User\\User', '14596693990Im2016-01-09-195845.jpg', NULL, '', NULL),
(25, 141, 141, 'Erp\\Models\\User\\User', '1459671065Wvp2016-01-09-195845.jpg', NULL, '', NULL),
(26, 141, 141, 'Erp\\Models\\User\\User', '1459743056mDf2016-01-09-195845.jpg', NULL, '', NULL),
(27, 141, 141, 'Erp\\Models\\User\\User', '1459743481RQT2016-01-09-195845.jpg', NULL, '', NULL),
(28, 141, 141, 'Erp\\Models\\User\\User', '1459743743Nq42016-01-09-195845.jpg', NULL, '', NULL),
(29, 124, 124, 'Erp\\Models\\User\\User', '1459748909vMy2016-01-09-195845.jpg', NULL, '', NULL),
(30, 124, 124, 'Erp\\Models\\User\\User', '1459749302aQF2016-01-09-195845.jpg', NULL, '', NULL),
(31, 125, 125, 'Erp\\Models\\User\\User', '1460186989fed2016-01-09-195845.jpg', NULL, '', NULL),
(32, 126, 126, 'Erp\\Models\\User\\User', '1460187894LGZ2016-01-09-195845.jpg', NULL, '', NULL),
(33, 127, 127, 'Erp\\Models\\User\\User', '1460199087a6V2016-01-09-195845.jpg', NULL, '', NULL),
(34, 128, 128, 'Erp\\Models\\User\\User', '1460264476LG22016-01-09-195845.jpg', NULL, '', NULL),
(35, 143, 143, 'Erp\\Models\\User\\User', '1461497493iDC2016-01-09-195845.jpg', NULL, '', NULL),
(36, 144, 144, 'Erp\\Models\\User\\User', '1461567330Qz62016-01-09-195845.jpg', NULL, '', NULL),
(37, 145, 145, 'Erp\\Models\\User\\User', '1461580394z6s2016-01-09-195845.jpg', NULL, '', NULL),
(38, 146, 146, 'Erp\\Models\\User\\User', '1461580631tAa2016-01-09-195845.jpg', NULL, '', NULL),
(39, 147, 147, 'Erp\\Models\\User\\User', '1462084961GRu2016-01-09-195845.jpg', NULL, '', NULL),
(40, 148, 148, 'Erp\\Models\\User\\User', '1462085060BJ72016-01-09-195845.jpg', NULL, '', NULL),
(41, 149, 149, 'Erp\\Models\\User\\User', '1462085143Qoc2016-01-09-195845.jpg', NULL, '', NULL),
(42, 150, 150, 'Erp\\Models\\User\\User', '1462085308V662016-01-09-195845.jpg', NULL, '', NULL),
(43, 151, 151, 'Erp\\Models\\User\\User', '1462085479rdL2016-01-09-195845.jpg', NULL, '', NULL),
(44, 152, 152, 'Erp\\Models\\User\\User', '14620856222Yf2016-01-09-195845.jpg', NULL, '', NULL),
(45, 153, 153, 'Erp\\Models\\User\\User', '14620857965Os2016-01-09-195845.jpg', NULL, '', NULL),
(46, 154, 154, 'Erp\\Models\\User\\User', '1462085940uoK2016-01-09-195845.jpg', NULL, '', NULL),
(47, 155, 155, 'Erp\\Models\\User\\User', '1462086103D2v2016-01-09-195845.jpg', NULL, '', NULL),
(48, 156, 156, 'Erp\\Models\\User\\User', '14620862538772016-01-09-195845.jpg', NULL, '', NULL),
(49, 157, 157, 'Erp\\Models\\User\\User', '1462172958bIz2016-01-09-195845.jpg', NULL, '', NULL),
(50, 158, 158, 'Erp\\Models\\User\\User', '1463051501Yye2016-01-09-195845.jpg', NULL, '', NULL),
(51, 159, 159, 'Erp\\Models\\User\\User', '1463213178Qn5professional-passport-photos-cardiff-233x300.jpg', NULL, '', NULL),
(52, 160, 160, 'Erp\\Models\\User\\User', '1463213331QEuprofessional-passport-photos-cardiff-233x300.jpg', NULL, '', NULL),
(53, 161, 161, 'Erp\\Models\\User\\User', '1463291466ERjprofessional-passport-photos-cardiff-233x300.jpg', NULL, '', NULL),
(54, 162, 162, 'Erp\\Models\\User\\User', '1463291754Tfvprofessional-passport-photos-cardiff-233x300.jpg', NULL, '', NULL),
(55, 164, 164, 'Erp\\Models\\User\\User', '1463292086GrB2016-01-09-195845.jpg', NULL, '', NULL),
(56, 165, 165, 'Erp\\Models\\User\\User', '1463292789XGz2016-01-09-195845.jpg', NULL, '', NULL),
(57, 166, 166, 'Erp\\Models\\User\\User', '1463297362db9professional-passport-photos-cardiff-233x300.jpg', NULL, '', NULL),
(58, 167, 167, 'Erp\\Models\\User\\User', '1463565029hg4professional-passport-photos-cardiff-233x300.jpg', NULL, '', 1),
(59, 6, 6, 'Erp\\Models\\Site\\SiteInfo', '1465212330BBk2016-01-09-195845.jpg', NULL, '', 1),
(60, 7, 7, 'Erp\\Models\\Site\\SiteInfo', '1465212716bTE2016-01-09-195845.jpg', NULL, '', 1),
(61, 2, 2, 'Erp\\Models\\Site\\SiteInfo', '14652753017Kb2016-01-09-195845.jpg', NULL, '', 1),
(62, 4, 4, 'Erp\\Models\\Site\\SiteInfo', '1465277631V7l2016-01-09-195845.jpg', NULL, '', 1),
(63, 8, 8, 'Erp\\Models\\Site\\SiteInfo', '14652777199xZ2016-01-09-195845.jpg', NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `professional_qualifications`
--

CREATE TABLE `professional_qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `professional_qualification_translations`
--

CREATE TABLE `professional_qualification_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `professional_qualification_id` int(11) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `institute_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `punches`
--

CREATE TABLE `punches` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `punch_in` time DEFAULT NULL,
  `punch_out` time DEFAULT NULL,
  `punch_date` date DEFAULT NULL,
  `punch_date_time` datetime DEFAULT NULL,
  `punch_in_date_time` datetime DEFAULT NULL,
  `punch_out_date_time` datetime DEFAULT NULL,
  `working_hours` double(8,2) NOT NULL DEFAULT '0.00',
  `is_overtime` int(11) NOT NULL DEFAULT '0',
  `punch_year` int(11) DEFAULT NULL,
  `punch_month` int(11) DEFAULT NULL,
  `punch_day` int(11) DEFAULT NULL,
  `punch_flag` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `punches`
--

INSERT INTO `punches` (`id`, `user_id`, `employee_id`, `punch_in`, `punch_out`, `punch_date`, `punch_date_time`, `punch_in_date_time`, `punch_out_date_time`, `working_hours`, `is_overtime`, `punch_year`, `punch_month`, `punch_day`, `punch_flag`, `site_id`) VALUES
(122, 120, '0667', '04:56:02', NULL, '2016-02-18', NULL, '2016-02-18 04:56:02', '2016-02-18 04:56:15', 0.00, 0, 2016, 2, 19, 0, NULL),
(125, 120, '0667', '11:35:25', NULL, '2016-02-19', NULL, '2016-02-19 11:35:25', '2016-02-19 11:35:30', 0.00, 0, 2016, 2, 20, 0, NULL),
(126, 120, '0667', '04:33:10', NULL, '2016-03-20', NULL, '0000-00-00 00:00:00', '2016-03-20 06:57:05', 0.00, 1, 2016, 3, 20, 0, NULL),
(127, 120, '0667', '06:48:54', NULL, '2016-03-20', NULL, '2016-03-20 06:58:59', '2016-03-20 06:59:05', 0.00, 0, 2016, 3, 20, 0, NULL),
(128, 120, '0667', '06:56:58', NULL, '2016-03-20', NULL, '2016-03-20 06:59:30', '2016-03-20 06:59:55', 0.00, 0, 2016, 3, 20, 0, NULL),
(129, 128, '0627', '07:00:46', NULL, '2016-03-20', NULL, '2016-03-20 07:00:46', '2016-03-20 07:00:55', 0.00, 0, 2016, 3, 20, 0, NULL),
(130, 128, '0627', '09:39:21', NULL, '2016-03-20', NULL, '2016-03-20 09:39:21', '2016-03-20 09:39:24', 0.00, 0, 2016, 3, 20, 0, NULL),
(131, 128, '0627', '09:39:28', NULL, '2016-03-20', NULL, '2016-03-20 09:39:28', '2016-03-20 12:00:00', 0.00, 0, 2016, 3, 20, 0, NULL),
(132, 120, '0667', '06:45:42', NULL, '2016-03-21', NULL, '2016-03-21 05:45:42', '2016-03-21 06:45:47', 0.00, 0, 2016, 3, 21, 0, NULL),
(133, 120, '0667', '06:46:40', NULL, '2016-03-21', NULL, '2016-03-21 06:46:40', '2016-03-21 06:46:49', 0.00, 0, 2016, 3, 21, 0, NULL),
(135, 132, '1217', '07:07:43', NULL, '2016-03-21', NULL, '2016-03-21 07:07:43', '2016-03-21 07:07:48', 0.00, 0, 2016, 3, 21, 0, NULL),
(136, 124, '0635', '07:08:43', NULL, '2016-03-21', NULL, '2016-03-21 07:08:43', '2016-03-21 07:08:46', 0.00, 0, 2016, 3, 21, 0, NULL),
(137, 120, '0667', '08:36:06', NULL, '2016-03-21', NULL, '2016-03-21 08:36:06', '2016-03-21 08:36:36', 0.01, 0, 2016, 3, 21, 0, NULL),
(138, 120, '0667', '08:37:14', NULL, '2016-03-21', NULL, '2016-03-21 08:37:14', '2016-03-21 08:37:17', 0.00, 0, 2016, 3, 21, 0, NULL),
(139, 120, '0667', '08:42:19', NULL, '2016-03-21', NULL, '2016-03-21 08:42:19', '2016-03-21 08:42:23', 0.00, 0, 2016, 3, 21, 0, NULL),
(140, 120, '0667', '08:44:26', NULL, '2016-03-21', NULL, '2016-03-21 08:44:26', '2016-03-21 08:44:33', 0.00, 0, 2016, 3, 21, 0, NULL),
(141, 128, '0627', '08:45:51', NULL, '2016-03-21', NULL, '2016-03-21 08:45:51', '2016-03-21 08:45:54', 0.00, 0, 2016, 3, 21, 0, NULL),
(142, 128, '0627', '08:52:12', NULL, '2016-03-21', NULL, '2016-03-21 08:52:12', '2016-03-21 08:52:15', 0.00, 0, 2016, 3, 21, 0, NULL),
(143, 128, '0627', '08:52:46', NULL, '2016-03-21', NULL, '2016-03-21 08:52:46', '2016-03-21 08:52:49', 0.00, 0, 2016, 3, 21, 0, NULL),
(144, 124, '0635', '08:54:13', NULL, '2016-03-21', NULL, '2016-03-21 08:54:13', '2016-03-21 08:54:16', 0.00, 0, 2016, 3, 21, 0, NULL),
(145, 132, '1217', '08:56:11', NULL, '2016-03-21', NULL, '2016-03-21 08:56:11', '2016-03-21 08:56:14', 0.00, 0, 2016, 3, 21, 0, NULL),
(146, 132, '1217', '09:19:31', NULL, '2016-03-21', NULL, '2016-03-21 09:19:31', '2016-03-21 09:19:35', 0.00, 0, 2016, 3, 21, 0, NULL),
(147, 120, '0667', '11:26:39', NULL, '2016-03-21', NULL, '2016-03-21 11:26:39', '2016-03-21 11:26:44', 0.00, 0, 2016, 3, 21, 0, NULL),
(148, 120, '0667', '10:42:12', NULL, '2016-03-22', NULL, '2016-03-22 10:42:12', '2016-03-22 10:42:16', 0.00, 1, 2016, 3, 22, 0, NULL),
(149, 128, '0627', '10:44:59', NULL, '2016-03-22', NULL, '2016-03-22 10:44:59', '2016-03-22 10:45:03', 0.00, 1, 2016, 3, 22, 0, NULL),
(150, 120, '0667', '15:17:17', NULL, '2016-05-14', NULL, '2016-05-14 15:17:17', '2016-05-14 15:17:28', 0.00, 0, 2016, 5, 14, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `racks`
--

CREATE TABLE `racks` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `rack_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `status`, `site_id`) VALUES
(1, 'Est', 'Active', NULL),
(2, 'Islam', 'Active', NULL),
(3, 'Budhism', 'Active', NULL),
(4, 'Hvjvkk', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result_settings`
--

CREATE TABLE `result_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_settings`
--

INSERT INTO `result_settings` (`id`, `settings`, `site_id`) VALUES
(49, '{"grade_class":"A+","gpa":"5.0","sub_min":"80","sub_max":"100","total_min":"5.0","total_max":"5.0"}', 1),
(50, '{"grade_class":"A","gpa":"4.0","sub_min":"70","sub_max":"79","total_min":"4.0","total_max":"4.99"}', 1),
(51, '{"grade_class":"A-","gpa":"3.5","sub_min":"60","sub_max":"69","total_min":"3.5","total_max":"3.99"}', 1),
(52, '{"grade_class":"B","gpa":"3.0","sub_min":"50","sub_max":"59","total_min":"3.0","total_max":"3.49"}', 1),
(53, '{"grade_class":"C","gpa":"2.0","sub_min":"40","sub_max":"49","total_min":"2.0","total_max":"2.99"}', 1),
(54, '{"grade_class":"D","gpa":"1.0","sub_min":"33","sub_max":"39","total_min":"1.00","total_max":"1.99"}', 1),
(56, '{"grade_class":"First Division","gpa":"60","sub_min":"60","sub_max":"100","total_min":"180","total_max":"300"}', 1),
(57, '{"grade_class":"2nd Division","gpa":"45","sub_min":"45","sub_max":"59","total_min":"135","total_max":"179"}', 1),
(58, '{"grade_class":"3rd Division","gpa":"33","sub_min":"33","sub_max":"44","total_min":"99","total_max":"134"}', 1),
(59, '{"grade_class":"Fail","gpa":"0","sub_min":"0","sub_max":"32","total_min":"0","total_max":"98"}', 1),
(60, '{"grade_class":"F","gpa":"0.0","sub_min":"0","sub_max":"32","total_min":"0","total_max":".99"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result_systems`
--

CREATE TABLE `result_systems` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result_rule` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `setting_ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_systems`
--

INSERT INTO `result_systems` (`id`, `name`, `result_rule`, `setting_ids`, `status_id`, `site_id`) VALUES
(14, 'Grading System', 'grade', '"49,50,51,52,53,54,60"', NULL, NULL),
(15, 'Division', 'division', '"56,57,58,59"', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `status`, `position`, `site_id`) VALUES
(2, 'Employee', 'An employee can access his personal page only.', NULL, 0, 1),
(3, 'Manager', 'A Manager can view management related details of an employee ', NULL, 0, 1),
(4, 'superadmin', 'Can create Admins including anything else', NULL, 0, 1),
(5, 'Producer', 'A producer can -----------', NULL, 0, 1),
(6, 'Teacher', 'A teacher will teach students', NULL, 0, 1),
(7, 'Student', 'A student will learn', NULL, 0, 1),
(8, 'Guardian', 'guardians of students', NULL, 0, 1),
(9, 'Fdfd', 'fdf', NULL, 0, 1),
(10, 'Ehllo', 'fdf', NULL, 0, 1),
(11, 'Anis', 'anis', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `site_id`) VALUES
(120, 4, 1),
(120, 11, 1),
(126, 2, 1),
(127, 2, 1),
(128, 8, 1),
(145, 7, 1),
(146, 7, 1),
(147, 7, 1),
(148, 7, 1),
(149, 7, 1),
(150, 7, 1),
(151, 7, 1),
(152, 7, 1),
(153, 7, 1),
(154, 7, 1),
(155, 7, 1),
(156, 7, 1),
(157, 6, 1),
(158, 7, 1),
(159, 6, 1),
(160, 6, 1),
(161, 6, 1),
(162, 6, 1),
(163, 6, 1),
(164, 6, 1),
(165, 6, 1),
(166, 6, 1),
(167, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `building_id`, `floor_id`, `room_name`, `status`, `deleted_at`, `site_id`) VALUES
(1, 1, 1, '102', 'Active', NULL, NULL),
(2, 1, 1, 'Room1', 'Active', NULL, NULL),
(3, 1, 1, 'Room 2', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `class_start_time` time DEFAULT NULL,
  `class_end_time` time DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordinator_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `student_class_id`, `section_id`, `subject_id`, `user_id`, `building_id`, `floor_id`, `room_id`, `class_start_time`, `class_end_time`, `status`, `weekday`, `coordinator_id`, `created_at`, `updated_at`, `deleted_at`, `site_id`) VALUES
(1, 1, 2, 1, 157, 1, 1, 1, '00:00:09', '00:00:10', 'Active', 'SUNDAY', 145, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_cut_rules`
--

CREATE TABLE `salary_cut_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_types` longtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_cut_rules`
--

INSERT INTO `salary_cut_rules` (`id`, `name`, `salary_types`, `amount`, `amount_type`, `status_id`, `position`, `site_id`) VALUES
(2, 'Cut 1', '{"total":"Total"}', 25, 'percent', NULL, NULL, NULL),
(3, 'Cut 2', '{"basic":"Basic"}', 30, 'percent', NULL, NULL, NULL),
(4, 'cut 3', '{"total":"Total"}', 2000, 'plus', NULL, NULL, NULL),
(5, 'one level', '{"total":"Total"}', 300, 'percent', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_rules`
--

CREATE TABLE `salary_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_content` longtext COLLATE utf8_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_rules`
--

INSERT INTO `salary_rules` (`id`, `name`, `rules_content`, `status_id`, `position`, `site_id`) VALUES
(6, 'allowance 1', '{"home_rent_amount":"50","home_rent_amount_type":"percent","medical_allowance_amount":"25","medical_allowance_amount_type":"percent","travel_allowance_amount":"30","travel_allowance_amount_type":"percent","extra_amount":"35","extra_amount_type":"percent"}', 1, NULL, NULL),
(7, 'one  level', '{"home_rent_amount":"40","home_rent_amount_type":"percent","medical_allowance_amount":"5","medical_allowance_amount_type":"percent","travel_allowance_amount":"0","travel_allowance_amount_type":"fixed","extra_amount":"0","extra_amount_type":"fixed","sltpe_amount":"0","sltpe_amount_type":"fixed","tada_amount":"1500","tada_amount_type":"fixed"}', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_types`
--

CREATE TABLE `salary_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_types`
--

INSERT INTO `salary_types` (`id`, `name`, `status_id`, `position`, `site_id`) VALUES
(2, 'Home Rent', 1, NULL, NULL),
(3, 'Medical Allowance', 1, NULL, NULL),
(7, 'Travel Allowance', 1, NULL, NULL),
(8, 'Extra', 1, NULL, NULL),
(9, 'sltpe', 1, NULL, NULL),
(10, 'TADA', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `section_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merit_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `student_class_id`, `user_id`, `section_name`, `merit_level`, `status`, `deleted_at`, `site_id`) VALUES
(1, 2, 157, 'Software', 'High', 'Active', NULL, 1),
(2, 1, 157, 'C', 'Low', 'Active', NULL, 1),
(3, 1, 157, 'D', NULL, NULL, NULL, 1),
(4, 1, 157, 'F', NULL, NULL, NULL, 1),
(5, 1, 157, 'G', NULL, NULL, NULL, 1),
(6, 1, 157, 'A', 'High', 'Active', NULL, 1),
(7, 3, 157, 'B', 'Semi-high', 'Active', NULL, 1),
(8, 5, 160, 'Section A', 'Good', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('36d5b522c5f27b09b6356c27edc7c785b67ef28f', 'YTo4OntzOjg6Inh4c2l0ZUlkIjtpOjE2O3M6NjoiX3Rva2VuIjtzOjQwOiJpQmtWc2ZtdzV4VXJiNW9PbHNxR3dwWmYxTkNSWUVNN0J0d0c4TFVMIjtzOjg6Imxhbmd1YWdlIjtzOjc6IkVuZ2xpc2giO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjczOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvaW1hZ2VjYWNoZS9sYXJnZS8xNDU1MDEyNzI2WFZwMjAxNi0wMS0wOS0xOTU4NDUuanBnIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE1OiJwcmV2aW91c1JlcXVlc3QiO3M6NToiYWRtaW4iO3M6Mzg6ImxvZ2luXzgyZTVkMmM1NmJkZDA4MTEzMThmMGNmMDc4Yjc4YmZjIjtzOjM6IjEyMCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NjQ3Njk2MzI7czoxOiJjIjtpOjE0NjQ3NjUxNjI7czoxOiJsIjtzOjE6IjAiO319', 1464769633);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contents` longtext COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `contents`, `position`, `status_id`, `site_id`) VALUES
(1, '{"sat_in":"12:00:00","sat_out":"13:30:00","sat_max":"12:00:00","sat_min":"13:30:00","sat_extend_day":"on","sat_day_off":"","sun_in":"12:00:00","sun_out":"13:30:00","sun_max":"12:00:00","sun_min":"13:30:00","sun_extend_day":"on","sun_day_off":"","mon_in":"12:00:00","mon_out":"13:30:00","mon_max":"05:00:00","mon_min":"13:30:00","mon_extend_day":"on","mon_day_off":"","tue_in":"12:00:00","tue_out":"13:30:00","tue_max":"06:00","tue_min":"07:50","tue_extend_day":"on","tue_day_off":"","wed_in":"12:00:00","wed_out":"13:30:00","wed_max":"12:00:00","wed_min":"13:30:00","wed_extend_day":"on","wed_day_off":"","thu_in":"12:00:00","thu_out":"13:30:00","thu_max":"12:00:00","thu_min":"13:30:00","thu_extend_day":"on","thu_day_off":"","fri_in":"12:00:00","fri_out":"13:15:00","fri_max":"12:00:00","fri_min":"13:30:00","fri_extend_day":"on","tue_day_off":"on"}', NULL, 1, NULL),
(3, '{"sat_in":"17:00","sat_out":"01:00","sat_max":"16:00","sat_min":"02:00","sat_extend_day":"on","sun_in":"17:00","sun_out":"01:00","sun_max":"16:00","sun_min":"02:00","sun_extend_day":"on","mon_in":"10:00","mon_out":"17:00","mon_max":"09:00","mon_min":"18:00","tue_in":"01:10","tue_out":"04:00","tue_max":"01:00","tue_min":"07:30","wed_in":"00:00","wed_out":"01:30","wed_max":"09:00","wed_min":"16:00","thu_in":"17:00","thu_out":"23:00","thu_max":"16:00","thu_min":"23:10","fri_in":"00:00","fri_out":"00:00","fri_max":"00:00","fri_min":"00:00"}', NULL, 1, NULL),
(4, '{"sat_in":"04:00","sat_out":"12:00","sat_max":"12:00","sat_min":"04:00","sun_in":"05:00","sun_out":"12:00","sun_max":"12:00","sun_min":"05:00","sun_day_off":"on","mon_in":"05:00","mon_out":"12:00","mon_max":"12:00","mon_min":"05:00","tue_in":"15:00","tue_out":"02:00","tue_max":"02:00","tue_min":"15:00","tue_day_off":"on","tue_extend_day":"on","wed_in":"05:00","wed_out":"12:00","wed_day_off":"on","wed_max":"12:50","wed_min":"04:00","thu_in":"05:00","thu_out":"12:00","thu_max":"13:00","thu_min":"06:30","thu_day_off":"on","fri_in":"05:00","fri_out":"12:00","fri_max":"12:00","fri_min":"04:00"}', NULL, 1, NULL),
(5, '{"sat_in":"13:20","sat_out":"13:50","sat_max":"","sat_min":"","sun_in":"13:10","sun_out":"09:00","sun_max":"09:10","sun_min":"09:20","mon_in":"09:50","mon_out":"09:50","mon_max":"05:50","mon_min":"05:50","tue_in":"05:10","tue_out":"10:10","tue_max":"04:10","tue_min":"13:50","wed_in":"10:50","wed_out":"10:10","wed_max":"","wed_min":"","thu_in":"09:20","thu_out":"13:20","thu_max":"","thu_min":"","fri_in":"","fri_out":"","fri_max":"","fri_min":"","fri_day_off":"on"}', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shifts-copy`
--

CREATE TABLE `shifts-copy` (
  `id` int(10) UNSIGNED NOT NULL,
  `sat_in` time DEFAULT NULL,
  `sat_out` time DEFAULT NULL,
  `sun_in` time DEFAULT NULL,
  `sun_out` time DEFAULT NULL,
  `mon_in` time DEFAULT NULL,
  `mon_out` time DEFAULT NULL,
  `tues_in` time DEFAULT NULL,
  `tues_out` time DEFAULT NULL,
  `wed_in` time DEFAULT NULL,
  `wed_out` time DEFAULT NULL,
  `thurs_in` time DEFAULT NULL,
  `thurs_out` time DEFAULT NULL,
  `fri_in` time DEFAULT NULL,
  `fri_out` time DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shifts-copy`
--

INSERT INTO `shifts-copy` (`id`, `sat_in`, `sat_out`, `sun_in`, `sun_out`, `mon_in`, `mon_out`, `tues_in`, `tues_out`, `wed_in`, `wed_out`, `thurs_in`, `thurs_out`, `fri_in`, `fri_out`, `position`, `status_id`, `site_id`) VALUES
(11, '12:00:00', '12:05:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:10:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', '12:15:00', NULL, 2, NULL),
(12, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, NULL),
(13, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, NULL),
(14, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, NULL),
(21, '12:25:00', '12:25:00', '12:20:00', '12:25:00', '12:20:00', '12:15:00', '12:30:00', '12:05:00', '12:15:00', '12:00:00', '12:00:00', '12:00:00', '12:10:00', '12:00:00', NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shift_translations`
--

CREATE TABLE `shift_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shift_translations`
--

INSERT INTO `shift_translations` (`id`, `name`, `locale`, `shift_id`, `site_id`) VALUES
(1, 'dfdfd', 'en', 9, NULL),
(2, 'gfdgdf en', 'en', 10, NULL),
(3, 'fgdfgdfg bn', 'bn', 10, NULL),
(4, 'Day', 'en', 11, NULL),
(5, 'gfdgdf', 'en', 12, NULL),
(6, 'fgdfgdfg', 'bn', 12, NULL),
(7, 'gfdgdf', 'en', 13, NULL),
(8, 'Morning Bangla', 'bn', 13, NULL),
(9, 'gfdgdf', 'en', 14, NULL),
(10, 'mornign bn', 'bn', 14, NULL),
(11, 'shift en', 'en', 15, NULL),
(12, 'fgdfgdfg', 'bn', 15, NULL),
(13, 'gfdgdf en', 'en', 21, NULL),
(14, 'fgdfgdfg', 'bn', 21, NULL),
(15, 'Day', 'en', 1, NULL),
(16, 'Morning', 'en', 3, NULL),
(17, 'Night', 'en', 4, NULL),
(18, 'regular', 'en', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_groups`
--

CREATE TABLE `site_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `group_alias` varchar(255) DEFAULT NULL,
  `group_email` varchar(255) DEFAULT NULL,
  `group_address` varchar(255) DEFAULT NULL,
  `group_phone` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_groups`
--

INSERT INTO `site_groups` (`id`, `name`, `group_alias`, `group_email`, `group_address`, `group_phone`, `position`, `status`, `deleted_at`) VALUES
(1, 'public', 'site-group-alias1', 'email1@gmail.com', 'Borisal', '5698745', 1, 1, NULL),
(2, 'private', NULL, NULL, NULL, NULL, 1, 1, NULL),
(3, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL),
(4, 'Viqa', 'viqa', 'viqa@email.com', 'dhaka', '021547899', 1, 1, NULL),
(5, 'Bibi', 'bibi', 'bibi@yahoo.com', 'Narayanganj', '1236589', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_type_id` int(10) UNSIGNED NOT NULL,
  `site_group_id` int(10) UNSIGNED NOT NULL,
  `site_alias` varchar(255) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `site_phone` int(11) DEFAULT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `site_type_id`, `site_group_id`, `site_alias`, `site_email`, `site_phone`, `site_logo`, `status`, `deleted_at`) VALUES
(1, 1, 1, 'site-alias1', 'site@email.com', 1032658, 'logo1', 1, '2016-06-07 05:24:21'),
(2, 2, 1, 'site-alias2', 'site@email2.com', 1032659, 'logo2', 1, NULL),
(6, 1, 1, 'site_alias3', 'site@hello.com', 1719256359, NULL, 1, NULL),
(7, 1, 1, 'site-alias4', 'site@email.com', 12548796, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_info_translations`
--

CREATE TABLE `site_info_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_info_id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `locale` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_info_translations`
--

INSERT INTO `site_info_translations` (`id`, `site_info_id`, `site_name`, `address`, `locale`) VALUES
(1, 1, 'dhaka school', 'dhaka', 'en'),
(2, 2, 'chittagong school', 'chittagong', 'en'),
(3, 3, 'Site Name 2', NULL, 'en'),
(4, 4, 'Site Name 2', 'Noakhali', 'en'),
(5, 5, 'Site Name 2', NULL, 'en'),
(6, 6, 'Site Name 2', 'Dhaka', 'en'),
(7, 7, 'Site Name 4', 'Dhaka', 'en'),
(8, 8, 'Name 7', 'dhdhh', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `site_types`
--

CREATE TABLE `site_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_types`
--

INSERT INTO `site_types` (`id`, `name`, `position`, `status`, `deleted_at`) VALUES
(1, 'monthly', 1, 1, NULL),
(2, 'yearly', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `site_id`) VALUES
(1, 'Active', NULL),
(2, 'Pending', NULL),
(3, 'Approved', NULL),
(4, 'Rejected', NULL),
(5, 'Fgghkjj', NULL),
(6, 'Rtrrrtrtt', NULL),
(7, 'Qwqwqwqw1111', 1),
(8, 'Rt12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_type_id` int(11) DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `present_date` date DEFAULT NULL,
  `present_date_time` datetime DEFAULT NULL,
  `present_year` int(11) DEFAULT NULL,
  `present_month` int(11) DEFAULT NULL,
  `present_day` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `user_id`, `roll_no`, `present_type`, `present_type_id`, `in_time`, `out_time`, `present_date`, `present_date_time`, `present_year`, `present_month`, `present_day`, `site_id`) VALUES
(1, 145, '45454554', 'Bangla', 1, '08:26:02', NULL, '2016-05-08', '2016-05-08 08:26:02', 2016, 5, 8, NULL),
(2, 146, '454545454', '', 0, '08:27:32', NULL, '2016-05-08', '2016-05-08 08:27:32', 2016, 5, 8, NULL),
(3, 149, '45444454', '', 0, '08:32:57', NULL, '2016-05-08', '2016-05-08 08:32:57', 2016, 5, 8, NULL),
(4, 145, '45454554', '', 0, '08:33:44', NULL, '2016-05-08', '2016-05-08 08:33:44', 2016, 5, 8, NULL),
(5, 147, '45444454', '', 0, '08:35:53', NULL, '2016-05-08', '2016-05-08 08:35:53', 2016, 5, 8, NULL),
(6, 147, '45444454', '', 0, '08:42:13', NULL, '2016-05-08', '2016-05-08 08:42:13', 2016, 5, 8, NULL),
(7, 145, '45454554', NULL, NULL, '08:46:40', NULL, '2016-05-08', '2016-05-08 08:46:40', 2016, 5, 8, NULL),
(8, 146, '454545454', NULL, NULL, '08:47:33', NULL, '2016-05-08', '2016-05-08 08:47:33', 2016, 5, 8, NULL),
(9, 148, '45444454', NULL, NULL, '08:50:28', NULL, '2016-05-08', '2016-05-08 08:50:28', 2016, 5, 8, NULL),
(10, 146, '454545454', NULL, NULL, '09:03:04', NULL, '2016-05-08', '2016-05-08 09:03:04', 2016, 5, 8, NULL),
(11, 145, '45454554', NULL, NULL, '09:05:03', NULL, '2016-05-08', '2016-05-08 09:05:03', 2016, 5, 8, NULL),
(12, 146, '454545454', NULL, NULL, '09:08:10', NULL, '2016-05-08', '2016-05-08 09:08:10', 2016, 5, 8, NULL),
(13, 145, '45454554', NULL, NULL, '09:14:05', NULL, '2016-05-08', '2016-05-08 09:14:05', 2016, 5, 8, NULL),
(14, 147, '45444454', NULL, NULL, '09:16:31', NULL, '2016-05-08', '2016-05-08 09:16:31', 2016, 5, 8, NULL),
(15, 150, '45444454', 'One', 1, '09:37:52', NULL, '2016-05-08', '2016-05-08 09:37:52', 2016, 5, 8, NULL),
(16, 145, '45454554', 'One', 1, '09:41:00', NULL, '2016-05-08', '2016-05-08 09:41:00', 2016, 5, 8, NULL),
(17, 147, '45444454', 'C', 2, '09:46:09', NULL, '2016-05-08', '2016-05-08 09:46:09', 2016, 5, 8, NULL),
(18, 148, '45444454', 'C', 2, '09:49:21', NULL, '2016-05-08', '2016-05-08 09:49:21', 2016, 5, 8, NULL),
(19, 145, '45454554', 'One', 1, '11:49:39', NULL, '2016-05-08', '2016-05-08 11:49:39', 2016, 5, 8, NULL),
(20, 145, '45454554', 'C', 2, '11:50:16', NULL, '2016-05-08', '2016-05-08 11:50:16', 2016, 5, 8, NULL),
(21, 145, '45454554', 'One', 1, '11:53:14', NULL, '2016-05-08', '2016-05-08 11:53:14', 2016, 5, 8, NULL),
(22, 145, '45454554', 'One', 1, '11:55:04', NULL, '2016-05-08', '2016-05-08 11:55:04', 2016, 5, 8, NULL),
(23, 145, '45454554', 'C', 2, '18:05:15', NULL, '2016-05-08', '2016-05-08 11:58:14', 2016, 5, 8, NULL),
(24, 145, '45454554', 'C', 2, '10:55:45', '15:49:15', '2016-05-09', '2016-05-09 04:55:49', 2016, 5, 9, NULL),
(25, 145, '45454554', 'Class', 1, '11:09:30', '11:14:00', '2016-05-09', '2016-05-09 05:09:33', 2016, 5, 9, NULL),
(26, 145, '45454554', 'Subject', 1, '11:13:30', NULL, '2016-05-09', '2016-05-09 05:13:27', 2016, 5, 9, NULL),
(27, 145, '45454554', 'One', 1, '11:18:00', '09:10:28', '2016-05-09', '2016-05-09 05:19:00', 2016, 5, 9, NULL),
(28, 145, '45454554', 'Bangla', 1, '11:20:15', '11:20:30', '2016-05-09', '2016-05-09 05:20:08', 2016, 5, 9, NULL),
(29, 147, '45444454', 'One', 1, '05:33:43', NULL, '2016-05-09', '2016-05-09 05:33:43', 2016, 5, 9, NULL),
(30, 145, '45454554', 'One', 1, '06:38:03', NULL, '2016-05-09', '2016-05-09 06:38:03', 2016, 5, 9, NULL),
(31, 145, '45454554', 'One', 1, '06:39:22', NULL, '2016-05-09', '2016-05-09 06:39:22', 2016, 5, 9, NULL),
(32, 145, '45454554', 'C', 2, '07:04:30', NULL, '2016-05-09', '2016-05-09 07:04:30', 2016, 5, 9, NULL),
(33, 147, '45444454', 'C', 2, '07:04:37', '15:49:15', '2016-05-09', '2016-05-09 07:04:37', 2016, 5, 9, NULL),
(34, 148, '45444454', 'C', 2, '07:08:30', NULL, '2016-05-09', '2016-05-09 07:08:30', 2016, 5, 9, NULL),
(35, 145, '45454554', 'C', 2, '07:08:53', NULL, '2016-05-09', '2016-05-09 07:08:53', 2016, 5, 9, NULL),
(36, 147, '45444454', 'C', 2, '07:09:45', NULL, '2016-05-09', '2016-05-09 07:09:45', 2016, 5, 9, NULL),
(37, 148, '45444454', 'C', 2, '07:10:32', NULL, '2016-05-09', '2016-05-09 07:10:32', 2016, 5, 9, NULL),
(38, 145, '45454554', 'One', 1, '09:37:58', NULL, '2016-05-09', '2016-05-09 09:37:58', 2016, 5, 9, NULL),
(39, 145, '45454554', 'One', 1, '09:38:50', '09:38:50', '2016-05-09', '2016-05-09 09:38:50', 2016, 5, 9, NULL),
(40, 145, '45454554', 'One', 1, '09:39:12', '09:39:12', '2016-05-09', '2016-05-09 09:39:12', 2016, 5, 9, NULL),
(41, 145, '45454554', 'One', 1, '09:39:43', '09:39:43', '2016-05-09', '2016-05-09 09:39:43', 2016, 5, 9, NULL),
(42, 146, '454545454', 'Two', 2, '15:45:15', '15:45:15', '2016-05-09', '2016-05-09 09:46:10', 2016, 5, 9, NULL),
(43, 147, '45444454', 'One', 1, '15:45:15', '09:48:22', '2016-05-09', '2016-05-09 09:48:22', 2016, 5, 9, NULL),
(44, 145, '45454554', 'C', 2, '15:49:15', '09:49:11', '2016-05-09', '2016-05-09 09:49:11', 2016, 5, 9, NULL),
(45, 147, '45444454', 'C', 2, '15:49:15', '09:50:31', '2016-05-09', '2016-05-09 09:50:31', 2016, 5, 9, NULL),
(46, 145, '45454554', 'C', 2, '15:10:20', '15:10:20', '2016-05-01', '2016-05-14 15:10:20', 2016, 5, 14, NULL),
(47, 148, '45444454', 'C', 2, '15:10:23', '15:10:23', '2016-05-01', '2016-05-14 15:10:23', 2016, 5, 14, NULL),
(48, 149, '45444454', 'C', 2, '15:10:25', '15:10:25', '2016-05-01', '2016-05-14 15:10:25', 2016, 5, 14, NULL),
(49, 150, '45444454', 'C', 2, '15:10:26', '15:10:26', '2016-05-01', '2016-05-14 15:10:26', 2016, 5, 14, NULL),
(50, 151, '45444454', 'C', 2, '15:10:27', '15:10:27', '2016-05-01', '2016-05-14 15:10:27', 2016, 5, 14, NULL),
(51, 155, '45454545', 'C', 2, '15:10:30', '15:10:30', '2016-05-01', '2016-05-14 15:10:30', 2016, 5, 14, NULL),
(52, 147, '45444454', 'C', 2, '15:10:45', '15:10:45', '2016-05-01', '2016-05-14 15:10:45', 2016, 5, 14, NULL),
(53, 145, '45454554', 'C', 2, '02:16:45', '15:11:52', '2016-05-01', '2016-05-14 15:11:52', 2016, 5, 14, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `result_system_id` int(10) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `class_name`, `user_id`, `result_system_id`, `note`, `status`, `deleted_at`, `site_id`) VALUES
(1, 'One', 157, 15, 'nothing to note', 'Active', NULL, 1),
(2, 'Two', 157, 14, 'hello', 'Active', NULL, 1),
(3, 'Three', 157, 14, 'kjkjjj', 'Active', NULL, 1),
(4, 'jhjghu', 157, 14, NULL, 'Active', NULL, 1),
(5, 'class five', 157, 14, 'sddsdsfs', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_histories`
--

CREATE TABLE `student_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_histories`
--

INSERT INTO `student_histories` (`id`, `user_id`, `department_id`, `student_class_id`, `section_id`, `roll_no`, `guardian_id`, `created_at`, `updated_at`, `site_id`) VALUES
(1, 141, 2, 1, NULL, NULL, NULL, '2016-04-24', NULL, NULL),
(2, 142, 2, 1, NULL, NULL, NULL, '2016-04-24', NULL, NULL),
(3, 143, 2, 1, NULL, NULL, NULL, '2016-04-24', NULL, NULL),
(4, 144, 2, 1, NULL, NULL, '128', '2016-04-25', NULL, NULL),
(5, 145, 3, 1, 2, '45454554', '128', '2016-04-25', NULL, NULL),
(6, 146, 2, 1, 1, '454545454', '128', '2016-04-25', NULL, NULL),
(7, 147, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, NULL),
(8, 148, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, NULL),
(9, 149, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, NULL),
(10, 150, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, NULL),
(11, 151, 2, 1, 2, '45444454', '128', '2016-05-01', NULL, NULL),
(12, 152, 2, 1, 3, '4545454545', '128', '2016-05-01', NULL, NULL),
(13, 153, 2, 1, 2, '4545454', '128', '2016-05-01', NULL, NULL),
(14, 154, 2, 1, 2, '454454', '128', '2016-05-01', NULL, NULL),
(15, 155, 2, 1, 2, '45454545', '128', '2016-05-01', NULL, NULL),
(16, 156, 2, 1, 1, '77797897978', '128', '2016-05-01', NULL, NULL),
(17, 158, 2, 2, 2, '124589', '128', '2016-05-12', NULL, NULL),
(18, 158, 2, 2, 1, '124589', '128', NULL, '2016-05-12', NULL),
(19, 167, NULL, 2, 1, '3578956', '128', '2016-05-18', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_total_marks` double(8,2) DEFAULT NULL,
  `subject_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_credit` int(11) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_marks_type` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `student_class_id`, `user_id`, `subject_name`, `subject_total_marks`, `subject_author`, `subject_code`, `subject_credit`, `status`, `subject_marks_type`, `site_id`) VALUES
(1, 1, 157, 'Bangla', 100.00, 'Rohit Sharma', '12548', 32, 'Active', '1,2', 1),
(2, 2, 157, 'ENglish', NULL, 'Royal ', '54879', 21, 'Active', '1', 1),
(3, 1, 157, 'Hhh', NULL, 'Rohit Sharma', '12548jnkkj', 1, 'Active', '2', 1),
(5, 1, 157, 'ENglishdf', NULL, 'Dfcvvccv', 'fddfcvvc', 0, 'Active', '1', 1),
(7, 5, 157, 'Anis', NULL, 'Anis', 'anis147852369', 1, 'Active', '1,6', 1),
(8, 2, 162, 'Arabic', NULL, 'Molla', '9995', 2, 'Active', '1,2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `training_year` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `training_translations`
--

CREATE TABLE `training_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `training_id` int(11) DEFAULT NULL,
  `training_title` varchar(255) DEFAULT NULL,
  `training_cover` text,
  `institute_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `dept_join_date` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emergency_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nid_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_certificate_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `password`, `gender_id`, `religion_id`, `student_class_id`, `section_id`, `roll_no`, `profession`, `guardian_id`, `department_id`, `designation_id`, `shift_id`, `dept_join_date`, `phone`, `emergency_contact`, `nid_number`, `passport_no`, `birth_certificate_no`, `status`, `remember_token`, `birthday`, `deleted_at`, `site_id`) VALUES
(120, '0667', 'khanna', 'kk@gmail.com', '$2y$10$7YeYCIwxk7FcudkN.KDIGetVsFdxlLEoompVTU.aWPrTvhUNcxboa', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-04-20', '78787877', NULL, NULL, NULL, NULL, NULL, 'Z8WDpQRxAIeUefgbriIbwBTg6XBYIZvtoxZCel7Mh4Jd5jVako6d2aKHJpnP', '2016-04-20', NULL, 1),
(126, '6589', 'hannan', 'hannan@gmail.com', '$2y$10$BdZgLHneikszX6VpqKTvaeEWq/E31dfPI2FQnpnw/L.fJxHo3Z66y', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-04-09', '0171526859', NULL, NULL, NULL, NULL, NULL, '5xk0gx2bbpa1mU4mGjFbNU39FGgdMe7rOys3CBr2MR9UI1U6ekIg399gGRIV', '2016-04-05', NULL, 1),
(127, '6598', 'test', 'test@test.com', '$2y$10$ccEjf4UWE3eND6nEuAn7Ne2dcpmIUihW6WMREqS9kaCQNIOQAxmRi', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 4, '2016-04-09', '0171256985', NULL, NULL, NULL, NULL, NULL, 'cFJeZmPHgh1B5nVvYjNPeBUzuBTJ5OUciPeey7U2Rv4wULcmoTq7dDeXuUuV', '2016-04-06', NULL, 2),
(128, '65987', 'joyraj', 'joy@gmail.com', '$2y$10$AZ3ywpPbBtNQkBllLauD1OQHgfqdBjD7jWpNWVZMMp9UzammR2LD.', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-12-31', '0171525632', NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-06', NULL, 1),
(145, 'sf45454', 'uytr', 'sss@gmail.com', '$2y$10$DYXGY/m/9USVRkFLviR5HOR/eNsENVNvZ6Y05hbzmfyoxA0yVgeO6', 17, 1, 1, 2, '45454554', NULL, 128, 3, NULL, NULL, '2016-04-05', '45454', NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-06', NULL, 2),
(146, 'hhk45454', 'jkjjkjk', 'kamu@gmail.com', '$2y$10$5kWLC1u.UJartkKD42zMsejZDJGMgl8CCRNQtxmiSK/ZsCDYwjZpa', 17, 1, 1, 1, '454545454', NULL, 128, 2, NULL, NULL, '2016-04-01', '56565656', '56565656', '56565656', '565656', '5656565', NULL, NULL, '2015-11-30', NULL, 1),
(147, '44544', 'kjkjkj', 'new@gmail.cjom', '$2y$10$uPDdVkTdm8rNTHgh9uSuO.Pm3aeQ9UL.YWabEWMJKMs.rppon7bVy', 17, 1, 1, 2, '45444454', NULL, 128, 2, NULL, NULL, '2016-05-20', '4454545', '454544', '454545454', '4545454', '54545454', NULL, NULL, '2016-05-06', NULL, 1),
(148, '44544d', 'kjkjkjd', 'newe@gmail.cjom', '$2y$10$xfT4Ms7ZId2LGPZSvnIpmeLjVrNa1iuhnHg60CUypKD6EMon.yqKO', 17, 1, 1, 2, '45444454', NULL, 128, 2, NULL, NULL, '2016-05-20', '4454545', '454544', '454545454', '4545454', '54545454', NULL, NULL, '2016-05-06', NULL, 1),
(149, '44544dd', 'dkjkjkjd', 'fnewe@gmail.cjom', '$2y$10$RexaBZdp.2oWvqMR6Nxd9u/4GMqhSjHogckTai7sD1SNnJeGvW0.a', 17, 1, 1, 2, '45444454', NULL, 128, 2, NULL, NULL, '2016-05-20', '4454545', '454544', '454545454', '4545454', '54545454', NULL, NULL, '2016-05-06', NULL, 1),
(150, '44544ddsdt', 'dkjkjkjdee', 'sfnewe@gmail.cjom', '$2y$10$.xc/eBt1j4P5Kx4g7gsk9umVCY4W9WblVgYfuU6q6uP0hVUfO3fVq', 17, 1, 1, 2, '45444454', NULL, 128, 2, NULL, NULL, '2016-05-20', '4454545', '454544', '454545454', '4545454', '54545454', NULL, NULL, '2016-05-06', NULL, 1),
(151, '44544ddsedt', 'dkjkjkjdeee', 'sfnewde@gmail.cjom', '$2y$10$FxRWZNtEWh/MDoNB/W14hufE52IsxJ0LQGi12nR6ior8cqDuQsl8y', 17, 1, 1, 2, '45444454', NULL, 128, 2, NULL, NULL, '2016-05-20', '4454545', '454544', '454545454', '4545454', '54545454', NULL, NULL, '2016-05-06', NULL, 1),
(152, '454478', 'kjjiutt', 'hey@hel.com', '$2y$10$X9FkqzXEwKms3W/wdZeZq.AAvUzdkpC1L7YT35kegORxNYrVA6i6K', 17, 1, 1, 3, '4545454545', NULL, 128, 2, NULL, NULL, '2016-05-03', '45454545', '454545454', '4545454545', '454545454', '454545454', NULL, NULL, '2016-05-06', NULL, 1),
(153, '16598', 'jhuyutyt', 'hel@hel.com', '$2y$10$LgdIXXCjsvp.82AQ7uCR2Oi0Tqmzaz0PKe0yp/yvzOcx4i0isn/Gq', 17, 1, 1, 2, '4545454', NULL, 128, 2, NULL, NULL, '2016-05-06', '15454545', '45445454', '45454545', '45454454', '7797979799', NULL, NULL, '2016-04-12', NULL, 1),
(154, 'fdfdf', 'fdfdf', 'uiuiu2@jkkj.jkj', '$2y$10$H3aAOi9ROCqDDBeSWByuWOGttnwVK0pd8slXlFzHltz0RXbRJh2si', 17, 2, 1, 2, '454454', NULL, 128, 2, NULL, NULL, '2016-05-07', '454554', '45454', '454455', '4544545', '4545545', NULL, NULL, '2016-04-06', NULL, 1),
(155, '45454', 'hjhjhjh', 'hello@mail.com', '$2y$10$vcGiwal0S/G5BuPXHC8xx.X9oBl3y0gUqtzJXVSEFKTKKXdx8qMC2', 17, 1, 1, 2, '45454545', NULL, 128, 2, NULL, NULL, '2016-05-06', '77999899', '54545454', '4545445', '454545', '5454544', NULL, NULL, '2016-05-06', NULL, 1),
(156, '9799', 'hhuuhkj', 'stdd@gmial.com', '$2y$10$LCl1YLyBGOdTwR3wToUZJelCQdOVG7N2zEZscjlLGrscCGEY2jHqe', 18, 2, 1, 1, '77797897978', NULL, 128, 2, NULL, NULL, '2016-12-12', '787878', '76646464', '46464464', '465465464', '465465464', NULL, NULL, '2016-05-05', NULL, 1),
(157, '7895', 'teacher', 'tt@teacher.com', '$2y$10$RupPUsC8WbGVnALzfuAhFuo/VNrD0N2kuF4Fd9EqOQAOsL5jDoKku', 17, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, 1, '2016-05-05', '87878787', '02154879', '4454545', '545454', '4545454', NULL, NULL, '2016-05-04', NULL, 1),
(158, '87954', 'hello', 'ss@gmail.com', '$2y$10$p7T8bSDVqZjJE7Ft.j79hetMVGVC7T8WxqNwyAOFmKy9I4NEbV0rG', 17, 2, 2, 1, '124589', NULL, 128, 2, NULL, NULL, '2016-05-21', '454545', '4454545', '545454', '5454545', '45454', NULL, NULL, '2016-05-12', NULL, 1),
(159, '11123546', 'anisvai sdfsd', 'anis147852@gmail.com', '$2y$10$MVf52bsOv3zvh3oiaHpbheX6gjJ5eNUJZnzVpDdWMBlDlVuxh5u8y', 17, 2, NULL, NULL, NULL, NULL, NULL, 3, 7, 5, '2016-05-01', '566454', '4564', '456464', '54545454', '6545464', NULL, NULL, '2016-05-10', NULL, 1),
(160, '133', 'anis ahmed', 'anis147852741@gmail.com', '$2y$10$q0UfJ4frBTcl7z1rNJOMmOYPbykeqadnEpdeTASrJdCMGfhRlD7gu', 17, 2, NULL, NULL, NULL, NULL, NULL, 3, 3, 5, '2016-02-24', '4545454', '5787512', '45755211', '4574512212', '54748541521', NULL, NULL, '2016-05-12', NULL, 1),
(161, 'hhjhh548', 'hellooo', 'bn@hello.com', '$2y$10$lkRJtOuc7uTiSA0tBZSIuuXco2yEBc/cy58hD6uDavsPFOeMVye36', 17, 2, NULL, NULL, NULL, NULL, NULL, 3, 9, 5, '2016-05-01', '478789', '646565565', '454545454', '454545454', '5445454', NULL, NULL, '2016-05-15', NULL, 1),
(162, '45454466', '9877979', 'bn@jkjkj.cone', '$2y$10$SvozCC3/dOZuT8HSMk7jR.czCVKSzzlVYUU0Ej6j.TKmafdOOw9Fe', 17, 2, NULL, NULL, NULL, NULL, NULL, 3, 9, 5, '2016-05-01', '77998989', '79899444', '44464646', '7878787', '78787878', NULL, NULL, '2016-05-01', NULL, 1),
(163, '45454466gt', 'oplitgh', 'bfn@jkjkj.cone', '$2y$10$maCCQ43358vlSC68NFuLEuP7Gj8GXdOetonP7rcNoCTkn8uzL4Bmq', 17, 2, NULL, NULL, NULL, NULL, NULL, 3, 9, 5, '2016-05-01', '77998989', '79899444', '44464646', '7878787', '78787878', NULL, NULL, '2016-05-01', NULL, 1),
(164, '45454466gtd', 'oplitghd', 'bfnj@jkjkj.cone', '$2y$10$o9qdyPFdebsV9SIxWopsseyhUEb7jR/.XzHtCFNnFKPPl2nG5krAW', 17, 2, NULL, NULL, NULL, NULL, NULL, 3, 9, 5, '2016-05-01', '77998989', '79899444', '44464646', '7878787', '78787878', NULL, NULL, '2016-05-01', NULL, 1),
(165, 'yuhj589658', 'juhygt', '58kiju@ylha.com', '$2y$10$ikTjVXxP5PHiZgaqFXRUme1vtfM9wyLdiLUJmjlMQs86X5le2.7ca', 17, 2, NULL, NULL, NULL, NULL, NULL, 3, 9, 5, '2016-05-08', '5865947', '12546897', '236598474', '1236589', '21458736', NULL, NULL, '2016-05-08', NULL, 1),
(166, '756432', 'fdgdfgfdgdfgdfgdfgdfgdfgdfgdgdfgdfgfdgfd', 'etrerererre@gggf.gffg', '$2y$10$pWlngTwEGxu3MdmTKHSqc.09OMmnsJbw514yhFTTT5h1dxAr178Tu', 17, 1, NULL, NULL, NULL, NULL, NULL, 3, 6, 5, '2016-05-11', '4352525232', '4443334', '3353353', '553555', '553554', NULL, NULL, '2016-05-11', NULL, 1),
(167, '555555', 'arifur', 'sss2@gmail.com', '$2y$10$MSfFPHHxlIX3DTEKL78.Aetfk7Y5zN9.WoRdla0.4a7a6hWuXGlPS', 17, 2, 2, 1, '3578956', NULL, 128, 0, NULL, NULL, '2016-05-18', '123456789', '123456789', '1234567899', '123456789', '56985478', NULL, NULL, '2016-05-03', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_salaries`
--

CREATE TABLE `user_salaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `basic` double DEFAULT NULL,
  `salary_rule_id` int(11) DEFAULT NULL,
  `overtime_rule_id` int(11) DEFAULT NULL,
  `salary_cut_rule_id` int(11) DEFAULT NULL,
  `bonus_rule_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_salaries`
--

INSERT INTO `user_salaries` (`id`, `user_id`, `basic`, `salary_rule_id`, `overtime_rule_id`, `salary_cut_rule_id`, `bonus_rule_id`, `created_at`, `updated_at`, `site_id`) VALUES
(16, 120, 25000, 6, 4, 2, 18, '2016-04-06', NULL, NULL),
(17, 120, 25000, 6, 6, 2, 18, NULL, '2016-04-06', NULL),
(34, 126, 20000, 6, 4, 2, 18, '2016-04-09', '2016-04-09', NULL),
(35, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL, NULL),
(36, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL, NULL),
(37, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL, NULL),
(38, 127, 10000, 6, 4, 2, 18, '2016-04-09', NULL, NULL),
(39, 128, 15606, 6, 4, 2, 18, '2016-04-10', NULL, NULL),
(40, 120, 50000, 6, 6, 2, 18, NULL, '2016-04-20', NULL),
(41, 157, 58600, 6, 4, 2, 18, '2016-05-02', NULL, NULL),
(42, 159, 100000000, 7, 7, 5, 20, '2016-05-14', NULL, NULL),
(43, 160, 200000000, 7, 4, 5, 18, '2016-05-14', NULL, NULL),
(44, 161, 20000, 6, 4, 2, 18, '2016-05-15', NULL, NULL),
(45, 162, 985154, 6, 4, 2, 18, '2016-05-15', NULL, NULL),
(46, 164, 985154, 6, 4, 2, 18, '2016-05-15', NULL, NULL),
(47, 165, 365974, 6, 4, 2, 18, '2016-05-15', NULL, NULL),
(48, 166, 33332222, 6, 5, 2, 19, '2016-05-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_translations`
--

CREATE TABLE `user_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_translations`
--

INSERT INTO `user_translations` (`id`, `user_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `address`, `permanent_address`, `locale`, `site_id`) VALUES
(130, 120, 'Akshay ', 'Khanna', 'Akshay Sr', 'Mrs Sr Aks', 'jljlkjlkjl', 'ljlkjlkjlj', 'en', 1),
(139, 120, 'Aksay bn', 'Khann bna', 'kjkjk bn', 'jkjk bn', 'jkljkljj', 'jkjkj kbn', 'bn', 1),
(144, 126, 'Hannan', 'Rashid', 'Malek', 'Maleka', 'dhaka', 'rangpur', 'en', 1),
(145, 127, 'Users', 'Tester', 'Father', 'Mother', 'Test', 'Teste', 'en', 2),
(146, 127, 'tester bn', 'tester bn', 'fatbnt', 'motbnt', 'dhaka bn', 'dhaka bn', 'bn', 2),
(147, 128, 'Abul Mal', 'JOytu', 'Abdul Kal', 'Karina', 'dhaka', 'dhaka', 'en', 1),
(159, 145, 'jhjhjhjh', 'hjhjhjhj', 'hjhjhjhjh', 'jhjhjhjh', 'dgdgsdg', 'gsdgsdg', 'en', 1),
(160, 146, 'jkjkjkjk', 'jkjkjkjkjk', 'jkjkjkjk', 'jkjkjkjk', 'jhjhjh', 'hjhjhjhj', 'en', 1),
(161, 147, 'jkjkjkj', 'kjkjkj', 'jkjkjk', 'jkjkj', 'kjkjkjkjkkjk', 'kjkjkjkjkj', 'en', 1),
(162, 148, 'jkjkjkj', 'kjkjkj', 'jkjkjk', 'jkjkj', 'kjkjkjkjkkjk', 'kjkjkjkjkj', 'en', 1),
(163, 149, 'jkjkjkj', 'kjkjkj', 'jkjkjk', 'jkjkj', 'kjkjkjkjkkjk', 'kjkjkjkjkj', 'en', 1),
(164, 150, 'jkjkjkj', 'kjkjkj', 'jkjkjk', 'jkjkj', 'kjkjkjkjkkjk', 'kjkjkjkjkj', 'en', 1),
(165, 151, 'jkjkjkj', 'kjkjkj', 'jkjkjk', 'jkjkj', 'kjkjkjkjkkjk', 'kjkjkjkjkj', 'en', 1),
(166, 152, 'kjuuou', 'ououiouou', 'uouou', 'uoiuoiuo', 'jljljjjl', 'jljljljj', 'en', 1),
(167, 153, 'mnhiuti', 'jlkjljui', 'lkjljljuoi', 'jlkjlkjl', 'dfsdfds', 'fdsfdsf', 'en', 1),
(168, 154, 'dfdsf', 'sdfdsf', 'dsfdsf', 'dfdsf', 'dfdsfdsf', 'sdfdsf', 'en', 1),
(169, 155, 'jhjhjh', 'hjhjhjh', 'hjhjhjh', 'hjhjh', 'hjhjhjhjhj', 'hjhjhjhjh', 'en', 1),
(170, 156, 'hkjhhh', 'hkjhkjhkhk', 'hhjhj', 'khkjhhkh', 'jhhkhjhjhj', 'hjkhkhkhkh', 'en', 1),
(171, 157, 'teacher ', 'saheb', 'kjljl', 'ljljlj', 'jljjl', 'jljljl', 'en', 1),
(172, 158, 'kjjkjkjk ', 'jkjjkjk', 'jkjkjkj', 'uyuyuyuyuy', 'gfgfdg', 'fgfdg', 'en', 1),
(173, 159, 'anis dfss', 'anis dfssf', 'anis fssdf', 'anis  efds', 'anis dsfsd', 'anis jsbdj', 'en', 1),
(174, 160, 'anis ahmed', 'anis ahmed', 'anis ahmed', 'anis ahmed', 'anis ahmed', 'anis ahmed', 'en', 1),
(175, 161, 'ragger', 'kothaaa', 'helllll', 'jkjkjklkl', 'lklk;kk;k;lk;', 'k;k;kklklk', 'en', 1),
(176, 162, 'hhhkhh', 'khkjhkjhkh', 'hkhkjhkjh', 'khkhkhkh', 'khkjiuuitk', 'fjhghjgjhg', 'en', 1),
(177, 163, 'hhhkhh', 'khkjhkjhkh', 'hkhkjhkjh', 'khkhkhkh', 'khkjiuuitk', 'fjhghjgjhg', 'en', 1),
(178, 164, 'hhhkhhd', 'khkjhkjhkh', 'hkhkjhkjhd', 'khkhkhkhd', 'khkjiuuitkd', 'fjhghjgjhg', 'en', 1),
(179, 165, 'lokjuygh', 'hjnbhut', 'olpkjuyhg', 'hgtyfred', 'hygvfrds', 'olkimnhy', 'en', 1),
(180, 166, 'fdgdfg fgf', 'fdgdfgfdgd', 'jlkjljljlj', 'ggffgfg', 'fggfgggggggggggdffdfd', 'gfffffffff', 'en', 1),
(181, 167, 'arifur', 'rahaman', 'abdur', 'amina', 'hellljljljljlj', 'jljljj jlj', 'en', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_translations`
--
ALTER TABLE `account_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_type_translations`
--
ALTER TABLE `account_type_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_field_to_tables`
--
ALTER TABLE `add_field_to_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_categories`
--
ALTER TABLE `amount_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_category_translations`
--
ALTER TABLE `amount_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_types`
--
ALTER TABLE `amount_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_type_translations`
--
ALTER TABLE `amount_type_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author_translations`
--
ALTER TABLE `author_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_accounts_account_no_unique` (`account_no`),
  ADD UNIQUE KEY `bank_accounts_ifsc_code_unique` (`ifsc_code`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `bonus_attributes`
--
ALTER TABLE `bonus_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus_rules`
--
ALTER TABLE `bonus_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category_translations`
--
ALTER TABLE `book_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_translations`
--
ALTER TABLE `book_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_department_id_foreign` (`department_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district_translations`
--
ALTER TABLE `district_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division_translations`
--
ALTER TABLE `division_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_email_unique` (`email`);

--
-- Indexes for table `employee_histories`
--
ALTER TABLE `employee_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_histories_user_id_foreign` (`user_id`),
  ADD KEY `employee_histories_department_id_foreign` (`department_id`),
  ADD KEY `employee_histories_designation_id_foreign` (`designation_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_translations`
--
ALTER TABLE `event_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examination_schedules`
--
ALTER TABLE `examination_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender_translations`
--
ALTER TABLE `gender_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender_translations_gender_id_locale_unique` (`gender_id`,`locale`),
  ADD KEY `gender_translations_locale_index` (`locale`);

--
-- Indexes for table `group_accesses`
--
ALTER TABLE `group_accesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holydays`
--
ALTER TABLE `holydays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holydays_type_id_foreign` (`type_id`);

--
-- Indexes for table `holy_day_types`
--
ALTER TABLE `holy_day_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_applications_leave_id_foreign` (`leave_id`),
  ADD KEY `leave_applications_user_id_foreign` (`user_id`);

--
-- Indexes for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_application_translations_leave_application_id_foreign` (`leave_application_id`);

--
-- Indexes for table `log_tables`
--
ALTER TABLE `log_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_types`
--
ALTER TABLE `marks_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medias_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_settings`
--
ALTER TABLE `meta_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_translations`
--
ALTER TABLE `notice_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passwords`
--
ALTER TABLE `passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `passwords_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_user_id_foreign` (`user_id`);

--
-- Indexes for table `professional_qualifications`
--
ALTER TABLE `professional_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professional_qualification_translations`
--
ALTER TABLE `professional_qualification_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `punches`
--
ALTER TABLE `punches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_settings`
--
ALTER TABLE `result_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_systems`
--
ALTER TABLE `result_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_cut_rules`
--
ALTER TABLE `salary_cut_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_rules`
--
ALTER TABLE `salary_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_types`
--
ALTER TABLE `salary_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts-copy`
--
ALTER TABLE `shifts-copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_translations`
--
ALTER TABLE `shift_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_groups`
--
ALTER TABLE `site_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_info_translations`
--
ALTER TABLE `site_info_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_types`
--
ALTER TABLE `site_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_histories`
--
ALTER TABLE `student_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_translations`
--
ALTER TABLE `training_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_gender_id_foreign` (`gender_id`),
  ADD KEY `users_religion_id_foreign` (`religion_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_designation_id_foreign` (`designation_id`);

--
-- Indexes for table `user_salaries`
--
ALTER TABLE `user_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_translations`
--
ALTER TABLE `user_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_translations_user_id_locale_unique` (`user_id`,`locale`),
  ADD KEY `user_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_translations`
--
ALTER TABLE `account_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_type_translations`
--
ALTER TABLE `account_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `add_field_to_tables`
--
ALTER TABLE `add_field_to_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `amount_categories`
--
ALTER TABLE `amount_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amount_category_translations`
--
ALTER TABLE `amount_category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amount_types`
--
ALTER TABLE `amount_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amount_type_translations`
--
ALTER TABLE `amount_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `author_translations`
--
ALTER TABLE `author_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `bonus_attributes`
--
ALTER TABLE `bonus_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT for table `bonus_rules`
--
ALTER TABLE `bonus_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_category_translations`
--
ALTER TABLE `book_category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_translations`
--
ALTER TABLE `book_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `district_translations`
--
ALTER TABLE `district_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `division_translations`
--
ALTER TABLE `division_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `employee_histories`
--
ALTER TABLE `employee_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_translations`
--
ALTER TABLE `event_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `examinations`
--
ALTER TABLE `examinations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `examination_schedules`
--
ALTER TABLE `examination_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `gender_translations`
--
ALTER TABLE `gender_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `group_accesses`
--
ALTER TABLE `group_accesses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `holydays`
--
ALTER TABLE `holydays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `holy_day_types`
--
ALTER TABLE `holy_day_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `log_tables`
--
ALTER TABLE `log_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `marks_types`
--
ALTER TABLE `marks_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `meta_settings`
--
ALTER TABLE `meta_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `notice_translations`
--
ALTER TABLE `notice_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `passwords`
--
ALTER TABLE `passwords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `professional_qualifications`
--
ALTER TABLE `professional_qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `professional_qualification_translations`
--
ALTER TABLE `professional_qualification_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `punches`
--
ALTER TABLE `punches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `racks`
--
ALTER TABLE `racks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `result_settings`
--
ALTER TABLE `result_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `result_systems`
--
ALTER TABLE `result_systems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `salary_cut_rules`
--
ALTER TABLE `salary_cut_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `salary_rules`
--
ALTER TABLE `salary_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `salary_types`
--
ALTER TABLE `salary_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shifts-copy`
--
ALTER TABLE `shifts-copy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `shift_translations`
--
ALTER TABLE `shift_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `site_groups`
--
ALTER TABLE `site_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `site_info_translations`
--
ALTER TABLE `site_info_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `site_types`
--
ALTER TABLE `site_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_histories`
--
ALTER TABLE `student_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `training_translations`
--
ALTER TABLE `training_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `user_salaries`
--
ALTER TABLE `user_salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `user_translations`
--
ALTER TABLE `user_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_histories`
--
ALTER TABLE `employee_histories`
  ADD CONSTRAINT `employee_histories_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employee_histories_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employee_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gender_translations`
--
ALTER TABLE `gender_translations`
  ADD CONSTRAINT `gender_translations_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD CONSTRAINT `leave_applications_leave_id_foreign` FOREIGN KEY (`leave_id`) REFERENCES `leaves` (`id`);

--
-- Constraints for table `leave_application_translations`
--
ALTER TABLE `leave_application_translations`
  ADD CONSTRAINT `leave_application_translations_leave_application_id_foreign` FOREIGN KEY (`leave_application_id`) REFERENCES `leave_applications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_translations`
--
ALTER TABLE `user_translations`
  ADD CONSTRAINT `user_translations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
