-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-04 16:25:28
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
-- 資料庫： `final_proj`
--

-- --------------------------------------------------------

--
-- 資料表結構 `customer_profile`
--

CREATE TABLE `customer_profile` (
  `profile_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `customer_profile`
--

INSERT INTO `customer_profile` (`profile_id`, `customer_id`, `username`, `intro`, `profile_img`) VALUES
(5, 530, 'curry', '2022 finals mvp', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `customer_profile`
--
ALTER TABLE `customer_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer_profile`
--
ALTER TABLE `customer_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
