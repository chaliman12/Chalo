-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2017 at 05:52 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(2, 'abdi', 'ab12', 'abdi@gmail.com'),
(3, 'chali', 'chali1234', 'chali@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendant`
--


-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE `ranking` (
  `id` int(20) NOT NULL,
  `location` varchar(25) NOT NULL,
  `annual_temp` int(20) NOT NULL,
  `university_name` varchar(25) NOT NULL,
  `distance` int(20) NOT NULL,
  `review` varchar(25) NOT NULL,
  `ranking` int(20) NOT NULL,
  `speciality` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkings`
--

INSERT INTO `ranking` (`id`, `location`, `annual_temp`, `university_name`, `distance`,  `review`, `ranking`, `speciality`) VALUES
(5, 'adama', 33, 'ASTU', 150, 'very good',  '3', 'engineering');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(25) NOT NULL,
  `university_name` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL,
  `annual_temp` int(25) NOT NULL,
  `distance` int(25) NOT NULL,
  `ranking` int(25) NOT NULL,
  `review` varchar(30) NOT NULL,
  `speciality` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `university_name`, `location`, `annual_temp`, `distance`, `ranking`, `review`, `speciality`) VALUES
(7, 'ASTU', 'Adama', 30, 115, 3, 'very good', 'engineering'),
(8, 'AASTU', 'Addis Abeba', 29, 28, 6, 'good', 'engineering'),
(9, 'AAU', 'Finfine', 29, 8, 1, 'excellent', 'medical'),
(10, 'HU', 'Hararge', 33, 560, 5, 'good', 'agriculture'),
(11, 'BDU', 'Bahir Dar', 25, 470, 4, 'good', 'natural'),
(12, 'MIT', 'Mekele', 26, 950, 2, 'very good', 'enginnering'),
(13, 'HWU', 'Hawasa', 22, 286, 7, 'good', 'medical');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ranking`
--

ALTER TABLE `ranking`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
