-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 04, 2017 at 09:45 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `videoManagement`
--
CREATE DATABASE IF NOT EXISTS `videoManagement` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `videoManagement`;

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `connect_with` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `f_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `folderName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `if_deletable` tinyint(1) NOT NULL,
  `if_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`f_id`, `created_at`, `updated_at`, `u_id`, `folderName`, `parent_id`, `if_deletable`, `if_public`) VALUES
(4, '2017-07-19 08:26:21', '2017-07-19 08:26:21', 2, 'home', 4, 0, 0),
(5, '2017-07-19 08:26:21', '2017-07-19 08:26:21', 2, 'gift', 4, 0, 0),
(6, '2017-07-19 08:26:21', '2017-07-19 08:26:21', 2, 'from public', 4, 0, 0),
(7, '2017-07-19 08:26:39', '2017-07-19 08:26:39', 3, 'home', 7, 0, 0),
(8, '2017-07-19 08:26:39', '2017-07-19 08:26:39', 3, 'gift', 7, 0, 0),
(9, '2017-07-19 08:26:39', '2017-07-19 08:26:39', 3, 'from public', 7, 0, 0),
(10, '2017-08-04 00:41:08', '2017-08-04 00:41:08', 4, 'home', 10, 0, 0),
(11, '2017-08-04 00:41:08', '2017-08-04 00:41:08', 4, 'gift', 10, 0, 0),
(12, '2017-08-04 00:41:08', '2017-08-04 00:41:08', 4, 'from public', 10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gift_boxes`
--

CREATE TABLE `gift_boxes` (
  `g_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `item_type` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `l_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lp_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lesson_playlists`
--

CREATE TABLE `lesson_playlists` (
  `l_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `record` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_playlists`
--

INSERT INTO `lesson_playlists` (`l_id`, `created_at`, `updated_at`, `l_name`, `u_id`, `f_id`, `record`, `if_public`) VALUES
(1, '2017-07-20 03:58:01', '2017-07-28 09:03:57', 'test', 3, 7, '', 0),
(2, '2017-07-20 03:58:05', '2017-07-20 03:58:05', 'testeste', 3, 7, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_06_30_052502_create_table_users', 1),
(2, '2017_07_04_183319_create_folders_table', 1),
(3, '2017_07_05_143604_create_connections_table', 1),
(4, '2017_07_06_060608_create_setting_table', 1),
(5, '2017_07_06_060720_create_song_playlists_table', 1),
(6, '2017_07_06_060857_create_gift_boxes_table', 1),
(7, '2017_07_06_061455_create_lessons_table', 1),
(8, '2017_07_06_061507_create_songs_table', 1),
(9, '2017_07_06_072031_create_sessions_table', 1),
(10, '2017_07_06_072736_create_sequences_table', 1),
(11, '2017_07_06_074805_create_lesson_playlists_table', 1),
(12, '2017_07_19_084721_create_q_n_a_s_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `q_n_a_s`
--

CREATE TABLE `q_n_a_s` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency` float NOT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `q_n_a_s`
--

INSERT INTO `q_n_a_s` (`id`, `created_at`, `updated_at`, `question`, `answer`, `frequency`, `keyword`, `category`) VALUES
(1, '2017-07-18 17:00:00', '2017-07-28 20:32:13', 'How to add friend like Facebook?', 'Actually, there is no friend here. However, we can connect to people by going to <code>Your connections</code> in sidebar, search the name of people you want to connect with. Then press the symbol <code>+</code> on the top right of the name.', 2.1, 'friend,friends,connection,connections,unfriend', 'how'),
(2, '2017-07-18 17:00:00', '2017-07-28 08:45:41', 'I clicked on button \"receive gift\" but I don\'t know where it goes.', 'After you receive a gift, the system create a new copy of playlist and move it to folder <code>gift</code> in your home directory.', 4.8, 'gift,receive,reject', 'how'),
(3, '2017-07-18 17:00:00', '2017-07-28 08:45:31', 'I hate so much when strange people connect with me.', 'Currently, we don\'t have function to avoid this problem. However, you can click on the symbol <code>&times;</code> on the top right of the people\'s name that you want to disconnect.', 5.4, 'unfriend,disconnect,strange,people,weird', 'development');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `sq_id` int(11) NOT NULL,
  `sequence_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `play_favorite` tinyint(1) NOT NULL,
  `sq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`created_at`, `updated_at`, `u_id`, `play_favorite`, `sq_id`) VALUES
('2017-07-19 08:26:21', '2017-07-28 20:48:07', 2, 0, 3),
('2017-07-19 08:26:39', '2017-07-28 08:43:10', 3, 1, 3),
('2017-08-04 00:41:08', '2017-08-04 00:41:08', 4, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `s_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_favorite` tinyint(1) NOT NULL,
  `duration` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`s_id`, `created_at`, `updated_at`, `title`, `sp_id`, `url`, `if_favorite`, `duration`, `u_id`) VALUES
