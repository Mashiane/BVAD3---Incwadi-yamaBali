-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2022 at 11:17 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectmanager`
--
CREATE DATABASE IF NOT EXISTS `projectmanager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projectmanager`;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `dayof` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `dayof`, `description`) VALUES
(1, '2022-01-01', 'New Year'),
(2, '2022-03-21', 'Human Rights Day'),
(3, '2022-04-15', 'Good Friday'),
(4, '2022-04-18', 'Family Day'),
(5, '2022-04-27', 'Family Day'),
(6, '2022-05-01', 'Workers Day'),
(7, '2022-06-16', 'Youth Day'),
(8, '2022-08-09', 'National Womens Day'),
(9, '2022-09-24', 'Heritage Day'),
(10, '2022-12-16', 'Day of Reconciliation'),
(11, '2022-12-25', 'Christmas Day'),
(12, '2022-12-26', 'Day of Goodwill'),
(13, '2023-01-01', 'New Year');

-- --------------------------------------------------------

--
-- Table structure for table `project_status`
--

DROP TABLE IF EXISTS `project_status`;
CREATE TABLE `project_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_status`
--

INSERT INTO `project_status` (`id`, `name`, `color`) VALUES
(1, 'Completed', 'green'),
(2, 'Pending', 'amber'),
(3, 'In Process', 'blue'),
(4, 'Un-Assigned', 'grey');

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

DROP TABLE IF EXISTS `project_types`;
CREATE TABLE `project_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `name`, `color`) VALUES
(1, 'New Website', 'pink'),
(2, 'Website Update', 'brown'),
(3, 'Website Speed', 'cyan'),
(4, 'Website Enhancements', 'purple');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `hourly_rate` double DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `first_name`, `last_name`, `hourly_rate`, `email`, `fullname`, `image`) VALUES
(1, 'Anele', 'Mbanga', 700, 'mbanga@gmail.com', '', './assets/2.jpg'),
(2, 'Another', 'Resourc', 100, 'another@resource.com', NULL, './assets/1.jpg'),
(4, 'Project', 'Resource 2', 250, 'resourcex@project.com', NULL, './assets/1.png'),
(5, 'Another One', 'Projext X', 350, 'resourcex@project.com', NULL, './assets/2.png');

-- --------------------------------------------------------

--
-- Table structure for table `task_types`
--

DROP TABLE IF EXISTS `task_types`;
CREATE TABLE `task_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_types`
--

INSERT INTO `task_types` (`id`, `name`, `color`) VALUES
(1, 'High Skill', 'green'),
(2, 'Medium Skill', 'amber'),
(3, 'Low Skill', 'indigo'),
(4, 'No Skill', 'grey'),
(5, 'Zero Skill', 'blue-grey');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_schedule`
--

DROP TABLE IF EXISTS `weekly_schedule`;
CREATE TABLE `weekly_schedule` (
  `id` int(11) NOT NULL,
  `dayofweek` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `working_hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekly_schedule`
--

INSERT INTO `weekly_schedule` (`id`, `dayofweek`, `active`, `working_hours`) VALUES
(1, 'Sunday', 1, 8),
(2, 'Monday', 1, 8),
(3, 'Tuesday', 1, 8),
(4, 'Wednesday', 1, 8),
(5, 'Thursday', 1, 8),
(6, 'Friday', 1, 8),
(7, 'Saturday', 1, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_status`
--
ALTER TABLE `project_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_types`
--
ALTER TABLE `task_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekly_schedule`
--
ALTER TABLE `weekly_schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_status`
--
ALTER TABLE `project_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `task_types`
--
ALTER TABLE `task_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `weekly_schedule`
--
ALTER TABLE `weekly_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
