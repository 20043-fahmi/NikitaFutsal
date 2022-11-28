-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 09:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neofutsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ball_types`
--

CREATE TABLE `ball_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `is_available` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ball_types`
--

INSERT INTO `ball_types` (`id`, `name`, `amount`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'Kecil', '10', '1', NULL, NULL),
(2, 'Besar', '6', '1', NULL, NULL),
(3, 'Sport', '3', '1', NULL, NULL),
(4, 'Sedang', '10', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'app.name', 'Neofutsal', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(2, 'app.description', 'Neofutsal adalah situs penyedia booking lapangan futsal.', '2022-11-16 20:50:10', '2022-11-16 20:50:10');

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
-- Table structure for table `field_types`
--

CREATE TABLE `field_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `field_types`
--

INSERT INTO `field_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Vinyl', NULL, NULL, NULL),
(2, 'Rumput Sintetis', NULL, NULL, NULL),
(3, 'Semen', NULL, NULL, NULL),
(4, 'Parquette', NULL, NULL, NULL),
(5, 'Taraflex', NULL, NULL, NULL),
(6, 'Plastic Carpet', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `futsal_fields`
--

CREATE TABLE `futsal_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double DEFAULT 0,
  `width` double(8,2) DEFAULT 25.00,
  `height` double(8,2) DEFAULT 16.00,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `futsal_fields`
--

INSERT INTO `futsal_fields` (`id`, `name`, `field_type_id`, `price`, `width`, `height`, `img`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'Neofutsal Lite', 1, 50000, 25.00, 16.00, 'images/field/default.png', '1', NULL, NULL),
(2, 'Neofutsal +', 2, 64000, 25.00, 16.00, 'images/field/default-2.png', '1', NULL, NULL),
(3, 'Neofutsal Sport', 2, 64000, 25.00, 16.00, 'images/field/default.png', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `futsal_field_has_ball_types`
--

CREATE TABLE `futsal_field_has_ball_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `futsal_field_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ball_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `futsal_images`
--

CREATE TABLE `futsal_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `futsal_field_id` bigint(20) UNSIGNED DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `futsal_images`
--

INSERT INTO `futsal_images` (`id`, `futsal_field_id`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/field/default.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(2, 1, 'images/field/default-2.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(3, 1, 'images/field/default.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(4, 2, 'images/field/default.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(5, 2, 'images/field/default-2.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(6, 2, 'images/field/default.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(7, 3, 'images/field/default.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(8, 3, 'images/field/default-2.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(9, 3, 'images/field/default.png', '2022-11-16 20:38:30', '2022-11-16 20:38:30'),
(10, 1, 'images/field/default.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(11, 1, 'images/field/default-2.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(12, 1, 'images/field/default.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(13, 2, 'images/field/default.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(14, 2, 'images/field/default-2.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(15, 2, 'images/field/default.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(16, 3, 'images/field/default.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(17, 3, 'images/field/default-2.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(18, 3, 'images/field/default.png', '2022-11-16 20:50:10', '2022-11-16 20:50:10');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_01_053815_create_configurations_table', 1),
(5, '2021_08_01_054440_create_transaction_types_table', 1),
(6, '2021_08_01_054912_create_status_transactions_table', 1),
(7, '2021_08_01_055955_create_payment_types_table', 1),
(8, '2021_08_01_061543_create_ball_types_table', 1),
(9, '2021_08_01_063741_create_field_types_table', 1),
(10, '2021_08_01_064156_create_futsal_fields_table', 1),
(11, '2021_08_01_064157_create_futsal_images_table', 1),
(12, '2021_08_01_070003_create_banners_table', 1),
(13, '2021_08_01_070143_create_futsal_field_has_ball_types_table', 1),
(14, '2021_08_01_122509_create_orders_table', 1),
(15, '2021_08_01_123054_create_transactions_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `futsal_field_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_transaction_id` bigint(20) UNSIGNED DEFAULT 1,
  `hours` int(11) DEFAULT 1,
  `price` double DEFAULT 0,
  `play_date` date DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `futsal_field_id`, `status_transaction_id`, `hours`, `price`, `play_date`, `start_at`, `end_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 6, 1, 50000, '2022-11-17', '2022-11-17 12:00:00', '2022-11-17 13:00:00', '2022-11-16 21:25:29', '2022-11-16 21:27:19'),
