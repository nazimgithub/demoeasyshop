-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 03:54 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apieasyshopecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'http://127.0.0.1:8000/upload/category/1766541691988102.png', '2023-02-09 03:36:28', '2023-05-21 16:14:00'),
(6, 'Sports Wear', 'http://127.0.0.1:8000/storage/3917525.svg', '2023-02-09 03:36:28', '2023-05-21 16:14:25'),
(7, 'Home & Furniture', 'http://127.0.0.1:8000/storage/3917525.svg', '2023-02-09 03:36:28', '2023-02-09 03:36:28'),
(8, 'Laptops', 'http://127.0.0.1:8000/upload/category/1766539951885549.png', NULL, NULL),
(9, 'Desktop', 'http://127.0.0.1:8000/upload/category/1766540002992170.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `product_code`, `email`, `image`, `created_at`, `updated_at`) VALUES
(13, 'ASUS TUF A15 FA506IU Ryzen', '4800H', 'nazimt@chetu.com', 'https://rukminim1.flixcart.com/image/416/416/l3t2fm80/mobile/7/w/5/-original-imageu8c4ae9sezr.jpeg?q=70', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost:8000/storage/slider1.jpg', '2023-02-20 05:45:27', '2023-02-20 05:45:27'),
(2, 'http://localhost:8000/storage/slider2.jpg', '2023-02-20 05:45:27', '2023-02-20 05:45:27'),
(3, 'http://localhost:8000/storage/slider3.jpg', '2023-02-20 05:45:27', '2023-02-20 05:45:27');

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
(6, '2023_01_28_041321_create_sessions_table', 1),
(7, '2023_01_28_044955_create_visitors_table', 1),
(8, '2023_01_29_120351_create_contacts_table', 1),
(9, '2023_01_31_041824_create_site_infos_table', 1),
(10, '2023_02_07_041118_create_categories_table', 1),
(11, '2023_02_07_041826_create_subcategories_table', 1),
(12, '2023_02_11_115722_create_product_lists_table', 2),
(13, '2023_02_20_052822_create_home_sliders_table', 3),
(14, '2023_02_25_042545_create_product_details_table', 4),
(15, '2023_03_27_021713_create_product_reviews_table', 5),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 6),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 6),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 6),
(19, '2016_06_01_000004_create_oauth_clients_table', 6),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 6),
(21, '2023_03_02_025627_create_notifications_table', 6),
(22, '2023_04_09_103322_create_product_cards_table', 7),
(23, '2023_05_01_054741_create_favourites_table', 8),
(24, '2023_05_07_113603_create_orders_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Mega Offer Sale', 'This offer only for you until 15 May 2023.', '2023-05-15', '2023-05-13 15:02:12', '2023-05-13 15:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('121ec383f067b0707619e49f2a479935c678f22efb6c757e00e5fdf15b1c3f231d71b5a591ba085d', 5, 1, 'app', '[]', 0, '2023-05-05 21:39:27', '2023-05-05 21:39:27', '2024-05-06 03:09:27'),
('30e57557eb815efa1778267a6c4a3a4e2bdbec10ca34445a7245993a787e016ae07bcfd5b627913e', 4, 1, 'app', '[]', 0, '2023-04-29 21:34:37', '2023-04-29 21:34:37', '2024-04-30 03:04:37'),
('34751fe19cc44bbb52b48ed247440c6078092876c09ea70c09754187d7d7c184d74c2797086c3648', 5, 1, 'app', '[]', 0, '2023-05-08 22:22:02', '2023-05-08 22:22:02', '2024-05-09 03:52:02'),
('3b4b2a391b8fba9ee2d979ff7b18d752d332abf6e510fa7c95655a5e882eae1101a36e59fdfa5e30', 5, 1, 'app', '[]', 0, '2023-05-07 15:26:25', '2023-05-07 15:26:25', '2024-05-07 20:56:25'),
('4dc5d0c938bca87cdd91622cb44151929db8b73123dc0ca1e3b6ff70c5c995bb2e3264142b531137', 5, 1, 'app', '[]', 0, '2023-05-10 22:18:58', '2023-05-10 22:18:58', '2024-05-11 03:48:58'),
('7d934b388dc87430ee26111f659e462a168c9e0e92d30fe9ca7b78d98bbe008d30dfde6022f564ad', 5, 1, 'app', '[]', 0, '2023-05-03 23:53:53', '2023-05-03 23:53:53', '2024-05-04 05:23:53'),
('7f428cd39d49e99fbd681aa7848a19ed6e0ffc12db7fefba6fb76b9f8ec268c8235ba1a154f99325', 5, 1, 'app', '[]', 0, '2023-04-30 05:14:16', '2023-04-30 05:14:16', '2024-04-30 10:44:16'),
('887fdeb891a53711f74207eb9bb9a1143f03a7960d010401e2246d85adffb77c191fc7e9ea5603cb', 5, 1, 'app', '[]', 0, '2023-05-06 09:21:12', '2023-05-06 09:21:12', '2024-05-06 14:51:12'),
('8ddae8f953b383b50cb6b5d041b1a9b42e803264897e9385621654462d1bb488b8c7fa20099964a5', 1, 1, 'app', '[]', 0, '2023-05-13 08:48:28', '2023-05-13 08:48:28', '2024-05-13 14:18:28'),
('984c74fd101bea4bf9df0cbe4f68487cac6114be7b3b9ce9855a44e8056614786937c55851481a88', 5, 1, 'app', '[]', 0, '2023-04-30 16:22:03', '2023-04-30 16:22:03', '2024-04-30 21:52:03'),
('a7fd48b0e7c42aa853b855fd068bceb01bd275166d4bbbb605e3c8386395d1759fe87ecca050b266', 5, 1, 'app', '[]', 0, '2023-05-05 22:08:29', '2023-05-05 22:08:29', '2024-05-06 03:38:29'),
('a839b89103441cb4e5c0b40aaa3c7767aa1c3dc6b3c1a3d46938107dc2d4c62bdd84d95644695f24', 5, 1, 'app', '[]', 0, '2023-05-12 21:31:21', '2023-05-12 21:31:21', '2024-05-13 03:01:21'),
('a93bb17d546b6303e51b5bcc4cebd51b5cd76ca0c7b0d1be9e2a71d9c4ef3b7aefdaed561030ae89', 5, 1, 'app', '[]', 0, '2023-04-29 21:35:49', '2023-04-29 21:35:49', '2024-04-30 03:05:49'),
('b7e4fe067a7174218fa7d34bae2876f24853fa85a586bcde9dea3bb35a9bb5a1218728d3b2bf8e18', 5, 1, 'app', '[]', 0, '2023-05-07 06:02:21', '2023-05-07 06:02:21', '2024-05-07 11:32:21'),
('e330331d5c05942a9f6f4ceea9372ab38fd02e72813a9dbb34e86eaeccb947621c0c7770a9ea8801', 5, 1, 'app', '[]', 0, '2023-05-06 04:26:52', '2023-05-06 04:26:52', '2024-05-06 09:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'nazim', 'VtZnt71grLUyGbgkUpLXv4X7uZOCtRFqZ4kSeI98', NULL, 'http://localhost', 1, 0, 0, '2023-04-29 21:22:42', '2023-04-29 21:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-04-29 21:22:42', '2023-04-29 21:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(1, '78F22BD4BA04CBF1ED1CA0CF5CD817AD', 'ASUS TUF A15 FA506IU Ryzen', '4800H', 'Size: S', 'Color: Red', 2, '2500', '5000', 'shabana@test.com', 'Mohammad Adil', 'Cash On Delivery', 'Aasish Medicoz, Bhagwan Bazar, Chapra - 841301', 'Dhaka', '250.00', '08-05-2023', '04:07:06am', 'Complete', NULL, '2023-06-12 22:43:21'),
(2, '78F22BD4BA04CBF1ED1CA0CF5CD817AD', 'ASUS TUF A15 FA506IU Ryzen', '4800H', 'Size: S', 'Color: Red', 1, '2500', '2500', 'shabana@test.com', 'Mohammad Adil', 'Cash On Delivery', 'Aasish Medicoz, Bhagwan Bazar, Chapra - 841301', 'Dhaka', '250.00', '08-05-2023', '04:07:06am', 'Complete', NULL, '2023-06-12 22:41:40'),
(3, '78F22BD4BA04CBF1ED1CA0CF5CD817AD', 'ASUS TUF A15 FA506IU Ryzen', '4800H', 'Size: S', 'Color: Red', 1, '2500', '2500', 'shabana@test.com', 'Mohammad Adil', 'Cash On Delivery', 'Aasish Medicoz, Bhagwan Bazar, Chapra - 841301', 'Dhaka', '250.00', '08-05-2023', '04:07:06am', 'Complete', NULL, NULL);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_cards`
--

CREATE TABLE `product_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_cards`
--

INSERT INTO `product_cards` (`id`, `image`, `email`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 'https://rukminim1.flixcart.com/image/416/416/l3t2fm80/mobile/7/w/5/-original-imageu8c4ae9sezr.jpeg?q=70', 'nazimt@chetu.com', 'ASUS TUF A15 FA506IU Ryzen', '4800H', 'Size: S', 'Color: Black', '1', '2500', '2500', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_1`, `image_2`, `image_3`, `image_4`, `short_description`, `color`, `size`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://127.0.0.1:8000/storage/product/product1.png', 'http://127.0.0.1:8000/storage/product/product2.png', 'http://127.0.0.1:8000/storage/product/product3.png', 'http://127.0.0.1:8000/storage/product/product4.png', 'ASUS TUF A15 FA506IU Ryzen 7 4800H GTX', 'Red, White, Black, Blue', 'S, M, L, XL, XXL', 'DETAILS\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation\r\n\r\n', '2023-02-25 04:36:23', '2023-02-25 04:36:23'),
(2, 12, 'http://127.0.0.1:8000/upload/productdetails/1767475476196703.jpg', 'http://127.0.0.1:8000/upload/productdetails/1767475476362430.jpg', 'http://127.0.0.1:8000/upload/productdetails/1767475476571843.jpg', 'http://127.0.0.1:8000/upload/productdetails/1767475476760637.jpg', '10% Instant Discount up to INR 400 on HDFC Bank Debit Card Non-EMI Txn. Minimum purchase value INR 3500.', 'Red', 'XL', '<div id=\"aplusBrandStory_feature_div\" class=\"celwidget\" style=\"box-sizing: border-box; color: #0f1111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"n3nidp-1pn3qs-vc28xe-dkzfhv\" data-cel-widget=\"aplusBrandStory_feature_div\"></div>\r\n<div id=\"aplus_feature_div\" class=\"celwidget\" style=\"box-sizing: border-box; color: #0f1111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"tsdfme-irh0kw-z3o9ta-8b4wcg\" data-cel-widget=\"aplus_feature_div\"></div>\r\n<div id=\"dp-ads-center-promo_feature_div\" class=\"celwidget\" style=\"box-sizing: border-box; color: #0f1111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-feature-name=\"dp-ads-center-promo\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"dp-ads-center-promo\" data-csa-c-slot-id=\"dp-ads-center-promo_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"w5qcdc-3hbcjg-wbxmnb-7joncr\" data-cel-widget=\"dp-ads-center-promo_feature_div\">\r\n<div id=\"dp-ads-center-promo_feature_div\" style=\"box-sizing: border-box;\">\r\n<div id=\"dp-ads-center-promo_feature_div\" style=\"box-sizing: border-box;\"></div>\r\n</div>\r\n</div>\r\n<div id=\"productDescription_feature_div\" class=\"celwidget\" style=\"box-sizing: border-box; color: #0f1111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-feature-name=\"productDescription\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productDescription\" data-csa-c-slot-id=\"productDescription_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"d1liz0-kb2hwd-fyj9kw-w5kanu\" data-cel-widget=\"productDescription_feature_div\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div id=\"productDescription_feature_div\" class=\"a-row feature\" style=\"box-sizing: border-box; width: 1484px;\" data-feature-name=\"productDescription\" data-template-name=\"productDescription\" data-cel-widget=\"productDescription_feature_div\">\r\n<div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"box-sizing: border-box; margin: 0.5em 0px 0em 25px; color: #333333; overflow-wrap: break-word; font-size: small; line-height: initial;\">\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0em 0px 1em 1em;\"><span style=\"box-sizing: border-box;\">Adidas sells a range of clothing items, varying from men\'s and women\'s t-shirts, jackets, hoodies, pants and leggings. The adidas brand offers apparel for every sport, every fashion, every style, whether you are an athlete or fashionista.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TUF A15 FA506IU Ryzen', '2500', '', 'https://rukminim1.flixcart.com/image/416/416/l3t2fm80/mobile/7/w/5/-original-imageu8c4ae9sezr.jpeg?q=70', 'Mobiles', 'Real Me', 'FEATURE', 'Tony', '4', '4800H', '2023-02-11 12:15:55', '2023-02-11 12:15:55'),
(2, 'SAMSUNG GALAXY M13', '15200', '14200', 'https://rukminim1.flixcart.com/image/416/416/ky90scw0/mobile/m/r/u/-original-imagagnffruu7ptd.jpeg?q=70', 'Mobiles', 'Samsung', 'FEATURE', 'Samsung', '3', 'M562', '2023-02-11 12:15:55', '2023-02-11 12:15:55'),
(3, 'POCO C31 (Royal Blue, 64 GB) (4 GB RAM)', '8599', '', 'https://rukminim1.flixcart.com/image/416/416/ku4ezrk0/mobile/p/e/4/c31-mzb0a0jin-poco-original-imag7bzqxgdhgf2n.jpeg?q=70', 'Mobiles', 'One Plus', 'FEATURE', 'Poco', '4', 'POCO85', '2023-02-11 12:15:55', '2023-02-11 12:15:55'),
(4, 'MOTOROLA e40 (Carbon Gray, 64 GB) (4 GB RAM)', '17899', '17000', 'https://rukminim1.flixcart.com/image/416/416/l1l1rww0/mobile/v/7/n/-original-imagd48zkjwujxzz.jpeg?q=70', 'Mobiles', 'Oppo', 'FEATURE', 'Motorola', '4', 'MOTO1', '2023-02-11 12:15:55', '2023-02-11 12:15:55'),
(5, 'LCS-8188 TRENDING DAY & DATE FUNCTIONING Analog Watch - For Men', '1500', '1200', 'https://rukminim1.flixcart.com/image/832/832/k7z3afk0/watch/t/c/x/lcs-8188-lois-caron-original-imafq3k9ztzdkyhe.jpeg?q=70', 'Electronic', 'Rado', 'NEW', 'Rado', '2', 'LCS-8188', '2023-02-11 06:45:55', '2023-02-11 06:45:55'),
(6, '102 Digital Watch - For Men &\r\nWomen', '1599', '1299', 'https://rukminim1.flixcart.com/image/832/832/l5iid8w0/shopsy-watch/7/5/p/1-102-shopglobal-men-women-original-imag5djgbsrhd3fm.jpeg?q=70', 'Electronic', 'Tata', 'NEW', 'Tata Cliq', '3', '102', '2023-02-11 06:45:55', '2023-02-11 06:45:55'),
(7, '1170-BL-BR Unique New Day & Date Analog Watch - For Men', '1850', '1450', 'https://rukminim1.flixcart.com/image/832/832/ken59jk0-0/watch/h/8/s/tw00zr347-timex-original-imafva9zqe6m4x2t.jpeg?q=70', 'Electronic', 'Tata', 'NEW', 'Tata Cliq', '4', '1-102', '2023-02-11 06:45:55', '2023-02-11 06:45:55'),
(8, 'HMTY-7008 ORIGINAL GOLD PLATED DAY & DATE FUNCTIONING FOR BOYS Analog Watch - For Men', '1399', '1099', 'https://rukminim1.flixcart.com/image/832/832/ku1k4280/watch/q/3/j/1-hmty-7008-hymt-men-original-imag79f5qgbyn4rn.jpeg?q=70', 'Electronic', 'Tata', 'NEW', 'HMT', '3.5', 'HMTY', '2023-02-11 06:45:55', '2023-02-11 06:45:55'),
(9, 'Striped Men Hooded Neck Red', '599', '299', 'https://rukminim1.flixcart.com/image/800/960/kf1fo280hlty2aw-0/t-shirt/w/s/e/-original-imafdfvvr8hqdu65.jpeg?q=50', 'Fashions', 'HM', 'PRODUCT', 'H&M', '3', '102', '2023-02-11 06:45:55', '2023-02-11 06:45:55'),
(10, 'Striped Men Round Neck Maroon, Grey', '699', '499', 'https://rukminim1.flixcart.com/image/800/960/keykscw0-0/t-shirt/l/d/q/3xl-bmrgyrnful-z12-blive-original-imafvgzkyjghf7ba.jpeg?q=50', 'Fashions', 'Road Star', 'PRODUCT', 'Slim Fit', '4', 'RS-001', '2023-02-11 06:45:55', '2023-02-11 06:45:55'),
(11, 'Color Block Men Round Neck Grey', '699', '499', 'https://rukminim1.flixcart.com/image/800/960/jt4olu80/t-shirt/v/7/v/xl-t-shirt-0068-eg-original-imafejrfpzjkxvkq.jpeg?q=50', 'Fashions', 'Road Star', 'PRODUCT', 'Fit Regular', '4', 'RS-002', '2023-02-11 06:45:55', '2023-02-11 06:45:55'),
(12, 'Adidas X 22.4 FxG', '2650', '24000', 'http://127.0.0.1:8000/upload/product/1767475475934425.jpg', 'Sports Wear', 'Men', 'NEW', 'Tony', '4', 'ADDX224', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_code`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(1, '4800H', 'ASUS TUF A15 FA506IU Ryzen', 'good', NULL, '1', 'nazim', NULL, NULL),
(2, '4800H', 'ASUS TUF A15 FA506IU Ryzen', 'John white', NULL, '4', 'Nice product at low cost price.', NULL, NULL),
(3, '4800H', 'ASUS TUF A15 FA506IU Ryzen', 'John white', NULL, '4', 'Nice product at low cost price.', NULL, NULL),
(4, '4800H', 'ASUS TUF A15 FA506IU Ryzen', 'John white', NULL, '4', 'Nice product at low cost price.', NULL, NULL),
(5, '4800H', 'ASUS TUF A15 FA506IU Ryzen', 'John white', NULL, '4', 'Nice product at low cost price.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('85pppt3ww421licq3S0Y1ih3tuAMcmkrfjgcv9GQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS2J3cDFYN0lHZGpSTVI2eXJBblhhemEyamE3SmQ1MG1teXZhbFJUcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1686549895),
('dYk9tmnc9wfpFUsirms1WzdDhjX7Nth6swIWBH9j', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib1dodVJNN3RWUk84YTJXM2xWanJTY1VtSTlia2lBYmlwN2ZTRE5sMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZXZpZXcvYWxsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1686314569),
('HT8Bskk5jNkYy24gFpJ0E4EbmkC5mwFiErZgd4n9', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3lESVBjc3RpRXJKbHFMakJvU0RBZDBKQ0czQ3pjZmlhYk1HdVBMViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlci9kZXRhaWwvMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1686551760),
('kTEiNbMMAKpguljThXqm4QIG9JAczsU1mtE3DtWC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSnVIS0NaRmxZSnZuaG83cEIyNGhxWkdpUU5XNENscnIzUkpneTd0eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaXRlaW5mbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1686469117),
('OMYnsLSprR9AmrQJAftoB40JtWW5JwzZk66eiAUJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTVENlY5MnFqTkJvS0NhTG5WSUxHVkltVEZQNkxFV3JhMHNXYTFNQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jb250YWN0L2FsbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1686408862),
('WBr7ZpbVlyb1g7Mlkr75stpiZebRnFys8OC6vo9f', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVRLTGxTbDIzQXZXV0ZCcWFzUTd5YTEyeDFZRHhmamZTVlRsYnVCeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1686626627),
('z2xA8NsQDIHMzZnobwamj0LDpbu9qMisGh2MRGaI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemxmUm1vQ3ZobFpLc2x6WGo0bzk0NDNTeHhWTFA5SWZOT0doeU1mciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1686630086);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_guide` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `android_app_link`, `facebook_app_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<h4>About Us</h4>\r\n<p><strong>Our High-Content Screening (HCS)</strong>, also known as High-Content Analysis (HCA), or High-Content Imaging platforms are designed for exceptional single-cell analysis capabilities and lightning-fast time-to-data. Perform unbiased spontaneous phenotyping with intact, fixed, or live cells derived from monolayers to spheroids. Acquire complex images and high-content data in seconds with the Thermo Scientific CellInsight HCS platforms powered by HCS Studio software.</p>\r\n<p><em>Featured in over 2,000 peer-reviewed publications, the CellInsight platform and HCS Studio software combine multi-parameter fluorescence microscopy with mathematical algorithms that identify and measure each cell within the fields of view. Conducting imaging and analysis in parallel provides the fastest time-to-data possible, a key advantage for high-throughput screening applications. Recent advances in laser-based focusing, confocal spinning disc performance, camera sensitivity and algorithm processing have accelerated throughput so that an entire 96-well plate can be scanned and quantified in under four minutes.</em></p>', '<div class=\"inner-padding\">\r\n<h2 class=\"titre_de_page document\">Refund Policy for Website</h2>\r\n<div id=\"description\">\r\n<p><strong>This Refund Policy is made for the use of the website.</strong> This document tells the user about the rules regarding the <strong>return and refund of the products</strong> or services once sold on the website. This document can be used for any type of industry including healthcare, finance, entertainment, e-commerce, transportation, etc.</p>\r\n<p><strong>It should be noted that this document only includes the Refund Policy</strong>. Website owners may require further documents such as <a href=\"modele/website-terms-conditions\" target=\"_blank\" rel=\"noopener\">Website Terms and Conditions</a>, <a href=\"modele/website-cookies-policy\" target=\"_blank\" rel=\"noopener\">Cookies Policy</a> and <a href=\"modele/privacy-policy-website-mobile-application-in\" target=\"_blank\" rel=\"noopener\">Privacy Policy</a>. However, such documents are not included and must be obtained separately.</p>\r\n<p>By using the Refund Policy, the website owners can answer their user\'s questions about returns and refunds, which helps to build trust with their users. As more and more people are willing to purchase goods and avail services online, it is increasingly common that users want to know about return and refund policy before making any decision to purchase online. <strong>A clearly drafted Refund Policy will help the customers to remove any apprehension regarding the website.</strong></p>\r\n<p><br /><strong>How to use this document?</strong></p>\r\n<p>Once this document has been prepared, it needs to be published on the website and needs to be made easily accessible/visible to the users. It is better to provide a link on the home page of the website.</p>\r\n<p>This Policy clarifies the following matters:</p>\r\n<ul>\r\n<li><strong>Refunding rules</strong>: under this, the general rules regarding the refund can be included.</li>\r\n<li><strong>Products damaged during transit</strong>: this defines what to do when the customer receives a damaged product.</li>\r\n<li><strong>Order not confirmed and the amount deducted</strong>: the customer will be informed of the steps to be followed if the amount is deducted from the account and the order is not confirmed.</li>\r\n<li><strong>Exempted goods and services from the refund: </strong>the customers will be informed of the goods or services which are not refundable.</li>\r\n<li><strong>Rules of return: </strong>the customer will be informed of the procedures and rules to be followed while returning a product or requesting a refund.</li>\r\n<li><strong>Shipping cost</strong>: under this, it will be clarified who will bear the cost of returning the goods.</li>\r\n<li><strong>Response time: </strong>the users will be informed of the normal expected processing time.</li>\r\n<li><strong>Changes to this Policy: </strong>the customers will be informed that the website reserves the right to modify the terms of this policy at any time without any notice.</li>\r\n</ul>\r\n<p><br /><strong>Applicable Law</strong></p>\r\n<p>The return and refund of the products and services will be covered under the <a href=\"https://egazette.nic.in/WriteReadData/2019/210422.pdf\" target=\"_blank\" rel=\"noopener\">Consumer Protection Act, 2019</a> and the general rules of the <a href=\"https://legislative.gov.in/sites/default/files/A1872-09.pdf\" target=\"_blank\" rel=\"noopener\">Indian Contract Act, 1872</a>.</p>\r\n<p><br /><strong>How to modify the template?</strong></p>\r\n<p>You fill out a form. The document is created before your eyes as you respond to the questions.</p>\r\n<p>At the end, you receive it in <strong>Word and PDF</strong> formats. You can <strong>modify</strong> it and <strong>reuse</strong> it.</p>\r\n</div>\r\n<a class=\"btn large call2action creation-document bottom-btn\" href=\"https://www.wonder.legal/in/creation-modele/refund-policy-for-website\"> Fill out the template </a></div>', '<p>E-commerce enables you to reach customers from all over the world. However, due to the minimal requirements for starting an online store, the market is highly competitive, and it can be hard to stand out from the crowd. Providing product buying guides to help shoppers who are overwhelmed with the options available can help draw them to your business.</p>\r\n<p>In this article, we&rsquo;ll explain what product buying guides are and why they&rsquo;re useful for e-commerce. Then we&rsquo;ll demonstrate how to create a product buying guide for your business.</p>\r\n<h4>An Introduction to Product Buying Guides for E-Commerce Businesses</h4>\r\n<p>Product buying guides are online articles that help to inform customers about any important considerations when shopping for a specific item. They can point out differences in functionality, size, required maintenance, price, or other features between styles or brands. They&rsquo;re especially useful for &lsquo;high-ticket&rsquo; items such as furniture or appliances.</p>\r\n<p>For example, Wayfair provides several product buying guides for their appliances, including refrigerators. They include information on different types of refrigerators, how to determine what size is best for your kitchen, and the various styles available.</p>', '<h3>How to Write a Privacy Policy: The Basics &amp; Requirements</h3>\r\n<p>The Personal Information Protection and Electronic Documents Act (PIPEDA) is a Canadian data privacy law. It provides Canadian internet users with the right to consent to the collection of their data as well as the right to access their information and dispute its accuracy. According to PIPEDA, personal data from individuals may only be used for the purpose for which it was collected.</p>\r\n<p>The fundamental principles of this law are increased accountability, identified purpose for data collection, adequate use of consent, and limits over the collection of sensitive or personal data.</p>\r\n<p>Additionally, it aims to restrict the use, disclosure, and retention of personal information. The data must be safe, accurate, and should allow for individual access. Moreover, individuals must be able to challenge an organization that does not comply.</p>\r\n<p>In this article, we&rsquo;ll explain what product buying guides are and why they&rsquo;re useful for e-commerce. Then we&rsquo;ll demonstrate how to create a product buying guide for your business.</p>\r\n<h4>An Introduction to Product Buying Guides for E-Commerce Businesses</h4>\r\n<p>Product buying guides are online articles that help to inform customers about any important considerations when shopping for a specific item. They can point out differences in functionality, size, required maintenance, price, or other features between styles or brands. They&rsquo;re especially useful for &lsquo;high-ticket&rsquo; items such as furniture or appliances.</p>\r\n<p>For example, Wayfair provides several product buying guides for their appliances, including refrigerators. They include information on different types of refrigerators, how to determine what size is best for your kitchen, and the various styles available.</p>', '<p>N-128/ A, Near SuperNova Tower, Pocket C, Sector 135</p>\r\n<p>New Delhi - 110025</p>', 'https://developer.android.com/studio', 'https://www.facebook.com/', 'https://twitter.com/i/flow/login', 'https://www.instagram.com/', '<p>© 2023 Mohammad Nazim</p>', '2023-02-09 03:14:46', '2023-06-12 00:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'Oppo', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(2, 'Mobiles', 'Samsung', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(3, 'Mobiles', 'Real Me', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(4, 'Mobiles', 'Apple', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(5, 'Mobiles', 'One Plus', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(6, 'Computer', 'Desktop', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(7, 'Computer', 'Laptop', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(8, 'Computer', 'Monitor', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(9, 'Computer', 'Memory', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(10, 'Electronic', 'Smart TV', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(11, 'Camera', 'Laptop', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(12, 'Studio Sound Box', 'Monitor', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(13, 'Electronic', 'Digital Locker', '2023-02-09 03:40:24', '2023-02-09 03:40:24'),
(14, 'TV & Appliances', 'Brava', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(15, 'TV & Appliances', 'Air Condition', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(16, 'TV & Appliances', 'Gaming Box', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(17, 'TV & Appliances', 'Smart Watch', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(18, 'TV & Appliances', 'Digital Clock', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(19, 'Fashions', 'Men', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(20, 'Fashions', 'Women', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(21, 'Fashions', 'Kids', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(22, 'Fashions', 'New Born', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(23, 'Sports', 'Cricket', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(24, 'Sports', 'Football', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(25, 'Sports', 'Hockey', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(26, 'Sports', 'Badminton', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(27, 'Home & Furniture', 'Home Decor -New', '2023-02-09 03:45:07', '2023-05-25 00:04:54'),
(28, 'Home & Furniture', 'Bed Room Furniture', '2023-02-09 03:45:07', '2023-02-09 03:45:07'),
(29, 'Home & Furniture', 'Living Room Furniture - New', '2023-02-09 03:45:07', '2023-05-25 22:00:54');

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
(1, 'Mohammad Nazim', 'nazimt@test.com', NULL, '$2y$10$EyQnBUAC6s2NZKpc49Lh3ud3LdPJJ4YnewJM5jSsL2.KX1B0yhZZO', NULL, NULL, NULL, NULL, NULL, '202305142115nazim_pic.jpeg', '2023-02-08 21:43:26', '2023-05-20 23:35:50'),
(5, 'Shabana Khatoon', 'shabana@test.com', NULL, '$2y$10$YDHMq5Q5YgNt9ewWCB7QZeJ93j6lPEsQ.aB/2LBwlIU.QF0V.js02', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-29 21:35:49', '2023-04-29 21:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vist_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `vist_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '09:03:22am', '09-02-2023', NULL, NULL),
(2, '127.0.0.1', '09:03:22am', '09-02-2023', NULL, NULL),
(3, '127.0.0.1', '09:03:54am', '09-02-2023', NULL, NULL),
(4, '127.0.0.1', '09:03:54am', '09-02-2023', NULL, NULL),
(5, '127.0.0.1', '08:34:55am', '10-02-2023', NULL, NULL),
(6, '127.0.0.1', '08:34:55am', '10-02-2023', NULL, NULL),
(7, '127.0.0.1', '09:14:06am', '10-02-2023', NULL, NULL),
(8, '127.0.0.1', '09:14:08am', '10-02-2023', NULL, NULL),
(9, '127.0.0.1', '09:31:44am', '10-02-2023', NULL, NULL),
(10, '127.0.0.1', '09:31:45am', '10-02-2023', NULL, NULL),
(11, '127.0.0.1', '10:18:18am', '10-02-2023', NULL, NULL),
(12, '127.0.0.1', '10:18:20am', '10-02-2023', NULL, NULL),
(13, '127.0.0.1', '10:20:15am', '10-02-2023', NULL, NULL),
(14, '127.0.0.1', '10:20:17am', '10-02-2023', NULL, NULL),
(15, '127.0.0.1', '05:23:54pm', '11-02-2023', NULL, NULL),
(16, '127.0.0.1', '05:23:55pm', '11-02-2023', NULL, NULL),
(17, '127.0.0.1', '05:46:12pm', '11-02-2023', NULL, NULL),
(18, '127.0.0.1', '05:46:13pm', '11-02-2023', NULL, NULL),
(19, '127.0.0.1', '05:46:40pm', '11-02-2023', NULL, NULL),
(20, '127.0.0.1', '05:46:41pm', '11-02-2023', NULL, NULL),
(21, '127.0.0.1', '05:49:02pm', '11-02-2023', NULL, NULL),
(22, '127.0.0.1', '05:49:04pm', '11-02-2023', NULL, NULL),
(23, '127.0.0.1', '05:52:59pm', '11-02-2023', NULL, NULL),
(24, '127.0.0.1', '05:53:00pm', '11-02-2023', NULL, NULL),
(25, '127.0.0.1', '09:49:42pm', '12-02-2023', NULL, NULL),
(26, '127.0.0.1', '09:49:43pm', '12-02-2023', NULL, NULL),
(27, '127.0.0.1', '10:15:51pm', '12-02-2023', NULL, NULL),
(28, '127.0.0.1', '10:15:51pm', '12-02-2023', NULL, NULL),
(29, '127.0.0.1', '12:09:10am', '13-02-2023', NULL, NULL),
(30, '127.0.0.1', '12:09:11am', '13-02-2023', NULL, NULL),
(31, '127.0.0.1', '12:09:13am', '13-02-2023', NULL, NULL),
(32, '127.0.0.1', '12:09:14am', '13-02-2023', NULL, NULL),
(33, '127.0.0.1', '12:12:13am', '13-02-2023', NULL, NULL),
(34, '127.0.0.1', '12:12:14am', '13-02-2023', NULL, NULL),
(35, '127.0.0.1', '12:13:23am', '13-02-2023', NULL, NULL),
(36, '127.0.0.1', '12:13:24am', '13-02-2023', NULL, NULL),
(37, '127.0.0.1', '12:21:49am', '13-02-2023', NULL, NULL),
(38, '127.0.0.1', '12:21:50am', '13-02-2023', NULL, NULL),
(39, '127.0.0.1', '12:22:47am', '13-02-2023', NULL, NULL),
(40, '127.0.0.1', '12:22:48am', '13-02-2023', NULL, NULL),
(41, '127.0.0.1', '12:23:10am', '13-02-2023', NULL, NULL),
(42, '127.0.0.1', '12:23:11am', '13-02-2023', NULL, NULL),
(43, '127.0.0.1', '09:06:24am', '14-02-2023', NULL, NULL),
(44, '127.0.0.1', '09:06:26am', '14-02-2023', NULL, NULL),
(45, '127.0.0.1', '09:27:46am', '14-02-2023', NULL, NULL),
(46, '127.0.0.1', '09:27:48am', '14-02-2023', NULL, NULL),
(47, '127.0.0.1', '09:31:37am', '14-02-2023', NULL, NULL),
(48, '127.0.0.1', '09:31:39am', '14-02-2023', NULL, NULL),
(49, '127.0.0.1', '09:34:37am', '14-02-2023', NULL, NULL),
(50, '127.0.0.1', '09:34:39am', '14-02-2023', NULL, NULL),
(51, '127.0.0.1', '09:34:50am', '14-02-2023', NULL, NULL),
(52, '127.0.0.1', '09:34:52am', '14-02-2023', NULL, NULL),
(53, '127.0.0.1', '09:35:05am', '14-02-2023', NULL, NULL),
(54, '127.0.0.1', '09:35:07am', '14-02-2023', NULL, NULL),
(55, '127.0.0.1', '09:50:41am', '14-02-2023', NULL, NULL),
(56, '127.0.0.1', '09:50:43am', '14-02-2023', NULL, NULL),
(57, '127.0.0.1', '09:54:20am', '14-02-2023', NULL, NULL),
(58, '127.0.0.1', '09:54:22am', '14-02-2023', NULL, NULL),
(59, '127.0.0.1', '09:54:26am', '14-02-2023', NULL, NULL),
(60, '127.0.0.1', '09:54:29am', '14-02-2023', NULL, NULL),
(61, '127.0.0.1', '07:44:19am', '16-02-2023', NULL, NULL),
(62, '127.0.0.1', '07:44:21am', '16-02-2023', NULL, NULL),
(63, '127.0.0.1', '08:00:38am', '16-02-2023', NULL, NULL),
(64, '127.0.0.1', '08:00:39am', '16-02-2023', NULL, NULL),
(65, '127.0.0.1', '08:01:36am', '16-02-2023', NULL, NULL),
(66, '127.0.0.1', '08:01:38am', '16-02-2023', NULL, NULL),
(67, '127.0.0.1', '08:08:38am', '16-02-2023', NULL, NULL),
(68, '127.0.0.1', '08:08:39am', '16-02-2023', NULL, NULL),
(69, '127.0.0.1', '08:08:49am', '16-02-2023', NULL, NULL),
(70, '127.0.0.1', '08:08:51am', '16-02-2023', NULL, NULL),
(71, '127.0.0.1', '08:14:35am', '16-02-2023', NULL, NULL),
(72, '127.0.0.1', '08:14:36am', '16-02-2023', NULL, NULL),
(73, '127.0.0.1', '08:33:29am', '16-02-2023', NULL, NULL),
(74, '127.0.0.1', '08:33:30am', '16-02-2023', NULL, NULL),
(75, '127.0.0.1', '08:33:41am', '16-02-2023', NULL, NULL),
(76, '127.0.0.1', '08:33:43am', '16-02-2023', NULL, NULL),
(77, '127.0.0.1', '08:36:51am', '16-02-2023', NULL, NULL),
(78, '127.0.0.1', '08:36:52am', '16-02-2023', NULL, NULL),
(79, '127.0.0.1', '08:37:33am', '16-02-2023', NULL, NULL),
(80, '127.0.0.1', '08:37:34am', '16-02-2023', NULL, NULL),
(81, '127.0.0.1', '08:38:41am', '16-02-2023', NULL, NULL),
(82, '127.0.0.1', '08:38:43am', '16-02-2023', NULL, NULL),
(83, '127.0.0.1', '08:55:23am', '16-02-2023', NULL, NULL),
(84, '127.0.0.1', '08:55:24am', '16-02-2023', NULL, NULL),
(85, '127.0.0.1', '09:20:42am', '16-02-2023', NULL, NULL),
(86, '127.0.0.1', '09:20:43am', '16-02-2023', NULL, NULL),
(87, '127.0.0.1', '09:21:07am', '16-02-2023', NULL, NULL),
(88, '127.0.0.1', '09:21:08am', '16-02-2023', NULL, NULL),
(89, '127.0.0.1', '09:32:41am', '16-02-2023', NULL, NULL),
(90, '127.0.0.1', '09:32:42am', '16-02-2023', NULL, NULL),
(91, '127.0.0.1', '09:32:57am', '16-02-2023', NULL, NULL),
(92, '127.0.0.1', '09:32:58am', '16-02-2023', NULL, NULL),
(93, '127.0.0.1', '09:33:10am', '16-02-2023', NULL, NULL),
(94, '127.0.0.1', '09:33:11am', '16-02-2023', NULL, NULL),
(95, '127.0.0.1', '09:33:20am', '16-02-2023', NULL, NULL),
(96, '127.0.0.1', '09:33:22am', '16-02-2023', NULL, NULL),
(97, '127.0.0.1', '09:33:56am', '16-02-2023', NULL, NULL),
(98, '127.0.0.1', '09:33:57am', '16-02-2023', NULL, NULL),
(99, '127.0.0.1', '08:58:28am', '17-02-2023', NULL, NULL),
(100, '127.0.0.1', '09:29:20am', '17-02-2023', NULL, NULL),
(101, '127.0.0.1', '09:29:22am', '17-02-2023', NULL, NULL),
(102, '127.0.0.1', '10:08:59am', '17-02-2023', NULL, NULL),
(103, '127.0.0.1', '10:09:01am', '17-02-2023', NULL, NULL),
(104, '127.0.0.1', '09:25:18pm', '18-02-2023', NULL, NULL),
(105, '127.0.0.1', '09:45:22pm', '18-02-2023', NULL, NULL),
(106, '127.0.0.1', '09:45:24pm', '18-02-2023', NULL, NULL),
(107, '127.0.0.1', '09:48:07pm', '18-02-2023', NULL, NULL),
(108, '127.0.0.1', '09:48:10pm', '18-02-2023', NULL, NULL),
(109, '127.0.0.1', '09:48:55pm', '18-02-2023', NULL, NULL),
(110, '127.0.0.1', '09:48:58pm', '18-02-2023', NULL, NULL),
(111, '127.0.0.1', '03:16:28pm', '19-02-2023', NULL, NULL),
(112, '127.0.0.1', '03:16:30pm', '19-02-2023', NULL, NULL),
(113, '127.0.0.1', '03:21:07pm', '19-02-2023', NULL, NULL),
(114, '127.0.0.1', '03:21:09pm', '19-02-2023', NULL, NULL),
(115, '127.0.0.1', '03:21:27pm', '19-02-2023', NULL, NULL),
(116, '127.0.0.1', '03:21:28pm', '19-02-2023', NULL, NULL),
(117, '127.0.0.1', '03:22:34pm', '19-02-2023', NULL, NULL),
(118, '127.0.0.1', '03:22:35pm', '19-02-2023', NULL, NULL),
(119, '127.0.0.1', '03:24:33pm', '19-02-2023', NULL, NULL),
(120, '127.0.0.1', '03:24:35pm', '19-02-2023', NULL, NULL),
(121, '127.0.0.1', '03:59:14pm', '19-02-2023', NULL, NULL),
(122, '127.0.0.1', '03:59:16pm', '19-02-2023', NULL, NULL),
(123, '127.0.0.1', '03:59:57pm', '19-02-2023', NULL, NULL),
(124, '127.0.0.1', '03:59:58pm', '19-02-2023', NULL, NULL),
(125, '127.0.0.1', '04:03:20pm', '19-02-2023', NULL, NULL),
(126, '127.0.0.1', '04:03:22pm', '19-02-2023', NULL, NULL),
(127, '127.0.0.1', '04:12:30pm', '19-02-2023', NULL, NULL),
(128, '127.0.0.1', '04:12:31pm', '19-02-2023', NULL, NULL),
(129, '127.0.0.1', '04:17:03pm', '19-02-2023', NULL, NULL),
(130, '127.0.0.1', '04:17:04pm', '19-02-2023', NULL, NULL),
(131, '127.0.0.1', '04:19:06pm', '19-02-2023', NULL, NULL),
(132, '127.0.0.1', '04:19:07pm', '19-02-2023', NULL, NULL),
(133, '127.0.0.1', '04:20:12pm', '19-02-2023', NULL, NULL),
(134, '127.0.0.1', '04:20:14pm', '19-02-2023', NULL, NULL),
(135, '127.0.0.1', '04:20:54pm', '19-02-2023', NULL, NULL),
(136, '127.0.0.1', '04:20:55pm', '19-02-2023', NULL, NULL),
(137, '127.0.0.1', '04:22:35pm', '19-02-2023', NULL, NULL),
(138, '127.0.0.1', '04:22:36pm', '19-02-2023', NULL, NULL),
(139, '127.0.0.1', '04:27:37pm', '19-02-2023', NULL, NULL),
(140, '127.0.0.1', '04:27:38pm', '19-02-2023', NULL, NULL),
(141, '127.0.0.1', '04:33:26pm', '19-02-2023', NULL, NULL),
(142, '127.0.0.1', '04:33:34pm', '19-02-2023', NULL, NULL),
(143, '127.0.0.1', '04:33:35pm', '19-02-2023', NULL, NULL),
(144, '127.0.0.1', '11:51:23am', '20-02-2023', NULL, NULL),
(145, '127.0.0.1', '11:51:26am', '20-02-2023', NULL, NULL),
(146, '127.0.0.1', '11:52:38am', '20-02-2023', NULL, NULL),
(147, '127.0.0.1', '11:52:41am', '20-02-2023', NULL, NULL),
(148, '127.0.0.1', '11:53:37am', '20-02-2023', NULL, NULL),
(149, '127.0.0.1', '11:53:40am', '20-02-2023', NULL, NULL),
(150, '127.0.0.1', '11:54:28am', '20-02-2023', NULL, NULL),
(151, '127.0.0.1', '11:54:30am', '20-02-2023', NULL, NULL),
(152, '127.0.0.1', '11:55:20am', '20-02-2023', NULL, NULL),
(153, '127.0.0.1', '11:55:22am', '20-02-2023', NULL, NULL),
(154, '127.0.0.1', '09:21:00am', '22-02-2023', NULL, NULL),
(155, '127.0.0.1', '09:21:02am', '22-02-2023', NULL, NULL),
(156, '127.0.0.1', '09:27:29am', '22-02-2023', NULL, NULL),
(157, '127.0.0.1', '09:27:32am', '22-02-2023', NULL, NULL),
(158, '127.0.0.1', '09:27:58am', '22-02-2023', NULL, NULL),
(159, '127.0.0.1', '09:28:00am', '22-02-2023', NULL, NULL),
(160, '127.0.0.1', '09:29:29am', '22-02-2023', NULL, NULL),
(161, '127.0.0.1', '09:29:32am', '22-02-2023', NULL, NULL),
(162, '127.0.0.1', '09:33:52am', '22-02-2023', NULL, NULL),
(163, '127.0.0.1', '09:33:56am', '22-02-2023', NULL, NULL),
(164, '127.0.0.1', '09:33:59am', '22-02-2023', NULL, NULL),
(165, '127.0.0.1', '09:38:11am', '22-02-2023', NULL, NULL),
(166, '127.0.0.1', '09:38:13am', '22-02-2023', NULL, NULL),
(167, '127.0.0.1', '02:38:37am', '23-02-2023', NULL, NULL),
(168, '127.0.0.1', '02:57:44am', '23-02-2023', NULL, NULL),
(169, '127.0.0.1', '02:57:45am', '23-02-2023', NULL, NULL),
(170, '127.0.0.1', '03:01:43am', '23-02-2023', NULL, NULL),
(171, '127.0.0.1', '03:01:45am', '23-02-2023', NULL, NULL),
(172, '127.0.0.1', '03:02:00am', '23-02-2023', NULL, NULL),
(173, '127.0.0.1', '03:02:02am', '23-02-2023', NULL, NULL),
(174, '127.0.0.1', '03:02:20am', '23-02-2023', NULL, NULL),
(175, '127.0.0.1', '03:02:22am', '23-02-2023', NULL, NULL),
(176, '127.0.0.1', '03:03:41am', '23-02-2023', NULL, NULL),
(177, '127.0.0.1', '03:03:43am', '23-02-2023', NULL, NULL),
(178, '127.0.0.1', '03:04:15am', '23-02-2023', NULL, NULL),
(179, '127.0.0.1', '03:04:17am', '23-02-2023', NULL, NULL),
(180, '127.0.0.1', '03:05:29am', '23-02-2023', NULL, NULL),
(181, '127.0.0.1', '03:05:31am', '23-02-2023', NULL, NULL),
(182, '127.0.0.1', '03:14:14am', '23-02-2023', NULL, NULL),
(183, '127.0.0.1', '03:14:15am', '23-02-2023', NULL, NULL),
(184, '127.0.0.1', '03:14:25am', '23-02-2023', NULL, NULL),
(185, '127.0.0.1', '03:14:27am', '23-02-2023', NULL, NULL),
(186, '127.0.0.1', '03:18:55am', '23-02-2023', NULL, NULL),
(187, '127.0.0.1', '03:18:57am', '23-02-2023', NULL, NULL),
(188, '127.0.0.1', '03:24:14am', '23-02-2023', NULL, NULL),
(189, '127.0.0.1', '03:24:16am', '23-02-2023', NULL, NULL),
(190, '127.0.0.1', '03:26:29am', '23-02-2023', NULL, NULL),
(191, '127.0.0.1', '03:26:31am', '23-02-2023', NULL, NULL),
(192, '127.0.0.1', '03:27:09am', '23-02-2023', NULL, NULL),
(193, '127.0.0.1', '03:27:11am', '23-02-2023', NULL, NULL),
(194, '127.0.0.1', '03:31:45am', '23-02-2023', NULL, NULL),
(195, '127.0.0.1', '03:31:47am', '23-02-2023', NULL, NULL),
(196, '127.0.0.1', '03:31:56am', '23-02-2023', NULL, NULL),
(197, '127.0.0.1', '03:31:58am', '23-02-2023', NULL, NULL),
(198, '127.0.0.1', '03:32:07am', '23-02-2023', NULL, NULL),
(199, '127.0.0.1', '03:37:44am', '23-02-2023', NULL, NULL),
(200, '127.0.0.1', '03:37:46am', '23-02-2023', NULL, NULL),
(201, '127.0.0.1', '03:41:24am', '23-02-2023', NULL, NULL),
(202, '127.0.0.1', '03:41:25am', '23-02-2023', NULL, NULL),
(203, '127.0.0.1', '03:46:44am', '23-02-2023', NULL, NULL),
(204, '127.0.0.1', '03:46:45am', '23-02-2023', NULL, NULL),
(205, '127.0.0.1', '03:47:42am', '23-02-2023', NULL, NULL),
(206, '127.0.0.1', '03:47:43am', '23-02-2023', NULL, NULL),
(207, '127.0.0.1', '09:50:38am', '25-02-2023', NULL, NULL),
(208, '127.0.0.1', '09:50:40am', '25-02-2023', NULL, NULL),
(209, '127.0.0.1', '02:51:01pm', '26-02-2023', NULL, NULL),
(210, '127.0.0.1', '02:51:03pm', '26-02-2023', NULL, NULL),
(211, '127.0.0.1', '02:51:45pm', '26-02-2023', NULL, NULL),
(212, '127.0.0.1', '02:51:47pm', '26-02-2023', NULL, NULL),
(213, '127.0.0.1', '02:51:52pm', '26-02-2023', NULL, NULL),
(214, '127.0.0.1', '02:51:54pm', '26-02-2023', NULL, NULL),
(215, '127.0.0.1', '10:28:18pm', '26-02-2023', NULL, NULL),
(216, '127.0.0.1', '10:28:20pm', '26-02-2023', NULL, NULL),
(217, '127.0.0.1', '10:41:58pm', '26-02-2023', NULL, NULL),
(218, '127.0.0.1', '10:42:00pm', '26-02-2023', NULL, NULL),
(219, '127.0.0.1', '10:43:05pm', '26-02-2023', NULL, NULL),
(220, '127.0.0.1', '10:43:08pm', '26-02-2023', NULL, NULL),
(221, '127.0.0.1', '12:23:21am', '27-02-2023', NULL, NULL),
(222, '127.0.0.1', '12:23:22am', '27-02-2023', NULL, NULL),
(223, '127.0.0.1', '08:36:42am', '28-02-2023', NULL, NULL),
(224, '127.0.0.1', '08:36:44am', '28-02-2023', NULL, NULL),
(225, '127.0.0.1', '10:23:37pm', '02-04-2023', NULL, NULL),
(226, '127.0.0.1', '10:23:39pm', '02-04-2023', NULL, NULL),
(227, '127.0.0.1', '05:06:05pm', '03-04-2023', NULL, NULL),
(228, '127.0.0.1', '05:06:09pm', '03-04-2023', NULL, NULL),
(229, '127.0.0.1', '06:10:14pm', '03-04-2023', NULL, NULL),
(230, '127.0.0.1', '06:10:16pm', '03-04-2023', NULL, NULL),
(231, '127.0.0.1', '07:45:47pm', '03-04-2023', NULL, NULL),
(232, '127.0.0.1', '07:45:50pm', '03-04-2023', NULL, NULL),
(233, '127.0.0.1', '03:37:21pm', '09-04-2023', NULL, NULL),
(234, '127.0.0.1', '03:37:35pm', '09-04-2023', NULL, NULL),
(235, '127.0.0.1', '09:51:10am', '27-04-2023', NULL, NULL),
(236, '127.0.0.1', '09:51:14am', '27-04-2023', NULL, NULL),
(237, '127.0.0.1', '04:21:37pm', '29-04-2023', NULL, NULL),
(238, '127.0.0.1', '04:21:42pm', '29-04-2023', NULL, NULL),
(239, '127.0.0.1', '07:22:51am', '30-04-2023', NULL, NULL),
(240, '127.0.0.1', '07:22:55am', '30-04-2023', NULL, NULL),
(241, '127.0.0.1', '07:35:45am', '30-04-2023', NULL, NULL),
(242, '127.0.0.1', '07:35:47am', '30-04-2023', NULL, NULL),
(243, '127.0.0.1', '03:38:40pm', '30-04-2023', NULL, NULL),
(244, '127.0.0.1', '03:38:44pm', '30-04-2023', NULL, NULL),
(245, '127.0.0.1', '03:38:54pm', '30-04-2023', NULL, NULL),
(246, '127.0.0.1', '03:38:56pm', '30-04-2023', NULL, NULL),
(247, '127.0.0.1', '03:38:58pm', '30-04-2023', NULL, NULL),
(248, '127.0.0.1', '03:39:00pm', '30-04-2023', NULL, NULL),
(249, '127.0.0.1', '03:51:05pm', '30-04-2023', NULL, NULL),
(250, '127.0.0.1', '03:51:07pm', '30-04-2023', NULL, NULL),
(251, '127.0.0.1', '03:51:17pm', '30-04-2023', NULL, NULL),
(252, '127.0.0.1', '03:51:19pm', '30-04-2023', NULL, NULL),
(253, '127.0.0.1', '03:51:21pm', '30-04-2023', NULL, NULL),
(254, '127.0.0.1', '03:51:22pm', '30-04-2023', NULL, NULL),
(255, '127.0.0.1', '04:13:39pm', '30-04-2023', NULL, NULL),
(256, '127.0.0.1', '04:13:42pm', '30-04-2023', NULL, NULL),
(257, '127.0.0.1', '04:19:16pm', '30-04-2023', NULL, NULL),
(258, '127.0.0.1', '04:19:19pm', '30-04-2023', NULL, NULL),
(259, '127.0.0.1', '04:19:38pm', '30-04-2023', NULL, NULL),
(260, '127.0.0.1', '04:19:41pm', '30-04-2023', NULL, NULL),
(261, '127.0.0.1', '04:19:54pm', '30-04-2023', NULL, NULL),
(262, '127.0.0.1', '04:19:57pm', '30-04-2023', NULL, NULL),
(263, '127.0.0.1', '04:20:00pm', '30-04-2023', NULL, NULL),
(264, '127.0.0.1', '04:20:02pm', '30-04-2023', NULL, NULL),
(265, '127.0.0.1', '02:31:00am', '01-05-2023', NULL, NULL),
(266, '127.0.0.1', '02:31:03am', '01-05-2023', NULL, NULL),
(267, '127.0.0.1', '02:31:17am', '01-05-2023', NULL, NULL),
(268, '127.0.0.1', '02:31:21am', '01-05-2023', NULL, NULL),
(269, '127.0.0.1', '02:31:23am', '01-05-2023', NULL, NULL),
(270, '127.0.0.1', '02:31:25am', '01-05-2023', NULL, NULL),
(271, '127.0.0.1', '02:44:38am', '01-05-2023', NULL, NULL),
(272, '127.0.0.1', '02:44:40am', '01-05-2023', NULL, NULL),
(273, '127.0.0.1', '02:44:53am', '01-05-2023', NULL, NULL),
(274, '127.0.0.1', '02:44:57am', '01-05-2023', NULL, NULL),
(275, '127.0.0.1', '02:44:59am', '01-05-2023', NULL, NULL),
(276, '127.0.0.1', '02:45:01am', '01-05-2023', NULL, NULL),
(277, '127.0.0.1', '03:14:56am', '01-05-2023', NULL, NULL),
(278, '127.0.0.1', '03:14:59am', '01-05-2023', NULL, NULL),
(279, '127.0.0.1', '03:16:55am', '01-05-2023', NULL, NULL),
(280, '127.0.0.1', '03:16:58am', '01-05-2023', NULL, NULL),
(281, '127.0.0.1', '03:18:02am', '01-05-2023', NULL, NULL),
(282, '127.0.0.1', '03:18:05am', '01-05-2023', NULL, NULL),
(283, '127.0.0.1', '11:11:36am', '01-05-2023', NULL, NULL),
(284, '127.0.0.1', '11:11:41am', '01-05-2023', NULL, NULL),
(285, '127.0.0.1', '11:11:55am', '01-05-2023', NULL, NULL),
(286, '127.0.0.1', '11:11:59am', '01-05-2023', NULL, NULL),
(287, '127.0.0.1', '11:12:02am', '01-05-2023', NULL, NULL),
(288, '127.0.0.1', '11:12:04am', '01-05-2023', NULL, NULL),
(289, '127.0.0.1', '08:55:27am', '03-05-2023', NULL, NULL),
(290, '127.0.0.1', '08:55:50am', '03-05-2023', NULL, NULL),
(291, '127.0.0.1', '08:55:54am', '03-05-2023', NULL, NULL),
(292, '127.0.0.1', '08:56:09am', '03-05-2023', NULL, NULL),
(293, '127.0.0.1', '08:56:14am', '03-05-2023', NULL, NULL),
(294, '127.0.0.1', '08:56:17am', '03-05-2023', NULL, NULL),
(295, '127.0.0.1', '08:56:20am', '03-05-2023', NULL, NULL),
(296, '127.0.0.1', '09:17:29am', '03-05-2023', NULL, NULL),
(297, '127.0.0.1', '09:17:32am', '03-05-2023', NULL, NULL),
(298, '127.0.0.1', '09:17:46am', '03-05-2023', NULL, NULL),
(299, '127.0.0.1', '09:17:50am', '03-05-2023', NULL, NULL),
(300, '127.0.0.1', '09:17:53am', '03-05-2023', NULL, NULL),
(301, '127.0.0.1', '09:17:56am', '03-05-2023', NULL, NULL),
(302, '127.0.0.1', '09:44:42am', '03-05-2023', NULL, NULL),
(303, '127.0.0.1', '09:44:46am', '03-05-2023', NULL, NULL),
(304, '127.0.0.1', '10:18:05am', '04-05-2023', NULL, NULL),
(305, '127.0.0.1', '10:18:10am', '04-05-2023', NULL, NULL),
(306, '127.0.0.1', '10:38:03am', '04-05-2023', NULL, NULL),
(307, '127.0.0.1', '10:38:05am', '04-05-2023', NULL, NULL),
(308, '127.0.0.1', '08:24:00am', '06-05-2023', NULL, NULL),
(309, '127.0.0.1', '08:24:04am', '06-05-2023', NULL, NULL),
(310, '127.0.0.1', '08:24:16am', '06-05-2023', NULL, NULL),
(311, '127.0.0.1', '08:24:19am', '06-05-2023', NULL, NULL),
(312, '127.0.0.1', '08:24:22am', '06-05-2023', NULL, NULL),
(313, '127.0.0.1', '08:24:24am', '06-05-2023', NULL, NULL),
(314, '127.0.0.1', '08:34:53am', '06-05-2023', NULL, NULL),
(315, '127.0.0.1', '08:34:55am', '06-05-2023', NULL, NULL),
(316, '127.0.0.1', '08:35:06am', '06-05-2023', NULL, NULL),
(317, '127.0.0.1', '08:35:08am', '06-05-2023', NULL, NULL),
(318, '127.0.0.1', '08:35:10am', '06-05-2023', NULL, NULL),
(319, '127.0.0.1', '08:35:13am', '06-05-2023', NULL, NULL),
(320, '127.0.0.1', '08:36:08am', '06-05-2023', NULL, NULL),
(321, '127.0.0.1', '08:36:11am', '06-05-2023', NULL, NULL),
(322, '127.0.0.1', '08:36:23am', '06-05-2023', NULL, NULL),
(323, '127.0.0.1', '08:36:25am', '06-05-2023', NULL, NULL),
(324, '127.0.0.1', '08:36:27am', '06-05-2023', NULL, NULL),
(325, '127.0.0.1', '08:36:29am', '06-05-2023', NULL, NULL),
(326, '127.0.0.1', '08:39:00am', '06-05-2023', NULL, NULL),
(327, '127.0.0.1', '08:39:03am', '06-05-2023', NULL, NULL),
(328, '127.0.0.1', '08:58:00am', '06-05-2023', NULL, NULL),
(329, '127.0.0.1', '08:58:02am', '06-05-2023', NULL, NULL),
(330, '127.0.0.1', '02:58:12pm', '06-05-2023', NULL, NULL),
(331, '127.0.0.1', '02:58:16pm', '06-05-2023', NULL, NULL),
(332, '127.0.0.1', '02:58:30pm', '06-05-2023', NULL, NULL),
(333, '127.0.0.1', '02:58:35pm', '06-05-2023', NULL, NULL),
(334, '127.0.0.1', '02:58:38pm', '06-05-2023', NULL, NULL),
(335, '127.0.0.1', '02:58:41pm', '06-05-2023', NULL, NULL),
(336, '127.0.0.1', '03:22:25pm', '06-05-2023', NULL, NULL),
(337, '127.0.0.1', '03:22:28pm', '06-05-2023', NULL, NULL),
(338, '127.0.0.1', '03:22:42pm', '06-05-2023', NULL, NULL),
(339, '127.0.0.1', '03:22:46pm', '06-05-2023', NULL, NULL),
(340, '127.0.0.1', '03:22:49pm', '06-05-2023', NULL, NULL),
(341, '127.0.0.1', '03:22:51pm', '06-05-2023', NULL, NULL),
(342, '127.0.0.1', '08:18:36pm', '06-05-2023', NULL, NULL),
(343, '127.0.0.1', '08:18:40pm', '06-05-2023', NULL, NULL),
(344, '127.0.0.1', '08:18:51pm', '06-05-2023', NULL, NULL),
(345, '127.0.0.1', '08:18:55pm', '06-05-2023', NULL, NULL),
(346, '127.0.0.1', '08:18:57pm', '06-05-2023', NULL, NULL),
(347, '127.0.0.1', '08:18:59pm', '06-05-2023', NULL, NULL),
(348, '127.0.0.1', '08:20:29pm', '06-05-2023', NULL, NULL),
(349, '127.0.0.1', '08:20:32pm', '06-05-2023', NULL, NULL),
(350, '127.0.0.1', '12:35:29am', '07-05-2023', NULL, NULL),
(351, '127.0.0.1', '12:35:32am', '07-05-2023', NULL, NULL),
(352, '127.0.0.1', '12:36:11am', '07-05-2023', NULL, NULL),
(353, '127.0.0.1', '12:36:14am', '07-05-2023', NULL, NULL),
(354, '127.0.0.1', '12:36:55am', '07-05-2023', NULL, NULL),
(355, '127.0.0.1', '12:36:58am', '07-05-2023', NULL, NULL),
(356, '127.0.0.1', '12:37:40am', '07-05-2023', NULL, NULL),
(357, '127.0.0.1', '12:37:43am', '07-05-2023', NULL, NULL),
(358, '127.0.0.1', '12:45:21am', '07-05-2023', NULL, NULL),
(359, '127.0.0.1', '12:45:24am', '07-05-2023', NULL, NULL),
(360, '127.0.0.1', '02:35:50am', '07-05-2023', NULL, NULL),
(361, '127.0.0.1', '02:35:54am', '07-05-2023', NULL, NULL),
(362, '127.0.0.1', '02:37:40am', '07-05-2023', NULL, NULL),
(363, '127.0.0.1', '02:37:51am', '07-05-2023', NULL, NULL),
(364, '127.0.0.1', '02:37:55am', '07-05-2023', NULL, NULL),
(365, '127.0.0.1', '02:38:12am', '07-05-2023', NULL, NULL),
(366, '127.0.0.1', '02:38:16am', '07-05-2023', NULL, NULL),
(367, '127.0.0.1', '02:38:19am', '07-05-2023', NULL, NULL),
(368, '127.0.0.1', '03:09:15am', '07-05-2023', NULL, NULL),
(369, '127.0.0.1', '03:09:18am', '07-05-2023', NULL, NULL),
(370, '127.0.0.1', '03:09:33am', '07-05-2023', NULL, NULL),
(371, '127.0.0.1', '03:09:37am', '07-05-2023', NULL, NULL),
(372, '127.0.0.1', '03:09:40am', '07-05-2023', NULL, NULL),
(373, '127.0.0.1', '03:09:42am', '07-05-2023', NULL, NULL),
(374, '127.0.0.1', '03:18:44am', '07-05-2023', NULL, NULL),
(375, '127.0.0.1', '03:18:47am', '07-05-2023', NULL, NULL),
(376, '127.0.0.1', '03:19:02am', '07-05-2023', NULL, NULL),
(377, '127.0.0.1', '03:19:06am', '07-05-2023', NULL, NULL),
(378, '127.0.0.1', '03:19:09am', '07-05-2023', NULL, NULL),
(379, '127.0.0.1', '03:19:12am', '07-05-2023', NULL, NULL),
(380, '127.0.0.1', '03:23:16am', '07-05-2023', NULL, NULL),
(381, '127.0.0.1', '03:23:20am', '07-05-2023', NULL, NULL),
(382, '127.0.0.1', '03:23:35am', '07-05-2023', NULL, NULL),
(383, '127.0.0.1', '03:23:39am', '07-05-2023', NULL, NULL),
(384, '127.0.0.1', '03:23:41am', '07-05-2023', NULL, NULL),
(385, '127.0.0.1', '03:23:44am', '07-05-2023', NULL, NULL),
(386, '127.0.0.1', '04:44:49pm', '07-05-2023', NULL, NULL),
(387, '127.0.0.1', '04:44:52pm', '07-05-2023', NULL, NULL),
(388, '127.0.0.1', '04:45:11pm', '07-05-2023', NULL, NULL),
(389, '127.0.0.1', '04:45:15pm', '07-05-2023', NULL, NULL),
(390, '127.0.0.1', '04:45:18pm', '07-05-2023', NULL, NULL),
(391, '127.0.0.1', '04:45:21pm', '07-05-2023', NULL, NULL),
(392, '127.0.0.1', '05:01:29pm', '07-05-2023', NULL, NULL),
(393, '127.0.0.1', '02:22:55am', '08-05-2023', NULL, NULL),
(394, '127.0.0.1', '02:22:58am', '08-05-2023', NULL, NULL),
(395, '127.0.0.1', '02:23:13am', '08-05-2023', NULL, NULL),
(396, '127.0.0.1', '02:23:17am', '08-05-2023', NULL, NULL),
(397, '127.0.0.1', '02:23:20am', '08-05-2023', NULL, NULL),
(398, '127.0.0.1', '02:23:22am', '08-05-2023', NULL, NULL),
(399, '127.0.0.1', '02:25:11am', '08-05-2023', NULL, NULL),
(400, '127.0.0.1', '02:25:14am', '08-05-2023', NULL, NULL),
(401, '127.0.0.1', '08:50:01am', '09-05-2023', NULL, NULL),
(402, '127.0.0.1', '08:50:06am', '09-05-2023', NULL, NULL),
(403, '127.0.0.1', '08:50:19am', '09-05-2023', NULL, NULL),
(404, '127.0.0.1', '08:50:23am', '09-05-2023', NULL, NULL),
(405, '127.0.0.1', '08:50:25am', '09-05-2023', NULL, NULL),
(406, '127.0.0.1', '08:50:27am', '09-05-2023', NULL, NULL),
(407, '127.0.0.1', '09:21:21am', '09-05-2023', NULL, NULL),
(408, '127.0.0.1', '09:16:47am', '11-05-2023', NULL, NULL),
(409, '127.0.0.1', '09:16:53am', '11-05-2023', NULL, NULL),
(410, '127.0.0.1', '09:17:10am', '11-05-2023', NULL, NULL),
(411, '127.0.0.1', '09:17:14am', '11-05-2023', NULL, NULL),
(412, '127.0.0.1', '09:17:17am', '11-05-2023', NULL, NULL),
(413, '127.0.0.1', '09:17:21am', '11-05-2023', NULL, NULL),
(414, '127.0.0.1', '09:17:43am', '11-05-2023', NULL, NULL),
(415, '127.0.0.1', '10:13:42am', '11-05-2023', NULL, NULL),
(416, '127.0.0.1', '10:13:45am', '11-05-2023', NULL, NULL),
(417, '127.0.0.1', '10:13:58am', '11-05-2023', NULL, NULL),
(418, '127.0.0.1', '10:14:01am', '11-05-2023', NULL, NULL),
(419, '127.0.0.1', '10:14:03am', '11-05-2023', NULL, NULL),
(420, '127.0.0.1', '10:14:06am', '11-05-2023', NULL, NULL),
(421, '127.0.0.1', '07:50:05am', '13-05-2023', NULL, NULL),
(422, '127.0.0.1', '07:50:09am', '13-05-2023', NULL, NULL),
(423, '127.0.0.1', '07:50:26am', '13-05-2023', NULL, NULL),
(424, '127.0.0.1', '07:50:30am', '13-05-2023', NULL, NULL),
(425, '127.0.0.1', '07:50:33am', '13-05-2023', NULL, NULL),
(426, '127.0.0.1', '07:50:36am', '13-05-2023', NULL, NULL),
(427, '127.0.0.1', '08:29:17am', '13-05-2023', NULL, NULL),
(428, '127.0.0.1', '08:29:21am', '13-05-2023', NULL, NULL),
(429, '127.0.0.1', '08:29:33am', '13-05-2023', NULL, NULL),
(430, '127.0.0.1', '08:29:36am', '13-05-2023', NULL, NULL),
(431, '127.0.0.1', '08:29:38am', '13-05-2023', NULL, NULL),
(432, '127.0.0.1', '08:29:40am', '13-05-2023', NULL, NULL),
(433, '127.0.0.1', '08:31:02am', '13-05-2023', NULL, NULL),
(434, '127.0.0.1', '08:31:05am', '13-05-2023', NULL, NULL),
(435, '127.0.0.1', '09:19:35am', '13-05-2023', NULL, NULL),
(436, '127.0.0.1', '09:19:37am', '13-05-2023', NULL, NULL),
(437, '127.0.0.1', '07:39:38pm', '13-05-2023', NULL, NULL),
(438, '127.0.0.1', '07:39:42pm', '13-05-2023', NULL, NULL),
(439, '127.0.0.1', '07:49:39pm', '13-05-2023', NULL, NULL),
(440, '127.0.0.1', '07:49:41pm', '13-05-2023', NULL, NULL),
(441, '127.0.0.1', '07:49:54pm', '13-05-2023', NULL, NULL),
(442, '127.0.0.1', '07:49:56pm', '13-05-2023', NULL, NULL),
(443, '127.0.0.1', '07:49:59pm', '13-05-2023', NULL, NULL),
(444, '127.0.0.1', '07:54:16pm', '13-05-2023', NULL, NULL),
(445, '127.0.0.1', '07:54:18pm', '13-05-2023', NULL, NULL),
(446, '127.0.0.1', '07:54:29pm', '13-05-2023', NULL, NULL),
(447, '127.0.0.1', '07:54:32pm', '13-05-2023', NULL, NULL),
(448, '127.0.0.1', '07:54:34pm', '13-05-2023', NULL, NULL),
(449, '127.0.0.1', '07:54:37pm', '13-05-2023', NULL, NULL),
(450, '127.0.0.1', '08:30:32pm', '13-05-2023', NULL, NULL),
(451, '127.0.0.1', '12:45:17am', '14-05-2023', NULL, NULL),
(452, '127.0.0.1', '12:45:20am', '14-05-2023', NULL, NULL),
(453, '127.0.0.1', '08:16:03pm', '19-05-2023', NULL, NULL),
(454, '127.0.0.1', '08:16:07pm', '19-05-2023', NULL, NULL),
(455, '127.0.0.1', '10:15:06am', '21-05-2023', NULL, NULL),
(456, '127.0.0.1', '10:15:10am', '21-05-2023', NULL, NULL),
(457, '127.0.0.1', '03:38:46pm', '21-05-2023', NULL, NULL),
(458, '127.0.0.1', '03:38:50pm', '21-05-2023', NULL, NULL),
(459, '127.0.0.1', '08:41:42pm', '03-06-2023', NULL, NULL),
(460, '127.0.0.1', '08:41:47pm', '03-06-2023', NULL, NULL),
(461, '127.0.0.1', '11:50:04am', '07-06-2023', NULL, NULL),
(462, '127.0.0.1', '11:50:08am', '07-06-2023', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_cards`
--
ALTER TABLE `product_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_cards`
--
ALTER TABLE `product_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
