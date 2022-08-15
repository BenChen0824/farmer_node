-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-15 11:56:28
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
-- 資料表結構 `comment`
--

CREATE TABLE `comment` (
  `comment_sid` int(11) NOT NULL,
  `member_id` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rating` varchar(255) NOT NULL,
  `likes` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL,
  `product_sid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `comment`
--

INSERT INTO `comment` (`comment_sid`, `member_id`, `comment`, `rating`, `likes`, `created_at`, `product_sid`) VALUES
(1, '477', '超愛小鱻肉推薦的生鮮食品，都會自己先吃過才會推薦給朋友。 ', '5', '7', '2022-05-14 14:30:30', '30'),
(2, '529', '商品很新鮮', '5', '2', '2022-05-15 14:30:30', '30'),
(3, '537', '嚴選生鮮食材 選擇多樣 讓人忍不住 餐餐想自己動手煮 ', '5', '1', '2022-05-16 14:30:30', '30'),
(4, '20', '新鮮的食材，很棒 東西都很好吃 會常常來光顧 ', '4', '1', '2022-05-17 14:30:30', '30'),
(5, '2', '商品很新鮮', '3', '3', '2022-05-18 14:30:30', '30'),
(6, '666', '這家鮭魚很好吃又新鮮，推薦大家來這邊選購', '5', '4', '2022-05-19 14:30:30', '30'),
(7, '748', ':( BAD', '1', '0', '2022-05-20 14:30:30', '30'),
(8, '8', '新鮮，價格實惠，值得常常來挖寶 ', '4', '5', '2022-05-21 14:30:30', '30'),
(9, '99', '東西齊全價格便宜，服務親切，值得推薦 ', '5', '2', '2022-05-22 14:30:30', '30'),
(10, '100', '食材新鮮 ', '4', '0', '2022-05-23 14:30:30', '30'),
(11, '11', 'GOOD', '4', '11', '2022-05-23 14:30:31', '30'),
(12, '888', 'GOOD', '4', '15', '2022-05-23 14:30:35', '30'),
(13, '13', 'GOOD', '4', '16', '2022-05-23 14:30:36', '30'),
(14, '666', '什麼都有什麼都賣 買鮮魚買水果買牛排這裡通通有 很方便', '5', '17', '2022-05-23 14:30:37', '6'),
(15, '15', '蘋果很甜', '5', '18', '2022-05-23 14:30:38', '6'),
(16, '16', '服務好 商品好吃 ', '5', '19', '2022-05-23 14:30:39', '6'),
(17, '17', '商品很新鮮', '5', '20', '2022-05-23 14:30:40', '6'),
(18, '21', 'CP值高 ', '4', '21', '2022-05-23 14:30:41', '6'),
(19, '19', '想說隨便找一間訂購買買，結果還不錯...', '4', '22', '2022-05-23 14:30:42', '6'),
(20, '66', '送來的的蔬菜及瓜果類都非常新鮮，品質優於大賣場及傳統市場，重點疫情期間內，幫忙送到府減少接觸，真是佛心，更別提大熱天的，送貨司機也超貼心的，辛苦了！ ', '2', '21', '2022-05-23 14:30:45', '6'),
(21, '66', '非常實在！價格合理，服務周到！ ', '2', '26', '2022-05-23 14:30:46', '6'),
(22, '22', 'GOOD', '2', '27', '2022-05-23 14:30:47', '6'),
(23, '668', '送來都爛掉，傻眼', '1', '1', '2022-05-23 14:30:48', '6'),
(24, '29', '香蕉很好吃', '5', '2', '2022-05-23 14:30:49', '7'),
(25, '30', 'CP值高 ', '5', '6', '2022-05-23 14:30:50', '7'),
(26, '26', '極力推薦優良商家 各種生鮮蔬果 品質超好的，蔬菜水果清洗過後就可以吃了，根本不用再挑選不良品，絕對是超值。 ', '5', '31', '2022-05-23 14:30:51', '7'),
(27, '27', '', '3', '32', '2022-05-23 14:30:52', '7'),
(28, '280', '', '3', '33', '2022-05-23 14:30:53', '7'),
(29, '290', '', '3', '34', '2022-05-23 14:30:54', '7'),
(30, '300', '', '2', '35', '2022-05-23 14:30:55', '7'),
(31, '311', '', '2', '36', '2022-05-23 14:30:56', '7'),
(32, '32', '', '2', '37', '2022-05-23 14:30:57', '7'),
(33, '33', '司機態度不好...打電話也沒人接 :(', '1', '38', '2022-05-23 14:30:58', '7'),
(34, '34', '蔬果很新鮮，司機都很親切，遇到問題也會處理好，不錯！ ', '5', '39', '2022-05-23 14:30:59', '15'),
(35, '35', '服務態度不錯，生鮮蔬果都很新鮮 ', '5', '40', '0000-00-00 00:00:00', '15'),
(36, '36', '商品很新鮮', '3', '41', '0000-00-00 00:00:00', '15'),
(37, '37', '還行', '3', '42', '0000-00-00 00:00:00', '15'),
(38, '38', 'good~', '3', '43', '0000-00-00 00:00:00', '15'),
(39, '39', 'good~\\', '5', '44', '0000-00-00 00:00:00', '15'),
(40, '40', '還可以再更好', '3', '45', '0000-00-00 00:00:00', '15'),
(41, '41', '價格便宜，服務親切，值得推薦 ', '5', '46', '0000-00-00 00:00:00', '33'),
(42, '42', '肉超好吃的', '4', '47', '0000-00-00 00:00:00', '33'),
(43, '43', 'CP值高 ', '4', '48', '0000-00-00 00:00:00', '33'),
(44, '44', '好讚', '4', '49', '0000-00-00 00:00:00', '33'),
(45, '45', '肉類很新鮮很好吃', '4', '50', '0000-00-00 00:00:00', '33'),
(46, '46', '好吃!!!!!!', '5', '51', '0000-00-00 00:00:00', '33'),
(47, '47', '', '5', '51', '0000-00-00 00:00:00', '33'),
(48, '48', '', '5', '53', '0000-00-00 00:00:00', '33'),
(49, '55', '還可以', '3', '54', '0000-00-00 00:00:00', '33'),
(50, '50', '', '5', '55', '0000-00-00 00:00:00', '33'),
(51, '51', '非常棒 ', '5', '1', '2021-01-02 23:56:11', '33'),
(52, '522', '不錯~', '3', '60', '2022-02-02 11:30:30', '5'),
(53, '53', '新鮮', '5', '3', '2022-05-02 14:30:30', '5'),
(54, '530', '666', '5', '0', '2022-08-10 16:39:18', '30'),
(55, '530', 'member_id', '5', '0', '2022-08-10 16:55:29', '30'),
(56, '537', '444', '5', '0', '2022-08-10 17:19:03', '30'),
(57, '537', '17:23', '5', '0', '2022-08-10 17:23:18', '30'),
(58, '530', 'asdas', '5', '0', '2022-08-10 18:09:30', '30'),
(59, '530', 'asdas', '5', '0', '2022-08-10 18:09:32', '30'),
(60, '530', 'asdas', '5', '0', '2022-08-10 18:09:34', '30'),
(61, '530', '123', '5', '0', '2022-08-11 16:02:03', '30'),
(62, '530', '123123123123', '5', '0', '2022-08-11 16:04:27', '30'),
(63, '63', '123', '5', '0', '2022-08-12 14:08:39', '30'),
(64, '64', '123', '5', '0', '2022-08-12 14:09:12', '30'),
(65, '65', '12345123', '1', '0', '2022-08-12 14:09:59', '22'),
(66, '530', '3123145', '5', '0', '2022-08-12 14:46:44', '30'),
(67, '530', '泥好', '5', '0', '2022-08-12 14:47:10', '30'),
(68, '530', 'omg', '5', '0', '2022-08-12 14:47:55', '30'),
(69, '530', '. . . . .', '4', '0', '2022-08-12 14:50:52', '30'),
(70, '530', '火爆猴', '4', '0', '2022-08-12 14:53:35', '30'),
(71, '530', 'qqqqqqqqqqqqqqqqqqqqqqqqqq', '2', '0', '2022-08-12 14:55:48', '30');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
