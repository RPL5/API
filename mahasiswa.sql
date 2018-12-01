-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2018 at 09:50 PM
-- Server version: 5.7.21-1
-- PHP Version: 7.0.29-1+b1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

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
(1, '2018_11_28_150423_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nim` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nim`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, '16650015', 'nurchulis', 'tod32@wolff.biz', '$2y$10$FDFn8V5LXr23Yz/3h5YhHup09qNAwYTm8QpqZN5pHOMoNG1NhLtye', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(2, '', 'Hiram Pagac', 'cristobal27@cormier.com', '$2y$10$hZ785s6KaEn8Yq0sRzXBb.UQRq5Z326aUH6e64npPPTcmAY6SDIX2', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(3, '', 'Vince Sanford', 'kasandra98@hayes.net', '$2y$10$8n3gbt9erYukGKfULyK8Uek017JoERzGnhfxOJnP34kxQx.IYJ0Ve', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(4, '', 'Mr. Kolby Kiehn I', 'ashlee.mohr@hodkiewicz.com', '$2y$10$r76j1RCLElhRXBlljaRY3ewqIhrz1WJ0QCcuykR1.AnA2DyDzUDlO', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(5, '', 'Jarvis Lueilwitz', 'newell53@gmail.com', '$2y$10$XfW66WAV/76kEM41i3XC8OzQZhRzaMuivHboB3tUGSvtZ9O3SlXDO', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(6, '', 'Domingo Nicolas DVM', 'zgrady@schuster.com', '$2y$10$QaUs38WDkO/jX2c0.nSsDu5/6lx9DGdSTfqC2moKBbM5h3JjiUk6G', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(7, '', 'Darron Barrows', 'winifred.mills@dickens.net', '$2y$10$n6XYxchy6WGlg8ckMh2Nwu9WxBbax.hm0BbivX3VpQpgCZBuGQqX6', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(8, '', 'Prof. Carmelo Eichmann', 'russel.gudrun@gmail.com', '$2y$10$TsqNp3OeWw./PUJtlXbkkuc890I742WPMKh.hGX4IwZGZxAd3EBIq', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(9, '', 'Jon Brown Jr.', 'anderson.dare@gmail.com', '$2y$10$AcPjr661GJoYmz5kFdz3zO7G3pwJe6MJ.xYvPiTVxjklZSJKtW3/K', '2018-11-30 01:10:35', '2018-11-30 01:10:35'),
(10, '', 'Prof. Josianne Russel', 'sleffler@yahoo.com', '$2y$10$S5TKBUZPKc1KbwcM0JMUR.GiThvDQ742ek6SKoXiQBiASD/2Vn7na', '2018-11-30 01:10:35', '2018-11-30 01:10:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
