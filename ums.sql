-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 01:16 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `PhoneNumber` varchar(12) NOT NULL,
  `Role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id`, `firstName`, `lastName`, `Email`, `PhoneNumber`, `Role`) VALUES
(1, 'MUSA', 'Yohanna', 'youny4real2006@yahoo.com', '2147483647', 'guest'),
(2, 'JOSHUA', 'MUSA', 'jmusa@gmail.com', '2147483647', 'Mentor'),
(3, 'MUSA', 'Yohanna', 'youny4real2006@yahoo.com', '2147483647', 'moderator'),
(4, 'MUSA', 'Yohanna', 'youny4real2006@yahoo.com', '08130493044', 'moderator'),
(5, 'Ruth ', 'MUSA', 'ruth@gmail.com', '9099990989', 'moderator'),
(6, 'youny', 'Yohanna', 'youny4real2006@yahoo.com', '08130493044', 'moderator');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `phone`, `comment`, `status`) VALUES
(1, 'Musa', 'YOHANNA', 'younymusa@gmail.com', '09037777777', 'hey this is a new work', 'active'),
(2, 'Gabriel', 'Musa', 'gabmusa@gmail.com', '', 'nnnnnnnnnnnnnnnnnnnnnn', 'active'),
(3, 'Joshua', 'musa', 'jmusa@mail.com', 'ooooooooooooo', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', 'active'),
(4, 'HAPPY', 'Musa', 'gabmusa@gmail.com', '', 'nnnnnnnnnnnnnnnnnnnnnn', 'active'),
(5, 'Ruth', 'musa', 'jmusa@mail.com', 'ooooooooooooo', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', 'active'),
(6, 'Baby', 'Musa', '', '', '', 'active'),
(7, '', '', '', '', '', 'active'),
(8, 'SAMUEL ', 'HARUNA', 'kimasku@yahoo.com', '08917888', '', 'active'),
(9, 'Ahmed', 'Suleiman', 'youny4real2006@yahoo.com', '08130493044', '', 'active'),
(10, 'HAMSAT', 'ABDULLAHI', 'hamsatabdu@gmail.com', '090567788899', '', 'active'),
(11, '', '', '', '', '', 'active'),
(12, 'MUSA', 'Yohanna', 'youny4real2006@yahoo.com', '08130493044', '', 'active'),
(13, 'YUSUF', 'SUNAMA', 'yosuf@gmail.com', '0909090909', '', 'active'),
(14, 'Ali', 'HASSAN', 'ali@gmail.com', '090990090', '', 'active'),
(15, 'Ali', 'HASSAN', 'ali@gmail.com', '090990090', '', 'active'),
(16, 'Ali', 'HASSAN', 'ali@gmail.com', '090990090', '', 'active'),
(17, 'Ali', 'HASSAN', 'ali@gmail.com', '090990090', '', 'active'),
(18, 'Ali', 'HASSAN', 'ali@gmail.com', '090990090', '', 'active'),
(19, 'Ali', 'HASSAN', 'ali@gmail.com', '090990090', '', 'active'),
(20, 'Ali', 'HASSAN', 'ali@gmail.com', '090990090', '', 'active'),
(21, 'MUSA', 'Helen', 'hsum@gmail.com', '0909009900', '', 'active'),
(22, 'Mikailu', 'hassan', 'musayohanna60@gmail.com', '090977657878', '', 'active'),
(23, 'SADIQ', 'MUSTAPHA', 'yourmail.@gmail.com', '0909909890', '', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