(1, '2017-07-28 08:42:32', '2017-07-28 08:43:08', 'Unofficial Mobirise Forum', 1, 'A_ESajxy8sQ', 1, 31, 3),
(3, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamuth - Prortt  Phnom Sampeo', 3, '9LgXRnwBekM', 0, 267, 2),
(4, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamuth -    Tuol Kok Tuol Kamm', 3, 'QmEb_NlnfGk', 0, 232, 2),
(5, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamuth-អ៊ុតសក់-Uth Sorkk', 3, 'AMUUd0TiXUc', 0, 190, 2),
(6, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamuth -   Oh Thormm Cheat Euy', 3, 'nU3mqnulHEw', 0, 216, 2),
(7, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamuth  -   Voursa Dorll Heuy', 3, '_t4buv_3_sA', 0, 233, 2),
(8, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamuth   Dorm Rey Sor Nhee', 3, 'aJaiVdLaIU0', 0, 295, 2),
(9, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Mun Neung Kleat Kay.wmv', 3, 'sKdQRfafUrk', 0, 277, 2),
(10, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Porp Sam Nang -fortune', 3, 'pJqczB2H7zw', 0, 211, 2),
(11, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'SUGAR SUGAR-KHMER VERSION by Sinn Sisamuth', 3, 'v5fWTQvUxDQ', 0, 155, 2),
(12, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Kolap Pailin - Sin Sisamouth', 3, 'WA2lTPLG430', 0, 194, 2),
(13, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Somnaov Kakey - Sinn Sisamouth', 3, 'aNRFG9oy9cU', 0, 151, 2),
(14, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Keng Youl Enrung', 3, 'ACSduhuFmfc', 0, 181, 2),
(15, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Champa Banteay Dek', 3, 'BZT4OfEdGGQ', 0, 217, 2),
(16, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Chet Nou Ket Prathna', 3, 'fipkuWSLNTE', 0, 205, 2),
(17, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Gompot Doung Chet', 3, '4jnyL4VdCaw', 0, 177, 2),
(18, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Bundoum Snae', 3, 'qznGRBuugmU', 0, 201, 2),
(19, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Arun Heuy Keo Bong Euy', 3, 'YZs9Sf0GXPQ', 0, 165, 2),
(20, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Neavea Chivit', 3, 'mpirQIVTOus', 0, 137, 2),
(21, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Veasna Chaov Chet', 3, 'zSxluSoG5lM', 0, 161, 2),
(22, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Ae Nah Thou Tansor', 3, 'qxnwG8IP3Bg', 0, 281, 2),
(23, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - Mjas Klin Nov Ti Nah', 3, 'lc9rQo4w9eA', 0, 277, 2),
(24, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - On Euy Srey On (1)', 3, '7Ak7WVXbV9w', 0, 325, 2),
(25, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Sin Sisamouth - On Euy Srey On (2)', 3, 'PbXh573bfHs', 0, 237, 2),
(26, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Orn Euy Srey Orn', 3, 'pmidmrf4vtM', 0, 282, 2),
(27, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'RONG JUM THNGAY SHATH - SINN SISAMOUTH', 3, '6o1yesGeVsA', 0, 228, 2),
(28, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'Jomreang Et Preang Thok - Sinn Sisamouth', 3, 'rjuPA5Dcc8M', 0, 204, 2),
(29, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'ដងស្ទឹងសង្កែ Dong steung songkere - Sinn Sisamouth', 3, 'mjwZQMu1LIY', 0, 248, 2),
(30, '2017-07-28 20:37:40', '2017-07-28 20:37:40', 'A Tribute to DY SAVETH since 1962(Born 1944)', 3, 'nJXSQ_cZadc', 0, 167, 2),
(31, '2017-08-04 00:42:58', '2017-08-04 00:42:58', 'Unofficial Mobirise Forum', 4, 'A_ESajxy8sQ', 0, 31, 4);

-- --------------------------------------------------------

--
-- Table structure for table `song_playlists`
--

CREATE TABLE `song_playlists` (
  `sp_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `if_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_playlists`
--

INSERT INTO `song_playlists` (`sp_id`, `created_at`, `updated_at`, `sp_name`, `u_id`, `f_id`, `if_public`) VALUES
(1, '2017-07-20 03:38:41', '2017-08-04 00:42:43', 'test5', 3, 7, 1),
(2, '2017-07-20 03:56:37', '2017-07-28 20:21:46', 'test it', 3, 7, 0),
(3, '2017-07-28 20:28:11', '2017-07-28 20:29:59', 'test5', 2, 4, 0),
(4, '2017-08-04 00:42:58', '2017-08-04 00:42:58', 'test5', 4, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `username`, `email`, `password`, `profile`, `description`, `remember_token`) VALUES
(2, '2017-07-19 08:26:21', '2017-07-28 20:35:56', 'Nimol', 'nimol@gmail.com', 'q5xJ.LvOVUvtU', 'img/photo/default.png', 'My friends, how are you?', NULL),
(3, '2017-07-19 08:26:39', '2017-07-28 20:23:54', 'Thyrith', 'thyrith@gmail.com', 'q5xJ.LvOVUvtU', 'img/photo/1501298634id3.jpg', '<div><br></div><div>hello all my friend</div>', NULL),
(4, '2017-08-04 00:41:08', '2017-08-04 00:41:08', 'test', 'test', 'q54mkQyGCLvHs', 'img/photo/default.png', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `gift_boxes`
--
ALTER TABLE `gift_boxes`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `lesson_playlists`
--
ALTER TABLE `lesson_playlists`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `q_n_a_s`
--
ALTER TABLE `q_n_a_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `song_playlists`
--
ALTER TABLE `song_playlists`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `f_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gift_boxes`
--
ALTER TABLE `gift_boxes`
  MODIFY `g_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `l_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lesson_playlists`
--
ALTER TABLE `lesson_playlists`
  MODIFY `l_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `q_n_a_s`
--
ALTER TABLE `q_n_a_s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `s_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `song_playlists`
--
ALTER TABLE `song_playlists`
  MODIFY `sp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;