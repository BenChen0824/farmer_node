-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-09 08:59:13
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
-- 資料表結構 `coupon_01`
--

CREATE TABLE `coupon_01` (
  `sid` int(50) NOT NULL,
  `change_img` varchar(255) NOT NULL,
  `change_memberid` int(50) NOT NULL,
  `change_coupon` varchar(255) NOT NULL,
  `change_spendpoints` int(255) NOT NULL,
  `coupon_isused` int(50) NOT NULL,
  `change_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `coupon_01`
--

INSERT INTO `coupon_01` (`sid`, `change_img`, `change_memberid`, `change_coupon`, `change_spendpoints`, `coupon_isused`, `change_time`) VALUES
(73, '/dailypoint-img/4b08287a319a467288279c8499eb2db3.jpg', 530, '200元折價券', 100, 0, '2022-08-09 13:53:43'),
(74, '/dailypoint-img/52c1abae31a722933f917fce0fccc868.jpg', 530, '100元折價券', 50, 0, '2022-08-09 13:53:44');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `coupon_01`
--
ALTER TABLE `coupon_01`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon_01`
--
ALTER TABLE `coupon_01`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
