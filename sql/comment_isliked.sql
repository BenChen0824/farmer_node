-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-15 11:56:15
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
-- 資料庫： `comment0824all`
--

-- --------------------------------------------------------

--
-- 資料表結構 `comment_isliked`
--

CREATE TABLE `comment_isliked` (
  `sid` int(50) NOT NULL,
  `comment_sid` int(50) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `isliked` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `comment_isliked`
--

INSERT INTO `comment_isliked` (`sid`, `comment_sid`, `customer_id`, `isliked`) VALUES
(1, 4, 530, 0),
(2, 3, 530, 0),
(3, 71, 530, 1),
(4, 70, 530, 1),
(5, 69, 530, 1),
(6, 65, 530, 1),
(7, 56, 530, 1),
(8, 32, 530, 1),
(9, 62, 530, 0),
(10, 60, 530, 0),
(11, 68, 530, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `comment_isliked`
--
ALTER TABLE `comment_isliked`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comment_isliked`
--
ALTER TABLE `comment_isliked`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