(2, 2, 1, 3, 1, 50000, '2022-11-19', '2022-11-19 10:00:00', '2022-11-19 11:00:00', '2022-11-18 19:20:04', '2022-11-18 19:20:32'),
(3, 2, 2, 2, 2, 128000, '2022-11-23', '2022-11-23 08:00:00', '2022-11-23 10:00:00', '2022-11-23 08:57:26', '2022-11-23 08:59:57'),
(4, 2, 2, 1, 2, 128000, '2022-11-23', '2022-11-23 09:00:00', '2022-11-23 11:00:00', '2022-11-23 08:58:27', '2022-11-23 08:58:27');

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
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `bank_name`, `bank_code`, `holder_name`, `bank_account`, `instruction`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'BRI Bank Rakyat Indonesia', '002', 'IRWAN ANTONIO', '683701023081539', '\r\n            <b>Tata Cara Transfer Melalui BRImo (BRI Mobile Banking)</b>\r\n            <ul>\r\n                <li>Buka aplikasi, kemudian pilih menu Mobile Banking BRI.</li>\r\n                <li>Untuk mengirim uang, tap menu Transfer.</li>\r\n                <li>Untuk transfer ke sesama rekening BRI, tap menu Sesama BRI.</li>\r\n                <li>Pada halaman baru, masukkan nomor rekening BRI yang dituju.</li>\r\n                <li>Masukkan jumlah transfer yang akan dikirim.</li>\r\n            </ul>\r\n            ', '1', NULL, NULL),
(2, 'Bank Mandiri', '008', 'IRWAN ANTONIO', '1290012290850', '\r\n            <b>Tata Cara Transfer Melalui Livin by Mandiri</b>\r\n            <ul>\r\n                <li>Login Livin dengan Username dan Password Anda.</li>\r\n                <li>Tap di menu Transfer.</li>\r\n                <li>Pilih jenis transfer Ke Rekening Mandiri</li>\r\n                <li>Tentukan Rekening Sumber yang akan anda pakai.</li>\r\n                <li>Isi Nomor Rekening Tujuan transfer dan Jumlah transfer. Anda juga bisa menjadwalkan transfer pada pilihan Kapan?.</li>\r\n                <li>Pastikan informasi bayar sesuai lalu tekan Kirim dan masukkan MPIN.</li>\r\n            </ul>\r\n            ', '1', NULL, NULL);

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
-- Table structure for table `status_transactions`
--

CREATE TABLE `status_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_admin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_transactions`
--

