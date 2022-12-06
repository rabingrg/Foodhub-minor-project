-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 11:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(9, 'hi', 'rochak2_rochak2', 'rochak2_rochak2', '2021-02-26 05:38:49', 'no', 72),
(10, 'hahaha', 'rochak2_rochak2', 'rochak2_rochak2', '2021-02-26 05:39:10', 'no', 71),
(11, 'dcdxc', 'rochak2_rochak2', 'rochak_shrestha', '2021-02-26 11:17:45', 'no', 95),
(12, 'werfsef', 'rochak_shrestha', 'rochak2_rochak2', '2021-03-01 06:30:19', 'no', 120),
(13, 'kkk', 'rochak_shrestha', 'rochak_shrestha', '2021-03-01 06:30:32', 'no', 113),
(14, 'wow\r\n', 'rochak2_rochak2', 'rochak2_rochak2', '2021-03-01 08:53:30', 'no', 120),
(15, 'wow\r\n', 'rochak2_rochak2', 'rochak2_rochak2', '2021-03-01 08:53:43', 'no', 112);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(25, 'rochak2_rochak2', 68),
(26, 'rochak_shrestha', 87),
(27, 'rochak_shrestha', 77),
(28, 'rochak_shrestha', 71),
(30, 'rochak_shrestha', 70),
(31, 'rochak_shrestha', 69),
(33, 'rochak2_rochak2', 71),
(34, 'rochak2_rochak2', 77),
(35, 'rochak2_rochak2', 70),
(38, 'rochak2_rochak2', 93),
(41, 'rochak2_rochak2', 92),
(42, 'rochak_shrestha', 112),
(45, 'rochak_shrestha', 113);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(44, 'rochak2_rochak2', 'rochak2_rochak2', 'hi', '2021-02-26 05:07:48', 'yes', 'yes', 'no'),
(45, 'rochak2_rochak2', 'rochak2_rochak2', 'hi', '2021-02-26 05:08:00', 'yes', 'yes', 'no'),
(46, 'rochak_shrestha', 'rochak2_rochak2', 'hey\r\n', '2021-02-26 12:45:45', 'yes', 'yes', 'no'),
(47, 'rochak_shrestha', 'rochak2_rochak2', ';;', '2021-02-26 12:46:21', 'yes', 'yes', 'no'),
(48, 'rochak_shrestha', 'rochak2_rochak2', 'asdsadas', '2021-02-26 12:46:24', 'yes', 'yes', 'no'),
(49, 'rochak2_rochak2', 'rochak_shrestha', 'haha', '2021-02-26 12:48:40', 'yes', 'yes', 'no'),
(50, 'rochak2_rochak2', 'rochak_shrestha', 'saxsX', '2021-02-26 12:48:42', 'yes', 'yes', 'no'),
(51, 'rochak2_rochak2', 'rochak_shrestha', 'asdsad', '2021-02-26 12:48:44', 'yes', 'yes', 'no'),
(52, 'rochak2_rochak2', 'rochak_shrestha', 'sadfasd', '2021-02-26 12:48:50', 'yes', 'yes', 'no'),
(53, 'rochak2_rochak2', 'rochak_shrestha', 'ASD', '2021-02-26 12:48:52', 'yes', 'yes', 'no'),
(54, 'rochak2_rochak2', 'rochak_shrestha', 'ASD', '2021-02-26 12:48:53', 'yes', 'yes', 'no'),
(55, 'rochak2_rochak2', 'rochak_shrestha', 'ASDASD', '2021-02-26 12:48:54', 'yes', 'yes', 'no'),
(56, 'rochak2_rochak2', 'rochak_shrestha', 'ASDASD', '2021-02-26 12:48:56', 'yes', 'yes', 'no'),
(57, 'rochak2_rochak2', 'rochak_shrestha', 'ASDASD', '2021-02-26 12:48:58', 'yes', 'yes', 'no'),
(58, 'rochak2_rochak2', 'rochak_shrestha', 'ASDASDAS', '2021-02-26 12:49:00', 'yes', 'yes', 'no'),
(59, 'rochak2_rochak2', 'rochak_shrestha', 'ASDASDAS', '2021-02-26 12:49:03', 'yes', 'yes', 'no'),
(60, 'rochak2_rochak2', 'rochak_shrestha', 'aaa', '2021-02-26 16:06:21', 'yes', 'yes', 'no'),
(61, 'rochak_shrestha', 'rochak_shrestha', 'asd\r\na', '2021-02-27 07:16:32', 'yes', 'yes', 'no'),
(62, 'rochak_shrestha', 'rochak_shrestha', 'asdsa', '2021-02-27 07:16:36', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(19, 'rochak_shrestha', 'rochak2_rochak2', 'Rochak2 Rochak2 liked your post', 'post.php?id=68', '2021-02-26 05:07:24', 'no', 'yes'),
(20, 'rochak2_rochak2', 'rochak_shrestha', 'Rochak Shrestha liked your post', 'post.php?id=77', '2021-02-26 05:52:30', 'no', 'yes'),
(21, 'rochak2_rochak2', 'rochak_shrestha', 'Rochak Shrestha liked your post', 'post.php?id=71', '2021-02-26 05:52:32', 'no', 'yes'),
(22, 'rochak2_rochak2', 'rochak_shrestha', 'Rochak Shrestha liked your post', 'post.php?id=70', '2021-02-26 05:52:37', 'no', 'yes'),
(23, 'rochak2_rochak2', 'rochak_shrestha', 'Rochak Shrestha liked your post', 'post.php?id=70', '2021-02-26 05:52:38', 'no', 'yes'),
(24, 'rochak2_rochak2', 'rochak_shrestha', 'Rochak Shrestha liked your post', 'post.php?id=69', '2021-02-26 05:52:40', 'no', 'yes'),
(25, 'rochak_shrestha', 'rochak2_rochak2', 'Rochak2 Rochak2 commented on your post', 'post.php?id=95', '2021-02-26 11:17:45', 'yes', 'yes'),
(26, 'rochak_shrestha', 'rochak2_rochak2', 'Rochak2 Rochak2 liked your post', 'post.php?id=95', '2021-02-26 11:25:01', 'yes', 'yes'),
(27, 'rochak_shrestha', 'rochak2_rochak2', 'Rochak2 Rochak2 liked your post', 'post.php?id=95', '2021-02-26 11:26:15', 'yes', 'yes'),
(28, 'rochak_shrestha', 'rochak2_rochak2', 'Rochak2 Rochak2 liked your post', 'post.php?id=95', '2021-02-26 11:26:39', 'yes', 'yes'),
(29, 'rochak2_rochak2', 'rochak_shrestha', 'Rochak Shrestha liked your post', 'post.php?id=112', '2021-02-26 12:44:46', 'no', 'yes'),
(30, 'rochak2_rochak2', 'rochak_shrestha', 'Rochak Shrestha commented on your post', 'post.php?id=120', '2021-03-01 06:30:19', 'no', 'yes'),
(31, 'rochak_shrestha', 'rochak2_rochak2', 'Rochak2 Rochak2 commented on a post you commented on', 'post.php?id=120', '2021-03-01 08:53:30', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(66, 'hi', 'rochak_shrestha', 'none', '2021-02-26 05:06:50', 'no', 'yes', 0, ''),
(67, 'haha', 'rochak_shrestha', 'none', '2021-02-26 05:07:01', 'no', 'yes', 0, ''),
(68, 'saassa', 'rochak2_rochak2', 'rochak_shrestha', '2021-02-26 05:07:24', 'no', 'yes', 1, ''),
(69, 'ssss', 'rochak2_rochak2', 'none', '2021-02-26 05:30:45', 'no', 'yes', 1, ''),
(70, 'sss', 'rochak2_rochak2', 'none', '2021-02-26 05:30:54', 'no', 'yes', 2, ''),
(71, 'sss', 'rochak2_rochak2', 'none', '2021-02-26 05:33:50', 'no', 'yes', 2, ''),
(72, 'hi', 'rochak2_rochak2', 'none', '2021-02-26 05:34:07', 'no', 'yes', 0, 'assets/images/posts/6038884fb7207Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(73, 'hi', 'rochak2_rochak2', 'none', '2021-02-26 05:38:19', 'no', 'yes', 0, 'assets/images/posts/6038894b0644fGood_Food_Display_-_NCI_Visuals_Online.jpg'),
(74, 'hi', 'rochak2_rochak2', 'none', '2021-02-26 05:38:23', 'no', 'yes', 0, 'assets/images/posts/6038894ff02a6Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(75, 'hi', 'rochak2_rochak2', 'none', '2021-02-26 05:38:30', 'no', 'yes', 0, 'assets/images/posts/6038895652898Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(76, 'hi', 'rochak2_rochak2', 'none', '2021-02-26 05:38:33', 'no', 'yes', 0, 'assets/images/posts/603889597a230Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(77, 'hi', 'rochak2_rochak2', 'none', '2021-02-26 05:39:19', 'no', 'yes', 2, ''),
(78, 'Frank Kane spent over nine years at Amazon, where he managed and led the development of many of Amazon’s personalized product recommendation technologies. You’ve seen automated recommendations everywhere—on Netflix’s home page, on YouTube, and on Amazon–as these machine learning algorithms learn about your unique interests, and show the best products or content for you as an individual. These technologies have become central to the largest, most prestigious tech employers out there, and by understanding how they work, you’ll become very valuable to them. We cover tried-and-true recommendation algorithms based on neighborhood-based collaborative filtering and work our way up to more modern techniques including matrix factorization and even deep learning with artificial neural networks. Along the way, you’ll learn from Kane’s extensive industry experience and understand the real-world challenges you’ll encounter when applying these algorithms at a large scale and with real-world data. The coding exercises in this course use the Python programming language. We include an intro to Python if you’re new to it, but you’ll need some prior programming experience in order to use this course successfully. We also include a short introduction to deep learning if you are new to the field of artificial intelligence, but you’ll need to be able to understand new computer algorithms. Hope to see you in the course soon!\r\n\r\n\r\n \r\nStyle and Approach\r\nThis course is very hands-on; you’ll develop your framework for evaluating and combining many different recommendation algorithms together, and you’ll even build your own neural networks using TensorFlow to generate recommendations from real-world movie ratings, from real people.\r\n\r\n\r\n \r\n\r\n \r\nWhat You Will Learn\r\nUnderstand and apply user-based and item-based collaborative filtering to recommend items to users\r\nCreate recommendations using deep learning at massive scaled', 'rochak_shrestha', 'none', '2021-02-26 05:44:13', 'no', 'yes', 0, 'assets/images/posts/60388aaddeac7Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(79, 'Frank Kane spent over nine years at Amazon, where he managed and led the development of many of Amazon’s personalized product recommendation technologies. You’ve seen automated recommendations everywhere—on Netflix’s home page, on YouTube, and on Amazon–as these machine learning algorithms learn about your unique interests, and show the best products or content for you as an individual. These technologies have become central to the largest, most prestigious tech employers out there, and by understanding how they work, you’ll become very valuable to them. We cover tried-and-true recommendation algorithms based on neighborhood-based collaborative filtering and work our way up to more modern techniques including matrix factorization and even deep learning with artificial neural networks. Along the way, you’ll learn from Kane’s extensive industry experience and understand the real-world challenges you’ll encounter when applying these algorithms at a large scale and with real-world data. The coding exercises in this course use the Python programming language. We include an intro to Python if you’re new to it, but you’ll need some prior programming experience in order to use this course successfully. We also include a short introduction to deep learning if you are new to the field of artificial intelligence, but you’ll need to be able to understand new computer algorithms. Hope to see you in the course soon!\r\n\r\n\r\n \r\nStyle and Approach\r\nThis course is very hands-on; you’ll develop your framework for evaluating and combining many different recommendation algorithms together, and you’ll even build your own neural networks using TensorFlow to generate recommendations from real-world movie ratings, from real people.\r\n\r\n\r\n \r\n\r\n \r\nWhat You Will Learn\r\nUnderstand and apply user-based and item-based collaborative filtering to recommend items to users\r\nCreate recommendations using deep learning at massive scaled', 'rochak_shrestha', 'none', '2021-02-26 05:44:18', 'no', 'yes', 0, 'assets/images/posts/60388ab26ff70Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(80, 'Frank Kane spent over nine years at Amazon, where he managed and led the development of many of Amazon’s personalized product recommendation technologies. You’ve seen automated recommendations everywhere—on Netflix’s home page, on YouTube, and on Amazon–as these machine learning algorithms learn about your unique interests, and show the best products or content for you as an individual. These technologies have become central to the largest, most prestigious tech employers out there, and by understanding how they work, you’ll become very valuable to them. We cover tried-and-true recommendation algorithms based on neighborhood-based collaborative filtering and work our way up to more modern techniques including matrix factorization and even deep learning with artificial neural networks. Along the way, you’ll learn from Kane’s extensive industry experience and understand the real-world challenges you’ll encounter when applying these algorithms at a large scale and with real-world data. The coding exercises in this course use the Python programming language. We include an intro to Python if you’re new to it, but you’ll need some prior programming experience in order to use this course successfully. We also include a short introduction to deep learning if you are new to the field of artificial intelligence, but you’ll need to be able to understand new computer algorithms. Hope to see you in the course soon!\r\n\r\n\r\n \r\nStyle and Approach\r\nThis course is very hands-on; you’ll develop your framework for evaluating and combining many different recommendation algorithms together, and you’ll even build your own neural networks using TensorFlow to generate recommendations from real-world movie ratings, from real people.\r\n\r\n\r\n \r\n\r\n \r\nWhat You Will Learn\r\nUnderstand and apply user-based and item-based collaborative filtering to recommend items to users\r\nCreate recommendations using deep learning at massive scaled', 'rochak_shrestha', 'none', '2021-02-26 05:44:21', 'no', 'yes', 0, 'assets/images/posts/60388ab5f1094Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(81, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:44:59', 'no', 'yes', 0, 'assets/images/posts/60388adbc4cc9512859.jpg'),
(82, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:45:05', 'no', 'yes', 0, 'assets/images/posts/60388ae133fe1512859.jpg'),
(83, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:45:08', 'no', 'yes', 0, 'assets/images/posts/60388ae422db4512859.jpg'),
(84, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:45:10', 'no', 'yes', 0, 'assets/images/posts/60388ae6d4dda512859.jpg'),
(85, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:45:12', 'no', 'yes', 0, 'assets/images/posts/60388ae8c522c512859.jpg'),
(86, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:45:14', 'no', 'yes', 0, 'assets/images/posts/60388aea59f4c512859.jpg'),
(87, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:45:15', 'no', 'yes', 1, 'assets/images/posts/60388aebe51ec512859.jpg'),
(88, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:45:20', 'no', 'yes', 0, 'assets/images/posts/60388af0b58fc512859.jpg'),
(89, 'jj', 'rochak_shrestha', 'none', '2021-02-26 05:45:24', 'no', 'yes', 0, 'assets/images/posts/60388af4ab8de512859.jpg'),
(90, ';', 'rochak_shrestha', 'none', '2021-02-26 05:45:39', 'no', 'yes', 0, 'assets/images/posts/60388b03a9ae1Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(91, ';', 'rochak_shrestha', 'none', '2021-02-26 05:45:41', 'no', 'yes', 0, 'assets/images/posts/60388b05ed6c9Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(92, 'j', 'rochak2_rochak2', 'none', '2021-02-26 10:51:18', 'no', 'yes', 1, 'assets/images/posts/6038d2a62ed50Good_Food_Display_-_NCI_Visuals_Online.jpg'),
(93, 'hi', 'rochak2_rochak2', 'none', '2021-02-26 10:56:28', 'no', 'yes', 1, ''),
(94, 'x', 'rochak2_rochak2', 'none', '2021-02-26 10:57:22', 'no', 'yes', 0, 'assets/images/posts/6038d4129004bGood_Food_Display_-_NCI_Visuals_Online.jpg'),
(95, 'sadasdasd', 'rochak_shrestha', 'none', '2021-02-26 10:58:25', 'no', 'yes', 0, ''),
(96, 'hey\r\n', 'rochak2_rochak2', 'none', '2021-02-26 12:01:17', 'no', 'yes', 0, ''),
(97, 'hey\r\n', 'rochak2_rochak2', 'none', '2021-02-26 12:01:19', 'no', 'yes', 0, ''),
(98, 'hey\r\n', 'rochak2_rochak2', 'none', '2021-02-26 12:01:22', 'no', 'yes', 0, ''),
(99, 'assasas', 'rochak2_rochak2', 'none', '2021-02-26 12:24:37', 'no', 'yes', 0, ''),
(100, 'assasas', 'rochak2_rochak2', 'none', '2021-02-26 12:24:40', 'no', 'yes', 0, ''),
(101, 'asaasas', 'rochak2_rochak2', 'none', '2021-02-26 12:25:57', 'no', 'no', 0, ''),
(102, 'assa', 'rochak2_rochak2', 'none', '2021-02-26 12:26:06', 'no', 'yes', 0, ''),
(103, 'assasa', 'rochak2_rochak2', 'none', '2021-02-26 12:26:09', 'no', 'yes', 0, ''),
(104, 'sasasa', 'rochak2_rochak2', 'none', '2021-02-26 12:26:11', 'no', 'yes', 0, ''),
(105, 'asassa', 'rochak2_rochak2', 'none', '2021-02-26 12:26:12', 'no', 'yes', 0, ''),
(106, 'asassa', 'rochak2_rochak2', 'none', '2021-02-26 12:26:15', 'no', 'yes', 0, ''),
(107, 'asassa', 'rochak2_rochak2', 'none', '2021-02-26 12:26:17', 'no', 'yes', 0, ''),
(108, 'szsaas', 'rochak2_rochak2', 'none', '2021-02-26 12:29:24', 'no', 'no', 0, ''),
(109, 'assa', 'rochak2_rochak2', 'none', '2021-02-26 12:29:25', 'no', 'no', 0, ''),
(110, 'assa', 'rochak2_rochak2', 'none', '2021-02-26 12:29:27', 'no', 'no', 0, ''),
(111, 'assa', 'rochak2_rochak2', 'none', '2021-02-26 12:29:28', 'no', 'no', 0, ''),
(112, 'ed', 'rochak2_rochak2', 'none', '2021-02-26 12:38:40', 'no', 'no', 1, 'assets/images/posts/6038ebd08e13aGood_Food_Display_-_NCI_Visuals_Online.jpg'),
(113, 'aaa', 'rochak_shrestha', 'none', '2021-02-26 14:59:50', 'no', 'no', 1, 'assets/images/posts/60390ce617d7dkick-1.jpg'),
(114, 'assaas', 'rochak_shrestha', 'none', '2021-02-27 07:15:08', 'no', 'yes', 0, ''),
(115, 'assaas', 'rochak_shrestha', 'none', '2021-02-27 07:15:21', 'no', 'yes', 0, ''),
(116, 'assaas', 'rochak_shrestha', 'none', '2021-02-27 07:15:27', 'no', 'yes', 0, ''),
(117, 'wqwqas', 'rochak_shrestha', 'none', '2021-02-27 07:15:33', 'no', 'yes', 0, ''),
(118, 'assasa', 'rochak_shrestha', 'none', '2021-02-27 07:15:37', 'no', 'yes', 0, ''),
(119, 'mom\r\n', 'rochak2_rochak2', 'none', '2021-03-01 02:37:19', 'no', 'yes', 0, 'assets/images/posts/603c535f15c69155291255_1116264025492768_1840297884627960162_n.jpg'),
(120, 'momo\r\n', 'rochak2_rochak2', 'none', '2021-03-01 02:38:09', 'no', 'no', 0, 'assets/images/posts/603c53919c376momos-759.jpg'),
(121, 'momo\r\n', 'rochak2_rochak2', 'none', '2021-03-01 02:38:12', 'no', 'yes', 0, 'assets/images/posts/603c5394543cbmomos-759.jpg'),
(122, 'hi', 'rochak_shrestha', 'none', '2021-03-01 06:35:11', 'no', 'no', 0, ''),
(123, 'aa', 'rochak_shrestha', 'none', '2021-03-01 08:35:46', 'no', 'yes', 0, 'assets/images/posts/603ca76248ea8Screenshot (3).png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL,
  `gender` varchar(3) NOT NULL,
  `Age` int(11) NOT NULL,
  `district` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`, `gender`, `Age`, `district`) VALUES
(11, 'Rochak', 'Shrestha', 'rochak_shrestha', 'Jordonnagato@gmail.com', '4c8b40018f893d4384fcfe60302cb46a', '2021-02-25', 'assets/images/profile_pics/rochak_shrestha45418bef290791682e5f83877204d947n.jpeg', 29, 2, 'no', ',rochak2_rochak2,', '', 0, ''),
(12, 'Rochak2', 'Rochak2', 'rochak2_rochak2', 'Rochak2@gmail.com', '4c8b40018f893d4384fcfe60302cb46a', '2021-02-25', 'assets/images/profile_pics/rochak2_rochak2ef0ad9e56c0b1872743842ff7d14a09dn.jpeg', 34, 11, 'no', ',rochak_shrestha,', '', 0, ''),
(13, 'Asdsdasadasd', 'Asdasaasd', 'asdsdasadasd_asdasaasd', 'Aaa@aaa.com', '4c8b40018f893d4384fcfe60302cb46a', '2021-02-26', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'yes', ',', '', 0, ''),
(14, 'Aaa', 'Aaa', 'aaa_aaa', 'Bbb@bbb.com', '4c8b40018f893d4384fcfe60302cb46a', '2021-02-26', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',', '', 0, ''),
(15, 'Demo', 'Demo', 'demo_demo', 'Demo@demo.com', '4c8b40018f893d4384fcfe60302cb46a', '2021-02-26', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
