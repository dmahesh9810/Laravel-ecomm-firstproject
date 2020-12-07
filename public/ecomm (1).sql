-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 07:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahesh', 'mahesh@gmail.com', '$2y$10$I4hjYE4bphJyCxO6nd9jT.hQm0/K0mv4QH1iha7kPU/edMEb8u.HS', NULL, '2020-12-03 13:19:21', '2020-12-03 13:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(27, 126, 5, '2020-11-30 10:23:45', '2020-11-30 10:23:45'),
(28, 124, 5, '2020-11-30 10:23:48', '2020-11-30 10:23:48'),
(29, 131, 5, '2020-11-30 10:23:49', '2020-11-30 10:23:49'),
(30, 125, 5, '2020-11-30 10:23:51', '2020-11-30 10:23:51'),
(31, 126, 5, '2020-11-30 10:23:54', '2020-11-30 10:23:54'),
(35, 98, 1, '2020-12-05 12:26:10', '2020-12-05 12:26:10');

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
(13, '2014_10_12_100000_create_password_resets_table', 3),
(15, '2020_10_31_094212_create_cart_table', 4),
(17, '2020_10_31_155854_create_orders_table', 5),
(19, '2020_12_02_191654_create_admins_table', 7),
(20, '2020_12_02_193410_create_bloggers_table', 8),
(21, '2020_12_03_173510_create_admins_table', 9),
(22, '2020_10_30_114207_create_users_table', 10),
(24, '2020_10_30_135432_create_products_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `qty`, `status`, `payment_method`, `city`, `address`, `created_at`, `updated_at`) VALUES
(4, 124, 5, 2, 'pending', 'deliver', 'Nuwara Eliya', 'cfdf', NULL, NULL),
(6, 137, 5, 3, 'pending', 'deliver', 'Matale', 'fgjhfgh', NULL, NULL),
(7, 125, 5, 1, 'pending', 'deliver', 'Kurunegala', 'abewala', NULL, NULL),
(8, 125, 1, 1, 'pending', 'deliver', 'Kurunegala', 'Kurunegala town', NULL, NULL),
(9, 91, 1, 1, 'pending', 'deliver', 'Mannar', 'Pelwatta', NULL, NULL),
(10, 5, 1, 2, 'pending', 'deliver', 'Nuwara Eliya', 'Colombo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sachi@gmail.com', '$2y$10$W7/MOYQTEIgwqGpEI2YoAeArzhkcZ6piJiilxvjEpSzJwn/S4jrbu', '2020-11-28 14:25:38'),
('dmahesh9810@gmail.com', '$2y$10$GZGb94izWCv2N8CkWfZD2ubjrj4bQRiOIDy2sEYYCdGguZmLpnSaW', '2020-12-04 10:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `category`, `price`, `description`, `gallery1`, `gallery2`, `gallery3`, `created_at`, `updated_at`) VALUES
(1, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '1895', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186146.080311800030-C1-1_compressed.jpg', '1607186146.080311800030-C1-3_compressed-600x764.jpg', '1607186146.080311800030-C1-4_compressed-600x764.jpg', NULL, NULL),
(2, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '1995', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186192.080311800030-C2-1_compressed.jpg', '1607186192.080311800030-C2-2_compressed-600x764.jpg', '1607186192.080311800030-C2-3_compressed-600x764.jpg', NULL, NULL),
(3, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '2095', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186215.080311800030-C3-1_compressed.jpg', '1607186215.080311800030-C3-2_compressed-600x764.jpg', '1607186215.080311800030-C3-3_compressed-600x764.jpg', NULL, NULL),
(4, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '2595', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186240.080311800030-C4-1_compressed.jpg', '1607186240.080311800030-C4-2_compressed-600x764.jpg', '1607186240.080311800030-C4-3_compressed-600x764.jpg', NULL, NULL),
(5, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '3095', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186266.080311800030-C5-1_compressed-600x764.jpg', '1607186266.080311800030-C5-2_compressed.jpg', '1607186266.080311800030-C5-3_compressed-600x764.jpg', NULL, NULL),
(6, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '3595', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186296.080311800044-C1-a-1.jpg', '1607186296.080311800044-C1-a-2-600x764.jpg', '1607186296.080311800044-C1-a-3-600x764.jpg', NULL, NULL),
(7, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '3495', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186319.080311800044-C2-a-2.jpg', '1607186319.080311800044-C2-a-3-600x764.jpg', '1607186319.080311800044-C2-a-1-600x764.jpg', NULL, NULL),
(8, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '4095', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186347.080311800051-1_LADIES-JUMP-SUIT_Fashion-Bug-Sri-Lanka.jpg', '1607186347.080311800051-2_LADIES-JUMP-SUIT_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607186347.080311800051-3_LADIES-JUMP-SUIT_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(9, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '4595', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186372.080311800054-C12-1_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka.jpg', '1607186372.080311800054-C12-2_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607186372.080311800054-C12-3_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(10, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '4000', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186408.080311800054-C14-1_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka.jpg', '1607186408.080311800054-C14-2_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607186408.080311800054-C14-3_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(11, 'LADIES PRINTED JUMPSUIT', 'Jumpsuit', '4000', 'This on-trend ladies printed jumpsuit with collar, front button down opening and easy tie at waistline is made with Soft viscose fabric that is soft, comfortable and light weight that makes it easy and breezy \r\nas it gets. Pair this up with a pair of sneakers and you are ready for your stroll in the park.', '1607186426.080311800054-C13-1_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka.jpg', '1607186426.080311800054-C13-2_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607186426.080311800054-C14-3_LADIES-PRINTED-JUMPSUIT_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(12, 'Ladies cotton Batik Saree', 'Saree', '1495', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186508.080305401655-C16_Fashion-Bug-Saree.jpg', '1607186508.080305401655-C17_Fashion-Bug-Saree.jpg', '1607186508.080305401655-C20_Fashion-Bug-Saree.jpg', NULL, NULL),
(13, 'Ladies cotton Batik Saree', 'Saree', '1495', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186522.080305401655-C17_Fashion-Bug-Saree.jpg', '1607186522.080305401655-C20_Fashion-Bug-Saree.jpg', '1607186522.080305401655-C16_Fashion-Bug-Saree.jpg', NULL, NULL),
(14, 'Ladies cotton Batik Saree', 'Saree', '1495', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186536.080305401655-C20_Fashion-Bug-Saree.jpg', '1607186536.080305401655-C17_Fashion-Bug-Saree.jpg', '1607186536.080305401655-C16_Fashion-Bug-Saree.jpg', NULL, NULL),
(15, 'Ladies cotton Batik Saree', 'Saree', '2095', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186566.080305401655-C115_Fashion-Bug-Saree.jpg', '1607186566.080305401655-C20_Fashion-Bug-Saree.jpg', '1607186566.080305401655-C17_Fashion-Bug-Saree.jpg', NULL, NULL),
(16, 'Ladies cotton Batik Saree', 'Saree', '2495', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186591.080305401669-1_Saree_Fashion-Bug_Sri-Lanka.jpg', '1607186591.0803035500721-C2_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186591.0803035500721-C3_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(17, 'Ladies cotton Batik Saree', 'Saree', '2695', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186612.0803035500721-C2_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186612.0803035500721-C3_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186612.0803035500721-C5_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(18, 'Ladies cotton Batik Saree', 'Saree', '2795', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186630.0803035500721-C3_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186630.0803035500721-C5_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186630.0803035500721-C8_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(19, 'Ladies cotton Batik Saree', 'Saree', '2795', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186647.0803035500721-C5_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186647.0803035500721-C8_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186647.0803035500722-C1_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(20, 'Ladies cotton Batik Saree', 'Saree', '2895', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186665.0803035500721-C8_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186665.0803035500722-C1_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186665.0803035500722-C2_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(21, 'Ladies cotton Batik Saree', 'Saree', '2995', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186684.0803035500722-C2_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186684.0803035500722-C1_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186684.0803035500721-C8_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(22, 'Ladies cotton Batik Saree', 'Saree', '3095', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186713.0803035500722-C3_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186713.0803035500722-C5_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186713.0803035500722-C8_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(23, 'Ladies cotton Batik Saree', 'Saree', '3495', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186732.0803035500722-C5_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186732.0803035500722-C8_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186732.0803035500722-C11_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka-2.jpg', NULL, NULL),
(24, 'Ladies cotton Batik Saree', 'Saree', '3695', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186749.0803035500722-C8_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186749.0803035500722-C11_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka-2.jpg', '1607186749.0803035500722-C12-2_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(25, 'Ladies cotton Batik Saree', 'Saree', '3895', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186777.0803035500722-C12-2_LADIES-SATIN-CREPE-SAREES_Fashion-Bug-Sri-Lanka.jpg', '1607186777.Fashion-Bug_LADIES-CREPE-SAREE-1.jpg', '1607186777.Fashion-Bug_LADIES-CREPE-SAREE-2.jpg', NULL, NULL),
(26, 'Ladies cotton Batik Saree', 'Saree', '4495', 'Ladies cotton Batik Saree.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186827.LADIES-CREPE-SAREE_Fashion_Bug-2.jpg', '1607186827.LADIES-CREPE-SAREE_Fashion_Bug-3.jpg', '1607186827.LADIES-CREPE-SAREE_Fashion_Bug-4.jpg', NULL, NULL),
(27, 'Ladies cotton Batik Saree.  *Product image may differ to actual due to photographic lighting*', 'Ladies Over Coat', '1945', 'Ladies cardigan with long sleeves.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186898.080303500186-C2-1_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka.jpg', '1607186898.080303500186-C2-3_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607186898.080303500186-C2-4_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(28, 'Ladies cotton Batik Saree.  *Product image may differ to actual due to photographic lighting*', 'Ladies Over Coat', '2445', 'Ladies cardigan with long sleeves.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186922.080303500186-C3-1_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka.jpg', '1607186922.080303500186-C3-4_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607186922.080303500186-C3-2_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(29, 'Ladies cotton Batik Saree.  *Product image may differ to actual due to photographic lighting*', 'Ladies Over Coat', '2945', 'Ladies cardigan with long sleeves.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607186940.080303500186-C4-1_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka.jpg', '1607186940.080303500186-C4-3_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607186940.080303500186-C4-4_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(30, 'Ladies cardigan with long sleeves.', 'Ladies Over Coat', '1695', 'Ladies cardigan with long sleeves.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187080.080303500186-C2-1_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka.jpg', '1607187080.080303500186-C2-3_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607187080.080303500186-C2-4_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(31, 'Ladies cardigan with long sleeves.', 'Ladies Over Coat', '2695', 'Ladies cardigan with long sleeves.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187099.080303500186-C3-1_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka.jpg', '1607187099.080303500186-C3-4_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607187099.080303500186-C3-2_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(32, 'Ladies cardigan with long sleeves.', 'Ladies Over Coat', '3095', 'Ladies cardigan with long sleeves.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187116.080303500186-C4-1_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka.jpg', '1607187116.080303500186-C4-3_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607187116.080303500186-C4-4_LADIES-CARDIGAN_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(33, 'LADIES KURTHA', 'Kurti', '1645', 'LADIES KURTHA\r\n\r\nA Yellow color with white shading Kurthi made Just for upcoming festive season is designed with bead detailing at the neckline. The embroidery anglaise detailing gives an added elegant look to its wearer.A simple yet elegant Kurtha in Georgette fabric\r\n and embelishment detailing for a easy flowy look that will mesmarise everyone you meet.', '1607187160.080303202802-3-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187160.080303202805-C1-1-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187160.080303202805-C2-1-colour_LADIES-KURTI_Fashion-Bug.jpg', NULL, NULL),
(34, 'LADIES KURTHA', 'Kurti', '1645', 'LADIES KURTHA\r\n\r\nA Yellow color with white shading Kurthi made Just for upcoming festive season is designed with bead detailing at the neckline. The embroidery anglaise detailing gives an added elegant look to its wearer.A simple yet elegant Kurtha in Georgette fabric\r\n and embelishment detailing for a easy flowy look that will mesmarise everyone you meet.', '1607187175.080303202805-C1-1-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187175.080303202805-C2-1-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187175.080303202802-3-colour_LADIES-KURTI_Fashion-Bug.jpg', NULL, NULL),
(35, 'LADIES KURTHA', 'Kurti', '2045', 'LADIES KURTHA\r\n\r\nA Yellow color with white shading Kurthi made Just for upcoming festive season is designed with bead detailing at the neckline. The embroidery anglaise detailing gives an added elegant look to its wearer.A simple yet elegant Kurtha in Georgette fabric\r\n and embelishment detailing for a easy flowy look that will mesmarise everyone you meet.', '1607187195.080303202805-C2-1-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187195.080303202815-C1_KURTI-TOP.jpg', '1607187195.080303202821-C1_KURTI-TOP.jpg', NULL, NULL),
(36, 'LADIES KURTHA', 'Kurti', '2545', 'LADIES KURTHA\r\n\r\nA Yellow color with white shading Kurthi made Just for upcoming festive season is designed with bead detailing at the neckline. The embroidery anglaise detailing gives an added elegant look to its wearer.A simple yet elegant Kurtha in Georgette fabric\r\n and embelishment detailing for a easy flowy look that will mesmarise everyone you meet.', '1607187210.080303202815-C1_KURTI-TOP.jpg', '1607187210.080303202821-C1_KURTI-TOP.jpg', '1607187210.080303202825-C1_KURTI-TOP.jpg', NULL, NULL),
(37, 'LADIES KURTHA', 'Kurti', '2945', 'LADIES KURTHA\r\n\r\nA Yellow color with white shading Kurthi made Just for upcoming festive season is designed with bead detailing at the neckline. The embroidery anglaise detailing gives an added elegant look to its wearer.A simple yet elegant Kurtha in Georgette fabric\r\n and embelishment detailing for a easy flowy look that will mesmarise everyone you meet.', '1607187231.080303202825-C1_KURTI-TOP.jpg', '1607187231.080303202836-2-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187231.080304000183-1-colour_LADIES-KURTI_Fashion-Bug.jpg', NULL, NULL),
(38, 'LADIES KURTHA', 'Kurti', '3945', 'LADIES KURTHA\r\n\r\nA Yellow color with white shading Kurthi made Just for upcoming festive season is designed with bead detailing at the neckline. The embroidery anglaise detailing gives an added elegant look to its wearer.A simple yet elegant Kurtha in Georgette fabric\r\n and embelishment detailing for a easy flowy look that will mesmarise everyone you meet.', '1607187259.080304000183-1-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187259.080304000188-2-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187259.080311700059-1-colour_LADIES-KURTI_Fashion-Bug.jpg', NULL, NULL),
(39, 'LADIES KURTHA', 'Kurti', '4445', 'LADIES KURTHA\r\n\r\nA Yellow color with white shading Kurthi made Just for upcoming festive season is designed with bead detailing at the neckline. The embroidery anglaise detailing gives an added elegant look to its wearer.A simple yet elegant Kurtha in Georgette fabric\r\n and embelishment detailing for a easy flowy look that will mesmarise everyone you meet.', '1607187284.080311700059-1-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187284.080311700059-2-colour_LADIES-KURTI_Fashion-Bug.jpg', '1607187284.080304000188-2-colour_LADIES-KURTI_Fashion-Bug.jpg', NULL, NULL),
(40, 'LADIES KURTHA', 'Kurti', '5445', 'LADIES KURTHA\r\n\r\nA Yellow color with white shading Kurthi made Just for upcoming festive season is designed with bead detailing at the neckline. The embroidery anglaise detailing gives an added elegant look to its wearer.A simple yet elegant Kurtha in Georgette fabric\r\n and embelishment detailing for a easy flowy look that will mesmarise everyone you meet.', '1607187302.080311700059-C1_KURTI-TOP.jpg', '1607187302.080303202825-C1_KURTI-TOP.jpg', '1607187302.080303202836-2-colour_LADIES-KURTI_Fashion-Bug.jpg', NULL, NULL),
(41, 'LADIS LINEN SHORT DRESS', 'Dresses', '1495', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187384.080310102725-C1-1_Ladies-Dress_Fashion-Bug-Sri-Lanka.jpg', '1607187384.080310102725-C1-2_Ladies-Dress_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607187384.080310102725-C1-3_Ladies-Dress_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(42, 'LADIS LINEN SHORT DRESS', 'Dresses', '1995', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187411.080310102736-C4-2-600x764.jpg', '1607187411.080310102736-C4-3.jpg', '1607187411.080310102736-C4-1-600x764.jpg', NULL, NULL),
(43, 'LADIS LINEN SHORT DRESS', 'Dresses', '2695', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187478.080310102725-C2-1_Ladies-Dress_Fashion-Bug-Sri-Lanka.jpg', '1607187478.080310102725-C2-2_Ladies-Dress_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607187478.080310102725-C2-3_Ladies-Dress_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(44, 'LADIS LINEN SHORT DRESS', 'Dresses', '3095', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187520.080310102852-7.jpg', '1607187520.080310102852-8-600x764.jpg', '1607187520.080310102852-6-600x764.jpg', NULL, NULL),
(45, 'LADIS LINEN SHORT DRESS', 'Dresses', '3495', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187558.080310102852-10.jpg', '1607187558.080310102852-11-600x764.jpg', '1607187558.080310102852-9-600x764.jpg', NULL, NULL),
(46, 'LADIS LINEN SHORT DRESS', 'Dresses', '3995', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187603.080310900740-C7-1_LADIES-DRESS_Fashion-Bug-600x764.jpg', '1607187603.080310900740-C7-2_LADIES-DRESS_Fashion-Bug.jpg', '1607187603.080310900740-C7-3_LADIES-DRESS_Fashion-Bug-600x764.jpg', NULL, NULL),
(47, 'LADIS LINEN SHORT DRESS', 'Dresses', '4095', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187646.IMG_1009.jpg', '1607187646.IMG_1013-600x764.jpg', '1607187646.IMG_1015-600x764.jpg', NULL, NULL),
(48, 'LADIS LINEN SHORT DRESS', 'Dresses', '4695', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187696.IMG_1003.jpg', '1607187696.IMG_1007-1-600x764.jpg', '1607187696.IMG_1008-600x764.jpg', NULL, NULL),
(49, 'LADIS LINEN SHORT DRESS', 'Dresses', '5095', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187727.IMG_0995.jpg', '1607187727.IMG_0997-600x764.jpg', '1607187727.IMG_1000-600x764.jpg', NULL, NULL),
(50, 'LADIS LINEN SHORT DRESS', 'Dresses', '6095', 'LADIS LINEN SHORT DRESS\r\n\r\nLadies A’line short dress in printed linen with lace detail at chest and cuffs, 3/4 length sleeves, hidden pockets, fabric belt at waist and key hole opening with coconut shell button at the back neck.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187758.IMG_0990.jpg', '1607187758.IMG_0993-600x764.jpg', '1607187758.IMG_0994-600x764.jpg', NULL, NULL),
(51, 'LADIES TIERED CROP TOP', 'Top', '1495', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187829.080300913641-C1-1_BLOUSE_Fashion-Bug.jpg', '1607187829.080300913641-C1-2_BLOUSE_Fashion-Bug.jpg', '1607187829.080300913641-C1-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(52, 'LADIES TIERED CROP TOP', 'Top', '1995', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187844.080300913641-C2-1_BLOUSE_Fashion-Bug.jpg', '1607187844.080300913641-C2-2_BLOUSE_Fashion-Bug-600x764.jpg', '1607187844.080300913641-C2-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(53, 'LADIES TIERED CROP TOP', 'Top', '2095', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187869.080300913659-C36-1_LADIES-TOP_Fashion-Bug.jpg', '1607187869.080300913659-C36-2_LADIES-TOP_Fashion-Bug-600x764.jpg', '1607187869.080300913659-C36-3_LADIES-TOP_Fashion-Bug-600x764.jpg', NULL, NULL),
(54, 'LADIES TIERED CROP TOP', 'Top', '2495', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187889.080300913659-C37-1_LADIES-TOP_Fashion-Bug.jpg', '1607187889.080300913659-C37-2_LADIES-TOP_Fashion-Bug-600x764.jpg', '1607187889.080300913659-C37-3_LADIES-TOP_Fashion-Bug-600x764.jpg', NULL, NULL),
(55, 'LADIES TIERED CROP TOP', 'Top', '2995', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187908.080300913660-C1-1Ladies_Fashion-Bug.jpg', '1607187908.080300913660-C1-2Ladies_Fashion-Bug-600x764.jpg', '1607187908.080300913660-C1-3Ladies_Fashion-Bug-600x764.jpg', NULL, NULL),
(56, 'LADIES TIERED CROP TOP', 'Top', '3095', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187928.080300913660-C2-1Ladies_Fashion-Bug.jpg', '1607187928.080300913660-C2-2Ladies_Fashion-Bug-600x764.jpg', '1607187928.080300913660-C2-3Ladies_Fashion-Bug-600x764.jpg', NULL, NULL),
(57, 'LADIES TIERED CROP TOP', 'Top', '3495', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187968.080300913660-C3-1Ladies_Fashion-Bug.jpg', '1607187968.080300913660-C3-2Ladies_Fashion-Bug.jpg', '1607187968.080300913660-C3-3Ladies_Fashion-Bug-600x764.jpg', NULL, NULL),
(58, 'LADIES TIERED CROP TOP', 'Top', '3995', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607187991.080300913661-C1-1_BLOUSE_Fashion-Bug.jpg', '1607187991.080300913661-C1-2_BLOUSE_Fashion-Bug.jpg', '1607187991.080300913661-C1-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(59, 'LADIES TIERED CROP TOP', 'Top', '4495', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188012.080300913661-C1-1_BLOUSE_Fashion-Bug.jpg', '1607188012.080300913661-C1-2_BLOUSE_Fashion-Bug.jpg', '1607188012.080300913661-C1-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(60, 'LADIES TIERED CROP TOP', 'Top', '1095', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188039.080300913661-C2-1_BLOUSE_Fashion-Bug.jpg', '1607188039.080300913661-C2-2_BLOUSE_Fashion-Bug-600x764.jpg', '1607188039.080300913661-C2-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(61, 'LADIES TIERED CROP TOP', 'Top', '995', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188056.080300913661-C3-1_BLOUSE_Fashion-Bug.jpg', '1607188056.080300913661-C3-2_BLOUSE_Fashion-Bug-600x764.jpg', '1607188056.080300913661-C3-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(62, 'LADIES TIERED CROP TOP', 'Top', '845', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188079.080300913677-C1-1Ladies_Fashion-Bug.jpg', '1607188079.080300913677-C1-2Ladies_Fashion-Bug.jpg', '1607188079.080300913677-C1-3Ladies_Fashion-Bug-600x764.jpg', NULL, NULL),
(63, 'LADIES TIERED CROP TOP', 'Top', '745', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188095.080300913677-C2-1Ladies_Fashion-Bug.jpg', '1607188095.080300913677-C2-2Ladies_Fashion-Bug-600x764.jpg', '1607188095.080300913677-C2-3Ladies_Fashion-Bug-600x764.jpg', NULL, NULL),
(64, 'LADIES TIERED CROP TOP', 'Top', '645', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188113.080300913677-C3-1Ladies_Fashion-Bug.jpg', '1607188113.080300913677-C3-2Ladies_Fashion-Bug-600x764.jpg', '1607188113.080300913677-C3-3Ladies_Fashion-Bug-600x764.jpg', NULL, NULL),
(65, 'LADIES TIERED CROP TOP', 'Top', '545', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188145.080310900752-C1-1_BLOUSE_Fashion-Bug.jpg', '1607188145.080310900752-C1-2_BLOUSE_Fashion-Bug-600x764.jpg', '1607188145.080310900752-C1-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(66, 'LADIES TIERED CROP TOP', 'Top', '445', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188159.080310900752-C2-1_BLOUSE_Fashion-Bug.jpg', '1607188159.080310900752-C2-2_BLOUSE_Fashion-Bug-600x764.jpg', '1607188159.080310900752-C2-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(67, 'LADIES TIERED CROP TOP', 'Top', '545', 'LADIES TIERED CROP TOP\r\n\r\nFun and flirty crop blouse with tiered detailing will bring out the fun side of you at all times. Complete with a 3/4 length tiered sleeve, it is ideal for both formal and casual dress codes.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188180.080310900752-C3-1_BLOUSE_Fashion-Bug.jpg', '1607188180.080310900752-C3-2_BLOUSE_Fashion-Bug-600x764.jpg', '1607188180.080310900752-C3-3_BLOUSE_Fashion-Bug-600x764.jpg', NULL, NULL),
(68, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '1445', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188261.080310900671-C1-1_LONG-TOP_Fashion-Bug-Sri-Lanka.jpg', '1607188261.080310900671-C1-2_LONG-TOP_Fashion-Bug-Sri-Lanka.jpg', '1607188261.080310900671-C1-3_LONG-TOP_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(69, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '1945', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188278.080310900671-C2-1_LONG-TOP_Fashion-Bug-Sri-Lanka.jpg', '1607188278.080310900671-C2-2_LONG-TOP_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607188278.080310900671-C2-3_LONG-TOP_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(70, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '2045', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188300.080310900671-C3-1_LONG-TOP_Fashion-Bug-Sri-Lanka.jpg', '1607188300.080310900671-C3-2_LONG-TOP_Fashion-Bug-Sri-Lanka.jpg', '1607188300.080310900671-C3-3_LONG-TOP_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(71, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '2445', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188319.080310900673-blue__Fashion-Bug-Sri-Lanka.jpg', '1607188319.080310900673-blue-back__Fashion-Bug-Sri-Lanka.jpg', '1607188319.080310900673-blue-side__Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(72, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '2945', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188339.080310900673-red__Fashion-Bug-Sri-Lanka.jpg', '1607188339.080310900673-red-back__Fashion-Bug-Sri-Lanka-600x764.jpg', '1607188339.080310900673-red-side__Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(73, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '3045', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188359.080310900697-C1-1_Fashion-Bug_Sri-Lanka.jpg', '1607188359.080310900697-C1-2_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188359.080310900697-C1-3_Fashion-Bug_Sri-Lanka-600x764.jpg', NULL, NULL),
(74, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '3445', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188376.080310900702-C2-1_Ladies_Fashion-Bug-Sri-Lanka.jpg', '1607188376.080310900702-C2-2_Ladies_Fashion-Bug-Sri-Lanka.jpg', '1607188376.080310900702-C2-3_Ladies_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(75, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '3945', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188394.080310900702-C3-1_Ladies_Fashion-Bug-Sri-Lanka.jpg', '1607188394.080310900702-C3-2_Ladies_Fashion-Bug-Sri-Lanka.jpg', '1607188394.080310900702-C3-3_Ladies_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(76, 'LADIES TURTLE NECK LONG TOP', 'Long Top', '4445', 'LADIES TURTLE NECK LONG TOP\r\nLadies “A”line long top with turtle neck, long sleeves with extended cuff and gold button detailing.\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188421.080310900702-C4-1_Ladies_Fashion-Bug-Sri-Lanka.jpg', '1607188421.080310900702-C4-2_Ladies_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607188421.080310900702-C4-3_Ladies_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(77, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '1695', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188499.080303300367-4690-1_compressed.jpg', '1607188499.080303300367-4690-2_compressed.jpg', '1607188499.080303300368-3590-2_compressed.jpg', NULL, NULL),
(78, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '1695', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188514.080303300367-4690-2_compressed.jpg', '1607188514.080303300368-3590-2_compressed.jpg', '1607188514.080303300367-4690-1_compressed.jpg', NULL, NULL),
(79, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '1695', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188530.080303300368-3590-2_compressed.jpg', '1607188530.080303300367-4690-2_compressed.jpg', '1607188530.080303300367-4690-1_compressed.jpg', NULL, NULL),
(80, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '1995', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188545.080303300381-Nighty-Set_Fashion-Bug-Sri-Lanka.jpg', '1607188545.080303300368-3590-2_compressed.jpg', '1607188545.080303300367-4690-2_compressed.jpg', NULL, NULL),
(81, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '2095', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188561.080303400767-C2-1_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', '1607188561.080303400767-C2-2_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188561.080303400767-C2-3_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', NULL, NULL),
(82, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '2495', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188623.080303400878-C1-1_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', '1607188623.080303400878-C1-2_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188623.080303400878-C1-3_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', NULL, NULL),
(83, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '2995', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188643.080303400878-C2-1_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', '1607188643.080303400878-C2-3_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188643.080303400878-C2-2_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', NULL, NULL),
(84, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '3095', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188664.080303400878-C3-1_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', '1607188664.080303400878-C3-2_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188664.080303400878-C3-3_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', NULL, NULL),
(85, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '3495', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188687.080303400878-C4-1_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', '1607188687.080303400878-C4-2_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188687.080303400881-C1-1_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', NULL, NULL),
(86, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '3995', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188705.080303400881-C1-1_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', '1607188705.080303400881-C1-2_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188705.080303400878-C4-2_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', NULL, NULL),
(87, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '4095', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188726.080303400881-C2-4_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', '1607188726.080303400881-C2-5_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188726.080303400881-C2-6_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', NULL, NULL),
(88, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '4695', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188748.080303600264-C2-1_Night-Wear_Fashion-Bug_Sri-Lanka.jpg', '1607188748.080303600264-C2-3_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', '1607188748.080303400881-C2-6_Night-Wear_Fashion-Bug_Sri-Lanka-600x764.jpg', NULL, NULL),
(89, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '3395', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188819.Night-Wear-3_Fashion-Bug.jpg', '1607188819.Night-Wear-4_Fashion-Bug.jpg', '1607188819.Night-Wear-5_Fashion-Bug.jpg', NULL, NULL),
(90, 'LADIES PRINTED NIGHT DRESS', 'Sleepwear', '3395', 'LADIES PRINTED NIGHT DRESS\r\n\r\nLadies printed nightdress with lace detail at neckline and straps.\r\n\r\n*Product image may differ to actual due', '1607188835.Night-Wear-Web_Fashion-Bug-Sri-Lanka.jpg', '1607188835.Night-Wear-Web-2_Fashion-Bug-Sri-Lanka.jpg', '1607188835.Night-Wear-10_Fashion-Bug.jpg', NULL, NULL),
(91, 'LADIES CROP T-SHIRT', 'T-Shirts', '1645', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607188987.080307006614-C2-101_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka.jpg', '1607188987.080307006614-C2-102_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', '1607188987.080307006614-C2-103_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(92, 'LADIES CROP T-SHIRT', 'T-Shirts', '1945', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189009.080307006614-C3-1_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka.jpg', '1607189009.080307006614-C3-2_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', '1607189009.080307006614-C3-3_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(93, 'LADIES CROP T-SHIRT', 'T-Shirts', '2045', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189078.080307006622-C77-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189078.080307006622-C77-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189078.080307006622-C77-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(94, 'LADIES CROP T-SHIRT', 'T-Shirts', '2045', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189649.080307006622-C78-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189649.080307006622-C78-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189649.080307006622-C78-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(95, 'LADIES CROP T-SHIRT', 'T-Shirts', '2445', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189664.080307006622-C79-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189664.080307006622-C79-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189664.080307006622-C79-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(96, 'LADIES CROP T-SHIRT', 'T-Shirts', '2845', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189681.080307006623-C71-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189681.080307006623-C71-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189681.080307006623-C71-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', NULL, NULL),
(97, 'LADIES CROP T-SHIRT', 'T-Shirts', '3145', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189700.080307006623-C72-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189700.080307006623-C72-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189700.080307006623-C72-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(98, 'LADIES CROP T-SHIRT', 'T-Shirts', '3645', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189737.080307006623-C73-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189737.080307006623-C73-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189737.080307006623-C73-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(99, 'LADIES CROP T-SHIRT', 'T-Shirts', '3945', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189755.080307006630-C85-1_LADIES-CROP-TSHIRT_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189755.080307006630-C85-2_LADIES-CROP-TSHIRT_Fashion-Bug-Sri-Lanka.jpg', '1607189755.080307006630-C85-3_LADIES-CROP-TSHIRT_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(100, 'LADIES CROP T-SHIRT', 'T-Shirts', '3045', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189770.080307006630-C86-1_LADIES-CROP-TSHIRT_Fashion-Bug-Sri-Lanka.jpg', '1607189770.080307006630-C86-2_LADIES-CROP-TSHIRT_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189770.080307006630-C86-3_LADIES-CROP-TSHIRT_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL);
INSERT INTO `products` (`id`, `title`, `category`, `price`, `description`, `gallery1`, `gallery2`, `gallery3`, `created_at`, `updated_at`) VALUES
(101, 'LADIES CROP T-SHIRT', 'T-Shirts', '3645', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189794.080307006635-C68-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189794.080307006635-C68-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189794.080307006635-C68-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(102, 'LADIES CROP T-SHIRT', 'T-Shirts', '4045', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189835.080307006635-C70-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189835.080307006635-C70-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189835.080307006635-C70-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(103, 'LADIES CROP T-SHIRT', 'T-Shirts', '4445', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189852.080307006665-C62-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189852.080307006665-C62-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189852.080307006665-C62-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(104, 'LADIES CROP T-SHIRT', 'T-Shirts', '4645', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189920.080307006665-C64-1_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka.jpg', '1607189920.080307006665-C64-3_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', '1607189920.080307006665-C64-4_LADIES-T-Shirt_Fashion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(105, 'LADIES CROP T-SHIRT', 'T-Shirts', '445', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189943.0803037006610-C1-1_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka.jpg', '1607189943.0803037006610-C1-2_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', '1607189943.0803037006610-C1-3_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(106, 'LADIES CROP T-SHIRT', 'T-Shirts', '645', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189958.0803037006610-C2-1_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', '1607189958.0803037006610-C2-2_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka.jpg', '1607189958.0803037006610-C2-3_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL),
(107, 'LADIES CROP T-SHIRT', 'T-Shirts', '845', 'LADIES CROP T-SHIRT\r\n\r\n\r\nExtra bit of cheer is in store with this crew neck crop top featuring a bold graphic print and high-low hemline that has all the right flavors lined-up to leave a mark in the casual genre\r\n\r\n*Product image may differ to actual due to photographic lighting*', '1607189974.0803037006610-C3-Green-1_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka.jpg', '1607189974.0803037006610-C3-Green-2_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', '1607189974.0803037006610-C3-Green-3_LADIES-T-SHIRT_Fsahion-Bug-Sri-Lanka-600x764.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahesh', 'mahesh@gmail.com', '$2y$10$9JT6bn27p40J1KJPZIuKMe/WPL/ltyCL6zed44BNdwUDOQ35FFwmK', NULL, '2020-12-03 12:33:38', '2020-12-03 12:33:38'),
(2, 'nithu', 'dmahesh9810@gmail.com', '$2y$10$W.neVzHrGhyQvtEG1rgcb.T79kZkWWNeLDuwr6XORLEsiNBSl/xWe', NULL, '2020-12-04 10:03:39', '2020-12-04 10:03:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
