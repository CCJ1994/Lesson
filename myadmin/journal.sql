-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2020 年 11 月 11 日 16:31
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `journal`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

CREATE TABLE `account` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '序號',
  `code` tinyint(3) UNSIGNED NOT NULL COMMENT '代碼',
  `payment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款方式'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `account`
--

INSERT INTO `account` (`id`, `code`, `payment_type`) VALUES
(1, 1, '現金'),
(2, 2, '金融卡'),
(3, 3, '信用卡');

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '序號',
  `code` int(11) NOT NULL COMMENT '代碼',
  `item` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '項目'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`id`, `code`, `item`) VALUES
(1, 1, '食'),
(2, 2, '衣'),
(3, 3, '住'),
(4, 4, '行'),
(5, 5, '育'),
(6, 6, '樂'),
(7, 7, '其他');

-- --------------------------------------------------------

--
-- 資料表結構 `daily`
--

CREATE TABLE `daily` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '序號',
  `date` date NOT NULL COMMENT '日期',
  `time` time NOT NULL COMMENT '時間',
  `item` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '項目',
  `amount` int(11) UNSIGNED NOT NULL COMMENT '金額',
  `account` smallint(5) UNSIGNED NOT NULL COMMENT '付款方式',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '收支類別',
  `category` smallint(5) UNSIGNED NOT NULL COMMENT '類別',
  `plan` smallint(5) UNSIGNED DEFAULT NULL COMMENT '預算科目',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '備註'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `daily`
--

INSERT INTO `daily` (`id`, `date`, `time`, `item`, `amount`, `account`, `type`, `category`, `plan`, `note`) VALUES
(1, '2020-01-03', '17:10:44', '加油', 70, 2, 1, 4, NULL, NULL),
(2, '2020-01-04', '13:10:44', 'house rent', 120, 1, 1, 3, 1, NULL),
(3, '2020-01-05', '11:41:41', '午餐', 14, 2, 1, 1, NULL, NULL),
(4, '2020-01-05', '16:54:20', '日常用品', 55, 2, 1, 1, 1, NULL),
(5, '2020-01-05', '19:54:20', '日常用品', 12, 2, 1, 3, NULL, NULL),
(6, '2020-01-14', '11:58:28', '薪水', 950, 2, 2, 7, 3, NULL),
(7, '2020-01-13', '23:02:09', '電話費', 30, 2, 1, 7, 1, NULL),
(8, '2020-01-12', '14:41:41', '娛樂', 7, 2, 1, 6, 2, NULL),
(9, '2020-01-12', '11:03:20', '早餐', 20, 1, 1, 1, 1, NULL),
(10, '2020-01-21', '16:05:48', '鞋子', 220, 2, 1, 2, 2, NULL),
(11, '2020-01-25', '11:27:24', '飲料', 5, 2, 1, 1, NULL, NULL),
(12, '2020-01-21', '13:29:40', '薪水', 1657, 1, 2, 7, 3, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `plan`
--

CREATE TABLE `plan` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '序號',
  `code` tinyint(3) UNSIGNED NOT NULL COMMENT '代碼',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `plan`
--

INSERT INTO `plan` (`id`, `code`, `name`) VALUES
(1, 1, '固定支出'),
(2, 2, '額外支出'),
(3, 3, '固定收入'),
(4, 4, '額外收入');

-- --------------------------------------------------------

--
-- 資料表結構 `type`
--

CREATE TABLE `type` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '序號',
  `code` tinyint(3) UNSIGNED NOT NULL COMMENT '代碼',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `type`
--

INSERT INTO `type` (`id`, `code`, `name`) VALUES
(1, 1, '收入'),
(2, 2, '支出'),
(3, 3, '借款'),
(4, 4, '貸款');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `account`
--
ALTER TABLE `account`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序號', AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序號', AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `daily`
--
ALTER TABLE `daily`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序號', AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序號', AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序號', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
