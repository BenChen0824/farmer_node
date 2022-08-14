-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-11 08:39:20
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
-- 資料表結構 `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `farm_type` varchar(255) NOT NULL,
  `farm_name` varchar(255) NOT NULL,
  `farm_tax_id` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_id_number` varchar(255) NOT NULL,
  `company_phone` varchar(255) NOT NULL,
  `farm_tel` varchar(255) NOT NULL,
  `farm_fax` varchar(255) NOT NULL,
  `farm_address` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_password` varchar(255) NOT NULL,
  `creat_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `company`
--

INSERT INTO `company` (`company_id`, `farm_type`, `farm_name`, `farm_tax_id`, `company_name`, `company_id_number`, `company_phone`, `farm_tel`, `farm_fax`, `farm_address`, `company_email`, `company_password`, `creat_at`) VALUES
(1, '個人(非公司)', '勝洋休閒農場', '', '陳韻達', 'I233416490', '0918108780', '03-9222487', '03-9231814', '宜蘭縣員山鄉八甲路15-6號', 'test01@gmail.com', '$2a$10$klP5qbu6l9cO6Nvv5.N8u.n2IAfceMTQe34W6fmoVTzXu84hQ7aGi', '2022-08-01 09:17:10'),
(2, '農戶', '東螺溪休閒農場', '', '陳協齊', 'k178652590', '0918241293', '0985-699700', '', '彰化縣二林鎮二溪路七段2巷臨1201號', 'test02@gmail.com', '$2a$10$klP5qbu6l9cO6Nvv5.N8u.n2IAfceMTQe34W6fmoVTzXu84hQ7aGi', '2022-08-01 09:17:10'),
(3, '小型商戶(免用發票)', '廣興休閒農場', '', '陳武茂', 'O210221030', '0918564588', '03-9513236', '03-9513946', '宜蘭縣冬山鄉柯林村光華三路132巷12號', 'test03@gmail.com', '$2a$10$klP5qbu6l9cO6Nvv5.N8u.n2IAfceMTQe34W6fmoVTzXu84hQ7aGi', '2022-08-01 09:17:10'),
(4, '個人(非公司)', '阿里磅生態休閒農場', '', '曹慧娟', 'J276218010', '0918583354', '02-26382745', '02-26232016', '新北市石門區阿里磅84號', 'test04@gmail.com', '$2a$10$klP5qbu6l9cO6Nvv5.N8u.n2IAfceMTQe34W6fmoVTzXu84hQ7aGi', '2022-08-01 09:17:10'),
(5, '農戶', '武岫休閒農場', '', '楊曜宇', 'Q101199690', '0918619748', '0492676262', '0492677117', '南投縣鹿谷鄉竹林村田頭巷35-66號', 'test05@gmail.com', '$2a$10$klP5qbu6l9cO6Nvv5.N8u.n2IAfceMTQe34W6fmoVTzXu84hQ7aGi', '2022-08-01 09:17:10'),
(6, '小型商戶(免用發票)', '台一生態休閒農場', '', '陳如萱', 'N153448120', '0918575738', '04-92997848', '049-2900037', '南投縣埔里鎮蜈蚣里中山路1段176', 'test06@gmail.com', '$2a$10$klP5qbu6l9cO6Nvv5.N8u.n2IAfceMTQe34W6fmoVTzXu84hQ7aGi', '2022-08-01 09:17:10'),
(7, '法人(公司)', '沐心泉休閒農場', '39328672', '王佳怡', 'I261687010', '0918644744', '04-25931201', '', '臺中市新社區中和里中興街60號', 'test07@gmail.com', '$2a$10$klP5qbu6l9cO6Nvv5.N8u.n2IAfceMTQe34W6fmoVTzXu84hQ7aGi', '2022-08-01 09:17:10'),
(8, '法人(公司)', '大菁休閒農場', '45498079', '謝海儒', 'H281586970', '0918276638', '02-24572869', '', '基隆市暖暖區東勢街100-1號', '', '', '2022-08-01 09:17:10'),
(9, '小型商戶(免用發票)', '蓮荷園休閒農場', '', '林博文', 'C102745170', '0918325186', '03-4776972', '', '桃園市觀音區藍埔里金華路690號', '', '', '2022-08-01 09:17:10'),
(10, '小型商戶(免用發票)', '花露休閒農場', '', '陳世光', 'S116815180', '0918295934', '04-25891589', '', '苗栗縣卓蘭鎮西坪里43-3號', '', '', '2022-08-01 09:17:10'),
(11, '農戶', '林家古厝休閒農場', '', '陳君富', 'C297954460', '0918296250', '03-4980753', '03-4982274', '桃園市觀音區大富路221號', '', '', '2022-08-01 09:17:10'),
(12, '農戶', '香格里拉休閒農場', '', '趙淑娟', 'B138225550', '0918822435', '03-9511456', '03-9515222', '宜蘭縣冬山鄉大進村梅山路168號', '', '', '2022-08-01 09:17:10'),
(13, '小型商戶(免用發票)', '台南鴨莊休閒農場', '', '王曉麟', 'V219377840', '0918746096', '06-6901101', '06-690-3901', '臺南市官田區渡拔里三塊厝178-1號', '', '', '2022-08-01 09:17:10'),
(14, '小型商戶(免用發票)', '奈米休閒農場', '', '胡之陽', 'X281420440', '0918571868', '0919-327075', '', '彰化縣大村鄉南勢村南二橫巷8號', '', '', '2022-08-01 09:17:10'),
(15, '法人(公司)', '鴻旗有機休閒農場', '45923953', '鄧采吟', 'D202749970', '0918400878', '08-7967301', '', '屏東縣高樹鄉泰山村產業路330號', '', '', '2022-08-01 09:17:10'),
(16, '法人(公司)', '魔菇部落休閒農場', '49915632', '林亞', 'U167985650', '0918652042', '04-8521898', '04-8525288', '彰化縣埔心鄉柳橋東路829號', '', '', '2022-08-01 09:17:10'),
(17, '個人(非公司)', '雲也居一休閒農場', '', '林文強', 'T140800300', '0918998427', '03-7951530', '037-951396', '苗栗縣大湖鄉薑麻園九鄰六號', '', '', '2022-08-01 09:17:10'),
(18, '個人(非公司)', '雪霸休閒農場', '', '楊修冰', 'W149222720', '0918824351', '03-5856192', '03-5857182', '新竹縣五峰鄉桃山村民石380號', '', '', '2022-08-01 09:17:10'),
(19, '個人(非公司)', '菊園休閒農場', '', '詹逸伶', 'D158992540', '0918580067', '03-7951522', '', '苗栗縣大湖鄉栗林村薑麻園13號', '', '', '2022-08-01 09:17:10'),
(20, '小型商戶(免用發票)', '白石森活休閒農場', '', '方雅惠', 'D153525330', '0918259338', '02-27943131', '', '臺北市內湖區碧山路58號', '', '', '2022-08-01 09:17:10'),
(21, '小型商戶(免用發票)', '花泉休閒農場', '', '李國華', 'H129348030', '0918432009', '0919-221506', '', '宜蘭縣員山鄉尚德村八甲路15-1號', '', '', '2022-08-01 09:17:10'),
(22, '小型商戶(免用發票)', '清香休閒農場', '', '林淑如', 'O159113720', '0918755534', '0928-534383', '0227903466', '臺北市內湖區大湖街206號', '', '', '2022-08-01 09:17:10'),
(23, '農戶', '大坑休閒農場', '', '林慧玲', 'Q285204720', '0918853803', '06-5941555', '06-5940266', '臺南市新化區大坑里82號', '', '', '2022-08-01 09:17:10'),
(24, '個人(非公司)', '三富休閒農場', '', '翁尹妃', 'L296466400', '0918120622', '03-9588690', '03-9588753', '宜蘭縣冬山鄉中山村新寮二路161巷88號', '', '', '2022-08-01 09:17:10'),
(25, '法人(公司)', '仙湖休閒農場', '68112631', '連秀鴻', 'Z215006860', '0918226844', '06-6863635', '06-6863662', '臺南市東山區南勢里大洋6', '', '', '2022-08-01 09:17:10'),
(26, '個人(非公司)', '旺山休閒農場', '', '劉姿伶', 'D244373110', '0918737811', '0932-088992', '03-9382870', '宜蘭縣壯圍鄉新南村新南路106-11號', '', '', '2022-08-01 09:17:10'),
(27, '農戶', '好時節休閒農場', '', '黃函順', 'W144103830', '0918966517', '03-3889689', '03-3887489', '桃園市大溪區康莊路三段225號', '', '', '2022-08-01 09:17:10'),
(28, '農戶', '大塭休閒農場', '', '林麗卿', 'J166606060', '0918504342', '03-9870558', '', '宜蘭縣礁溪鄉玉龍路二段497號', '', '', '2022-08-01 09:17:10'),
(29, '小型商戶(免用發票)', '天山休閒農場', '', '陳世昇', 'M188959990', '0918634376', '0922-894037', '', '宜蘭縣三星鄉天山村下湖路1號', '', '', '2022-08-01 09:17:10'),
(30, '小型商戶(免用發票)', '不一樣鱷魚生態休閒農場', '', '黃于凌', 'V217002560', '0918104625', '0911-746860', '08-7881707', '屏東縣潮州鎮太平路600巷108號', '', '', '2022-08-01 09:17:10'),
(31, '', '123', '', '13', '1321131', '1321321', '', '', '', 'asd@gmail.com', '$2a$10$ufp9cZyJdnpobfaJnOKDKujYs9ykr8NyyWm7QKW4g8AYxLxcDv6gK', '2022-08-08 14:13:39'),
(32, '', '123', '', 'qwe', '0121565', 'qwe', '', '', '', '123@gmail.com', '$2a$10$aEpevbtoaR48TgDTAdu.6.XNsKSy.3oCmBFW.efWJ.cIDwM29gwgm', '2022-08-11 10:51:29'),
(33, '', '123', '', '13', '1321131', '1321321', '', '', '', 'asd@gmail.com', '$2a$10$QUuaYADjPUnzDi8gkzqam.vdiX2QLj4UgOwGqqSgwKOt6v0pTwMo2', '2022-08-11 10:58:06'),
(34, '', '123', '', '123', '123', '123', '', '', '', '123@test.com', '$2a$10$pSu/Da0iPgsv9.Qjj8gDuOdtwQVpkBJzT/JUTbTS3e.o.EaCoL302', '2022-08-11 11:00:56'),
(35, '', '123', '', '13', '1321131', '1321321', '', '', '', 'test030@gmail.com', '$2a$10$UMfgChogxb9tJR6ckRYde.U9JnN95y3dHqhsz6l5aMTcIKpGeEeHq', '2022-08-11 11:08:35'),
(36, '', '123', '', '123', '123', '123', '', '', '', '123@test.coo', '$2a$10$ZPm.beiXX8yvyvUntymkj.7jiCVKdAuQ6CBNFw0oRxeHae4Lkb9N6', '2022-08-11 11:14:54'),
(37, '', 'test', '', 'test', 'test', 'test', '', '', '', 'test@oo.com', '$2a$10$wk0yjnX9OGBzSq/54p.lteuK50CiOJbdj5SrymIpSYjYfNCVyDuHm', '2022-08-11 11:26:10');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;