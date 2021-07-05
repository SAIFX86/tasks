-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 10:07 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_information`
--

CREATE TABLE `users_information` (
  `user_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `activity_log` datetime NOT NULL,
  `dob` date NOT NULL,
  `job_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_information_dup`
--

CREATE TABLE `users_information_dup` (
  `user_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `activity_log` datetime NOT NULL,
  `dob` date NOT NULL,
  `job_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_information_old`
--

CREATE TABLE `users_information_old` (
  `dup_id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `activity_log` datetime NOT NULL,
  `dob` date NOT NULL,
  `job_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_information`
--
ALTER TABLE `users_information`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- Indexes for table `users_information_dup`
--
ALTER TABLE `users_information_dup`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `email_address` (`email_address`) USING BTREE;

--
-- Indexes for table `users_information_old`
--
ALTER TABLE `users_information_old`
  ADD PRIMARY KEY (`dup_id`),
  ADD KEY `email_address` (`email_address`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_information`
--
ALTER TABLE `users_information`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_information_dup`
--
ALTER TABLE `users_information_dup`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_information_old`
--
ALTER TABLE `users_information_old`
  MODIFY `dup_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
