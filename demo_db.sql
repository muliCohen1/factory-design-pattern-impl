-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 10:04 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `guessing_table`
--

CREATE TABLE `guessing_table` (
  `id` int(11) NOT NULL,
  `shape` varchar(12) NOT NULL,
  `guess` int(12) NOT NULL,
  `guess_outcome` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guessing_table`
--

INSERT INTO `guessing_table` (`id`, `shape`, `guess`, `guess_outcome`) VALUES
(1, 'square', 40, 'correct'),
(2, 'rectangle', 50, 'correct'),
(3, 'square', 44, 'incorrect'),
(4, 'rectangle', 55, 'incorrect'),
(5, 'square', 44, 'incorrect'),
(6, 'rectangle', 0, 'incorrect'),
(7, 'rectangle', 0, 'incorrect');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guessing_table`
--
ALTER TABLE `guessing_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guessing_table`
--
ALTER TABLE `guessing_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
