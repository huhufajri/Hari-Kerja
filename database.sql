-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2018 at 10:41 AM
-- Server version: 5.6.39
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `public_holydays`
--

-- --------------------------------------------------------

--
-- Table structure for table `public_holydays`
--

CREATE TABLE `public_holydays` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `public_holydays`
--

INSERT INTO `hari_libur` (`id`, `date`, `description`) VALUES
(1, '2017-01-01', ''),
(2, '2017-01-02', ''),
(3, '2017-03-28', ''),
(4, '2017-04-14', ''),
(5, '2017-04-24', ''),
(6, '2017-05-01', ''),
(7, '2017-05-11', ''),
(8, '2017-05-25', ''),
(9, '2017-06-01', ''),
(10, '2017-06-26', ''),
(11, '2017-06-27', ''),
(12, '2017-06-28', ''),
(13, '2017-06-29', ''),
(14, '2017-06-30', ''),
(15, '2017-08-17', ''),
(16, '2017-09-01', ''),
(17, '2017-09-21', ''),
(18, '2017-12-01', ''),
(19, '2017-12-25', ''),
(20, '2017-12-26', ''),
(21, '2018-01-01', ''),
(22, '2018-02-16', ''),
(23, '2018-03-17', ''),
(24, '2018-03-30', ''),
(25, '2018-04-14', ''),
(26, '2018-05-01', ''),
(27, '2018-05-10', ''),
(28, '2018-05-29', ''),
(29, '2018-06-01', ''),
(30, '2018-06-13', ''),
(31, '2018-06-14', ''),
(32, '2018-06-15', ''),
(33, '2018-06-16', ''),
(34, '2018-06-18', ''),
(35, '2018-06-19', ''),
(36, '2018-08-17', ''),
(37, '2018-08-22', ''),
(38, '2018-09-11', ''),
(39, '2018-11-20', ''),
(40, '2018-12-24', ''),
(41, '2018-12-25', ''),
(42, '2019-01-01', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `public_holydays`
--
ALTER TABLE `public_holydays`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `public_holydays`
--
ALTER TABLE `public_holydays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;
