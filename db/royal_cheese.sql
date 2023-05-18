-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 11:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royal_cheese`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `ip` varchar(150) NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'sales',
  `status` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `ip`, `image`, `email`, `password`, `role`, `status`, `updated_at`) VALUES
(2, 'Super Admin', '103.107.160.134', 'assets/admin/69281_avatar.png', 'admin@cheese.com', '@BCD1234', 'admin', 1, '2023-05-18 06:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_size` varchar(255) NOT NULL,
  `heading_one` varchar(255) NOT NULL,
  `heading_two` varchar(255) NOT NULL,
  `heading_three` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `link_one` varchar(255) NOT NULL,
  `link_two` varchar(255) NOT NULL,
  `link_3` varchar(255) NOT NULL,
  `link_4` varchar(255) NOT NULL,
  `banner_img` varchar(500) NOT NULL,
  `updated_at` datetime NOT NULL,
  `heading_one_cn` text NOT NULL,
  `heading_two_cn` text NOT NULL,
  `heading_three_cn` text NOT NULL,
  `details_cn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_name`, `banner_size`, `heading_one`, `heading_two`, `heading_three`, `details`, `link_one`, `link_two`, `link_3`, `link_4`, `banner_img`, `updated_at`, `heading_one_cn`, `heading_two_cn`, `heading_three_cn`, `details_cn`) VALUES
(1, 'Home Banner Left', '377x670', '', '', '', '', '#', '', '', '', 'assets/images/banner/2653_Websitebannerleft2.jpg', '2023-05-02 20:10:29', '輕鬆學習 ', '小肌肉訓練 ', '', '上肢手指力量靈活性雙手手眼協調筆控\"'),
(2, 'Home Banner Middle', '806x670', '', '', '', '', '#', '', '', '', 'assets/images/banner/67311_Websitebannermiddle.jpg', '2023-05-02 20:08:41', '全球搜羅', '一站式購買', '', '訓練用品及玩具\r\n創意教材........... \"\"'),
(3, 'Home Banner Right', '377x670', '', '', '', '', '#', '', '', '', 'assets/images/banner/18707_Websitebannerright2.jpg', '2023-05-02 20:10:42', '滿足感覺需要', '觸感玩具', '', '觸覺探索治療刷捏捏球拉拉管刺蝟環彈力條\"'),
(4, 'Home Cupon Banner', '1600x138', '', '', '', '', '#', '', '', '', 'assets/images/banner/61236_1.jpg', '2023-05-02 17:32:25', '優惠即張推出 敬請期待', '', '', 'WaysHK100\"'),
(5, 'Home Add One', '376*792', '', '', '', '', '#', '', '', '', 'assets/images/banner/40438_Websitebannersmallright..jpg', '2023-05-02 20:47:22', '職業治療', '暑期課程', '加送訓練教材', '最新優惠折扣親子課程'),
(6, 'Home Add Two', '375x630', '', '', '', '', '#', '', '', '', 'assets/images/banner/94930_Websitebannersmallrightdown.jpg', '2023-05-02 20:47:16', '有趣創意', '學習訓練教材', '', '提升視覺感知追視專注力小肌肉書寫能力'),
(7, 'Home banner middle', '1600x415', '', '', '', '', '#', '', '', '', 'assets/images/banner/90157_image_2023_03_20T11_43_26_490Z.jpg', '2023-04-30 10:59:15', ' 限時優惠', '會員限定', '立即加入', 'www.wayshk.com\"');

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `f_name` varchar(150) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(15) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `payment_type` varchar(200) NOT NULL DEFAULT 'Card',
  `shipping_method` varchar(500) NOT NULL,
  `discount` double(10,2) NOT NULL,
  `note` varchar(500) NOT NULL,
  `total_purchase` double(10,2) NOT NULL,
  `delivery_charges` float(10,2) NOT NULL,
  `approve` int(11) NOT NULL DEFAULT 3,
  `purchase_points` int(11) NOT NULL,
  `delivery_date` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `customer_id`, `f_name`, `l_name`, `email`, `phone`, `address`, `city`, `zip_code`, `payment_type`, `shipping_method`, `discount`, `note`, `total_purchase`, `delivery_charges`, `approve`, `purchase_points`, `delivery_date`, `updated_at`) VALUES
