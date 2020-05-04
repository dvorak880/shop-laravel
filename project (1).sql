-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: פברואר 11, 2020 בזמן 05:29 PM
-- גרסת שרת: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- מבנה טבלה עבור טבלה `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'pandora', 'pandora cat', 'pandora.jpg', '2019-12-04 00:00:00', '2020-01-29 17:12:32'),
(2, 'svarovski', 'svarovski cat', 'svarovski.jpg', '2019-12-04 00:00:00', '2019-12-04 18:55:00'),
(21, 'Royaly', 'royalti cat', 'royal.jpg', '2020-02-04 19:10:41', '2020-02-04 19:10:41');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `subtotal` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `content`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"7\":{\"id\":7,\"name\":\"E2180J\",\"price\":250,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"8\":{\"id\":8,\"name\":\"P26800\",\"price\":340,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"9\":{\"id\":9,\"name\":\"A0568BY\",\"price\":500,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '1090', '2019-12-25 16:58:05', '2019-12-25 16:58:05'),
(2, 1, '{\"7\":{\"id\":7,\"name\":\"E2180J\",\"price\":250,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"8\":{\"id\":8,\"name\":\"P26800\",\"price\":340,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"9\":{\"id\":9,\"name\":\"A0568BY\",\"price\":500,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '1090', '2019-12-25 17:03:22', '2019-12-25 17:03:22'),
(3, 1, '{\"7\":{\"id\":7,\"name\":\"E2180J\",\"price\":250,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"8\":{\"id\":8,\"name\":\"P26800\",\"price\":340,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"9\":{\"id\":9,\"name\":\"A0568BY\",\"price\":500,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '1090', '2019-12-25 17:06:02', '2019-12-25 17:06:02'),
(4, 1, '{\"7\":{\"id\":7,\"name\":\"E2180J\",\"price\":250,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"8\":{\"id\":8,\"name\":\"P26800\",\"price\":340,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"9\":{\"id\":9,\"name\":\"A0568BY\",\"price\":500,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '1090', '2019-12-25 17:06:38', '2019-12-25 17:06:38'),
(5, 1, '{\"4\":{\"id\":4,\"name\":\"MAGIC PENDANT\",\"price\":90,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"5\":{\"id\":5,\"name\":\"SWAROVSKI SPARKLING\",\"price\":100,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '190', '2019-12-25 17:10:43', '2019-12-25 17:10:43'),
(6, 1, '{\"3\":{\"id\":3,\"name\":\"BEST SELLER3\",\"price\":75,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '75', '2020-01-30 15:16:03', '2020-01-30 15:16:03'),
(7, 1, '{\"2\":{\"id\":2,\"name\":\"BEST SELLER2222\",\"price\":75,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"43\":{\"id\":43,\"name\":\"roy3\",\"price\":500,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"42\":{\"id\":42,\"name\":\"roy2\",\"price\":450,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '1025', '2020-02-05 18:02:30', '2020-02-05 18:02:30'),
(8, 1, '{\"43\":{\"id\":43,\"name\":\"roy3\",\"price\":500,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"42\":{\"id\":42,\"name\":\"roy2\",\"price\":450,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"4\":{\"id\":4,\"name\":\"MAGIC PENDANT\",\"price\":90,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '1040', '2020-02-06 09:17:48', '2020-02-06 09:17:48'),
(9, 1, '{\"44\":{\"id\":44,\"name\":\"roy3\",\"price\":500,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '500', '2020-02-10 10:51:22', '2020-02-10 10:51:22'),
(10, 1, '{\"4\":{\"id\":4,\"name\":\"MAGIC PENDANT\",\"price\":90,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"2\":{\"id\":2,\"name\":\"BEST SELLER2222\",\"price\":75,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"5\":{\"id\":5,\"name\":\"SWAROVSKI SPARKLING\",\"price\":100,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '265', '2020-02-10 10:53:18', '2020-02-10 10:53:18'),
(11, 1, '{\"43\":{\"id\":43,\"name\":\"roy3\",\"price\":500,\"quantity\":1,\"attributes\":[],\"conditions\":[]},\"44\":{\"id\":44,\"name\":\"roy3\",\"price\":500,\"quantity\":2,\"attributes\":[],\"conditions\":[]},\"42\":{\"id\":42,\"name\":\"roy2\",\"price\":450,\"quantity\":2,\"attributes\":[],\"conditions\":[]}}', '2400', '2020-02-10 10:55:22', '2020-02-10 10:55:22'),
(12, 1, '{\"3\":{\"id\":3,\"name\":\"BEST SELLER3\",\"price\":75,\"quantity\":1,\"attributes\":[],\"conditions\":[]}}', '75', '2020-02-10 10:56:29', '2020-02-10 10:56:29');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(2, 2, 'BEST SELLER2222', 'Pandora Moments Heart Padlock Clasp', '15813256801579160169pan2.jpg', 75, '2019-12-09 10:21:15', '2020-02-10 09:08:00'),
(3, 1, 'BEST SELLER3', 'Pandora Moments Sparkling Heart ', 'pan3.jpg', 75, '2019-12-09 10:23:17', '2019-12-09 10:23:17'),
(4, 2, 'MAGIC PENDANT', 'Let it snow! Just in time for the holiday season, ', 'sv1.jpg', 90, '2019-12-09 10:28:35', '2019-12-09 10:28:35'),
(5, 2, 'SWAROVSKI SPARKLING', 'nspired by the idea of a ‘dancing crystal’', 'sv2.jpg', 100, '2019-12-09 10:28:35', '2019-12-09 10:28:35'),
(6, 2, 'LOUISON NECKLACE', 'Dial up the glamour this festive season with', 'sv3.jpg', 220, '2019-12-09 10:29:46', '2019-12-09 10:29:46'),
(7, 3, 'E2180J', 'gold earrings', 'roy1.jpg', 250, '2019-12-09 10:34:38', '2019-12-09 10:34:38'),
(8, 3, 'P26800', 'diamond necklace', 'roy2.jpg', 340, '2019-12-09 10:34:38', '2019-12-09 10:34:38'),
(9, 3, 'A0568BY', 'diamond braclet', 'roy3.jpg', 500, '2019-12-09 10:37:38', '2019-12-09 10:37:38'),
(12, 13, 'dvora keren', 'pin_cat', '15783062431.jpg', 50, '2020-01-06 10:24:03', '2020-01-06 10:24:03'),
(15, 15, 'BEST SELLER1', 'Pandora Moments Mesh Bracelet', '1581325152diamond-4704256_640.png', 68, '2020-01-06 11:22:34', '2020-02-10 08:59:12'),
(16, 16, 'dvora', 'kl;p', '15783126831תוספות-שער.png', 150, '2020-01-06 12:11:23', '2020-01-06 12:11:23'),
(17, 3, 'kara', '123456', '15783258601.jpg', 200, '2020-01-06 15:51:00', '2020-01-06 15:51:00'),
(18, 3, 'kara', '123456', '15783258651.jpg', 200, '2020-01-06 15:51:05', '2020-01-06 15:51:05'),
(19, 17, 'dvora', 'test', '1579160243_File_001_ (4).png', 50, '2020-01-16 07:37:23', '2020-01-16 07:37:23'),
(20, 17, 'dvora', 'test', '1579160280_File_001_ (4).png', 50, '2020-01-16 07:38:00', '2020-01-16 07:38:00'),
(21, 17, 'dvora', 'test', '1579160280_File_001_ (4).png', 50, '2020-01-16 07:38:00', '2020-01-16 07:38:00'),
(22, 17, 'dvora', 'test', '1579160243_File_001_ (4).png', 50, '2020-01-16 07:37:23', '2020-01-16 07:37:23'),
(24, 3, 'kara', '123456', '15783258601.jpg', 200, '2020-01-06 15:51:00', '2020-01-06 15:51:00'),
(25, 16, 'dvora', 'kl;p', '15783126831תוספות-שער.png', 150, '2020-01-06 12:11:23', '2020-01-06 12:11:23'),
(26, 26, 'BEST SELLER1', 'Pandora Moments Mesh Bracelet', '1581325220diamond-4704256_640.png', 68, '2020-01-06 11:22:34', '2020-02-10 09:00:20'),
(27, 13, 'dvora keren', 'pin_cat', '15783062431.jpg', 50, '2020-01-06 10:24:03', '2020-01-06 10:24:03'),
(28, 28, 'A0568BY', 'diamond braclet', '15813255021581325220diamond-4704256_640.png', 500, '2019-12-09 10:37:38', '2020-02-10 09:05:02'),
(29, 29, 'E2180J', 'gold earrings', 'default.png', 2500, '2019-12-09 10:34:38', '2020-02-04 15:28:17'),
(30, 30, 'P26800', 'diamond necklace', 'default.png', 340, '2019-12-09 10:34:38', '2020-02-04 15:28:04'),
(31, 2, 'LOUISON NECKLACE', 'Dial up the glamour this festive season with', 'sv3.jpg', 220, '2019-12-09 10:29:46', '2019-12-09 10:29:46'),
(32, 32, 'MAGIC PENDANן', 'Let it snow! Just in time for the holiday season,', 'default.png', 90, '2019-12-09 10:28:35', '2020-02-06 09:01:24'),
(33, 2, 'SWAROVSKI SPARKLING', 'nspired by the idea of a ‘dancing crystal’', 'sv2.jpg', 100, '2019-12-09 10:28:35', '2019-12-09 10:28:35'),
(34, 1, 'BEST SELLER3', 'Pandora Moments Sparkling Heart ', 'pan3.jpg', 75, '2019-12-09 10:23:17', '2019-12-09 10:23:17'),
(35, 1, 'BEST SELLER1', 'Pandora Moments Mesh Bracelet', 'pan1.jpg', 65, '2019-12-09 10:21:15', '2019-12-09 10:21:15'),
(36, 1, 'BEST SELLER2', 'Pandora Moments Heart Padlock Clasp ', 'pan2.jpg', 75, '2019-12-09 10:21:15', '2019-12-09 10:21:15'),
(37, 37, 'jh', 'test', '1580830544_File_001_ (51).png', 150, '2020-01-19 14:35:46', '2020-02-04 15:35:44'),
(38, 20, '123', 'jbjbjb', '1580320039_File_001_ (45).png', 150, '2020-01-29 17:47:19', '2020-01-29 17:47:19'),
(39, 24, 'kara5', '123456', 'default.png', 120, '2020-02-04 15:24:48', '2020-02-04 15:24:48'),
(40, 2, 'BEST SELLER2', 'Pandora Moments Heart Padlock Clasp', 'diamond-4704256_640.png', 76, '2020-02-04 15:25:15', '2020-02-04 15:25:15'),
(41, 41, 'roy1', 'toyaly  product1', '1581328215diamond-4649510_640.png', 200, '2020-02-04 17:13:35', '2020-02-10 09:50:15'),
(42, 21, 'roy2', 'roy product2', '1580836452roy2.jpg', 450, '2020-02-04 17:14:12', '2020-02-04 17:14:12'),
(43, 21, 'roy3', 'roy product3', '1580836487roy3.jpg', 500, '2020-02-04 17:14:47', '2020-02-04 17:14:47'),
(44, 21, 'roy3', 'roy product3', '1580836487roy3.jpg', 500, '2020-02-04 17:14:47', '2020-02-04 17:14:47'),
(45, 21, 'roy2', 'roy product2', '1580836452roy2.jpg', 450, '2020-02-04 17:14:12', '2020-02-04 17:14:12'),
(46, 21, 'roy1', 'toyaly  product1', '1580836415roy1.jpg', 200, '2020-02-04 17:13:35', '2020-02-04 17:13:35'),
(47, 47, 'BEST SELLER2', 'Pandora Moments Heart Padlock Clasp', '1581328112diamond-4649510_640.png', 76, '2020-02-04 15:25:15', '2020-02-10 09:48:32'),
(48, 24, 'kara5', '123456', 'default.png', 120, '2020-02-04 15:24:48', '2020-02-04 15:24:48'),
(49, 20, '123', 'jbjbjb', '1580320039_File_001_ (45).png', 150, '2020-01-29 17:47:19', '2020-01-29 17:47:19'),
(50, 37, 'jh', 'test', '1580830544_File_001_ (51).png', 150, '2020-01-19 14:35:46', '2020-02-04 15:35:44'),
(51, 17, 'dvora', 'test', '1579160280_File_001_ (4).png', 50, '2020-01-16 07:38:00', '2020-01-16 07:38:00'),
(52, 17, 'dvora', 'test', '1579160280_File_001_ (4).png', 50, '2020-01-16 07:38:00', '2020-01-16 07:38:00'),
(53, 17, 'dvora', 'test', '1579160243_File_001_ (4).png', 50, '2020-01-16 07:37:23', '2020-01-16 07:37:23'),
(54, 17, 'dvora', 'test', '1579160243_File_001_ (4).png', 50, '2020-01-16 07:37:23', '2020-01-16 07:37:23'),
(55, 3, 'kara', '123456', '15783258651.jpg', 200, '2020-01-06 15:51:05', '2020-01-06 15:51:05'),
(56, 3, 'kara', '123456', '15783258601.jpg', 200, '2020-01-06 15:51:00', '2020-01-06 15:51:00'),
(57, 3, 'kara', '123456', '15783258601.jpg', 200, '2020-01-06 15:51:00', '2020-01-06 15:51:00'),
(58, 16, 'dvora', 'kl;p', '15783126831תוספות-שער.png', 150, '2020-01-06 12:11:23', '2020-01-06 12:11:23'),
(59, 16, 'dvora', 'kl;p', '15783126831תוספות-שער.png', 150, '2020-01-06 12:11:23', '2020-01-06 12:11:23'),
(60, 60, 'BEST SELLER1', 'Pandora Moments Mesh Bracelet', '15813255581579160169pan2.jpg', 68, '2020-01-06 11:22:34', '2020-02-10 09:05:58'),
(61, 61, 'BEST SELLER1', 'Pandora Moments Mesh Bracelet', '15813257811581325152diamond-4704256_640.png', 68, '2020-01-06 11:22:34', '2020-02-10 09:09:41'),
(62, 13, 'dvora keren', 'pin_cat', '15783062431.jpg', 50, '2020-01-06 10:24:03', '2020-01-06 10:24:03'),
(63, 13, 'dvora keren', 'pin_cat', '15783062431.jpg', 50, '2020-01-06 10:24:03', '2020-01-06 10:24:03'),
(64, 3, 'A0568BY', 'diamond braclet', 'roy3.jpg', 500, '2019-12-09 10:37:38', '2019-12-09 10:37:38'),
(65, 65, 'A0568BY', 'diamond braclet', '1581325879diamond-4649510_640.png', 500, '2019-12-09 10:37:38', '2020-02-10 09:11:19'),
(66, 3, 'E2180J', 'gold earrings', 'roy1.jpg', 250, '2019-12-09 10:34:38', '2019-12-09 10:34:38'),
(67, 3, 'P26800', 'diamond necklace', 'roy2.jpg', 340, '2019-12-09 10:34:38', '2019-12-09 10:34:38'),
(68, 29, 'E2180J', 'gold earrings', 'default.png', 2500, '2019-12-09 10:34:38', '2020-02-04 15:28:17'),
(69, 21, 'roy3', 'roy product3', '1580836487roy3.jpg', 500, '2020-02-04 17:14:47', '2020-02-04 17:14:47'),
(70, 1, 'product', 'Pandora Moments Heart Padlock Clasp', '1581330035diamond-4649510_640.png', 200, '2020-02-10 10:20:35', '2020-02-10 10:20:35');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'dvora keren', 'dvora@gmail.com', '$2y$10$UChoXEZtoZMzlsEolibQ2enEl.c3QWIZ1m.TCPUO7POLnDAL7XPYO', 7, '2019-12-18 15:58:06', '2019-12-18 15:58:06'),
(4, 'admin', 'admin@gmail.com', '$2y$10$UChoXEZtoZMzlsEolibQ2enEl.c3QWIZ1m.TCPUO7POLnDAL7XPYO', 5, '2020-02-10 10:50:27', '2020-02-10 10:50:27'),
(5, 'shalom', 'shalom@gmail789', '$2y$10$LoBpTZL1L.ZIcWSJK.B9TeuZnlsh5rY85EEPKWYqs1QrQWxL86Gua', 5, '2020-02-11 16:27:56', '2020-02-11 16:27:56');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
