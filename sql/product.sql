-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 16 日 16:10
-- 伺服器版本： 10.4.21-MariaDB
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
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `sid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` int(11) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_unit` int(11) NOT NULL,
  `product_details` varchar(500) NOT NULL,
  `product_expire` int(11) NOT NULL,
  `product_inventory` int(11) NOT NULL,
  `product_supplier` int(11) NOT NULL,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 0,
  `product_status` tinyint(1) NOT NULL DEFAULT 1,
  `product_hashtag` varchar(255) NOT NULL,
  `sale_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`sid`, `product_name`, `product_type`, `product_img`, `product_price`, `product_unit`, `product_details`, `product_expire`, `product_inventory`, `product_supplier`, `hot_sale`, `product_status`, `product_hashtag`, `sale_time`, `created_at`) VALUES
(1, '頂級金枕頭榴槤', 2, '[\"durian03.jpg\",\"durian.jpg\",\"F- durian.png\"]', 800, 7, '泰國正宗直送台灣本島！當地新鮮現摘。果肉呈淺黃色，口感香甜細緻，一口咬下有如雪糕般鬆軟，香氣濃郁卻不刺鼻', 14, 30, 2, 1, 1, '[2]', NULL, '2022-07-17 20:53:37'),
(2, '日本弘前富士蘋果', 2, '[\"apples-02.jpg\",\"F-apple.jpg\",\"apple-03.jpg\"]', 80, 7, '產自日本蘋果金字招牌故鄉『青森縣』，味美香甜，果肉口感更勝富士蘋果，擁有優雅的瑰紅色外表，帶著黃色小點，果型圓潤相當討喜，吃起來的口感脆甜，硬度相稍低於密富士，但甜度高、酸度低、香氣濃郁、富有水分，口味柔和清爽。', 14, 30, 2, 0, 1, '[1,2,8]', NULL, '2022-07-17 20:53:37'),
(3, '無毒台灣香蕉', 2, '[\"banana.jpg\",\"F-banana.jpg\",\"banana-01.jpg\"]', 50, 1, '自然農法香蕉的品種的特色是特別有香氣，肉質十分細緻，口感綿密而扎實，是品質極佳香蕉品種。香蕉含有豐富鉀離子、色胺酸和可溶性纖維，有助於幫助消化。', 7, 2, 1, 1, 1, '[1,2,6,9]', NULL, '2022-07-17 20:53:37'),
(4, '有機藍莓空運進口', 2, '[\"blueberries-01.jpg\",\"blueberries.jpg\",\"F-blueberry.jpg\"]', 100, 6, '藍莓為小漿果，果實呈藍色，近圓形，果肉細膩，種子極小，甜酸適度，且具有香爽宜人的香氣，可鮮食，也可作為食品、飲料、醫藥等的原料。 不論新鮮或加工，藍莓的營養價值都是不容忽視。', 7, 30, 2, 0, 1, '[2,6]', NULL, '2022-07-17 20:53:37'),
(5, '嚴選台灣哈密瓜', 2, '[\"melon-01.jpg\",\"F-cantaloupe.webp\",\"melon-02.jpg\"]', 300, 7, '從育苗、長成、結果到成熟，均有塑膠布網室保護，生長過程中剔除品質不佳，只留下1-2顆幼果，網紋紅肉，果肉厚、甜度佳、香氣濃，品質有保證。 哈密瓜營養價值豐富，尤以維他命C及維他命A、鐵質含量非常豐富，是水果中的珍品，有「瓜中之王」的美稱', 12, 0, 1, 1, 1, '[2,4,8,9]', NULL, '2022-07-17 20:53:37'),
(6, '卓蘭楊桃', 2, '["F-carambola.jpg"]', 50, 6, '台灣栽種馬來西亞種的楊桃果實大，每顆可達300克~400克以上，成熟時顏色呈橙黃色，甚至橘紅色，非常鮮艷。加上味道特別甜，非常討好台灣大眾對水果講究甜味以及顏色要深的偏好。', 4, 30, 1, 0, 1, '[2,3,4,6]', NULL, '2022-07-17 20:53:37'),
(7, '美國加州空運櫻桃', 2, '[\"cherries011.jpg\",\"fresh-cherry.jpg\",\"F-cherry.jpg\"]', 200, 6, '富含維它命C與鐵質 水果紅寶石，吃起來口感甜中帶微酸、果肉滋味純美，美味好吃夏季超人氣天后。', 7, 30, 2, 0, 1, '[2]', NULL, '2022-07-17 20:53:37'),
(8, '新鮮蔓越莓', 2, '[\"F-cranberry.jpg\",\"bowcranberr.jpg\"]', 150, 6, '當季新鮮採，鎖住蔓越莓的營養，天然的酸甜滋味，開封即食應用多樣，無論是烘培、果汁、奶昔、果醬等，快速備餐的祕密武器，一包在手變化無窮', 7, 30, 2, 0, 1, '[2,9]', NULL, '2022-07-17 20:53:37'),
(9, '嚴選巨峰葡萄', 2, '[\"black-grape.jpg\",\"F-grape.jpg\",\"grapeplant.jpg\"]', 100, 1, '完全無農藥栽培的巨峰葡萄，果粉超級均勻細緻，幾乎是夢幻等級！果肉紮實有彈性，舒服的滋味讓人喉頭回甘，一點都不澀。無農藥栽培連皮吃，可以把葡萄皮滿滿的營養吃下去，超安心～', 5, 30, 2, 1, 1, '[2,3,8,9]', NULL, '2022-07-17 20:53:37'),
(10, '有機頂級珍珠芭樂', 2, '[\"F-guava.jpg\",\"guava-fruit.jpg\"]', 25, 3, '沒有噴農藥、化肥、除草劑，有機栽培，連皮都可以安心吃下肚，芭樂皮富含維生素C和多酚，芭樂果肉更富含纖維，連芭樂仔的含鐵量還是熱帶果實中最多的。', 7, 30, 1, 0, 0, '[2,4,6,8]', NULL, '2022-07-17 20:53:37'),
(11, '產銷履歷青江菜', 1, '[\"chinese-cabbage01.jpg\",\"v_leafy_bokchoy_2.jpg\"]', 30, 2, '含有豐富維生素C與鈣質，營養價值高。煮湯清炒都好吃、補充每日蔬菜攝取量！', 3, 30, 1, 0, 1, '[2,3,4,6]', NULL, '2022-07-17 20:53:37'),
(12, '【高山】高麗菜', 1, '[\"farmers-cabbage.jpg\",\"v_leafy_cabbage_3.jpg\"]', 60, 7, '口感：滋味甜脆、中肋細小，清炒、生食、涼拌醃漬、製作菜卷等都很適合。', 7, 30, 1, 0, 1, '[8,9]', NULL, '2022-07-17 20:53:37'),
(13, '白花椰菜', 1, '[\"cauliflower.jpg\",\"v_leafy_cauliflower.jpg\"]', 60, 7, '花椰菜富含維生素B群、C，這些成分屬於水溶性，易受熱溶出而流失，所以煮花椰菜不宜高溫烹調，也不適合水煮。', 7, 30, 1, 0, 1, '[8,9]', NULL, '2022-07-17 20:53:37'),
(14, '有機紫高麗菜', 1, '[\"red-cabbage-01.jpg\",\"v_leafy_red-cabbage_2.jpg\"]', 80, 7, '紫高麗菜俗稱紫包菜，是十字花科的一種蔬菜。營養豐富，含有維生素C、V、E和B群。其營養價值為一般高麗菜的四倍。維生素C是柑橘的兩倍。一般常見的食用方式為生菜沙拉，也適合製作成油醋涼拌菜。有機、高營養口味清甜，也有許多媽媽製作成寶寶副食品。', 7, 30, 2, 1, 1, '[2,6,8]', NULL, '2022-07-17 20:53:37'),
(15, '嚴選有機大黃瓜', 1, '[\"v_melons_corms_cucumber_5.jpg\"]', 50, 5, '含水極高，且含丙醇二酸，可抑制糖類轉化為脂肪，被視為減肥食品。嫩籽含維生素E較多', 4, 30, 2, 0, 1, '[1,2,3]', NULL, '2022-07-17 20:53:37'),
(16, '有機小黃瓜', 1, '[\"v_melons_corms_cucumbers_7.jpg\"]', 10, 5, '口感清爽、含豐富維生素的小黃瓜，是涼拌沙拉與精力湯的好夥伴，但連續採收的特性，易有農藥殘留疑慮。農夫蔡昌旺在苗栗造橋，以有機方式種植小黃瓜。他的小黃瓜有著翠綠長胖的外型，清脆多汁外，更多了一份鮮甜瓜果的香氣。', 4, 30, 2, 0, 1, '[4,8]', NULL, '2022-07-17 20:53:37'),
(17, '台灣栗子南瓜', 1, '[\"v_melons_corms_pumpkins.png\",\"pumpkim.jpg\"]', 80, 3, '果皮呈深綠色，體型圓扁且果肉金黃飽滿，口感細緻綿密，香味近似栗子香般甜潤，可以連著果皮烹調、食用。富含胡蘿蔔素、維生素、礦物質及膳食纖維，營養價值高，是許多追求健康蔬食者熱愛的瓜果。', 14, 30, 1, 0, 1, '[1,2,6,8]', NULL, '2022-07-17 20:53:37'),
(18, '台灣有機綠櫛瓜', 1, '[\"v_melons_corms_zucchini_3.jpg\"]', 50, 5, '櫛瓜外表看起來雖與黃瓜、小黃瓜相似，但其實屬於南瓜同種的葫蘆科，又稱為「夏南瓜」，由於本身沒有特殊的味道，因此可與任何料理搭配，不論焗烤或油煎，甚至直接切片當沙拉都很好吃。', 5, 40, 1, 0, 1, '[1,2,8]', NULL, '2022-07-17 20:53:37'),
(19, '埔鹽安心馬鈴薯', 1, '[\"potatoes.jpg\",\"v_melons_corms_potatoes.jpg\"]', 20, 7, '有機栽培種植的黃皮馬鈴薯，各個頭好壯壯，健康好吃無負擔，口感甘甜綿密，不管蒸煮、馬鈴薯沙拉、濃湯、烤或炸成原塊薯條、當作主食都超級美味！！', 14, 30, 1, 1, 1, '[1,8,9]', NULL, '2022-07-17 20:53:37'),
(20, '屏東有機本土洋蔥', 1, '[\"v_spices_onions_2.jpg\"]', 20, 7, '洋蔥在料理界佔有重要一席之地，用來爆香、提鮮、甜味自然回甘。採有機栽培，無農藥、無化肥種植的洋蔥品質更是優秀，清脆爽口甜度棒，讓您吃得安心又滿足！', 14, 30, 2, 0, 1, '[1,8,9]', NULL, '2022-07-17 20:53:37'),
(21, '在地嚴選螃蟹', 7, '[\"fresh-crab.jpg\",\"s_crab_3.jpg\"]', 1000, 4, '生長於澎湖海域的特有野生扁蟹，盛產期秋天至隔年春天，當季捕撈的扁蟹肉新鮮肥美，營養豐富！透過高鹽度的海水鹹味襯托出蟹肉本身的甜味，每一口皆是Q彈又甘甜！', 3, 30, 5, 0, 1, '[1,6,7]', NULL, '2022-07-17 20:53:37'),
(22, '野生活凍鮮嫩龍蝦', 7, '[\"s_lobster_2.jpg\"]', 800, 4, '殼薄肉多又飽滿，連蝦頭都是滿滿的肉，肉質扎實清甜，比一般大龍蝦鮮嫩，含有豐富蝦膏，每一口都是滿足，適合所有料理方式，料理後口感絕佳，清蒸、火烤、煮火鍋、煮湯都OK。', 20, 30, 4, 0, 1, '[1,6,7]', NULL, '2022-07-17 20:53:37'),
(23, '泰國蝦-特大蝦公', 7, '[\"fresh-shrimp-01.jpg\",\"fresh-shrimps02.jpg\",\"s_shrimp_4.jpg\"]', 400, 6, '高雄在地經營20年的泰國蝦專賣店，每天早上至屏東里港與配合的蝦農親自挑選。產地直送、活蝦直凍，新鮮、品質、有保證。', 20, 30, 6, 0, 1, '[1,6]', NULL, '2022-07-17 20:53:37'),
(24, '澎湖全殼大牡蠣', 7, '[\"s_oyster_1.jpg\"]', 600, 6, '澎湖活凍帶殼生蠔，生長於海水清澈、水質良好的產地，整顆採收完整保留營養與鮮甜口感，只要簡單清蒸、鹽烤加點檸檬滋味，絕倫滋味絕對讓您難以忘懷，低卡又含豐富營養，補充滿滿活力', 3, 30, 4, 0, 1, '[1,6,7]', NULL, '2022-07-17 20:53:37'),
(25, '頂級鮪魚腹排', 8, '[\"s_tuna.png\",\"tuna-ice.jpg\"]', 2000, 6, '取自黃鰭大目鮪魚腹肉，這部位油花均勻細緻，肉質鮮嫩可口，簡單乾煎就是人間美味，油滋滋的香氣迷死人。拿來紅燒或味噌湯也是非常好吃，讓你的料理滿滿海味。', 3, 30, 6, 0, 1, '[6]', NULL, '2022-07-17 20:53:37'),
(26, '鮮凍智利鮭魚', 8, '[\"salmon-dish02.jpg\",\"s_salmon_4.jpg\",\"steak-salmon01.jpg\"]', 800, 6, '鮭魚又被譽為冰海之皇，體型碩大富含對人體有益的魚油，捕撈後隨即低溫急速冷凍保存，銷住鮭魚的鮮美滋味，直送到家！', 20, 30, 6, 0, 1, '[6]', NULL, '2022-07-17 20:53:37'),
(27, '永安生態吳郭魚', 8, '[\"fresh-fish.jpg\",\"s_snapper.jpg\"]', 100, 5, '養殖於高雄永安，採全海水生態養殖的「海吳郭魚」，肉質非常細緻甘甜，魚體型不大，但非常鮮香。獨特配方飼料，含有亞麻仁籽、食品級黃豆，魚肉營養價值更高，更含珍貴的Omega3。', 3, 30, 6, 0, 1, '[1,6]', NULL, '2022-07-17 20:53:37'),
(28, '西班牙伊比利豬', 3, '[\"isolated-pig.jpg\",\"pork029.jpeg\"]', 1500, 6, '嚴選西班牙豬排 肉質鮮嫩香純，油脂豐潤不膩口 雪白油花均勻細緻', 3, 30, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(29, '日本A5頂級和牛', 5, '[\"fresh-beef06.jpg\",\"beef013.jpeg\"]', 2500, 6, '肋眼上蓋為順著肋眼牛肉之筋膜所切下的上蓋肉，為肋眼牛排的精華部位，數量稀少。肉質極為纖細，脂肪交雜呈大理石花紋狀，脂肪含量較高，還有像發光般的光澤，外觀極美。', 3, 30, 4, 0, 1, '[6]', NULL, '2022-07-17 20:53:37'),
(30, '放牧烏骨雞腿', 4, '[\"chicken010.jpeg\"]', 300, 6, '酵母烏骨雞增長在台灣彰化，吹著海風曬日光浴長大。 飼養週期達14週，別於ㄧ般雞隻的11週。完熟體重：烏骨雞1.1kg 。飼育期間依生長期不同會餵食不同配方的酵母發酵飼料，第一期為生長、第二期為育肥、第三期為完熟。', 3, 30, 1, 1, 1, '[1,5,6]', NULL, '2022-07-17 20:53:37'),
(31, '安心豬五花肉條', 3, '[\"pork029.jpeg\"]', 250, 6, '陳家於雲林三代養豬，專業養殖外更包含對生命的敬重。高成本的規劃寬敞活動空間，水冷降溫設備，還設有豬隻專屬的磨牙區，以人道友善的方式畜牧，豬隻更健康。搭配亞麻籽、核苷酸、熟豆粉等熟化飼料，將豬肉中大部份的飽和脂肪酸轉為不飽和脂肪酸，同時提升維他命及有機礦物質含量，豬肉吃起來甜嫩無腥營養。', 3, 30, 3, 0, 1, '[1,5,6]', NULL, '2022-07-17 20:53:37'),
(32, '特級精選菲力牛排', 5, '[\"meat-beef-color.jpg\"]', 400, 6, '取自牛的腰內肉，一頭700公斤的成年肉牛只能產出4至5公斤的菲力，低脂無筋，是牛排裡口感最軟嫩的部位，軟嫩的肉質，是老少咸宜都能接受的部位', 3, 30, 4, 0, 1, '[1,5,6]', NULL, '2022-07-17 20:53:37'),
(33, '頂級厚切小羊肋排', 6, '[\"lamb.jpg\"]', 1080, 6, '嚴選優質健康草飼羊，只取用6個月以下優質的小羔羊，而非腥騷的成羊！特取用第5~13根最厚實的肋排部位，每隻羊只取1對的羊排，量少質優！肉質特別軟嫩無羊腥味，不需過多的醃漬及調味以平底鍋乾煎或燒烤，簡易料理即可上桌就很美味囉！牧場、分切場均通過產銷履歷認證，飼養通過安全檢驗飼料、牧草，實在用心養足12個月，不催促生長；專業獸醫師檢驗後分切，層層嚴謹把關。', 3, 30, 5, 1, 1, '[1,5,6]', NULL, '2022-07-17 20:53:37'),
(34, '精選牛奶蜜棗', 2, '[\"F-Jujube.jpg\"]', 200, 6, '數顆渾圓飽滿的蜜棗常被讚譽為「台灣青蘋果」，翠玉外衣下是甜美的果實。一顆顆翠綠圓潤的蜜棗，宛若縮小版的青蘋果，掛在枝頭上，迎著溫暖的陽光，靜靜地累積糖分！。因採無毒友善方式種植，果皮表面有些許瑕疵屬正常現象，但不影響內部果肉品質，請安心食用', 5, 30, 2, 0, 1, '[1,2,8]', NULL, '2022-07-17 20:53:37'),
(35, '鮮採拉拉山水蜜桃', 2, '[\"peach03.jpg\",\"peach02.jpg\"]', 600, 6, '正宗拉拉山水蜜桃，鮮甜多汁香氣迷人，果形飽滿底部圓潤，香氣風味更優於進口水蜜桃，下單後產地鮮採直送，在家即能輕鬆享用盛夏限定的天然美味！拉拉山的水蜜桃別具盛名，因為拉拉山位居中高海拔，日夜溫差大，時常雲霧繚繞，好山好水的地理環境，非常適合種植水蜜桃。', 5, 30, 1, 1, 1, '[8,9]', NULL, '2022-07-17 20:53:37'),
(36, '陽光金圓頭奇異果', 2, '[\"F-Kiwifruit.jpg\"]', 200, 6, '紐西蘭進口有機奇異果符合嚴格的紐西蘭有機品質與安全準則，確保每一口都能嚐到大自然賦予的天然美味，安心吃沒負擔。熱量低擁有高維生素C及高營養密度，是奇異果人氣居高不下的關鍵因素，果皮薄透、外型渾圓、水分豐富多汁，一入口酸爽，後勁水潤香甜。讓奇異果充滿著層次感的魅力，喚醒身體的活力。', 12, 30, 2, 0, 1, '[6]', NULL, '2022-07-17 20:53:37'),
(37, '大樹貴妃玉荷包', 2, '[\"red-lychee-fruit01.jpg\"]', 150, 1, '玉荷包是台灣荔枝當中，最受矚目的品種之一，汁多酸甜比例佳，果實皮薄果肉豐厚，白嫩Q彈果核小，自古以來為的珍貴果品。玉荷包種植不易，對環境及排水都需要特別用心，才可種出高品質的玉荷包。', 5, 30, 2, 1, 1, '[3,4]', NULL, '2022-07-17 20:53:37'),
(38, '新鮮老欉龍眼', 2, '[\"F-longan.jpg\"]', 150, 1, '農友廖文森的龍眼果園位於南投中寮，園內龍眼樹多為五十年以上的老欉，部分老樹更已近百歲。且因園區位於順向坡往河流的路上，按照老一輩的說法就是「地下有水根」，意思是有水脈經過，即便氣候少雨，龍眼樹也不缺水。因此文森家的龍眼鮮果格外細緻、多汁而且甜美。', 5, 13, 1, 0, 1, '[3,4]', NULL, '2022-07-17 20:53:37'),
(39, '愛文芒果', 2, '[\"mango02.jpg\"]', 200, 6, '芒果是盛夏時節不可錯過的好滋味。讓你可以盡情享受夏天果實美味。愛文芒果皮紅肉黃口感Q，芒果香味別具特色，口感香甜果肉細嫩，這是夏天一定要品嘗的滋味~', 7, 30, 1, 0, 1, '[3,4,6]', NULL, '2022-07-17 20:53:37'),
(40, '有機百香果', 2, '[\"passion-fruit01.jpg\"]', 80, 6, '剖開百香果不起眼的外皮，專屬於香果的清香立即撲鼻而來，那香味刺激了味蕾，讓人忍不住要吞了吞口水，黃澄澄的果肉，飽滿又多汁，多一分則太酸，少一分則太甜，酸甜堪稱完美比例，夏天食用最是「清涼脾肚開」！', 7, 19, 1, 1, 1, '[3,4,8]', NULL, '2022-07-17 20:53:37'),
(41, '雲林元長蒜頭', 1, '[\"garlic02.jpg\"]', 80, 8, '餐桌上蒜香味，嗅著就食指大動。牽引味蕾、激昂脾胃，台灣蒜頭，獨特又鮮明的嗆辣，是許多人情有獨鍾的味道。在種植方式上，不採用慣行農法，走的是友善耕作，通過「產銷履歷」認證。', 14, 30, 1, 0, 1, '[1,2]', NULL, '2022-07-17 20:53:37'),
(42, '台灣高山老薑', 1, '[\"ginger02.jpg\",\"v_spices_ginger_2.png\"]', 50, 8, '嚴選台灣高山老薑⛰自古以來，老祖先的智慧讓薑入藥也入菜，透過三餐就能使全家人在不知不覺之中得到保健的功效。薑從最輕微的防暈止吐，到維護心血管暢通等都有助益，對忙碌的現代人而言，無疑是絕佳的健康食物。', 14, 30, 1, 0, 1, '[1]', NULL, '2022-07-17 20:53:37'),
(43, '台灣大粒紅蔥頭', 1, '[\"v_spices_garlic_2.jpg\"]', 80, 8, '紅蔥頭本身帶有微嗆氣味，故切紅蔥頭時會產生類似切洋蔥的辛辣氣味，切片後細看內部，能發現類似洋蔥片狀的小分層。紅蔥頭可用來切片後以豬油油炸製成油蔥酥，炸後的紅蔥頭多了酥脆感，加熱後味道由微嗆味轉為香氣，用於拌麵、滷肉燥、燙炒青菜等能讓料理香噴噴。', 14, 30, 1, 0, 1, '[1]', NULL, '2022-07-17 20:53:37'),
(44, '嚴選紅蘿蔔', 1, '[\"carrots.jpg\"]', 40, 8, '天然農場品，每次採收的大小不同，所以不分大小顆出貨，敬請留意', 7, 30, 2, 0, 1, '[1]', NULL, '2022-07-17 20:53:37'),
(45, '台灣牛蕃茄', 1, '[\"tomatoes.jpg\"]', 30, 7, '自然農法悉心栽培，産地嚴選 粒粒碩大紅潤，口感鮮甜 滿滿茄紅素', 5, 30, 2, 0, 1, '[3]', NULL, '2022-07-17 20:53:37'),
(46, '有機白玉苦瓜', 1, '[\"bitter-melon.jpg\"]', 60, 5, '白苦瓜又叫白玉苦瓜，苦味較綠色苦瓜淡，口感爽脆，可以生吃也可以熟吃。苦瓜特別是維他命C的含量居瓜類之冠，有瓜中C王之稱。', 5, 7, 1, 0, 1, '[3,6]', NULL, '2022-07-17 20:53:37'),
(47, '履歷烏殼綠竹筍', 1, '[\"bamboo.jpg\"]', 120, 8, '季節商品，富膳食纖維，竹筍香氣較重。 適合快炒、湯品料理皆宜', 3, 30, 2, 1, 1, '[4,6,8]', NULL, '2022-07-17 20:53:37'),
(48, '水洗白蘿蔔', 1, '[\"white-radishes02.jpg\",\"cutboard-1.jpg\"]', 50, 5, '清甜可口，富含膳食纖維。高纖低卡，營養價值豐', 5, 30, 2, 0, 1, '[4,6,8,9]', NULL, '2022-07-17 20:53:37'),
(49, '帶皮五花肉條', 3, '[\"pork-bellys.jpg\"]', 300, 6, '帶皮的三層肉，肥瘦層層交疊，加熱後鮮甜的肥肉馬上化開，瘦肉久煮不柴，QQ的豬皮口感極佳，是做紅燒肉、焢肉的最佳選擇。', 3, 30, 3, 0, 1, '[5,6,9]', NULL, '2022-07-17 20:53:37'),
(50, '豬小排肉/肋排', 3, '[\"meat07.jpg\"]', 200, 6, '修除豬腹脅之帶肋骨部位，切製成每塊約長4公分；台糖豬小排肉為純正豬肋排切製，肥瘦黃金比例，絕不使用粗排或其他部位骨來混充，適宜紅燒、燉湯滋鮮味美、口感佳，吃了都說\"讚\"！', 3, 30, 3, 0, 1, '[5,6,9]', NULL, '2022-07-17 20:53:37'),
(51, '產銷履歷豬腰內肉', 3, '[\"pork-meat02.jpg\"]', 250, 6, '以『前後腿之伸指肌』切製，含『腿仁』之紡錘形肌束，並修除脂肪。富含筋腱、韌帶，口感Ｑ彈有嚼勁。', 3, 30, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(52, '特選豬五花肉片', 3, '[\"pork-5.jpg\",\"pork-6.jpg\"]', 120, 6, '台灣產優質國產豬，油花豐富，口感鮮嫩，火鍋、燒烤、家常料理必備食材。', 3, 30, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(53, '里肌豬排', 3, '[\"barbecue-animal.jpg\"]', 200, 6, '油脂偏少、肉質富咬勁，形狀和紋理工整是上等肉', 3, 30, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(54, '澎湖放牧黃牛肉丁', 5, '[\"meat-beef5.jpg\"]', 350, 6, '採用肩胛肉切成小塊狀的肉丁，油脂適中肉汁多。可以鐵板、紅燒、快炒等方式呈現出黃牛肉的好滋味。', 3, 0, 4, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(55, '御牧牛台灣牛大骨', 5, '[\"pork-bone.jpg\"]', 200, 6, '在家自製燉滷元氣滿滿的鮮甜高湯好滋味，為一天補充滿滿的元氣', 3, 30, 4, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(56, '溫體牛半筋半肉', 5, '[\"fresh-sliced-pork.jpg\"]', 300, 6, '肉質Q軟，可供長時間久煮，只有台灣牛肉才擁有的夢幻逸品，適合用來煮牛肉湯及清燉料理，特別適合給老人與小孩食用', 3, 30, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(57, '里肌重磅牛排', 5, '[\"fresh-beef02.jpg\"]', 400, 6, 'Q嫩有勁，鮮甜多汁', 3, 30, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(58, '台灣沙朗牛排', 5, '[\"fresh-beef-01.jpg\"]', 350, 6, '養在雲林的台灣牛選用閹牛，肉質不腥，且格外的軟嫩，在飼育的過程中不使用瘦肉精、生長激素、在宰殺牛之前也不灌水，是小農一直以來的三大堅持！搭配在地新鮮紅蘿蔔及根莖，除了讓肉質更甜美，牛肉也擁有多一份自然的清香！', 3, 30, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(59, '熟成丁骨牛排', 5, '[\"steak-bone.jpg\"]', 400, 6, '最高等PRIME級牛排，大理石油花豐富口感佳，同時享受軟嫩多汁與油花豐富有嚼勁的部位', 3, 30, 4, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(60, '牛肋條切塊', 5, '[\"beef07.jpg\"]', 380, 6, '嚴選台灣黃牛牛肋條，位於牛腹脇部，肋骨與肋骨之間，呈細長條，肉表面有骨膜，肉質軟且油脂較多。燉滷小菜熱門部位！媽媽燉滷最愛肉品之一！', 3, 30, 3, 1, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(61, '金采雞雞腿切塊', 4, '[\"chicken-legs-02.jpg\"]', 120, 6, 'HACCP合格認證、取得白肉雞屠宰、分切產銷履歷認證。白羽雞取肉主要以雞胸為大宗、雞腿為輔，肉色呈現較淡之褐紅色、肉質肥厚飽滿、含脂率較高、口感較為鬆散軟嫩。', 3, 40, 1, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(62, '國產華陀雞肉', 4, '[\"allchicken.jpg\"]', 400, 6, '來自雲林的自然純淨，採低密度自然放養、雞隻堅持自然熟成，細緻的肌肉纖維，渾然天成的彈牙口感，SGS全球級標準食品檢驗合格，無藥物殘留，擁有專業品質認證的安心食材', 3, 30, 5, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(63, '白羽雞去骨雞腿肉', 4, '[\"chicken-leg.jpg\"]', 280, 6, '本產品為【無調味】生鮮去骨腿肉，可依照個人喜好的風味進行醃製、料理。', 3, 30, 5, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(64, '黑鑽雞 清胸肉', 4, '[\"chicken-breasts02.jpg\"]', 80, 6, '運動養生首選，美味新鮮安心保證', 3, 15, 1, 1, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(65, '放心豬-培根肉片', 3, '[\"slide-raw-meat111.jpg\"]', 130, 6, '選用放心豬五花肉部分製成，油花均勻，肥瘦適中，口感不肥不膩。香煎後口感鮮嫩多汁，是火鍋或燒烤的上等食材首選。', 3, 30, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(66, '能量豬 低脂腿肉', 3, '[\"fresh-pork01.jpg\"]', 200, 6, '堅持不吃藥、不打針、不施打瘦肉精，採用較有生機概念的生機飲食玄米、益生菌以及蒜精，其中玄米所富含的維他命Ｂ群、維生素Ｅ、及膳食纖維，是提升豬隻免疫力的重要營養配方，促使每隻豬隻都擁有自然精壯的體質，可不藉由施打藥物就能健康快樂長大。', 3, 10, 3, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(67, '紅玉雞-雞胸肉', 4, '[\"chicken-breast.jpg\"]', 150, 6, '◎全台首創：自養高品質紅玉雞，全程餵養非基改玉米黃豆。◎獨門技術：飼料拌入有機紅玉紅茶，雞肉香甜無腥味。◎最高標準：最嚴格的博士級團隊，飼養全程無用藥。', 3, 30, 5, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(68, '黃金土雞-土雞腳', 4, '[\"chickenshot.jpg\"]', 90, 6, '嚴選皇金土雞，結合紅仿與黑羽培育之新品種，外型直立挺拔，肌肉細緻Q彈，肌肉間脂肪含量高，吃起來鮮味十足。', 3, 30, 1, 0, 1, '[5,6]', NULL, '2022-07-17 20:53:37'),
(69, '龍虎石斑全魚', 8, '[\"black-tilapia.jpg\"]', 290, 5, '由專業採購手精心挑選，基隆崁仔頂魚市場的新鮮龍虎石斑，經冷凍技術妥善保存配送，並於鮮度絕佳時進行嚴謹、衛生的加工處理，確保能鎖住新鮮口感。為您奉上肥美的嚴選龍虎石斑，讓你在簡單料理的同時，享受來自大海的新鮮美味！', 3, 30, 6, 0, 1, '[5,6,7]', NULL, '2022-07-17 20:53:37'),
(70, '無刺白帶魚捲', 8, '[\"fish06.jpg\"]', 250, 5, '嚴選大小適中，產自台灣近海海域的白帶魚 ，每包約8-10顆，使用新鮮白帶魚去骨取肉，並經冷凍技術妥善保存配送。為您奉上魚捲魚香十足，滿口滿足的白帶魚捲，讓你能以簡單料理享受來自大海的新鮮美味！', 3, 30, 6, 0, 1, '[6]', NULL, '2022-07-17 20:53:37'),
(71, '大比目魚切片', 8, '[\"mackerel-steak.jpg\"]', 300, 6, '嚴選產自格陵蘭至冰島50-2000米大西洋海域的格棱蘭扁鱈，保證野生捕捉，經冷凍厚切鎖住鮮味。為您奉上肉質細嫩無比，魚肉香氣滿滿的格棱蘭扁鱈，讓你能以簡單料理享受來自遠方的鮮味。', 3, 0, 6, 0, 1, '[6,7]', NULL, '2022-07-17 20:53:37'),
(72, '帶殼養殖鮑魚', 7, '[\"abalones.jpg\"]', 400, 6, '嚴選人工養殖環境的優質原隻鮑魚，體型大小適中，原隻新鮮冷凍，鎖住軟嫩口感，並經冷凍技術妥善保存配送。為您奉上肉質軟嫩的原隻鮑魚，讓你能以簡單料理享受來自大海的新鮮美味！', 3, 30, 5, 0, 1, '[6]', NULL, '2022-07-17 20:53:37'),
(73, '海水白蝦仁', 7, '[\"s_shrimp_6.jpg\",\"s_shrimp_1.jpg\"]', 260, 6, '嚴選經剝製的台灣養殖白蝦，蝦仁已去除沙腸，經冷凍技術妥善保存配送，並於鮮度絕佳時進行嚴謹、衛生的加工處理，確保能鎖住新鮮口感。為您奉上肥美的嚴選海水白蝦仁，讓你在簡單料理的同時，享受來自大海的新鮮美味！', 3, 30, 4, 0, 1, '[6,7]', NULL, '2022-07-17 20:53:37'),
(74, '現流小卷', 8, '[\"bunch-squid.jpg\"]', 320, 6, '嚴選台灣野生船凍小卷，由漁船野生捕撈及活體冷凍，保持肉質鮮度與脆度，經冷凍技術妥善保存配送。為您奉上爽脆的野生船凍台灣小卷，讓你可簡單料理，享受來自大海的新鮮美味', 3, 30, 4, 1, 1, '[6,7]', NULL, '2022-07-17 20:53:37'),
(75, '頂級軟絲', 8, '[\"fresh-squid.jpg\"]', 350, 6, '嚴選台灣野生船凍軟絲，由漁船野生捕撈及活體冷凍，保持肉質鮮度與脆度，經冷凍技術妥善保存配送。為您奉上爽脆的野生船凍台灣軟絲，讓你可簡單料理，享受來自大海的新鮮美味！', 3, 30, 6, 0, 1, '[6,7]', NULL, '2022-07-17 20:53:37'),
(76, '九孔', 7, '[\"assortment.jpg\",\"mussels-white.jpg\"]', 450, 6, '魚肉鮮嫩多汁，油脂分佈均勻，產地直送、急速冷凍，獨立真空包裝，讓品質、鮮度及口感維持在最好的狀態，口感滑潤富有彈性。適合 烤、煎、蒸、炒 等熟食料理。', 3, 30, 4, 0, 1, '[6,7]', NULL, '2022-07-17 20:53:37'),
(77, '生食級生蠔', 7, '[\"oysters.jpg\"]', 629, 6, '『無包冰 冷凍乾燥』超低溫冷凍乾燥 鎖住新鮮 可生食 烹煮退冰不失重過分縮水，『嚴格認證分級制度』每一顆的品質層層把關 嚴格分級制度 標準規格', 3, 30, 6, 0, 1, '[6,7]', NULL, '2022-07-17 20:53:37'),
(78, '生食級鮪魚', 8, '[\"cubes.jpg\"]', 250, 6, '一次一片小倆口大小剛剛好，佐佐鮮厚切鮭魚片鮮美橘黃色澤，適合乾煎是家常的好食材', 3, 30, 6, 0, 1, '[6,7]', NULL, '2022-07-17 20:53:37'),
(79, '根島生態草蝦仁', 7, '[\"s_shrimp_7.jpg\"]', 320, 6, '野放草蝦生長於天然無汙染的自然環境，水域乾淨不受汙染，無添加硼砂、無發泡、無包冰，無使用二氧化硫漂白，新鮮扎實安全健康', 3, 30, 5, 0, 1, '[6]', NULL, '2022-07-17 20:53:37'),
(80, '產銷履歷黃金鯧魚', 8, '[\"red-fish.jpg\"]', 350, 5, '為推廣「100%台灣食魚好生活」，一夫水產用心匯集台灣優質水產品，與您分享台灣優質水產品的新鮮美味。一夫水產與青年漁民夥伴共同精心為您挑選魚鮮好禮，主打「安心、美味、台灣在地」，送禮體面又安心、吃得美味又滿意。', 3, 30, 6, 0, 1, '[5,6,7]', NULL, '2022-07-17 20:53:37'),
(81, '屏東萬丹大火龍果', 2, '[\"dragon-fruit-01.jpg\"]', 80, 7, '白色火龍果低熱量 高纖維成分，可促進腸胃蠕動，幫助排便，讓它成為養生的好水果，白肉口感清甜爽脆，清淡香甜，具有青草味，果肉糖分以天然葡萄糖為主，營養容易讓人體吸收。', 5, 10, 1, 0, 1, '[1,2]', NULL, '2022-07-17 20:53:37'),
(82, '生食級鮭魚切片組', 8, '[\"salmon-sashimi.jpg\",\"sashimi-salmon.jpg\"]', 200, 6, '嚴選澳洲冰鮮鮭魚，冰鮮空運產地到餐桌，清肉切塊無需動刀切，解凍擺盤後即可輕鬆上菜，天冷不想出門時，一人也能開心享吃優鮮鮭魚生魚片啦！', 3, 3, 6, 1, 1, '[6,7]', NULL, '2022-07-17 20:53:37'),
(83, '有機青椒', 1, '[\"eggplant.jpg\"]', 60, 8, '青椒含有青椒素及維生素A、C等多種營養物質，尤其是其維生素C含量是番茄含量的7～15倍，在蔬菜中占首位。', 5, 0, 2, 0, 1, '[2,3]', NULL, '2022-07-17 20:53:37'),
(84, '孢子甘藍', 1, '[\"cabbage-fresh-organi.jpg\"]', 180, 8, '營養價值居甘藍之首，口感軟嫩帶有微苦味及天然甜味', 7, 30, 2, 0, 1, '[2]', NULL, '2022-07-17 20:53:37'),
(85, '芥藍菜', 1, '[\"kale-vegetable.jpg\"]', 30, 8, '是芥藍菜之一個品種，含維生素A、鈣、鐵等營養。可以香蒜清炒或加肉絲（片）拌炒！', 3, 17, 1, 0, 1, '[1,2,4]', NULL, '2022-07-17 20:53:37'),
(86, '綠水晶無籽葡萄', 2, '[\"grapes-green01.jpg\",\"green-grapes-02.jpg\"]', 160, 1, '綠水晶葡萄的風味也很適合喜歡淡雅的朋友，不會有濃烈的葡萄味道，反而能在柔嫩中吃到清新的芭樂滋味，雖然葡萄本身具有芭樂的酸甜清香，但果皮卻不會有澀味，整體來說非常推薦大家嘗試的！', 6, 30, 2, 1, 1, '[3,8,9]', NULL, '2022-07-17 20:53:37'),
(87, '梨山青龍蘋果', 2, '[\"green-apples.jpg\",\"green-apple02.jpg\",\"green-apples02.jpg\"]', 60, 7, '清脆、微甜、多汁的青蘋果：青龍蘋果。吃起來清脆紮實又爽口，果肉細膩，甘甜多汁，也沒有甚麼酸澀味，一口咬下十分過癮，蘋果清新的風味在口齒間流竄，實屬為青蘋果界的人氣王。', 12, 30, 2, 0, 1, '[3,8]', NULL, '2022-07-17 20:53:37'),
(88, '花蓮野生山苦瓜', 1, '[\"chopped-bitter.jpg\"]', 75, 5, '苦瓜富含維生素C、B1、B2、葉酸及鈣、鎂、鉀等礦物質；山苦瓜營養價值更高，鉀含量是一般苦瓜的1.8倍、鈣質是2.3倍，鎂是2.4倍', 5, 20, 1, 0, 1, '[3,6,8,9]', NULL, '2022-07-17 20:53:37'),
(89, '脆口小章魚', 8, '[\"small-octopus.jpg\"]', 340, 6, '野生的澎湖石佢章魚，活動力強，肉質Q彈厚實，新鮮捕撈漁港直送的章魚，用來烘烤、鮮炒、煮火鍋或是簡單川燙都可以吃到鮮甜滋味，低熱量高蛋白的營養價值，多吃也不會有負擔。', 3, 10, 6, 0, 1, '[6]', NULL, '2022-07-17 20:53:37'),
(90, '精選羊肋排', 6, '[\"lamb03.jpg\"]', 480, 6, '因油花豐盛度比擬和牛而有和羊之稱，擺脫傳統羊羶味，擁有清爽的香氣', 3, 30, 5, 0, 1, '[5]', NULL, '2022-07-17 20:53:37'),
(91, '脆口山東大白菜', 1, '[\"chinese-cabbage02.jpg\"]', 60, 7, '大白菜中含有大量的鐵，鈣、鎂、維生素A，以及各種微量元素，和維生素C等等，而這些營養物質都是人體所必須的，其功效自然也就不言而喻。', 5, 30, 1, 0, 1, '[1,2,8]', NULL, '2022-07-17 20:53:37');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `product_name` (`product_name`),
  ADD KEY `product_type` (`product_type`),
  ADD KEY `product_price` (`product_price`),
  ADD KEY `product_inventory` (`product_inventory`),
  ADD KEY `product_hashtag` (`product_hashtag`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
