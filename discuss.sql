-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 03:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` varchar(256) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'python', 'Python is an interpreted high-level general-purpose programming language. Its design philosophy emphasizes code readability with its use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers wri', '2021-09-09 10:51:21'),
(2, 'javascript', 'avaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm', '2021-09-09 10:53:55'),
(3, 'django', ' a lightweight, interpreted, or just-in-time compiled programming language with first-class functions.\r\n', '2021-09-09 16:14:39'),
(4, 'flask', ' a lightweight, interpreted, or just-in-time compiled programming language with first-class functions.\r\n', '2021-09-09 16:15:41'),
(5, 'bootstrap', 'Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins', '2021-09-09 17:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_contant` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_contant`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'this is comment', 1, 0, '2021-09-10 18:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'unable to install python', 'i am not install to python', 1, 2, '2021-09-10 11:17:57'),
(2, 'sar', 'dad', 1, 3, '2021-09-10 17:21:23'),
(3, 'asaf', 'fgvsdf', 2, 1, '2021-09-10 17:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sno` int(8) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_pass` varchar(256) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sno`, `user_name`, `user_pass`, `timestamp`) VALUES
(1, 'rahul@!23', '123', '2021-09-10 19:30:51'),
(2, 'rahulrk@12', '$2y$10$kBHBWmR/paOxptmfS6fubeD2W0U0nI7jG.OC2BPjJi/gw8V9gC/72', '2021-09-10 19:33:21'),
(3, 'rahulrk@12', '$2y$10$YejPtg6OSTBqOiq2UV86juDClCtg4p3j/K6MdOQD0zYbs57Ox.SGi', '2021-09-10 19:35:07'),
(4, 'rahulrk@123', '$2y$10$yvLY40G0FtC6xiccIv1Vleqb.D8JafcQUFmnWKguirTjO.RpwpKAm', '2021-09-10 19:39:35'),
(5, 'rahulrk@1234', '$2y$10$hEqlmuBQ2wNeWi2aWfTp7umMpfNNcp25mtXeG0YAtWOhzSVN7NsZy', '2021-09-10 20:01:59'),
(6, 'rahulrk@12345', '$2y$10$rTAF9bq6LrrzpXSuDJhn3eUdoAAUkafC35yWzx8KzJcoziLF90r4e', '2021-09-10 20:05:23'),
(7, 'rahul1', '$2y$10$2vbY.he7/cMMPcSjOyRv8OTCnxawbfRhgkcxhR4CCn8.nC7T7zSZ6', '2021-09-11 11:38:17'),
(8, 'rahulrk@12', '$2y$10$UykRPqSICM.JII.VmrpMUuayk6xPC2RnhMVXO.XmGZ.2Eke0WsjW6', '2021-09-11 12:02:15'),
(9, 'rahulrk@1234', '$2y$10$REK1W8gj5SjB/0VecdIR7exPLmUNitkuAygKQxL53Mrmx9TPU3OZG', '2021-09-11 12:02:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
