-- phpMyAdmin SQL Dump
-- version 4.9.5deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2020 at 03:25 PM
-- Server version: 8.0.20-0ubuntu0.19.10.1
-- PHP Version: 7.3.20-1+ubuntu19.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finchatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `savings_acount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `savings_bank_balance` double NOT NULL DEFAULT '0',
  `cheque_acount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_account_bank_balance` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `savings_acount`, `savings_bank_balance`, `cheque_acount`, `cheque_account_bank_balance`, `created_at`, `updated_at`) VALUES
(30, 'UnoMax', 30000, 'UnoMin', 35000, '2020-08-16 17:21:59', '2020-08-16 17:21:59'),
(31, 'DuoMax', 40000, 'DuoMin', 45000, '2020-08-16 17:23:11', '2020-08-16 17:23:11'),
(32, 'TripleMax', 50000, 'TripleMin', 55000, '2020-08-16 17:23:11', '2020-08-16 17:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interactions`
--

CREATE TABLE `interactions` (
  `id` int UNSIGNED NOT NULL,
  `first` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `second` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `third` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interactions`
--

INSERT INTO `interactions` (`id`, `first`, `second`, `third`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '2020-08-16 22:10:11', '2020-08-16 22:10:11'),
(2, '', '', '', '2020-08-16 22:11:14', '2020-08-16 22:11:14'),
(3, 'unset', 'unset', 'unset', '2020-08-16 22:14:51', '2020-08-16 22:14:51'),
(4, 'unset', 'unset', 'unset', '2020-08-16 22:16:43', '2020-08-16 22:16:43'),
(5, 'unset', 'unset', 'unset', '2020-08-16 22:17:26', '2020-08-16 22:17:26'),
(6, 'unset', 'unset', 'unset', '2020-08-16 22:23:02', '2020-08-16 22:23:02'),
(7, 'unset', 'unset', 'unset', '2020-08-16 22:35:22', '2020-08-16 22:35:22'),
(8, 'unset', 'unset', 'unset', '2020-08-16 22:38:32', '2020-08-16 22:38:32'),
(9, 'unset', 'unset', 'unset', '2020-08-16 23:04:35', '2020-08-16 23:04:35'),
(10, 'unset', 'unset', 'unset', '2020-08-16 23:07:25', '2020-08-16 23:07:25'),
(11, 'unset', 'unset', 'unset', '2020-08-16 23:14:26', '2020-08-16 23:14:26'),
(12, 'unset', 'unset', 'unset', '2020-08-16 23:16:32', '2020-08-16 23:16:32'),
(13, 'unset', 'unset', 'unset', '2020-08-17 05:37:00', '2020-08-17 05:37:00'),
(14, 'unset', 'unset', 'unset', '2020-08-17 05:38:39', '2020-08-17 05:38:39'),
(15, 'unset', 'unset', 'unset', '2020-08-17 06:26:03', '2020-08-17 06:26:03'),
(16, 'unset', 'unset', 'unset', '2020-08-17 07:19:14', '2020-08-17 07:19:14'),
(17, 'unset', 'unset', 'unset', '2020-08-17 07:19:56', '2020-08-17 07:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_16_094919_create_accounts_table', 1),
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_08_16_094919_create_accounts_table', 1),
(10, '2020_08_16_233458_create_interactions_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `account_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gabriel', 'leextremist@gmail.com', '2020-08-13 17:19:08', 'people', '30', NULL, NULL, NULL),
(2, 'Lince', 'lince@gmail.com', '2020-08-16 17:20:18', 'people', '31', NULL, NULL, NULL),
(3, 'Linda', 'linda.matabane@gmail.com', '2020-08-16 17:21:08', 'people', '32', NULL, '2020-08-16 17:21:08', '2020-08-16 17:21:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interactions`
--
ALTER TABLE `interactions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interactions`
--
ALTER TABLE `interactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
