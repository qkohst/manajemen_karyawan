-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 03:35 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `state_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Lamongan', '2020-01-13 09:06:39', '2020-01-18 02:03:51', NULL),
(2, 1, 'Gresik', '2020-01-18 02:02:28', '2020-01-18 02:02:28', NULL),
(3, 1, 'Sidoarjo', '2020-01-18 10:17:45', '2020-01-18 10:17:56', NULL),
(4, 1, 'a', '2020-01-28 03:18:19', '2020-01-28 03:18:19', NULL),
(5, 1, 'b', '2020-01-28 03:18:27', '2020-01-28 03:18:27', NULL),
(6, 1, 'c', '2020-01-28 03:18:34', '2020-01-28 03:18:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '+62', 'Indonesia', '2020-01-13 09:06:05', '2020-01-17 05:45:43', NULL),
(2, '+1', 'Amerika Serikat', '2020-01-17 05:41:04', '2020-01-17 05:41:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Produksi', '2020-01-13 09:05:17', '2020-01-17 04:31:20', NULL),
(2, 'Kearsipan', '2020-01-17 04:02:44', '2020-01-17 04:02:44', NULL),
(3, 'Kepegawaian', '2020-01-17 04:28:01', '2020-01-17 04:28:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Distribusi Barang', '2020-01-13 09:05:35', '2020-01-17 05:30:59', NULL),
(2, 'Produksi', '2020-01-17 05:28:06', '2020-01-17 05:28:06', NULL),
(3, 'Kehutanan', '2020-01-18 20:47:57', '2020-01-18 20:47:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `zip` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(10) UNSIGNED NOT NULL,
  `birthdate` date NOT NULL,
  `date_hired` date NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `lastname`, `firstname`, `middlename`, `address`, `city_id`, `state_id`, `country_id`, `zip`, `age`, `birthdate`, `date_hired`, `department_id`, `division_id`, `picture`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Santoso', 'Kukoh', 'mr', 'Tambakboyo', 1, 2, 1, 'Tambakboyo', 31, '2020-01-23', '2020-01-30', 1, 1, 'avatars/iZ6NJK6o0LpUNxmP9IXLI1guAk8US3CE1B3ONbVv.jpeg', '2020-01-17 02:49:23', '2020-02-07 07:09:22', NULL),
(3, 'Eko', 'Aries', 'Prasetyo', 'Palang', 1, 1, 1, 'Tambakboyo', 31, '2020-01-21', '2020-01-07', 1, 1, 'avatars/web9OqXbSvCNttNnFxnzjtkKxmZMPXhrwioqlVSw.jpeg', '2020-01-17 03:28:36', '2020-01-17 03:28:36', NULL),
(4, 'Santoso', 'Muhammad', 'Kukoh', 'Tambakboyo', 1, 1, 1, 'Tambakboyo', 31, '2020-01-06', '2020-01-13', 2, 2, 'avatars/35Mv49f6Rr3dQn6kIH7nGU77KDBXpp2c4Wa3rCr1.jpeg', '2020-01-18 08:39:14', '2020-01-18 08:39:14', NULL),
(5, 'Santoso', 'Aries', 'Kukoh', 'Tambakboyo', 2, 1, 1, 'Tambakboyo', 31, '2020-01-14', '2020-01-01', 2, 2, 'avatars/9dEu36zChcOfUqUBRhLf7bDCspyIyq0ABYz57t59.jpeg', '2020-01-18 08:41:06', '2020-01-18 08:41:06', NULL),
(6, 'Santoso', 'Aries Eko', 'Kukoh', 'Tambakboyo', 1, 1, 1, 'Tambakboyo', 31, '2020-01-08', '2020-01-07', 2, 2, 'avatars/ng64IMxMKT0wF92gERj22AVPUkt3F1Vrrl5oTEq3.jpeg', '2020-01-18 08:42:49', '2020-01-18 08:42:49', NULL),
(7, 'Syahroni', 'Aries Eko', 'Prasetyo', 'Jenggolo', 2, 1, 1, 'Tambakboyo', 31, '2020-01-09', '2020-01-30', 2, 2, 'avatars/3jC5FdzVyIj35tk9i0ehC9ZFKYmhIb5SWKQlRboS.jpeg', '2020-01-18 08:43:49', '2020-01-18 08:43:49', NULL),
(8, 'Santoso', 'Aries', 'Kukoh', 'Jenggolo', 1, 1, 1, 'Tambakboyo', 31, '2020-01-17', '2020-01-24', 2, 2, 'avatars/XRnp7AAU12eXPBCjcU6ei5IzcTfmWMjRpZvX9vHN.jpeg', '2020-01-18 08:44:42', '2020-01-18 08:44:42', NULL),
(9, 'Santoso', 'Aries', 'Kukoh', 'Palang', 1, 1, 1, 'Tambakboyo', 20, '2020-01-16', '2020-01-30', 2, 2, 'avatars/gzYVBuYKiBJU3os6yGPElz4yMPsvhWfjusDINysR.jpeg', '2020-01-18 20:24:23', '2020-01-18 20:24:23', NULL),
(10, 'Santoso', 'Aries Eko', 'dw', 'Tambakboyo', 1, 1, 1, 'Tambakboyo', 31, '2020-01-07', '2020-01-22', 2, 2, 'avatars/9ltq0PGhN2z95i7DroAu52LlCTHDWrZcGn7BhMGL.jpeg', '2020-02-07 06:56:31', '2020-02-07 06:56:31', NULL),
(11, 'Santoso', 'Aries Eko', 'Prasetyo', 'Tambakboyo', 1, 1, 1, 'Tambakboyo', 31, '2020-02-12', '2020-02-11', 1, 2, 'avatars/w9fjWVuHA23W9gwgQPDdHVvpb1nPyJf4qEcd79Bk.jpeg', '2020-02-07 07:05:49', '2020-02-07 07:05:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `salary` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2017_02_18_003431_create_department_table', 1),
(3, '2017_02_18_004142_create_division_table', 1),
(4, '2017_02_18_004326_create_country_table', 1),
(5, '2017_02_18_005005_create_state_table', 1),
(6, '2017_02_18_005241_create_city_table', 1),
(7, '2017_03_17_163141_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `country_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Jawa Timur', '2020-01-13 09:06:27', '2020-01-18 01:51:09', NULL),
(2, 1, 'Jawa Barat', '2020-01-18 01:47:32', '2020-01-18 01:47:32', NULL),
(3, 1, 'Jawa Tengah', '2020-01-18 01:49:04', '2020-01-18 01:49:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `lastname`, `firstname`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$X2Yw3Gmus0tgTMqGnbmAtOXw/DzHhu3Lt2TxvAp.EfnUegd7athHW', 'Mr', 'admin', 'PnRWV8ysBVo4hEiDmQdBlcaiy6WjwodxxkdkPci2eIhzSppzQCkH3MbP9FNa', NULL, '2020-01-13 09:02:04', '2020-01-13 09:02:04'),
(2, 'qkohst', 'kukohsantoso013@gmail.com', '$2y$10$bR2vgLVVau20/vukr061Z.aQW3Uy1ZYFPvSInWALmarBcAk4iXcpC', 'Santoso', 'Kukoh', 'WUyYPcs7H2GzWyaxbFBg2ckb5jcPwRCB37zbMuqLEZJibYscFhQRpp5A6Tu4', NULL, '2020-01-13 09:07:38', '2020-01-13 09:07:38'),
(3, 'aries', 'aries@gmail.com', '$2y$10$mGqBbfYRASqJVDzFguYSE.U44T2PKFvylTuXIWMr5w3lA8oQ4TkY2', 'Prasetyo', 'Aries Eko', 'nKfpdYB1MHEwjbS7l9FUa9TX9VOUx6N3ix47Y31er4l84NUAPpEHEV957MyU', NULL, '2020-01-18 10:29:55', '2020-01-18 10:29:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_state_id_foreign` (`state_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_city_id_foreign` (`city_id`),
  ADD KEY `employees_state_id_foreign` (`state_id`),
  ADD KEY `employees_country_id_foreign` (`country_id`),
  ADD KEY `employees_department_id_foreign` (`department_id`),
  ADD KEY `employees_division_id_foreign` (`division_id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_country_id_foreign` (`country_id`);

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
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `employees_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `employees_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`),
  ADD CONSTRAINT `employees_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