(1, 0, 'Mugdho', 'Saha', 'sahamugdho@gmail.com', '0000000000', '97/6, Boyra Cross Road', 'Khulna GPO', '90000', 'Check', 'Tai Wai Warehouse', 10.00, 'This is a test note', 360.00, 0.00, 3, 0, '0000-00-00', '2023-05-07 13:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_name_en` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_name`, `c_name_en`, `image`, `status`, `inserted_at`, `updated_at`) VALUES
(1, 'Wayshk自製教材', 'Wayshk self-made teaching materials', 'assets/cat_img/72390_6qW2XkuI_400x400.png', 1, '2023-03-20 14:14:53', '0000-00-00 00:00:00'),
(2, ' 治療膠及配件', 'Therapeutic Gels and Accessories', 'assets/cat_img/66266_6qW2XkuI_400x400.png', 1, '2023-03-20 14:15:15', '0000-00-00 00:00:00'),
(3, '小肌肉訓練工具', ' Small Muscle Training Tool', 'assets/cat_img/88170_6qW2XkuI_400x400.png', 1, '2023-03-20 14:15:31', '0000-00-00 00:00:00'),
(4, '抓夾及配件', 'Clamps and accessories', 'assets/cat_img/30180_6qW2XkuI_400x400.png', 1, '2023-03-20 14:15:45', '0000-00-00 00:00:00'),
(5, '貼紙&印章', ' Sticker & stamp', 'assets/cat_img/90626_6qW2XkuI_400x400.png', 1, '2023-03-20 14:16:05', '0000-00-00 00:00:00'),
(6, '剪刀', 'Scissors', 'assets/cat_img/78728_6qW2XkuI_400x400.png', 1, '2023-03-20 14:16:19', '0000-00-00 00:00:00'),
(7, '其他文具', 'Other stationery', 'assets/cat_img/93084_6qW2XkuI_400x400.png', 1, '2023-03-20 14:16:36', '0000-00-00 00:00:00'),
(8, '小肌肉訓練盒裝玩具', 'Small muscle training boxed toy', 'assets/cat_img/52093_6qW2XkuI_400x400.png', 1, '2023-03-20 14:16:49', '0000-00-00 00:00:00'),
(9, '視覺感知', 'Visual perception', 'assets/cat_img/77095_6qW2XkuI_400x400.png', 1, '2023-03-20 14:17:02', '0000-00-00 00:00:00'),
(10, '書寫訓練', ' Writing training', 'assets/cat_img/89122_6qW2XkuI_400x400.png', 1, '2023-03-20 14:17:15', '0000-00-00 00:00:00'),
(11, '執筆膠', 'Pen glue', 'assets/cat_img/80572_6qW2XkuI_400x400.png', 1, '2023-03-20 14:17:32', '0000-00-00 00:00:00'),
(12, '自理訓練', 'Self-care training', 'assets/cat_img/99015_6qW2XkuI_400x400.png', 1, '2023-03-20 14:18:19', '0000-00-00 00:00:00'),
(13, '情緒及社交', 'Emotional and social', 'assets/cat_img/81876_6qW2XkuI_400x400.png', 1, '2023-03-20 14:18:37', '0000-00-00 00:00:00'),
(14, '口肌訓練_口腔覺刺激', 'Oral Muscle Training_Oral Sensation Stimulation', 'assets/cat_img/34861_6qW2XkuI_400x400.png', 1, '2023-03-20 14:18:50', '0000-00-00 00:00:00'),
(15, '聽樂治療', 'Music therapy', 'assets/cat_img/3863_6qW2XkuI_400x400.png', 1, '2023-03-20 14:19:02', '0000-00-00 00:00:00'),
(16, '重力輸入', 'Gravity input', 'assets/cat_img/66422_6qW2XkuI_400x400.png', 1, '2023-03-20 14:19:15', '0000-00-00 00:00:00'),
(17, '觸覺刺激', 'Tactile stimulation', 'assets/cat_img/86191_6qW2XkuI_400x400.png', 1, '2023-03-20 14:19:32', '0000-00-00 00:00:00'),
(18, '前庭_本體刺激_大肌肉訓練', ' Vestibular_Proprietary Stimulation_Great Muscle Training', 'assets/cat_img/621_6qW2XkuI_400x400.png', 1, '2023-03-20 14:19:44', '0000-00-00 00:00:00'),
(19, '評估工具', 'Assessment tools', 'assets/cat_img/281_6qW2XkuI_400x400.png', 1, '2023-03-20 14:19:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_name_en` text NOT NULL,
  `course_type` varchar(500) NOT NULL,
  `course_duration` varchar(255) NOT NULL,
  `course_price` decimal(10,2) NOT NULL,
  `course_price_poor` float(10,2) NOT NULL,
  `course_description` text NOT NULL,
  `course_description_en` text NOT NULL,
  `course_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_name_en`, `course_type`, `course_duration`, `course_price`, `course_price_poor`, `course_description`, `course_description_en`, `course_image`, `status`, `inserted_at`, `updated_at`) VALUES
(1, 'Test 1', '', '', 'course', '11111.00', 0.00, 'course', '', 'assets/course/78037_best-test-concept-cube-blocks-with-transition-from-best-test-word-white-background-3d-rendering.jpg', 1, '2023-03-09 14:58:57', '0000-00-00 00:00:00'),
(2, 'Test 2', '', '', 'course', '22252.00', 0.00, 'course', '', 'assets/course/46974_block-handle-light.jpg', 1, '2023-03-09 14:59:15', '0000-00-00 00:00:00'),
(3, 'Test 3 ', '', '', 'course', '3333.00', 0.00, 'course', '', 'assets/course/76633_test-word-checking-knowledge-concept.jpg', 1, '2023-03-09 14:59:34', '0000-00-00 00:00:00'),
(4, 'Test', 'Test Course', 'Test', '1yr', '123.00', 0.00, '<p>Test CN</p>\r\n', '<p>Test EN</p>\r\n', 'assets/course/56548_test-word-written-wooden-blocks-business-concept-test-sign-exam-learning-concept.jpg', 1, '2023-03-09 14:59:47', '2023-05-07 14:10:07'),
(6, 'Test Course', '', 'Test', '2 y', '100.00', 0.00, '<pre>\r\n測試說明</pre>\r\n', '<p>Test Description</p>\r\n', 'assets/course/95401_6qW2XkuI_400x400.png', 1, '2023-04-26 19:47:43', '2023-05-07 14:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profile_image` varchar(200) NOT NULL,
  `membership_point` int(10) NOT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `email`, `number`, `address`, `city`, `zip_code`, `password`, `profile_image`, `membership_point`, `inserted_at`, `updated_at`) VALUES
(1, 'Test Customer', 'test@ways.com', '000000', '', '', '', '@BCD1234', '', 0, '2023-03-09 16:52:21', '0000-00-00 00:00:00'),
(2, 'Test Customer 2', 'test2@usdt.com', '000000', '', '', '', '@BCD1234', '', 0, '2023-03-09 16:54:45', '0000-00-00 00:00:00'),
(3, 'Test Customer 3', 'test3@usdt.com', '000000', '', '', '', '@BCD1234', '', 0, '2023-03-09 16:57:26', '0000-00-00 00:00:00'),
(4, 'Test Customer 4', 'test4@usdt.com', '000000', '', '', '', '@BCD1234', '', 0, '2023-03-09 16:58:55', '0000-00-00 00:00:00'),
(5, 'Andrew', 'test@usdt.com', '000000', '', '', '', '@BCD1234', '', 200, '2023-03-15 17:11:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `delivery_id` int(11) NOT NULL,
  `min_delivery_charge` float(10,2) NOT NULL,
  `weight_upto` float(10,2) NOT NULL,
  `next_per_kg_weight` float(10,2) NOT NULL,
  `min_order_free_delivery` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`delivery_id`, `min_delivery_charge`, `weight_upto`, `next_per_kg_weight`, `min_order_free_delivery`) VALUES
(1, 100.00, 4.00, 20.00, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock_in` int(11) NOT NULL,
  `stock_out` int(11) NOT NULL,
  `stock_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `billing_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_unit_price` double(10,2) NOT NULL,
  `product_total_price` double(10,2) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `customer_id`, `billing_id`, `product_id`, `product_name`, `product_quantity`, `product_unit_price`, `product_total_price`, `updated_at`) VALUES
(1, 0, 1, 150, '彎形叉子', 3, 120.00, 360.00, '2023-05-07 13:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_code` varchar(50) NOT NULL,
  `product_weight` varchar(255) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_name_en` varchar(500) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `cost` float(10,2) NOT NULL DEFAULT 0.00,
  `description` varchar(5000) NOT NULL,
  `description_en` text NOT NULL,
  `p_image` varchar(500) NOT NULL,
  `status` int(10) NOT NULL,
  `deal_today` int(11) NOT NULL DEFAULT 0,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `store_id`, `product_code`, `product_weight`, `p_name`, `p_name_en`, `product_price`, `cost`, `description`, `description_en`, `p_image`, `status`, `deal_today`, `inserted_at`, `updated_at`) VALUES
(1, 1, 0, 'CHEESE-1', '40', '🐓凍乾泰國無激素雞胸肉粒價錢', '🐓凍乾泰國無激素雞胸肉粒價錢', '55.00', 0.00, '<p>自家製凍乾泰國無激素<img alt=\"🐓\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f413/32.png\" />雞胸肉粒，雞肉含有豐富蛋白質、胺基酸，也含有維生素&nbsp;A、菸鹼素與礦物質鋅，能補充毛孩必須要的胺基酸，優質蛋白質能令毛孩更易消化及吸收營養！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾泰國無激素<img alt=\"🐓\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f413/32.png\" />雞胸肉粒，雞肉含有豐富蛋白質、胺基酸，也含有維生素&nbsp;A、菸鹼素與礦物質鋅，能補充毛孩必須要的胺基酸，優質蛋白質能令毛孩更易消化及吸收營養！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/1.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:06:32'),
(2, 1, 0, 'CHEESE-2', '40', '🐓凍乾泰國無激素雞柳價錢', '🐓凍乾泰國無激素雞柳價錢', '55.00', 0.00, '<p>自家製凍乾泰國無激素<img alt=\"🐓\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f413/32.png\" />雞柳，雞肉含有豐富蛋白質、胺基酸，也含有維生素&nbsp;A、菸鹼素與礦物質鋅，能補充毛孩必須要的胺基酸，優質蛋白質能令毛孩更易消化及吸收營養！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>自家製凍乾泰國無激素<img alt=\"🐓\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f413/32.png\" />雞柳，雞肉含有豐富蛋白質、胺基酸，也含有維生素&nbsp;A、菸鹼素與礦物質鋅，能補充毛孩必須要的胺基酸，優質蛋白質能令毛孩更易消化及吸收營養！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'assets/products_image/650/2.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:06:04'),
(3, 1, 0, 'CHEESE-3', '40', '🦆凍乾泰國無激素鴨胸肉粒價錢', '🦆凍乾泰國無激素鴨胸肉粒價錢', '65.00', 0.00, '<p>自家製凍乾泰國無激素<img alt=\"🦆\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f986/32.png\" />鴨胸肉粒，鴨肉含有豐富的鈣、磷、鐵、煙酸和維生素B1、B2。鴨肉具有抗敏感作用，一些對食物過敏的貓狗食用鴨肉後，過敏癥狀會得到很大的改善，營養吸收也會更好。跟其他肉類相比，鴨肉中B族維生素的含量更高，有助於體內葡萄糖水平的控制，幫助能量轉化，有益於心血管健康。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>自家製凍乾泰國無激素<img alt=\"🦆\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f986/32.png\" />鴨胸肉粒，鴨肉含有豐富的鈣、磷、鐵、煙酸和維生素B1、B2。鴨肉具有抗敏感作用，一些對食物過敏的貓狗食用鴨肉後，過敏癥狀會得到很大的改善，營養吸收也會更好。跟其他肉類相比，鴨肉中B族維生素的含量更高，有助於體內葡萄糖水平的控制，幫助能量轉化，有益於心血管健康。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'assets/products_image/650/3.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:10:45'),
(4, 1, 0, 'CHEESE-4', '40', '🦆凍乾泰國無激素鴨柳價錢', '🦆凍乾泰國無激素鴨柳價錢', '70.00', 0.00, '<p>自家製凍乾泰國無激素<img alt=\"🦆\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f986/32.png\" />鴨柳，鴨肉含有豐富的鈣、磷、鐵、煙酸和維生素B1、B2。鴨肉具有抗敏感作用，一些對食物過敏的貓狗食用鴨肉後，過敏癥狀會得到很大的改善，營養吸收也會更好。跟其他肉類相比，鴨肉中B族維生素的含量更高，有助於體內葡萄糖水平的控制，幫助能量轉化，有益於心血管健康。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾泰國無激素<img alt=\"🦆\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f986/32.png\" />鴨柳，鴨肉含有豐富的鈣、磷、鐵、煙酸和維生素B1、B2。鴨肉具有抗敏感作用，一些對食物過敏的貓狗食用鴨肉後，過敏癥狀會得到很大的改善，營養吸收也會更好。跟其他肉類相比，鴨肉中B族維生素的含量更高，有助於體內葡萄糖水平的控制，幫助能量轉化，有益於心血管健康。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/4.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:18:56'),
(5, 1, 0, 'CHEESE-5', '40', '🐑凍乾紐西蘭無激素草飼羊柳粒價錢', '🐑凍乾紐西蘭無激素草飼羊柳粒價錢', '125.00', 0.00, '<p>自家製凍乾紐西蘭無激素草飼<img alt=\"🐑\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f411/32.png\" />羊柳粒，羊柳是靠脊骨後側的小長條肉，纖維細長,質地軟嫩，豐富的動物性蛋白質及比一般羊肉更低脂，羊肉中含有大量的維生素B族營養素，包括B1、B2、B3、B5、B6及B12，鐵、鋅、硒，草飼羊肉還比普通飼養的羊肉多25%的Omega-3脂肪酸。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾紐西蘭無激素草飼<img alt=\"🐑\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f411/32.png\" />羊柳粒，羊柳是靠脊骨後側的小長條肉，纖維細長,質地軟嫩，豐富的動物性蛋白質及比一般羊肉更低脂，羊肉中含有大量的維生素B族營養素，包括B1、B2、B3、B5、B6及B12，鐵、鋅、硒，草飼羊肉還比普通飼養的羊肉多25%的Omega-3脂肪酸。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/5.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:20:33'),
(6, 1, 0, 'CHEESE-6', '40', '🐂凍乾紐西蘭無激素牛冧肉粒價錢', '🐂凍乾紐西蘭無激素牛冧肉粒價錢', '75.00', 0.00, '<p>自家製凍乾紐西蘭無激素<img alt=\"🐂\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f402/32.png\" />牛冧肉粒，牛肉營養中有豐富肌氨酸，可以增強肌肉，牛肉營養中還含鋅、B群、鎂、鉀、鐵、硒、磷等多種微量元素。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾紐西蘭無激素<img alt=\"🐂\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f402/32.png\" />牛冧肉粒，牛肉營養中有豐富肌氨酸，可以增強肌肉，牛肉營養中還含鋅、B群、鎂、鉀、鐵、硒、磷等多種微量元素。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/6.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:22:34'),
(7, 1, 0, 'CHEESE-7', '40', '🐂凍乾紐西蘭無激素牛西冷條價錢', '🐂凍乾紐西蘭無激素牛西冷條價錢', '118.00', 0.00, '<p>自家製凍乾紐西蘭無激素<img alt=\"🐂\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f402/32.png\" />牛西冷條，牛肉營養中有豐富肌氨酸，可以增強肌肉，還含鋅、B群、鎂、鉀、鐵、硒、磷等多種微量元素，西冷條不但營養豐富，而且口感非常鬆化，滿滿的牛肉香味。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾紐西蘭無激素<img alt=\"🐂\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f402/32.png\" />牛西冷條，牛肉營養中有豐富肌氨酸，可以增強肌肉，還含鋅、B群、鎂、鉀、鐵、硒、磷等多種微量元素，西冷條不但營養豐富，而且口感非常鬆化，滿滿的牛肉香味。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/7.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:36:01'),
(8, 1, 0, 'CHEESE-8', '40', '凍乾南非無激素鴕鳥肉粒價錢', '凍乾南非無激素鴕鳥肉粒價錢', '118.00', 0.00, '<p>自家製凍乾南非無激素鴕鳥肉粒，鴕鳥肉不但富含優質蛋白質、鐵質比牛肉更高，低脂肪而且口感細嫩，能令主子肌肉結實，尤其適合心血管病及偏胖的主子作零食或營養補充！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾南非無激素鴕鳥肉粒，鴕鳥肉不但富含優質蛋白質、鐵質比牛肉更高，低脂肪而且口感細嫩，能令主子肌肉結實，尤其適合心血管病及偏胖的主子作零食或營養補充！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/8.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:34:57'),
(9, 1, 0, 'CHEESE-9', '40', '🐊凍乾南非無激素鱷魚肉粒價錢', '🐊凍乾南非無激素鱷魚肉粒價錢', '97.00', 0.00, '<p>自家製凍乾南非無激素<img alt=\"🐊\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f40a/32.png\" />鱷魚肉粒，鱷魚肉不但能改善毛孩氣管敏感症狀，還富含優質蛋白質、氨基酸、維生素等，而且脂肪含量低！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾南非無激素<img alt=\"🐊\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f40a/32.png\" />鱷魚肉粒，鱷魚肉不但能改善毛孩氣管敏感症狀，還富含優質蛋白質、氨基酸、維生素等，而且脂肪含量低！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/9.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:37:52'),
(10, 1, 0, 'CHEESE-10', '40', '🐇凍乾法國無激素兔肉粒價錢', '🐇凍乾法國無激素兔肉粒價錢', '122.00', 0.00, '<p>自家製凍乾法國無激素<img alt=\"🐇\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f407/32.png\" />兔肉粒，兔肉不但高蛋白質、低脂肪、低膽固醇，質地細嫩，味道鮮美，而且富含卵磷脂、賴氨酸、色氨酸及多種維生素，能保護血管壁，阻止血栓形成及防止有害物質沉積。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾法國無激素<img alt=\"🐇\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f407/32.png\" />兔肉粒，兔肉不但高蛋白質、低脂肪、低膽固醇，質地細嫩，味道鮮美，而且富含卵磷脂、賴氨酸、色氨酸及多種維生素，能保護血管壁，阻止血栓形成及防止有害物質沉積。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/10.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:39:47'),
(11, 1, 0, 'CHEESE-11', '40', '🦃凍乾法國無激素火雞肉粒價錢', '🦃凍乾法國無激素火雞肉粒價錢', '97.00', 0.00, '<p>自家製凍乾法國無激素<img alt=\"🦃\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f983/32.png\" />火雞肉粒，口感非常鬆脆可口，火雞肉對敏感毛孩而言是一種很好的選擇，火雞肉不但富含和雞肉一樣的優質蛋白質、維生素B6和B12及低脂肪，而且火雞肉的致敏風險幾乎為零！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾法國無激素<img alt=\"🦃\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f983/32.png\" />火雞肉粒，口感非常鬆脆可口，火雞肉對敏感毛孩而言是一種很好的選擇，火雞肉不但富含和雞肉一樣的優質蛋白質、維生素B6和B12及低脂肪，而且火雞肉的致敏風險幾乎為零！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/11.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:41:06'),
(12, 1, 0, 'CHEESE-12', '40', '🦌凍乾紐西蘭無激素草飼鹿手肉粒價錢', '🦌凍乾紐西蘭無激素草飼鹿手肉粒價錢', '86.00', 0.00, '<p>自家製凍乾紐西蘭無激素草飼<img alt=\"🦌\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f98c/32.png\" />鹿手肉粒，鹿肉含豐富鐵質、完整蛋白質中含有毛孩身體無法自行製造出的10種必需胺基酸，還富含大量的維生素&nbsp;B群，包括：B12、B6、B3，B群能幫助分解蛋白質、脂肪碳水化合物，並轉化為能量，所以當毛孩體內富含充足的B群，就不會容易覺得疲憊、嗜睡，而是充滿活力，令情緒穩定！</p>\r\n\r\n<p>鹿肉中富含結締組織，提供好消化又易吸收的高單位「葡萄糖胺」與「軟骨素」，是毛孩關節養護最重要的營養素，加上鹿肉屬於低脂低卡的低致敏蛋白質，是所有有關節炎的毛孩最推薦的蛋白質選擇了！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾紐西蘭無激素草飼<img alt=\"🦌\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f98c/32.png\" />鹿手肉粒，鹿肉含豐富鐵質、完整蛋白質中含有毛孩身體無法自行製造出的10種必需胺基酸，還富含大量的維生素&nbsp;B群，包括：B12、B6、B3，B群能幫助分解蛋白質、脂肪碳水化合物，並轉化為能量，所以當毛孩體內富含充足的B群，就不會容易覺得疲憊、嗜睡，而是充滿活力，令情緒穩定！</p>\r\n\r\n<p>鹿肉中富含結締組織，提供好消化又易吸收的高單位「葡萄糖胺」與「軟骨素」，是毛孩關節養護最重要的營養素，加上鹿肉屬於低脂低卡的低致敏蛋白質，是所有有關節炎的毛孩最推薦的蛋白質選擇了！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/12.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:42:42'),
(13, 1, 0, 'CHEESE-13', '40', '凍乾原隻阿根廷紅蝦價錢', '凍乾原隻阿根廷紅蝦價錢', '110.00', 0.00, '<p>自家製凍乾原隻阿根廷紅蝦，紅蝦富含蝦青素、維生素B12及Omega-3及6。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾原隻阿根廷紅蝦，紅蝦富含蝦青素、維生素B12及Omega-3及6。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/13.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:43:45'),
(14, 1, 0, 'CHEESE-1', '200', '🐓凍乾泰國無激素雞胸肉粒價錢', '🐓凍乾泰國無激素雞胸肉粒價錢', '260.00', 0.00, '<p>自家製凍乾泰國無激素<img alt=\"🐓\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f413/32.png\" />雞胸肉粒，雞肉含有豐富蛋白質、胺基酸，也含有維生素&nbsp;A、菸鹼素與礦物質鋅，能補充毛孩必須要的胺基酸，優質蛋白質能令毛孩更易消化及吸收營養！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾泰國無激素<img alt=\"🐓\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f413/32.png\" />雞胸肉粒，雞肉含有豐富蛋白質、胺基酸，也含有維生素&nbsp;A、菸鹼素與礦物質鋅，能補充毛孩必須要的胺基酸，優質蛋白質能令毛孩更易消化及吸收營養！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/1.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:06:32'),
(15, 1, 0, 'CHEESE-2', '200', '🐓凍乾泰國無激素雞柳價錢', '🐓凍乾泰國無激素雞柳價錢', '260.00', 0.00, '<p>自家製凍乾泰國無激素<img alt=\"🐓\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f413/32.png\" />雞柳，雞肉含有豐富蛋白質、胺基酸，也含有維生素&nbsp;A、菸鹼素與礦物質鋅，能補充毛孩必須要的胺基酸，優質蛋白質能令毛孩更易消化及吸收營養！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>自家製凍乾泰國無激素<img alt=\"🐓\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f413/32.png\" />雞柳，雞肉含有豐富蛋白質、胺基酸，也含有維生素&nbsp;A、菸鹼素與礦物質鋅，能補充毛孩必須要的胺基酸，優質蛋白質能令毛孩更易消化及吸收營養！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'assets/products_image/650/2.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:06:04'),
(16, 1, 0, 'CHEESE-3', '200', '🦆凍乾泰國無激素鴨胸肉粒價錢', '🦆凍乾泰國無激素鴨胸肉粒價錢', '300.00', 0.00, '<p>自家製凍乾泰國無激素<img alt=\"🦆\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f986/32.png\" />鴨胸肉粒，鴨肉含有豐富的鈣、磷、鐵、煙酸和維生素B1、B2。鴨肉具有抗敏感作用，一些對食物過敏的貓狗食用鴨肉後，過敏癥狀會得到很大的改善，營養吸收也會更好。跟其他肉類相比，鴨肉中B族維生素的含量更高，有助於體內葡萄糖水平的控制，幫助能量轉化，有益於心血管健康。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>自家製凍乾泰國無激素<img alt=\"🦆\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f986/32.png\" />鴨胸肉粒，鴨肉含有豐富的鈣、磷、鐵、煙酸和維生素B1、B2。鴨肉具有抗敏感作用，一些對食物過敏的貓狗食用鴨肉後，過敏癥狀會得到很大的改善，營養吸收也會更好。跟其他肉類相比，鴨肉中B族維生素的含量更高，有助於體內葡萄糖水平的控制，幫助能量轉化，有益於心血管健康。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'assets/products_image/650/3.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:10:45'),
(17, 1, 0, 'CHEESE-4', '200', '🦆凍乾泰國無激素鴨柳價錢', '🦆凍乾泰國無激素鴨柳價錢', '332.00', 0.00, '<p>自家製凍乾泰國無激素<img alt=\"🦆\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f986/32.png\" />鴨柳，鴨肉含有豐富的鈣、磷、鐵、煙酸和維生素B1、B2。鴨肉具有抗敏感作用，一些對食物過敏的貓狗食用鴨肉後，過敏癥狀會得到很大的改善，營養吸收也會更好。跟其他肉類相比，鴨肉中B族維生素的含量更高，有助於體內葡萄糖水平的控制，幫助能量轉化，有益於心血管健康。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾泰國無激素<img alt=\"🦆\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f986/32.png\" />鴨柳，鴨肉含有豐富的鈣、磷、鐵、煙酸和維生素B1、B2。鴨肉具有抗敏感作用，一些對食物過敏的貓狗食用鴨肉後，過敏癥狀會得到很大的改善，營養吸收也會更好。跟其他肉類相比，鴨肉中B族維生素的含量更高，有助於體內葡萄糖水平的控制，幫助能量轉化，有益於心血管健康。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/4.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:18:56'),
(18, 1, 0, 'CHEESE-5', '200', '🐑凍乾紐西蘭無激素草飼羊柳粒價錢', '🐑凍乾紐西蘭無激素草飼羊柳粒價錢', '593.00', 0.00, '<p>自家製凍乾紐西蘭無激素草飼<img alt=\"🐑\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f411/32.png\" />羊柳粒，羊柳是靠脊骨後側的小長條肉，纖維細長,質地軟嫩，豐富的動物性蛋白質及比一般羊肉更低脂，羊肉中含有大量的維生素B族營養素，包括B1、B2、B3、B5、B6及B12，鐵、鋅、硒，草飼羊肉還比普通飼養的羊肉多25%的Omega-3脂肪酸。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾紐西蘭無激素草飼<img alt=\"🐑\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f411/32.png\" />羊柳粒，羊柳是靠脊骨後側的小長條肉，纖維細長,質地軟嫩，豐富的動物性蛋白質及比一般羊肉更低脂，羊肉中含有大量的維生素B族營養素，包括B1、B2、B3、B5、B6及B12，鐵、鋅、硒，草飼羊肉還比普通飼養的羊肉多25%的Omega-3脂肪酸。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/5.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:20:33'),
(19, 1, 0, 'CHEESE-6', '200', '🐂凍乾紐西蘭無激素牛冧肉粒價錢', '🐂凍乾紐西蘭無激素牛冧肉粒價錢', '355.00', 0.00, '<p>自家製凍乾紐西蘭無激素<img alt=\"🐂\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f402/32.png\" />牛冧肉粒，牛肉營養中有豐富肌氨酸，可以增強肌肉，牛肉營養中還含鋅、B群、鎂、鉀、鐵、硒、磷等多種微量元素。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾紐西蘭無激素<img alt=\"🐂\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f402/32.png\" />牛冧肉粒，牛肉營養中有豐富肌氨酸，可以增強肌肉，牛肉營養中還含鋅、B群、鎂、鉀、鐵、硒、磷等多種微量元素。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/6.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:22:34'),
(20, 1, 0, 'CHEESE-7', '200', '🐂凍乾紐西蘭無激素牛西冷條價錢', '🐂凍乾紐西蘭無激素牛西冷條價錢', '380.00', 0.00, '<p>自家製凍乾紐西蘭無激素<img alt=\"🐂\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f402/32.png\" />牛西冷條，牛肉營養中有豐富肌氨酸，可以增強肌肉，還含鋅、B群、鎂、鉀、鐵、硒、磷等多種微量元素，西冷條不但營養豐富，而且口感非常鬆化，滿滿的牛肉香味。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾紐西蘭無激素<img alt=\"🐂\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f402/32.png\" />牛西冷條，牛肉營養中有豐富肌氨酸，可以增強肌肉，還含鋅、B群、鎂、鉀、鐵、硒、磷等多種微量元素，西冷條不但營養豐富，而且口感非常鬆化，滿滿的牛肉香味。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/7.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:36:01');
INSERT INTO `product` (`id`, `category_id`, `store_id`, `product_code`, `product_weight`, `p_name`, `p_name_en`, `product_price`, `cost`, `description`, `description_en`, `p_image`, `status`, `deal_today`, `inserted_at`, `updated_at`) VALUES
(21, 1, 0, 'CHEESE-8', '200', '凍乾南非無激素鴕鳥肉粒價錢', '凍乾南非無激素鴕鳥肉粒價錢', '560.00', 0.00, '<p>自家製凍乾南非無激素鴕鳥肉粒，鴕鳥肉不但富含優質蛋白質、鐵質比牛肉更高，低脂肪而且口感細嫩，能令主子肌肉結實，尤其適合心血管病及偏胖的主子作零食或營養補充！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾南非無激素鴕鳥肉粒，鴕鳥肉不但富含優質蛋白質、鐵質比牛肉更高，低脂肪而且口感細嫩，能令主子肌肉結實，尤其適合心血管病及偏胖的主子作零食或營養補充！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/8.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:34:57'),
(22, 1, 0, 'CHEESE-9', '200', '🐊凍乾南非無激素鱷魚肉粒價錢', '🐊凍乾南非無激素鱷魚肉粒價錢', '460.00', 0.00, '<p>自家製凍乾南非無激素<img alt=\"🐊\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f40a/32.png\" />鱷魚肉粒，鱷魚肉不但能改善毛孩氣管敏感症狀，還富含優質蛋白質、氨基酸、維生素等，而且脂肪含量低！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾南非無激素<img alt=\"🐊\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f40a/32.png\" />鱷魚肉粒，鱷魚肉不但能改善毛孩氣管敏感症狀，還富含優質蛋白質、氨基酸、維生素等，而且脂肪含量低！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/9.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:37:52'),
(23, 1, 0, 'CHEESE-10', '200', '🐇凍乾法國無激素兔肉粒價錢', '🐇凍乾法國無激素兔肉粒價錢', '579.00', 0.00, '<p>自家製凍乾法國無激素<img alt=\"🐇\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f407/32.png\" />兔肉粒，兔肉不但高蛋白質、低脂肪、低膽固醇，質地細嫩，味道鮮美，而且富含卵磷脂、賴氨酸、色氨酸及多種維生素，能保護血管壁，阻止血栓形成及防止有害物質沉積。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾法國無激素<img alt=\"🐇\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f407/32.png\" />兔肉粒，兔肉不但高蛋白質、低脂肪、低膽固醇，質地細嫩，味道鮮美，而且富含卵磷脂、賴氨酸、色氨酸及多種維生素，能保護血管壁，阻止血栓形成及防止有害物質沉積。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/10.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:39:47'),
(24, 1, 0, 'CHEESE-11', '200', '🦃凍乾法國無激素火雞肉粒價錢', '🦃凍乾法國無激素火雞肉粒價錢', '460.00', 0.00, '<p>自家製凍乾法國無激素<img alt=\"🦃\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f983/32.png\" />火雞肉粒，口感非常鬆脆可口，火雞肉對敏感毛孩而言是一種很好的選擇，火雞肉不但富含和雞肉一樣的優質蛋白質、維生素B6和B12及低脂肪，而且火雞肉的致敏風險幾乎為零！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾法國無激素<img alt=\"🦃\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f983/32.png\" />火雞肉粒，口感非常鬆脆可口，火雞肉對敏感毛孩而言是一種很好的選擇，火雞肉不但富含和雞肉一樣的優質蛋白質、維生素B6和B12及低脂肪，而且火雞肉的致敏風險幾乎為零！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/11.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:41:06'),
(25, 1, 0, 'CHEESE-12', '200', '🦌凍乾紐西蘭無激素草飼鹿手肉粒價錢', '🦌凍乾紐西蘭無激素草飼鹿手肉粒價錢', '408.00', 0.00, '<p>自家製凍乾紐西蘭無激素草飼<img alt=\"🦌\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f98c/32.png\" />鹿手肉粒，鹿肉含豐富鐵質、完整蛋白質中含有毛孩身體無法自行製造出的10種必需胺基酸，還富含大量的維生素&nbsp;B群，包括：B12、B6、B3，B群能幫助分解蛋白質、脂肪碳水化合物，並轉化為能量，所以當毛孩體內富含充足的B群，就不會容易覺得疲憊、嗜睡，而是充滿活力，令情緒穩定！</p>\r\n\r\n<p>鹿肉中富含結締組織，提供好消化又易吸收的高單位「葡萄糖胺」與「軟骨素」，是毛孩關節養護最重要的營養素，加上鹿肉屬於低脂低卡的低致敏蛋白質，是所有有關節炎的毛孩最推薦的蛋白質選擇了！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾紐西蘭無激素草飼<img alt=\"🦌\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/1f98c/32.png\" />鹿手肉粒，鹿肉含豐富鐵質、完整蛋白質中含有毛孩身體無法自行製造出的10種必需胺基酸，還富含大量的維生素&nbsp;B群，包括：B12、B6、B3，B群能幫助分解蛋白質、脂肪碳水化合物，並轉化為能量，所以當毛孩體內富含充足的B群，就不會容易覺得疲憊、嗜睡，而是充滿活力，令情緒穩定！</p>\r\n\r\n<p>鹿肉中富含結締組織，提供好消化又易吸收的高單位「葡萄糖胺」與「軟骨素」，是毛孩關節養護最重要的營養素，加上鹿肉屬於低脂低卡的低致敏蛋白質，是所有有關節炎的毛孩最推薦的蛋白質選擇了！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/12.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:42:42'),
(26, 1, 0, 'CHEESE-13', '200', '凍乾原隻阿根廷紅蝦價錢', '凍乾原隻阿根廷紅蝦價錢', '522.00', 0.00, '<p>自家製凍乾原隻阿根廷紅蝦，紅蝦富含蝦青素、維生素B12及Omega-3及6。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', '<p>自家製凍乾原隻阿根廷紅蝦，紅蝦富含蝦青素、維生素B12及Omega-3及6。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />食用方法：可直接餵食或加水變回鮮肉質感餵食。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"♥️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2665_fe0f/32.png\" />保存方法：產品以真空包裝，存放於室內陰涼地方不接觸水份便可，未開封可存放一年，開封後三個月內食用。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />凍乾過程超過40小時以上，先用接近-40度超低溫將生肉中的水份冰晶化，再利用真空環境將已冰晶化的水份直接昇華氣化帶走。</p>\r\n\r\n<p><img alt=\"➡️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/27a1_fe0f/32.png\" />由於整個過程不涉高溫，食物中的營養及維生素得到最大限度保留，成品已沒有水份，能做到天然的防腐效果，只要浸泡水便能回復鮮肉質感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" />我們嚴格挑選無激素無抗生素的食材來制作凍乾寵物食品，無防腐劑及無添加化學成份，由準備食材到包裝過程全都是親手制作，絕對香港製造。<img alt=\"❤️\" src=\"https://fonts.gstatic.com/s/e/notoemoji/15.0/2764_fe0f/32.png\" /></p>\r\n', 'assets/products_image/650/13.jpg', 1, 0, '2023-04-15 19:23:39', '2023-05-18 15:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` int(11) NOT NULL,
  `coupon_name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `code` varchar(20) NOT NULL,
  `coupon_type` varchar(100) NOT NULL,
  `minimum_order` double(10,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `expirey_date` datetime NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`id`, `coupon_name`, `description`, `code`, `coupon_type`, `minimum_order`, `amount`, `start_date`, `expirey_date`, `status`, `inserted_at`, `updated_at`) VALUES
(1, 'Test', '1 y', '258', '1', 1000.00, 15, '2020-12-12 00:00:00', '2021-01-01 00:00:00', 1, '2023-03-09 15:01:16', '0000-00-00 00:00:00'),
(2, 'Test 1', 'course', '369', '0', 50.00, 10, '2020-02-28 00:00:00', '2023-02-03 00:00:00', 1, '2023-03-09 15:02:21', '0000-00-00 00:00:00'),
(3, 'Test 3', 'course', '147', '0', 1000.00, 150, '2010-07-12 00:00:00', '2015-10-31 00:00:00', 1, '2023-03-09 15:03:10', '0000-00-00 00:00:00'),
(4, 'Test 4', 'course', '789', '0', 2000.00, 500, '2022-12-12 00:00:00', '2023-12-12 00:00:00', 1, '2023-03-09 15:03:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `inserted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `customer_id`, `description`, `status`, `inserted_at`) VALUES
(1, 1, 'The staff was incredibly welcoming and helpful. I would definitely come back!', 1, '2023-04-05 15:24:47'),
(2, 5, 'The staff was incredibly welcoming and helpful. I would definitely come back!', 1, '2023-04-24 18:54:53'),
(3, 1, 'The staff was incredibly welcoming and helpful. I would definitely come back!', 1, '2023-04-05 15:24:47'),
(4, 5, 'I had a wonderful experience and I would highly recommend this business to others.', 1, '2023-04-24 18:54:53'),
(5, 1, 'I had a wonderful experience and I would highly recommend this business to others.', 1, '2023-04-05 15:24:47'),
(6, 5, 'I had a wonderful experience and I would highly recommend this business to others.', 1, '2023-04-24 18:54:53'),
(7, 1, 'The staff was incredibly welcoming and helpful. I would definitely come back!', 1, '2023-04-05 15:24:47'),
(8, 5, 'I had a wonderful experience and I would highly recommend this business to others.', 1, '2023-04-24 18:54:53'),
(9, 5, 'I had a wonderful experience and I would highly recommend this business to others.', 1, '2023-04-24 18:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `inserted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `category_id`, `product_id`, `quantity`, `inserted_at`) VALUES
(1, 4, 3, 150, '2023-03-15 14:46:07'),
(2, 5, 6, 45, '2023-03-15 14:46:23'),
(3, 1, 41, 200, '2023-03-21 15:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_image` varchar(200) NOT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `billing_id` int(11) NOT NULL,
  `customer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_checkout_session_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `billing_id`, `customer_name`, `customer_email`, `item_name`, `item_number`, `item_price`, `item_price_currency`, `paid_amount`, `paid_amount_currency`, `txn_id`, `payment_status`, `stripe_checkout_session_id`, `created`, `modified`) VALUES
(1, 1, 'Test', 'test@test.com', '1小時30分鐘租場服務', 'DP12345', 190.00, 'hkd', 270.00, 'hkd', 'pi_3N12B9Eef0ZfRYif14rqJehd', 'succeeded', 'cs_test_a1yX3YYsa9THbO27tJI1bSmcGB65fdpiews8V43PULT8LeLxxO3vorI0Tl', '2023-04-26 12:50:41', '2023-04-26 12:50:41'),
(2, 2, 'Test', 'test@test.com', '1小時30分鐘租場服務', 'DP12345', 190.00, 'hkd', 350.00, 'hkd', 'pi_3N12KgEef0ZfRYif0FuYqTw8', 'succeeded', 'cs_test_a1SK13VL4kKsmNvZQ9e0lgNeK1sFErMUsl5BaRzd9aW9r5LOCy82oHteeN', '2023-04-26 13:00:42', '2023-04-26 13:00:42'),
(3, 3, 'Test', 'test@test.com', '1小時30分鐘租場服務', 'DP12345', 190.00, 'hkd', 328.00, 'hkd', 'pi_3N2Vk3Eef0ZfRYif05JjLhgt', 'succeeded', 'cs_test_a1yzipmuTmBCisShHL1xnFLu2q78e6nDviXUNu8ll80oHDCvqTCIfGipB1', '2023-04-30 14:37:15', '2023-04-30 14:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `inserted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
