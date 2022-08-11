-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-11 08:39:41
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
-- 資料表結構 `company_activitydata`
--

CREATE TABLE `company_activitydata` (
  `sid` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `card_img` varchar(255) NOT NULL,
  `card_area` varchar(255) NOT NULL,
  `card_city` varchar(255) NOT NULL,
  `card_info` varchar(255) NOT NULL,
  `card_a` varchar(255) NOT NULL,
  `card_b` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `company_activitydata`
--

INSERT INTO `company_activitydata` (`sid`, `company_id`, `card_img`, `card_area`, `card_city`, `card_info`, `card_a`, `card_b`, `created_at`) VALUES
(1, 6, '6.jpg', '黃金小鎮休閒農業區', '苗栗縣 公館鄉', '以芋頭、紅棗等主要農特產開發多元農遊商品，青農返鄉密度高，鏈結大學生駐地創新經營及國際志工、青年壯遊等，注入創新及國際化新思維，展現組織活力。', '擠福菜DIY→紅棗風味餐→蜜蜂生態導覽、蜂蠟布DIY→好客坊購買伴手禮', '擠福菜DIY、蜂蠟布DIY、洗愛玉DIY、拔芋頭、採紅棗、手工豆腐DIY、柿餅製作', '2022-08-01'),
(2, 2, '2.jpg', '梨之鄉休閒農業區', '臺中市 東勢區', '高接梨的發源地，運用梨、甜柿、柑橘及賞螢，發展四季採果及生態遊程；辦理客家媽媽料理廚房，開發多項水果DIY料理，結合推廣食農教育，吸引國際遊客到訪與認養梨樹，成果豐碩。', '採果→客家做粿→農村料理→蘭花手做DIY', '採果、陶藝DIY、木藝DIY、漆藝DIY、染布DIY、蘭花手作DIY、多肉植物DIY、賞螢', '2022-08-02'),
(3, 3, '3.jpg', '桃米休閒農業區\r\n', '南投縣 埔里鎮', '產、官、學共同合作典範，組織極具整合、發展共識，營運良好；善用生態、農業及觀光資源；體驗活動、遊程持續創新，帶動區域穩定成長、共好。', '桃米魚蝦體驗→桃米野餐→農事體驗→夜間賞蛙', '農事體驗、夜間賞蛙、桃米魚蝦體驗、桃米野餐、桃米遠足、黃金青蛙粿DIY、紙燈DIY、賞螢', '2022-08-03'),
(4, 4, '4.jpg', '枕頭山休閒農業區', '宜蘭縣 員山鄉', '全國第一個休閒農業區，生產水果及觀葉植物，紅心芭樂、金棗尤富盛名。組織專業分工，創新特色農產伴手與體驗產品，異業合作展通路。主題遊程「花果野食趣」帶領遊客親近土地，領略農村魅力。', '庄腳所在休閒農場→望龍埤→錦普觀光果園→波的農場', '採果、嫁接體驗、蜜餞DIY、竹筒飯DIY、釀醋DIY、盆栽DIY、窯烤pizzaDIY、稻草與樹枝工藝', '2022-08-04'),
(5, 5, '5.jpg', '金湖休閒農業區', '雲林縣 口湖鄉', '以養殖漁業為主軸，專業經理人整合青農、鄰近區域農遊業者，發展摸蜆兼洗褲等極具趣味之食農教育、漁業體驗活動，使遊客親近自然之餘，也能瞭解產業、體驗海口漁村風情。', '金湖休閒農業區口湖遊客中心享用當地料理→馬蹄蛤主題館→海中黑金烏魚子→遊賞金湖臨海公園', '乘膠筏遊漁塭、摸蜆兼洗褲、蛤貝DIY、58度高粱酒烤烏魚子、手工米粉DIY、明湖垂釣', '2022-08-04'),
(6, 1, '1.jpg', '薑麻園休閒農業區', '苗栗縣 大湖鄉', '以薑為主軸，發展四季農遊商品，並為落實友善農耕、復育生態，發展無毒袋薑，推廣安心農業；組織運作健全，以「老薑帶嫩薑」模式傳承經營，穩定在地就業，吸引青年返鄉，與當地學校社區互動，為休閒農業學習標竿與典範。', '建議行程：\r\n挖薑體驗+薑黃染DIY→薑黃養生餐→出關古道健行→薑足浴+下午茶品嘗', '體驗活動：\r\n挖薑、薑黃染DIY、薑餅人DIY、採果、紅肉李加工DIY、搗麻糬、草編', '2022-08-01');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `company_activitydata`
--
ALTER TABLE `company_activitydata`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `company_activitydata`
--
ALTER TABLE `company_activitydata`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
