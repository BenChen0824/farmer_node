-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-10 09:53:59
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
-- 資料表結構 `foodlist`
--

CREATE TABLE `foodlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `foodlist`
--

INSERT INTO `foodlist` (`id`, `name`, `category`, `image`, `price`) VALUES
(1, '白飯', 1, 'images/rice.png', 10),
(2, '宮保雞丁', 2, 'images/chicken.png', 35),
(3, '乾煎鮭魚', 3, 'images/cod.png', 40),
(4, '炒豆苗', 4, 'images/vegtable.png', 15),
(5, '炒花枝', 3, 'images/squid.png', 25),
(6, '煎白帶魚', 3, 'images/Friedwhitehairfish.png', 35),
(7, '炒麵', 1, 'images/noodles.png', 10),
(8, '米粉', 1, 'images/ricenoodles.png', 10),
(9, '螞蟻上樹', 4, 'images/waternoodles.png', 15),
(10, '番茄炒蛋', 4, 'images/tomatoeggs.png', 20),
(11, '炒時蔬', 4, 'images/friedcabbage.png', 15),
(12, '義式雞胸', 2, 'images/grilledchicken.png', 40),
(13, '炸雞腿排', 2, 'images/friedlegsteak.png', 45),
(14, '滷控肉', 2, 'images/controlmeat.png', 45),
(15, '紅燒肉', 2, 'images/redfirepork.png', 40),
(16, '炒竹筍', 4, 'images/bambooshoots.png', 10),
(17, '炸排骨', 2, 'images/friedporkribs.png', 40),
(18, '炸天婦羅', 4, 'images/friedshrimp.png', 30),
(19, '烤鯖魚', 3, 'images/friedfish.png', 30),
(20, '炸豬排', 2, 'images/friedpork.png', 40),
(21, '糙米飯', 1, 'images/brownrice.png', 10),
(22, '荷包蛋', 4, 'images/egg.png', 15),
(23, '烤鰻魚', 3, 'images/eel.png', 65),
(27, '唐揚雞塊', 2, 'images/Chickennuggets.png', 40);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `foodlist`
--
ALTER TABLE `foodlist`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `foodlist`
--
ALTER TABLE `foodlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
