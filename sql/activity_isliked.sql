-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-17 04:23:26
-- 伺服器版本： 10.4.24-MariaDB
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
-- 資料表結構 `activity_isliked`
--

CREATE TABLE `activity_isliked` (
  `sid` int(50) NOT NULL,
  `activity_sid` int(50) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `isliked` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `activity_isliked`
--

INSERT INTO `activity_isliked` (`sid`, `activity_sid`, `customer_id`, `isliked`) VALUES
(1, 1, 530, 0),
(2, 2, 530, 1),
(3, 3, 530, 1),
(4, 5, 530, 1),
(5, 9, 530, 0),
(6, 10, 530, 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `activity_isliked`
--
ALTER TABLE `activity_isliked`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `activity_isliked`
--
ALTER TABLE `activity_isliked`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
