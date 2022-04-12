-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 07:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_11_034129_create_sessions_table', 1),
(7, '2022_04_11_042408_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_name`, `brand_name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Sony Smart TV - 2015', 'Phone', 'Sony', NULL, 'product-images/product-2.jpg', 1, '2022-04-11 11:09:01', '2022-04-11 22:48:30'),
(3, 'Samsung Galaxy A13', 'Phone', 'Samsung', '<h2 id=\"samsung-galaxy-a22-full-specifications\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.5em; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 1.4; font-weight: 600; font-size: 27px; overflow-wrap: break-word; font-family: Poppins; color: rgb(44, 47, 52);\"><center style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\">Samsung Galaxy A13 Full Specifications</center></h2><figure class=\"wp-block-table aligncenter\" style=\"padding: 0px; list-style: none; border: 0px; outline: none; display: table; clear: both; text-align: center; overflow-x: auto; width: auto; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px; margin-right: auto !important; margin-bottom: 0px !important; margin-left: auto !important;\"><div class=\"table-is-responsive\" style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; clear: both; overflow-x: auto;\"><table style=\"padding: 0px; margin: 0px 0px 1.5em; list-style: none; border: 0px; outline: none; border-spacing: 0px; width: 547.391px;\"><tbody style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600;\">First Release</span></td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">March 23, 2022</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600;\">Colors</span></td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Black, White, Peach, Blue</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; text-align: left; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Connectivity</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; text-align: left; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Network</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">2G, 3G, 4G</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">SIM</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Dual Nano SIM</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">WLAN</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅&nbsp;dual-band, Wi-Fi direct, Wi-Fi hotspot</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Bluetooth</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ v5.0, A2DP, LE</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">GPS</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ A-GPS, GLONASS, BDS, Galileo</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Radio</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✖</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">USB</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">v2.0</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">OTG</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">USB Type-C</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">NFC</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ (market-dependent)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; text-align: left; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Body</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; text-align: left; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Style</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Minimal Notch</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Material</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Gorilla Glass 5 front, plastic body</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Water Resistance</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✖</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Dimensions</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">165.1 x 76.4 x 8.8 millimeters</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Weight</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">195 grams</td></tr></tbody></table></div></figure>', 'product-images/Samsung-Galaxy-A13.jpg', 1, '2022-04-11 22:48:10', '2022-04-11 22:48:10'),
(4, 'OnePlus 10 Pro 5G', 'Phone', 'OnePlus', '<h2 class=\"has-text-align-center\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.5em; margin-left: 0px; list-style: none; border: 0px; outline: none; line-height: 1.4; font-weight: 600; font-size: 27px; overflow-wrap: break-word; text-align: center; font-family: Poppins; color: rgb(44, 47, 52);\">OnePlus 10 Pro 5G Full Specifications</h2><figure class=\"wp-block-table aligncenter\" style=\"padding: 0px; list-style: none; border: 0px; outline: none; display: table; clear: both; text-align: center; overflow-x: auto; width: auto; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px; margin-right: auto !important; margin-bottom: 0px !important; margin-left: auto !important;\"><div class=\"table-is-responsive\" style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; clear: both; overflow-x: auto;\"><table style=\"padding: 0px; margin: 0px 0px 1.5em; list-style: none; border: 0px; outline: none; border-spacing: 0px; width: 906.391px;\"><tbody style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600;\">First Release</span></td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">January 13, 2022</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600;\">Colors</span></td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Volcanic Black, Emerald Forest, Panda White (Extreme Edition)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; text-align: left; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Connectivity</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; text-align: left; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Network</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">2G, 3G, 4G, 5G</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">SIM</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Dual Nano SIM</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">WLAN</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ dual-band, Wi-Fi direct, Wi-Fi hotspot</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Bluetooth</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ v5.2, A2DP, LE, aptX HD</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">GPS</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ dual-band A-GPS, GLONASS, BDS, GALILEO</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Radio</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✖</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">USB</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">v3.1</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">OTG</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">USB Type-C</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">NFC</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; text-align: left; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Body</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; text-align: left; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Style</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Punch-hole</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Material</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Gorilla Glass Victus front, Gorilla Glass 5 back, aluminum frame</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Water Resistance</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ IP68 dust/water resistant (up to 1.5m for 30 mins)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Dimensions</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">163 x 73.9 x 8.6 millimeters</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Weight</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">201 grams</td></tr></tbody></table></div></figure>', 'product-images/OnePlus-10-Pro.jpg', 1, '2022-04-11 22:49:27', '2022-04-11 22:49:27'),
(5, 'Lenovo IdeaPad Slim 3i', 'Laptop', 'Lenovo', NULL, 'product-images/notebook-in5510nt-cnb-00055lf110-gy-backlit_fpr.png', 1, '2022-04-11 22:57:05', '2022-04-11 23:21:14'),
(6, 'Dell Inspiron 15', 'Laptop', 'Dell', NULL, 'product-images/Capture.PNG', 1, '2022-04-11 22:58:31', '2022-04-11 23:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('k21bNR8D2SjGKd8oqW4HjST0lHcu81Hk2261kApv', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia0xNMndweERDNTBoRUxtSFVXZmVYWTdxTllXSkNaZTZld3ZyOTFoNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly9sb2NhbGhvc3QvYmF0Y2gzLWFsYW1pbi9hbGFtaW5fMDQwMDAzMzMyNC9wdWJsaWMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFRsL1RCVEVWRHFrL1lubzNlSVBZR3VVNmtzdHlZcElYeGczcll1aVNSUUNXOWp2NVpJZDdtIjt9', 1649740909);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'test@test.com', NULL, '$2y$10$Tl/TBTEVDqk/Yno3eIPYGuU6kstyYpIXxg3rYuiSRQCW9jv5ZId7m', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-10 21:46:26', '2022-04-11 23:16:16'),
(2, 'MD ALAMIN', 'admin1@gmail.com', NULL, '$2y$10$8rQ6Jn17e1MxOq4DmfOtLuQFndmVXWAGK2EMkbwp4yHekAyDmpF0O', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11 11:47:26', '2022-04-11 23:16:33'),
(3, 'Alamin', 'demo2@gmail.com', NULL, '$2y$10$8SYdYchc/vW.CjrXOBZoceohsz6wgwkiHfacY5Ha8ncE1M1quMDCu', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11 22:36:36', '2022-04-11 23:16:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
