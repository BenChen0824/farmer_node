-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 09 日 23:40
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `farmer26`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product_collect`
--

CREATE TABLE `product_collect` (
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `saved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_collect`
--

INSERT INTO `product_collect` (`member_id`, `product_id`, `saved`) VALUES
(530, 30, 0),
(530, 68, 0),
(530, 84, 0),
(1, 6, 1),
(1, 8, 1),
(1, 9, 1),
(2, 16, 1),
(2, 50, 1),
(530, 5, 1),
(530, 6, 1),
(530, 9, 1),
(530, 13, 1),
(530, 14, 1),
(530, 16, 1),
(530, 23, 1),
(530, 39, 1),
(530, 42, 1),
(530, 44, 1),
(530, 54, 1),
(530, 60, 1),
(530, 86, 1),
(530, 87, 1),
(530, 88, 1),
(530, 89, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product_collect`
--
ALTER TABLE `product_collect`
  ADD PRIMARY KEY (`member_id`,`product_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `saved` (`saved`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
