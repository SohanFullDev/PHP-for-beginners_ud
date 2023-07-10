-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 08:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `published_at`) VALUES
(1, 'Title for post one', 'Description for post one.Description for post one.Description for post one.Description for post one.Description for post one.Description for post one.Description for post one.Description for post one.', '2023-07-10 10:44:06'),
(2, 'Title for post two', 'Description for post two.Description for post two.Description for post two.Description for post two.Description for post two.Description for post two.Description for post two.Description for post two.Description for post two.', '2023-07-11 13:33:23'),
(3, 'Title for post three', 'Description for post three.Description for post three.Description for post three.Description for post three.Description for post three.', '2023-07-10 20:31:58'),
(4, 'Title for post four.', 'Description for post four.Description for post four.Description for post four.Description for post four.Description for post four.Description for post four.Description for post four.', '2023-07-10 07:24:58'),
(5, 'Title for post five.', 'Description for post five.Description for post five.Description for post five.Description for post five.', '2023-07-10 05:27:32'),
(6, 'Title for post six.', 'Description for post six.Description for post six.Description for post six.Description for post six.Description for post six.Description for post six.Description for post six.Description for post six.', '2023-07-11 10:22:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
