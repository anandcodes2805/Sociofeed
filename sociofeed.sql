-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 07:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sociofeed`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(48, 14, 14, 'nice weather and photo tooo 😍😍', '2023-05-05 13:34:25'),
(49, 15, 14, 'may the holy lord bless you all ', '2023-05-05 13:37:11'),
(50, 16, 12, 'next trip pe bhul mat jaana', '2023-05-05 14:04:57'),
(51, 16, 14, 'no chance brother', '2023-05-05 14:05:26'),
(52, 17, 12, 'Happy buddh purnima', '2023-05-05 17:21:28'),
(53, 15, 12, 'gug', '2023-05-08 16:26:55'),
(54, 20, 12, 'So Beautiful', '2023-05-11 21:41:06'),
(55, 20, 14, 'Welcome to this platform', '2023-05-11 21:42:11'),
(56, 21, 14, 'Really soothing movie.', '2023-05-11 21:42:27'),
(57, 22, 16, 'OO stree jaldii lana', '2023-05-11 21:43:35'),
(58, 21, 15, 'Fantastic movie', '2023-05-11 21:48:31'),
(59, 23, 12, 'Beauty looking at beauty 😊😘', '2023-05-12 06:07:08'),
(60, 22, 12, 'Beautiful pic', '2023-05-12 07:17:13'),
(61, 24, 16, 'Memories', '2023-05-12 08:42:51'),
(62, 20, 12, 'Absolute beauty', '2023-05-26 13:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(77, 14, 12),
(78, 15, 14),
(79, 15, 12),
(81, 14, 15),
(82, 16, 14),
(83, 16, 12),
(84, 16, 3),
(85, 12, 16),
(86, 12, 14),
(87, 18, 12),
(88, 12, 18),
(89, 16, 18),
(90, 14, 18),
(92, 19, 16),
(93, 19, 18),
(94, 20, 18),
(95, 12, 20),
(96, 14, 20),
(97, 16, 20),
(98, 19, 20),
(99, 15, 20),
(100, 21, 16),
(101, 21, 15),
(102, 21, 20),
(103, 21, 14),
(104, 12, 21),
(105, 22, 12),
(106, 22, 14),
(107, 22, 15),
(108, 12, 22),
(109, 23, 22),
(110, 23, 24),
(111, 12, 24);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(91, 14, 14),
(92, 15, 12),
(93, 15, 14),
(94, 16, 12),
(95, 16, 15),
(96, 15, 15),
(97, 14, 15),
(98, 17, 15),
(99, 17, 14),
(100, 17, 12),
(101, 14, 12),
(102, 19, 18),
(103, 19, 14),
(104, 22, 12),
(105, 21, 12),
(106, 20, 12),
(107, 22, 14),
(108, 21, 14),
(109, 20, 14),
(110, 22, 16),
(111, 21, 16),
(112, 20, 16),
(113, 22, 19),
(114, 21, 19),
(115, 20, 19),
(116, 22, 15),
(117, 21, 15),
(118, 20, 15),
(119, 22, 21),
(120, 21, 21),
(121, 20, 21),
(122, 18, 21),
(123, 23, 12),
(124, 24, 16),
(125, 24, 22),
(126, 26, 23),
(127, 27, 24),
(128, 25, 23),
(129, 27, 12),
(130, 19, 12),
(131, 18, 12);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `msg`, `read_status`, `created_at`) VALUES
(41, 12, 14, 'hello anand', 1, '2023-05-05 14:00:58'),
(42, 14, 12, 'shaheer kaisa hai bhai ?', 1, '2023-05-05 14:01:31'),
(43, 14, 12, 'sahi hu bro', 1, '2023-05-05 14:09:18'),
(44, 15, 12, 'Hello brother ', 1, '2023-05-05 17:09:29'),
(45, 15, 14, 'Eid ki party kab dega bhai?', 1, '2023-05-05 17:10:08'),
(46, 12, 15, 'Hii', 1, '2023-05-05 17:10:26'),
(47, 14, 15, 'jab bolo', 1, '2023-05-05 17:11:02'),
(48, 16, 14, 'hello bhai', 1, '2023-05-08 16:36:54'),
(49, 12, 16, 'Hello ayan bhai', 1, '2023-05-10 18:50:58'),
(50, 21, 14, 'party baki  hai', 1, '2023-05-12 06:39:34'),
(51, 22, 12, 'kaisa hai bhai', 1, '2023-05-20 05:24:42'),
(52, 23, 22, 'hi ra', 0, '2023-05-20 05:39:14'),
(53, 12, 22, 'Ekdum mast', 0, '2023-05-26 13:21:28'),
(54, 14, 21, 'not possible', 0, '2023-05-26 13:53:28'),
(55, 14, 12, 'patna aa gaya?', 1, '2023-05-26 13:53:44'),
(56, 12, 14, 'yes bhai', 0, '2023-05-26 13:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(99, 14, 'started following you !', '2023-05-05 13:29:33', 12, 1, '0'),
(100, 12, 'started following you !', '2023-05-05 13:31:26', 14, 1, '0'),
(101, 12, 'liked your post !', '2023-05-05 13:34:45', 14, 1, '15'),
(102, 12, 'commented on your post', '2023-05-05 13:37:11', 14, 1, '15'),
(103, 14, 'liked your post !', '2023-05-05 14:04:04', 12, 1, '16'),
(104, 14, 'commented on your post', '2023-05-05 14:04:57', 12, 1, '16'),
(105, 14, 'started following you !', '2023-05-05 17:07:37', 15, 1, '0'),
(106, 12, 'started following you !', '2023-05-05 17:07:44', 15, 1, '0'),
(107, 15, 'started following you !', '2023-05-05 17:10:38', 12, 1, '0'),
(108, 15, 'started following you !', '2023-05-05 17:12:29', 14, 1, '0'),
(109, 14, 'liked your post !', '2023-05-05 17:12:47', 15, 1, '16'),
(110, 12, 'liked your post !', '2023-05-05 17:12:52', 15, 1, '15'),
(111, 14, 'liked your post !', '2023-05-05 17:12:56', 15, 1, '14'),
(112, 15, 'liked your post !', '2023-05-05 17:20:59', 14, 1, '17'),
(113, 15, 'liked your post !', '2023-05-05 17:21:11', 12, 1, '17'),
(114, 15, 'commented on your post', '2023-05-05 17:21:28', 12, 1, '17'),
(115, 14, 'liked your post !', '2023-05-08 16:26:43', 12, 1, '14'),
(116, 14, 'started following you !', '2023-05-08 16:36:29', 16, 1, '0'),
(117, 12, 'started following you !', '2023-05-09 09:38:13', 16, 1, '0'),
(119, 16, 'started following you !', '2023-05-10 18:50:38', 12, 1, '0'),
(120, 14, 'Unfollowed you !', '2023-05-10 19:12:54', 12, 1, '0'),
(121, 14, 'started following you !', '2023-05-10 19:13:10', 12, 1, '0'),
(122, 12, 'started following you !', '2023-05-10 23:18:21', 18, 1, '0'),
(123, 18, 'started following you !', '2023-05-11 06:55:55', 12, 0, '0'),
(124, 18, 'started following you !', '2023-05-11 06:56:17', 16, 0, '0'),
(125, 18, 'started following you !', '2023-05-11 06:57:07', 14, 0, '0'),
(126, 18, 'liked your post !', '2023-05-11 06:57:24', 14, 0, '19'),
(127, 15, 'Unfollowed you !', '2023-05-11 13:54:49', 12, 1, '0'),
(128, 12, 'started following you !', '2023-05-11 13:57:21', 19, 1, '0'),
(129, 16, 'started following you !', '2023-05-11 13:57:24', 19, 1, '0'),
(130, 18, 'started following you !', '2023-05-11 13:57:25', 19, 0, '0'),
(131, 12, 'Unfollowed you !', '2023-05-11 14:32:42', 19, 1, '0'),
(132, 18, 'started following you !', '2023-05-11 21:34:54', 20, 0, '0'),
(133, 20, 'started following you !', '2023-05-11 21:40:40', 12, 1, '0'),
(134, 20, 'liked your post !', '2023-05-11 21:40:45', 12, 1, '22'),
(135, 20, 'liked your post !', '2023-05-11 21:40:48', 12, 1, '21'),
(136, 20, 'liked your post !', '2023-05-11 21:40:51', 12, 1, '20'),
(137, 20, 'commented on your post', '2023-05-11 21:41:06', 12, 1, '20'),
(138, 20, 'started following you !', '2023-05-11 21:41:30', 14, 1, '0'),
(139, 20, 'liked your post !', '2023-05-11 21:41:36', 14, 1, '22'),
(140, 20, 'liked your post !', '2023-05-11 21:41:41', 14, 1, '21'),
(141, 20, 'liked your post !', '2023-05-11 21:41:44', 14, 1, '20'),
(142, 20, 'commented on your post', '2023-05-11 21:42:11', 14, 1, '20'),
(143, 20, 'commented on your post', '2023-05-11 21:42:27', 14, 1, '21'),
(144, 20, 'started following you !', '2023-05-11 21:43:09', 16, 1, '0'),
(145, 20, 'liked your post !', '2023-05-11 21:43:18', 16, 1, '22'),
(146, 20, 'commented on your post', '2023-05-11 21:43:35', 16, 1, '22'),
(147, 20, 'liked your post !', '2023-05-11 21:43:43', 16, 1, '21'),
(148, 20, 'liked your post !', '2023-05-11 21:43:46', 16, 1, '20'),
(149, 20, 'started following you !', '2023-05-11 21:44:42', 19, 1, '0'),
(150, 20, 'liked your post !', '2023-05-11 21:44:52', 19, 1, '22'),
(151, 20, 'liked your post !', '2023-05-11 21:44:55', 19, 1, '21'),
(152, 20, 'liked your post !', '2023-05-11 21:44:58', 19, 1, '20'),
(153, 20, 'started following you !', '2023-05-11 21:48:06', 15, 1, '0'),
(154, 20, 'liked your post !', '2023-05-11 21:48:11', 15, 1, '22'),
(155, 20, 'liked your post !', '2023-05-11 21:48:14', 15, 1, '21'),
(156, 20, 'commented on your post', '2023-05-11 21:48:31', 15, 1, '21'),
(157, 20, 'liked your post !', '2023-05-11 21:48:35', 15, 1, '20'),
(158, 16, 'started following you !', '2023-05-11 21:50:02', 21, 1, '0'),
(159, 15, 'started following you !', '2023-05-11 21:50:10', 21, 1, '0'),
(160, 20, 'started following you !', '2023-05-11 21:50:16', 21, 1, '0'),
(161, 20, 'liked your post !', '2023-05-11 21:50:22', 21, 1, '22'),
(162, 20, 'liked your post !', '2023-05-11 21:50:25', 21, 1, '21'),
(163, 20, 'liked your post !', '2023-05-11 21:50:28', 21, 1, '20'),
(164, 16, 'liked your post !', '2023-05-11 21:50:38', 21, 1, '18'),
(165, 20, 'liked your post !', '2023-05-12 06:05:57', 12, 1, '23'),
(166, 20, 'commented on your post', '2023-05-12 06:07:08', 12, 1, '23'),
(167, 14, 'started following you !', '2023-05-12 06:39:52', 21, 1, '0'),
(168, 21, 'started following you !', '2023-05-12 06:40:13', 12, 1, '0'),
(169, 20, 'commented on your post', '2023-05-12 07:17:13', 12, 0, '22'),
(170, 12, 'liked your post !', '2023-05-12 07:21:05', 16, 1, '24'),
(171, 12, 'commented on your post', '2023-05-12 08:42:51', 16, 1, '24'),
(172, 12, 'started following you !', '2023-05-20 05:24:23', 22, 1, '0'),
(173, 14, 'started following you !', '2023-05-20 05:24:24', 22, 1, '0'),
(174, 15, 'started following you !', '2023-05-20 05:24:25', 22, 0, '0'),
(175, 12, 'liked your post !', '2023-05-20 05:24:55', 22, 1, '24'),
(176, 22, 'started following you !', '2023-05-20 05:26:58', 12, 1, '0'),
(177, 22, 'started following you !', '2023-05-20 05:38:32', 23, 0, '0'),
(178, 24, 'started following you !', '2023-05-20 05:47:13', 23, 0, '0'),
(179, 22, 'liked your post !', '2023-05-20 06:51:35', 23, 0, '25'),
(180, 24, 'started following you !', '2023-05-26 13:21:42', 12, 0, '0'),
(181, 24, 'liked your post !', '2023-05-26 13:21:48', 12, 0, '27'),
(182, 20, 'commented on your post', '2023-05-26 13:22:14', 12, 0, '20'),
(183, 18, 'liked your post !', '2023-05-26 13:22:25', 12, 0, '19'),
(184, 16, 'liked your post !', '2023-05-26 13:22:28', 12, 0, '18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(14, 14, '1683293160taj.jpeg', 'Visited wonderful taj today. Really marvellous', '2023-05-05 13:26:00'),
(15, 12, '1683293346Group photo.jpeg', 'With the gang', '2023-05-05 13:29:06'),
(16, 14, '1683295432WhatsApp Image 2023-05-05 at 19.20.56.jpeg', 'fun at Kanpur\'s  Blue World Park 💦💦', '2023-05-05 14:03:52'),
(17, 15, '16833072309f65d2c3-9e2e-449f-84c6-452615790e13.jpg', 'HAPPY  BUDDH  PURNIMA', '2023-05-05 17:20:30'),
(18, 16, '1683563778Agra station.jpeg', 'Visited agra today.', '2023-05-08 16:36:18'),
(19, 18, '1683761506new atal.png', 'ऑपरेशन शक्ति के २५ साल पूरे होने एवम राष्ट्रीय प्रौद्योगिकी दिवस के इस शुभ अवसर पे मैं सम्पूर्ण राष्ट्र को सुभकामना भेंट करता हूँ | ईश्वर के असीम आशीर्वाद से मैं भी इस राष्ट्र निर्माण के कार्य का भागी बन पाया |', '2023-05-10 23:31:46'),
(20, 20, '1683840883shraddha.jpg', 'Just a random pic to commemorate my journey on this new platform.  \r\nDo connect with me for more updates. ❤️❤️', '2023-05-11 21:34:43'),
(21, 20, '1683841061tjmm.jpg', 'Thanking you all for the love shown by you all for TU JHOOTHI  MEIN MAKKAR\r\n', '2023-05-11 21:37:41'),
(22, 20, '1683841218stree.jpg', 'Hoping to receive your love with Stree 2. 🤞🤞', '2023-05-11 21:40:18'),
(23, 20, '1683871541WhatsApp Image 2022-07-26 at 8.33.41 PM.jpeg', 'Beautiful Architecture 😍😍  ❤️❤️', '2023-05-12 06:05:41'),
(24, 12, '1683875898317839002_624574622691210_8635519223061591696_n.jpg', 'Darshan effe', '2023-05-12 07:18:18'),
(25, 22, '1684560341ritik poster.jpeg', 'meet my friend', '2023-05-20 05:25:41'),
(26, 23, '1684561262postallu.jpg', '#Pushpa2', '2023-05-20 05:41:02'),
(27, 24, '1684561584aishwarya 2.jpg', '#bhaaijaan', '2023-05-20 05:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL DEFAULT 1 COMMENT '0=not verified,1=active,2=blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`) VALUES
(12, 'Anand', 'Choudhary', 1, 'theanandchoudhary28@gmail.com', 'anand_codes28', '269d53a1a8663cf4c2848f503cea5225', '1683294785Taj profile pic.jpeg', '2023-05-05 12:47:36', '2023-05-05 13:53:06', 1),
(14, 'Shaheer', 'Rafeeq', 1, 'iit2021084@iiita.ac.in', 'shaheer123', '6199031a5f810c809d20cd3bb2562f0f', '1683295132IMG20230402103943-min.jpg', '2023-05-05 13:00:34', '2023-05-05 13:58:52', 1),
(15, 'Dheeraj', 'Devnani', 1, 'iit2021080@iiita.ac.in', 'dheeraj123', 'f0dee8f965a7d81310b4cbb3385676ed', '1683306427dhee.png', '2023-05-05 17:02:11', '2023-05-05 17:07:07', 1),
(16, 'Ayan ', 'Ahmed', 1, 'iit2021090@iiita.ac.in', 'ayan123', '953abc3e89ba9c91bc855c9a578fefa4', 'default_profile.jpg', '2023-05-08 16:31:47', '2023-05-08 16:35:01', 1),
(18, 'Atal', 'Bihari', 1, 'theatal.bihari.2004@gmail.com', 'atal_bihari', '6ab8bc471aec3545622e1efe1ca1419a', 'default_profile.jpg', '2023-05-10 23:17:52', '2023-05-10 23:17:52', 1),
(19, 'Adeshpal ', 'Singh', 1, 'iit2021018@iiita.ac.in', 'adesh123', '3524948ae3e686a0405756b263ca092c', 'default_profile.jpg', '2023-05-11 13:56:53', '2023-05-11 13:56:53', 1),
(20, 'Shraddha', 'Kapoor', 2, 'shraddha_promotional@gmail.com', 'shraddha_kapoor', 'e97c8698ff01a8c6a6c748b4a0aeecee', '1683840927shraddha.jpg', '2023-05-11 21:31:21', '2023-05-11 21:35:27', 1),
(21, 'Ujjwal', 'Pandram', 1, 'iit2021034@iiita.ac.in', 'ujjwal', '58f80f88e4c8a24db7475894e70ebe5b', 'default_profile.jpg', '2023-05-11 21:49:32', '2023-05-11 21:49:32', 1),
(22, 'Shiva', 'Harshit', 1, 'iib2021029@iiita.ac.in', 'shiva', '827ccb0eea8a706c4c34a16891f84e7b', 'default_profile.jpg', '2023-05-20 05:24:08', '2023-05-20 05:24:08', 1),
(23, 'banoth', 'naveen', 1, 'bnaveen@gmail.com', 'bnaveen', 'e10adc3949ba59abbe56e057f20f883e', '1684561094kohli.jpg', '2023-05-20 05:36:36', '2023-05-20 05:38:14', 1),
(24, 'aishwarya ', 'rai', 2, 'aishwaryabachan@gmail.com', 'aishwarya_rai', 'dcddb75469b4b4875094e14561e573d8', '1684561529aishwarya.jpg', '2023-05-20 05:42:20', '2023-05-20 05:45:29', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
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
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
