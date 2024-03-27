-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3315
-- Generation Time: Mar 25, 2024 at 03:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('applicant','company') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `username`, `email`, `password`, `type`) VALUES
(1, 'Emily Meyer', 'cinedosiw@mailinator.com', 'Pa$$w0rd!', 'applicant'),
(2, 'ahmed', 'fujy@mailinator.com', 'Pa$$w0rd!', 'applicant'),
(3, 'applicant', 'vuxogesebe@mailinator.com', 'Pa$$w0rd!', 'applicant'),
(4, 'Forrest Vang', 'cipunury@mailinator.com', '2222', 'applicant'),
(5, 'Fulton Stanton', 'fuwuf@mailinator.com', 'Pa$$w0rd!', 'applicant');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `password`, `post_id`) VALUES
(1, 'net', '123', NULL),
(2, 'Benjamin Vincent', 'Pa$$w0rd!', NULL),
(3, 'company', 'Pa$$w0rd!', NULL),
(4, 'Nyssa Armstrong', '777', NULL),
(5, 'Bryar Brooks', '999', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `status` enum('active','closed') NOT NULL,
  `salary` int(11) NOT NULL,
  `type` enum('full time','part time') NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `location`, `start_date`, `expire_date`, `status`, `salary`, `type`, `subject`) VALUES
(1, 'front end', 'cairo', '2024-03-25', '2024-03-29', 'active', 2500, 'full time', ''),
(2, 'Burton Hubbard', 'Laborum illum in ad', '2017-11-04', '1997-01-12', 'active', 27, 'part time', 'Ut culpa enim dolore'),
(3, 'Alexa Porter', 'Elit eum omnis et v', '1974-07-26', '2005-01-25', 'active', 80, 'part time', 'Quis debitis sit ist'),
(4, 'Clarke Wilson', 'Dolor quia aliquip l', '2019-10-03', '2016-01-31', 'active', 54, 'part time', 'Ipsa autem quae off'),
(5, 'Clarke Wilson', 'Dolor quia aliquip l', '2019-10-03', '2016-01-31', 'active', 54, 'part time', 'Ipsa autem quae off'),
(6, 'Jordan Shepherd', 'Quo aut sed et dolor', '2007-08-24', '1988-05-04', 'active', 65, 'part time', 'Nemo possimus et co'),
(7, 'Latifah Whitney', 'Cillum veniam praes', '1994-10-30', '2023-08-18', 'active', 22, 'part time', 'Est dolore animi et'),
(8, 'Jesse Page', 'Placeat odio pariat', '1983-01-17', '2008-12-13', 'active', 31, 'full time', 'Praesentium obcaecat'),
(9, 'Halee Barnes', 'Cupidatat deleniti d', '1986-11-25', '2019-09-08', 'active', 86, 'part time', 'Dolores qui nulla au'),
(10, 'Katell Simmons', 'Accusantium nihil ex', '2000-08-10', '2020-10-20', 'active', 62, 'full time', 'Sunt omnis eaque ear'),
(11, 'Katell Simmons', 'Accusantium nihil ex', '2000-08-10', '2020-10-20', 'active', 62, 'full time', 'Sunt omnis eaque ear'),
(12, 'Nicholas Gonzalez', 'Quod ad quia ad ad q', '2013-10-28', '1971-05-11', 'active', 41, 'part time', 'Beatae sit modi nihi'),
(13, 'Sigourney Lamb', 'Duis laborum animi ', '1976-03-09', '2021-09-21', 'active', 33, 'part time', 'In magni et voluptat'),
(14, 'Trevor Hartman', 'Nihil autem est vita', '1978-12-04', '1990-09-17', 'active', 88, 'full time', 'Ut quo hic aliquam m'),
(15, 'mata', 'Facere quod necessit', '2018-11-22', '1972-07-23', 'active', 19, 'part time', 'Qui unde in quo eum '),
(16, 'Vielka Mcpherson', 'Necessitatibus sit c', '2020-10-01', '1970-12-15', 'active', 22, 'part time', 'Soluta voluptatem S'),
(17, 'Skyler Dudley', 'Qui fugiat inventore', '1973-11-10', '1971-07-24', 'active', 62, 'part time', 'Aut quidem sit commo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
