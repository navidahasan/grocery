-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2016 at 07:50 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_grocer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'salman', 'mahmud', 'admin@gmail.com', 'admin', '$2y$10$YoHwRlmqge8lK91J8yktgu6s/jzMoUjQbnJ2m..cSLA6ovCkRe0s.', 'nF9X0B69lSkVDnsVZj7JL2ze75jR5gljcm4ESbvbet1MTGo7XlwUb6gwkinl', NULL, '2016-04-27 19:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `total`, `amount`, `created_at`, `updated_at`) VALUES
(30, 1, 3, '20.00', 1, '2016-04-23 20:59:06', '2016-04-23 20:59:06'),
(31, 1, 4, '25.00', 1, '2016-04-23 20:59:26', '2016-04-23 20:59:26'),
(40, 6, 2, '60.00', 1, '2016-04-27 02:48:26', '2016-04-27 02:48:26'),
(41, 6, 4, '25.00', 1, '2016-04-27 03:24:06', '2016-04-27 03:24:06'),
(42, 6, 3, '20.00', 1, '2016-04-27 09:18:19', '2016-04-27 09:18:19'),
(43, 11, 7, '500.00', 1, '2016-05-10 11:44:19', '2016-05-10 11:44:19'),
(44, 11, 8, '170.00', 1, '2016-05-10 11:44:21', '2016-05-10 11:44:21'),
(47, 12, 9, '180.00', 1, '2016-05-10 17:23:33', '2016-05-10 17:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `category_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `description`, `category_pic`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Foods', 'foods', 0, '', '', 1, '2016-03-22 23:57:47', '2016-04-02 02:59:14'),
(2, 'Vegetables', 'vegetables', 1, '', 'fresh-vegetables.jpeg', 1, '2016-03-23 07:31:22', '2016-03-23 07:31:22'),
(3, 'Fresh Fruits', 'fresh-fruits', 1, '', 'fresh-fruits.jpeg', 1, '2016-03-23 07:33:01', '2016-03-23 07:33:01'),
(4, 'Meat', 'meat', 1, '', 'meat.jpeg', 1, '2016-03-23 20:39:31', '2016-03-23 20:39:31'),
(5, 'Fish', 'fish', 1, '', 'fresh-fish.jpeg', 1, '2016-03-23 20:40:14', '2016-03-23 20:40:14'),
(6, 'Snacks', 'snacks', 1, '', 'snacks.jpeg', 1, '2016-03-23 20:42:25', '2016-03-23 20:42:25'),
(7, 'Beverages', 'beverages', 1, '', 'beverages.jpeg', 1, '2016-03-23 20:43:09', '2016-03-23 20:43:09'),
(8, 'Dairy', 'dairy', 1, '', 'dairy.jpeg', 1, '2016-03-23 20:43:43', '2016-03-23 20:43:43'),
(9, 'Cooking', 'cooking', 1, '', 'cooking.jpeg', 1, '2016-03-23 20:45:41', '2016-03-23 20:45:41'),
(10, 'Bread & Bakery', 'bread-bakery', 1, '', 'bread-bakery.jpeg', 1, '2016-03-23 20:46:49', '2016-03-23 20:46:49'),
(11, 'Home & Cleaning', 'home-cleaning', 0, '', '', 1, '2016-03-23 20:47:27', '2016-03-23 20:47:27'),
(12, 'Air Freshners', 'air-freshners', 11, '', 'air-freshners.jpeg', 1, '2016-03-23 20:48:51', '2016-03-23 20:48:51'),
(13, 'Dish Detergent', 'dish-detergent', 11, '', 'dish-detergents.jpeg', 1, '2016-03-23 20:50:41', '2016-03-23 20:50:41'),
(14, 'Cleaning Supplies', 'cleaning-supplies', 11, '', 'cleaning-supplies.jpeg', 1, '2016-03-23 20:51:52', '2016-03-23 20:51:52'),
(15, 'Kitchen Accessories', 'kitchen-accessories', 11, '', 'kitchen-accessories.jpeg', 1, '2016-03-23 20:52:23', '2016-03-23 20:52:23'),
(16, 'Laundry', 'laundry', 11, '', 'laundry.jpeg', 1, '2016-03-23 20:52:50', '2016-03-23 20:52:50'),
(18, 'Food Storage', 'food-storage', 11, '', 'food-storage.jpeg', 1, '2016-03-23 20:54:42', '2016-03-23 20:54:42'),
(19, 'Office Products', 'office-products', 0, '', '', 1, '2016-03-23 20:55:51', '2016-03-23 20:55:51'),
(20, 'Batteries', 'batteries', 19, '', 'batteries.jpeg', 1, '2016-03-23 20:56:30', '2016-03-23 20:56:30'),
(21, 'Pest Control', 'pest-control', 11, '', 'pest-control.jpeg', 1, '2016-03-23 20:57:07', '2016-03-23 20:57:07'),
(22, 'Writing Drawing', 'writing-drawing', 19, '', 'writing-drawing.jpeg', 1, '2016-03-23 20:57:50', '2016-03-23 20:57:50'),
(23, 'Beauty & Health', 'beauty-health', 0, '', '', 1, '2016-03-23 20:59:07', '2016-03-23 20:59:07'),
(24, 'Health Care', 'health-care', 23, '', 'health-care.jpeg', 1, '2016-03-23 20:59:40', '2016-03-23 20:59:40'),
(25, 'Personal Care', 'personal-care', 23, '', 'personal-care.jpeg', 1, '2016-03-23 21:00:04', '2016-03-23 21:00:04'),
(26, 'Baby Care', 'baby-cares', 0, '', '', 1, '2016-03-23 21:01:22', '2016-04-02 13:55:16'),
(28, 'Diapering', 'diapering', 26, '', 'diapering.jpeg', 1, '2016-04-27 06:20:48', '2016-04-27 06:20:48'),
(29, 'Fooding', 'fooding', 26, '', 'fooding.jpeg', 1, '2016-04-27 06:21:19', '2016-04-27 06:21:19'),
(30, 'Bath skincare', 'bath-skincare', 26, '', 'fooding.jpeg', 1, '2016-04-27 06:21:44', '2016-04-27 06:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone_number`, `body`, `created_at`, `updated_at`, `read`) VALUES
(2, 'Salman Mahmud', 'salman@gmail.com', '01850785098', '\r\nOur Shop\r\nThe Grocer\r\nHouse No #01, Road No #01\r\nSouth Khulshi, Zakir Hossain Road\r\nChittagong, Banhladesh.\r\nP: +880 1766-668050 ', '2016-04-26 23:47:57', '2016-04-27 01:56:14', 1),
(4, 'Salman Mahmud', 'salman@gmail.com', '01850785098', 'House No #01, Road No #01\r\nSouth Khulshi, Zakir Hossain Road\r\nChittagong, Banhlades', '2016-04-26 23:50:00', '2016-04-27 01:19:34', 1),
(5, 'Salman Mahmud', 'salman@gmail.com', '01850785098', ' The Grocer\r\nHouse No #01, Road No #01\r\nSouth Khulshi, Zakir Hossain Road\r\nChittagong, Banhladesh.\r\nP: +880 1766-668050\r\nEmail\r\nthegrocer@gmail.com ', '2016-04-27 01:20:50', '2016-04-27 01:56:05', 1),
(6, 'Salman Mahmud', 'salmanmahmud2014@gmail.com', '01850785098', 'The Grocer\r\nHouse No #01, Road No #01\r\nSouth Khulshi, Zakir Hossain Road\r\nChittagong, Banhladesh.\r\nP: +880 1766-668050 ', '2016-04-27 01:21:57', '2016-04-27 01:23:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_01_174919_create_admins_table', 2),
('2016_04_01_194002_create_categories_table', 3),
('2016_04_01_194359_create_products_table', 4),
('2016_04_02_123802_edit_users_table', 5),
('2016_04_03_035250_drop_Column_from_users', 6),
('2016_04_04_173809_add_remember_token_in_admins_table', 7),
('2016_04_09_061332_create_orders_table', 8),
('2016_04_11_143634_create_carts_table', 9),
('2016_04_11_144158_create_orders_table', 10),
('2016_04_11_145230_create_order_products_table', 11),
('2016_04_13_055734_rename_table', 12),
('2016_04_18_064618_edit_products_table', 13),
('2016_04_18_130635_edit_orders_table', 14),
('2016_04_22_052344_edit_users_table', 15),
('2016_04_26_141632_edit_orders_table', 16),
('2016_04_26_155907_create_messages_table', 17),
('2016_04_26_180401_edit_messages_table', 18),
('2016_04_27_041807_edit_products_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `user_id`, `total`, `address`, `created_at`, `updated_at`, `message`) VALUES
(12, '#10418', 1, 45, 'alman@gmail.com', '2016-04-18 20:36:52', '2016-04-18 20:36:52', ''),
(13, '#10418', 1, 0, 'alman@gmail.com', '2016-04-18 20:36:52', '2016-04-18 20:36:52', ''),
(14, '#10418', 1, 35670, 'no', '2016-04-18 21:01:31', '2016-04-18 21:01:31', ''),
(15, '#10421', 1, 45, 'none', '2016-04-21 20:04:57', '2016-04-21 20:04:57', ''),
(16, '#40426', 4, 45, '', '2016-04-26 21:18:52', '2016-04-26 21:18:52', ''),
(17, '#40426', 4, 45, 'address', '2016-04-26 21:20:00', '2016-04-26 21:20:00', ''),
(18, '#40426', 4, 80, 'adsfadsfadsf', '2016-04-26 21:21:46', '2016-04-26 21:21:46', ''),
(19, '#40426', 4, 5020, 'dsfasdfa', '2016-04-26 21:23:44', '2016-04-26 21:23:44', 'asdfasdfads'),
(20, '#60426', 6, 45, '', '2016-04-26 22:07:00', '2016-04-26 22:07:00', 'deliver as soon as possible'),
(21, '#80427', 8, 545, '', '2016-04-27 11:55:48', '2016-04-27 11:55:48', ''),
(22, '#80427', 8, 0, '', '2016-04-27 12:01:32', '2016-04-27 12:01:32', ''),
(23, '#80427', 8, 500, '', '2016-04-27 12:49:59', '2016-04-27 12:49:59', ''),
(24, '#80427', 8, 5060, '', '2016-04-27 14:27:01', '2016-04-27 14:27:01', ''),
(25, '#80427', 8, 301953, '', '2016-04-27 14:28:34', '2016-04-27 14:28:34', ''),
(26, '#100428', 10, 1314, '', '2016-04-28 17:48:23', '2016-04-28 17:48:23', ''),
(27, '#110428', 11, 290, '', '2016-04-28 17:53:50', '2016-04-28 17:53:50', ''),
(28, '#120510', 12, 670, '', '2016-05-10 16:58:24', '2016-05-10 16:58:24', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `amount`, `price`, `total`, `created_at`, `updated_at`) VALUES
(14, 6, 3, 1, '20.00', '20.00', NULL, NULL),
(15, 6, 4, 1, '25.00', '25.00', NULL, NULL),
(16, 7, 2, 1, '60.00', '60.00', NULL, NULL),
(17, 7, 1, 1, '180.00', '180.00', NULL, NULL),
(18, 8, 1, 1, '180.00', '180.00', NULL, NULL),
(19, 8, 11, 600, '32.00', '19200.00', NULL, NULL),
(20, 8, 9, 1, '180.00', '180.00', NULL, NULL),
(21, 8, 2, 1, '60.00', '60.00', NULL, NULL),
(22, 8, 3, 1, '20.00', '20.00', NULL, NULL),
(23, 8, 13, 5, '250.00', '1250.00', NULL, NULL),
(24, 8, 7, 1, '500.00', '500.00', NULL, NULL),
(25, 8, 5, 500, '60.00', '30000.00', NULL, NULL),
(26, 8, 6, 500, '600.00', '300000.00', NULL, NULL),
(27, 9, 1, 1, '180.00', '180.00', NULL, NULL),
(28, 9, 3, 1, '20.00', '20.00', NULL, NULL),
(29, 9, 4, 1, '25.00', '25.00', NULL, NULL),
(30, 9, 8, 1, '170.00', '170.00', NULL, NULL),
(31, 9, 7, 1, '500.00', '500.00', NULL, NULL),
(32, 10, 3, 1, '20.00', '20.00', NULL, NULL),
(33, 10, 4, 1, '25.00', '25.00', NULL, NULL),
(34, 11, 9, 1, '180.00', '180.00', NULL, NULL),
(35, 12, 3, 1, '20.00', '20.00', NULL, NULL),
(36, 12, 4, 1, '25.00', '25.00', NULL, NULL),
(37, 14, 7, 1, '500.00', '500.00', NULL, NULL),
(38, 14, 8, 1, '170.00', '170.00', NULL, NULL),
(39, 14, 12, 500, '70.00', '35000.00', NULL, NULL),
(40, 15, 3, 1, '20.00', '20.00', NULL, NULL),
(41, 15, 4, 1, '25.00', '25.00', NULL, NULL),
(42, 16, 3, 1, '20.00', '20.00', NULL, NULL),
(43, 16, 4, 1, '25.00', '25.00', NULL, NULL),
(44, 17, 3, 1, '20.00', '20.00', NULL, NULL),
(45, 17, 4, 1, '25.00', '25.00', NULL, NULL),
(46, 18, 2, 1, '60.00', '60.00', NULL, NULL),
(47, 18, 3, 1, '20.00', '20.00', NULL, NULL),
(48, 19, 3, 1, '20.00', '20.00', NULL, NULL),
(49, 19, 10, 200, '25.00', '5000.00', NULL, NULL),
(50, 20, 4, 1, '25.00', '25.00', NULL, NULL),
(51, 20, 3, 1, '20.00', '20.00', NULL, NULL),
(52, 21, 3, 1, '20.00', '20.00', NULL, NULL),
(53, 21, 4, 1, '25.00', '25.00', NULL, NULL),
(54, 21, 7, 1, '500.00', '500.00', NULL, NULL),
(55, 23, 7, 1, '500.00', '500.00', NULL, NULL),
(56, 24, 2, 1, '60.00', '60.00', NULL, NULL),
(57, 24, 10, 200, '25.00', '5000.00', NULL, NULL),
(58, 25, 13, 5, '250.00', '1250.00', NULL, NULL),
(59, 25, 14, 2, '230.00', '460.00', NULL, NULL),
(60, 25, 2, 1, '60.00', '60.00', NULL, NULL),
(61, 25, 6, 500, '600.00', '300000.00', NULL, NULL),
(62, 25, 28, 1, '120.00', '120.00', NULL, NULL),
(63, 25, 29, 1, '18.00', '18.00', NULL, NULL),
(64, 25, 30, 1, '45.00', '45.00', NULL, NULL),
(65, 26, 20, 20, '35.00', '700.00', NULL, NULL),
(66, 26, 24, 1, '45.00', '45.00', NULL, NULL),
(67, 26, 25, 1, '494.00', '494.00', NULL, NULL),
(68, 26, 46, 1, '75.00', '75.00', NULL, NULL),
(69, 27, 2, 2, '60.00', '120.00', NULL, NULL),
(70, 27, 8, 1, '170.00', '170.00', NULL, NULL),
(71, 28, 7, 1, '500.00', '500.00', NULL, NULL),
(72, 28, 8, 1, '170.00', '170.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `stock` tinyint(1) NOT NULL DEFAULT '0',
  `product_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `variant`, `unit`, `description`, `stock`, `product_pic`, `category_id`, `admin_id`, `created_at`, `updated_at`, `sku`) VALUES
(2, 'Pine Apple', '60.00', '1 ', 'Piece', '', 1, 'pineapple-1-pcs.jpeg', 3, 1, '2016-03-24 08:56:25', '2016-03-24 08:56:25', '1'),
(3, 'Big Potato', '20.00', '1', 'kg', '', 1, 'big-potato-1-kg.jpeg', 2, 1, '2016-03-24 08:58:07', '2016-03-24 08:58:07', '1'),
(4, 'Onion', '25.00', '1', ' kg', '', 1, 'onion-red-indian-piyaj-500-gm.jpeg', 2, 1, '2016-03-24 09:00:24', '2016-03-24 09:00:24', '1'),
(5, 'Fresh Bread', '60.00', '500 ', 'gm', '', 1, 'fresh-bread-300-350-gm.jpeg', 10, 1, '2016-03-24 09:03:49', '2016-03-24 09:03:49', '1'),
(6, 'Pure Natural Honey', '600.00', '500', ' gm', '', 1, 'premium-pure-natural-honey-500-gm.jpeg', 10, 1, '2016-03-24 09:05:16', '2016-03-24 09:05:16', '1'),
(7, 'Fat Free Beef Boneless', '500.00', '1', ' kg', '', 1, 'fat-free-beef-boneless-1-kg.jpeg', 4, 1, '2016-03-24 09:07:40', '2016-03-24 09:07:40', '1'),
(8, 'Boiler Chicken ', '170.00', '1', ' kg', '', 0, 'whole-broiler-chicken-skin-on-net-weight-800-gm.jpeg', 4, 1, '2016-03-24 09:09:30', '2016-03-24 10:13:21', '1'),
(9, 'Ruhi Fish', '180.00', '1', 'kg', '', 1, 'rui-fish-net-weight-after-cutting-800-gm.jpeg', 5, 1, '2016-03-24 09:11:08', '2016-03-24 09:11:08', '1'),
(10, 'Cocola Egg Noodles', '25.00', '200', ' gm', '', 1, 'cocola-egg-noodles-180-gm.jpeg', 6, 1, '2016-03-24 09:12:41', '2016-03-24 09:12:41', '1'),
(11, 'Coca Cola', '32.00', '600 ', 'gm', '', 1, 'coca-cola-600-ml.jpeg', 7, 1, '2016-03-24 09:14:08', '2016-03-24 09:14:08', '1'),
(12, 'Aarong Sour Curd', '70.00', '500 ', 'ml', '', 1, 'aarong-sour-curd-500-ml.jpeg', 8, 1, '2016-03-24 09:15:46', '2016-03-24 09:15:46', '1'),
(13, 'Miniket Rrice', '250.00', '5 ', 'kg', '', 1, 'miniket-rice-premium-5-kg.jpeg', 9, 1, '2016-03-24 09:17:15', '2016-03-24 09:17:15', '1'),
(14, 'Aarong Kalijira Rice', '230.00', '2 ', 'kg', '', 1, 'aarong-kalijira-rice-2-kg.jpeg', 9, 1, '2016-03-24 09:19:05', '2016-03-24 09:19:05', '1'),
(15, 'bitter gourd deshi korola', '25.00', '500', 'gm', '', 1, 'bitter-gourd-korola-500-gm.jpeg', 2, 1, '2016-04-27 06:26:39', '2016-04-27 06:26:39', '1'),
(16, 'Odonil natural air freshner lavender meadows', '60.00', '', 'gm', '', 0, 'air-wick-english-rose-freshener-gel-50-gm.jpeg', 12, 1, '2016-04-27 06:32:39', '2016-04-27 06:32:39', ''),
(17, 'Angelic fresh air freshener misty wood', '150.00', '300', 'ml', '', 0, 'angelic-fresh-air-freshener-green-valley-300-ml.jpeg', 12, 1, '2016-04-27 06:37:59', '2016-04-27 06:37:59', ''),
(18, 'Fay air freshener anti tobacco 3 in 1', '999.99', '300', 'ml', '', 0, 'fay-air-freshener-anti-tobacco-3-in-1-300-ml.jpeg', 12, 1, '2016-04-27 06:40:31', '2016-04-27 06:40:31', ''),
(19, 'Odonil natural air freshner orchid dew', '170.00', '50', 'gm', '', 0, 'odonil-natural-air-freshner-orchid-dew-50-gm.jpeg', 12, 1, '2016-04-27 06:42:45', '2016-04-27 06:42:45', ''),
(20, 'Aci septex dishwash bar 0', '35.00', '20', 'gm', '', 0, 'aci-septex-dishwash-bar-200-gm.jpeg', 13, 1, '2016-04-27 06:47:32', '2016-04-27 06:47:32', ''),
(21, 'Clean it wonder dish wash bar', '30.00', '125', 'gm', '', 0, 'clean-it-wonder-dish-wash-bar-125-gm.jpeg', 13, 1, '2016-04-27 06:50:08', '2016-04-27 06:50:08', ''),
(22, 'Clean-master-toilet-cleaner--', '85.00', '500', 'ml', '', 0, 'clean-master-toilet-cleaner-500-ml.jpeg', 14, 1, '2016-04-27 06:53:16', '2016-04-27 06:53:16', ''),
(23, 'Kellys glass multisurface cleaner spray', '104.00', '500', 'ml', '', 0, 'kellys-glass-multisurface-cleaner-spray-500-ml.jpeg', 14, 1, '2016-04-27 06:55:31', '2016-04-27 06:55:31', ''),
(24, 'Bashundhara paper napkins 13-unscented', '45.00', '100', 'pcs', '', 0, 'bashundhara-paper-napkins-13-unscented-100-pcs.jpeg', 15, 1, '2016-04-27 06:59:10', '2016-04-27 06:59:10', ''),
(25, 'Rfl kitchen corner rack 4 step', '494.00', '1', 'pcs', '', 0, 'rfl-kitchen-corner-rack-4-step-1-pcs.jpeg', 15, 1, '2016-04-27 07:01:20', '2016-04-27 07:01:20', ''),
(26, 'Pakko heavy duty battery 9v', '50.00', '1', 'pcs', '', 0, 'pakko-heavy-duty-battery-9v-1-pcs.jpeg', 20, 1, '2016-04-27 07:08:39', '2016-04-27 07:08:39', ''),
(27, 'Sunlite-aa-battery--', '24.00', '2', 'pcs', '', 0, 'sunlite-aa-battery-2-pcs.jpeg', 20, 1, '2016-04-27 07:10:22', '2016-04-27 07:10:22', ''),
(28, 'Uni sign pen', '120.00', '1', 'pcs', '', 0, 'uni-sign-pen-1-pcs.jpeg', 22, 1, '2016-04-27 07:14:38', '2016-04-27 07:14:38', ''),
(29, 'Cello aero point pen black', '18.00', '1', 'pcs', '', 0, 'cello-aero-point-pen-black.jpeg', 22, 1, '2016-04-27 07:17:06', '2016-04-27 07:17:06', ''),
(30, 'Faber castell highlighter marker lemon', '45.00', '1', 'pcs', '', 0, 'faber-castell-highlighter-marker-lemon-1-pcs.jpeg', 22, 1, '2016-04-27 07:21:24', '2016-04-27 07:21:24', ''),
(31, 'Zero cal sugar', '125.00', '100', 'tablets', '', 0, 'zero-cal-sugar-100-tablets.jpeg', 24, 1, '2016-04-27 07:25:36', '2016-04-27 07:25:36', ''),
(32, 'Danish nutri rich diabetic biscuit', '1.00', '210', 'gram', '', 0, 'danish-nutri-rich-diabetic-biscuit-210-gram.jpeg', 24, 1, '2016-04-27 07:27:02', '2016-04-27 07:27:02', ''),
(33, 'Glaxose d', '120.00', '400', 'gm', '', 0, 'glaxose-d-400-gm.jpeg', 24, 1, '2016-04-27 07:29:58', '2016-04-27 07:29:58', ''),
(34, 'Adidas pure game deo roll on', '167.00', '50', 'ml', '', 0, 'adidas-pure-game-deo-roll-on-50-ml.jpeg', 25, 1, '2016-04-27 07:33:58', '2016-04-27 07:33:58', ''),
(35, 'Adidas pure game perfume', '200.00', '100', 'ml', '', 0, 'adidas-pure-game-perfume-100-ml.jpeg', 25, 1, '2016-04-27 07:36:07', '2016-04-27 07:36:07', ''),
(36, 'Sunsilk black shine shampoo 6 ml', '24.00', '12', 'pcs', '', 0, 'sunsilk-black-shine-shampoo-6-ml-12-pcs.jpeg', 25, 1, '2016-04-27 07:40:13', '2016-04-27 07:40:13', ''),
(37, 'Tresemme keratin smooth shampoo india', '200.00', '580', 'ml', '', 0, 'tresemme-keratin-smooth-shampoo-india-580-ml.jpeg', 25, 1, '2016-04-27 07:41:47', '2016-04-27 07:41:47', ''),
(38, 'Bashundhara baby diaper jumbo series l 7 18 kg', '200.00', '48', 'pcs', '', 0, 'bashundhara-baby-diaper-jumbo-series-l-7-18-kg-48-pcs.jpeg', 28, 1, '2016-04-27 07:53:31', '2016-04-27 07:53:31', ''),
(39, 'Bashundhara baby diaper series xl 11 25 kg', '250.00', '40', 'pcs', '', 0, 'bashundhara-baby-diaper-series-xl-11-25-kg-40-pcs.jpeg', 28, 1, '2016-04-27 07:56:04', '2016-04-27 07:56:04', ''),
(40, 'Biomil 1 milk 0 6 month powder', '350.00', '350', 'gm', '', 0, 'biomil-1-milk-0-6-month-powder-350-gm.jpeg', 29, 1, '2016-04-27 08:00:04', '2016-04-27 08:00:04', ''),
(41, 'Biomil-2-follow-up-infant-milk-formula-tin-6-12-months--', '500.00', '400', 'gm', '', 0, 'biomil-2-follow-up-infant-milk-formula-tin-6-12-months-400-gm.jpeg', 29, 1, '2016-04-27 08:01:25', '2016-04-27 08:01:25', ''),
(42, 'Colgate anticavity baby strawberry toothpaste 0 2 years', '102.00', '50', 'ml', '', 0, 'colgate-anticavity-baby-strawberry-toothpaste-0-2-years-50-ml.jpeg', 30, 1, '2016-04-27 08:04:40', '2016-04-27 08:04:40', ''),
(44, 'Breeze colour care', '50.00', '25', 'kg', '', 0, 'breeze-colour-care-25-kg.jpeg', 16, 1, '2016-04-27 08:12:40', '2016-04-27 08:12:40', ''),
(46, 'Bengal plastic heart shape tiffin box', '75.00', '1', 'pcs', '', 0, 'bengal-plastic-heart-shape-tiffin-box-1-pcs.jpeg', 18, 1, '2016-04-27 08:17:50', '2016-04-27 08:17:50', ''),
(48, 'Aci hi booster mosquito coil', '30.00', '10', 'pcs', '', 0, 'aci-hi-booster-mosquito-coil-10-pcs.jpeg', 21, 1, '2016-04-27 08:25:04', '2016-04-27 08:25:04', '');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hold_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hold_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `road_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hold_area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `address`, `hold_name`, `hold_no`, `road_no`, `hold_area`, `phone_number`, `stripe_id`, `card_brand`, `card_last_four`, `remember_token`, `created_at`, `updated_at`, `trial_ends_at`) VALUES
(10, 'Abbas', 'Mahmud', 'abbas@gmail.com', '$2y$10$tS6clSlxtInsadUQc/QV3uMcVgi9Glh65P/SMnhpmHaDksk4VOfTi', '', 'Abbas Mansion', '20', '20', '20', '01850785098', NULL, NULL, NULL, 'XbOpeKky6PN0iLQTgneTEmXmcsBi1aKJeapxIAd51j0FAaWDKI2QXEqn99Ns', '2016-04-28 16:40:48', '2016-04-28 17:48:36', NULL),
(11, 'salman', 'Mahmud', 'salman@gmail.com', '$2y$10$cS4uQaxp5HG0I2GvUhFiXOAM7Jy4gKZ83onlWDbTJjt.mo.ll2GJW', '', 'Abbas Mansion', '20', '20', '20', '01850785098', NULL, NULL, NULL, 'z73Ql6pqwYOktOslnZp2jXis4tratGioHwZkz99S3ZZiMLBvKwfJvAO5b59J', '2016-04-28 17:51:31', '2016-05-10 11:44:42', NULL),
(12, 'Ahsan', 'Navid', 'navid@yahoo.com', '$2y$10$Pes0mYamJ.SaPFvJdpXYiewFBIN93M5BSN8lx6y5eZxHwikI.YYYa', '', 'Anis mansion', '20', '20', '20', '01855656565', NULL, NULL, NULL, 'p0Vn580yjAuY8EiKgatxvzmZovrVXmXjajEfehnhrsAE9czN16LNv50DT4s7', '2016-05-10 16:57:54', '2016-05-10 17:23:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
