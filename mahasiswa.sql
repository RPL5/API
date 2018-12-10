-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2018 at 03:50 PM
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
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(5) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `id_makul` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `nim`, `id_makul`) VALUES
(1, '16650015', '2'),
(2, '16650016', '1');

-- --------------------------------------------------------

--
-- Table structure for table `makul`
--

CREATE TABLE `makul` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `makuls`
--

CREATE TABLE `makuls` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_makul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deksripsi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `makuls`
--

INSERT INTO `makuls` (`id`, `nama_makul`, `deksripsi`, `sks`, `created_at`, `updated_at`) VALUES
(1, 'asas', 'Adalah Sebuah Makul Pemograman Dasar', 3, '2018-12-04 03:48:17', '2018-12-07 01:55:55'),
(2, 'Logika Informatika', 'Adalah sebuah Makul Logika Informatika', 3, '2018-12-04 03:48:17', '2018-12-04 03:48:17'),
(3, 'mencoba', 'Adalah sebuah Makul Logika Informatika', 2, '2018-12-04 03:48:17', '2018-12-04 03:48:17'),
(4, 'mencoba', 'Mencoba ahsaoshoasoahoshaoshahsoahos', 2, '2018-12-04 03:49:35', '2018-12-04 03:49:35'),
(5, 'Aljabar Linear', 'Mencoba ahsaoshoasoahoshaoshahsoahos', 2, '2018-12-04 09:08:34', '2018-12-04 09:08:34');

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
(1, '2018_12_02_112357_create_users_table', 1),
(2, '2018_12_02_112532_create_makul_table', 1),
(3, '2018_11_28_150423_create_users_table', 2),
(4, '2018_12_02_121305_create_makul_table', 3),
(5, '2018_12_02_121651_create_makuls_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `nim` int(10) NOT NULL,
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
(1, 16650015, 'Ahmad White', 'clara84@yahoo.com', '$2y$10$xTex0QtuH9byhYXpVp15kOSEiOslmL5S05Q0V08.xyOkR2mZJtWZO', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(2, 16650016, 'Mckayla Hills', 'dconnelly@gmail.com', '$2y$10$YyUg4lmvfx6caeqAv0CDzOBdBfRQ6/.04E8vKkHReFmNtR0Huhf7O', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(3, 16650017, 'Kenna Bergstrom', 'dickens.jennings@gmail.com', '$2y$10$r3MjS.uyULzEL7O4hvMWyOrLUNJzclSH7mFPfQULQDzCMofH02Woa', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(4, 16650018, 'Ms. Dakota Fritsch DDS', 'dominique.beier@reichel.biz', '$2y$10$2jRPLPTrIQ2J./OCzv0NDunvlfUpFKCMtfJeLJPq3RIL1cuh1GbKS', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(5, 0, 'Mr. Hollis Wolff Sr.', 'hmcdermott@walter.com', '$2y$10$xiiImwmdZk3jlKtkSogDHOJZJ2gdrhWn/OWxIRlVcRpb0DlmS8TMW', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(6, 0, 'Bettie Nitzsche', 'kailee.legros@kuhic.net', '$2y$10$CFVN3LYEsgWJ2jsXRPXXZ.c399zfNTNNFmwei.7PV9W.fVUFaJhBG', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(7, 0, 'Mauricio Gutkowski', 'monserrat53@dickens.biz', '$2y$10$FlbSc04Yx/ZH7AaqcokAXuVF1fMa/D6mnPmIyuoZ0w.t9X6UJbBje', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(8, 0, 'Kurt Bayer', 'rogers67@gmail.com', '$2y$10$nnnfiyNnDQBBZULW3QSfy.5QR8abKB1i1.A16f/frlpL6JlfWfd1a', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(9, 0, 'Anita Bradtke', 'rylan36@yahoo.com', '$2y$10$v0JmyROd43k91I77wvIrKOUQMquyQCefWrEPSnrQeZw6jFdnMfgbu', '2018-12-02 12:14:50', '2018-12-02 12:14:50'),
(10, 0, 'Agustin Bogan', 'zboncak.lennie@yahoo.com', '$2y$10$8EZcnXWC7BheyDI0.E5NWuEEwjsQXUp3V9IODfbB/ElXVjxB5hajG', '2018-12-02 12:14:50', '2018-12-02 12:14:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indexes for table `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makuls`
--
ALTER TABLE `makuls`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `makul`
--
ALTER TABLE `makul`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `makuls`
--
ALTER TABLE `makuls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
