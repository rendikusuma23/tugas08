-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 12:23 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `drzchat`
--

CREATE TABLE `drzchat` (
  `nomor` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pesan` varchar(200) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drzchat`
--

INSERT INTO `drzchat` (`nomor`, `nama`, `pesan`, `waktu`) VALUES
(11, 'Admin', 'saya bergabung dalam chat', '06:31'),
(12, 'saya', 'hai', '06:32'),
(13, 'saya', 'juga', '06:32'),
(14, 'Admin', 'saya2 bergabung dalam chat', '06:32'),
(15, 'saya2', 'hay', '06:33'),
(16, 'Admin', 'iru bergabung dalam chat', '06:34'),
(17, 'iru2', 'hai', '06:36'),
(18, 'Admin', 'iru2 bergabung dalam chat', '06:37'),
(19, 'iru2', 'hai', '06:37'),
(20, 'Admin', 'saya7 bergabung dalam chat', '06:37'),
(21, 'saya7', 'hai', '06:37'),
(22, 'Admin', 'saya8 bergabung dalam chat', '06:40'),
(23, 'saya8', 'hai', '06:40'),
(24, 'Admin', 'saya9 bergabung dalam chat', '06:40'),
(25, 'saya9', 'hai', '06:40'),
(26, 'Admin', 'saya8 bergabung dalam chat', '06:41'),
(27, 'saya8', 'hai', '06:42'),
(28, 'Admin', 'saya8 bergabung dalam chat', '06:43'),
(29, 'Admin', 'saya9 bergabung dalam chat', '06:43'),
(30, 'saya8', 'hai', '06:43'),
(31, 'saya9', 'juga', '06:43'),
(32, 'saya9', 'juga', '06:44'),
(33, 'Admin', 'saya bergabung dalam chat', '06:46'),
(34, 'saya', 'hai', '06:46'),
(35, 'Admin', 'saya3 bergabung dalam chat', '06:47'),
(36, 'saya3', 'juga', '06:47'),
(37, 'saya', 'hai', '06:47'),
(38, 'saya3', 'hai', '06:47'),
(39, 'saya3', 'juga', '06:48'),
(40, 'saya', 'juga', '06:48'),
(41, 'Admin', 'riza bergabung dalam chat', '06:54'),
(42, 'riza', 'halo', '06:54'),
(43, 'Admin', 'adlo bergabung dalam chat', '06:54'),
(44, 'adlo', 'iya', '06:54'),
(45, 'adlo', 'hay', '06:54'),
(46, 'riza', 'ana apa', '06:56'),
(47, 'Admin', 'iru bergabung dalam chat', '06:57'),
(48, 'iru', 'hay', '06:57'),
(49, 'Admin', 'adlo bergabung dalam chat', '06:57'),
(50, 'adlo', 'hay juga', '06:57'),
(51, 'iru', 'lg apa', '06:57'),
(52, 'Admin', 'haha bergabung dalam chat', '07:01'),
(53, 'haha', 'hey', '07:01'),
(54, 'Admin', 'jua bergabung dalam chat', '07:01'),
(55, 'jua', 'hehe', '07:01'),
(56, 'Admin', 'rin bergabung dalam chat', '08:53'),
(57, 'Admin', 'saya bergabung dalam chat', '08:55'),
(58, 'rin', 'hai', '08:55'),
(59, 'saya', 'hai', '08:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'pertama', 'pertama@mail.com', 'pertama'),
(2, 'kedua', 'kedua@mail.com', 'kedua'),
(3, 'aaaa', 'mbmnbmn', 'nmnmn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drzchat`
--
ALTER TABLE `drzchat`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drzchat`
--
ALTER TABLE `drzchat`
  MODIFY `nomor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
