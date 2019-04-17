-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2019 at 08:48 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Technology', '2019-04-13 16:04:37'),
(2, 'Gaming', '2019-04-13 16:04:37'),
(3, 'Auto', '2019-04-13 16:04:37'),
(4, 'Entertainment', '2019-04-13 16:04:37'),
(5, 'Books', '2019-04-13 16:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `author`, `created_at`) VALUES
(1, 1, 'Bad Blood: Secrets and Lies in a Silicon Valley Startup by John Carreyrou', 'Bad Blood reveals how Elizabeth Holmes, once the most successful female entrepreneur in Silicon Valley, grabbed the attention and capital of investors with a medical device that promised to transform the medical industry by making blood testing simpler. But the technology didn\'t work.', 'John Carreyrou', '2019-04-13 16:05:09'),
(2, 2, 'Otherworld:Last Reality', 'Simon thought Otherworld was a game. Turns out he knew nothing. Otherworld is next phase of reality. It\'s everything you have ever wanted.', 'Jason Segel', '2019-04-13 16:05:09'),
(3, 1, 'Harnessing our Digital Future ', 'This book, written by MIT researchers Andrew McAfee and Erik Brynjolfsson, is a must read for those in tech or business. It focuses on how machine intelligence, products and platforms, and the ability to harness the crowd are informing the future of business, including how and why industry incumbents are being disrupted by younger upstarts and why the wisdom of crowds is more important than ever. ', 'Sam Smithby Andrew McAfee and Erik Brynjolfsson', '2019-04-13 16:05:09'),
(4, 4, 'Wanderlust : My Experiments with Travel', 'Travel is a balm for the soul. Lesser known is that travel experiences can be really amusing when it comes to unimaginably comic situations and hilarious interactions with people from other parts of the world. Wanderlust explores these fun aspects of travel while offering a completely Indian perspective on life outside India. ', 'Sandhhya Iyer', '2019-04-13 16:05:09'),
(5, 4, 'Hot Tea Across India', 'The book, Hot Tea Across India, is a travelogue written by Rishad Saam Mehta. The book captures many of his adventures on the roads of India with a cup of chai. Rishad says, be it Kashmir or Kanyakumari, there can be no place where there is no tea.', 'Rishad Saam Mehta ', '2019-04-13 16:05:09'),
(6, 1, 'Innovation and Its Enemies: Why People Resist New Technologies', 'This book is a fascinating, historical exploration of how technologies of varying scale have been received and the worries that are often associated with them, exploring themes such as inequality along the way. It then links these concerns to emerging technologies today and how to manage shifting public expectations towards new tech. ', 'Calestous Juma', '2019-04-13 16:05:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
