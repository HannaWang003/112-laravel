-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-03-14 05:14:24
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `laravel_migration`
--

-- --------------------------------------------------------

--
-- 資料表結構 `chanels`
--

CREATE TABLE `chanels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) NOT NULL,
  `num` varchar(255) DEFAULT NULL,
  `sh` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `chanels`
--

INSERT INTO `chanels` (`id`, `product`, `num`, `sh`, `created_at`, `updated_at`, `votes`) VALUES
(1, 'handbag', '5', '1', '2024-03-07 05:23:55', '2024-03-07 05:23:55', 10),
(3, 'shoes', '20', '1', '2024-03-07 05:23:55', '2024-03-07 05:23:55', 5),
(4, 'ready to wear', '10', '1', '2024-03-07 05:23:55', '2024-03-07 05:23:55', 1),
(5, 'watch', '1', '1', '2024-03-07 05:23:55', '2024-03-07 05:23:55', 3),
(6, 'ring', '5', '1', NULL, NULL, 0),
(7, 'backbag', '20', '1', NULL, NULL, 0),
(8, 'underwear', '2', '1', NULL, NULL, 0),
(9, 'shock', '100', '1', NULL, NULL, 0),
(10, 'test1', '1', '1', '2024-03-07 06:43:16', '2024-03-07 06:43:16', 1),
(11, 'test2', '2', '2', '2024-03-07 06:55:50', '2024-03-07 06:55:50', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) NOT NULL,
  `dior_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `colors`
--

INSERT INTO `colors` (`id`, `color`, `dior_id`, `created_at`, `updated_at`) VALUES
(1, 'red', '11', NULL, NULL),
(2, 'green', '12', NULL, NULL),
(3, 'white', '12', NULL, NULL),
(4, 'green', '11', NULL, NULL),
(10, 'whit', '15', '2024-03-14 03:14:03', '2024-03-14 03:14:03'),
(11, 'pink', '15', '2024-03-14 03:14:03', '2024-03-14 03:14:03'),
(12, 'brown', '15', '2024-03-14 03:14:03', '2024-03-14 03:14:03');

-- --------------------------------------------------------

--
-- 資料表結構 `diors`
--

CREATE TABLE `diors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `diors`
--

INSERT INTO `diors` (`id`, `product`, `created_at`, `updated_at`) VALUES
(11, 'watch', '2024-03-13 07:39:07', '2024-03-13 07:39:07'),
(12, 'shose', '2024-03-13 07:46:45', '2024-03-13 07:46:45'),
(15, 'handbag', '2024-03-14 02:51:29', '2024-03-14 02:51:29');

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `lvs`
--

CREATE TABLE `lvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) NOT NULL,
  `num` varchar(255) DEFAULT NULL,
  `sh` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `votes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `lvs`
--

INSERT INTO `lvs` (`id`, `product`, `num`, `sh`, `created_at`, `updated_at`, `votes`) VALUES
(1, 'handbag', '5', '1', '2024-03-07 05:23:55', '2024-03-07 05:23:55', '2'),
(2, 'shoes', '20', '1', '2024-03-07 05:23:55', '2024-03-07 05:23:55', '5'),
(3, 'ready to wear', '10', '1', '2024-03-07 05:23:55', '2024-03-07 05:23:55', '1'),
(4, 'watch', '1', '1', '2024-03-07 05:23:55', '2024-03-07 05:23:55', '3');

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_03_07_025814_create_chanels_table', 2),
(14, '2024_03_07_031830_alter_chanels_table', 3),
(15, '2024_03_07_032255_alter_chanels_table', 4),
(17, '2024_03_07_034810_create_lvs_table', 5),
(19, '2024_03_07_035043_alter_lvs_table', 6),
(22, '2024_03_07_154737_create_diors_table', 7),
(23, '2024_03_07_155116_create_products_table', 7),
(25, '2024_03_13_155707_create_colors_table', 8);

-- --------------------------------------------------------

--
-- 資料表結構 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dior_id` int(11) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `dior_id`, `price`, `created_at`, `updated_at`) VALUES
(16, 11, '3000', '2024-03-13 07:47:36', '2024-03-13 07:47:36'),
(27, 12, '300', '2024-03-14 03:03:25', '2024-03-14 03:03:25'),
(32, 15, '500', '2024-03-14 03:14:03', '2024-03-14 03:14:03');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `chanels`
--
ALTER TABLE `chanels`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `diors`
--
ALTER TABLE `diors`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 資料表索引 `lvs`
--
ALTER TABLE `lvs`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- 資料表索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `chanels`
--
ALTER TABLE `chanels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `diors`
--
ALTER TABLE `diors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `lvs`
--
ALTER TABLE `lvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
