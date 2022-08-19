-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-19 15:34:32
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
-- 資料表結構 `recipe`
--

CREATE TABLE `recipe` (
  `recipes_sid` int(11) NOT NULL,
  `recipes_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_time_cost` int(11) DEFAULT NULL,
  `recipes_portion` int(11) DEFAULT NULL,
  `recipes_calories` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_cooking_degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_ingredient9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_step` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_step1` varchar(255) DEFAULT NULL,
  `recipes_step2` varchar(255) DEFAULT NULL,
  `recipes_step3` varchar(255) DEFAULT NULL,
  `recipes_step4` varchar(255) DEFAULT NULL,
  `recipes_step5` varchar(255) DEFAULT NULL,
  `recipes_step6` varchar(255) DEFAULT NULL,
  `recipes_step7` varchar(255) DEFAULT NULL,
  `recipes_step8` varchar(255) DEFAULT NULL,
  `recipes_step9` varchar(255) DEFAULT NULL,
  `recipes_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipes_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipe_creater` varchar(255) DEFAULT NULL,
  `recipes_like` int(11) DEFAULT NULL,
  `recipes_collection` int(11) DEFAULT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `recipe`
--

INSERT INTO `recipe` (`recipes_sid`, `recipes_name`, `recipes_time_cost`, `recipes_portion`, `recipes_calories`, `recipes_type`, `recipes_cooking_degree`, `recipes_ingredient`, `recipes_ingredient1`, `recipes_ingredient2`, `recipes_ingredient3`, `recipes_ingredient4`, `recipes_ingredient5`, `recipes_ingredient6`, `recipes_ingredient7`, `recipes_ingredient8`, `recipes_ingredient9`, `recipes_step`, `recipes_step1`, `recipes_step2`, `recipes_step3`, `recipes_step4`, `recipes_step5`, `recipes_step6`, `recipes_step7`, `recipes_step8`, `recipes_step9`, `recipes_description`, `recipes_img`, `recipe_creater`, `recipes_like`, `recipes_collection`, `created_at`, `customer_id`) VALUES
(1, '櫛瓜骰子牛', 15, 3, '400', '台灣料理', '新手輕鬆入門', '櫛瓜一條', '骰子牛一包', '蒜頭3-4粒', '鹽適量', ' 黑胡椒適量', '自製豬油或橄欖油適量', '', '', '', '', '準備一條櫛瓜，和一包骰子牛', '櫛瓜切片', '兩面煎焦黃，撒點鹽和黑胡椒調味，起鍋備用', '原鍋子煎蒜頭和骰子牛', '最後把櫛瓜加進來翻炒後起鍋', '', '', '', '', '', '減脂也要美味，美味也要減脂', 'f7c081cb10d82c37fcf66cd296c2c52f.jpg', 'curry', 23, 34, '2022-06-01', 530),
(2, '破布子蒸魚', 20, 4, '500', '台灣料理', '新手輕鬆入門', '比目魚切片  1片(約260公克)\n', '米酒  1又1/2大匙', '鹽 少許', '蔥  二支', '薑  25公克', '紅辣椒  1~1/2條', '破布子(含汁)  2大匙', '醬油  1小匙', '白胡椒粉  1/8小匙', '香油  1/2小匙', '準備食材。蔥洗淨分成蔥段和蔥絲。薑，去皮切成絲。紅辣椒，切成絲。', '比目魚切片洗淨，塗抹少許鹽在魚身上，並淋上米酒。', '調製淋醬，將破布子含汁、醬油、香油、白胡椒粉，到入拌勻。', '圓盤底先放上蔥段，再放上比目魚切片，放上薑絲，淋上醬汁。', '電鍋外鍋先預放水蒸熱，待電鍋水蒸氣冒煙時，再將魚放入電鍋內蒸，約蒸15分鐘。 ', '蒸好時，再放入蔥絲、紅辣椒絲，回蒸一下子(約1分鐘)即可。', '', '', '', '', '破布子蒸魚，使用電鍋即可輕鬆完成，零廚藝美味料理。', 'ca7b8438864a56726c10d30bd91a578e.jpg', 'farmer', 18, 31, '2022-06-01', 536),
(3, '味噌烤鯖魚', 15, 4, '300', '日式料理', '新手輕鬆入門', '半邊鯖魚 2片\n', '味噌 2 湯匙', '日式料理酒 2 湯匙', '味醂 2 湯匙 ', '日本醬油 1/2 茶匙', '糖 2 茶匙', '', '', '', '', '把鯖魚洗淨印乾後，每塊切成3份', '把味噌、日式料理酒、味醂、日本醬油和糖拌勻成醬汁。', ' 把鯖魚和醬汁放入食物袋中，讓鯖魚都沾到醬汁，放入冰箱(4℃)醃2小時以上。 ', '在烤盤上鋪上鋁箔紙並放上網架，在網架上抹油。把鯖魚放在網架上，把一些餘下的醬汁掃在鯖魚上。', ' 放入己預熱至200℃的烤箱中層烤5分鐘。', '取出鯖魚，再把一些餘下的醬汁掃在鯖魚上，放回烤箱中多烤5分鐘即成。', '', '', '', '', '冷凍鯖魚便宜又方便，除了做鹽燒鯖魚或照燒鯖魚，可以試試做這個金黃色的味噌鯖魚，好看又好吃！', 'bccb8a1828f502a9a3d7dc3d605251b9.jpg', 'loki', 29, 44, '2022-06-01', 508),
(4, '金沙蒜醬焗烤明蝦', 20, 4, '600', '台灣料理', '新手輕鬆入門', '澎湖野生大明蝦  4隻', '焗烤起司絲  10g', '鹹蛋黃  3顆', '米酒  2匙', '大蒜  2瓣', '美乃滋  2匙', '檸檬汁  1匙', '', '', '', '料理前，將明蝦以流水沖5分鐘即可退冰，更能完整保持野生大明蝦Q彈鮮脆的肉質', '退冰後的澎湖野生大明蝦，取一把剪刀，從蝦頭和蝦身的間隙，剪開蝦背。', '將腸泥取出丟掉，大明蝦就處理完成。', '準備鹹蛋黃、美乃滋、蒜末、檸檬汁。', '將米酒淋在鹹蛋黃上，稍微浸泡1分鐘。因為生的鹹蛋黃味道較腥，用米酒浸泡一下，可以去除腥味。', '泡好的鹹蛋黃，瀝乾後，置於烤盤，放入烤箱，用150°C烤15分鐘。', '用叉子將鹹蛋黃壓碎，壓成顆粒細緻的狀態即可。', '將美乃滋、蒜末、檸檬汁，加入壓碎的鹹蛋黃中', '', '', '來自水質清澈的沙質海底，「澎湖野生大明蝦」肉質Q彈鮮脆，而且非常鮮甜，隻隻肥美、蝦膏濃郁，是老饕的最愛。\r\n搭配鹹蛋黃做成的金沙蒜醬，只要焗烤一下，口味香濃的宵夜立即上桌。', '0f06264e9e2497a0449ac3dbdcf68533.jpg', 'curry', 16, 26, '2022-06-01', 530),
(5, '水牛城辣雞翅', 30, 5, '600', '美式料理', '餐廳廚師料理', '雞二節翅 20支', '地瓜粉 兩大匙 大蒜粉 一大匙', '黑胡椒、白胡椒各1匙', '鹽 2/1匙', ' 紅椒粉 一大匙（可調整）', '泰國是拉差辣醬 大量', '奶油 30克', '蜂蜜 兩大匙', '檸檬汁 半顆', ' 洋蔥末 8/1顆', '將大蒜粉 鹽巴 麵粉 混合在一個大的夾鏈袋內', '將雞翅放入夾鏈袋中 搖晃直至每個雞翅都沾滿麵粉 將雞翅放上烤盤', '上面覆蓋保鮮膜並且冷藏至少1小時', '準備沾醬 將奶油融化並且與辣椒醬攪拌均勻 並預熱烤箱 400f/204c', '將冷藏好的雞翅 拿出並且沾滿醬 且放置烤箱烤25分鐘 反面後再烤20分鐘', '直接放在鋁箔紙上，外層有一點焦 但吃起來比較鹹也比較酥脆 若用網架 肉會比較軟 外層也比較軟，但比較不油一些 可以依個人口味而選擇放網或不放', '若覺得不夠味可以另外沾辣椒醬', '', '', '', '在美國紅到有特定節日的料理，用烤箱及鍋子即可完成', '5fae45ceb8a9db0f9f77d8b77856f8c2.jpg', 'bob', 17, 33, '2022-06-01', 525),
(6, '蕃茄肉捲', 10, 4, '500', '台灣料理', '新手輕鬆入門', '豬五花火鍋肉片12片\n', '小蕃茄12個', '鹽適量', '4.黑胡椒適量', '', '', '', '', '', '', '一片肉捲起一個小番茄', '用竹籤穿過番茄肉捲，一串四個', '入氣炸鍋160度10分鐘，也可以用烤箱烤或用烤肉架烤喔!!', '烤好後撒上白芝麻，一口咬下，酸甜的番茄味道，馬上充滿口中，除了撒白芝麻，黑胡椒跟七味粉也很不錯喔!!', '', '', '', '', '', '', '適合中秋節烤肉的料理', 'de83857d411770e5527cd1e85ec7b73b.jpg', 'thor1111333', 15, 25, '2022-06-01', 505),
(7, '蔥香肉排', 15, 5, '400', '台灣料理', '新手輕鬆入門', '豬絞肉（細）  350克', '蔥末 30克', '醬油 1大匙', '干貝風味調味粉 2克', '白胡椒粉 適量', '太白粉 1大匙', '香油 4、5滴', '', '', '', '將所有材料混合抓勻。（胡椒粉多一些，香氣更濃郁）', '平底不沾鍋放入適量油，先大火熱鍋約1分半鐘，轉小火。熱鍋的時候，將混拌均勻的絞肉抓取一坨，先在手上擠成一丸，用手壓扁些（如照片），等熱鍋完成就放入平底鍋。', '香氣十足的肉排上桌了！做法超簡單，而且好下飯！重點是多汁軟嫩又好吃！', '', '', '', '', '', '', '', '肉排多汁且混合蔥香、胡椒香，風味迷人。', '2e918083242e60250e5cdf7577bd2a45.jpg', 'thor1111333', 21, 32, '2022-06-01', 505),
(8, '醬燒豆包', 15, 3, '500', '台灣料理', '餐廳廚師料理', '豆包  6片', '素蠔油 2大匙', '蕃茄醬 1大匙', '烏醋 1/2大匙', '白胡椒粉 1小匙', '蔥花 3大匙', '熱開水 1/3碗', '辣椒(配色用，可略） 少許', '', '', '豆包對切，入油鍋，以中火煎至二面略呈酥皮狀。', '所有調味料拌勻', '爐火轉中小火，將醬汁酌量(約1/3)倒入步驟1當中，使豆包二面均勻沾裹醬汁後盛盤。', '原鍋續倒入剩餘的醬汁、蔥花及辣椒(可略)，以小火煮滾。', '在盛盤的豆包淋上蔥花醬汁，料理完成。', '', '', '', '', '', '常見的家常菜，食材易取得，容易料理', 'f10727d349096eb6c58b8257138e3733.jpg', 'curry', 14, 20, '2022-06-01', 530),
(9, '韓式辣味豆芽菜', 20, 3, '200', '韓式料理', '新手輕鬆入門', '黃豆芽一包', '鹽巴適量', '2.蒜泥適量', ' 3.醬油適量', '4.辣椒粉適量', '5.蔥花適量', '', '', '', '', '先煮一鍋滾水，放入少許鹽與黃豆芽，蓋上鍋蓋中火煮約3分鐘。', '煮好後撈起立刻沖水，讓黃豆芽口感較清脆。', '取一保鮮盒，放入蒜泥、醬油、鹽、白芝麻油或辣椒粉，一起攪拌均勻，最後灑一點蔥花點綴，即完成。', '', '', '', '', '', '', '', '涼拌製作的韓式料理，使用蔬菜、調味與辛香料', '1a4805637aa3dc71a75ca73c564e6d5c.jpg', 'farmer', 14, 21, '2022-06-01', 536),
(10, '雞胸酪梨卷', 20, 3, '600', '台灣料理', '新手輕鬆入門', '雞胸肉(去皮)150g', '酪梨1/4個', '大杏鮑菇1/2根', '蒜頭1瓣', '起士片1片', '白醋1大匙', '蜂蜜1大匙', '醬油1小匙', '黑胡椒適量', '鹽適量', '首先處理食材：將番茄及蘿蔓生菜洗淨後，番茄去除蒂頭後切片、蘿蔓生菜對半切', '酪梨對切後，去除果核，再將果肉取出放入果汁機中打成酪梨泥', '電鍋中墊一張沾濕的廚房紙巾，並放入雞蛋加熱，等電鍋跳起後，取出雞蛋以冷水沖洗並去殼，最後將雞蛋切片備用', '雞里肌以廚房紙巾擦乾後放入鍋中煎香，並撒上黑胡椒調味', '乾烙印度餅皮至微焦狀態，並取出墊上錫箔紙開始堆疊食材，小心的把食材疊上，最後將餅皮捲起包覆所有食材，以扭毛巾的方式將錫箔紙兩端捲成鉛筆狀', '最後將捲好的錫箔紙對半切，就完成墨西哥酪梨雞肉捲餅囉', '', '', '', '', '適合夏天的西式料理，相當爽口', '3890202e8e05abeecd81b6c5ce50857c.jpg', 'curry', 14, 25, '2022-06-01', 530),
(11, '台式打拋豬', 10, 3, '600', '台灣料理', '新手輕鬆入門', '豬絞肉  150克', '杏鮑菇  2小條', '綠櫛瓜  1/3條', '九層塔  半包', '鹽巴或雞粉  適量', '小辣椒  1條（非必要）', '', '', '', '', '九層塔洗淨，粗梗摘除。杏鮑菇與櫛瓜切成大小差不多的方塊狀，辣椒切小段備用。', '熱過後加油，放入絞肉炒至半熟。', '加入櫛瓜/杏鮑菇塊，拌炒至熟。', '加入調味料後，加九層塔葉拌炒，香味出來就差不多可以了。須注意不需要炒太久，保持九層塔葉漂亮的綠色。', '', '', '', '', '', '', '打拋豬是一道非常下飯的料理，減醣的時候少吃精緻澱粉，直接吃也不會過鹹，非常清爽', '33e408ef1e154e615600395ca2ea1182.jpg', 'curry', 16, 27, '2022-06-01', 530),
(12, '涼拌金針菇', 10, 4, '200', '台灣料理', '新手輕鬆入門', '金針菇  200g', '紅蘿蔔  40g', '小黃瓜  70g', '蒜頭  3瓣', '青蔥  1/2根', ' 香油、醬油各1大匙', '鹽  1/5茶匙', '糖  1/8茶匙', '白胡椒粉  少許', '烏醋  1.25大匙', '紅蘿蔔、小黃瓜切絲；蒜頭切末；青蔥切蔥花；金針菇去根部撥散備用。', '將小黃瓜絲以1/4茶匙的鹽抓醃，去青出水。', '起一鍋沸水，放入金針菇煮2分鐘，再放入紅蘿蔔汆燙30秒，取出瀝乾水份，倒入調理盆。', '另取鍋，倒入香油，中火爆香蒜末及蔥白。', '將步驟4倒入步驟3，撒上蔥花及小黃瓜絲。', '加入鹽、糖、白胡椒粉及醬油拌勻，最後再加入烏醋提味即可。', '', '', '', '', '做法快速又簡單，絕對是零失敗料理', '3438af3529e58685c40e56e33cca6519.jpg', 'thor1111333', 5, 9, '2022-06-01', 505),
(13, '杏鮑菇炒空心菜', 10, 3, '300', '台灣料理', '新手輕鬆入門', '空心菜  1大把', '杏鮑菇  3根', '鹽巴  適量', '油  適量', '', '', '', '', '', '', '備料，杏鮑菇切塊，切空心菜。', '油下，先炒杏鮑菇。', '鍋蓋蓋上悶杏鮑菇，火別太大，等菇慢慢出水。', '出來的水可以炒菜。加鹽調味，完成。', '', '', '', '', '', '', '快速簡單。夏天的葉菜種類較少，用菇類做點變化。', 'db494ecec400f7d582d0962c3fa46607.jpg', 'thor1111333', 17, 31, '2022-06-01', 505),
(14, '麻油肉燥燙地瓜葉', 5, 4, '300', '台灣料理', '新手輕鬆入門', '地瓜葉  半包', '麻油  1小匙', ' 肉燥料理包  1包', '', '', '', '', '', '', '', '清洗乾淨後挑葉子，葉梗去硬皮。地瓜葉富含鐵質，遇到空氣易變黑，挑菜時可以戴著手套。', '切地瓜葉每段5公分，葉梗、葉子分開放。', '鍋子水滾加點油防葉子變黑先放葉梗悶煮，再放青菜約2分鐘。', '起鍋加少許麻油及泡麵沒用的肉燥料理包，就可以輕鬆上菜。', '', '', '', '', '', '', '地瓜葉又稱蕃薯葉，清燙再加上靈魂醬汁，就是道完美的家常菜', 't48d6f946c292a72ec440dbc4422fa5d.jpg', 'curry', 9, 19, '2022-06-01', 530),
(15, '蛋香高麗菜鮮蝦湯麵', 20, 3, '500', '台灣料理', '新手輕鬆入門', '冷凍大蝦子  依個人喜愛', '鮮肉貢丸  依個人喜愛', '高麗菜  1/6顆', '雞蛋  2顆', '青蔥  1支', '刀削麵  2片', '鹽巴  依個人喜愛', '味精  依個人喜愛', '', '', '蝦子不需退冰、高麗菜洗好撥小塊、青蔥切段、雞蛋打散', '熱鍋下油把蛋煎熟，稍微焦焦的更香，接著放入青蔥稍微拌炒。加入約1000cc開水，放入貢丸等水滾', '水開始滾後放入高麗菜，把高麗菜煮軟', '接著放入麵條', '麵條微軟之後放入蝦子並調味', '等蝦子煮熟就可以起鍋', '', '', '', '', '適合冬天喝下，暖胃的熱湯', '75e15d6f8727399802b1392c400b99b2.jpg', 'bob', 14, 23, '2022-06-01', 525),
(16, '櫻花蝦油飯', 10, 3, '500', '台灣料理', '新手輕鬆入門', '糯米  3杯', '肉絲  適量', '香菇(泡水0.4杯)  4朵', '櫻花蝦、紅蔥頭  適量', '醬油、蠔油各2匙', '鹽、太白粉各1匙', '水  40cc', '白胡椒  適量', '', '', '油2大匙、紅蔥頭、櫻花蝦5匙，炒香', '加香菇絲、鹽2匙，炒半軟', '加肉絲，拌炒變色，熄火備用', '糯米3杯、香菇水、水2杯、炒料，選擇糯米，開始炊飯', '', '', '', '', '', '', '糯米搭配香菇與蝦米的飯食料理', 'e4fa1e2b21e2a9ee98a9ccb1b8e1fefe.jpg', 'thor1111333', 8, 15, '2022-06-01', 505),
(17, '煎蛋湯', 10, 5, '500', '台灣料理', '新手輕鬆入門', '雞蛋（土雞蛋最香）  5顆', '蔥（切蔥花）  2支', '鹽巴或雞粉  適量', '白胡椒  少許', '', '', '', '', '', '', '1.起油鍋，熱油（油要比平常再多一些些），油要夠蛋才會香', '兩面煎金黃，油冒泡泡', '加水約900ml，煮到沸騰，再用鍋鏟把蛋切開，繼續煮到湯變白', '調味，最後下蔥花和白胡椒', '喜歡吃麵可以加麵，喜歡吃飯可以湯拌飯。', '', '', '', '', '', '蛋花湯的變化，顛覆大眾對蛋花湯的印象', 'b161f75f968c10be8f35001b502d14c0.jpg', 'cccccc', 11, 22, '2022-06-01', 503),
(18, '紙包檸檬鮭魚菲力', 20, 5, '600', '日式料理', '新手輕鬆入門', '鮭魚菲力  250g', '無鹽奶油  10g', '檸檬  半顆', '四季豆(甜椒、花椰菜、玉米筍)  適量', '蒜頭  4~6瓣', '胡椒鹽  2茶匙', '', '', '', '', '1.鮭魚菲力沖洗乾淨，輕輕擦乾', '將鮭魚放在烘焙紙上，塗抹胡椒鹽、擠上檸檬汁，放入奶油及四季豆(依個人喜好四季豆可替換為其他時蔬)，鋪上檸檬片', '將烘焙紙像糖果一樣包起來，兩邊扭結，氣炸鍋溫度180度，時間20分鐘(依鮭魚菲力大小調整時間，本次使用鮭魚較厚，時間有烤比較久)', '烤完即可食用', '', '', '', '', '', '', '零失敗食譜，在家也能完成西餐廳料理', 'b0fd632a003a439d13eef6fef4027a0a.jpg', 'curry', 14, 20, '2022-06-01', 530),
(19, '照燒油豆腐', 20, 4, '400', '台灣料理', '新手輕鬆入門', '油豆腐  1盒', '蔥  2-3根', '醬油  1匙', '米酒  少許', '砂糖  少許', '', '', '', '', '', '下少許油煎油豆腐至兩面金黃，再加入蔥白段炒香。', '再加入醬油、米酒、砂糖煮至兩面入味，醬汁收乾，即可上桌。', '', '', '', '', '', '', '', '', '食材容易取得，簡單製作的家常料理', 'c69f681687ed7a38177b1495fc79fe7c.jpg', 'loki', 14, 24, '2022-06-01', 508),
(20, '魚香茄子', 10, 2, '300', '台灣料理', '新手輕鬆入門', '茄子  兩條', '豬絞肉  約100克', '米酒  適量', '蒜末  適量', '大辣椒碎  半支', '醬油  一大匙', '糖  一茶匙', '水  約半碗', '九層塔  適量', '', '茄子切等長、辣椒蒜頭切末備用', '開中大火加油熱鍋，倒入豬絞肉翻炒，大致熟透後加入適量米酒去腥', '加入蒜末炒香、辣椒碎(怕辣的話可以最後再加)與茄子拌炒均勻', '茄子都吃到油後，加入醬油炒出醬香，再加入一小匙糖', '拌炒均勻後加入約半碗水煨煮', '收汁收的差不多的時候加入九層塔拌炒', '下飯的魚香茄子就完成', '', '', '', '好吃的茄子料理，食材容易取得', '30269561b4750bc5bcb5bbbf2a05e12c.jpg', 'loki', 10, 15, '2022-06-01', 508),
(21, '虱目魚肚粥', 20, 1, '500', '台灣料理', '新手輕鬆入門', '虱目魚肚  2塊', '白飯  1.5碗', '蛤蜊  200克', '蒜末、紅蔥頭 、薑絲各10克', '芹菜末、蒜酥  適量', '高湯或水  1000毫升', '鹽  適量', '胡椒粉  1匙', '米酒  1匙', '', '虱目魚肚洗淨，擦乾水分，少許油兩面各煎30秒撈出備用。', '放入蒜末、紅蔥頭、薑絲炒香，加入高湯或水，放入米飯，煮至喜愛的口感。', '放入蛤蜊煮開，加米酒、胡椒粉增添鮮味，試味道後，鹽巴調味。', '再放入魚肚煮3分鐘即可，食用前，撒點芹菜、蒜酥增添風味即可上桌。', '', '', '', '', '', '', '所謂台南人的早餐～虱目魚肚粥', '6a1fe9731f8707ff07a0943d8aed637b.jpg', 'curry', 18, 29, '2022-06-01', 530),
(22, '紅酒馬鈴薯燉肉', 120, 3, '500', '日式料理', '餐廳廚師料理', '豬岬心  300g', '馬鈴薯  2顆', '薑  3片', '紅酒  60-100g', '日式風味醬油  40g', '冰糖  30g', '紅蘿蔔  1根', '洋蔥  1/4', '', '', '1.豬岬心切塊', '豬肉熱水汆燙 把薑三片一起丟進去去腥', '汆燙完 進燉鍋 稍微煎一下', '加水到淹過食材', '邊滾邊加入食材，先投入紅酒 日式風味醬油、冰糖，再投入馬鈴薯 紅蘿蔔 洋蔥，燉到收汁即可', '', '', '', '', '', '風味獨特的西式料理，加白靈菇、鴻喜菇也不錯', 'eb8462298c2bbeffaac86db7833517d0.jpg', 'thor1111333', 9, 20, '2022-06-01', 505),
(23, '左宗棠雞', 25, 4, '500', '中式料理', '餐廳廚師料理', '1.去骨雞腿排  500g', '大辣椒  3條', '食用油 (耐高溫)  120ml', '醬油、太白粉  1.5大匙', '雞蛋  1顆', '太白粉  1.5大匙', '油  1茶匙', '蒜頭  3瓣', '蕃茄醬、細砂糖、白醋、料理米酒、水各1大匙', '白胡椒粉  少許', '去骨雞腿先劃刀 (加速雞肉熟成及入味速度)再切成適口大小，辣椒切段(不嗜辣者可去籽)；蒜頭切末；蔥切絲後泡水擺盤用。', '雞肉與醃料拌勻醃15分鐘（下鍋前再依序抓太白粉和油）。加入油可讓雞肉下鍋油炸時，肉較不易黏在一團。', '將蒜末與調好之醬汁拌勻備用。', '鍋內倒入120ml的油，將步驟1的雞肉以中火半煎炸的方式煎至表面呈金黃色後先起鍋備用。(二面各約2分鐘左右) 若使用傳統油炸方式，雞肉表面會更加香酥 (油炸可用160度炸至表面金黃)', '鍋內留下一大匙的油，小火爆香辣椒，放入步驟4的雞肉', '', '', '', '', '', '歸類於中國菜系中的湘菜，卻不被湖南人認同。多見於美國與加拿大的中餐館。', '1ed4a6dbd27be33a03c874fe5d51b6cd.jpg', 'cccccc', 10, 19, '2022-06-01', 503),
(24, '日式蔥燒雞', 15, 2, '600', '台灣料理', '新手輕鬆入門', '雞腿肉  2塊', '蔥  1大把', '鹽  1/3小匙', '黑胡椒  1/3小匙', '米酒  1 大匙', '太白粉  2大匙', '生蒜泥醬  1小匙', '砂糖  1大匙', '味霖  2大匙', '醬油  2大匙', '將肉切成入口大小，以鹽、黑胡椒、米酒醃 10 分鐘，下鍋前再放入太白粉裏勻', '將所有醬汁先放入小碗中拌勻', '將醃好的肉下鍋煎至金黃！雞皮朝下開始煎，中火一面1分鐘', '倒入醬汁，蓋上鍋蓋，悶煮約30秒', '開蓋後後放入蔥稍微拌炒一下', '收汁後就算完成，如果要做成燴飯就不要煮太久～', '', '', '', '', '滿滿的蔥香加上鹹甜的醬汁，非常下飯的一道料理！也可以直接做成燴飯', '0d9a2f7c41b04b9e4b35d5bb69979ed1.jpg', 'farmer', 12, 21, '2022-06-01', 536),
(25, '步步高升排骨', 20, 3, '400', '台灣料理', '新手輕鬆入門', '排骨  一斤', '米酒  一大匙', '砂糖  二大匙', '白醋  三大匙', '醬油  四大匙', '水  五大匙', '', '', '', '', '1.首先川燙排骨至肉變白，將水倒掉。', '依序加入所有調味。蓋鍋蓋轉中火，偶爾攪拌顏色才會均勻。 水滾後轉中小火，慢慢燜乾。', '醬汁快乾時轉大火，增添排骨的顏色。', '', '', '', '', '', '', '', '簡單的調味，就能有好吃的排骨。', '802882fb633fbdbac90d6830a59ff6e2.jpg', 'curry', 11, 15, '2022-06-01', 530),
(26, '三杯雞', 20, 4, '600', '台灣料理', '新手輕鬆入門', '雞肉  適量', '醬油  一大匙', '米酒  一大匙', '太白粉  一大匙', '麻油  30g', '醬油  5大匙', '米酒  5大匙', '水  4大匙', '', '', '熱鍋後加入油先把A下去煎熟,取出盤', '把瀝起來的雞油+薑片炒乾後再加入蒜頭+冰糖小火炒(記得持攪拌後+放入步驟一雞肉炒', '接著把步驟B材料放入小火收汁後加入辣椒,放入砂鍋內再放入九層塔蓋蓋子,在到一點點米酒在蓋子周圍即可', '', '', '', '', '', '', '', '簡單容易料理的家常菜，常見於各家庭餐桌', '3f030b6a61d4dea41b126b71d0653bb3.jpg', 'bob', 12, 22, '2022-06-01', 525),
(27, '墨西哥雞肉捲餅', 10, 1, '600', '美式料理', '新手輕鬆入門', '墨西哥餅皮  2張', '起士片  1片', '生菜  適量', '雞肉串  適量', '荷包蛋  2顆', '', '', '', '', '', '1.雞肉串直接用氣炸鍋加熱。', '用平底鍋加熱墨西哥餅皮、放上半片起士片。', '接著將生菜以及荷包蛋擺上、最後放上烤好的雞肉串並包起來即可。', '', '', '', '', '', '', '', '很適合搭配啤酒的墨西哥料理', 'c40d596c1b82739b1da0a38ade00f23c.jpg', 'cccccc', 8, 17, '2022-06-01', 503),
(28, '蒜香蔥油雞', 30, 2, '500', '台灣料理', '新手輕鬆入門', '雞腿肉丁  400克', '蒜片  20克', '蔥花  200克', '香油  2大匙', '醬油  1大匙', '米酒  1大匙', '糖  1匙', '胡椒粉  1匙', '鹽巴  2小匙', '', '雞腿肉用醬油、米酒、糖、胡椒粉、鹽，醃漬10分鐘', '放入蒸鍋或電鍋蒸熟', '用鍋子將香油加熱，再放蒜片炒香，再放入大把蔥花快速拌炒出香氣即可', '將蔥油淋上雞肉，美味上桌', '', '', '', '', '', '', '蔥是提高免疫力，抗病毒很好的食材，享受美食的同時，順便增強免疫力', '1dfc348ade6572df05a1dcc33ecd9e71.jpg', 'farmer', 8, 17, '2022-06-01', 536),
(29, '豆腐鮮蝦大阪燒', 20, 1, '700', '日式料理', '新手輕鬆入門', '嫩豆腐  150g', '雞蛋  1顆', '柴魚片  2撮', '鹽  1茶匙', '烹大師  1小匙', '高麗菜  200g', '白蝦  8-10隻', '橄欖油  1大匙', '低脂美乃滋、大阪燒醬、海苔粉、柴魚片  依喜好', '', '嫩豆腐用廚房紙巾吸乾水份後 用打蛋器搗碎', '加入雞蛋、鹽、烹大師和捏碎的柴魚片 攪拌均勻', '將高麗菜切成1*1公分的小塊', '把高麗菜和已去殼、去腸泥、切小塊的蝦子 一起放入剛才的豆腐糊裡 攪拌均勻將可以開始煎，也可加透抽、章魚、小珠貝、蟹肉', '開中小火、在鍋裡倒入一匙橄欖油預熱', '將大阪燒糊分成四等份，放入平底鍋中 稍微整形一下。接著蓋上鍋蓋計時4分鐘 翻面再煎2分鐘即可', '盛盤後 淋上低脂美乃滋和大阪燒醬 灑上海苔粉 最後放上柴魚片就完成了。', '', '', '', '原本大阪燒的主體是以低筋麵粉+高湯來製作，這次以雞蛋+嫩豆腐來取代，不只降低熱量、升醣值，也提升了蛋白質含量！口感一樣鬆軟好吃！適合正在減脂、不敢吃高GI澱粉的人', 'ae106a35333b963601030a32f1de31c5.jpg', 'curry', 18, 30, '2022-06-01', 530),
(30, '迷迭香蒜蘑菇餃', 10, 2, '500', '歐式料理', '餐廳廚師料理', '蘑菇、洋蔥各200克', '橄欖油  1大匙', '生蒜泥  1匙', '白酒  100ml', '高湯  350ml', '帕瑪森起司  30g', '義大利香料粉(可省略)、新鮮或乾燥迷迭香、玫瑰鹽、黑胡椒  適量', '水餃  24顆(8顆/份)', '', '', '將迷迭香加入雞高湯中，將湯煮沸，味道相融後過濾掉。', '鍋內放橄欖油、無鹽奶油、月桂葉，拌炒洋蔥至透明軟化狀。', '加入蘑菇拌炒。', '加生蒜泥拌炒，很快會飄出香味。', '再將高湯、清酒加入，加黑胡椒、鹽調味後熄火、移除月桂葉並拌入帕瑪森起司、一大匙無鹽奶油（份量外）。', '淋上已經煮熟的水餃，完成。', '', '', '', '', '只要花10分鐘就可以搞定的營養健康美食', '508ba85ad2e55a0d02fc8db292029879.jpg', 'cccccc', 14, 28, '2022-06-01', 503),
(31, '香菇高麗菜飯', 15, 1, '400', '台灣料理', '新手輕鬆入門', '香菇(泡水1.5杯)  4朵', '肉絲  1-2片', '米  2.5杯', '高麗菜、蒜、白胡椒  適量', '辣椒  1根', '櫻花蝦  5匙', '鹽、太白粉各1匙', '醬油  2匙', '', '', '熱油4匙，加蒜、辣椒、櫻花蝦，炒香', '加高麗菜、香菇絲、香菇水、鹽2匙、醬油2匙，加蓋3分鐘，炒半軟', '加肉絲，拌炒變色，關火備用', '生米、水1杯，加炒料，開始炊飯', '', '', '', '', '', '', '簡易的家常料理，容易上手', '55a83f978b3f8e9c7b13528dbb863108.jpg', 'farmer', 13, 22, '2022-06-01', 536),
(32, '蒜香鹹蛋黃烤南瓜', 20, 3, '300', '美式料理', '新手輕鬆入門', '南瓜  600克', '鹹蛋黃  2顆', '橄欖油  1匙', '蒜末  10克', '胡椒粉  少許', '蔥花  少許', '', '', '', '', '南瓜去籽切塊，鹹蛋黃切碎', '南瓜放所有調味料，蒜末、鹹蛋黃，拌勻', '放入氣炸鍋，180度烤15分鐘，再撒點蔥花即可', '', '', '', '', '', '', '', '鮮甜可口的南瓜，裹上鹹香，口感沙沙的鹹蛋黃，營養飽腹，超級美味', '57817de4a830a813609ba21e0aa0613b.jpg', 'loki', 10, 15, '2022-06-01', 508),
(33, '紅燒吳郭魚', 10, 4, '500', '台灣料理', '新手輕鬆入門', '吳郭魚  1條', '蔥白、蔥綠、蒜頭、鹽  適量', '薑  4-5片', '米酒  2湯匙', '食用油  少許', '水  1米杯', '醬油  2.5湯匙', '', '', '', '蔥薑蒜先切好備用，蔥綠另外放，最後才下，蔥綠可以切段，也可以切絲，最後裝飾較美觀，醬汁先調好備用，米酒備用，最後起鍋前再加', '魚洗乾淨（內臟要清乾淨才不會有土味喔），接著擦乾多餘水份，在魚身上斜劃3-4刀，幫助入味，之後也好觀察魚肉有沒有熟，再來兩面均勻抹上鹽巴，稍微放置一下', '用不沾鍋，不用太多油熱鍋也不會沾黏魚皮，油熱後下魚煎至兩面金黃，中間有上蓋幫助快熟，一面中火煎約3-4分鐘，翻面的時候鏟子靠背鰭那面翻，魚較有支撐比較不會散掉。', '兩面金黃後，把魚移到邊邊騰出空間來，油集中到下面爆', '', '', '', '', '', '', '很家常的魚料理，考驗對食材的掌握度', 'b395572ac1fbc63429928c07e4c1415e.jpg', 'thor1111333', 18, 29, '2022-06-01', 505),
(34, '簡易版牛肉羅宋湯', 90, 3, '500', '日式料理', '米其林名廚作品', '牛肋條  3條', '義式番茄糊  1/2罐', '馬鈴薯（小顆）  2顆', '紅蘿蔔  1/3條', '洋蔥  適量', '西洋芹  1根', '高麗菜  1/4顆', '即食雞湯  1罐', '', '', '牛肋條切小塊，鍋子不加油燒熱，直接煎牛肋條塊，可以先加入一些海鹽、黑胡椒調味。', '用煸出的牛油一起拌炒紅蘿蔔跟洋蔥', '即食雞高湯加熱，將炒過的牛肉、蔬菜倒入鍋中，加入義式番茄糊', '中小火先燉煮40分鐘', '燉煮40分鐘後，水份會少一點（但不致於會燒到鍋子乾掉），加入馬鈴薯（切中小丁）再煮15分鐘', '40分鐘+15分鐘，可以試吃一下牛肉的軟爛程度和味道，即可上桌', '', '', '', '', '擁有豐富茄紅素的湯品料理', 'ef2cae0b21276b63b6be9a6b3a23e509.jpg', 'curry', 10, 19, '2022-06-01', 530),
(35, '香辣干貝醬佐杏鮑菇', 20, 3, '200', '台灣料理', '餐廳廚師料理', '豬絞肉  約300克', '杏鮑菇  2根', '蒜頭  2瓣', '干貝海鮮醬-小辣  2大匙', '水  3/1碗', '糖  適量', '白胡椒粉  1小匙', '米酒  2大匙', '', '', '先將豬絞肉撒一些白胡椒粉&加上約2湯匙的米酒捏捏放置備料約15分鐘（前置作業）', '蒜頭切末', '熱鍋熱油後，蒜末爆香金黃表面，再下豬絞肉拌炒約3分', '加入2湯匙干貝醬及杏鮑菇後加入約1/3碗水及砂糖調味，翻炒5～6分鐘熟後 即可起鍋', '', '', '', '', '', '', '又香又辣的白飯殺手料理', '7dbcfd8937745e5dbc8a191394920561.jpg', 'loki', 12, 26, '2022-06-01', 508),
(36, '肉捲飯糰', 60, 2, '500', '日式料理', '餐廳廚師料理', '白芝麻粒  適量', '豬梅花肉片  2盒', '鹽  適量', '醬油、味霖、米酒  2匙', '細砂糖  1匙', '壽司米  2米杯', '水  2.4米杯', '油  少許', '香鬆  適量', '', '煮飯（比例壽司米1：水1.2）', '待電鍋跳起微悶後用飯匙鬆飯，靜置微涼後加入香鬆攪拌均勻備用', '取一碗調製醬料， 豬梅花肉片灑上適量的鹽醃製15分鐘， 戴上手套將飯捏成圓形狀（可製作成9顆）', '取一保鮮膜，將肉片平鋪後放上飯糰捲起，再鋪上一片肉片另一邊開口處再捲起（每個飯糰使用2片肉片包）', '捲好的飯糰上均勻撒上適量太白粉，平底鍋加上適量油小火即可放入飯糰將每面煎至焦香', '加入半米杯水蓋上鍋蓋悶5分鐘至肉片熟透，加入照燒醬汁讓飯糰每面都沾裹到醬汁到收汁', '盛盤飯糰上撒上適', '', '', '', '裹上照燒醬汁的肉捲飯糰', 'bee12560c33037987b6e0c767ef83f5f.jpg', 'loki', 9, 14, '2022-06-01', 508),
(37, '泰式檸檬魚', 20, 4, '500', '南洋料理', '餐廳廚師料理', '鱸魚  半隻', '檸檬  一顆', '老薑  5篇', '蒜頭  8顆', '辣椒  1條', '洋蔥  半顆', '米酒  3大湯匙', '糖  一大湯匙', '魚露  3大湯匙', '', '洋蔥、蒜頭、辣椒切丁，檸檬切3片備用，其他擠汁', '鱸魚放入盤中，加米酒、薑片、蔥段放入電鍋蒸', '放入三片檸檬、蔥段再悶2分鐘', '洋蔥、蒜頭、辣椒打碎，並加入魚露', '調整一下擺盤，淋上醬料即完成', '', '', '', '', '', '炎炎夏日開胃的一道好料理', 'dd0d41a6e1b248b174171ad1738129c3.jpg', 'farmer', 13, 25, '2022-06-01', 536),
(38, '味噌湯', 10, 5, '300', '日式料理', '新手輕鬆入門', '味噌1小包  140公克', '洋蔥  半顆', '嫩豆腐  1盒', '水  1000cc', '奶粉  20公克', '砂糖  10公克', '柴魚片  少許(可不加)', '', '', '', '洋蔥半顆切絲', '嫩豆腐一盒切塊狀(大小依自己喜好)', '開大火，將1000cc的水先預熱，水煮熱之後，撈一些水起來先將味噌跟奶粉攪散', '水開始小滾(冒泡泡)之後，就可以下洋蔥絲，等水再次小滾，就下豆腐', '靜置1分鐘，再將攪好的味噌跟奶粉下鍋', '味噌下之後，蓋上鍋蓋直到再次小滾', '味噌澱粉含量高，如果大滾會整個冒出來，所以小滾就可以先將鍋蓋打開，開蓋之後轉小火，並將砂糖及柴魚下鍋，輕輕地拌勻', '等到湯滾了，就可以起鍋', '', '', '煮起來不會死鹹又甘甜的湯', '0e9b7457b20d44981c93b8f190e80150.jpg', 'curry', 11, 20, '2022-06-01', 530),
(39, '鮮蚵嫩豆腐', 10, 3, '400', '台灣料理', '新手輕鬆入門', '鮮蚵  半斤', '豆腐  一盒', '豆瓣醬  兩匙', '醬油、香油、米酒各一匙', '洋蔥  1/5', '蒜頭  4瓣', '辣椒  一根', '蔥  少許', '香菜  兩片', '', '熱鍋放油，辣椒/洋蔥/蔥花爆香', '倒入切好的嫩豆腐', '加入米酒/醬油/豆瓣醬，拿鏟子稍微推一下小心弄破豆腐', '加入鮮蚵', '等到收汁加點香油就可以起鍋', '加入香菜點綴', '', '', '', '', '搭配嫩豆腐根本是白飯殺手，煮起來又很簡單上手', '07e11f51f9d409804bafa4a34e937bac.jpg', 'bob', 11, 20, '2022-06-01', 525),
(40, '沙嗲烤雞肉串', 45, 3, '600', '南洋料理', '餐廳廚師料理', '雞肉  600克', '沙嗲醬、醬油、糖、蒜末、豆瓣醬（可省略）  1小匙', '香油  1大匙', '白胡椒粉  少許', '奶油  25克', '沙嗲醬  1大匙', '花生醬  2小匙', '糖  1大匙', '水  120毫升', '椰漿  120毫升', '將雞肉切小塊，然後用醃料醃雞肉最少一個小時', '將竹籤浸在熱水5分鐘，這可防止在烤時竹籤變黑。然將雞肉串起', '將雞肉串放在鋪有鋁箔紙的烤盤上，放入已預熱180度烤箱，烤約15 -18分鐘，烤至一半時間時，將雞肉翻面再烤（可在雞肉上塗少許油）', '沙嗲沾醬做法：將奶油放在鍋內，煮至溶化，然後下蒜末', '再下所有沾醬材料拌勻（除了椰漿），煮至醬汁濃稠後，再加椰漿煮沸即可完成', '', '', '', '', '', '充滿東南亞風味的沙嗲烤雞串', 'ffecb64e499a7cce7222fcb03ea9d208.jpg', 'bob', 19, 33, '2022-06-01', 525),
(50, '沙嗲烤雞肉', 45, 3, '100', '南洋料理', '餐廳廚師料理', '雞肉  600克', '沙嗲醬、醬油、糖、蒜末、豆瓣醬（可省略）  1小匙', '香油  1大匙', '白胡椒粉  少許', '奶油  25克', '沙嗲醬  1大匙', '花生醬  2小匙', '糖  1大匙', '水  120毫升', '', '將雞肉切小塊，然後用醃料醃雞肉最少一個小時。', '將竹籤浸在熱水5分鐘，這可防止在烤時竹籤變黑。然將雞肉串起', '將雞肉串放在鋪有鋁箔紙的烤盤上，放入已預熱180度烤箱，烤約15 -18分鐘，烤至一半時間時，將雞肉翻面再烤（可在雞肉上塗少許油）', '沙嗲沾醬做法：將奶油放在鍋內，煮至溶化，然後下蒜末', '再下所有沾醬材料拌勻（除了椰漿），煮至醬汁濃稠後，再加椰漿煮沸即可完成', '', '', '', '', '', '充滿東南亞風味的沙嗲烤雞串', 'ffecb64e499a7cce7222fcb03ea9d208.jpg', 'curry', 19, 33, '2022-06-01', 530),
(54, '藜麥沙拉', 10, 3, '200', '歐式料理', '新手輕鬆入門', '藜麥  40～50克', '花椰菜  適量', '橄欖油  2勺', '蜂蜜  1小勺', '小番茄  10顆', '白醋或黑醋或蘋果醋  1小勺', '黑胡椒  少許', '', '', NULL, '準備好食材，花椰菜燙熟、小番茄切半', '藜麥加兩倍水，滾水煮開至出小芽加到食材裡面', '把調好的油醋汁倒入', '攪拌均勻即可', '藜麥+蔬菜+優質蛋白質，營養豐富又有飽足感！', '', '', '', '', '', '炎炎夏日影響胃口？簡單的幾步料理方式，就能吃到營養健康又有飽足感的夏日減脂好滋味哦！', '4cc7566848d70c9538fb917a071d184a.jpg', 'curry', NULL, NULL, '2022-08-19', 530);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipes_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipes_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
