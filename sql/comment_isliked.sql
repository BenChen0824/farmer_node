-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-16 19:56:56
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
  `customer_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `comment_isliked`
--

INSERT INTO `comment_isliked` (`sid`, `comment_sid`, `customer_id`) VALUES
(2, 1, 1),
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 1, 6),
(8, 1, 7),
(9, 1, 8),
(10, 1, 9),
(11, 1, 10),
(12, 1, 11),
(13, 1, 12),
(14, 1, 13),
(15, 1, 14),
(16, 1, 15),
(17, 1, 16),
(18, 1, 17),
(19, 1, 18),
(20, 1, 19),
(21, 1, 20),
(22, 1, 21),
(23, 1, 22),
(24, 1, 23),
(25, 1, 24),
(26, 1, 25),
(27, 2, 1),
(28, 2, 2),
(29, 2, 3),
(30, 2, 4),
(31, 2, 5),
(32, 2, 6),
(33, 2, 7),
(34, 2, 8),
(35, 2, 9),
(36, 2, 10),
(37, 2, 11),
(38, 3, 1),
(39, 3, 2),
(40, 3, 3),
(41, 3, 4),
(42, 3, 5),
(43, 3, 6),
(44, 3, 7),
(45, 3, 8),
(46, 3, 9),
(47, 3, 10),
(48, 3, 11),
(49, 3, 12),
(50, 3, 13),
(51, 3, 14),
(52, 3, 15),
(53, 3, 16),
(54, 3, 17),
(55, 3, 18),
(56, 4, 1),
(57, 4, 2),
(58, 4, 3),
(59, 4, 4),
(60, 4, 5),
(61, 4, 6),
(62, 4, 7),
(63, 4, 8),
(64, 5, 1),
(65, 5, 2),
(66, 5, 3),
(67, 5, 4),
(68, 6, 1),
(69, 6, 2),
(70, 6, 3),
(71, 6, 4),
(72, 6, 5),
(73, 6, 6),
(74, 6, 7),
(75, 6, 8),
(76, 6, 9),
(77, 6, 10),
(78, 6, 11),
(79, 6, 12),
(80, 6, 13),
(81, 6, 14),
(82, 6, 15),
(83, 6, 16),
(84, 6, 17),
(85, 6, 18),
(86, 6, 19),
(87, 6, 20),
(88, 6, 21),
(89, 6, 22),
(90, 6, 23),
(91, 6, 24),
(92, 6, 25),
(93, 6, 26),
(94, 6, 27),
(95, 6, 28),
(96, 6, 29),
(97, 6, 30),
(98, 6, 31),
(99, 6, 32),
(100, 6, 33),
(101, 6, 34),
(102, 6, 35),
(103, 6, 36),
(104, 6, 37),
(105, 6, 38),
(106, 6, 39),
(107, 6, 40),
(108, 6, 41),
(109, 6, 42),
(110, 6, 43),
(111, 6, 44),
(112, 6, 45),
(113, 6, 46),
(114, 6, 47),
(115, 6, 48),
(116, 6, 49),
(117, 6, 50),
(118, 6, 51),
(119, 6, 52),
(120, 6, 53),
(121, 6, 54),
(122, 6, 55),
(123, 6, 56),
(124, 6, 57),
(125, 7, 1),
(126, 7, 2),
(127, 7, 3),
(128, 7, 4),
(129, 7, 5),
(130, 7, 6),
(131, 7, 7),
(132, 8, 1),
(133, 8, 2),
(134, 8, 3),
(135, 8, 4),
(136, 8, 5),
(137, 8, 6),
(138, 8, 7),
(139, 8, 8),
(140, 9, 1),
(141, 9, 2),
(142, 9, 3),
(143, 9, 4),
(144, 9, 5),
(145, 9, 6),
(146, 9, 7),
(147, 9, 8),
(148, 9, 9),
(149, 9, 10),
(150, 9, 11),
(151, 9, 12),
(152, 9, 13),
(153, 9, 14),
(154, 9, 15),
(155, 9, 16),
(156, 9, 17),
(157, 9, 18),
(158, 9, 19),
(159, 10, 1),
(160, 10, 2),
(161, 10, 3),
(162, 10, 4),
(163, 10, 5),
(164, 10, 6),
(165, 10, 7),
(166, 10, 8),
(167, 10, 9),
(168, 10, 10),
(169, 11, 1),
(170, 11, 2),
(171, 11, 3),
(172, 11, 4),
(173, 11, 5),
(174, 11, 6),
(175, 11, 7),
(176, 11, 8),
(177, 11, 9),
(178, 11, 10),
(179, 11, 11),
(180, 11, 12),
(181, 12, 1),
(182, 13, 1),
(183, 13, 2),
(184, 13, 3),
(185, 14, 1),
(186, 14, 2),
(187, 15, 1),
(188, 15, 2),
(189, 16, 1),
(190, 16, 2),
(191, 16, 3),
(192, 16, 4),
(193, 16, 5),
(194, 16, 6),
(195, 16, 7),
(196, 16, 8),
(197, 17, 1),
(198, 17, 2),
(199, 17, 3),
(200, 17, 4),
(201, 18, 1),
(202, 18, 2),
(203, 18, 3),
(204, 18, 4),
(205, 19, 1),
(206, 19, 2),
(207, 19, 3),
(208, 19, 4),
(209, 20, 1),
(210, 20, 2),
(211, 20, 3),
(212, 20, 4),
(213, 20, 5),
(214, 20, 6),
(215, 20, 7),
(216, 20, 8),
(217, 20, 9),
(218, 20, 10),
(219, 20, 11),
(220, 20, 12),
(221, 20, 13),
(222, 20, 14),
(223, 20, 15),
(224, 20, 16),
(225, 20, 17),
(226, 20, 18),
(227, 20, 19),
(228, 20, 20),
(229, 20, 21),
(230, 20, 22),
(231, 20, 23),
(232, 20, 24),
(233, 20, 25),
(234, 20, 26),
(235, 20, 27),
(236, 20, 28),
(237, 20, 29),
(238, 20, 30),
(239, 20, 31),
(240, 20, 32),
(241, 20, 33),
(242, 20, 34),
(243, 20, 35),
(244, 20, 36),
(245, 20, 37),
(246, 20, 38),
(247, 21, 1),
(248, 21, 2),
(249, 21, 3),
(250, 21, 4),
(251, 21, 5),
(252, 21, 6),
(253, 22, 7),
(254, 22, 8),
(255, 22, 9),
(256, 22, 10),
(257, 23, 11),
(258, 23, 12),
(259, 24, 13),
(260, 25, 14),
(261, 25, 15),
(262, 26, 1),
(263, 26, 2),
(264, 26, 3),
(265, 26, 4),
(266, 26, 5),
(267, 26, 6),
(268, 26, 7),
(269, 26, 8),
(270, 26, 9),
(271, 26, 10),
(272, 26, 11),
(273, 27, 1),
(274, 28, 1),
(275, 28, 2),
(276, 29, 1),
(277, 29, 2),
(278, 30, 1),
(279, 30, 2),
(280, 31, 1),
(281, 31, 2),
(282, 32, 1),
(283, 32, 2),
(284, 32, 3),
(285, 32, 4),
(286, 32, 5),
(287, 32, 6),
(288, 32, 7),
(289, 32, 8),
(290, 32, 9),
(291, 32, 10),
(292, 32, 11),
(293, 32, 12),
(294, 32, 13),
(295, 32, 14),
(296, 32, 15),
(297, 32, 16),
(298, 32, 17),
(299, 32, 18),
(300, 32, 19),
(301, 33, 1),
(302, 33, 2),
(303, 33, 33),
(304, 34, 114),
(305, 34, 341),
(306, 34, 342),
(307, 34, 343),
(308, 34, 344),
(309, 34, 345),
(310, 34, 346),
(311, 34, 347),
(312, 34, 348),
(313, 34, 349),
(314, 34, 350),
(315, 35, 115),
(316, 36, 116),
(317, 37, 117),
(318, 38, 118),
(319, 39, 119),
(320, 40, 120),
(321, 40, 121),
(322, 40, 122),
(323, 40, 123),
(324, 40, 124),
(325, 40, 125),
(326, 40, 126),
(327, 40, 127),
(328, 40, 128),
(329, 40, 129),
(330, 40, 130),
(331, 40, 131),
(332, 40, 132),
(333, 40, 133),
(334, 40, 134),
(335, 40, 135),
(336, 40, 136),
(337, 40, 137),
(338, 40, 138),
(339, 40, 139),
(340, 40, 140),
(341, 40, 140),
(342, 40, 142),
(343, 40, 143),
(344, 41, 121),
(345, 41, 411),
(346, 41, 412),
(347, 41, 413),
(348, 41, 414),
(349, 42, 122),
(350, 43, 123),
(351, 44, 124),
(352, 45, 125),
(353, 46, 126),
(354, 47, 127),
(355, 48, 128),
(356, 49, 129),
(357, 50, 130),
(358, 50, 131),
(359, 51, 132),
(360, 51, 133),
(361, 51, 134),
(362, 51, 135),
(363, 51, 136),
(364, 51, 137),
(365, 51, 1),
(366, 51, 2),
(367, 51, 2),
(368, 51, 4),
(369, 51, 5),
(370, 51, 6),
(371, 51, 7),
(372, 51, 8),
(373, 52, 135),
(374, 52, 10),
(375, 52, 1),
(376, 52, 3),
(377, 52, 136),
(378, 52, 5),
(379, 52, 6),
(380, 53, 137),
(381, 53, 7),
(382, 53, 8),
(383, 53, 9),
(384, 53, 10),
(385, 54, 138),
(386, 54, 138),
(387, 54, 139),
(388, 54, 140),
(389, 54, 141),
(390, 54, 142),
(392, 55, 44),
(393, 55, 45),
(394, 55, 46),
(395, 55, 47),
(396, 55, 140),
(397, 55, 141),
(398, 55, 55),
(399, 56, 142),
(400, 56, 143),
(401, 57, 144),
(402, 57, 145),
(403, 58, 146),
(404, 58, 147),
(405, 59, 148),
(406, 60, 149),
(407, 60, 150),
(409, 61, 111),
(410, 61, 112),
(411, 61, 113),
(412, 61, 114),
(413, 61, 115),
(414, 61, 116),
(415, 61, 117),
(416, 61, 118),
(417, 61, 119),
(418, 61, 120),
(419, 61, 121),
(420, 61, 122),
(422, 62, 153),
(423, 62, 311),
(424, 62, 312),
(425, 62, 313),
(426, 62, 314),
(427, 62, 315),
(428, 62, 316),
(429, 63, 154),
(430, 63, 91),
(431, 63, 92),
(432, 63, 93),
(433, 63, 94),
(434, 64, 155),
(435, 64, 81),
(436, 64, 82),
(437, 64, 83),
(438, 65, 156),
(439, 65, 157),
(440, 65, 84),
(441, 65, 85),
(442, 65, 86),
(443, 65, 87),
(444, 65, 88),
(445, 65, 89),
(446, 65, 90),
(447, 65, 91),
(448, 65, 92),
(449, 65, 93),
(450, 65, 94),
(451, 65, 95),
(452, 65, 96),
(453, 65, 97),
(454, 65, 98),
(455, 65, 99),
(456, 65, 100),
(457, 65, 101),
(458, 65, 102),
(459, 65, 103),
(460, 65, 104),
(461, 65, 105),
(462, 65, 106),
(463, 65, 107),
(464, 65, 108),
(465, 65, 109),
(466, 65, 110),
(467, 65, 111),
(468, 65, 112),
(469, 65, 113),
(470, 65, 114),
(471, 65, 115),
(472, 65, 116),
(473, 65, 117),
(474, 65, 118),
(475, 65, 119),
(476, 65, 120),
(477, 65, 121),
(478, 65, 122),
(479, 65, 123),
(480, 66, 158),
(481, 66, 1),
(482, 66, 2),
(483, 66, 3),
(484, 66, 4),
(485, 67, 159),
(486, 67, 5),
(487, 67, 6),
(488, 67, 7),
(489, 67, 8),
(490, 67, 9),
(492, 68, 66),
(493, 68, 67),
(494, 68, 68),
(495, 68, 69),
(497, 69, 162),
(498, 69, 66),
(499, 69, 225),
(500, 69, 224),
(501, 69, 223),
(502, 70, 200),
(503, 72, 501),
(504, 72, 502),
(505, 72, 503),
(506, 72, 12),
(507, 72, 13),
(508, 72, 14),
(509, 72, 15),
(510, 72, 16),
(511, 72, 17),
(512, 72, 18),
(513, 72, 19),
(514, 72, 20),
(515, 72, 21),
(516, 72, 22),
(517, 72, 23),
(523, 71, 530),
(527, 70, 530),
(530, 69, 530),
(531, 68, 530),
(536, 65, 530),
(540, 63, 530),
(541, 62, 530),
(545, 58, 530),
(549, 54, 530),
(551, 34, 530),
(552, 55, 530),
(554, 30, 530),
(561, 23, 530),
(569, 13, 530),
(571, 12, 530),
(573, 17, 530),
(575, 10, 530),
(579, 8, 530),
(581, 6, 530),
(585, 4, 530),
(588, 1, 530),
(609, 73, 530);

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
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