INSERT INTO `status_transactions` (`id`, `name_user`, `name_admin`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Not Yet Paid', 'Not Yet Paid', 'bg-red-500', NULL, NULL),
(2, 'Invalid proof of payment', 'Invalid proof of payment', 'bg-red-500', NULL, NULL),
(3, 'Waiting for DP payment validation', 'Waiting for DP payment validation', 'bg-blue-500', NULL, NULL),
(4, 'Waiting for payment validation', 'Waiting for payment validation', 'bg-blue-500', NULL, NULL),
(5, 'Successfully paid DP', 'Already paid DP', 'bg-green-500', NULL, NULL),
(6, 'Paid off', 'Paid off', 'bg-green-500', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `proof_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` double(8,2) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `is_valid` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `expired_payment` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `transaction_type_id`, `payment_type_id`, `proof_file`, `code`, `amount`, `is_valid`, `expired_payment`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'storage/payment/full/1-pd4SZ73cX2rAE826BRf1fADhu6pW2G.jpg', 582.00, 25000, '1', '2022-11-16 23:25:29', '2022-11-16 21:25:29', '2022-11-16 21:27:19'),
(2, 2, 1, 1, 'storage/payment/down-payment/2-d4slW5ggE5zOK02lmmIk55H1kCaORi.jpg', 668.00, 25000, '0', '2022-11-18 21:20:04', '2022-11-18 19:20:04', '2022-11-18 19:20:32'),
(3, 3, 1, 2, NULL, 598.00, 128000, '1', '2022-11-23 10:57:26', '2022-11-23 08:57:26', '2022-11-23 08:59:57'),
(4, 4, 1, 2, NULL, 875.00, 128000, '0', '2022-11-23 10:58:27', '2022-11-23 08:58:27', '2022-11-23 08:58:27'),
(5, 3, 2, NULL, NULL, 925.00, 128000, '0', '2022-11-23 05:00:00', '2022-11-23 08:59:57', '2022-11-23 08:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Down Payment', NULL, NULL),
(2, 'Paid Off', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@neofutsal.id', '2022-11-16 20:50:10', NULL, '$2y$10$4OeHEIfJIimgNLf5D/0SGeYU1VLX2jnlK3v917HKFcghawksxqfIG', NULL, '1', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(2, 'User', 'user@neofutsal.id', '2022-11-16 20:50:10', NULL, '$2y$10$SX0a50HL0IxLngA7DK2KeucY42kTTvJbbPifYtlxDuynBY7nmSqka', NULL, '0', '2022-11-16 20:50:10', '2022-11-16 20:50:10'),
(3, 'Fahmi', 'fahmi@neofutsal.id', '2022-11-16 20:50:10', NULL, '$2y$10$S.zyMwyaXjGr1dvvYLnagupS342Dy4WhgoQCZwzqRRliUEUYJX3YG', NULL, '1', '2022-11-16 20:50:10', '2022-11-16 20:50:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ball_types`
--
ALTER TABLE `ball_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `field_types`
--
ALTER TABLE `field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `futsal_fields`
--
ALTER TABLE `futsal_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `futsal_fields_field_type_id_foreign` (`field_type_id`);

--
-- Indexes for table `futsal_field_has_ball_types`
--
ALTER TABLE `futsal_field_has_ball_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `futsal_field_has_ball_types_futsal_field_id_foreign` (`futsal_field_id`),
  ADD KEY `futsal_field_has_ball_types_ball_type_id_foreign` (`ball_type_id`);

--
-- Indexes for table `futsal_images`
--
ALTER TABLE `futsal_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `futsal_images_futsal_field_id_foreign` (`futsal_field_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_futsal_field_id_foreign` (`futsal_field_id`),
  ADD KEY `orders_status_transaction_id_foreign` (`status_transaction_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `status_transactions`
--
ALTER TABLE `status_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`),
  ADD KEY `transactions_transaction_type_id_foreign` (`transaction_type_id`),
  ADD KEY `transactions_payment_type_id_foreign` (`payment_type_id`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
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
-- AUTO_INCREMENT for table `ball_types`
--
ALTER TABLE `ball_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_types`
--
ALTER TABLE `field_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `futsal_fields`
--
ALTER TABLE `futsal_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `futsal_field_has_ball_types`
--
ALTER TABLE `futsal_field_has_ball_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `futsal_images`
--
ALTER TABLE `futsal_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_transactions`
--
ALTER TABLE `status_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `futsal_fields`
--
ALTER TABLE `futsal_fields`
  ADD CONSTRAINT `futsal_fields_field_type_id_foreign` FOREIGN KEY (`field_type_id`) REFERENCES `field_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `futsal_field_has_ball_types`
--
ALTER TABLE `futsal_field_has_ball_types`
  ADD CONSTRAINT `futsal_field_has_ball_types_ball_type_id_foreign` FOREIGN KEY (`ball_type_id`) REFERENCES `ball_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `futsal_field_has_ball_types_futsal_field_id_foreign` FOREIGN KEY (`futsal_field_id`) REFERENCES `futsal_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `futsal_images`
--
ALTER TABLE `futsal_images`
  ADD CONSTRAINT `futsal_images_futsal_field_id_foreign` FOREIGN KEY (`futsal_field_id`) REFERENCES `futsal_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_futsal_field_id_foreign` FOREIGN KEY (`futsal_field_id`) REFERENCES `futsal_fields` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_status_transaction_id_foreign` FOREIGN KEY (`status_transaction_id`) REFERENCES `status_transactions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
