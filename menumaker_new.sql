-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 10:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menumaker_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_caterers`
--

CREATE TABLE `api_caterers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `lon` decimal(9,6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_caterers`
--

INSERT INTO `api_caterers` (`id`, `name`, `address`, `contact`, `email`, `lat`, `lon`, `created_at`, `updated_at`, `user_id`, `city_id`) VALUES
(1, 'abc', 'lkasjdf', 83838, '', NULL, NULL, '2024-07-13 11:40:34.000000', NULL, 19, 1),
(3, 'abc', 'lkasjdf', 83838, 'abc@gmail.com', NULL, NULL, '2024-07-13 11:40:34.000000', NULL, 19, 1),
(4, 'abc', 'lkasjdf', 83838, 'abc1@gmail.com', NULL, NULL, '2024-07-13 11:40:34.000000', NULL, 19, 1),
(5, 'abc', 'lkasjdf', 83838, 'abc2@gmail.com', NULL, NULL, '2024-07-13 11:40:34.000000', NULL, 19, 1),
(6, 'abc', 'lkasjdf', 83838, 'abc3@gmail.com', NULL, NULL, '2024-07-13 11:40:34.000000', NULL, 19, 1),
(7, 'abc', 'lkasjdf', 83838, 'abc4@gmail.com', NULL, NULL, '2024-07-13 11:40:34.000000', NULL, 19, 1),
(8, 'abc', 'lkasjdf', 83838, 'abc5@gmail.com', NULL, NULL, '2024-07-13 11:40:34.000000', NULL, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_cities`
--

CREATE TABLE `api_cities` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `state_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_cities`
--

INSERT INTO `api_cities` (`id`, `name`, `created_at`, `state_id`) VALUES
(1, 'Bhopal', '2024-07-13 00:00:00.000000', 11),
(2, 'Indore', '2024-07-13 00:00:00.000000', 11),
(3, 'Gwalior', '2024-07-13 00:00:00.000000', 11),
(4, 'Jabalpur', '2024-07-13 00:00:00.000000', 11),
(5, 'Ujjain', '2024-07-13 00:00:00.000000', 11),
(6, 'Sagar', '2024-07-13 00:00:00.000000', 11),
(7, 'Dewas', '2024-07-13 00:00:00.000000', 11),
(8, 'Satna', '2024-07-13 00:00:00.000000', 11),
(9, 'Ratlam', '2024-07-13 00:00:00.000000', 11),
(10, 'Rewa', '2024-07-13 00:00:00.000000', 11),
(11, 'Murwara (Katni)', '2024-07-13 00:00:00.000000', 11),
(12, 'Singrauli', '2024-07-13 00:00:00.000000', 11),
(13, 'Burhanpur', '2024-07-13 00:00:00.000000', 11),
(14, 'Khandwa', '2024-07-13 00:00:00.000000', 11),
(15, 'Bhind', '2024-07-13 00:00:00.000000', 11),
(16, 'Chhindwara', '2024-07-13 00:00:00.000000', 11),
(17, 'Guna', '2024-07-13 00:00:00.000000', 11),
(18, 'Shivpuri', '2024-07-13 00:00:00.000000', 11),
(19, 'Vidisha', '2024-07-13 00:00:00.000000', 11),
(20, 'Chhatarpur', '2024-07-13 00:00:00.000000', 11),
(21, 'Damoh', '2024-07-13 00:00:00.000000', 11),
(22, 'Mandsaur', '2024-07-13 00:00:00.000000', 11),
(23, 'Neemuch', '2024-07-13 00:00:00.000000', 11),
(24, 'Pithampur', '2024-07-13 00:00:00.000000', 11),
(25, 'Hoshangabad', '2024-07-13 00:00:00.000000', 11),
(26, 'Itarsi', '2024-07-13 00:00:00.000000', 11),
(27, 'Sehore', '2024-07-13 00:00:00.000000', 11),
(28, 'Betul', '2024-07-13 00:00:00.000000', 11),
(29, 'Seoni', '2024-07-13 00:00:00.000000', 11),
(30, 'Datia', '2024-07-13 00:00:00.000000', 11),
(31, 'Nagda', '2024-07-13 00:00:00.000000', 11),
(32, 'Dhar', '2024-07-13 00:00:00.000000', 11),
(33, 'Mhow', '2024-07-13 00:00:00.000000', 11),
(34, 'Morena', '2024-07-13 00:00:00.000000', 11),
(35, 'Mauganj', '2024-07-13 00:00:00.000000', 11),
(36, 'Dindori', '2024-07-13 00:00:00.000000', 11),
(37, 'Narsinghpur', '2024-07-13 00:00:00.000000', 11),
(38, 'Shahdol', '2024-07-13 00:00:00.000000', 11),
(39, 'Tikamgarh', '2024-07-13 00:00:00.000000', 11),
(40, 'Raisen', '2024-07-13 00:00:00.000000', 11),
(41, 'Mandla', '2024-07-13 00:00:00.000000', 11),
(42, 'Sidhi', '2024-07-13 00:00:00.000000', 11),
(43, 'Raghogarh', '2024-07-13 00:00:00.000000', 11),
(44, 'Khurai', '2024-07-13 00:00:00.000000', 11),
(45, 'Panna', '2024-07-13 00:00:00.000000', 11),
(46, 'Ashok Nagar', '2024-07-13 00:00:00.000000', 11),
(47, 'Shajapur', '2024-07-13 00:00:00.000000', 11),
(48, 'Umaria', '2024-07-13 00:00:00.000000', 11),
(49, 'Sheopur', '2024-07-13 00:00:00.000000', 11),
(50, 'Jaora', '2024-07-13 00:00:00.000000', 11),
(51, 'Pipariya', '2024-07-13 00:00:00.000000', 11),
(52, 'Sironj', '2024-07-13 00:00:00.000000', 11),
(53, 'Sarni', '2024-07-13 00:00:00.000000', 11),
(54, 'Pachore', '2024-07-13 00:00:00.000000', 11),
(55, 'Rajgarh', '2024-07-13 00:00:00.000000', 11),
(56, 'Badnagar', '2024-07-13 00:00:00.000000', 11),
(57, 'Lahar', '2024-07-13 00:00:00.000000', 11),
(58, 'Maihar', '2024-07-13 00:00:00.000000', 11),
(59, 'Shahpura', '2024-07-13 00:00:00.000000', 11),
(60, 'Shujalpur', '2024-07-13 00:00:00.000000', 11),
(61, 'Balaghat', '2024-07-13 00:00:00.000000', 11),
(62, 'Mundi', '2024-07-13 00:00:00.000000', 11),
(63, 'Sehore', '2024-07-13 00:00:00.000000', 11),
(64, 'Neemuch', '2024-07-13 00:00:00.000000', 11),
(65, 'Niwari', '2024-07-13 00:00:00.000000', 11),
(66, 'Orchha', '2024-07-13 00:00:00.000000', 11),
(67, 'Patan', '2024-07-13 00:00:00.000000', 11),
(68, 'Porsa', '2024-07-13 00:00:00.000000', 11),
(69, 'Raghurajnagar', '2024-07-13 00:00:00.000000', 11),
(70, 'Rahatgarh', '2024-07-13 00:00:00.000000', 11),
(71, 'Rajpur', '2024-07-13 00:00:00.000000', 11),
(72, 'Rampur Baghelan', '2024-07-13 00:00:00.000000', 11),
(73, 'Rau', '2024-07-13 00:00:00.000000', 11),
(74, 'Sabalgarh', '2024-07-13 00:00:00.000000', 11),
(75, 'Sausar', '2024-07-13 00:00:00.000000', 11),
(76, 'Sendhwa', '2024-07-13 00:00:00.000000', 11),
(77, 'Shahganj', '2024-07-13 00:00:00.000000', 11),
(78, 'Shahgarh', '2024-07-13 00:00:00.000000', 11),
(79, 'Shahpura', '2024-07-13 00:00:00.000000', 11),
(80, 'Sheopur', '2024-07-13 00:00:00.000000', 11),
(81, 'Shivpuri', '2024-07-13 00:00:00.000000', 11),
(82, 'Sidhi', '2024-07-13 00:00:00.000000', 11),
(83, 'Sihora', '2024-07-13 00:00:00.000000', 11),
(84, 'Singrauli', '2024-07-13 00:00:00.000000', 11),
(85, 'Sironj', '2024-07-13 00:00:00.000000', 11),
(86, 'Sohagpur', '2024-07-13 00:00:00.000000', 11),
(87, 'Tarana', '2024-07-13 00:00:00.000000', 11),
(88, 'Tikamgarh', '2024-07-13 00:00:00.000000', 11),
(89, 'Ujjain', '2024-07-13 00:00:00.000000', 11),
(90, 'Umaria', '2024-07-13 00:00:00.000000', 11),
(91, 'Unhel', '2024-07-13 00:00:00.000000', 11),
(92, 'Vidisha', '2024-07-13 00:00:00.000000', 11),
(93, 'Waraseoni', '2024-07-13 00:00:00.000000', 11),
(94, 'Agra', '2024-07-13 00:00:00.000000', 23),
(95, 'Aligarh', '2024-07-13 00:00:00.000000', 23),
(96, 'Allahabad', '2024-07-13 00:00:00.000000', 23),
(97, 'Amroha', '2024-07-13 00:00:00.000000', 23),
(98, 'Auraiya', '2024-07-13 00:00:00.000000', 23),
(99, 'Azamgarh', '2024-07-13 00:00:00.000000', 23),
(100, 'Badaun', '2024-07-13 00:00:00.000000', 23),
(101, 'Baghpat', '2024-07-13 00:00:00.000000', 23),
(102, 'Bahraich', '2024-07-13 00:00:00.000000', 23),
(103, 'Ballia', '2024-07-13 00:00:00.000000', 23),
(104, 'Balrampur', '2024-07-13 00:00:00.000000', 23),
(105, 'Banda', '2024-07-13 00:00:00.000000', 23),
(106, 'Barabanki', '2024-07-13 00:00:00.000000', 23),
(107, 'Bareilly', '2024-07-13 00:00:00.000000', 23),
(108, 'Basti', '2024-07-13 00:00:00.000000', 23),
(109, 'Bijnor', '2024-07-13 00:00:00.000000', 23),
(110, 'Budaun', '2024-07-13 00:00:00.000000', 23),
(111, 'Bulandshahr', '2024-07-13 00:00:00.000000', 23),
(112, 'Chandauli', '2024-07-13 00:00:00.000000', 23),
(113, 'Chitrakoot', '2024-07-13 00:00:00.000000', 23),
(114, 'Deoria', '2024-07-13 00:00:00.000000', 23),
(115, 'Etah', '2024-07-13 00:00:00.000000', 23),
(116, 'Etawah', '2024-07-13 00:00:00.000000', 23),
(117, 'Faizabad', '2024-07-13 00:00:00.000000', 23),
(118, 'Fatehpur', '2024-07-13 00:00:00.000000', 23),
(119, 'Firozabad', '2024-07-13 00:00:00.000000', 23),
(120, 'Gautam Buddha Nagar', '2024-07-13 00:00:00.000000', 23),
(121, 'Ghaziabad', '2024-07-13 00:00:00.000000', 23),
(122, 'Ghazipur', '2024-07-13 00:00:00.000000', 23),
(123, 'Gonda', '2024-07-13 00:00:00.000000', 23),
(124, 'Gorakhpur', '2024-07-13 00:00:00.000000', 23),
(125, 'Hamirpur', '2024-07-13 00:00:00.000000', 23),
(126, 'Hapur', '2024-07-13 00:00:00.000000', 23),
(127, 'Hardoi', '2024-07-13 00:00:00.000000', 23),
(128, 'Hathras', '2024-07-13 00:00:00.000000', 23),
(129, 'Jaunpur', '2024-07-13 00:00:00.000000', 23),
(130, 'Jhansi', '2024-07-13 00:00:00.000000', 23),
(131, 'Kannauj', '2024-07-13 00:00:00.000000', 23),
(132, 'Kanpur', '2024-07-13 00:00:00.000000', 23),
(133, 'Kasganj', '2024-07-13 00:00:00.000000', 23),
(134, 'Kaushambi', '2024-07-13 00:00:00.000000', 23),
(135, 'Kushinagar', '2024-07-13 00:00:00.000000', 23),
(136, 'Lakhimpur Kheri', '2024-07-13 00:00:00.000000', 23),
(137, 'Lalitpur', '2024-07-13 00:00:00.000000', 23),
(138, 'Lucknow', '2024-07-13 00:00:00.000000', 23),
(139, 'Maharajganj', '2024-07-13 00:00:00.000000', 23),
(140, 'Mahoba', '2024-07-13 00:00:00.000000', 23),
(141, 'Mainpuri', '2024-07-13 00:00:00.000000', 23),
(142, 'Mathura', '2024-07-13 00:00:00.000000', 23),
(143, 'Mau', '2024-07-13 00:00:00.000000', 23),
(144, 'Meerut', '2024-07-13 00:00:00.000000', 23),
(145, 'Mirzapur', '2024-07-13 00:00:00.000000', 23),
(146, 'Moradabad', '2024-07-13 00:00:00.000000', 23),
(147, 'Muzaffarnagar', '2024-07-13 00:00:00.000000', 23),
(148, 'Pilibhit', '2024-07-13 00:00:00.000000', 23),
(149, 'Pratapgarh', '2024-07-13 00:00:00.000000', 23),
(150, 'Rae Bareli', '2024-07-13 00:00:00.000000', 23),
(151, 'Rampur', '2024-07-13 00:00:00.000000', 23),
(152, 'Saharanpur', '2024-07-13 00:00:00.000000', 23),
(153, 'Sambhal', '2024-07-13 00:00:00.000000', 23),
(154, 'Sant Kabir Nagar', '2024-07-13 00:00:00.000000', 23),
(155, 'Sant Ravidas Nagar', '2024-07-13 00:00:00.000000', 23),
(156, 'Shahjahanpur', '2024-07-13 00:00:00.000000', 23),
(157, 'Shamli', '2024-07-13 00:00:00.000000', 23),
(158, 'Shravasti', '2024-07-13 00:00:00.000000', 23),
(159, 'Siddharthnagar', '2024-07-13 00:00:00.000000', 23),
(160, 'Sitapur', '2024-07-13 00:00:00.000000', 23),
(161, 'Sonbhadra', '2024-07-13 00:00:00.000000', 23),
(162, 'Sultanpur', '2024-07-13 00:00:00.000000', 23),
(163, 'Unnao', '2024-07-13 00:00:00.000000', 23),
(164, 'Varanasi', '2024-07-13 00:00:00.000000', 23),
(165, 'Amethi', '2024-07-13 00:00:00.000000', 23),
(166, 'Ayodhya', '2024-07-13 00:00:00.000000', 23),
(167, 'Azamgarh', '2024-07-13 00:00:00.000000', 23),
(168, 'Basti', '2024-07-13 00:00:00.000000', 23),
(169, 'Deoria', '2024-07-13 00:00:00.000000', 23),
(170, 'Fatehpur', '2024-07-13 00:00:00.000000', 23),
(171, 'Gonda', '2024-07-13 00:00:00.000000', 23),
(172, 'Gorakhpur', '2024-07-13 00:00:00.000000', 23),
(173, 'Kaushambi', '2024-07-13 00:00:00.000000', 23),
(174, 'Kushinagar', '2024-07-13 00:00:00.000000', 23),
(175, 'Maharajganj', '2024-07-13 00:00:00.000000', 23),
(176, 'Mirzapur', '2024-07-13 00:00:00.000000', 23),
(177, 'Pratapgarh', '2024-07-13 00:00:00.000000', 23),
(178, 'Sant Kabir Nagar', '2024-07-13 00:00:00.000000', 23),
(179, 'Sant Ravidas Nagar', '2024-07-13 00:00:00.000000', 23),
(180, 'Siddharthnagar', '2024-07-13 00:00:00.000000', 23),
(181, 'Sonbhadra', '2024-07-13 00:00:00.000000', 23);

-- --------------------------------------------------------

--
-- Table structure for table `api_countries`
--

CREATE TABLE `api_countries` (
  `id` bigint(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `continent` varchar(100) NOT NULL,
  `continent_code` varchar(2) NOT NULL,
  `alpha3` varchar(3) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_countries`
--

INSERT INTO `api_countries` (`id`, `code`, `name`, `phone`, `symbol`, `capital`, `currency`, `continent`, `continent_code`, `alpha3`, `created_at`) VALUES
(1, 'AF', 'Afghanistan', 93, '؋', 'Kabul', 'AFN', 'Asia', 'AS', 'AFG', '2024-06-22 16:42:35.000000'),
(2, 'AX', 'Aland Islands', 358, '€', 'Mariehamn', 'EUR', 'Europe', 'EU', 'ALA', '2024-06-22 16:42:35.000000'),
(3, 'AL', 'Albania', 355, 'Lek', 'Tirana', 'ALL', 'Europe', 'EU', 'ALB', '2024-06-22 16:42:35.000000'),
(4, 'DZ', 'Algeria', 213, 'دج', 'Algiers', 'DZD', 'Africa', 'AF', 'DZA', '2024-06-22 16:42:35.000000'),
(5, 'AS', 'American Samoa', 1684, '$', 'Pago Pago', 'USD', 'Oceania', 'OC', 'ASM', '2024-06-22 16:42:35.000000'),
(6, 'AD', 'Andorra', 376, '€', 'Andorra la Vella', 'EUR', 'Europe', 'EU', 'AND', '2024-06-22 16:42:35.000000'),
(7, 'AO', 'Angola', 244, 'Kz', 'Luanda', 'AOA', 'Africa', 'AF', 'AGO', '2024-06-22 16:42:35.000000'),
(8, 'AI', 'Anguilla', 1264, '$', 'The Valley', 'XCD', 'North America', 'NA', 'AIA', '2024-06-22 16:42:35.000000'),
(9, 'AQ', 'Antarctica', 672, '$', 'Antarctica', 'AAD', 'Antarctica', 'AN', 'ATA', '2024-06-22 16:42:35.000000'),
(10, 'AG', 'Antigua and Barbuda', 1268, '$', 'St. John\'s', 'XCD', 'North America', 'NA', 'ATG', '2024-06-22 16:42:35.000000'),
(11, 'AR', 'Argentina', 54, '$', 'Buenos Aires', 'ARS', 'South America', 'SA', 'ARG', '2024-06-22 16:42:35.000000'),
(12, 'AM', 'Armenia', 374, '֏', 'Yerevan', 'AMD', 'Asia', 'AS', 'ARM', '2024-06-22 16:42:35.000000'),
(13, 'AW', 'Aruba', 297, 'ƒ', 'Oranjestad', 'AWG', 'North America', 'NA', 'ABW', '2024-06-22 16:42:35.000000'),
(14, 'AU', 'Australia', 61, '$', 'Canberra', 'AUD', 'Oceania', 'OC', 'AUS', '2024-06-22 16:42:35.000000'),
(15, 'AT', 'Austria', 43, '€', 'Vienna', 'EUR', 'Europe', 'EU', 'AUT', '2024-06-22 16:42:35.000000'),
(16, 'AZ', 'Azerbaijan', 994, 'm', 'Baku', 'AZN', 'Asia', 'AS', 'AZE', '2024-06-22 16:42:35.000000'),
(17, 'BS', 'Bahamas', 1242, 'B$', 'Nassau', 'BSD', 'North America', 'NA', 'BHS', '2024-06-22 16:42:35.000000'),
(18, 'BH', 'Bahrain', 973, '.د.ب', 'Manama', 'BHD', 'Asia', 'AS', 'BHR', '2024-06-22 16:42:35.000000'),
(19, 'BD', 'Bangladesh', 880, '৳', 'Dhaka', 'BDT', 'Asia', 'AS', 'BGD', '2024-06-22 16:42:35.000000'),
(20, 'BB', 'Barbados', 1246, 'Bds$', 'Bridgetown', 'BBD', 'North America', 'NA', 'BRB', '2024-06-22 16:42:35.000000'),
(21, 'BY', 'Belarus', 375, 'Br', 'Minsk', 'BYN', 'Europe', 'EU', 'BLR', '2024-06-22 16:42:35.000000'),
(22, 'BE', 'Belgium', 32, '€', 'Brussels', 'EUR', 'Europe', 'EU', 'BEL', '2024-06-22 16:42:35.000000'),
(23, 'BZ', 'Belize', 501, '$', 'Belmopan', 'BZD', 'North America', 'NA', 'BLZ', '2024-06-22 16:42:35.000000'),
(24, 'BJ', 'Benin', 229, 'CFA', 'Porto-Novo', 'XOF', 'Africa', 'AF', 'BEN', '2024-06-22 16:42:35.000000'),
(25, 'BM', 'Bermuda', 1441, '$', 'Hamilton', 'BMD', 'North America', 'NA', 'BMU', '2024-06-22 16:42:35.000000'),
(26, 'BT', 'Bhutan', 975, 'Nu.', 'Thimphu', 'BTN', 'Asia', 'AS', 'BTN', '2024-06-22 16:42:35.000000'),
(27, 'BO', 'Bolivia', 591, 'Bs.', 'Sucre', 'BOB', 'South America', 'SA', 'BOL', '2024-06-22 16:42:35.000000'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 599, '$', 'Kralendijk', 'USD', 'North America', 'NA', 'BES', '2024-06-22 16:42:35.000000'),
(29, 'BA', 'Bosnia and Herzegovina', 387, 'KM', 'Sarajevo', 'BAM', 'Europe', 'EU', 'BIH', '2024-06-22 16:42:35.000000'),
(30, 'BW', 'Botswana', 267, 'P', 'Gaborone', 'BWP', 'Africa', 'AF', 'BWA', '2024-06-22 16:42:35.000000'),
(31, 'BV', 'Bouvet Island', 55, 'kr', '', 'NOK', 'Antarctica', 'AN', 'BVT', '2024-06-22 16:42:35.000000'),
(32, 'BR', 'Brazil', 55, 'R$', 'Brasilia', 'BRL', 'South America', 'SA', 'BRA', '2024-06-22 16:42:35.000000'),
(33, 'IO', 'British Indian Ocean Territory', 246, '$', 'Diego Garcia', 'USD', 'Asia', 'AS', 'IOT', '2024-06-22 16:42:35.000000'),
(34, 'BN', 'Brunei Darussalam', 673, 'B$', 'Bandar Seri Begawan', 'BND', 'Asia', 'AS', 'BRN', '2024-06-22 16:42:35.000000'),
(35, 'BG', 'Bulgaria', 359, 'Лв.', 'Sofia', 'BGN', 'Europe', 'EU', 'BGR', '2024-06-22 16:42:35.000000'),
(36, 'BF', 'Burkina Faso', 226, 'CFA', 'Ouagadougou', 'XOF', 'Africa', 'AF', 'BFA', '2024-06-22 16:42:35.000000'),
(37, 'BI', 'Burundi', 257, 'FBu', 'Bujumbura', 'BIF', 'Africa', 'AF', 'BDI', '2024-06-22 16:42:35.000000'),
(38, 'KH', 'Cambodia', 855, 'KHR', 'Phnom Penh', 'KHR', 'Asia', 'AS', 'KHM', '2024-06-22 16:42:35.000000'),
(39, 'CM', 'Cameroon', 237, 'FCFA', 'Yaounde', 'XAF', 'Africa', 'AF', 'CMR', '2024-06-22 16:42:35.000000'),
(40, 'CA', 'Canada', 1, '$', 'Ottawa', 'CAD', 'North America', 'NA', 'CAN', '2024-06-22 16:42:35.000000'),
(41, 'CV', 'Cape Verde', 238, '$', 'Praia', 'CVE', 'Africa', 'AF', 'CPV', '2024-06-22 16:42:35.000000'),
(42, 'KY', 'Cayman Islands', 1345, '$', 'George Town', 'KYD', 'North America', 'NA', 'CYM', '2024-06-22 16:42:35.000000'),
(43, 'CF', 'Central African Republic', 236, 'FCFA', 'Bangui', 'XAF', 'Africa', 'AF', 'CAF', '2024-06-22 16:42:35.000000'),
(44, 'TD', 'Chad', 235, 'FCFA', 'N\'Djamena', 'XAF', 'Africa', 'AF', 'TCD', '2024-06-22 16:42:35.000000'),
(45, 'CL', 'Chile', 56, '$', 'Santiago', 'CLP', 'South America', 'SA', 'CHL', '2024-06-22 16:42:35.000000'),
(46, 'CN', 'China', 86, '¥', 'Beijing', 'CNY', 'Asia', 'AS', 'CHN', '2024-06-22 16:42:35.000000'),
(47, 'CX', 'Christmas Island', 61, '$', 'Flying Fish Cove', 'AUD', 'Asia', 'AS', 'CXR', '2024-06-22 16:42:35.000000'),
(48, 'CC', 'Cocos (Keeling) Islands', 672, '$', 'West Island', 'AUD', 'Asia', 'AS', 'CCK', '2024-06-22 16:42:35.000000'),
(49, 'CO', 'Colombia', 57, '$', 'Bogota', 'COP', 'South America', 'SA', 'COL', '2024-06-22 16:42:35.000000'),
(50, 'KM', 'Comoros', 269, 'CF', 'Moroni', 'KMF', 'Africa', 'AF', 'COM', '2024-06-22 16:42:35.000000'),
(51, 'CG', 'Congo', 242, 'FC', 'Brazzaville', 'XAF', 'Africa', 'AF', 'COG', '2024-06-22 16:42:35.000000'),
(52, 'CD', 'Congo, Democratic Republic of the Congo', 242, 'FC', 'Kinshasa', 'CDF', 'Africa', 'AF', 'COD', '2024-06-22 16:42:35.000000'),
(53, 'CK', 'Cook Islands', 682, '$', 'Avarua', 'NZD', 'Oceania', 'OC', 'COK', '2024-06-22 16:42:35.000000'),
(54, 'CR', 'Costa Rica', 506, '₡', 'San Jose', 'CRC', 'North America', 'NA', 'CRI', '2024-06-22 16:42:35.000000'),
(55, 'CI', 'Cote D\'Ivoire', 225, 'CFA', 'Yamoussoukro', 'XOF', 'Africa', 'AF', 'CIV', '2024-06-22 16:42:35.000000'),
(56, 'HR', 'Croatia', 385, 'kn', 'Zagreb', 'HRK', 'Europe', 'EU', 'HRV', '2024-06-22 16:42:35.000000'),
(57, 'CU', 'Cuba', 53, '$', 'Havana', 'CUP', 'North America', 'NA', 'CUB', '2024-06-22 16:42:35.000000'),
(58, 'CW', 'Curacao', 599, 'ƒ', 'Willemstad', 'ANG', 'North America', 'NA', 'CUW', '2024-06-22 16:42:35.000000'),
(59, 'CY', 'Cyprus', 357, '€', 'Nicosia', 'EUR', 'Asia', 'AS', 'CYP', '2024-06-22 16:42:35.000000'),
(60, 'CZ', 'Czech Republic', 420, 'Kč', 'Prague', 'CZK', 'Europe', 'EU', 'CZE', '2024-06-22 16:42:35.000000'),
(61, 'DK', 'Denmark', 45, 'Kr.', 'Copenhagen', 'DKK', 'Europe', 'EU', 'DNK', '2024-06-22 16:42:35.000000'),
(62, 'DJ', 'Djibouti', 253, 'Fdj', 'Djibouti', 'DJF', 'Africa', 'AF', 'DJI', '2024-06-22 16:42:35.000000'),
(63, 'DM', 'Dominica', 1767, '$', 'Roseau', 'XCD', 'North America', 'NA', 'DMA', '2024-06-22 16:42:35.000000'),
(64, 'DO', 'Dominican Republic', 1809, '$', 'Santo Domingo', 'DOP', 'North America', 'NA', 'DOM', '2024-06-22 16:42:35.000000'),
(65, 'EC', 'Ecuador', 593, '$', 'Quito', 'USD', 'South America', 'SA', 'ECU', '2024-06-22 16:42:35.000000'),
(66, 'EG', 'Egypt', 20, 'ج.م', 'Cairo', 'EGP', 'Africa', 'AF', 'EGY', '2024-06-22 16:42:35.000000'),
(67, 'SV', 'El Salvador', 503, '$', 'San Salvador', 'USD', 'North America', 'NA', 'SLV', '2024-06-22 16:42:35.000000'),
(68, 'GQ', 'Equatorial Guinea', 240, 'FCFA', 'Malabo', 'XAF', 'Africa', 'AF', 'GNQ', '2024-06-22 16:42:35.000000'),
(69, 'ER', 'Eritrea', 291, 'Nfk', 'Asmara', 'ERN', 'Africa', 'AF', 'ERI', '2024-06-22 16:42:35.000000'),
(70, 'EE', 'Estonia', 372, '€', 'Tallinn', 'EUR', 'Europe', 'EU', 'EST', '2024-06-22 16:42:35.000000'),
(71, 'ET', 'Ethiopia', 251, 'Nkf', 'Addis Ababa', 'ETB', 'Africa', 'AF', 'ETH', '2024-06-22 16:42:35.000000'),
(72, 'FK', 'Falkland Islands (Malvinas)', 500, '£', 'Stanley', 'FKP', 'South America', 'SA', 'FLK', '2024-06-22 16:42:35.000000'),
(73, 'FO', 'Faroe Islands', 298, 'Kr.', 'Torshavn', 'DKK', 'Europe', 'EU', 'FRO', '2024-06-22 16:42:35.000000'),
(74, 'FJ', 'Fiji', 679, 'FJ$', 'Suva', 'FJD', 'Oceania', 'OC', 'FJI', '2024-06-22 16:42:35.000000'),
(75, 'FI', 'Finland', 358, '€', 'Helsinki', 'EUR', 'Europe', 'EU', 'FIN', '2024-06-22 16:42:35.000000'),
(76, 'FR', 'France', 33, '€', 'Paris', 'EUR', 'Europe', 'EU', 'FRA', '2024-06-22 16:42:35.000000'),
(77, 'GF', 'French Guiana', 594, '€', 'Cayenne', 'EUR', 'South America', 'SA', 'GUF', '2024-06-22 16:42:35.000000'),
(78, 'PF', 'French Polynesia', 689, '₣', 'Papeete', 'XPF', 'Oceania', 'OC', 'PYF', '2024-06-22 16:42:35.000000'),
(79, 'TF', 'French Southern Territories', 262, '€', 'Port-aux-Francais', 'EUR', 'Antarctica', 'AN', 'ATF', '2024-06-22 16:42:35.000000'),
(80, 'GA', 'Gabon', 241, 'FCFA', 'Libreville', 'XAF', 'Africa', 'AF', 'GAB', '2024-06-22 16:42:35.000000'),
(81, 'GM', 'Gambia', 220, 'D', 'Banjul', 'GMD', 'Africa', 'AF', 'GMB', '2024-06-22 16:42:35.000000'),
(82, 'GE', 'Georgia', 995, 'ლ', 'Tbilisi', 'GEL', 'Asia', 'AS', 'GEO', '2024-06-22 16:42:35.000000'),
(83, 'DE', 'Germany', 49, '€', 'Berlin', 'EUR', 'Europe', 'EU', 'DEU', '2024-06-22 16:42:35.000000'),
(84, 'GH', 'Ghana', 233, 'GH₵', 'Accra', 'GHS', 'Africa', 'AF', 'GHA', '2024-06-22 16:42:35.000000'),
(85, 'GI', 'Gibraltar', 350, '£', 'Gibraltar', 'GIP', 'Europe', 'EU', 'GIB', '2024-06-22 16:42:35.000000'),
(86, 'GR', 'Greece', 30, '€', 'Athens', 'EUR', 'Europe', 'EU', 'GRC', '2024-06-22 16:42:35.000000'),
(87, 'GL', 'Greenland', 299, 'Kr.', 'Nuuk', 'DKK', 'North America', 'NA', 'GRL', '2024-06-22 16:42:35.000000'),
(88, 'GD', 'Grenada', 1473, '$', 'St. George\'s', 'XCD', 'North America', 'NA', 'GRD', '2024-06-22 16:42:35.000000'),
(89, 'GP', 'Guadeloupe', 590, '€', 'Basse-Terre', 'EUR', 'North America', 'NA', 'GLP', '2024-06-22 16:42:35.000000'),
(90, 'GU', 'Guam', 1671, '$', 'Hagatna', 'USD', 'Oceania', 'OC', 'GUM', '2024-06-22 16:42:35.000000'),
(91, 'GT', 'Guatemala', 502, 'Q', 'Guatemala City', 'GTQ', 'North America', 'NA', 'GTM', '2024-06-22 16:42:35.000000'),
(92, 'GG', 'Guernsey', 44, '£', 'St Peter Port', 'GBP', 'Europe', 'EU', 'GGY', '2024-06-22 16:42:35.000000'),
(93, 'GN', 'Guinea', 224, 'FG', 'Conakry', 'GNF', 'Africa', 'AF', 'GIN', '2024-06-22 16:42:35.000000'),
(94, 'GW', 'Guinea-Bissau', 245, 'CFA', 'Bissau', 'XOF', 'Africa', 'AF', 'GNB', '2024-06-22 16:42:35.000000'),
(95, 'GY', 'Guyana', 592, '$', 'Georgetown', 'GYD', 'South America', 'SA', 'GUY', '2024-06-22 16:42:35.000000'),
(96, 'HT', 'Haiti', 509, 'G', 'Port-au-Prince', 'HTG', 'North America', 'NA', 'HTI', '2024-06-22 16:42:35.000000'),
(97, 'HM', 'Heard Island and Mcdonald Islands', 0, '$', '', 'AUD', 'Antarctica', 'AN', 'HMD', '2024-06-22 16:42:35.000000'),
(98, 'VA', 'Holy See (Vatican City State)', 39, '€', 'Vatican City', 'EUR', 'Europe', 'EU', 'VAT', '2024-06-22 16:42:35.000000'),
(99, 'HN', 'Honduras', 504, 'L', 'Tegucigalpa', 'HNL', 'North America', 'NA', 'HND', '2024-06-22 16:42:35.000000'),
(100, 'HK', 'Hong Kong', 852, '$', 'Hong Kong', 'HKD', 'Asia', 'AS', 'HKG', '2024-06-22 16:42:35.000000'),
(101, 'HU', 'Hungary', 36, 'Ft', 'Budapest', 'HUF', 'Europe', 'EU', 'HUN', '2024-06-22 16:42:35.000000'),
(102, 'IS', 'Iceland', 354, 'kr', 'Reykjavik', 'ISK', 'Europe', 'EU', 'ISL', '2024-06-22 16:42:35.000000'),
(103, 'IN', 'India', 91, '₹', 'New Delhi', 'INR', 'Asia', 'AS', 'IND', '2024-06-22 16:42:35.000000'),
(104, 'ID', 'Indonesia', 62, 'Rp', 'Jakarta', 'IDR', 'Asia', 'AS', 'IDN', '2024-06-22 16:42:35.000000'),
(105, 'IR', 'Iran, Islamic Republic of', 98, '﷼', 'Tehran', 'IRR', 'Asia', 'AS', 'IRN', '2024-06-22 16:42:35.000000'),
(106, 'IQ', 'Iraq', 964, 'د.ع', 'Baghdad', 'IQD', 'Asia', 'AS', 'IRQ', '2024-06-22 16:42:35.000000'),
(107, 'IE', 'Ireland', 353, '€', 'Dublin', 'EUR', 'Europe', 'EU', 'IRL', '2024-06-22 16:42:35.000000'),
(108, 'IM', 'Isle of Man', 44, '£', 'Douglas, Isle of Man', 'GBP', 'Europe', 'EU', 'IMN', '2024-06-22 16:42:35.000000'),
(109, 'IL', 'Israel', 972, '₪', 'Jerusalem', 'ILS', 'Asia', 'AS', 'ISR', '2024-06-22 16:42:35.000000'),
(110, 'IT', 'Italy', 39, '€', 'Rome', 'EUR', 'Europe', 'EU', 'ITA', '2024-06-22 16:42:35.000000'),
(111, 'JM', 'Jamaica', 1876, 'J$', 'Kingston', 'JMD', 'North America', 'NA', 'JAM', '2024-06-22 16:42:35.000000'),
(112, 'JP', 'Japan', 81, '¥', 'Tokyo', 'JPY', 'Asia', 'AS', 'JPN', '2024-06-22 16:42:35.000000'),
(113, 'JE', 'Jersey', 44, '£', 'Saint Helier', 'GBP', 'Europe', 'EU', 'JEY', '2024-06-22 16:42:35.000000'),
(114, 'JO', 'Jordan', 962, 'ا.د', 'Amman', 'JOD', 'Asia', 'AS', 'JOR', '2024-06-22 16:42:35.000000'),
(115, 'KZ', 'Kazakhstan', 7, 'лв', 'Astana', 'KZT', 'Asia', 'AS', 'KAZ', '2024-06-22 16:42:35.000000'),
(116, 'KE', 'Kenya', 254, 'KSh', 'Nairobi', 'KES', 'Africa', 'AF', 'KEN', '2024-06-22 16:42:35.000000'),
(117, 'KI', 'Kiribati', 686, '$', 'Tarawa', 'AUD', 'Oceania', 'OC', 'KIR', '2024-06-22 16:42:35.000000'),
(118, 'KP', 'Korea, Democratic People\'s Republic of', 850, '₩', 'Pyongyang', 'KPW', 'Asia', 'AS', 'PRK', '2024-06-22 16:42:35.000000'),
(119, 'KR', 'Korea, Republic of', 82, '₩', 'Seoul', 'KRW', 'Asia', 'AS', 'KOR', '2024-06-22 16:42:35.000000'),
(120, 'XK', 'Kosovo', 383, '€', 'Pristina', 'EUR', 'Europe', 'EU', 'XKX', '2024-06-22 16:42:35.000000'),
(121, 'KW', 'Kuwait', 965, 'ك.د', 'Kuwait City', 'KWD', 'Asia', 'AS', 'KWT', '2024-06-22 16:42:35.000000'),
(122, 'KG', 'Kyrgyzstan', 996, 'лв', 'Bishkek', 'KGS', 'Asia', 'AS', 'KGZ', '2024-06-22 16:42:35.000000'),
(123, 'LA', 'Lao People\'s Democratic Republic', 856, '₭', 'Vientiane', 'LAK', 'Asia', 'AS', 'LAO', '2024-06-22 16:42:35.000000'),
(124, 'LV', 'Latvia', 371, '€', 'Riga', 'EUR', 'Europe', 'EU', 'LVA', '2024-06-22 16:42:35.000000'),
(125, 'LB', 'Lebanon', 961, '£', 'Beirut', 'LBP', 'Asia', 'AS', 'LBN', '2024-06-22 16:42:35.000000'),
(126, 'LS', 'Lesotho', 266, 'L', 'Maseru', 'LSL', 'Africa', 'AF', 'LSO', '2024-06-22 16:42:35.000000'),
(127, 'LR', 'Liberia', 231, '$', 'Monrovia', 'LRD', 'Africa', 'AF', 'LBR', '2024-06-22 16:42:35.000000'),
(128, 'LY', 'Libyan Arab Jamahiriya', 218, 'د.ل', 'Tripolis', 'LYD', 'Africa', 'AF', 'LBY', '2024-06-22 16:42:35.000000'),
(129, 'LI', 'Liechtenstein', 423, 'CHf', 'Vaduz', 'CHF', 'Europe', 'EU', 'LIE', '2024-06-22 16:42:35.000000'),
(130, 'LT', 'Lithuania', 370, '€', 'Vilnius', 'EUR', 'Europe', 'EU', 'LTU', '2024-06-22 16:42:35.000000'),
(131, 'LU', 'Luxembourg', 352, '€', 'Luxembourg', 'EUR', 'Europe', 'EU', 'LUX', '2024-06-22 16:42:35.000000'),
(132, 'MO', 'Macao', 853, '$', 'Macao', 'MOP', 'Asia', 'AS', 'MAC', '2024-06-22 16:42:35.000000'),
(133, 'MK', 'Macedonia, the Former Yugoslav Republic of', 389, 'ден', 'Skopje', 'MKD', 'Europe', 'EU', 'MKD', '2024-06-22 16:42:35.000000'),
(134, 'MG', 'Madagascar', 261, 'Ar', 'Antananarivo', 'MGA', 'Africa', 'AF', 'MDG', '2024-06-22 16:42:35.000000'),
(135, 'MW', 'Malawi', 265, 'MK', 'Lilongwe', 'MWK', 'Africa', 'AF', 'MWI', '2024-06-22 16:42:35.000000'),
(136, 'MY', 'Malaysia', 60, 'RM', 'Kuala Lumpur', 'MYR', 'Asia', 'AS', 'MYS', '2024-06-22 16:42:35.000000'),
(137, 'MV', 'Maldives', 960, 'Rf', 'Male', 'MVR', 'Asia', 'AS', 'MDV', '2024-06-22 16:42:35.000000'),
(138, 'ML', 'Mali', 223, 'CFA', 'Bamako', 'XOF', 'Africa', 'AF', 'MLI', '2024-06-22 16:42:35.000000'),
(139, 'MT', 'Malta', 356, '€', 'Valletta', 'EUR', 'Europe', 'EU', 'MLT', '2024-06-22 16:42:35.000000'),
(140, 'MH', 'Marshall Islands', 692, '$', 'Majuro', 'USD', 'Oceania', 'OC', 'MHL', '2024-06-22 16:42:35.000000'),
(141, 'MQ', 'Martinique', 596, '€', 'Fort-de-France', 'EUR', 'North America', 'NA', 'MTQ', '2024-06-22 16:42:35.000000'),
(142, 'MR', 'Mauritania', 222, 'MRU', 'Nouakchott', 'MRO', 'Africa', 'AF', 'MRT', '2024-06-22 16:42:35.000000'),
(143, 'MU', 'Mauritius', 230, '₨', 'Port Louis', 'MUR', 'Africa', 'AF', 'MUS', '2024-06-22 16:42:35.000000'),
(144, 'YT', 'Mayotte', 262, '€', 'Mamoudzou', 'EUR', 'Africa', 'AF', 'MYT', '2024-06-22 16:42:35.000000'),
(145, 'MX', 'Mexico', 52, '$', 'Mexico City', 'MXN', 'North America', 'NA', 'MEX', '2024-06-22 16:42:35.000000'),
(146, 'FM', 'Micronesia, Federated States of', 691, '$', 'Palikir', 'USD', 'Oceania', 'OC', 'FSM', '2024-06-22 16:42:35.000000'),
(147, 'MD', 'Moldova, Republic of', 373, 'L', 'Chisinau', 'MDL', 'Europe', 'EU', 'MDA', '2024-06-22 16:42:35.000000'),
(148, 'MC', 'Monaco', 377, '€', 'Monaco', 'EUR', 'Europe', 'EU', 'MCO', '2024-06-22 16:42:35.000000'),
(149, 'MN', 'Mongolia', 976, '₮', 'Ulan Bator', 'MNT', 'Asia', 'AS', 'MNG', '2024-06-22 16:42:35.000000'),
(150, 'ME', 'Montenegro', 382, '€', 'Podgorica', 'EUR', 'Europe', 'EU', 'MNE', '2024-06-22 16:42:35.000000'),
(151, 'MS', 'Montserrat', 1664, '$', 'Plymouth', 'XCD', 'North America', 'NA', 'MSR', '2024-06-22 16:42:35.000000'),
(152, 'MA', 'Morocco', 212, 'DH', 'Rabat', 'MAD', 'Africa', 'AF', 'MAR', '2024-06-22 16:42:35.000000'),
(153, 'MZ', 'Mozambique', 258, 'MT', 'Maputo', 'MZN', 'Africa', 'AF', 'MOZ', '2024-06-22 16:42:35.000000'),
(154, 'MM', 'Myanmar', 95, 'K', 'Nay Pyi Taw', 'MMK', 'Asia', 'AS', 'MMR', '2024-06-22 16:42:35.000000'),
(155, 'NA', 'Namibia', 264, '$', 'Windhoek', 'NAD', 'Africa', 'AF', 'NAM', '2024-06-22 16:42:35.000000'),
(156, 'NR', 'Nauru', 674, '$', 'Yaren', 'AUD', 'Oceania', 'OC', 'NRU', '2024-06-22 16:42:35.000000'),
(157, 'NP', 'Nepal', 977, '₨', 'Kathmandu', 'NPR', 'Asia', 'AS', 'NPL', '2024-06-22 16:42:35.000000'),
(158, 'NL', 'Netherlands', 31, '€', 'Amsterdam', 'EUR', 'Europe', 'EU', 'NLD', '2024-06-22 16:42:35.000000'),
(159, 'AN', 'Netherlands Antilles', 599, 'NAf', 'Willemstad', 'ANG', 'North America', 'NA', 'ANT', '2024-06-22 16:42:35.000000'),
(160, 'NC', 'New Caledonia', 687, '₣', 'Noumea', 'XPF', 'Oceania', 'OC', 'NCL', '2024-06-22 16:42:35.000000'),
(161, 'NZ', 'New Zealand', 64, '$', 'Wellington', 'NZD', 'Oceania', 'OC', 'NZL', '2024-06-22 16:42:35.000000'),
(162, 'NI', 'Nicaragua', 505, 'C$', 'Managua', 'NIO', 'North America', 'NA', 'NIC', '2024-06-22 16:42:35.000000'),
(163, 'NE', 'Niger', 227, 'CFA', 'Niamey', 'XOF', 'Africa', 'AF', 'NER', '2024-06-22 16:42:35.000000'),
(164, 'NG', 'Nigeria', 234, '₦', 'Abuja', 'NGN', 'Africa', 'AF', 'NGA', '2024-06-22 16:42:35.000000'),
(165, 'NU', 'Niue', 683, '$', 'Alofi', 'NZD', 'Oceania', 'OC', 'NIU', '2024-06-22 16:42:35.000000'),
(166, 'NF', 'Norfolk Island', 672, '$', 'Kingston', 'AUD', 'Oceania', 'OC', 'NFK', '2024-06-22 16:42:35.000000'),
(167, 'MP', 'Northern Mariana Islands', 1670, '$', 'Saipan', 'USD', 'Oceania', 'OC', 'MNP', '2024-06-22 16:42:35.000000'),
(168, 'NO', 'Norway', 47, 'kr', 'Oslo', 'NOK', 'Europe', 'EU', 'NOR', '2024-06-22 16:42:35.000000'),
(169, 'OM', 'Oman', 968, '.ع.ر', 'Muscat', 'OMR', 'Asia', 'AS', 'OMN', '2024-06-22 16:42:35.000000'),
(170, 'PK', 'Pakistan', 92, '₨', 'Islamabad', 'PKR', 'Asia', 'AS', 'PAK', '2024-06-22 16:42:35.000000'),
(171, 'PW', 'Palau', 680, '$', 'Melekeok', 'USD', 'Oceania', 'OC', 'PLW', '2024-06-22 16:42:35.000000'),
(172, 'PS', 'Palestinian Territory, Occupied', 970, '₪', 'East Jerusalem', 'ILS', 'Asia', 'AS', 'PSE', '2024-06-22 16:42:35.000000'),
(173, 'PA', 'Panama', 507, 'B/.', 'Panama City', 'PAB', 'North America', 'NA', 'PAN', '2024-06-22 16:42:35.000000'),
(174, 'PG', 'Papua New Guinea', 675, 'K', 'Port Moresby', 'PGK', 'Oceania', 'OC', 'PNG', '2024-06-22 16:42:35.000000'),
(175, 'PY', 'Paraguay', 595, '₲', 'Asuncion', 'PYG', 'South America', 'SA', 'PRY', '2024-06-22 16:42:35.000000'),
(176, 'PE', 'Peru', 51, 'S/.', 'Lima', 'PEN', 'South America', 'SA', 'PER', '2024-06-22 16:42:35.000000'),
(177, 'PH', 'Philippines', 63, '₱', 'Manila', 'PHP', 'Asia', 'AS', 'PHL', '2024-06-22 16:42:35.000000'),
(178, 'PN', 'Pitcairn', 64, '$', 'Adamstown', 'NZD', 'Oceania', 'OC', 'PCN', '2024-06-22 16:42:35.000000'),
(179, 'PL', 'Poland', 48, 'zł', 'Warsaw', 'PLN', 'Europe', 'EU', 'POL', '2024-06-22 16:42:35.000000'),
(180, 'PT', 'Portugal', 351, '€', 'Lisbon', 'EUR', 'Europe', 'EU', 'PRT', '2024-06-22 16:42:35.000000'),
(181, 'PR', 'Puerto Rico', 1787, '$', 'San Juan', 'USD', 'North America', 'NA', 'PRI', '2024-06-22 16:42:35.000000'),
(182, 'QA', 'Qatar', 974, 'ق.ر', 'Doha', 'QAR', 'Asia', 'AS', 'QAT', '2024-06-22 16:42:35.000000'),
(183, 'RE', 'Reunion', 262, '€', 'Saint-Denis', 'EUR', 'Africa', 'AF', 'REU', '2024-06-22 16:42:35.000000'),
(184, 'RO', 'Romania', 40, 'lei', 'Bucharest', 'RON', 'Europe', 'EU', 'ROM', '2024-06-22 16:42:35.000000'),
(185, 'RU', 'Russian Federation', 7, '₽', 'Moscow', 'RUB', 'Asia', 'AS', 'RUS', '2024-06-22 16:42:35.000000'),
(186, 'RW', 'Rwanda', 250, 'FRw', 'Kigali', 'RWF', 'Africa', 'AF', 'RWA', '2024-06-22 16:42:35.000000'),
(187, 'BL', 'Saint Barthelemy', 590, '€', 'Gustavia', 'EUR', 'North America', 'NA', 'BLM', '2024-06-22 16:42:35.000000'),
(188, 'SH', 'Saint Helena', 290, '£', 'Jamestown', 'SHP', 'Africa', 'AF', 'SHN', '2024-06-22 16:42:35.000000'),
(189, 'KN', 'Saint Kitts and Nevis', 1869, '$', 'Basseterre', 'XCD', 'North America', 'NA', 'KNA', '2024-06-22 16:42:35.000000'),
(190, 'LC', 'Saint Lucia', 1758, '$', 'Castries', 'XCD', 'North America', 'NA', 'LCA', '2024-06-22 16:42:35.000000'),
(191, 'MF', 'Saint Martin', 590, '€', 'Marigot', 'EUR', 'North America', 'NA', 'MAF', '2024-06-22 16:42:35.000000'),
(192, 'PM', 'Saint Pierre and Miquelon', 508, '€', 'Saint-Pierre', 'EUR', 'North America', 'NA', 'SPM', '2024-06-22 16:42:35.000000'),
(193, 'VC', 'Saint Vincent and the Grenadines', 1784, '$', 'Kingstown', 'XCD', 'North America', 'NA', 'VCT', '2024-06-22 16:42:35.000000'),
(194, 'WS', 'Samoa', 684, 'SAT', 'Apia', 'WST', 'Oceania', 'OC', 'WSM', '2024-06-22 16:42:35.000000'),
(195, 'SM', 'San Marino', 378, '€', 'San Marino', 'EUR', 'Europe', 'EU', 'SMR', '2024-06-22 16:42:35.000000'),
(196, 'ST', 'Sao Tome and Principe', 239, 'Db', 'Sao Tome', 'STD', 'Africa', 'AF', 'STP', '2024-06-22 16:42:35.000000'),
(197, 'SA', 'Saudi Arabia', 966, '﷼', 'Riyadh', 'SAR', 'Asia', 'AS', 'SAU', '2024-06-22 16:42:35.000000'),
(198, 'SN', 'Senegal', 221, 'CFA', 'Dakar', 'XOF', 'Africa', 'AF', 'SEN', '2024-06-22 16:42:35.000000'),
(199, 'RS', 'Serbia', 381, 'din', 'Belgrade', 'RSD', 'Europe', 'EU', 'SRB', '2024-06-22 16:42:35.000000'),
(200, 'CS', 'Serbia and Montenegro', 381, 'din', 'Belgrade', 'RSD', 'Europe', 'EU', 'SCG', '2024-06-22 16:42:35.000000'),
(201, 'SC', 'Seychelles', 248, 'SRe', 'Victoria', 'SCR', 'Africa', 'AF', 'SYC', '2024-06-22 16:42:35.000000'),
(202, 'SL', 'Sierra Leone', 232, 'Le', 'Freetown', 'SLL', 'Africa', 'AF', 'SLE', '2024-06-22 16:42:35.000000'),
(203, 'SG', 'Singapore', 65, '$', 'Singapur', 'SGD', 'Asia', 'AS', 'SGP', '2024-06-22 16:42:35.000000'),
(204, 'SX', 'Sint Maarten', 721, 'ƒ', 'Philipsburg', 'ANG', 'North America', 'NA', 'SXM', '2024-06-22 16:42:35.000000'),
(205, 'SK', 'Slovakia', 421, '€', 'Bratislava', 'EUR', 'Europe', 'EU', 'SVK', '2024-06-22 16:42:35.000000'),
(206, 'SI', 'Slovenia', 386, '€', 'Ljubljana', 'EUR', 'Europe', 'EU', 'SVN', '2024-06-22 16:42:35.000000'),
(207, 'SB', 'Solomon Islands', 677, 'Si$', 'Honiara', 'SBD', 'Oceania', 'OC', 'SLB', '2024-06-22 16:42:35.000000'),
(208, 'SO', 'Somalia', 252, 'Sh.so.', 'Mogadishu', 'SOS', 'Africa', 'AF', 'SOM', '2024-06-22 16:42:35.000000'),
(209, 'ZA', 'South Africa', 27, 'R', 'Pretoria', 'ZAR', 'Africa', 'AF', 'ZAF', '2024-06-22 16:42:35.000000'),
(210, 'GS', 'South Georgia and the South Sandwich Islands', 500, '£', 'Grytviken', 'GBP', 'Antarctica', 'AN', 'SGS', '2024-06-22 16:42:35.000000'),
(211, 'SS', 'South Sudan', 211, '£', 'Juba', 'SSP', 'Africa', 'AF', 'SSD', '2024-06-22 16:42:35.000000'),
(212, 'ES', 'Spain', 34, '€', 'Madrid', 'EUR', 'Europe', 'EU', 'ESP', '2024-06-22 16:42:35.000000'),
(213, 'LK', 'Sri Lanka', 94, 'Rs', 'Colombo', 'LKR', 'Asia', 'AS', 'LKA', '2024-06-22 16:42:35.000000'),
(214, 'SD', 'Sudan', 249, '.س.ج', 'Khartoum', 'SDG', 'Africa', 'AF', 'SDN', '2024-06-22 16:42:35.000000'),
(215, 'SR', 'Suriname', 597, '$', 'Paramaribo', 'SRD', 'South America', 'SA', 'SUR', '2024-06-22 16:42:35.000000'),
(216, 'SJ', 'Svalbard and Jan Mayen', 47, 'kr', 'Longyearbyen', 'NOK', 'Europe', 'EU', 'SJM', '2024-06-22 16:42:35.000000'),
(217, 'SZ', 'Swaziland', 268, 'E', 'Mbabane', 'SZL', 'Africa', 'AF', 'SWZ', '2024-06-22 16:42:35.000000'),
(218, 'SE', 'Sweden', 46, 'kr', 'Stockholm', 'SEK', 'Europe', 'EU', 'SWE', '2024-06-22 16:42:35.000000'),
(219, 'CH', 'Switzerland', 41, 'CHf', 'Berne', 'CHF', 'Europe', 'EU', 'CHE', '2024-06-22 16:42:35.000000'),
(220, 'SY', 'Syrian Arab Republic', 963, 'LS', 'Damascus', 'SYP', 'Asia', 'AS', 'SYR', '2024-06-22 16:42:35.000000'),
(221, 'TW', 'Taiwan, Province of China', 886, '$', 'Taipei', 'TWD', 'Asia', 'AS', 'TWN', '2024-06-22 16:42:35.000000'),
(222, 'TJ', 'Tajikistan', 992, 'SM', 'Dushanbe', 'TJS', 'Asia', 'AS', 'TJK', '2024-06-22 16:42:35.000000'),
(223, 'TZ', 'Tanzania, United Republic of', 255, 'TSh', 'Dodoma', 'TZS', 'Africa', 'AF', 'TZA', '2024-06-22 16:42:35.000000'),
(224, 'TH', 'Thailand', 66, '฿', 'Bangkok', 'THB', 'Asia', 'AS', 'THA', '2024-06-22 16:42:35.000000'),
(225, 'TL', 'Timor-Leste', 670, '$', 'Dili', 'USD', 'Asia', 'AS', 'TLS', '2024-06-22 16:42:35.000000'),
(226, 'TG', 'Togo', 228, 'CFA', 'Lome', 'XOF', 'Africa', 'AF', 'TGO', '2024-06-22 16:42:35.000000'),
(227, 'TK', 'Tokelau', 690, '$', '', 'NZD', 'Oceania', 'OC', 'TKL', '2024-06-22 16:42:35.000000'),
(228, 'TO', 'Tonga', 676, '$', 'Nuku\'alofa', 'TOP', 'Oceania', 'OC', 'TON', '2024-06-22 16:42:35.000000'),
(229, 'TT', 'Trinidad and Tobago', 1868, '$', 'Port of Spain', 'TTD', 'North America', 'NA', 'TTO', '2024-06-22 16:42:35.000000'),
(230, 'TN', 'Tunisia', 216, 'ت.د', 'Tunis', 'TND', 'Africa', 'AF', 'TUN', '2024-06-22 16:42:35.000000'),
(231, 'TR', 'Turkey', 90, '₺', 'Ankara', 'TRY', 'Asia', 'AS', 'TUR', '2024-06-22 16:42:35.000000'),
(232, 'TM', 'Turkmenistan', 7370, 'T', 'Ashgabat', 'TMT', 'Asia', 'AS', 'TKM', '2024-06-22 16:42:35.000000'),
(233, 'TC', 'Turks and Caicos Islands', 1649, '$', 'Cockburn Town', 'USD', 'North America', 'NA', 'TCA', '2024-06-22 16:42:35.000000'),
(234, 'TV', 'Tuvalu', 688, '$', 'Funafuti', 'AUD', 'Oceania', 'OC', 'TUV', '2024-06-22 16:42:35.000000'),
(235, 'UG', 'Uganda', 256, 'USh', 'Kampala', 'UGX', 'Africa', 'AF', 'UGA', '2024-06-22 16:42:35.000000'),
(236, 'UA', 'Ukraine', 380, '₴', 'Kiev', 'UAH', 'Europe', 'EU', 'UKR', '2024-06-22 16:42:35.000000'),
(237, 'AE', 'United Arab Emirates', 971, 'إ.د', 'Abu Dhabi', 'AED', 'Asia', 'AS', 'ARE', '2024-06-22 16:42:35.000000'),
(238, 'GB', 'United Kingdom', 44, '£', 'London', 'GBP', 'Europe', 'EU', 'GBR', '2024-06-22 16:42:35.000000'),
(239, 'US', 'United States', 1, '$', 'Washington', 'USD', 'North America', 'NA', 'USA', '2024-06-22 16:42:35.000000'),
(240, 'UM', 'United States Minor Outlying Islands', 1, '$', '', 'USD', 'North America', 'NA', 'UMI', '2024-06-22 16:42:35.000000'),
(241, 'UY', 'Uruguay', 598, '$', 'Montevideo', 'UYU', 'South America', 'SA', 'URY', '2024-06-22 16:42:35.000000'),
(242, 'UZ', 'Uzbekistan', 998, 'лв', 'Tashkent', 'UZS', 'Asia', 'AS', 'UZB', '2024-06-22 16:42:35.000000'),
(243, 'VU', 'Vanuatu', 678, 'VT', 'Port Vila', 'VUV', 'Oceania', 'OC', 'VUT', '2024-06-22 16:42:35.000000'),
(244, 'VE', 'Venezuela', 58, 'Bs', 'Caracas', 'VEF', 'South America', 'SA', 'VEN', '2024-06-22 16:42:35.000000'),
(245, 'VN', 'Viet Nam', 84, '₫', 'Hanoi', 'VND', 'Asia', 'AS', 'VNM', '2024-06-22 16:42:35.000000'),
(246, 'VG', 'Virgin Islands, British', 1284, '$', 'Road Town', 'USD', 'North America', 'NA', 'VGB', '2024-06-22 16:42:35.000000'),
(247, 'VI', 'Virgin Islands, U.s.', 1340, '$', 'Charlotte Amalie', 'USD', 'North America', 'NA', 'VIR', '2024-06-22 16:42:35.000000'),
(248, 'WF', 'Wallis and Futuna', 681, '₣', 'Mata Utu', 'XPF', 'Oceania', 'OC', 'WLF', '2024-06-22 16:42:35.000000'),
(249, 'EH', 'Western Sahara', 212, 'MAD', 'El-Aaiun', 'MAD', 'Africa', 'AF', 'ESH', '2024-06-22 16:42:35.000000'),
(250, 'YE', 'Yemen', 967, '﷼', 'Sanaa', 'YER', 'Asia', 'AS', 'YEM', '2024-06-22 16:42:35.000000'),
(251, 'ZM', 'Zambia', 260, 'ZK', 'Lusaka', 'ZMW', 'Africa', 'AF', 'ZMB', '2024-06-22 16:42:35.000000'),
(252, 'ZW', 'Zimbabwe', 263, '$', 'Harare', 'ZWL', 'Africa', 'AF', 'ZWE', '2024-06-22 16:42:35.000000');

-- --------------------------------------------------------

--
-- Table structure for table `api_cuisine`
--

CREATE TABLE `api_cuisine` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_cuisine`
--

INSERT INTO `api_cuisine` (`id`, `name`, `created_at`, `country_id`, `created_by_id`) VALUES
(1, 'American', '2024-06-22 14:56:06.649297', 239, 1),
(2, 'British', '2024-06-22 14:56:24.414487', 238, 1),
(3, 'Carribean', '2024-06-22 14:57:02.811319', 17, 1),
(4, 'Chinese', '2024-06-22 14:57:18.503953', 46, 1),
(5, 'Greek', '2024-06-22 14:57:46.258356', 86, 1),
(6, 'Indian', '2024-06-22 14:57:58.091341', 103, 1),
(7, 'Italian', '2024-06-22 14:58:15.705551', 110, 1),
(8, 'Japanese', '2024-06-22 14:58:35.315793', 112, 1),
(9, 'Labanese', '2024-06-22 14:58:52.562097', 125, 1),
(10, 'Mediterranean', '2024-06-22 14:59:18.943354', 231, 1),
(11, 'Thai', '2024-06-22 14:59:35.661164', 224, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_cuisineitems`
--

CREATE TABLE `api_cuisineitems` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `dish_id` bigint(20) NOT NULL,
  `cuisine_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_cuisineitems`
--

INSERT INTO `api_cuisineitems` (`id`, `created_at`, `user_id`, `dish_id`, `cuisine_id`) VALUES
(4, '2024-06-22 21:41:22.855399', 5, 243, 12),
(7, '2024-06-24 10:40:08.487878', 6, 196, 14),
(8, '2024-06-24 10:40:20.278645', 6, 197, 14),
(9, '2024-06-24 10:40:26.543582', 6, 243, 14),
(11, '2024-06-24 18:33:30.108417', 5, 197, 13),
(12, '2024-06-24 18:33:31.006980', 5, 198, 13),
(13, '2024-06-24 18:33:32.160337', 5, 199, 13),
(17, '2024-06-24 20:19:08.989412', 5, 535, 13),
(18, '2024-06-24 20:19:12.120404', 5, 534, 13),
(19, '2024-06-27 08:09:43.291126', 5, 196, 16),
(20, '2024-06-27 13:48:31.414225', 5, 197, 16),
(21, '2024-06-28 09:50:32.546050', 5, 198, 16),
(23, '2024-06-29 05:52:05.792373', 5, 196, 18),
(24, '2024-06-29 07:36:58.382880', 5, 197, 18),
(25, '2024-06-29 07:37:01.243929', 5, 198, 18),
(26, '2024-06-29 07:46:45.204818', 5, 206, 18),
(27, '2024-06-29 07:54:59.532102', 5, 253, 18),
(28, '2024-06-29 09:05:29.552141', 5, 503, 18),
(29, '2024-06-29 09:05:36.621937', 5, 535, 18),
(30, '2024-06-29 09:05:40.775086', 5, 378, 18),
(31, '2024-06-29 10:50:05.058353', 1, 196, 19),
(32, '2024-06-30 09:24:50.569065', 5, 202, 20),
(33, '2024-06-30 09:24:55.543666', 5, 203, 20),
(34, '2024-06-30 14:29:04.597517', 5, 196, 21),
(35, '2024-06-30 14:29:42.604775', 5, 197, 22),
(36, '2024-06-30 14:30:28.994336', 5, 197, 23),
(37, '2024-06-30 14:30:30.683163', 5, 196, 23),
(38, '2024-06-30 14:45:22.059674', 5, 211, 24),
(41, '2024-07-02 04:58:07.244753', 15, 196, 25),
(42, '2024-07-02 05:05:45.429141', 5, 56, 26),
(43, '2024-07-05 17:18:48.732221', 15, 197, 25),
(53, '2024-06-29 07:37:01.243929', 4, 198, 18),
(58, '2024-07-08 12:31:36.059901', 5, 506, 27),
(59, '2024-07-08 12:31:37.207548', 5, 505, 27),
(60, '2024-07-08 12:31:41.786878', 5, 254, 27),
(61, '2024-07-08 12:31:42.535297', 5, 255, 27),
(62, '2024-07-08 12:31:47.550820', 5, 534, 27),
(63, '2024-07-08 12:31:51.745828', 5, 538, 27),
(64, '2024-07-08 12:31:55.732712', 5, 379, 27),
(65, '2024-07-08 12:31:56.525328', 5, 380, 27),
(66, '2024-07-08 17:57:19.368416', 5, 196, 27),
(67, '2024-07-08 18:37:36.268131', 7, 196, 27),
(68, '2024-07-08 18:47:36.321869', 7, 197, 27),
(69, '2024-07-08 18:47:43.125852', 7, 198, 27),
(70, '2024-07-08 18:49:01.065599', 7, 378, 27),
(75, '2024-07-08 21:06:47.130713', 7, 196, 29),
(76, '2024-07-08 21:06:54.072028', 7, 197, 29),
(77, '2024-07-09 05:18:51.489004', 5, 197, 30),
(78, '2024-07-09 06:24:15.646728', 5, 196, 30),
(79, '2024-07-09 06:25:50.691189', 5, 198, 30),
(81, '2024-07-09 06:30:21.493706', 5, 200, 30),
(82, '2024-07-09 06:50:07.790747', 5, 201, 30),
(83, '2024-07-09 06:54:52.229945', 5, 202, 30),
(84, '2024-07-09 10:26:50.545561', 5, 243, 30),
(85, '2024-07-09 11:10:20.193934', 5, 211, 30),
(87, '2024-07-12 12:28:52.467396', 5, 57, 30),
(88, '2024-07-12 12:29:12.122292', 5, 305, 30),
(89, '2024-07-14 15:59:12.055875', 19, 196, 31),
(90, '2024-07-14 15:59:19.661074', 19, 197, 31),
(91, '2024-07-14 19:41:33.291529', 5, 503, 32);

-- --------------------------------------------------------

--
-- Table structure for table `api_customuser`
--

CREATE TABLE `api_customuser` (
  `id` bigint(20) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `login_provider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_customuser`
--

INSERT INTO `api_customuser` (`id`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `password`, `mobile`, `country_id`, `login_provider`) VALUES
(1, '2024-06-27 18:51:11.398191', 1, 'test3', 'test3', 1, 1, '2024-06-22 16:29:45.000000', 'amangupta15423@gmail.com', 'pbkdf2_sha256$720000$5VJ571ldIQZX1fEaKspJRb$8c8PkNIkl8DTmd1M3pVWXFdlCKCW18CeBfN3QWlHF3s=', 8334567891, 103, 'local'),
(2, NULL, 0, 'utkarsh', 'Dixit', 1, 1, '2024-06-22 17:57:13.537633', 'utkarsh@test.com', 'pbkdf2_sha256$720000$5VJ571ldIQZX1fEaKspJRb$8c8PkNIkl8DTmd1M3pVWXFdlCKCW18CeBfN3QWlHF3s=', 1234567890, 103, 'local'),
(3, NULL, 0, 'test', 'test', 0, 1, '2024-06-22 17:59:46.005460', 'testh@test.com', 'pbkdf2_sha256$720000$jqm9FyoDiFSoQVpV7fbabg$Vrs82vKKIzWxbG1Mwr5J0151IaaH5YGAbVl+KXCwW1g=', 9234567890, 103, 'local'),
(4, NULL, 0, 'test1', 'test1', 0, 1, '2024-06-22 18:04:47.015822', 'test2@test.com', 'pbkdf2_sha256$720000$p5rNrSSguts6LE1S2UcRLB$rsdJlyyuYybTpe2VwfvT8ORoEpQFtFQojxaqS+CJWyI=', 8334567890, 103, 'local'),
(5, NULL, 1, 'test3', 'test3', 1, 1, '2024-06-22 21:10:02.042315', 'test3@test.com', 'pbkdf2_sha256$720000$ruTMHrHmQtD2d3RbBD2MLR$1qd7U5J/J+psbNfB/okxduyTsl1RCvotnFt1yNHs4jk=', 8334567891, 103, 'local'),
(6, NULL, 0, 'abc', 'def', 0, 1, '2024-06-24 07:19:03.715639', 'abc@gmail.com', 'pbkdf2_sha256$720000$BHRYKVOk30lwpZM6HmcfXe$4YF2rGxGiUQFhaICuCI7LXacRkToJHTfjyjrz6hVSC0=', 8748738475, 103, 'local'),
(7, NULL, 0, 'a', 'a', 0, 1, '2024-06-26 12:38:33.210600', 'a@a.com', 'pbkdf2_sha256$720000$A7sR6PQDrzXZLkaOU8uG8x$Wk7Yg9S2jM14SZsD6VeUJpYCJlVm2yPO38MYRPMECxA=', 8394837383, 14, 'local'),
(8, NULL, 0, '', '', 0, 1, '2024-06-27 18:57:48.578285', 'aman@test.com', '!ylXP8YWRHi04Knxq8DhdUH7MzRlCsgXzu7ioFz7j', NULL, NULL, 'local'),
(9, NULL, 0, '', '', 0, 1, '2024-06-27 18:59:45.087348', 'aman@test2.com', '!9PjBK0crQgszwtaJx2HqjlCKa6FMyjnjAjjig00p', NULL, NULL, 'local'),
(10, NULL, 0, '', '', 0, 1, '2024-06-27 19:12:26.891617', 'aman@mistpl.com', '!GrbefmKDJMxGD1wo6O1Xsfcw8UpCVeKDOEwNjSLD', NULL, NULL, 'local'),
(11, NULL, 1, '', '', 1, 1, '2024-06-27 19:47:14.404380', 'admin@gmail.com', 'pbkdf2_sha256$720000$IKqbVcaXqOshhHPuEYjbe2$sg3/MAhSvKjvdL8BRfYs46xbqL+upc2mrrxQiGtxiSk=', NULL, NULL, 'local'),
(12, NULL, 0, 'Aman', 'Gupta', 0, 1, '2024-06-29 15:36:40.344534', 'amangupta15424@gmail.com', '!WOWNn7oZfDXDjt6FXIhpHCE6gUnTQZtzOzip8qKu', NULL, NULL, 'facebook'),
(13, NULL, 0, 'Aman', 'Gupta', 0, 1, '2024-06-29 15:37:34.169415', 'amangupta15942@gmail.com', '!ORmDHL8rQj6TLIKYfkF7P7WAV8Rka1bMLvMQg18T', NULL, NULL, 'facebook'),
(14, NULL, 0, '', '', 0, 1, '2024-06-29 20:02:02.250846', 'amangupta154l2@gmail.com', '!pwyOEfOH3Lxv4k7FFKTVWIu8g1pwM672RnD6Z1lh', NULL, NULL, 'google'),
(15, NULL, 0, '', '', 0, 1, '2024-07-01 05:40:28.737195', 'amangupta15422@gmail.com', '!ohbIfDK9wGbIyPmY0uUaj9rAmDt3HGBmcxcWUs96', NULL, NULL, 'google'),
(18, NULL, 0, 'Aman', 'Gupta', 0, 1, '2024-07-11 10:39:41.747228', 'amangupta1s542@gmail.com', '!f7Z2wQS9IeeccjbWqB04guS63GPePwCMFvyIdqRk', NULL, NULL, 'facebook'),
(19, NULL, 0, 'Aman', 'Gupta', 0, 1, '2024-07-11 13:35:33.230642', 'amangupta1542@gmail.com', '!77Mt8jwnhXLT1odZvt0cbUYnFYQ9Q6r5XGeGnX5c', NULL, NULL, 'google');

-- --------------------------------------------------------

--
-- Table structure for table `api_customuser_groups`
--

CREATE TABLE `api_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `api_customuser_user_permissions`
--

CREATE TABLE `api_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `api_dataentry`
--

CREATE TABLE `api_dataentry` (
  `id` bigint(20) NOT NULL,
  `menu_file` varchar(100) NOT NULL,
  `email_body` varchar(255) NOT NULL,
  `email_prefix` varchar(1000) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `email_send` tinyint(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `cater_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_dataentry`
--

INSERT INTO `api_dataentry` (`id`, `menu_file`, `email_body`, `email_prefix`, `created_at`, `email_send`, `updated_at`, `cater_id`, `menu_id`) VALUES
(1, 'static/email_pdfs/dummy.pdf', 'kkk', '30', '2024-07-13 20:01:24.899042', 0, NULL, 3, 30),
(2, 'static/email_pdfs/dummy_Ljjuj77.pdf', 'kkk', '30', '2024-07-13 20:01:24.949659', 0, NULL, 4, 30),
(3, 'email_pdfs/dummy.pdf', 'my body', '30', '2024-07-13 20:26:15.613733', 0, NULL, 3, 30),
(4, 'email_pdfs/dummy_tUQ6y4p.pdf', 'my body', '30', '2024-07-13 20:26:15.718425', 0, NULL, 4, 30),
(5, 'email_pdfs/dummy_Ckgv4oi.pdf', 'abcd', '30', '2024-07-13 20:29:56.862710', 0, NULL, 3, 30),
(6, 'email_pdfs/dummy_YMpSYsF.pdf', 'abcd', '30', '2024-07-13 20:29:56.961314', 0, NULL, 4, 30),
(7, 'email_pdfs/dummy_TmuneLn.pdf', 'pdf attach', '30', '2024-07-13 20:33:37.775983', 0, NULL, 3, 30),
(8, 'email_pdfs/dummy_WEZQgL4.pdf', 'pdf attach', '30', '2024-07-13 20:33:37.831896', 0, NULL, 4, 30),
(9, 'email_pdfs/dummy_iqlTLRv.pdf', 'abcd', '30', '2024-07-13 20:41:20.078664', 0, NULL, 8, 30),
(10, 'email_pdfs/dummy_raUweIr.pdf', 'Some body', '30', '2024-07-14 07:57:04.204736', 0, NULL, 3, 30),
(11, 'email_pdfs/dummy_tlatzbc.pdf', 'Some body', '30', '2024-07-14 07:57:04.252858', 0, NULL, 4, 30),
(12, 'email_pdfs/dummy_0rhtpBR.pdf', 'abcd', '30', '2024-07-14 08:12:39.125580', 0, NULL, 3, 30),
(13, 'email_pdfs/dummy_3WZHiHv.pdf', 'abcd', '30', '2024-07-14 08:12:39.179400', 0, NULL, 4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `api_dishes`
--

CREATE TABLE `api_dishes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` bigint(20) NOT NULL,
  `meal_time_id` bigint(20) NOT NULL,
  `cuisine_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_dishes`
--

INSERT INTO `api_dishes` (`id`, `name`, `is_active`, `created_at`, `created_by_id`, `meal_time_id`, `cuisine_id`) VALUES
(56, 'Bagel with Cream Cheese', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(57, 'Cinnamon Rolls', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(58, 'Belgian Style Waffles', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(59, 'Breakfast Burrito', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(60, 'French Toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(61, 'Bacon and Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(62, 'Fruit Smoothie', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(63, 'Plain Toast & Butter or Jam', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(64, 'Hashbrowns AKA Potato Pancakes', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(65, 'Sweet Crepes', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(66, 'Breakfast Parfait', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(67, 'Griddlecakes', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(68, 'Sausage and Egg Sandwich', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(69, 'Stuffed Omelet', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(70, 'Croissants', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(71, 'Blueberry Muffins', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(72, 'Huevos Rancheros', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(73, 'Scrambled Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(74, 'Hot Oatmeal or Porridge', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(75, 'Quiche', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(76, 'Cheese Sandwich', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(77, 'Grits', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(78, 'Chicken and waffles ', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(79, 'Key lime pie', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(80, 'S\'mores', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(81, 'Twinkies', 1, '2024-06-22 14:56:06.000000', 1, 1, 1),
(82, 'Tater tots', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(83, 'Cobb salad', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(84, 'Pot roast', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(85, 'Jerky', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(86, 'Fajitas', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(87, 'Banana split', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(88, 'Cornbread', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(89, 'GORP', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(90, 'Jambalaya', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(91, 'Biscuits \'n\' gravy', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(92, 'Smithfield ham', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(93, 'Chicken fried steak', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(94, 'Wild Alaska salmon', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(95, 'California roll', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(96, 'Meatloaf', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(97, 'Grits', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(98, 'Macaroni and cheese', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(99, 'Maryland crabcakes', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(100, 'Potato chips', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(101, 'Cioppino', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(102, 'Fortune cookies', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(103, 'Peanut butter sandwich', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(104, 'Baked beans', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(105, 'Popcorn', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(106, 'Fried chicken and waffles', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(107, 'New England clam chowder', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(108, 'New Mexican flat enchiladas', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(109, 'Lobster rolls', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(110, 'Buffalo wings', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(111, 'Indian frybread', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(112, 'Barbecue ribs', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(113, 'BLT', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(114, 'Apple pie', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(115, 'Frito pie', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(116, 'Po\' boy', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(117, 'Green chile stew', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(118, 'Chocolate-chip cookies', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(119, 'Blueberry cobbler', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(120, 'Delmonico\'s steak', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(121, 'Chicago-style pizza', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(122, 'Nachos', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(123, 'Philly cheese steak', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(124, 'Hot dogs', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(125, 'Reuben sandwich', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(126, 'Cheeseburger', 1, '2024-06-22 14:56:06.000000', 1, 3, 1),
(127, 'Meatloaf', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(128, 'Macaroni and Cheese', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(129, 'Chicago\'s deep dish pizza', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(130, 'Fatijas', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(131, 'Turkey Dinner', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(132, 'Tater tots', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(133, 'Baked beans', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(134, 'Wild Alaska salmon', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(135, 'Grilled Cheese Sandwich', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(136, 'Cornbread', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(137, 'Cheese Cake', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(138, 'The Lobster Roll', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(139, 'Cobb salad', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(140, 'Jambalaya', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(141, 'Rattlesnake Stew', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(142, 'Biscuits and Gravy', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(143, 'Onion Rings', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(144, 'Frybread Tacos', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(145, 'Banana split', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(146, 'Maryland crabcakes', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(147, 'The po-boy', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(148, 'Muffuletta', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(149, 'Fried alligator', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(150, 'Cheese Curds', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(151, 'Fried chicken and waffles', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(152, 'Nachos', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(153, 'Barbecue ribs', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(154, 'Wild Alaska salmon', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(155, 'Smithfield ham', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(156, 'Cioppino', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(157, 'Potato chips', 1, '2024-06-22 14:56:06.000000', 1, 5, 1),
(158, 'Breakfast Biscuit Sandwiches', 1, '2024-06-22 14:56:06.000000', 1, 2, 1),
(159, 'Beef Burgers with Peanut-Chipotle Barbec', 1, '2024-06-22 14:56:06.000000', 1, 2, 1),
(160, 'Whole-Wheat Pancakes with Roasted Berrie', 1, '2024-06-22 14:56:06.000000', 1, 2, 1),
(161, 'Mom\'s Nutty Granola', 1, '2024-06-22 14:56:06.000000', 1, 2, 1),
(162, 'Classic Southern Fried Chicken', 1, '2024-06-22 14:56:06.000000', 1, 2, 1),
(163, 'Cinnamon-Pecan Buns', 1, '2024-06-22 14:56:06.000000', 1, 2, 1),
(164, 'Vanilla Raised Doughnuts', 1, '2024-06-22 14:56:06.000000', 1, 2, 1),
(165, 'Shrimp skagen', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(166, 'Earl grey teacakes', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(167, 'Avocado on toast with smoked salmon', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(168, 'Crab scotch quail\'s egg with mustard may', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(169, 'Pear, saffron and browned butter muffins', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(170, 'Gin and tonic granita', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(171, 'Classic scones', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(172, 'Strawberry shortcake', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(173, 'Blueberry shortcakes', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(174, 'Cheddar and pecan scones', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(175, 'Strawberry and Pimm?s boozy jam', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(176, 'Lemon curd', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(177, 'Pink rhubarb shortcakes', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(178, 'Cheshire cheese and walnut scones', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(179, 'Turmeric chai tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(180, 'Snowball madeleines', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(181, 'Dulce de leche banana bread', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(182, 'St Clements swiss roll', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(183, 'Chocolate ?clairs', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(184, 'Rhubarb and custard slice', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(185, 'Coffee, chocolate and walnut cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(186, 'Cherry bakewell tart', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(187, 'Raspberry and white chocolate macaroons', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(188, 'Cherry and pistachio bakewell galette', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(189, 'Lemon and blueberry bars', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(190, 'Strawberry ?clairs', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(191, 'Rose and almond choux buns', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(192, 'Pistachio swirl biscuits', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(193, 'Passion fruit layer cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(194, 'Date and ginger tea loaf', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(195, 'Coffee cake with pecan brittle', 1, '2024-06-22 14:56:06.000000', 1, 4, 1),
(196, 'Upma', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(197, 'Masala Dosa', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(198, 'Rava Idli', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(199, 'Aloo paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(200, 'Paneer paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(201, 'Onion paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(202, 'Poha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(203, 'Appam', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(204, 'Misal Pav', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(205, 'Vada pav', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(206, 'Poori bhaji', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(207, 'Sabudana vada', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(208, 'Sabudana khichdi', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(209, 'Cheese sandwich', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(210, 'Veg sandwich', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(211, 'Club sandwich ', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(212, 'Potato sandwich', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(213, 'Paneer sandwich', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(214, 'Mayonnaise sandwich', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(215, 'Rava chilla', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(216, 'Moong dal cheela', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(217, 'Oats cheela', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(218, 'Veg paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(219, 'Methi paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(220, 'Palak paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(221, 'Dalia', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(222, 'Bread pakora', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(223, 'Bread roll', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(224, 'Paneer bread roll ', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(225, 'Cheese bread roll', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(226, 'Dal kachori ', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(227, 'Cheese garlic toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(228, 'Corn cheese toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(229, 'Aloo kulcha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(230, 'Paneer kulcha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(231, 'Chole kulcha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(232, 'Gobi paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(233, 'Matar paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(234, 'Carrot paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(235, 'Muli paratha', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(236, 'Oats dosa', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(237, 'Oats porridge', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(238, 'Oats cheela', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(239, 'Oats khichdi', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(240, 'Paneer Dosa', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(241, 'Butter Masala Dosa', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(242, 'Plain Dosa', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(243, 'Samosa', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(244, 'Aloo Kachori', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(245, 'Sweet Gujiya', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(246, 'Dhokla ', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(247, 'Bhajiya', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(248, 'Vegetable Oats', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(249, 'Matar Pulao', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(250, 'Thepla', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(251, 'Anda Bhurji', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(252, 'Paneer Bhurji', 1, '2024-06-22 14:56:06.000000', 1, 1, 6),
(253, 'Pork bharta', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(254, 'Chahou kheer', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(255, 'Aloo gobi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(256, 'Aloo tikki', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(257, 'Aloo matar', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(258, 'Aloo methi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(259, 'Aloo shimla mirch', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(260, 'Amriti with rabdi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(261, 'Amritsari fish', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(262, 'Amritsari kulcha', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(263, 'Daal Baati', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(264, 'Chana masala', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(265, 'Bhindi masala', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(266, 'Butter chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(267, 'Biryani', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(268, 'Chicken razala', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(269, 'Chapati', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(270, 'Chicken Tikka', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(271, 'Chicken Tikka masala', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(272, 'Dal makhani ', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(273, 'Dal fry', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(274, 'Dum aloo', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(275, 'French bean aloo', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(276, 'Gajar ka halwa', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(277, 'Gajar matar aloo', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(278, 'Gobhi matar', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(279, 'Imarti', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(280, 'Kadai paneer', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(281, 'Kadhi pakoda', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(282, 'Karela bharta', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(283, 'Kheer', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(284, 'Khichdi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(285, 'Kofta', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(286, 'Kulfi falooda', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(287, 'Lauki ke kofte', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(288, 'Lauki ki subji', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(289, 'Litti chokha', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(290, 'Misi roti', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(291, 'Mixed vegetable', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(292, 'Moong dal ka halwa', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(293, 'Murgh musallam', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(294, 'Mushroom do pyaza', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(295, 'Mushroom matar', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(296, 'Naan Roti', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(297, 'Navrattan korma', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(298, 'Palak paneer', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(299, 'Paneer butter masala', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(300, 'Paneer tikka masala', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(301, 'Phirni', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(302, 'Pindi chana', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(303, 'Rajma chaval', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(304, 'Rajma', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(305, 'Shahi paneer', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(306, 'Sooji halwa', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(307, 'Tandoori Chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(308, 'Tandoori Fish Tikka', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(309, 'Chicken 65', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(310, 'Idiappam', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(311, 'Obbattu', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(312, 'Kuzhakkattai', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(313, 'Sambar', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(314, 'Sevai', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(315, 'Uttapam', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(316, 'Wheat upma', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(317, 'Vada', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(318, 'Basundi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(319, 'Bombil fry', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(320, 'Dahi vada', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(321, 'Dum aaloo', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(322, 'Gulab jamun', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(323, 'Khandvi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(324, 'Dabeli', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(325, 'Dhokla', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(326, 'Laddu', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(327, 'Panipuri', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(328, 'Pav Bhaji', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(329, 'Puri Bhaji', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(330, 'Sabudana Khichadi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(331, 'Shankarpali', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(332, 'Shrikhand', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(333, 'Sohan papdi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(334, 'Veg Kolhapuri', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(335, 'Thepla', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(336, 'Churma Ladoo', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(337, 'Khaman', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(338, 'Momo', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(339, 'Brown Rice', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(340, 'Mishti Doi ', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(341, 'Rosgulla', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(342, 'Shondesh', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(343, 'Aloo Paratha', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(344, 'Baingan Bharta', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(345, 'Egg Curry', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(346, 'Hyderabadi Biryani', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(347, 'Karimeen Fry', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(348, 'Lassi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(349, 'Murghir Bhorta', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(350, 'Paneer Makhni', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(351, 'Qubani Ka Meetha', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(352, 'Xacuti', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(353, 'Yakhni Biryani', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(354, 'Zafrani Golda Chingri', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(355, 'Butter Chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(356, 'Chaat Papri', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(357, 'Cham-Cham', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(358, 'Chana Dal', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(359, 'Chicken Biriyani', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(360, 'Chicken Tikka', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(361, 'Chili Chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(362, 'Lamb Kebabs', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(363, 'Maili Kofta', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(364, 'Masala Dosa', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(365, 'Masoor Dal', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(366, 'Medu Vada', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(367, 'Naan', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(368, 'Navratan Korma', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(369, 'Pulao', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(370, 'Papad', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(371, 'Raita', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(372, 'Ras Malai', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(373, 'Rogan Josh', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(374, 'Saag Paneer', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(375, 'Tandoori Chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(376, 'Vegetable Jalfrezi', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(377, 'Chole Bhature', 1, '2024-06-22 14:56:06.000000', 1, 3, 6),
(378, 'Pork bharta', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(379, 'Chahou kheer', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(380, 'Aloo gobi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(381, 'Aloo tikki', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(382, 'Aloo matar', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(383, 'Aloo methi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(384, 'Aloo shimla mirch', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(385, 'Amriti with rabdi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(386, 'Amritsari fish', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(387, 'Amritsari kulcha', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(388, 'Daal Baati', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(389, 'Chana masala', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(390, 'Bhindi masala', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(391, 'Butter chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(392, 'Biryani', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(393, 'Chicken razala', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(394, 'Chapati', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(395, 'Chicken Tikka', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(396, 'Chicken Tikka masala', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(397, 'Dal makhani ', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(398, 'Dal fry', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(399, 'Dum aloo', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(400, 'French bean aloo', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(401, 'Gajar ka halwa', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(402, 'Gajar matar aloo', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(403, 'Gobhi matar', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(404, 'Imarti', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(405, 'Kadai paneer', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(406, 'Kadhi pakoda', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(407, 'Karela bharta', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(408, 'Kheer', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(409, 'Khichdi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(410, 'Kofta', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(411, 'Kulfi falooda', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(412, 'Lauki ke kofte', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(413, 'Lauki ki subji', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(414, 'Litti chokha', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(415, 'Misi roti', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(416, 'Mixed vegetable', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(417, 'Moong dal ka halwa', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(418, 'Murgh musallam', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(419, 'Mushroom do pyaza', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(420, 'Mushroom matar', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(421, 'Naan Roti', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(422, 'Navrattan korma', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(423, 'Palak paneer', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(424, 'Paneer butter masala', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(425, 'Paneer tikka masala', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(426, 'Phirni', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(427, 'Pindi chana', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(428, 'Rajma chaval', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(429, 'Rajma', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(430, 'Shahi paneer', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(431, 'Sooji halwa', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(432, 'Tandoori Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(433, 'Tandoori Fish Tikka', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(434, 'Chicken 65', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(435, 'Idiappam', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(436, 'Obbattu', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(437, 'Kuzhakkattai', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(438, 'Sambar', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(439, 'Sevai', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(440, 'Uttapam', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(441, 'Wheat upma', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(442, 'Vada', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(443, 'Basundi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(444, 'Bombil fry', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(445, 'Dahi vada', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(446, 'Dum aaloo', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(447, 'Gulab jamun', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(448, 'Khandvi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(449, 'Dabeli', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(450, 'Dhokla', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(451, 'Laddu', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(452, 'Panipuri', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(453, 'Pav Bhaji', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(454, 'Puri Bhaji', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(455, 'Sabudana Khichadi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(456, 'Shankarpali', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(457, 'Shrikhand', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(458, 'Sohan papdi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(459, 'Veg Kolhapuri', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(460, 'Thepla', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(461, 'Churma Ladoo', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(462, 'Khaman', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(463, 'Momo', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(464, 'Brown Rice', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(465, 'Mishti Doi ', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(466, 'Rosgulla', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(467, 'Shondesh', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(468, 'Aloo Paratha', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(469, 'Baingan Bharta', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(470, 'Egg Curry', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(471, 'Hyderabadi Biryani', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(472, 'Karimeen Fry', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(473, 'Lassi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(474, 'Murghir Bhorta', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(475, 'Paneer Makhni', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(476, 'Qubani Ka Meetha', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(477, 'Xacuti', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(478, 'Yakhni Biryani', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(479, 'Zafrani Golda Chingri', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(480, 'Butter Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(481, 'Chaat Papri', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(482, 'Cham-Cham', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(483, 'Chana Dal', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(484, 'Chicken Biriyani', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(485, 'Chicken Tikka', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(486, 'Chili Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(487, 'Lamb Kebabs', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(488, 'Maili Kofta', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(489, 'Masala Dosa', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(490, 'Masoor Dal', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(491, 'Medu Vada', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(492, 'Naan', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(493, 'Navratan Korma', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(494, 'Pulao', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(495, 'Papad', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(496, 'Raita', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(497, 'Ras Malai', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(498, 'Rogan Josh', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(499, 'Saag Paneer', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(500, 'Tandoori Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(501, 'Vegetable Jalfrezi', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(502, 'Chole Bhature', 1, '2024-06-22 14:56:06.000000', 1, 5, 6),
(503, 'Aloo Paratha', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(504, 'Paneer paratha', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(505, 'Methi paratha', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(506, 'Gobi paratha', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(507, 'Mooli Paratha', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(508, 'Poha', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(509, 'Curd Rice', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(510, 'Idli Sambhar', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(511, 'Uttapam', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(512, 'Masala Dosa', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(513, 'Paneer Dosa', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(514, 'Plain Dosa', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(515, 'Butter Masala Dosa', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(516, 'Raj Kachori', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(517, 'Puri Sabzi', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(518, 'Chole Bhatura', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(519, 'Uggani', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(520, 'Perugu Garelu', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(521, 'Thepla', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(522, 'Oats', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(523, 'Puttu', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(524, 'Thukpa', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(525, 'Pav Bhaji', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(526, 'Khandvi ', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(527, 'Khichdi', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(528, 'Daal Baati', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(529, 'Daal Chawal', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(530, 'Veg Biryani', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(531, 'Chicken Biriyani', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(532, 'Chole kulcha', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(533, 'Paneer kulcha', 1, '2024-06-22 14:56:06.000000', 1, 2, 6),
(534, 'Vada pav', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(535, 'Cheese sandwich', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(536, 'Paneer sandwich', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(537, 'Veg Grilled Sandwich', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(538, 'Aloo Tikki', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(539, 'Cupcakes', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(540, 'Masala Papad', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(541, 'Fried Rice', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(542, 'Fish Tikki', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(543, 'Papadi Chaat', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(544, 'Chicken Keema', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(545, 'Spring Rolls', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(546, 'Banana Shake', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(547, 'Strawberry Shake', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(548, 'Mango Shake', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(549, 'Oreo Cookie Shake', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(550, 'Chocolate Shake', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(551, 'Pineapple Shake', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(552, 'Mojito', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(553, 'Veg Burger', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(554, 'Cheese Burger', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(555, 'Chicken Burger', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(556, 'Cheese Pipes', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(557, 'Butter Caramel Popcorn', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(558, 'La Pizza', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(559, 'Maggi', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(560, 'Plain Dosa', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(561, 'Masala Dosa', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(562, 'Paneer Dosa', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(563, 'Chicken Dosa', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(564, 'Mushroom & Corn Dosa', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(565, 'Hotdog', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(566, 'Veg Patty', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(567, 'Chicken Patty', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(568, 'Pav Bhaji', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(569, 'Papari Chaat', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(570, 'Donut', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(571, 'Cookies', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(572, 'Coffee', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(573, 'Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(574, 'Cold Coffee', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(575, 'Green Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 6),
(576, 'Italian Brunch Torte', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(577, 'Italian Baked Eggs & Sausage', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(578, 'Italian Cloud Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(579, 'Italian Sausage Egg Bake', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(580, 'Veggie Sausage Strata', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(581, 'Calico Pepper Frittata', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(582, 'Mascarpone-Mushroom Frittata Stack', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(583, 'Frittata Florentine', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(584, 'Individual Italian Frittatas', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(585, 'Tiramisu Crepes', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(586, 'Italian Brunch Bake', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(587, 'Italian Apricot-Pancetta Strata', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(588, 'Pepper and Fresh Herb Frittata', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(589, 'Breakfast Bread Bowls', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(590, 'Italian Eggs Benedict with Pesto Holland', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(591, 'Italian Pizza Omelet', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(592, 'Italian Tomato Onion Quiche', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(593, 'Italian Egg Bake', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(594, 'Arugula & Mushroom Breakfast Pizza', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(595, 'Italian Garden Frittata', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(596, 'Breakfast Skewers', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(597, 'Croissant/Cornetto', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(598, 'Biscotti', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(599, 'Brioche', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(600, 'Bread and Cheese', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(601, 'CORNETTO', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(602, 'ESPRESSO MACCHIATO', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(603, 'Italian Cappuccino', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(604, 'Casserole', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(605, 'Italian Pizza', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(606, 'Italian Pasta', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(607, 'Pastries', 1, '2024-06-22 14:56:06.000000', 1, 1, 7),
(608, 'Caprese Salad with Pesto Sauce', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(609, 'Panzenella', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(610, 'Bruschetta', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(611, 'Focaccia Bread', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(612, 'Pasta Carbonara', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(613, 'Margherita Pizza', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(614, 'Mushroom Risotto', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(615, 'Pasta Con Pomodoro E Basilico', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(616, 'Tiramisu  cake', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(617, 'Lasagna', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(618, 'Pistachio Panna Cotta', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(619, 'Panettone', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(620, 'Italian Pizza', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(621, 'Bottarga', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(622, 'Fiorentina Steak', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(623, 'Ribollita', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(624, 'Polenta', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(625, 'Ossobuco alla Milanese', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(626, 'Carbonara', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(627, 'Truffles', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(628, 'Focaccia', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(629, 'Arancini & Suppl', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(630, 'Gelato', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(631, 'Tiramisu', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(632, 'Digestivo', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(633, 'Pizza Napoletana', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(634, 'Spaghetti alla Carbonara', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(635, 'Cicchetti', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(636, 'Caponata', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(637, 'Burrata', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(638, 'Rustic Marinara Sauce', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(639, 'Saltimbocca di Pollo alla Romana', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(640, 'Authentic Tortellini Soup', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(641, 'Baked Ziti with Sausage', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(642, 'Gnocchi with Tomato Sauce and Mozzarella', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(643, 'Bistecca alla Fiorentina', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(644, 'Cacio e Pepe Lasagna', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(645, 'Pork Saltimbocca', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(646, 'Italian Baked Eggplant with Parmesan', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(647, 'Pork Agrodolce', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(648, 'Pasta Fazool', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(649, 'Beefy Baked Ravioli', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(650, 'Bucatini All\'Amatriciana', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(651, 'Tuscan Fish Stew', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(652, 'Shrimp Scampi with Pasta', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(653, 'Arancini', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(654, 'Prosciutto', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(655, 'Saltimbocca', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(656, 'Torrone', 1, '2024-06-22 14:56:06.000000', 1, 3, 7),
(657, 'Caprese Salad with Pesto Sauce', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(658, 'Panzenella', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(659, 'Bruschetta', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(660, 'Focaccia Bread', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(661, 'Pasta Carbonara', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(662, 'Margherita Pizza', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(663, 'Mushroom Risotto', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(664, 'Pasta Con Pomodoro E Basilico', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(665, 'Tiramisu  cake', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(666, 'Lasagna', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(667, 'Pistachio Panna Cotta', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(668, 'Panettone', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(669, 'Italian Pizza', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(670, 'Bottarga', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(671, 'Fiorentina Steak', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(672, 'Ribollita', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(673, 'Polenta', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(674, 'Ossobuco alla Milanese', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(675, 'Carbonara', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(676, 'Truffles', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(677, 'Focaccia', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(678, 'Arancini & Suppl', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(679, 'Gelato', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(680, 'Tiramisu', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(681, 'Digestivo', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(682, 'Pizza Napoletana', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(683, 'Spaghetti alla Carbonara', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(684, 'Cicchetti', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(685, 'Caponata', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(686, 'Burrata', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(687, 'Rustic Marinara Sauce', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(688, 'Saltimbocca di Pollo alla Romana', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(689, 'Authentic Tortellini Soup', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(690, 'Baked Ziti with Sausage', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(691, 'Gnocchi with Tomato Sauce and Mozzarella', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(692, 'Bistecca alla Fiorentina', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(693, 'Cacio e Pepe Lasagna', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(694, 'Pork Saltimbocca', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(695, 'Italian Baked Eggplant with Parmesan', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(696, 'Pork Agrodolce', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(697, 'Pasta Fazool', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(698, 'Beefy Baked Ravioli', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(699, 'Bucatini All\'Amatriciana', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(700, 'Tuscan Fish Stew', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(701, 'Shrimp Scampi with Pasta', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(702, 'Arancini', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(703, 'Prosciutto', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(704, 'Saltimbocca', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(705, 'Torrone', 1, '2024-06-22 14:56:06.000000', 1, 5, 7),
(706, 'Ginger Fruit Salad', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(707, 'Fazzoletto', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(708, 'Spinach Salad', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(709, 'Pancetta', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(710, 'Eggs', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(711, 'Pistacchio Pound Cake ', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(712, 'Ciambella', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(713, 'Coffee', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(714, 'Bye Bye Berlusconi', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(715, 'Farmer?s Market Cocktail', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(716, 'Pomegranate Cocktail', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(717, 'Frittatas', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(718, 'Breakfast Pancakes', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(719, 'Cornetti', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(720, 'Crespelle', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(721, 'French Toast with Berries', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(722, 'Italian Easter', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(723, 'Italian Egg', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(724, 'Meat-Filled Omelet Roll', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(725, 'Salmon Quiche', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(726, 'Perfect Plum Muffins', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(727, 'Roasted Red Peppers', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(728, 'Burrata Filled Tomatoes', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(729, 'Bruschetta', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(730, 'Tuna and Cannellini Bean Salad', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(731, 'Insalata Caprese', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(732, 'Tuna', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(733, 'Tomato Salad', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(734, 'Basil Antipasto', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(735, 'Arancini', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(736, 'Sicilian Rice Balls', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(737, 'Breaded Artichoke Hearts', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(738, 'Bacon', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(739, 'Potato Frittata', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(740, 'Burrata', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(741, 'Prosciutto Focaccia', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(742, 'Potato Pizza', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(743, 'Mushroom', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(744, 'Olive Stuffed Artichokes', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(745, 'No Knead Bread', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(746, 'Affogato al Caffe', 1, '2024-06-22 14:56:06.000000', 1, 2, 7),
(747, 'Mozzarella Cheese', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(748, 'Cherry Tomatoes', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(749, 'Fresh Basil Leaves', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(750, 'Roasted Vegetables', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(751, 'Red & Green Grapes', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(752, 'Salami and Provolone Cheese', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(753, 'Sourdough Baguettes and Basil Pesto', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(754, 'Tiramisu Pudding with Lady Fingers', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(755, 'Lemon Basil Ice Water', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(756, 'Chianti & Brunello Red Wine', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(757, 'Pinot Grigio & Vernaccia White Wine', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(758, 'Prosecco (Italian Sparkling Wine)', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(759, 'Coffee', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(760, 'Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(761, 'Espresso', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(762, 'Antipasti Platter including olives', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(763, 'fresh fennel', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(764, 'sliced yellow and red bell peppers', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(765, 'baby carrots', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(766, 'marinated mushrooms', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(767, 'Roasted Pepper Timbales', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(768, 'Eggplant Roll-Ups', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(769, 'Artichoke Heart Focaccia', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(770, 'Caprese Salads', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(771, 'Pistachio and Golden Raisin Biscotti', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(772, 'Amaretti', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(773, 'Sammartini (Cuccidati) Spiced Fig Cookie', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(774, 'Almost Classic Cannoli', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(775, 'Panforte', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(776, 'Cassata alla Siciliana', 1, '2024-06-22 14:56:06.000000', 1, 4, 7),
(777, 'Cornmeal porridge', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(778, 'Steamed cabbage', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(779, 'Johnny cake with salt mackerel', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(780, 'Callaloo with ripe plantain', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(781, 'Saltfish ?flitters? fritters', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(782, 'Ackee and Saltfish', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(783, 'Jamaican hot chocolate tea', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(784, 'fried dumplings', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(785, 'hardo bread', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(786, 'Coco Bread', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(787, 'Moist Banana Cake', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(788, 'Condensed Milk Cake', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(789, 'Plantain Pancake', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(790, 'mint tea', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(791, 'Sweet Plantain Hash & Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(792, 'Jamaican Easter Spice Bun', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(793, 'Caribbean Banana Nut Bread', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(794, 'Caribbean Banana Fritters', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(795, 'Sorrel Drink', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(796, 'Coconut Drop Cookie', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(797, 'Banana Mango Muffin', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(798, 'Jamaican Carrot Juice', 1, '2024-06-22 14:56:06.000000', 1, 1, 3),
(799, 'Coucou and Flying Fish', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(800, 'Crab & Callaloo', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(801, 'Conch Fritters', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(802, 'Fungee and Pepperpot', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(803, 'Mofongo', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(804, 'La Bandera', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(805, 'Creole Bread', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(806, 'Stewed Salt Fish with Dumplings', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(807, 'Spicy Plantains', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(808, 'Jerk Chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(809, 'Goat Water', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(810, 'Patties', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(811, 'Ackee and Saltfish', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(812, 'Rice and Peas', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(813, 'Curry Goat', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(814, 'Sweet Potatoes', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(815, 'Saltfish Fritters', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(816, 'Coconut Drops', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(817, 'Flying Fish', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(818, 'Guinep or Spanish Lime', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(819, 'Callaloo', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(820, 'Breadfruit', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(821, 'Yam', 1, '2024-06-22 14:56:06.000000', 1, 3, 3);
INSERT INTO `api_dishes` (`id`, `name`, `is_active`, `created_at`, `created_by_id`, `meal_time_id`, `cuisine_id`) VALUES
(822, 'Roast pork', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(823, 'Pepperpot', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(824, 'Conch', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(825, 'Chicken with rice', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(826, 'Cuban sandwich', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(827, 'Goat stew', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(828, 'Papaya', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(829, 'Mangu with veggie meat', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(830, 'pumpkin tarkari', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(831, 'Coconut Bake', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(832, 'Planter\'s Punch', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(833, 'Curry Duck', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(834, 'Soursoap Ice Cream', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(835, 'Mannish Water', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(836, 'Chicken Souse', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(837, 'Diri ak pwa', 1, '2024-06-22 14:56:06.000000', 1, 3, 3),
(838, 'Makawoni au graten', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(839, 'Cassava Pone', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(840, 'Bouillon Soup', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(841, 'Fish Broth', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(842, 'Gizzada', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(843, 'Rum Punch', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(844, 'Flying Fish Cutters', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(845, 'Pudding and Souse', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(846, 'Peppered Shrimps', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(847, 'Oil Down', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(848, 'Curried Lobster', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(849, 'Nutmeg Ice Cream', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(850, 'Oxtail with Broad Beans', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(851, 'Curried Crab and Dumplings', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(852, 'Red Peas Soup', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(853, 'Brown Stew Fish', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(854, 'Ital Stew', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(855, 'Jamacian Mackerel Rundown', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(856, 'Doubles', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(857, 'Tchaka', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(858, 'Bake and Shark', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(859, 'Callaloo', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(860, 'Cracked Conch', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(861, 'Chimichurri Burger', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(862, 'Vaca Frita', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(863, 'Mangu with veggie meat', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(864, 'Pikliz', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(865, 'Flying Fish', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(866, 'Cojito', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(867, 'Escovitch Fish', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(868, 'Run Down', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(869, 'Haitian Patty', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(870, 'Griot', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(871, 'La Bandera Dominicana', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(872, 'Chivo Guisado', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(873, 'Tassot', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(874, 'Sweet Potato Pudding', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(875, 'Ackee and Saltfish', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(876, 'Conch Salad', 1, '2024-06-22 14:56:06.000000', 1, 5, 3),
(877, 'Chef Irie?s Jerk Turkey Frittata', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(878, 'Ripe Banana Fritters', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(879, 'Mangu', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(880, 'Ackee & Saltfish', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(881, 'Bakes', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(882, 'Escoveitch Fish', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(883, 'Jerk Chicken', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(884, 'Sweet Plantains', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(885, 'Codfish Fritters', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(886, 'Lobster Mac and Cheese', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(887, 'Butter Rum Waffles', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(888, 'Fried Escovitch', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(889, 'Curry Shrimp Scampi', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(890, 'Coconut Bake', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(891, 'Herb and Goat Cheese Omlette', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(892, 'Currant Rolls', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(893, 'Fry Bakes', 1, '2024-06-22 14:56:06.000000', 1, 2, 3),
(894, 'Jamacian Ginger & Scotch Bonnet Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(895, 'Jerk Chick With Raisin', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(896, 'Curry Mango', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(897, 'Pineapple Scones', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(898, 'Soursoup', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(899, 'Passion fruit cheese cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(900, 'Patties', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(901, 'Plaintains', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(902, 'Rice and Peas', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(903, 'Sweet Potatoes', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(904, 'Breadfruit', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(905, 'Baked scones', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(906, 'Jam n Cream', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(907, 'Jamacian Sandwiches', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(908, 'Goat Water', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(909, 'Cou-Cou', 1, '2024-06-22 14:56:06.000000', 1, 4, 3),
(910, 'Yogurt with Honey and Fresh Fruit', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(911, 'Feta, Veggies and Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(912, 'Greek Olive Bread', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(913, 'Pita Bread with Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(914, 'Spanakopita', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(915, 'Fresh Fruit', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(916, 'Pita Dippers', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(917, 'Pitas', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(918, 'Paximadi', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(919, 'Toast with Spoon Sweets', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(920, 'Avocado And Feta Toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(921, 'Greek Almond Torte', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(922, 'Greek Yogurt Pancakes', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(923, 'Greek Breakfast Wrap', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(924, 'Feta Cheese Pancake', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(925, 'Greek Style Omelette', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(926, 'The Greek Scramble', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(927, 'Epirot pies', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(928, 'Dakos', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(929, 'Taramosalata', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(930, 'Tzatziki', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(931, 'Tirokafteri', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(932, 'Skordalia', 1, '2024-06-22 14:56:06.000000', 1, 1, 5),
(933, 'Taramasalata', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(934, 'Olives and olive oil', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(935, 'Dolmades', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(936, 'Moussaka', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(937, 'Grilled meat', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(938, 'Fresh fish', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(939, 'Courgette balls', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(940, 'Octopus', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(941, 'Feta & cheeses', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(942, 'Honey & baklava', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(943, 'Amygdalota', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(944, 'Baklava', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(945, 'Bougatsa', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(946, 'Courgette Balls', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(947, 'Dolmadakia', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(948, 'Tomatokeftedes', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(949, 'Ellinikos', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(950, 'Greek Fava Dip', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(951, 'Feta Me Meli', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(952, 'Frappe', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(953, 'Galaktoboureko', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(954, 'Greek Salad', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(955, 'Gyros', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(956, 'Halvas', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(957, 'Kataifi', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(958, 'Keftethes', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(959, 'Loukoumades', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(960, 'Pasteli', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(961, 'Pastitsio', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(962, 'Revani', 1, '2024-06-22 14:56:06.000000', 1, 3, 5),
(963, 'Saganaki ? Fried Cheese', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(964, 'Souvlaki', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(965, 'Spanikopita', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(966, 'Tiropita', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(967, 'Tzatziki', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(968, 'Yiaourti Me Meli', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(969, 'Yemista', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(970, 'Taramasalata', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(971, 'Baklava', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(972, 'Horta Vrasta - Boiled Leafy Greens', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(973, 'Chicken Soup Avgolemono', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(974, 'Tzatziki - Creamy Cucumber-Yogurt Dip', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(975, 'Pastitsio', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(976, 'Custard Phyllo Pie', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(977, 'Classic White Bean Soup', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(978, 'Spinach Pie', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(979, 'Youvetsi', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(980, 'Dolmathakia', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(981, 'Fassolakia Lathera', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(982, 'Melomakarona', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(983, 'Pork Souvlaki', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(984, 'Domates Yemistes', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(985, 'Tsoureki', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(986, 'Keftethes', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(987, 'Kourabiethes', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(988, 'Tiropites', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(989, 'Kafenio', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(990, 'Brizola', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(991, 'Kali orexi', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(992, 'Kotopoulo', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(993, 'Lathera', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(994, 'Octapodi', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(995, 'Tapsi', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(996, 'Yiaourti', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(997, 'Taverna', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(998, 'Avgolemono', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(999, 'Fasolada', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(1000, 'Psarosoupa', 1, '2024-06-22 14:56:06.000000', 1, 5, 5),
(1001, 'Falafel Sandwich', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1002, 'Greek Honey with Yogurt and Pistachios', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1003, 'Tzatziki', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1004, 'Meatballs with Tomatoes and Olives', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1005, 'Baklava with Honey and Pistachios', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1006, 'Spanakopita: Greek Spinach Pie', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1007, 'Stuffed Grape Leaves', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1008, 'Mezze tray', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1009, 'feta and pickled artichokes', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1010, 'Vegetarian egg casserole', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1011, 'Soutzoukakia meatballs', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1012, 'Baklava', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1013, 'Greek Honey Cake', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1014, 'Egyptian Butter Cookies', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1015, 'Party Platters', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1016, 'Simple Cheese Board', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1017, 'Loaded Baked Brie', 1, '2024-06-22 14:56:06.000000', 1, 2, 5),
(1018, 'Green Bean Criddle Cakes', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1019, 'Green Tea Chiffon Cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1020, 'Herbal chicken salad sandwiches', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1021, 'Raspberry and rose water cream tart', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1022, 'Lemon roasted chicken salad wrap', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1023, 'Spring pea soup with mint', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1024, 'Strawberry lime stuffed cupcakes', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1025, 'Swedish princess cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1026, 'Spicy lamb lollypops', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1027, 'Cheese and onion quiche', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1028, 'Smoked salmon tea sandwiches', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1029, 'Gourmet sausage rolls', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1030, 'Roast pork', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1031, 'Sunday rib roast', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1032, 'mini key lime pies in a jar', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1033, 'Veggie lovers club sandwich', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1034, 'Cheese and spinach puff pastry', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1035, 'Vanilla and Cocoa Sponge Cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1036, 'Cypriot Flaouna', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1037, 'Greek Yogurt with Honey and Walnuts', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1038, 'Extra syrupy Tulumba', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1039, 'Samali', 1, '2024-06-22 14:56:06.000000', 1, 4, 5),
(1040, 'Crumpets', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1041, 'Marmite on toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1042, 'Black pudding', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1043, 'Proper pancakes', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1044, 'Scotch pancakes', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1045, 'Proper bacon', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1046, 'Beans on toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1047, 'Brown sauce', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1048, 'milk', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1049, 'Bubble and squeak', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1050, 'The fry-up', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1051, 'Greggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1052, 'Fried egg', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1053, 'Sausage', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1054, 'sliced fried red tomatoes', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1055, 'baked beans', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1056, 'fresh sauted mushrooms', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1057, 'fried or roast potatoes', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1058, 'fried bread', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1059, 'stewed prunes', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1060, 'orange juice', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1061, 'buttered toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1062, 'Filter Coffee/Tea', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1063, 'Tropical Fruit Slices', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1064, 'Porridges and Cereals', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1065, 'Baked Croissants', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1066, 'Muffins', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1067, 'Danish Pastries', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1068, 'Belgium Waffles', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1069, 'Scrambled Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1070, 'Omelette', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1071, 'Crispy Streaky Bacon', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1072, 'Chicken and Beef Sausages', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1073, 'Grilled Tomato', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1074, 'Corn Bread', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1075, 'Brown Toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1076, 'Ham and Cheese Platter', 1, '2024-06-22 14:56:06.000000', 1, 1, 2),
(1077, 'Fish and Chips', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1078, 'The Great English Sunday Roast!', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1079, 'Bangers & Mash', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1080, 'Yorkshire Pudding', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1081, 'Yorkshire Tea', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1082, 'Toad in the Hole', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1083, 'Steak and Kidney Pie', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1084, 'Cornish Pasty', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1085, 'Spotted Dick', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1086, 'Shepherd\'s Pie', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1087, 'Cottage Pie', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1088, 'Bubble and Squeak', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1089, 'Black Pudding', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1090, 'Rhubarb Crumble', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1091, 'Trifle', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1092, 'Bread and Butter Pudding', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1093, 'Crumpet', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1094, 'Beans on Toast', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1095, 'Victoria Sponge Cake', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1096, 'Welsh Cake', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1097, 'Pork Pie', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1098, 'Scampi and Tartare', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1099, 'Scotch Eggs with curry mayo', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1100, 'Welsh Rarebit', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1101, 'Scones', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1102, 'Jam Roly Poly', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1103, 'Shortbread', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1104, 'Chicken Tikka Masala', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1105, 'Eton Mess', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1106, 'Bangers and Mash', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1107, 'Fish and Chips', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1108, 'Piccalilli', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1109, 'Stotty Cake', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1110, 'Berry Trifle', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1111, 'Pork Pies', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1112, 'Steamed Lemon Pudding with Treacle Sauce', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1113, 'Toad in the Hole', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1114, 'Beef Pasties with Mint', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1115, 'Strawberries With Clotted Cream', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1116, 'Tarragon Chicken Salad', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1117, 'Sticky Toffee Pudding', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1118, 'Vegetarian Shepherd\'s Pie', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1119, 'Raspberry Trifle', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1120, 'Welsh Rarebit', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1121, 'Tri-Berry Trifle', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1122, 'Earl Grey Tea Spritzer', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1123, 'Yorkshire Gingerbread', 1, '2024-06-22 14:56:06.000000', 1, 3, 2),
(1124, 'Fish and Chips', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1125, 'Bangers and Mash', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1126, 'Sunday Roast', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1127, 'Toad in the Hole', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1128, 'Shepherd?s Pie/Cottage Pie', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1129, 'Steak and Kidney Pie', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1130, 'Eccles cake', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1131, 'Black Pudding', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1132, 'Laverbread', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1133, 'Cullen skink', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1134, 'Scotch Eggs with curry mayo', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1135, 'Yokshire Pudding', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1136, 'Bread and Butter Pudding', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1137, 'Haggis', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1138, 'Lancashire hotpot', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1139, 'Bubble and Squeak', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1140, 'mincemeat pies', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1141, 'Savoury and fast kedgeree', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1142, 'Welsh rarebit', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1143, 'steak and ale pie', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1144, 'Eton mess', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1145, 'Welsh cawl', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1146, 'sausage rolls', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1147, 'Welsh cakes', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1148, 'rumbledethumps', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1149, 'Cornish pasties', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1150, 'Welsh meatballs', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1151, 'Buttery chicken tikka', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1152, 'jam roly-poly', 1, '2024-06-22 14:56:06.000000', 1, 5, 2),
(1153, 'homemade scones', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1154, 'Savoury and fast kedgeree', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1155, 'toad in the hole', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1156, 'Sunday roast', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1157, 'steak and ale pie', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1158, 'shepherd\'s pie', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1159, 'Lancashire Hotpot', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1160, 'Welsh meatballs', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1161, 'Buttery chicken tikka', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1162, 'Black Pudding', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1163, 'Fried egg', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1164, 'Omelette', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1165, 'Scrambled Eggs', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1166, 'Fruit Smoothie', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1167, 'Bread and Toast', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1168, 'Biscuits and gravy ', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1169, 'Coffee cake', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1170, 'Frittata', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1171, 'Pancake ', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1172, 'Pastry', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1173, 'Smoked fish', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1174, 'Waffle', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1175, 'Bloody Mary', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1176, 'Caesar', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1177, 'Spritzer', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1178, 'Coffee', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1179, 'Herbal tea', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1180, 'Orange juice', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1181, 'Cereal', 1, '2024-06-22 14:56:06.000000', 1, 2, 2),
(1182, 'Watercress Egg Salad Sandwich', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1183, 'Smoked Salmon', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1184, 'Cream Cheese Finger Sandwich', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1185, 'Classic British Scones', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1186, 'Scotch Eggs', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1187, 'Bakewell Tart', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1188, 'Cheese and Onion Flan', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1189, 'Yorkshire Curd Tart', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1190, 'Victoria Sponge Cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1191, 'Custard Pie', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1192, 'Pork Rillettes', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1193, 'Thumbprint Cookies', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1194, 'Corned Beef Egg Rolls', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1195, 'Traditional British Fruit Cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1196, 'Mini Cheesecakes', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1197, 'Mushroom Strudel', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1198, 'Candied Citrus Peels', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1199, 'Eccles Cakes', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1200, 'Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1201, 'Coffee', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1202, 'Orange juice', 1, '2024-06-22 14:56:06.000000', 1, 4, 2),
(1203, 'Joke', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1204, 'Khao tom', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1205, 'Tom luad moo', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1206, 'Khao kai jeow', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1207, 'Khao Neow Moo Ping', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1208, 'Gai yang', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1209, 'Patongo', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1210, 'Nam Tao Hoo', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1211, 'Dim Sum', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1212, 'Salapao', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1213, 'Khao neow sang kaya', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1214, 'Khanom Pang', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1215, 'Khanom', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1216, 'Kai luak', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1217, 'Mama', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1218, 'Fruit', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1219, 'Khao Rad Gaeng', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1220, 'Aeb pla nin', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1221, 'Khao yam', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1222, 'Khanom krok', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1223, 'Doughnuts', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1224, 'Omelette and rice', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1225, 'Roti canai', 1, '2024-06-22 14:56:06.000000', 1, 1, 11),
(1226, 'Tom Yum Goong (Spicy Thai Soup w/ Shrimp', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1227, 'Pad Thai', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1228, 'Gaeng Keow Wan Gai', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1229, 'Gaeng Daeng', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1230, 'Khao Phat or Khao Pad', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1231, 'Tom Kha Gai (Chicken Galangal Soup)', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1232, 'Khao Soi', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1233, 'Yum Pla Duk Foo', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1234, 'Som Tam', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1235, 'Pad Pak Boong', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1236, 'Pad Kee Mao', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1237, 'Khao Niew Mamuang', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1238, 'Gaeng Som', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1239, 'Tom Saap', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1240, 'Soup Neua (Beef Soup) ', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1241, 'Tom Jap Chai', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1242, 'Gaeng Tai Pla', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1243, 'Khanom Jeen Nam Ya Kati', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1244, 'Geang Keow Wan Gai ', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1245, 'Gaeng Hanglay', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1246, 'Hor Mok Ma Prow Awn', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1247, 'Panang Curry ', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1248, 'Pad Sataw', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1249, 'Massaman Gai ', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1250, 'Gai Pad Pongali', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1251, 'Gaeng Jued', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1252, 'Gaeng Taypo', 1, '2024-06-22 14:56:06.000000', 1, 3, 11),
(1253, 'Tom Yum Goong (Spicy Thai Soup w/ Shrimp', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1254, 'Pad Thai', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1255, 'Gaeng Daeng', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1256, 'Tom Kha Gai (Chicken Galangal Soup)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1257, 'Som Tam', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1258, 'Tom Saap', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1259, 'Panang Curry ', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1260, 'Gaeng Kee Lek ', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1261, 'Gaeng Om', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1262, 'Joke', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1263, 'Jim Jum', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1264, 'Cha Om Kai', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1265, 'Hoy Tod', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1266, 'Hoy Kraeng', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1267, 'Kai Jeow Moo Saap', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1268, 'Kai Yad Sai (Stuffed Omelet)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1269, 'Yam Kai Dao (Fried Egg Salad)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1270, 'Khao Neow Moo Ping (Grilled Pork with St', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1271, 'Sai Ooah (Northern Thai Sausage)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1272, 'Moo Satay (Pork Satay) ', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1273, 'Kua Kling (Dry Curry) ', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1274, 'Yam Kaw Moo Yang (Grilled Pork Neck Sala', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1275, 'Moo Dat Diew (Dried and Fried Pork)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1276, 'Gai Tod (Fried Chicken)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1277, 'Gai Yang (Grilled Chicken)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1278, 'Khao Ka Moo (Soy Sauce Pork)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1279, 'Khao Mok Gai (Rice and Chicken Biryani)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1280, 'Khao Moo Daeng (Red Pork w/ Red Sauce)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1281, 'Khao Man Gai (Chicken and Rice)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1282, 'Kkao Kluk Kaphi (Shrimp Paste Rice Salad', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1283, 'Pla Too Chuchee (Mackerel Curry)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1284, 'Pla Duk Yang (Grilled Catfish)', 1, '2024-06-22 14:56:06.000000', 1, 5, 11),
(1285, 'Thai mango chicken', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1286, 'mango frappe', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1287, 'Chicken with mango sause', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1288, 'Stir fried beef', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1289, 'Vietnam salad', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1290, 'Thai soup', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1291, 'Chicken thai', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1292, 'Prawn curry', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1293, 'Whole thai fish', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1294, 'Chicken spring rolls', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1295, 'Noodles roll', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1296, 'Pad thai Noodles', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1297, 'Dry thai chicken chilli', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1298, 'Thai green curry', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1299, 'Chicken fried rice', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1300, 'Thai fried fish', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1301, 'Chicken satay', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1302, 'Schezwan chicken', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1303, 'Thai beef curry', 1, '2024-06-22 14:56:06.000000', 1, 2, 11),
(1304, 'Steamed fish with curry paste', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1305, 'steamed rice-skin dumplings', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1306, 'grilled chicken', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1307, 'deep fried spring roll', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1308, 'Steamed Banana Cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1309, 'chocolate tart', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1310, 'Scone with clotted cream', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1311, 'coconut Crispy Rice Pudding', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1312, 'Thai Crispy Pancake', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1313, 'Crispy egg roll with black sesame', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1314, 'Mango sticky rice', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1315, 'sticky rice', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1316, 'coconut milk', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1317, 'Herbal Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1318, 'Coffee', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1319, 'Green Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1320, 'deep-fried prawn', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1321, 'vegetable rolls', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1322, 'Orange juice', 1, '2024-06-22 14:56:06.000000', 1, 4, 11),
(1323, 'Soybean Milk', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1324, 'Deep-Fried Dough Sticks', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1325, 'Steamed Buns Stuffed with Meat', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1326, 'Tofu Pudding', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1327, 'Wheat Noodles', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1328, 'Rice Noodles', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1329, 'Steamed Glutinous Rice', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1330, 'Rice Porridge or Congee', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1331, 'Wontons and Dumplings', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1332, 'Pancakes with Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1333, 'Dim Sum', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1334, 'Morning Tea', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1335, 'savory pan-fried buns', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1336, 'Noodles', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1337, 'Rice stick noodles', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1338, 'Beef pancakes', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1339, 'steamed dumplings', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1340, 'Congee', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1341, 'millet porridge with sesame paste', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1342, 'Scallion oil pancake', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1343, 'Tea eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 4),
(1344, 'Dim Sums', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1345, 'Hot and Sour Soup', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1346, 'Szechwan Chilli Chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1347, 'Quick Noodles', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1348, 'Spring Rolls', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1349, 'Stir Fried Tofu with Rice', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1350, 'Fried Rice', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1351, 'Chicken with Chestnuts', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1352, 'Honey Chilli Potato', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1353, 'Wok Tossed Veggies in Honey', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1354, 'Black Bean Glaze', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1355, 'Peri Peri Chicken Satay', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1356, 'Cantonese Chicken Soup', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1357, 'Veg Hakka Noodles', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1358, 'Vegetable Fried Rice', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1359, 'Garlic Soya Chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1360, 'Vegetable Manchow Soup', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1361, 'Chicken manchurian', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1362, 'Chilli fish', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1363, 'Chilli soya nuggets', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1364, 'Asian BBQ chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1365, 'Date pancakes', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1366, 'Chilli gobi', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1367, 'Vegetable chowmein', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1368, 'Okra with baby corn', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1369, 'Kapa maki', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1370, 'Vegetable salt and pepper', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1371, 'Garlic prawns', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1372, 'Noodles with mixed meat', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1373, 'Chicken lollipops', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1374, 'Boneless chilli chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1375, 'Vegetable manchurian', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1376, 'Szechwan style Chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1377, 'Sweet and sour chicken', 1, '2024-06-22 14:56:06.000000', 1, 3, 4),
(1378, 'Sweet and Sour Pork  ', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1379, 'Spring Rolls', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1380, 'Fried Shrimp and Cashew', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1381, 'Chow Mein', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1382, 'Dumplings', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1383, 'Egg-fried Rice', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1384, 'Kung Pao Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1385, 'Spicy Tofu', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1386, 'Won Ton Soup', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1387, 'Peking Roasted Duck', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1388, 'Hotpot', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1389, 'Sichuan Pork', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1390, 'Braised Pork Balls in Gravy', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1391, 'Shrimp with Vermicelli and Garlic', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1392, 'Steamed Vermicelli Rolls', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1393, 'Ma Po Tofu', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1394, 'Wontons', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1395, 'Yangchow Fried Rice', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1396, 'Chilli chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1397, 'Chicken Manchurian', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1398, 'Manchow Soup', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1399, 'Schezuan Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1400, 'Darsaan', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1401, 'Chop Suey', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1402, 'Hakka Noodles', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1403, 'Dimsums', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1404, 'Sweet Corn Soup', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1405, 'Chilli Paneer', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1406, 'Sweet And Sour Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1407, 'Sesame Honey Chilli Potatoes', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1408, 'Lemon Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1409, 'Hunan Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1410, 'Garlic Chicken', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1411, 'Chicken Lollipop', 1, '2024-06-22 14:56:06.000000', 1, 5, 4),
(1412, 'Deep-Fried Dough Sticks', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1413, 'Steamed Buns Stuffed with Meat', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1414, 'Tofu Pudding', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1415, 'Wheat Noodles', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1416, 'Rice Noodles', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1417, 'teamed Glutinous Rice', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1418, 'Rice Porridge', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1419, 'Wontons', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1420, 'Dumplings', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1421, 'Pancakes with Eggs', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1422, 'Dim Sum', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1423, 'Bread', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1424, 'Eggs', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1425, 'Bean Curd Jelly', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1426, 'Chow mein', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1427, 'Noodle soup', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1428, 'Fried Rice', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1429, 'Soy egg', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1430, 'Stir-fried tomato and scrambled eggs', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1431, 'Buddha\'s delight', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1432, 'Stir frying', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1433, 'Mooncake', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1434, 'Hot pot', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1435, 'Crispy fried chicken', 1, '2024-06-22 14:56:06.000000', 1, 2, 4),
(1436, 'Green tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1437, 'Spring Rolls', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1438, 'Chow Mein', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1439, 'Chilli Paneer', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1440, 'Chilli chicken', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1441, 'Dumplings', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1442, 'Dim sums', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1443, 'Szechwan Chilli Chicken', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1444, 'Stir Fried Tofu with Rice', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1445, 'Chicken with Chestnuts', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1446, 'Honey Chilli Potato', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1447, 'Peri Peri Chicken Satay', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1448, 'Veg Hakka Noodles', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1449, 'Black Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1450, 'Soybean Milk', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1451, 'Bubble Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1452, 'Ginseng Tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1453, 'Fruit Juice', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1454, 'Orange Juice', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1455, 'Banana Juice', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1456, 'Coconut Juice', 1, '2024-06-22 14:56:06.000000', 1, 4, 4),
(1457, 'Manakish', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1458, 'Sweet Manakish', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1459, 'The Labne w Jebne Breakfast', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1460, 'Knefe', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1461, 'Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1462, 'Mouajanet', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1463, 'Kaak with Picon', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1464, 'Foul and Balila with the works', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1465, 'Lahm Baajine', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1466, 'Man\'oushe', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1467, 'Foul and Hommos', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1468, 'Cheese', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1469, 'Liver Tartar', 1, '2024-06-22 14:56:06.000000', 1, 1, 9),
(1470, 'Kibbeh', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1471, 'Kafta', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1472, 'Kanafeh', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1473, 'Hummus', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1474, 'Rice Pilaf', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1475, 'Fattoush', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1476, 'Manakish', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1477, 'Tabbouleh', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1478, 'Sfeeha', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1479, 'Baba Ghanoush', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1480, 'Shish Taouk', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1481, 'Kibbe Nayeh', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1482, 'Falafel', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1483, 'Shawarma', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1484, 'Kofta', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1485, 'Baklava', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1486, 'Wine and Arak', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1487, 'Ful Meddamas', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1488, 'Aryan', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1489, 'Jallab', 1, '2024-06-22 14:56:06.000000', 1, 3, 9),
(1490, 'Roasted nuts', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1491, 'Balila', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1492, 'Fattoush', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1493, 'Fried cauliflower', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1494, 'Falafel ', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1495, 'Fried eggplant', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1496, 'Fatteh ', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1497, 'Hummus ', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1498, 'Halva ', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1499, 'Kunafi ', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1500, 'Kibbeh', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1501, 'Kofta ', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1502, 'Labneh', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1503, 'Manaeesh', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1504, 'Shanklish ', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1505, 'Tabbouleh', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1506, 'Tahini', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1507, 'Toum', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1508, 'Arabic coffee', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1509, 'Lebanese wine', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1510, 'Jallab', 1, '2024-06-22 14:56:06.000000', 1, 5, 9),
(1511, 'Manakish', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1512, 'Knefe ', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1513, 'Eggs', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1514, 'Mouajanet', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1515, 'Kaak with Picon', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1516, 'Foul and Balila', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1517, 'Lahm Baajine', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1518, 'Salmon and Eggs', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1519, 'Kofta ', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1520, 'Kunafi ', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1521, 'Kibbeh', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1522, 'Manaeesh', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1523, 'Fattoush', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1524, 'Kibbe Nayeh', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1525, 'Liver Tartar', 1, '2024-06-22 14:56:06.000000', 1, 2, 9),
(1526, 'Ahweh Baida', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1527, 'Ajeen', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1528, 'Awamat', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1529, 'Arnabeet Mekli', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1530, 'Baklawa', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1531, 'Barazek', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1532, 'Bathinjan Moutabal', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1533, 'Bouza bi Haleeb', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1534, 'Falafel', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1535, 'Fattet Hommos', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1536, 'Kafta bil Sanieh', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1537, 'Halawa', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1538, 'Jellab', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1539, 'Kebbe bil Sanieh', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1540, 'Loubya bi Zayt', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1541, 'Makhlouta', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1542, 'Riz maa Djej', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1543, 'Sahlab', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1544, 'Sharab el Wared', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1545, 'Tabbouleh', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1546, 'Tahini', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1547, 'Taratour', 1, '2024-06-22 14:56:06.000000', 1, 4, 9),
(1548, 'Caprese Avocado Toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1549, 'Eggs with Summer Tomatoes', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1550, 'Crispy White Beans with Greens and Poach', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1551, 'Breakfast Grain Salad with Blueberries', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1552, 'Spinach Feta Wraps', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1553, 'Avocado and Egg Breakfast Pizza', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1554, 'Spinach Artichoke Frittata', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1555, 'Mediterranean Breakfast Pita', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1556, 'Muesli', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1557, 'Mediterranean Breakfast Salad', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1558, 'Smoked Salmon', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1559, 'Poached Eggs on Toast', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1560, 'Honey Almond Ricotta', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1561, 'Mediterranean Egg Cups', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1562, 'Low-Carb Baked Eggs With Avocado', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1563, 'Sandwich With Roasted Tomatoes', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1564, 'Greek Yogurt Pancakes', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1565, 'Mediterranean Feta', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1566, 'Quinoa Egg Muffins', 1, '2024-06-22 14:56:06.000000', 1, 1, 10);
INSERT INTO `api_dishes` (`id`, `name`, `is_active`, `created_at`, `created_by_id`, `meal_time_id`, `cuisine_id`) VALUES
(1567, 'Mediterranean Eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1568, 'oatmeal', 1, '2024-06-22 14:56:06.000000', 1, 1, 10),
(1569, 'Greek-Style Baked Cod with Lemon and Gar', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1570, 'Chicken Shawarma ', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1571, 'Moroccan Vegetable Tagine', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1572, 'Easy Seafood Paella', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1573, 'Spanakopita ', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1574, 'Chicken Souvlaki', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1575, 'Briam', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1576, 'Grilled Kofta Kebabs', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1577, 'Avgolemono Soup', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1578, 'Italian Baked Chicken ', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1579, 'Moroccan Lamb Stew', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1580, 'Falafel', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1581, 'Shakshuka', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1582, 'Greek Chicken Gyros', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1583, 'Greek Baked Meatballs with Tomato Sauce', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1584, 'Italian Roasted Vegetables', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1585, 'Greek Lemon Rice', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1586, 'Mediterranean 3-Bean Salad', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1587, 'Tabouli', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1588, 'Mediterranean Watermelon Salad', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1589, 'Greek Salad', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1590, 'Lazy 3-Ingredient Mediterranean Salad', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1591, 'Hummus from Scratch', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1592, 'Greek Tzatziki Sauce', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1593, 'Tahini Sauce', 1, '2024-06-22 14:56:06.000000', 1, 3, 10),
(1594, 'Greek Salad', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1595, 'Armenian Losh Kebab', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1596, 'Black Eyed Peas with Fresh Dill', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1597, 'Egyptian Lentils with Rice and Pasta', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1598, 'Eggplant', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1599, 'Tortilla Espa?ola', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1600, 'Shakshuka (Eggs Poached in Spicy Tomato ', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1601, 'Briam ? Baked Vegetables in Olive Oil', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1602, 'Eggplant Parmesan with Prosciutto ', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1603, 'Tabouli (Lebanese Bulgur and Parsley Sal', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1604, 'Lebanese Hummus', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1605, 'Grilled Swordfish with Lemon ', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1606, 'Orange Lemon Potatoes ', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1607, 'Falafel', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1608, 'Spiced Moroccan Meatballs', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1609, 'Chickpea and Spinach Salad with Avocado', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1610, 'Beef Cacciatore', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1611, 'Cinnamon Walnut Apple Cake', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1612, 'Anatolian Flat Breads', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1613, 'Shrimp with Feta and Tomatoes', 1, '2024-06-22 14:56:06.000000', 1, 5, 10),
(1614, 'Cheesy Mediterranean Scramble', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1615, 'Mediterranean Brunch Bake', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1616, 'Mediterranean scrambled Eggs', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1617, 'Mediterranean Breakfast Pitas', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1618, 'Mediterranean Burrito', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1619, 'Mediterranean Feta', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1620, 'Quinoa Egg Muffins', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1621, 'Frittata with Tomato Salad', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1622, 'Spanish Potato Omelet', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1623, 'Breakfast Ham and Egg Cups', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1624, 'Frico Fried Egg and Cheese Sandwiches', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1625, 'Blackberry-Ginger Overnight Bulgur', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1626, 'Asparagus and Prosciutto Frittata', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1627, 'Greek Vegetable and Feta Cheese Pie', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1628, 'Kale-Goat Cheese Frittata', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1629, 'Oatmeal with Goat Cheese', 1, '2024-06-22 14:56:06.000000', 1, 2, 10),
(1630, 'Horlicks Loaf Cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1631, 'tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1632, 'Carrot cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1633, 'Chocolate fudge cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1634, 'Lemon drizzle cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1635, 'Banana bread', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1636, 'Battenburg cake', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1637, 'Blackberry-Ginger Overnight Bulgur', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1638, 'Frico Fried Egg and Cheese Sandwiches', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1639, 'Asparagus and Prosciutto Frittata', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1640, 'Kale-Goat Cheese Frittata', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1641, 'Mediterranean Brunch Bake', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1642, 'Mediterranean scrambled Eggs', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1643, 'Oatmeal with Goat Cheese', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1644, 'Mediterranean Feta', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1645, 'Mediterranean Burrito', 1, '2024-06-22 14:56:06.000000', 1, 4, 10),
(1646, 'Steamed Rice (Gohan)', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1647, 'Miso Soup (Miso Shiru)', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1648, 'Fermented Soy Beans (Natto)', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1649, 'Grilled Fish (Yakizakana)', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1650, 'Pickled Vegetables (Tsukemono)', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1651, 'Seasoned Dried Seaweed (Nori)', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1652, 'Vegetable Side Dishes (Kobachi)', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1653, 'Japanese tea', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1654, 'raw eggs', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1655, 'Miso Shiru', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1656, 'Sushi & Sashimi', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1657, 'Tamago Kake Gohan', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1658, 'Grilled fish', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1659, 'Mixed rice with either ikura or uni', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1660, 'Pickled vegetable salad', 1, '2024-06-22 14:56:06.000000', 1, 1, 8),
(1661, 'Sushi & Sashimi', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1662, 'Ramen', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1663, 'Tempura', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1664, 'Kare-Raisu (Curry Rice)', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1665, 'Okonomiyaki ', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1666, 'Shabu Shabu', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1667, 'Miso Soup', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1668, 'Yakitori', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1669, 'Onigiri', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1670, 'Udon', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1671, 'Soba', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1672, 'Gyudon', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1673, 'Matcha and Sweets', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1674, 'Gyoza', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1675, 'Makizushi', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1676, 'Tofu', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1677, 'Sashimi', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1678, 'Donburi', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1679, 'Oden', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1680, 'Tamagoyaki', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1681, 'Tonkatsu', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1682, 'Kashipan', 1, '2024-06-22 14:56:06.000000', 1, 3, 8),
(1683, 'Sukiyaki', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1684, 'Miso Soup', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1685, 'Okonomiyaki', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1686, 'Mentaiko', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1687, 'Nikujaga', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1688, 'Curry Rice', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1689, 'Unagi no Kabayaki', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1690, 'Shabu Shabu', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1691, 'Onigiri', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1692, 'Gyoza', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1693, 'Takoyaki', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1694, 'Kaiseki Ryori', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1695, 'Edamame', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1696, 'Yakisoba', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1697, 'Chawanmushi', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1698, 'Wagashi', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1699, 'Ramen', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1700, 'Tempura', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1701, 'Grilled fish', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1702, 'Yakitori', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1703, 'Kare-Raisu (Curry Rice)', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1704, 'Sushi & Sashimi', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1705, 'Soba', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1706, 'Tonkatsu', 1, '2024-06-22 14:56:06.000000', 1, 5, 8),
(1707, 'Gohan', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1708, 'Miso Shiru', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1709, 'Natto', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1710, 'Vegetable Side Dishes (Kobachi)', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1711, 'Steamed Rice (Gohan)', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1712, 'Miso Soup (Miso Shiru)', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1713, 'Fermented Soy Beans (Natto)', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1714, 'Grilled Fish (Yakizakana)', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1715, 'Pickled Vegetables (Tsukemono)', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1716, 'Sushi & Sashimi', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1717, 'Ramen', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1718, 'Tempura', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1719, 'Kare-Raisu (Curry Rice)', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1720, 'Okonomiyaki ', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1721, 'Shabu Shabu', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1722, 'Miso Soup', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1723, 'Yakitori', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1724, 'Onigiri', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1725, 'Udon', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1726, 'Soba', 1, '2024-06-22 14:56:06.000000', 1, 2, 8),
(1727, 'Spider rolls', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1728, 'wagyu sliders', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1729, 'Salmon tataki', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1730, 'Beef teriyaki', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1731, 'Crab croquettes', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1732, 'Chicken Karaage', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1733, 'Kinaco blanchmange', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1734, 'Chocolate gateau', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1735, 'Matcha parfait', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1736, 'Mochi ice cream', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1737, 'Hoji cha brulee', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1738, 'Hojichaa', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1739, 'Sencha', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1740, 'Genmaicha', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1741, 'Ochakai', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1742, 'Green tea', 1, '2024-06-22 14:56:06.000000', 1, 4, 8),
(1743, 'Coffee', 1, '2024-06-22 14:56:06.000000', 1, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `api_dishimages`
--

CREATE TABLE `api_dishimages` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` bigint(20) NOT NULL,
  `dish_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_dishimages`
--

INSERT INTO `api_dishimages` (`id`, `image`, `alt`, `is_active`, `created_at`, `created_by_id`, `dish_id`) VALUES
(3, 'static/dish_images/OIG1.Zfom9KsBzO2FDizKKpv5.jpg', 'samosa', 1, '2024-06-24 06:14:35.797301', 1, 243),
(4, 'static/dish_images/OIG1.1VM7o80kJSPRDW3cpv8G.jpg', 'samosa', 1, '2024-06-24 06:14:53.935810', 1, 243),
(5, 'static/dish_images/OIG1.43kKaOjDu2Qt1Ots.Lwa.jpg', 'samosa', 1, '2024-06-24 06:15:12.196909', 1, 243),
(6, 'static/dish_images/OIG1.GTK8zpSm2G0PfSMvsy8W.jpg', 'samosa', 1, '2024-06-24 06:15:39.724812', 1, 243);

-- --------------------------------------------------------

--
-- Table structure for table `api_dishingedients`
--

CREATE TABLE `api_dishingedients` (
  `id` bigint(20) NOT NULL,
  `ingedients` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` bigint(20) NOT NULL,
  `dish_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_dishingedients`
--

INSERT INTO `api_dishingedients` (`id`, `ingedients`, `created_at`, `updated_at`, `created_by_id`, `dish_id`, `updated_by_id`) VALUES
(1, '<ul>\r\n                    <li>2 cups all-purpose flour</li>\r\n                    <li>1/4 cup vegetable oil</li>\r\n                    <li>Salt to taste</li>\r\n                    <li>1/2 tsp carom seeds (ajwain)</li>\r\n                    <li>1 cup boiled and mashed potatoes</li>\r\n                    <li>1/2 cup boiled peas</li>\r\n                    <li>1 tsp cumin seeds</li>\r\n                    <li>1 tsp coriander powder</li>\r\n                    <li>1/2 tsp garam masala</li>\r\n                    <li>1/2 tsp turmeric powder</li>\r\n                    <li>1 tsp ginger paste</li>\r\n                    <li>1 tsp green chili paste</li>\r\n                    <li>2 tbsp chopped coriander leaves</li>\r\n                    <li>Oil for frying</li>\r\n                </ul>', '2024-06-23 15:48:43.653816', NULL, 1, 243, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_dishrecipe`
--

CREATE TABLE `api_dishrecipe` (
  `id` bigint(20) NOT NULL,
  `recipe` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` bigint(20) NOT NULL,
  `dish_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_dishrecipe`
--

INSERT INTO `api_dishrecipe` (`id`, `recipe`, `created_at`, `updated_at`, `created_by_id`, `dish_id`, `updated_by_id`) VALUES
(1, '<ol>\r\n                    <li>In a bowl, mix the flour, salt, carom seeds, and vegetable oil. Add water gradually and knead to form a stiff dough. Cover and let it rest for 30 minutes.</li>\r\n                    <li>Heat oil in a pan and add cumin seeds. When they splutter, add ginger and green chili paste.</li>\r\n                    <li>Add mashed potatoes, peas, coriander powder, garam masala, turmeric powder, and salt. Cook for 2-3 minutes. Add coriander leaves and mix well. Let the mixture cool.</li>\r\n                    <li>Divide the dough into small balls. Roll each ball into a thin oval shape and cut it in half.</li>\r\n                    <li>Form a cone with each half and fill it with the potato mixture. Seal the edges with a little water.</li>\r\n                    <li>Heat oil in a deep frying pan. Fry the samosas until they are golden brown and crispy. Drain on paper towels.</li>\r\n                    <li>Serve hot with chutney or sauce of your choice.</li>\r\n                </ol>', '2024-06-23 15:49:08.521500', NULL, 1, 243, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_mealtimes`
--

CREATE TABLE `api_mealtimes` (
  `id` bigint(20) NOT NULL,
  `meal_name` varchar(100) NOT NULL,
  `quote` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_mealtimes`
--

INSERT INTO `api_mealtimes` (`id`, `meal_name`, `quote`, `description`, `created_at`) VALUES
(1, 'Breakfast', 'Start your day with sunshine on your plate', 'Morning meal', '2024-06-22 12:48:57.090518'),
(2, 'Brunch', 'Where breakfast dreams and lunch wishes come true', 'Late morning meal', '2024-06-22 12:49:29.115366'),
(3, 'Lunch', 'Fuel your afternoon with a delicious lunch break', 'Midday meal', '2024-06-22 12:49:48.400194'),
(4, 'Hightea', 'A sip of comfort and a bite of joy', 'Afternoon meal', '2024-06-22 12:50:28.999560'),
(5, 'Dinner', 'Gather around the table and create evening memories', 'Evening meal', '2024-06-22 12:50:47.997252');

-- --------------------------------------------------------

--
-- Table structure for table `api_menugroupleave`
--

CREATE TABLE `api_menugroupleave` (
  `id` bigint(20) NOT NULL,
  `is_allowed` tinyint(1) DEFAULT NULL,
  `leaving_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `menu_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `api_menugroupleavehistory`
--

CREATE TABLE `api_menugroupleavehistory` (
  `id` bigint(20) NOT NULL,
  `is_allowed` tinyint(1) DEFAULT NULL,
  `history_created_at` datetime(6) NOT NULL,
  `leaving_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `menu_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_menugroupleavehistory`
--

INSERT INTO `api_menugroupleavehistory` (`id`, `is_allowed`, `history_created_at`, `leaving_at`, `created_at`, `updated_at`, `menu_id`, `user_id`) VALUES
(1, NULL, '2024-07-05 20:47:00.582564', '2024-07-05 20:44:00.806478', '2024-07-05 20:26:22.556249', NULL, 27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `api_menugroupuserrequest`
--

CREATE TABLE `api_menugroupuserrequest` (
  `id` bigint(20) NOT NULL,
  `is_allowed` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `menu_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_menugroupuserrequest`
--

INSERT INTO `api_menugroupuserrequest` (`id`, `is_allowed`, `created_at`, `updated_at`, `menu_id`, `user_id`) VALUES
(4, 1, '2024-07-05 20:47:00.749952', '2024-07-05 21:13:03.468376', 27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `api_menuitemsdeletehistory`
--

CREATE TABLE `api_menuitemsdeletehistory` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) NOT NULL,
  `add_by_user_id` bigint(20) NOT NULL,
  `cuisine_id` bigint(20) NOT NULL,
  `dish_id` bigint(20) NOT NULL,
  `remove_by_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_menuitemsdeletehistory`
--

INSERT INTO `api_menuitemsdeletehistory` (`id`, `created_at`, `deleted_at`, `add_by_user_id`, `cuisine_id`, `dish_id`, `remove_by_user_id`) VALUES
(1, '2024-07-05 22:28:42.031274', '2024-07-06 08:24:57.369844', 2, 27, 243, 5),
(2, '2024-07-05 18:57:42.107222', '2024-07-08 12:26:11.104671', 4, 27, 196, 5),
(3, '2024-07-05 18:57:42.107222', '2024-07-08 12:27:40.463081', 4, 27, 196, 5),
(4, '2024-07-05 18:57:42.107222', '2024-07-08 12:27:48.247621', 5, 27, 196, 5),
(5, '2024-07-08 12:31:31.312798', '2024-07-08 12:35:09.451949', 5, 27, 197, 5),
(6, '2024-07-08 12:31:30.149341', '2024-07-08 13:07:42.102720', 5, 27, 196, 5),
(7, '2024-07-09 12:23:52.192599', '2024-07-09 18:21:05.403331', 15, 30, 196, 5),
(8, '2024-07-09 06:27:57.685151', '2024-07-09 18:53:59.484061', 5, 30, 199, 5);

-- --------------------------------------------------------

--
-- Table structure for table `api_payment`
--

CREATE TABLE `api_payment` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `tokens` int(10) UNSIGNED NOT NULL CHECK (`tokens` >= 0),
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_payment`
--

INSERT INTO `api_payment` (`id`, `order_id`, `payment_id`, `signature`, `amount`, `tokens`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'order_OS4KbTdTgc9t6x', NULL, NULL, '100.00', 1, 'dismissed', '2024-06-28 05:40:56.152731', '2024-06-28 05:41:54.413140', 5),
(2, 'order_OS4MCXqI8CNsAp', 'pay_OS4MaUZsKF1l2h', 'b8423f40c731e0fbf646b10a4a47d4f486d1ab6093bfd01764bd8c5329dfb7fe', '450.00', 5, 'successful', '2024-06-28 05:42:26.913903', '2024-06-28 05:43:04.354662', 5),
(3, 'order_OS4Wx1qWB6CcC2', NULL, NULL, '100.00', 1, 'dismissed', '2024-06-28 05:52:37.502890', '2024-06-28 05:52:41.974985', 5),
(4, 'order_OS4XKkwfgCTZLl', 'pay_OS4XSxe6mxTwjB', 'dad31478bbde3260ddbaa3ed8b076548c06214cc7b9f85aba56aed7b91bbc47d', '100.00', 1, 'failed', '2024-06-28 05:52:59.237860', '2024-06-28 05:53:19.116202', 5),
(5, 'order_OS4XtiHMZVwbWb', NULL, NULL, '100.00', 1, 'dismissed', '2024-06-28 05:53:31.257168', '2024-06-28 05:54:12.051009', 5),
(6, 'order_OS4YqiXsZrrink', 'pay_OS4Z0ZH3TtiKi3', '28d58f65a0f87ca11ff47e2ccb5ef7d77f5902c04d8b944481eaa8cbb9d3fc27', '100.00', 1, 'successful', '2024-06-28 05:54:25.311046', '2024-06-28 05:54:45.255142', 5),
(7, 'order_OSWkHrGBbwJwf5', 'pay_OSWkfqXRkFy1xe', 'd9bd4615dc23fa8a5982482fdda52cc66e14409ca40a718d9c3e1dbf7f8f4615', '100.00', 1, 'successful', '2024-06-29 09:28:40.521541', '2024-06-29 09:29:13.697486', 5),
(8, 'order_OSWnDvtGfjzPPk', 'pay_OSWnPxXEsjyxQh', '0c91cb79806188d7ae8478977503efc53e34fa47453fc0c585b4f7accd9b8c4a', '900.00', 10, 'successful', '2024-06-29 09:31:27.320125', '2024-06-29 09:31:53.439792', 5),
(9, 'order_OSWqVKV1Qyt1Pe', 'pay_OSWqo7p4muEJGj', '2b967349a09f423a3b6ccbfe841d6eed4a44868ad253e7177f88bfe2cfe69312', '100.00', 1, 'successful', '2024-06-29 09:34:33.661487', '2024-06-29 09:35:01.265747', 5),
(10, 'order_OSWuP2f406zQP5', 'pay_OSWudjL0APGVU2', 'f59785c2034e69a2a0aaffb53457659f6178cfb47114e35330fda0a944d23dce', '100.00', 1, 'successful', '2024-06-29 09:38:15.091401', '2024-06-29 09:38:38.846461', 5),
(11, 'order_OSX1A7LTfOtqPx', 'pay_OSX1R7UkZJykmE', '9dfa93f167799c9d7ddd8fa1580edc2ab2b5c875e0c1a57119f7ec6250dde620', '450.00', 5, 'successful', '2024-06-29 09:44:39.016277', '2024-06-29 09:45:04.922829', 5),
(12, 'order_OSXHNEDSJViLIh', 'pay_OSXHVY7EWyVtde', '2c2f707513a294a2dc561995cda9a509d49363328ab124e72ebd231d535149f3', '100.00', 1, 'successful', '2024-06-29 09:59:59.934140', '2024-06-29 10:00:18.296411', 7),
(13, 'order_OSXHodYXCbnnKF', 'pay_OSXI7a4a8eJlzv', 'fbd66312cff855f869b1ce27091a537fa1ecab65bf0a4e611cc8dd29aeb6c98c', '450.00', 5, 'successful', '2024-06-29 10:00:24.932318', '2024-06-29 10:01:05.795496', 7),
(14, 'order_OSY71o8GQ41uB6', 'pay_OSY7AWWJFP4yQa', '12cb0d01c4631d993fcacf30d5188461f4cabdff2c1492ad072f98147d698df9', '450.00', 5, 'successful', '2024-06-29 10:48:53.776271', '2024-06-29 10:49:17.303336', 1),
(15, 'order_OTJXqAPkczgKQ2', NULL, NULL, '10.00', 1, 'dismissed', '2024-07-01 09:12:52.958347', '2024-07-01 09:12:57.694756', 5),
(16, 'order_OTdnegbo36L4aR', 'pay_OTdnuJGowitK69', '2c0fce2940728c13e56344a33914c455b0d16a10cbdf9dd7c294ecca10ab62df', '40.00', 5, 'successful', '2024-07-02 05:01:43.391803', '2024-07-02 05:02:08.578755', 5);

-- --------------------------------------------------------

--
-- Table structure for table `api_resetpasswordtoken`
--

CREATE TABLE `api_resetpasswordtoken` (
  `id` bigint(20) NOT NULL,
  `token` varchar(1000) NOT NULL,
  `is_reset` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_resetpasswordtoken`
--

INSERT INTO `api_resetpasswordtoken` (`id`, `token`, `is_reset`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'eyJ1c2VyX2lkIjogMSwgInRpbWVzdGFtcCI6IDE3MTkwNzgyOTIuMDcyMTE4LCAidG9rZW4iOiAiVHlCVFMyV0ZOR2V3NXJwQ0c2VWhYVGctZndiVUdEWXV5VWVIclVBTy00WSJ9.292660dca3695a6068fbcd59146608136d448d84521f409872bc71a165d7b2ae', 1, '2024-06-22 17:44:56.130801', '2024-06-22 23:20:15.931496', 1),
(3, 'eyJ1c2VyX2lkIjogMiwgInRpbWVzdGFtcCI6IDE3MTkwNzk2OTAuOTA5ODg4MywgInRva2VuIjogIjJycDdreF9ITG9weWRESnVwYUgwYlRYYnVmZUNvTjFxOTEzWTJTRXZqNXcifQ==.70fadee74988e3df7591d42630b174abac726c2f1ad342534e932ac2b18deedb', 1, '2024-06-22 18:08:16.776276', '2024-06-22 23:39:09.712971', 2),
(4, 'eyJ1c2VyX2lkIjogMiwgInRpbWVzdGFtcCI6IDE3MTkzOTg1MDkuMzE5OTM1NiwgInRva2VuIjogIlNlZ2lpSGV6ZE45cUo5WVR1QTIya1hSSzlEVWNRQUpkSUtsT2doM0JkV2sifQ==.cc87c5d42bc1f30573f75fd60fffa957c67b14c8a2a52b68c7fd7308fa7fc71e', 0, '2024-06-26 10:41:55.876804', NULL, 2),
(5, 'eyJ1c2VyX2lkIjogNiwgInRpbWVzdGFtcCI6IDE3MTkzOTg2NTIuNjI5MTUyLCAidG9rZW4iOiAiNG4zM1ZDQTBRNzBWVmQzQXhMVmFUMEY2V0ZjN2xZazZBdDVTWkpOa0lMMCJ9.b18f2b68cb6f34af3001f5f5a00ba8bc21d4abc4956f60911be53c9ca28cb95e', 0, '2024-06-26 10:44:17.150915', NULL, 6),
(6, 'eyJ1c2VyX2lkIjogMiwgInRpbWVzdGFtcCI6IDE3MTk0MDAxODUuODQxODA0NSwgInRva2VuIjogInFUVVNjVm9pamM5NHB0OEx5Uk02RGIzaHlSNWJWb014a0ZNZ21sZWVNbDgifQ==.bb19190b817eca15c485cf28d9a743b0b6c49373e493d7cd0d466070aabd6225', 1, '2024-06-25 11:09:50.240177', '2024-06-26 16:40:43.962195', 2),
(7, 'eyJ1c2VyX2lkIjogMiwgInRpbWVzdGFtcCI6IDE3MTk0MDE1OTAuMDcwNzcwNSwgInRva2VuIjogIk9qejZMNlBMbGdqM2xfbzgyT0t0ZU5qSkxpSHFFSG8xV1U1aUlaWmdVNGcifQ==.38d41697cc5547a25dab1f1e47995565451c659006ef89ead9b65378bf1ba20c', 0, '2024-06-26 11:33:18.341306', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `api_states`
--

CREATE TABLE `api_states` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `country_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_states`
--

INSERT INTO `api_states` (`id`, `name`, `created_at`, `country_id`) VALUES
(1, 'ANDHRA PRADESH', '2024-07-13 00:00:00.000000', 103),
(2, 'ASSAM', '2024-07-13 00:00:00.000000', 103),
(3, 'ARUNACHAL PRADESH', '2024-07-13 00:00:00.000000', 103),
(4, 'BIHAR', '2024-07-13 00:00:00.000000', 103),
(5, 'GUJRAT', '2024-07-13 00:00:00.000000', 103),
(6, 'HARYANA', '2024-07-13 00:00:00.000000', 103),
(7, 'HIMACHAL PRADESH', '2024-07-13 00:00:00.000000', 103),
(8, 'JAMMU & KASHMIR', '2024-07-13 00:00:00.000000', 103),
(9, 'KARNATAKA', '2024-07-13 00:00:00.000000', 103),
(10, 'KERALA', '2024-07-13 00:00:00.000000', 103),
(11, 'MADHYA PRADESH', '2024-07-13 00:00:00.000000', 103),
(12, 'MAHARASHTRA', '2024-07-13 00:00:00.000000', 103),
(13, 'MANIPUR', '2024-07-13 00:00:00.000000', 103),
(14, 'MEGHALAYA', '2024-07-13 00:00:00.000000', 103),
(15, 'MIZORAM', '2024-07-13 00:00:00.000000', 103),
(16, 'NAGALAND', '2024-07-13 00:00:00.000000', 103),
(17, 'ODISHA', '2024-07-13 00:00:00.000000', 103),
(18, 'PUNJAB', '2024-07-13 00:00:00.000000', 103),
(19, 'RAJASTHAN', '2024-07-13 00:00:00.000000', 103),
(20, 'SIKKIM', '2024-07-13 00:00:00.000000', 103),
(21, 'TAMIL NADU', '2024-07-13 00:00:00.000000', 103),
(22, 'TRIPURA', '2024-07-13 00:00:00.000000', 103),
(23, 'UTTAR PRADESH', '2024-07-13 00:00:00.000000', 103),
(24, 'WEST BENGAL', '2024-07-13 00:00:00.000000', 103),
(25, 'DELHI', '2024-07-13 00:00:00.000000', 103),
(26, 'GOA', '2024-07-13 00:00:00.000000', 103),
(27, 'PUDUCHERYY', '2024-07-13 00:00:00.000000', 103),
(28, 'LAKSHDWEEP', '2024-07-13 00:00:00.000000', 103),
(29, 'DAMAN & DIU', '2024-07-13 00:00:00.000000', 103),
(30, 'DADRA & NAGAR', '2024-07-13 00:00:00.000000', 103),
(31, 'CHANDIGARH', '2024-07-13 00:00:00.000000', 103),
(32, 'ANDAMAN & NICOBAR', '2024-07-13 00:00:00.000000', 103),
(33, 'UTTARAKHAND', '2024-07-13 00:00:00.000000', 103),
(34, 'JHARKHAND', '2024-07-13 00:00:00.000000', 103),
(35, 'CHATTISGARH', '2024-07-13 00:00:00.000000', 103);

-- --------------------------------------------------------

--
-- Table structure for table `api_tokentype`
--

CREATE TABLE `api_tokentype` (
  `id` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_tokentype`
--

INSERT INTO `api_tokentype` (`id`, `type`, `created_at`) VALUES
(1, 'Free', '2024-06-22 12:51:27.731750'),
(2, 'Paid', '2024-06-22 12:51:30.960831');

-- --------------------------------------------------------

--
-- Table structure for table `api_usercuisine`
--

CREATE TABLE `api_usercuisine` (
  `id` bigint(20) NOT NULL,
  `cuisine` varchar(60) NOT NULL,
  `name` varchar(500) NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `token_id` bigint(20) NOT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_usercuisine`
--

INSERT INTO `api_usercuisine` (`id`, `cuisine`, `name`, `is_completed`, `created_at`, `updated_at`, `user_id`, `token_id`, `is_public`) VALUES
(12, 'cMlutA', 'Celebration', 1, '2024-06-22 21:32:47.740358', '2024-06-22 21:47:50.825235', 5, 4, 1),
(13, 'kKfZc4', 'Celebration2', 1, '2024-06-22 21:49:29.330210', '2024-06-27 06:00:00.000000', 5, 4, 1),
(14, 'abcedf', 'My Birthday Menu', 0, '2024-06-24 10:39:35.541012', NULL, 6, 5, 1),
(15, 'jdkei9', 'Test', 1, '2024-06-27 07:35:24.244396', '2024-06-27 06:00:00.000000', 5, 4, 1),
(16, 'ikeju4', 'New Menu', 1, '2024-06-27 07:38:47.770477', '2024-06-28 15:17:36.150337', 5, 7, 1),
(17, 'Z9vAxQ', 'Celebration3', 1, '2024-06-28 15:53:23.021043', '2024-06-29 05:23:41.709077', 5, 7, 1),
(18, 'CcQCgn', 'New Birthday menu', 1, '2024-06-29 05:31:13.378052', '2024-06-30 09:21:09.082106', 5, 12, 1),
(19, 'WyYoOq', 'Birthday', 0, '2024-06-29 10:50:01.348462', NULL, 1, 21, 1),
(20, 'x4Zep5', 'test', 1, '2024-06-30 09:24:45.984276', '2024-06-30 09:25:52.583895', 5, 12, 1),
(21, 'K22oZe', 'test2', 1, '2024-06-30 09:25:58.407700', '2024-06-30 14:29:13.124254', 5, 12, 1),
(22, 'Q8KMxy', 'twist', 1, '2024-06-30 14:29:26.132824', '2024-06-30 14:29:49.604087', 5, 12, 1),
(23, 'iXzDvE', 'twist2', 1, '2024-06-30 14:30:17.986986', '2024-06-30 14:30:38.099340', 5, 12, 1),
(24, 'htmg1P', 'Celebration3', 1, '2024-06-30 14:45:15.261642', '2024-07-01 05:57:20.860532', 5, 13, 1),
(25, 'NGHFVB', 'Amna Birthday party', 0, '2024-07-01 05:43:02.371055', '2024-07-01 05:45:00.329740', 15, 25, 1),
(26, 'enlIMI', 'test', 1, '2024-07-01 05:57:34.325426', '2024-07-02 05:10:28.773494', 5, 14, 1),
(27, 'tISZMZ', 'test', 1, '2024-07-02 05:11:06.214503', '2024-07-09 05:17:17.747511', 5, 15, 1),
(29, 'p4GpSq', 'My Menu', 0, '2024-07-08 21:06:19.880261', NULL, 7, 6, 1),
(30, 'vL8NYj', 'New One', 1, '2024-07-09 05:18:43.213002', '2024-07-12 13:08:32.923825', 5, 15, 1),
(31, '0br1co', 'test', 0, '2024-07-12 06:42:15.646306', NULL, 19, 29, 1),
(32, 'JjnlkK', 'My Celebration', 0, '2024-07-14 19:41:31.079590', NULL, 5, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_userloginhistory`
--

CREATE TABLE `api_userloginhistory` (
  `id` bigint(20) NOT NULL,
  `login_provider` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_userloginhistory`
--

INSERT INTO `api_userloginhistory` (`id`, `login_provider`, `created_at`, `user_id`) VALUES
(1, 'facebook', '2024-06-29 15:35:37.943728', 1),
(2, 'facebook', '2024-06-29 15:36:40.506535', 12),
(3, 'facebook', '2024-06-29 15:36:57.263871', 12),
(4, 'facebook', '2024-06-29 15:37:34.360416', 13),
(5, 'google', '2024-06-29 20:02:02.373246', 14),
(6, 'google', '2024-06-29 20:42:43.954154', 14),
(7, 'google', '2024-06-29 21:07:27.161921', 14),
(8, 'google', '2024-06-29 21:42:15.473462', 14),
(9, 'google', '2024-06-30 14:50:42.853235', 14),
(10, 'google', '2024-06-30 14:50:42.857234', 14),
(11, 'google', '2024-06-30 21:00:29.309557', 14),
(12, 'google', '2024-06-30 21:02:26.262111', 14),
(13, 'google', '2024-06-30 21:03:31.420029', 14),
(14, 'google', '2024-07-01 05:40:28.881185', 15),
(15, 'google', '2024-07-01 05:40:29.021345', 15),
(16, 'google', '2024-07-01 05:40:29.640999', 15),
(17, 'google', '2024-07-01 05:40:52.658254', 15),
(18, 'facebook', '2024-07-01 09:12:18.718234', 15),
(19, 'facebook', '2024-07-01 09:12:27.820880', 15),
(20, 'google', '2024-07-02 04:57:59.826173', 15),
(21, 'google', '2024-07-02 04:58:25.220179', 15),
(22, 'google', '2024-07-05 14:21:16.822601', 15),
(23, 'google', '2024-07-05 17:15:34.089013', 15),
(24, 'google', '2024-07-05 17:15:36.935859', 15),
(25, 'google', '2024-07-05 17:16:03.234584', 15),
(26, 'google', '2024-07-05 17:16:03.286018', 15),
(27, 'google', '2024-07-05 17:18:41.907239', 15),
(28, 'google', '2024-07-05 17:18:46.380355', 15),
(29, 'google', '2024-07-05 17:23:15.345163', 15),
(30, 'google', '2024-07-05 17:23:54.865258', 15),
(31, 'google', '2024-07-05 17:24:48.608186', 15),
(32, 'google', '2024-07-05 17:27:23.990817', 15),
(33, 'google', '2024-07-05 17:28:06.095891', 15),
(34, 'facebook', '2024-07-09 12:23:46.272045', 15),
(35, 'facebook', '2024-07-09 12:23:46.274055', 15),
(36, 'google', '2024-07-10 21:21:44.147181', 15),
(37, 'google', '2024-07-10 21:21:44.148182', 15),
(38, 'facebook', '2024-07-11 07:02:13.008442', 15),
(39, 'facebook', '2024-07-11 10:35:34.646889', 15),
(40, 'facebook', '2024-07-11 10:39:42.311052', 18),
(41, 'facebook', '2024-07-11 10:40:06.399521', 18),
(42, 'facebook', '2024-07-11 10:40:14.827458', 18),
(43, 'facebook', '2024-07-11 10:40:30.737633', 18),
(44, 'google', '2024-07-11 13:25:28.224797', 18),
(45, 'google', '2024-07-11 13:35:33.486607', 19),
(46, 'google', '2024-07-11 13:35:45.534933', 19),
(47, 'google', '2024-07-11 13:36:12.572105', 19),
(48, 'google', '2024-07-11 13:36:12.656108', 19),
(49, 'google', '2024-07-11 13:36:19.094185', 19),
(50, 'google', '2024-07-12 06:42:05.640003', 19),
(51, 'google', '2024-07-12 06:42:05.644023', 19),
(52, 'facebook', '2024-07-12 06:51:47.367561', 19),
(53, 'facebook', '2024-07-12 11:27:28.661936', 19),
(54, 'facebook', '2024-07-12 11:27:28.663959', 19),
(55, 'facebook', '2024-07-12 11:27:39.116581', 19),
(56, 'facebook', '2024-07-12 13:56:25.665677', 19),
(57, 'facebook', '2024-07-12 13:56:25.679686', 19),
(58, 'facebook', '2024-07-12 13:56:25.656680', 19),
(59, 'linkedin', '2024-07-14 10:22:13.744749', 19),
(60, 'linkedin', '2024-07-14 10:25:14.512296', 19),
(61, 'linkedin', '2024-07-14 10:27:05.296226', 19),
(62, 'linkedin', '2024-07-14 10:27:52.362504', 19);

-- --------------------------------------------------------

--
-- Table structure for table `api_usertoken`
--

CREATE TABLE `api_usertoken` (
  `id` bigint(20) NOT NULL,
  `token_count` int(11) NOT NULL,
  `is_used` tinyint(1) NOT NULL,
  `used_token_count` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `token_type_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `payment_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_usertoken`
--

INSERT INTO `api_usertoken` (`id`, `token_count`, `is_used`, `used_token_count`, `created_at`, `token_type_id`, `user_id`, `payment_id`) VALUES
(1, 3, 0, 0, '2024-06-22 20:51:57.072785', 1, 2, NULL),
(4, 3, 1, 3, '2024-06-22 21:10:03.191710', 1, 5, NULL),
(5, 3, 0, 0, '2024-06-24 07:19:04.717763', 1, 6, NULL),
(6, 3, 0, 1, '2024-06-26 12:38:34.686635', 1, 7, NULL),
(7, 2, 1, 2, '2024-06-27 07:36:39.908388', 1, 5, NULL),
(8, 3, 0, 0, '2024-06-27 18:57:48.685285', 1, 8, NULL),
(9, 3, 0, 0, '2024-06-27 18:59:45.131341', 1, 9, NULL),
(10, 3, 0, 0, '2024-06-27 19:12:26.936615', 1, 10, NULL),
(11, 3, 0, 0, '2024-06-27 19:47:15.386297', 1, 11, NULL),
(12, 5, 1, 5, '2024-06-28 05:43:04.420666', 2, 5, NULL),
(13, 1, 1, 1, '2024-06-28 05:54:45.287142', 2, 5, 6),
(14, 1, 1, 1, '2024-06-29 09:29:13.782273', 2, 5, 7),
(15, 10, 0, 3, '2024-06-29 09:31:53.502788', 2, 5, 8),
(16, 1, 0, 0, '2024-06-29 09:35:01.345744', 2, 5, 9),
(17, 1, 0, 0, '2024-06-29 09:38:39.014451', 2, 5, 10),
(18, 5, 0, 0, '2024-06-29 09:45:04.989830', 2, 5, 11),
(19, 1, 0, 0, '2024-06-29 10:00:18.399344', 2, 7, 12),
(20, 5, 0, 0, '2024-06-29 10:01:05.856467', 2, 7, 13),
(21, 5, 0, 1, '2024-06-29 10:49:17.473336', 2, 1, 14),
(22, 3, 0, 0, '2024-06-29 15:36:40.427538', 1, 12, NULL),
(23, 3, 0, 0, '2024-06-29 15:37:34.248419', 1, 13, NULL),
(24, 3, 0, 0, '2024-06-29 20:02:02.322845', 1, 14, NULL),
(25, 3, 0, 1, '2024-07-01 05:40:28.940434', 1, 15, NULL),
(26, 5, 0, 0, '2024-07-02 05:02:08.740983', 2, 5, 16),
(27, 3, 0, 0, '2024-07-10 11:58:09.000000', 1, 1, NULL),
(28, 3, 0, 0, '2024-07-11 10:39:42.242049', 1, 18, NULL),
(29, 3, 0, 1, '2024-07-11 13:35:33.410608', 1, 19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_visitor`
--

CREATE TABLE `api_visitor` (
  `id` bigint(20) NOT NULL,
  `ip_address` char(39) NOT NULL,
  `user_agent` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_visitor`
--

INSERT INTO `api_visitor` (`id`, `ip_address`, `user_agent`, `timestamp`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 08:14:05.785208'),
(2, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 08:19:31.319226'),
(3, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 08:21:55.058953'),
(4, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 09:58:43.102237'),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 10:21:59.259182'),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 10:24:30.875496'),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:04:44.615688'),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:04:47.140968'),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:07:11.229540'),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:07:20.157067'),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:07:53.204269'),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:09:09.602059'),
(13, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 11:11:12.210146'),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:17:10.412195'),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:17:50.427807'),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:19:06.063404'),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:21:02.438294'),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:21:25.229561'),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:26:32.941468'),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:26:53.702532'),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:27:07.636063'),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:28:53.202413'),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:28:54.896387'),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:30:10.303198'),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:47:25.661762'),
(26, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 11:47:47.869958'),
(27, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 11:48:01.943409'),
(28, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 11:53:49.512204'),
(29, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 11:53:52.807269'),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 11:56:03.670355'),
(31, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 11:56:10.124401'),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 14:08:52.725603'),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 14:11:33.110009'),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 14:16:00.172955'),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 14:16:56.874998'),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 14:18:59.362285'),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 14:19:37.194664'),
(38, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 14:21:58.475419'),
(39, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 14:22:03.893727'),
(40, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 14:24:19.489008'),
(41, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-23 14:24:52.108175'),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 18:40:28.437666'),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 18:52:34.119103'),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:19:55.522891'),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:35:56.701839'),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:35:56.888838'),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:36:12.355119'),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:36:33.884588'),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:43:10.012917'),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:43:10.096914'),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:44:03.107146'),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:44:04.173791'),
(53, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 20:45:04.908668'),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 21:21:16.709957'),
(55, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 21:35:14.785254'),
(56, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 21:35:18.669872'),
(57, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 21:35:54.496602'),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 21:37:24.318002'),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 21:39:06.314540'),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 21:40:37.023442'),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 21:41:33.601232'),
(62, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 21:42:10.591073'),
(63, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 21:45:52.810222'),
(64, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 21:46:14.521601'),
(65, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 21:50:39.523553'),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 21:52:14.668427'),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 21:53:03.132013'),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 21:53:23.264180'),
(69, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-10 21:55:53.229635'),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 04:54:20.911951'),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 05:24:19.377386'),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 06:39:37.074060'),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 06:39:59.006987'),
(74, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 06:40:45.004587'),
(75, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 06:40:58.006096'),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 06:42:01.841729'),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 06:46:05.973840'),
(78, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:02:04.056911'),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:10:42.497389'),
(80, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:12:49.041060'),
(81, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:13:22.846452'),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:14:16.874906'),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:15:19.624945'),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:15:54.813405'),
(85, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:18:10.036931'),
(86, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:18:32.293733'),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:23:06.019671'),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:23:42.884643'),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:24:09.733699'),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:28:01.662001'),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:29:53.729016'),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:30:17.127987'),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:32:53.711488'),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:33:07.918578'),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:33:17.683895'),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:36:26.492643'),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:38:30.992120'),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:38:54.966590'),
(99, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:40:01.401236'),
(100, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:42:35.714105'),
(101, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:43:34.661300'),
(102, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:46:46.471475'),
(103, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:46:49.004706'),
(104, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:47:14.853631'),
(105, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:47:50.626417'),
(106, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:49:37.797369'),
(107, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:50:54.589395'),
(108, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:51:38.484179'),
(109, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:51:50.019889'),
(110, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 07:52:14.349363'),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:59:41.510135'),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 07:59:47.931151'),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 08:00:20.905248'),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 08:03:31.500946'),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 08:07:29.912445'),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 08:11:07.561402'),
(117, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 08:18:56.773133'),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 08:20:30.921555'),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 08:21:35.404117'),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 08:21:58.420822'),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 09:11:24.022365'),
(122, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:13:58.939247'),
(123, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:14:58.329396'),
(124, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:19:51.552925'),
(125, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:31:26.272921'),
(126, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:31:37.902809'),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 09:32:56.585937'),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 09:34:30.635415'),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 09:36:09.496295'),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 09:37:20.641542'),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 09:40:33.174017'),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 09:45:40.299672'),
(133, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:46:53.370436'),
(134, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:48:01.240880'),
(135, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:48:43.067468'),
(136, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 09:50:30.384889'),
(137, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 10:12:48.740352'),
(138, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 10:15:24.193648'),
(139, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 10:21:37.672745'),
(140, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 10:22:13.050404'),
(141, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 10:22:56.575740'),
(142, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:27:40.671333'),
(143, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:29:07.144263'),
(144, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:29:34.157850'),
(145, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:31:18.421285'),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 10:31:36.576913'),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 10:32:03.527463'),
(148, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:34:29.959690'),
(149, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:42:56.989136'),
(150, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:46:24.238767'),
(151, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:50:50.646407'),
(152, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-07-11 10:55:15.218153'),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 13:35:53.999016'),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 13:36:22.746753'),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 13:44:45.635393'),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 13:46:07.705001'),
(157, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-11 13:49:22.341533'),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 13:53:52.292166'),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 13:54:14.192344'),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 14:00:59.565273'),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 14:02:16.985677'),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:29:12.166901'),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:38:20.180604'),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:40:59.329027'),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:41:52.866623'),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:43:56.724968'),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:49:01.824957'),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:49:02.753037'),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:49:46.600717'),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:50:22.767049'),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:51:20.896226'),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:52:40.744171'),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 06:59:06.265410'),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:03:17.275281'),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:21:49.746433'),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:22:48.137444'),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:25:12.816479'),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:25:19.602834'),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:33:42.228095'),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:34:07.400852'),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:36:01.930002'),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:36:20.923680'),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:37:58.127668'),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:41:27.860540'),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:42:59.894657'),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:48:24.698106'),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:49:40.004200'),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 10:03:27.004835'),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:02:01.798578'),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:04:47.618176'),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:04:48.566241'),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:04:55.068362'),
(193, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:05:35.037396'),
(194, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:07:07.697395'),
(195, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:07:48.398522'),
(196, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:08:09.627239'),
(197, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:09:34.352823'),
(198, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:10:07.054686'),
(199, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:11:02.278742'),
(200, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:11:48.165247'),
(201, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:12:04.614451'),
(202, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:13:14.326963'),
(203, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:14:43.101810'),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:15:25.912031'),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:15:50.876568'),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:16:47.607753'),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:17:19.542694'),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:18:16.043981'),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:18:16.843097'),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:20:48.829710'),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:21:09.410048'),
(212, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:21:24.262498'),
(213, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:22:54.424172'),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:22:55.939372'),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:24:38.779967'),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:24:58.759427'),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:26:14.885986'),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:27:48.776107'),
(219, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:29:32.615863'),
(220, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:29:34.327857'),
(221, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:36:44.725335'),
(222, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:36:45.985683'),
(223, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:42:33.844558'),
(224, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:42:39.166121'),
(225, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:43:42.526352'),
(226, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:43:46.825776'),
(227, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:44:18.054625'),
(228, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:44:21.636759'),
(229, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:44:51.803294'),
(230, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:44:55.026701'),
(231, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:46:45.145883'),
(232, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:46:48.180464'),
(233, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:50:49.739558'),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:51:07.536118'),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:51:24.381814'),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 11:52:08.275453'),
(237, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:54:50.062910'),
(238, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-12 11:54:53.825361'),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 12:23:00.147543'),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 12:26:08.740470'),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 13:55:56.475280'),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 13:57:18.545039'),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 14:52:06.293925'),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 14:52:13.855637'),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 04:51:44.425189'),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 04:52:51.848586'),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:10:52.374350'),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:10:56.373848'),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:15:18.645683'),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:15:31.684113'),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:16:07.507521'),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:16:07.619518'),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:16:16.201193'),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:21:22.279521'),
(255, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 07:21:24.035743'),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:22:50.846717'),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:22:51.012893'),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:24:11.932718'),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:24:13.318153'),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:24:29.203278'),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:24:30.357968'),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:26:22.669510'),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:26:22.685504'),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:26:25.801067'),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:26:29.831664'),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:26:50.660643'),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:26:50.752642'),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:27:06.823227'),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:27:07.344554'),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:29:01.038667'),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:29:01.053077'),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:36:06.310380'),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:43:09.531740'),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:44:01.817670'),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:44:04.234089'),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:44:47.986819'),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:44:51.205939'),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:44:57.733835'),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:45:00.252637'),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:45:01.663657'),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:46:04.475319'),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:46:05.269969'),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:47:03.685755'),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:47:04.955441'),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:48:10.984501'),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 08:48:12.268950'),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:03:08.655177'),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:03:09.450868'),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:03:45.352589'),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:03:45.736723'),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:04:17.677439'),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:04:19.889477'),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:04:52.824603'),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:04:52.975603');
INSERT INTO `api_visitor` (`id`, `ip_address`, `user_agent`, `timestamp`) VALUES
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:05:55.841966'),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:05:55.851965'),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:06:26.692920'),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:06:32.394682'),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:07:51.670920'),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:07:53.777526'),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:13:30.328473'),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:13:31.701899'),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:13:56.282412'),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:13:56.650411'),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:16:26.760013'),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:16:27.978225'),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:18:55.729776'),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:18:56.172323'),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:20:20.014329'),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:20:20.157327'),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:21:50.981169'),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:21:51.079189'),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:22:49.248649'),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:22:51.155415'),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:33:38.359331'),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:33:41.292385'),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:37:18.317983'),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:37:18.447451'),
(319, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 09:40:01.362941'),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:40:02.573125'),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:41:17.393067'),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:41:17.518665'),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:41:43.139845'),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:41:44.657979'),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:48:06.838190'),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:48:08.050395'),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:50:53.618288'),
(328, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 09:50:53.961151'),
(329, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 09:52:52.064031'),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:52:55.816894'),
(331, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 09:54:02.349878'),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 09:54:03.389421'),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:00:18.599720'),
(334, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 10:00:20.064541'),
(335, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 10:03:45.984095'),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:03:46.776015'),
(337, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 10:04:14.070625'),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:04:14.703518'),
(339, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 10:05:18.707656'),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:05:22.889797'),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:46:16.771364'),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:46:20.273149'),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:46:42.245798'),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:46:44.063069'),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:15:10.410375'),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:15:10.806909'),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:16:56.914467'),
(348, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 11:16:57.384762'),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:25:08.630146'),
(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:25:09.472846'),
(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:25:52.175830'),
(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:25:52.476834'),
(353, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 11:39:46.939746'),
(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:39:47.315743'),
(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:40:59.531551'),
(356, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 11:41:00.714382'),
(357, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 11:43:56.017917'),
(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:43:59.295174'),
(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:46:41.800314'),
(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 11:46:43.669775'),
(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:33:36.490274'),
(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:33:38.766382'),
(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:43:21.941081'),
(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:43:23.334278'),
(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:43:45.380790'),
(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:43:47.066873'),
(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:44:58.227364'),
(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:44:59.961267'),
(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:45:21.641400'),
(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:45:23.073676'),
(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:47:20.110174'),
(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:47:21.197511'),
(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:48:38.753928'),
(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:48:40.836990'),
(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:51:54.563061'),
(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:51:55.786856'),
(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:52:13.146939'),
(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:52:14.082002'),
(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:54:38.159676'),
(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:55:14.278239'),
(381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:56:10.465574'),
(382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:57:13.165642'),
(383, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 13:57:58.364070'),
(384, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 13:59:44.759958'),
(385, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:02:45.155804'),
(386, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:04:19.454571'),
(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 14:06:51.903902'),
(388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 14:09:28.096988'),
(389, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:09:55.600499'),
(390, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:12:37.572565'),
(391, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:14:04.240498'),
(392, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:18:20.299852'),
(393, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:19:26.925493'),
(394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 14:20:08.783845'),
(395, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:21:17.541040'),
(396, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:21:53.096358'),
(397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 14:22:48.574609'),
(398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 14:42:08.648142'),
(399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 14:46:38.655111'),
(400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 14:47:02.881763'),
(401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 14:50:31.572207'),
(402, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 14:56:20.012255'),
(403, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 18:42:39.963113'),
(404, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 18:47:51.590011'),
(405, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 18:47:54.364449'),
(406, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 18:48:11.507640'),
(407, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 18:48:28.221563'),
(408, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 18:49:16.866968'),
(409, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 18:49:51.938388'),
(410, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 18:50:25.780168'),
(411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 18:53:21.660858'),
(412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 18:53:37.202110'),
(413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 18:55:04.350251'),
(414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 18:56:38.468684'),
(415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 18:58:38.392480'),
(416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 19:00:08.263584'),
(417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 19:28:23.636161'),
(418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 19:40:45.619641'),
(419, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 19:45:49.180193'),
(420, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 19:49:46.532034'),
(421, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 20:01:08.464337'),
(422, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 20:38:05.016431'),
(423, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 20:38:06.840676'),
(424, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 20:39:16.886413'),
(425, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-13 20:40:34.272469'),
(426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 05:56:28.787495'),
(427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:00:20.827821'),
(428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:01:21.574457'),
(429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:07:30.347667'),
(430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:20:01.516515'),
(431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:28:46.829588'),
(432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:28:56.041233'),
(433, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 07:30:15.765484'),
(434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:31:15.698668'),
(435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:51:00.917841'),
(436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:51:17.967660'),
(437, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 07:51:58.561083'),
(438, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 07:53:37.192332'),
(439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 07:54:35.163905'),
(440, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 07:56:39.325862'),
(441, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 07:59:30.814719'),
(442, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 08:01:00.873070'),
(443, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 08:04:15.155109'),
(444, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 08:05:24.148712'),
(445, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 08:07:30.365942'),
(446, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 08:08:53.902642'),
(447, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 08:09:17.783115'),
(448, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 08:12:06.590772'),
(449, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 08:37:44.722376'),
(450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 08:38:42.426863'),
(451, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 08:39:05.801708'),
(452, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 08:52:23.560059'),
(453, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 09:22:02.247039'),
(454, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 09:22:24.088957'),
(455, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 09:22:52.285586'),
(456, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:23:08.706912'),
(457, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:23:35.933437'),
(458, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:24:34.510037'),
(459, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:24:43.040721'),
(460, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:25:45.807052'),
(461, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:25:54.086888'),
(462, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:26:45.099991'),
(463, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:28:59.489683'),
(464, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:31:11.308436'),
(465, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:32:17.689469'),
(466, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:32:47.147159'),
(467, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:33:17.447329'),
(468, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:33:23.429735'),
(469, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:36:29.726418'),
(470, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:36:37.893153'),
(471, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:36:48.062105'),
(472, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:37:13.769782'),
(473, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:37:24.006824'),
(474, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:37:52.469813'),
(475, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:37:59.837713'),
(476, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:38:05.754440'),
(477, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:38:29.544966'),
(478, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:38:39.843213'),
(479, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:39:45.859263'),
(480, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:40:10.758219'),
(481, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:42:34.530842'),
(482, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:42:47.043754'),
(483, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:43:23.325107'),
(484, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:43:37.890407'),
(485, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:43:48.073714'),
(486, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:45:46.363949'),
(487, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:45:58.144087'),
(488, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:46:55.103676'),
(489, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:55:55.368062'),
(490, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 09:56:14.249703'),
(491, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:06:20.775299'),
(492, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:07:47.231297'),
(493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:10:01.927363'),
(494, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:11:59.660126'),
(495, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:13:13.761776'),
(496, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:22:09.883050'),
(497, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:24:14.313747'),
(498, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:25:12.561003'),
(499, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 10:26:18.637177'),
(500, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 10:26:27.334940'),
(501, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 10:26:48.018818'),
(502, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 10:26:58.268979'),
(503, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-14 10:27:33.920525'),
(504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:27:49.734796'),
(505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 15:56:46.785143'),
(506, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 19:40:25.043915');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add countries', 6, 'add_countries'),
(22, 'Can change countries', 6, 'change_countries'),
(23, 'Can delete countries', 6, 'delete_countries'),
(24, 'Can view countries', 6, 'view_countries'),
(25, 'Can add user', 7, 'add_customuser'),
(26, 'Can change user', 7, 'change_customuser'),
(27, 'Can delete user', 7, 'delete_customuser'),
(28, 'Can view user', 7, 'view_customuser'),
(29, 'Can add user token', 8, 'add_usertoken'),
(30, 'Can change user token', 8, 'change_usertoken'),
(31, 'Can delete user token', 8, 'delete_usertoken'),
(32, 'Can view user token', 8, 'view_usertoken'),
(33, 'Can add dish images', 9, 'add_dishimages'),
(34, 'Can change dish images', 9, 'change_dishimages'),
(35, 'Can delete dish images', 9, 'delete_dishimages'),
(36, 'Can view dish images', 9, 'view_dishimages'),
(37, 'Can add token type', 10, 'add_tokentype'),
(38, 'Can change token type', 10, 'change_tokentype'),
(39, 'Can delete token type', 10, 'delete_tokentype'),
(40, 'Can view token type', 10, 'view_tokentype'),
(41, 'Can add dishes', 11, 'add_dishes'),
(42, 'Can change dishes', 11, 'change_dishes'),
(43, 'Can delete dishes', 11, 'delete_dishes'),
(44, 'Can view dishes', 11, 'view_dishes'),
(45, 'Can add dish ingedients', 12, 'add_dishingedients'),
(46, 'Can change dish ingedients', 12, 'change_dishingedients'),
(47, 'Can delete dish ingedients', 12, 'delete_dishingedients'),
(48, 'Can view dish ingedients', 12, 'view_dishingedients'),
(49, 'Can add dish recipe', 13, 'add_dishrecipe'),
(50, 'Can change dish recipe', 13, 'change_dishrecipe'),
(51, 'Can delete dish recipe', 13, 'delete_dishrecipe'),
(52, 'Can view dish recipe', 13, 'view_dishrecipe'),
(53, 'Can add user cuisine', 14, 'add_usercuisine'),
(54, 'Can change user cuisine', 14, 'change_usercuisine'),
(55, 'Can delete user cuisine', 14, 'delete_usercuisine'),
(56, 'Can view user cuisine', 14, 'view_usercuisine'),
(57, 'Can add cuisine items', 15, 'add_cuisineitems'),
(58, 'Can change cuisine items', 15, 'change_cuisineitems'),
(59, 'Can delete cuisine items', 15, 'delete_cuisineitems'),
(60, 'Can view cuisine items', 15, 'view_cuisineitems'),
(61, 'Can add meal times', 16, 'add_mealtimes'),
(62, 'Can change meal times', 16, 'change_mealtimes'),
(63, 'Can delete meal times', 16, 'delete_mealtimes'),
(64, 'Can view meal times', 16, 'view_mealtimes'),
(65, 'Can add token usage', 17, 'add_tokenusage'),
(66, 'Can change token usage', 17, 'change_tokenusage'),
(67, 'Can delete token usage', 17, 'delete_tokenusage'),
(68, 'Can view token usage', 17, 'view_tokenusage'),
(69, 'Can add reset password token', 18, 'add_resetpasswordtoken'),
(70, 'Can change reset password token', 18, 'change_resetpasswordtoken'),
(71, 'Can delete reset password token', 18, 'delete_resetpasswordtoken'),
(72, 'Can view reset password token', 18, 'view_resetpasswordtoken'),
(73, 'Can add cuisine', 19, 'add_cuisine'),
(74, 'Can change cuisine', 19, 'change_cuisine'),
(75, 'Can delete cuisine', 19, 'delete_cuisine'),
(76, 'Can view cuisine', 19, 'view_cuisine'),
(77, 'Can add visitor', 20, 'add_visitor'),
(78, 'Can change visitor', 20, 'change_visitor'),
(79, 'Can delete visitor', 20, 'delete_visitor'),
(80, 'Can view visitor', 20, 'view_visitor'),
(81, 'Can add association', 21, 'add_association'),
(82, 'Can change association', 21, 'change_association'),
(83, 'Can delete association', 21, 'delete_association'),
(84, 'Can view association', 21, 'view_association'),
(85, 'Can add code', 22, 'add_code'),
(86, 'Can change code', 22, 'change_code'),
(87, 'Can delete code', 22, 'delete_code'),
(88, 'Can view code', 22, 'view_code'),
(89, 'Can add nonce', 23, 'add_nonce'),
(90, 'Can change nonce', 23, 'change_nonce'),
(91, 'Can delete nonce', 23, 'delete_nonce'),
(92, 'Can view nonce', 23, 'view_nonce'),
(93, 'Can add user social auth', 24, 'add_usersocialauth'),
(94, 'Can change user social auth', 24, 'change_usersocialauth'),
(95, 'Can delete user social auth', 24, 'delete_usersocialauth'),
(96, 'Can view user social auth', 24, 'view_usersocialauth'),
(97, 'Can add partial', 25, 'add_partial'),
(98, 'Can change partial', 25, 'change_partial'),
(99, 'Can delete partial', 25, 'delete_partial'),
(100, 'Can view partial', 25, 'view_partial'),
(101, 'Can add payment', 26, 'add_payment'),
(102, 'Can change payment', 26, 'change_payment'),
(103, 'Can delete payment', 26, 'delete_payment'),
(104, 'Can view payment', 26, 'view_payment'),
(105, 'Can add user login history', 27, 'add_userloginhistory'),
(106, 'Can change user login history', 27, 'change_userloginhistory'),
(107, 'Can delete user login history', 27, 'delete_userloginhistory'),
(108, 'Can view user login history', 27, 'view_userloginhistory'),
(109, 'Can add menu group user request', 28, 'add_menugroupuserrequest'),
(110, 'Can change menu group user request', 28, 'change_menugroupuserrequest'),
(111, 'Can delete menu group user request', 28, 'delete_menugroupuserrequest'),
(112, 'Can view menu group user request', 28, 'view_menugroupuserrequest'),
(113, 'Can add menu items delete history', 29, 'add_menuitemsdeletehistory'),
(114, 'Can change menu items delete history', 29, 'change_menuitemsdeletehistory'),
(115, 'Can delete menu items delete history', 29, 'delete_menuitemsdeletehistory'),
(116, 'Can view menu items delete history', 29, 'view_menuitemsdeletehistory'),
(117, 'Can add menu group leave history', 30, 'add_menugroupleavehistory'),
(118, 'Can change menu group leave history', 30, 'change_menugroupleavehistory'),
(119, 'Can delete menu group leave history', 30, 'delete_menugroupleavehistory'),
(120, 'Can view menu group leave history', 30, 'view_menugroupleavehistory'),
(121, 'Can add menu group leave', 31, 'add_menugroupleave'),
(122, 'Can change menu group leave', 31, 'change_menugroupleave'),
(123, 'Can delete menu group leave', 31, 'delete_menugroupleave'),
(124, 'Can view menu group leave', 31, 'view_menugroupleave'),
(125, 'Can add caterers', 32, 'add_caterers'),
(126, 'Can change caterers', 32, 'change_caterers'),
(127, 'Can delete caterers', 32, 'delete_caterers'),
(128, 'Can view caterers', 32, 'view_caterers'),
(129, 'Can add cities', 33, 'add_cities'),
(130, 'Can change cities', 33, 'change_cities'),
(131, 'Can delete cities', 33, 'delete_cities'),
(132, 'Can view cities', 33, 'view_cities'),
(133, 'Can add states', 34, 'add_states'),
(134, 'Can change states', 34, 'change_states'),
(135, 'Can delete states', 34, 'delete_states'),
(136, 'Can view states', 34, 'view_states'),
(137, 'Can add data entry', 35, 'add_dataentry'),
(138, 'Can change data entry', 35, 'change_dataentry'),
(139, 'Can delete data entry', 35, 'delete_dataentry'),
(140, 'Can view data entry', 35, 'view_dataentry');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-06-22 12:48:57.174697', '1', 'MealTimes object (1)', 1, '[{\"added\": {}}]', 16, 1),
(2, '2024-06-22 12:49:29.132201', '2', 'MealTimes object (2)', 1, '[{\"added\": {}}]', 16, 1),
(3, '2024-06-22 12:49:48.461825', '3', 'MealTimes object (3)', 1, '[{\"added\": {}}]', 16, 1),
(4, '2024-06-22 12:50:29.043043', '4', 'MealTimes object (4)', 1, '[{\"added\": {}}]', 16, 1),
(5, '2024-06-22 12:50:48.043952', '5', 'MealTimes object (5)', 1, '[{\"added\": {}}]', 16, 1),
(6, '2024-06-22 12:51:27.754165', '1', 'TokenType object (1)', 1, '[{\"added\": {}}]', 10, 1),
(7, '2024-06-22 12:51:31.001439', '2', 'TokenType object (2)', 1, '[{\"added\": {}}]', 10, 1),
(8, '2024-06-22 14:56:06.661851', '1', 'Cuisine object (1)', 1, '[{\"added\": {}}]', 19, 1),
(9, '2024-06-22 14:56:24.431456', '2', 'Cuisine object (2)', 1, '[{\"added\": {}}]', 19, 1),
(10, '2024-06-22 14:57:02.824917', '3', 'Cuisine object (3)', 1, '[{\"added\": {}}]', 19, 1),
(11, '2024-06-22 14:57:18.526057', '4', 'Cuisine object (4)', 1, '[{\"added\": {}}]', 19, 1),
(12, '2024-06-22 14:57:46.313740', '5', 'Cuisine object (5)', 1, '[{\"added\": {}}]', 19, 1),
(13, '2024-06-22 14:57:58.103342', '6', 'Cuisine object (6)', 1, '[{\"added\": {}}]', 19, 1),
(14, '2024-06-22 14:58:15.748281', '7', 'Cuisine object (7)', 1, '[{\"added\": {}}]', 19, 1),
(15, '2024-06-22 14:58:35.322775', '8', 'Cuisine object (8)', 1, '[{\"added\": {}}]', 19, 1),
(16, '2024-06-22 14:58:52.622024', '9', 'Cuisine object (9)', 1, '[{\"added\": {}}]', 19, 1),
(17, '2024-06-22 14:59:18.975760', '10', 'Cuisine object (10)', 1, '[{\"added\": {}}]', 19, 1),
(18, '2024-06-22 14:59:35.705776', '11', 'Cuisine object (11)', 1, '[{\"added\": {}}]', 19, 1),
(19, '2024-06-22 17:44:35.379173', '1', 'ResetPasswordToken object (1)', 3, '', 18, 1),
(20, '2024-06-22 19:43:58.573351', '2', 'Birthday Party', 3, '', 14, 1),
(21, '2024-06-22 20:50:17.398582', '1', 'CuisineItems object (1)', 3, '', 15, 1),
(22, '2024-06-22 20:50:32.362604', '1', 'My Birthday Party', 3, '', 14, 1),
(23, '2024-06-22 20:51:57.091787', '1', 'UserToken object (1)', 1, '[{\"added\": {}}]', 8, 1),
(24, '2024-06-22 20:52:20.155909', '2', 'UserToken object (2)', 1, '[{\"added\": {}}]', 8, 1),
(25, '2024-06-22 20:52:33.664928', '3', 'UserToken object (3)', 1, '[{\"added\": {}}]', 8, 1),
(26, '2024-06-22 20:55:46.155762', '3', 'UserToken object (3)', 2, '[{\"changed\": {\"fields\": [\"Is used\"]}}]', 8, 1),
(27, '2024-06-22 20:55:51.196105', '2', 'UserToken object (2)', 2, '[{\"changed\": {\"fields\": [\"Is used\"]}}]', 8, 1),
(28, '2024-06-22 20:55:55.263504', '1', 'UserToken object (1)', 2, '[{\"changed\": {\"fields\": [\"Is used\"]}}]', 8, 1),
(29, '2024-06-22 20:56:56.050480', '3', 'Birthday Party', 2, '[{\"changed\": {\"fields\": [\"Is completed\"]}}]', 14, 1),
(30, '2024-06-22 20:57:16.683627', '4', 'Birthday Party', 2, '[{\"changed\": {\"fields\": [\"Is completed\"]}}]', 14, 1),
(31, '2024-06-22 20:57:37.107556', '5', 'Birthday Party', 2, '[{\"changed\": {\"fields\": [\"Is completed\"]}}]', 14, 1),
(32, '2024-06-22 20:58:01.102421', '6', 'Birthday Party', 2, '[{\"changed\": {\"fields\": [\"Is completed\"]}}]', 14, 1),
(33, '2024-06-22 20:58:20.445812', '7', 'Birthday Party', 2, '[{\"changed\": {\"fields\": [\"Is completed\"]}}]', 14, 1),
(34, '2024-06-22 20:58:44.238726', '8', 'Birthday Party', 2, '[{\"changed\": {\"fields\": [\"Is completed\"]}}]', 14, 1),
(35, '2024-06-22 20:59:07.784643', '9', 'Birthday Party', 2, '[]', 14, 1),
(36, '2024-06-22 20:59:13.173009', '9', 'Birthday Party', 2, '[{\"changed\": {\"fields\": [\"Is completed\"]}}]', 14, 1),
(37, '2024-06-22 21:00:56.650344', '9', 'Birthday Party', 3, '', 14, 1),
(38, '2024-06-22 21:01:04.389390', '2', 'UserToken object (2)', 2, '[{\"changed\": {\"fields\": [\"Is used\", \"Used token count\"]}}]', 8, 1),
(39, '2024-06-22 21:29:45.651526', '3', 'CuisineItems object (3)', 3, '', 15, 1),
(40, '2024-06-22 21:29:45.736146', '2', 'CuisineItems object (2)', 3, '', 15, 1),
(41, '2024-06-22 21:29:53.378283', '11', 'Celebration', 3, '', 14, 1),
(42, '2024-06-22 21:29:53.420815', '10', 'My Birthday Party', 3, '', 14, 1),
(43, '2024-06-22 21:29:53.451248', '8', 'Birthday Party', 3, '', 14, 1),
(44, '2024-06-22 21:29:53.479179', '7', 'Birthday Party', 3, '', 14, 1),
(45, '2024-06-22 21:29:53.509395', '6', 'Birthday Party', 3, '', 14, 1),
(46, '2024-06-22 21:29:53.628494', '5', 'Birthday Party', 3, '', 14, 1),
(47, '2024-06-22 21:29:53.659028', '4', 'Birthday Party', 3, '', 14, 1),
(48, '2024-06-22 21:29:53.686786', '3', 'Birthday Party', 3, '', 14, 1),
(49, '2024-06-22 21:30:22.108473', '3', 'UserToken object (3)', 3, '', 8, 1),
(50, '2024-06-22 21:30:22.188566', '2', 'UserToken object (2)', 3, '', 8, 1),
(51, '2024-06-22 21:30:28.640965', '4', 'UserToken object (4)', 2, '[{\"changed\": {\"fields\": [\"Used token count\"]}}]', 8, 1),
(52, '2024-06-22 21:30:36.244894', '1', 'UserToken object (1)', 2, '[{\"changed\": {\"fields\": [\"Is used\", \"Used token count\"]}}]', 8, 1),
(53, '2024-06-23 15:48:43.750754', '1', 'DishIngedients object (1)', 1, '[{\"added\": {}}]', 12, 1),
(54, '2024-06-23 15:49:08.668498', '1', 'DishRecipe object (1)', 1, '[{\"added\": {}}]', 13, 1),
(55, '2024-06-23 16:08:50.438575', '1', 'DishImages object (1)', 1, '[{\"added\": {}}]', 9, 1),
(56, '2024-06-23 16:10:12.039351', '1', 'DishImages object (1)', 3, '', 9, 1),
(57, '2024-06-23 16:10:33.281237', '2', 'DishImages object (2)', 1, '[{\"added\": {}}]', 9, 1),
(58, '2024-06-24 06:13:57.387175', '2', 'DishImages object (2)', 3, '', 9, 1),
(59, '2024-06-24 06:14:35.824161', '3', 'DishImages object (3)', 1, '[{\"added\": {}}]', 9, 1),
(60, '2024-06-24 06:14:53.937789', '4', 'DishImages object (4)', 1, '[{\"added\": {}}]', 9, 1),
(61, '2024-06-24 06:15:12.197902', '5', 'DishImages object (5)', 1, '[{\"added\": {}}]', 9, 1),
(62, '2024-06-24 06:15:39.776237', '6', 'DishImages object (6)', 1, '[{\"added\": {}}]', 9, 1),
(63, '2024-06-24 10:39:35.754710', '14', 'My Birthday Menu', 1, '[{\"added\": {}}]', 14, 1),
(64, '2024-06-24 20:18:03.730314', '4', 'MealTimes object (4)', 2, '[{\"changed\": {\"fields\": [\"Meal name\"]}}]', 16, 1),
(65, '2024-06-27 07:34:29.228201', '13', 'Celebration2', 2, '[{\"changed\": {\"fields\": [\"Is completed\", \"Updated at\"]}}]', 14, 1),
(66, '2024-06-27 07:35:24.322099', '15', 'Test', 1, '[{\"added\": {}}]', 14, 1),
(67, '2024-06-27 07:36:05.397794', '15', 'Test', 2, '[{\"changed\": {\"fields\": [\"Is completed\", \"Updated at\"]}}]', 14, 1),
(68, '2024-06-27 07:36:39.938908', '7', 'UserToken object (7)', 1, '[{\"added\": {}}]', 8, 1),
(69, '2024-06-27 07:36:49.164456', '4', 'UserToken object (4)', 2, '[{\"changed\": {\"fields\": [\"Is used\", \"Used token count\"]}}]', 8, 1),
(70, '2024-06-27 07:38:20.706642', '7', 'UserToken object (7)', 2, '[{\"changed\": {\"fields\": [\"Used token count\"]}}]', 8, 1),
(71, '2024-06-27 07:38:47.855201', '16', 'Test2', 1, '[{\"added\": {}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(32, 'api', 'caterers'),
(33, 'api', 'cities'),
(6, 'api', 'countries'),
(19, 'api', 'cuisine'),
(15, 'api', 'cuisineitems'),
(7, 'api', 'customuser'),
(35, 'api', 'dataentry'),
(11, 'api', 'dishes'),
(9, 'api', 'dishimages'),
(12, 'api', 'dishingedients'),
(13, 'api', 'dishrecipe'),
(16, 'api', 'mealtimes'),
(31, 'api', 'menugroupleave'),
(30, 'api', 'menugroupleavehistory'),
(28, 'api', 'menugroupuserrequest'),
(29, 'api', 'menuitemsdeletehistory'),
(26, 'api', 'payment'),
(18, 'api', 'resetpasswordtoken'),
(34, 'api', 'states'),
(10, 'api', 'tokentype'),
(17, 'api', 'tokenusage'),
(14, 'api', 'usercuisine'),
(27, 'api', 'userloginhistory'),
(8, 'api', 'usertoken'),
(20, 'api', 'visitor'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(21, 'social_django', 'association'),
(22, 'social_django', 'code'),
(23, 'social_django', 'nonce'),
(25, 'social_django', 'partial'),
(24, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-22 10:53:40.277709'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-06-22 10:53:40.882710'),
(3, 'auth', '0001_initial', '2024-06-22 10:53:44.579015'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-06-22 10:53:45.949633'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-06-22 10:53:45.995634'),
(6, 'auth', '0004_alter_user_username_opts', '2024-06-22 10:53:46.048911'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-06-22 10:53:46.098211'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-06-22 10:53:46.149869'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-06-22 10:53:46.186424'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-06-22 10:53:46.219604'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-06-22 10:53:46.265926'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-06-22 10:53:46.366903'),
(13, 'auth', '0011_update_proxy_permissions', '2024-06-22 10:53:46.405237'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-06-22 10:53:46.444449'),
(15, 'api', '0001_initial', '2024-06-22 10:53:52.637796'),
(16, 'admin', '0001_initial', '2024-06-22 10:53:54.223476'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-06-22 10:53:54.269202'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-22 10:53:54.322028'),
(19, 'sessions', '0001_initial', '2024-06-22 10:53:54.797606'),
(20, 'api', '0002_mealtimes_tokentype_dishes_dishimages_dishingedients_and_more', '2024-06-22 12:27:04.408130'),
(21, 'api', '0003_resetpasswordtoken', '2024-06-22 12:31:30.763474'),
(22, 'api', '0004_rename_continentcode_countries_continent_code_and_more', '2024-06-22 12:45:20.508468'),
(23, 'api', '0005_remove_dishes_country_cuisine_dishes_cuisine', '2024-06-22 14:54:42.833651'),
(24, 'api', '0006_usercuisine_token', '2024-06-22 21:28:44.148409'),
(25, 'api', '0007_delete_tokenusage', '2024-06-22 22:00:10.961693'),
(26, 'api', '0008_visitor', '2024-06-23 07:32:05.816656'),
(27, 'api', '0009_alter_countries_phone_alter_customuser_mobile_and_more', '2024-06-24 05:29:27.277163'),
(28, 'default', '0001_initial', '2024-06-27 18:25:01.275876'),
(29, 'social_auth', '0001_initial', '2024-06-27 18:25:01.299960'),
(30, 'default', '0002_add_related_name', '2024-06-27 18:25:01.395889'),
(31, 'social_auth', '0002_add_related_name', '2024-06-27 18:25:01.459900'),
(32, 'default', '0003_alter_email_max_length', '2024-06-27 18:25:01.580072'),
(33, 'social_auth', '0003_alter_email_max_length', '2024-06-27 18:25:01.620426'),
(34, 'default', '0004_auto_20160423_0400', '2024-06-27 18:25:01.684430'),
(35, 'social_auth', '0004_auto_20160423_0400', '2024-06-27 18:25:01.732434'),
(36, 'social_auth', '0005_auto_20160727_2333', '2024-06-27 18:25:02.054351'),
(37, 'social_django', '0006_partial', '2024-06-27 18:25:02.534126'),
(38, 'social_django', '0007_code_timestamp', '2024-06-27 18:25:03.033140'),
(39, 'social_django', '0008_partial_timestamp', '2024-06-27 18:25:03.607433'),
(40, 'social_django', '0009_auto_20191118_0520', '2024-06-27 18:25:04.376839'),
(41, 'social_django', '0010_uid_db_index', '2024-06-27 18:25:04.665521'),
(42, 'social_django', '0011_alter_id_fields', '2024-06-27 18:25:10.249760'),
(43, 'social_django', '0012_usersocialauth_extra_data_new', '2024-06-27 18:25:10.748866'),
(44, 'social_django', '0013_migrate_extra_data', '2024-06-27 18:25:10.949921'),
(45, 'social_django', '0014_remove_usersocialauth_extra_data', '2024-06-27 18:25:11.470388'),
(46, 'social_django', '0015_rename_extra_data_new_usersocialauth_extra_data', '2024-06-27 18:25:14.114427'),
(47, 'social_django', '0004_auto_20160423_0400', '2024-06-27 18:25:14.146409'),
(48, 'social_django', '0005_auto_20160727_2333', '2024-06-27 18:25:14.186392'),
(49, 'social_django', '0001_initial', '2024-06-27 18:25:14.218441'),
(50, 'social_django', '0002_add_related_name', '2024-06-27 18:25:14.258473'),
(51, 'social_django', '0003_alter_email_max_length', '2024-06-27 18:25:14.290841'),
(52, 'api', '0010_alter_customuser_country_alter_customuser_mobile', '2024-06-27 18:57:26.879735'),
(53, 'api', '0011_alter_customuser_mobile', '2024-06-27 18:59:01.460202'),
(54, 'api', '0012_payment', '2024-06-28 04:37:31.746655'),
(55, 'api', '0013_alter_payment_status', '2024-06-28 04:48:22.047761'),
(56, 'api', '0014_usertoken_payment', '2024-06-28 05:50:15.345256'),
(57, 'api', '0015_customuser_login_provider_userloginhistory', '2024-06-29 14:08:04.310758'),
(58, 'api', '0016_usercuisine_is_public_and_more', '2024-07-03 05:30:40.474229'),
(59, 'api', '0017_menugroupleave_menugroupleavehistory', '2024-07-05 20:10:46.291889'),
(60, 'api', '0018_alter_cuisineitems_unique_together', '2024-07-08 11:11:48.953588'),
(61, 'api', '0019_cities_caterers_states_cities_state', '2024-07-13 05:36:54.992817'),
(62, 'api', '0020_rename_namer_caterers_name_dataentry', '2024-07-13 19:18:45.081045');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5njcdgjik3t50gbsbdnnc6wbub3sj1iq', '.eJxVjDsOAiEUAO9CbQgf-VnaewbC4z1k1UCy7FbGuxuSLbSdmcybxbRvNe6D1rgguzDJTr8MUn5SmwIfqd07z71t6wJ8Jvywg9860ut6tH-DmkadWxN8EaBc0A5Rn4OTQBqUcCWRE0YR2SB8CQWDVhmzAWllAWmkVdp79vkCz_43Ug:1sLkPJ:4LFkNdCvzHJTwVD_1MR17AOhyAszbSu5Ae1uJ-4dwqw', '2024-07-08 14:10:57.214167'),
('cpgelt8cgdrx3dne8m5ygd316fbb7cmf', '.eJxVjDsOwjAQBe_iGkVeG3-WjiolR7C89jqOiLAUkwpxdwiigOpJ8zTzECFu9xq2zmuYszgJEIdfRjFd-bYfvaU5LiG1lYcv7cPU2rTwMH7mcn5r6t-vsde9atAXScqhdjnrIzog1qSkK5GdNIrZovQFS0atUk6GwEIhMGCV9l48X5DKNuU:1sMuD9:7KGRp_8tj960itArpQjU_fXTm1u2EjAO0x-FOFTjNT4', '2024-07-11 18:51:11.459183'),
('dz3kgyfu4krm9qc3hh5qn90mae4zv9vf', '.eJxVjDsOAiEUAO9CbQgf-VnaewbC4z1k1UCy7FbGuxuSLbSdmcybxbRvNe6D1rgguzDJTr8MUn5SmwIfqd07z71t6wJ8Jvywg9860ut6tH-DmkadWxN8EaBc0A5Rn4OTQBqUcCWRE0YR2SB8CQWDVhmzAWllAWmkVdp79vkCz_43Ug:1sMQT3:cM48SbbxlO3uHblLf-YHsptzl3sw6WvweGohdXvSsSE', '2024-07-10 11:05:37.962139'),
('qzol08wcwefjesvf44yspy0odifwdust', '.eJxVjDsOAiEUAO9CbQgf-VnaewbC4z1k1UCy7FbGuxuSLbSdmcybxbRvNe6D1rgguzDJTr8MUn5SmwIfqd07z71t6wJ8Jvywg9860ut6tH-DmkadWxN8EaBc0A5Rn4OTQBqUcCWRE0YR2SB8CQWDVhmzAWllAWmkVdp79vkCz_43Ug:1sL4se:v00j5F2rTrOfsXwLBDSCK3hqSxdteneD7BZupUQQqcE', '2024-07-06 17:50:28.654201');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` bigint(20) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` bigint(20) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `extra_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra_data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_caterers`
--
ALTER TABLE `api_caterers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `api_caterers_user_id_3ea62524_fk_api_customuser_id` (`user_id`),
  ADD KEY `api_caterers_city_id_0a6f01fb_fk_api_cities_id` (`city_id`);

--
-- Indexes for table `api_cities`
--
ALTER TABLE `api_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_cities_state_id_5dab9433_fk_api_states_id` (`state_id`);

--
-- Indexes for table `api_countries`
--
ALTER TABLE `api_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `api_cuisine`
--
ALTER TABLE `api_cuisine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_cuisine_country_id_b3316d7c_fk_api_countries_id` (`country_id`),
  ADD KEY `api_cuisine_created_by_id_e47188d1_fk_api_customuser_id` (`created_by_id`);

--
-- Indexes for table `api_cuisineitems`
--
ALTER TABLE `api_cuisineitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_cuisineitems_cuisine_id_dish_id_user_id_b9693174_uniq` (`cuisine_id`,`dish_id`,`user_id`),
  ADD KEY `api_cuisineitems_dish_id_1f226502_fk_api_dishes_id` (`dish_id`),
  ADD KEY `api_cuisineitems_user_id_1d1f40fe` (`user_id`),
  ADD KEY `api_cuisineitems_cuisine_id_c113672b` (`cuisine_id`);

--
-- Indexes for table `api_customuser`
--
ALTER TABLE `api_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `api_customuser_country_id_1530926a_fk_api_countries_id` (`country_id`);

--
-- Indexes for table `api_customuser_groups`
--
ALTER TABLE `api_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_customuser_groups_customuser_id_group_id_d5b0c2ab_uniq` (`customuser_id`,`group_id`),
  ADD KEY `api_customuser_groups_group_id_f049027c_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `api_customuser_user_permissions`
--
ALTER TABLE `api_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_customuser_user_perm_customuser_id_permission_9deacd8d_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `api_customuser_user__permission_id_8735d73e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `api_dataentry`
--
ALTER TABLE `api_dataentry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_dataentry_cater_id_e810212e_fk_api_caterers_id` (`cater_id`),
  ADD KEY `api_dataentry_menu_id_ff91e8f7_fk_api_usercuisine_id` (`menu_id`);

--
-- Indexes for table `api_dishes`
--
ALTER TABLE `api_dishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_dishes_created_by_id_02cad3eb_fk_api_customuser_id` (`created_by_id`),
  ADD KEY `api_dishes_meal_time_id_e887933b_fk_api_mealtimes_id` (`meal_time_id`),
  ADD KEY `api_dishes_cuisine_id_a4f7430f_fk_api_cuisine_id` (`cuisine_id`);

--
-- Indexes for table `api_dishimages`
--
ALTER TABLE `api_dishimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_dishimages_created_by_id_05c03c2c_fk_api_customuser_id` (`created_by_id`),
  ADD KEY `api_dishimages_dish_id_64d10102_fk_api_dishes_id` (`dish_id`);

--
-- Indexes for table `api_dishingedients`
--
ALTER TABLE `api_dishingedients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dish_id` (`dish_id`),
  ADD KEY `api_dishingedients_created_by_id_b967ea42_fk_api_customuser_id` (`created_by_id`),
  ADD KEY `api_dishingedients_updated_by_id_a9becbe3_fk_api_customuser_id` (`updated_by_id`);

--
-- Indexes for table `api_dishrecipe`
--
ALTER TABLE `api_dishrecipe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dish_id` (`dish_id`),
  ADD KEY `api_dishrecipe_created_by_id_eef6d6c4_fk_api_customuser_id` (`created_by_id`),
  ADD KEY `api_dishrecipe_updated_by_id_3f324d74_fk_api_customuser_id` (`updated_by_id`);

--
-- Indexes for table `api_mealtimes`
--
ALTER TABLE `api_mealtimes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meal_name` (`meal_name`),
  ADD UNIQUE KEY `quote` (`quote`) USING HASH,
  ADD UNIQUE KEY `description` (`description`) USING HASH;

--
-- Indexes for table `api_menugroupleave`
--
ALTER TABLE `api_menugroupleave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_menugroupleave_menu_id_ad2fa21c_fk_api_usercuisine_id` (`menu_id`),
  ADD KEY `api_menugroupleave_user_id_e311ebfc_fk_api_customuser_id` (`user_id`);

--
-- Indexes for table `api_menugroupleavehistory`
--
ALTER TABLE `api_menugroupleavehistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_menugroupleavehistory_menu_id_bb1cefd5_fk_api_usercuisine_id` (`menu_id`),
  ADD KEY `api_menugroupleavehistory_user_id_7fe7426c_fk_api_customuser_id` (`user_id`);

--
-- Indexes for table `api_menugroupuserrequest`
--
ALTER TABLE `api_menugroupuserrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_menugroupuserrequest_menu_id_03daedf1_fk_api_usercuisine_id` (`menu_id`),
  ADD KEY `api_menugroupuserrequest_user_id_ca53bb5f_fk_api_customuser_id` (`user_id`);

--
-- Indexes for table `api_menuitemsdeletehistory`
--
ALTER TABLE `api_menuitemsdeletehistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_menuitemsdeleteh_add_by_user_id_20e69551_fk_api_custo` (`add_by_user_id`),
  ADD KEY `api_menuitemsdeleteh_cuisine_id_3818185d_fk_api_userc` (`cuisine_id`),
  ADD KEY `api_menuitemsdeletehistory_dish_id_d1c8b662_fk_api_dishes_id` (`dish_id`),
  ADD KEY `api_menuitemsdeleteh_remove_by_user_id_97519c62_fk_api_custo` (`remove_by_user_id`);

--
-- Indexes for table `api_payment`
--
ALTER TABLE `api_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `api_payment_user_id_d7835ec0_fk_api_customuser_id` (`user_id`);

--
-- Indexes for table `api_resetpasswordtoken`
--
ALTER TABLE `api_resetpasswordtoken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_resetpasswordtoken_user_id_e849afac_fk_api_customuser_id` (`user_id`);

--
-- Indexes for table `api_states`
--
ALTER TABLE `api_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_states_country_id_6b183956_fk_api_countries_id` (`country_id`);

--
-- Indexes for table `api_tokentype`
--
ALTER TABLE `api_tokentype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `api_usercuisine`
--
ALTER TABLE `api_usercuisine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cuisine_id` (`cuisine`),
  ADD KEY `api_usercuisine_user_id_98e53be4_fk_api_customuser_id` (`user_id`),
  ADD KEY `api_usercuisine_token_id_15201b61_fk_api_usertoken_id` (`token_id`);

--
-- Indexes for table `api_userloginhistory`
--
ALTER TABLE `api_userloginhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_userloginhistory_user_id_510f1318_fk_api_customuser_id` (`user_id`);

--
-- Indexes for table `api_usertoken`
--
ALTER TABLE `api_usertoken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_usertoken_token_type_id_6d55e87d_fk_api_tokentype_id` (`token_type_id`),
  ADD KEY `api_usertoken_user_id_5984b1b0_fk_api_customuser_id` (`user_id`),
  ADD KEY `api_usertoken_payment_id_04f51df9_fk_api_payment_id` (`payment_id`);

--
-- Indexes for table `api_visitor`
--
ALTER TABLE `api_visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_api_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_api_customuser_id` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_caterers`
--
ALTER TABLE `api_caterers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `api_cities`
--
ALTER TABLE `api_cities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `api_countries`
--
ALTER TABLE `api_countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `api_cuisine`
--
ALTER TABLE `api_cuisine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `api_cuisineitems`
--
ALTER TABLE `api_cuisineitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `api_customuser`
--
ALTER TABLE `api_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `api_customuser_groups`
--
ALTER TABLE `api_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_customuser_user_permissions`
--
ALTER TABLE `api_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_dataentry`
--
ALTER TABLE `api_dataentry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `api_dishes`
--
ALTER TABLE `api_dishes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1744;

--
-- AUTO_INCREMENT for table `api_dishimages`
--
ALTER TABLE `api_dishimages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `api_dishingedients`
--
ALTER TABLE `api_dishingedients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_dishrecipe`
--
ALTER TABLE `api_dishrecipe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_mealtimes`
--
ALTER TABLE `api_mealtimes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `api_menugroupleave`
--
ALTER TABLE `api_menugroupleave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_menugroupleavehistory`
--
ALTER TABLE `api_menugroupleavehistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_menugroupuserrequest`
--
ALTER TABLE `api_menugroupuserrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `api_menuitemsdeletehistory`
--
ALTER TABLE `api_menuitemsdeletehistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `api_payment`
--
ALTER TABLE `api_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `api_resetpasswordtoken`
--
ALTER TABLE `api_resetpasswordtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `api_states`
--
ALTER TABLE `api_states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `api_tokentype`
--
ALTER TABLE `api_tokentype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_usercuisine`
--
ALTER TABLE `api_usercuisine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `api_userloginhistory`
--
ALTER TABLE `api_userloginhistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `api_usertoken`
--
ALTER TABLE `api_usertoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `api_visitor`
--
ALTER TABLE `api_visitor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_caterers`
--
ALTER TABLE `api_caterers`
  ADD CONSTRAINT `api_caterers_city_id_0a6f01fb_fk_api_cities_id` FOREIGN KEY (`city_id`) REFERENCES `api_cities` (`id`),
  ADD CONSTRAINT `api_caterers_user_id_3ea62524_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_cities`
--
ALTER TABLE `api_cities`
  ADD CONSTRAINT `api_cities_state_id_5dab9433_fk_api_states_id` FOREIGN KEY (`state_id`) REFERENCES `api_states` (`id`);

--
-- Constraints for table `api_cuisine`
--
ALTER TABLE `api_cuisine`
  ADD CONSTRAINT `api_cuisine_country_id_b3316d7c_fk_api_countries_id` FOREIGN KEY (`country_id`) REFERENCES `api_countries` (`id`),
  ADD CONSTRAINT `api_cuisine_created_by_id_e47188d1_fk_api_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_cuisineitems`
--
ALTER TABLE `api_cuisineitems`
  ADD CONSTRAINT `api_cuisineitems_cuisine_id_c113672b_fk_api_usercuisine_id` FOREIGN KEY (`cuisine_id`) REFERENCES `api_usercuisine` (`id`),
  ADD CONSTRAINT `api_cuisineitems_dish_id_1f226502_fk_api_dishes_id` FOREIGN KEY (`dish_id`) REFERENCES `api_dishes` (`id`),
  ADD CONSTRAINT `api_cuisineitems_user_id_1d1f40fe_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_customuser`
--
ALTER TABLE `api_customuser`
  ADD CONSTRAINT `api_customuser_country_id_1530926a_fk_api_countries_id` FOREIGN KEY (`country_id`) REFERENCES `api_countries` (`id`);

--
-- Constraints for table `api_customuser_groups`
--
ALTER TABLE `api_customuser_groups`
  ADD CONSTRAINT `api_customuser_group_customuser_id_9eb4b783_fk_api_custo` FOREIGN KEY (`customuser_id`) REFERENCES `api_customuser` (`id`),
  ADD CONSTRAINT `api_customuser_groups_group_id_f049027c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `api_customuser_user_permissions`
--
ALTER TABLE `api_customuser_user_permissions`
  ADD CONSTRAINT `api_customuser_user__customuser_id_5365c9ba_fk_api_custo` FOREIGN KEY (`customuser_id`) REFERENCES `api_customuser` (`id`),
  ADD CONSTRAINT `api_customuser_user__permission_id_8735d73e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `api_dataentry`
--
ALTER TABLE `api_dataentry`
  ADD CONSTRAINT `api_dataentry_cater_id_e810212e_fk_api_caterers_id` FOREIGN KEY (`cater_id`) REFERENCES `api_caterers` (`id`),
  ADD CONSTRAINT `api_dataentry_menu_id_ff91e8f7_fk_api_usercuisine_id` FOREIGN KEY (`menu_id`) REFERENCES `api_usercuisine` (`id`);

--
-- Constraints for table `api_dishes`
--
ALTER TABLE `api_dishes`
  ADD CONSTRAINT `api_dishes_created_by_id_02cad3eb_fk_api_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `api_customuser` (`id`),
  ADD CONSTRAINT `api_dishes_cuisine_id_a4f7430f_fk_api_cuisine_id` FOREIGN KEY (`cuisine_id`) REFERENCES `api_cuisine` (`id`),
  ADD CONSTRAINT `api_dishes_meal_time_id_e887933b_fk_api_mealtimes_id` FOREIGN KEY (`meal_time_id`) REFERENCES `api_mealtimes` (`id`);

--
-- Constraints for table `api_dishimages`
--
ALTER TABLE `api_dishimages`
  ADD CONSTRAINT `api_dishimages_created_by_id_05c03c2c_fk_api_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `api_customuser` (`id`),
  ADD CONSTRAINT `api_dishimages_dish_id_64d10102_fk_api_dishes_id` FOREIGN KEY (`dish_id`) REFERENCES `api_dishes` (`id`);

--
-- Constraints for table `api_dishingedients`
--
ALTER TABLE `api_dishingedients`
  ADD CONSTRAINT `api_dishingedients_created_by_id_b967ea42_fk_api_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `api_customuser` (`id`),
  ADD CONSTRAINT `api_dishingedients_dish_id_0e6183fa_fk_api_dishes_id` FOREIGN KEY (`dish_id`) REFERENCES `api_dishes` (`id`),
  ADD CONSTRAINT `api_dishingedients_updated_by_id_a9becbe3_fk_api_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_dishrecipe`
--
ALTER TABLE `api_dishrecipe`
  ADD CONSTRAINT `api_dishrecipe_created_by_id_eef6d6c4_fk_api_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `api_customuser` (`id`),
  ADD CONSTRAINT `api_dishrecipe_dish_id_da48256c_fk_api_dishes_id` FOREIGN KEY (`dish_id`) REFERENCES `api_dishes` (`id`),
  ADD CONSTRAINT `api_dishrecipe_updated_by_id_3f324d74_fk_api_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_menugroupleave`
--
ALTER TABLE `api_menugroupleave`
  ADD CONSTRAINT `api_menugroupleave_menu_id_ad2fa21c_fk_api_usercuisine_id` FOREIGN KEY (`menu_id`) REFERENCES `api_usercuisine` (`id`),
  ADD CONSTRAINT `api_menugroupleave_user_id_e311ebfc_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_menugroupleavehistory`
--
ALTER TABLE `api_menugroupleavehistory`
  ADD CONSTRAINT `api_menugroupleavehistory_menu_id_bb1cefd5_fk_api_usercuisine_id` FOREIGN KEY (`menu_id`) REFERENCES `api_usercuisine` (`id`),
  ADD CONSTRAINT `api_menugroupleavehistory_user_id_7fe7426c_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_menugroupuserrequest`
--
ALTER TABLE `api_menugroupuserrequest`
  ADD CONSTRAINT `api_menugroupuserrequest_menu_id_03daedf1_fk_api_usercuisine_id` FOREIGN KEY (`menu_id`) REFERENCES `api_usercuisine` (`id`),
  ADD CONSTRAINT `api_menugroupuserrequest_user_id_ca53bb5f_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_menuitemsdeletehistory`
--
ALTER TABLE `api_menuitemsdeletehistory`
  ADD CONSTRAINT `api_menuitemsdeleteh_add_by_user_id_20e69551_fk_api_custo` FOREIGN KEY (`add_by_user_id`) REFERENCES `api_customuser` (`id`),
  ADD CONSTRAINT `api_menuitemsdeleteh_cuisine_id_3818185d_fk_api_userc` FOREIGN KEY (`cuisine_id`) REFERENCES `api_usercuisine` (`id`),
  ADD CONSTRAINT `api_menuitemsdeleteh_remove_by_user_id_97519c62_fk_api_custo` FOREIGN KEY (`remove_by_user_id`) REFERENCES `api_customuser` (`id`),
  ADD CONSTRAINT `api_menuitemsdeletehistory_dish_id_d1c8b662_fk_api_dishes_id` FOREIGN KEY (`dish_id`) REFERENCES `api_dishes` (`id`);

--
-- Constraints for table `api_payment`
--
ALTER TABLE `api_payment`
  ADD CONSTRAINT `api_payment_user_id_d7835ec0_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_resetpasswordtoken`
--
ALTER TABLE `api_resetpasswordtoken`
  ADD CONSTRAINT `api_resetpasswordtoken_user_id_e849afac_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_states`
--
ALTER TABLE `api_states`
  ADD CONSTRAINT `api_states_country_id_6b183956_fk_api_countries_id` FOREIGN KEY (`country_id`) REFERENCES `api_countries` (`id`);

--
-- Constraints for table `api_usercuisine`
--
ALTER TABLE `api_usercuisine`
  ADD CONSTRAINT `api_usercuisine_token_id_15201b61_fk_api_usertoken_id` FOREIGN KEY (`token_id`) REFERENCES `api_usertoken` (`id`),
  ADD CONSTRAINT `api_usercuisine_user_id_98e53be4_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_userloginhistory`
--
ALTER TABLE `api_userloginhistory`
  ADD CONSTRAINT `api_userloginhistory_user_id_510f1318_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `api_usertoken`
--
ALTER TABLE `api_usertoken`
  ADD CONSTRAINT `api_usertoken_payment_id_04f51df9_fk_api_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `api_payment` (`id`),
  ADD CONSTRAINT `api_usertoken_token_type_id_6d55e87d_fk_api_tokentype_id` FOREIGN KEY (`token_type_id`) REFERENCES `api_tokentype` (`id`),
  ADD CONSTRAINT `api_usertoken_user_id_5984b1b0_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_api_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
