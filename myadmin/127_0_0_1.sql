-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-05 08:27:50
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
-- 資料庫： `account_book`
--
CREATE DATABASE IF NOT EXISTS `account_book` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `account_book`;

-- --------------------------------------------------------

--
-- 資料表結構 `book`
--

CREATE TABLE `book` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '序號',
  `date` date NOT NULL COMMENT '日期',
  `item` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '項目',
  `time` time NOT NULL COMMENT '時間',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '收支類別',
  `payment` int(11) UNSIGNED NOT NULL COMMENT '金額',
  `account` smallint(5) UNSIGNED NOT NULL COMMENT '付款方式',
  `category` smallint(5) UNSIGNED NOT NULL COMMENT '類別',
  `plan` smallint(5) UNSIGNED DEFAULT NULL COMMENT '預算科目',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '備註'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序號';
--
-- 資料庫： `firstdb`
--
CREATE DATABASE IF NOT EXISTS `firstdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `firstdb`;

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '序號',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `national_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '身分證字號',
  `seat_num` tinyint(2) UNSIGNED NOT NULL COMMENT '座號',
  `classes` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '班級',
  `gender` tinyint(1) UNSIGNED NOT NULL COMMENT '性別',
  `birthday` date NOT NULL COMMENT '生日',
  `student_id` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '學號',
  `tel` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '電話',
  `addr` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `national_id`, `seat_num`, `classes`, `gender`, `birthday`, `student_id`, `tel`, `addr`) VALUES
(1, '張君如', 'F228624584', 1, '一年一班', 0, '1994-04-20', '01201261', '0988763353', '新北市五股區中興路X段38巷X號'),
(2, '王曉明', 'A229627584', 2, '二年一班', 0, '1993-05-20', '01201181', '0988564453', '台北市大安區中興路X段38巷X號'),
(3, '陳曉玫', 'F228618884', 3, '一年三班', 0, '1995-06-28', '01201551', '091234567', '新竹市五股區中興路X段38巷X號'),
(4, '高大名', 'F228624111', 4, '一年一班', 1, '1994-04-20', '01201771', '0988769953', '馬祖'),
(5, 'sandy', 'F228111111', 6, '一年五班', 0, '1997-11-24', '01111771', '0988767774', '綠島');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序號', AUTO_INCREMENT=6;
--
-- 資料庫： `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 資料表結構 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 傾印資料表的資料 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"account_book\",\"table\":\"book\"},{\"db\":\"students\",\"table\":\"students\"},{\"db\":\"firstdb\",\"table\":\"students\"},{\"db\":\"homedb\",\"table\":\"students\"}]');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 傾印資料表的資料 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-11-05 07:13:44', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"zh_TW\"}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 資料表索引 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 資料表索引 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 資料表索引 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 資料表索引 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 資料表索引 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 資料表索引 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 資料表索引 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 資料表索引 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 資料表索引 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 資料表索引 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 資料表索引 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 資料庫： `students`
--
CREATE DATABASE IF NOT EXISTS `students` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `students`;

-- --------------------------------------------------------

--
-- 資料表結構 `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tutor` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `classes`
--

INSERT INTO `classes` (`id`, `code`, `name`, `tutor`) VALUES
(1, '101', '一年一班', '孫承翰'),
(2, '102', '一年二班', '王詠晴'),
(3, '103', '一年三班', '賴冠延'),
(4, '104', '一年四班', '郭欣妤'),
(5, '105', '一年五班', '謝家豪'),
(6, '106', '一年六班', '黃雅婷'),
(7, '107', '一年七班', '林志偉'),
(8, '108', '一年八班', '趙宜蓁'),
(9, '109', '一年九班', '張建宏'),
(10, '110', '一年十班', '許麗華');

-- --------------------------------------------------------

--
-- 資料表結構 `class_student`
--

CREATE TABLE `class_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_num` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_num` tinyint(2) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `class_student`
--

INSERT INTO `class_student` (`id`, `school_num`, `class_code`, `seat_num`, `year`) VALUES
(1, '911001', '101', 1, 2000),
(2, '911002', '101', 2, 2000),
(3, '911003', '101', 3, 2000),
(4, '911004', '101', 4, 2000),
(5, '911005', '101', 5, 2000),
(6, '911006', '101', 6, 2000),
(7, '911007', '101', 7, 2000),
(8, '911008', '101', 8, 2000),
(9, '911009', '101', 9, 2000),
(10, '911010', '101', 10, 2000),
(11, '911011', '101', 11, 2000),
(12, '911012', '101', 12, 2000),
(13, '911013', '101', 13, 2000),
(14, '911014', '101', 14, 2000),
(15, '911015', '101', 15, 2000),
(16, '911016', '101', 16, 2000),
(17, '911017', '101', 17, 2000),
(18, '911018', '101', 18, 2000),
(19, '911019', '101', 19, 2000),
(20, '911020', '101', 20, 2000),
(21, '911021', '101', 21, 2000),
(22, '911022', '101', 22, 2000),
(23, '911023', '101', 23, 2000),
(24, '911024', '101', 24, 2000),
(25, '911025', '101', 25, 2000),
(26, '911026', '101', 26, 2000),
(27, '911027', '101', 27, 2000),
(28, '911028', '101', 28, 2000),
(29, '911029', '101', 29, 2000),
(30, '911030', '101', 30, 2000),
(31, '911031', '101', 31, 2000),
(32, '911032', '101', 32, 2000),
(33, '911033', '101', 33, 2000),
(34, '911034', '101', 34, 2000),
(35, '911035', '101', 35, 2000),
(36, '911036', '101', 36, 2000),
(37, '911037', '101', 37, 2000),
(38, '911038', '101', 38, 2000),
(39, '911039', '101', 39, 2000),
(40, '911040', '101', 40, 2000),
(41, '911041', '101', 41, 2000),
(42, '911042', '101', 42, 2000),
(43, '911043', '101', 43, 2000),
(44, '911044', '101', 44, 2000),
(45, '911045', '101', 45, 2000),
(46, '911046', '101', 46, 2000),
(47, '911047', '101', 47, 2000),
(48, '911048', '101', 48, 2000),
(49, '911049', '101', 49, 2000),
(50, '912001', '102', 1, 2000),
(51, '912002', '102', 2, 2000),
(52, '912003', '102', 3, 2000),
(53, '912004', '102', 4, 2000),
(54, '912005', '102', 5, 2000),
(55, '912006', '102', 6, 2000),
(56, '912007', '102', 7, 2000),
(57, '912008', '102', 8, 2000),
(58, '912009', '102', 9, 2000),
(59, '912010', '102', 10, 2000),
(60, '912011', '102', 11, 2000),
(61, '912012', '102', 12, 2000),
(62, '912013', '102', 13, 2000),
(63, '912014', '102', 14, 2000),
(64, '912015', '102', 15, 2000),
(65, '912016', '102', 16, 2000),
(66, '912017', '102', 17, 2000),
(67, '912018', '102', 18, 2000),
(68, '912019', '102', 19, 2000),
(69, '912020', '102', 20, 2000),
(70, '912021', '102', 21, 2000),
(71, '912022', '102', 22, 2000),
(72, '912023', '102', 23, 2000),
(73, '912024', '102', 24, 2000),
(74, '912025', '102', 25, 2000),
(75, '912026', '102', 26, 2000),
(76, '912027', '102', 27, 2000),
(77, '912028', '102', 28, 2000),
(78, '912029', '102', 29, 2000),
(79, '912030', '102', 30, 2000),
(80, '912031', '102', 31, 2000),
(81, '912032', '102', 32, 2000),
(82, '912033', '102', 33, 2000),
(83, '912034', '102', 34, 2000),
(84, '912035', '102', 35, 2000),
(85, '912036', '102', 36, 2000),
(86, '912037', '102', 37, 2000),
(87, '912038', '102', 38, 2000),
(88, '913001', '103', 1, 2000),
(89, '913002', '103', 2, 2000),
(90, '913003', '103', 3, 2000),
(91, '913004', '103', 4, 2000),
(92, '913005', '103', 5, 2000),
(93, '913006', '103', 6, 2000),
(94, '913007', '103', 7, 2000),
(95, '913008', '103', 8, 2000),
(96, '913009', '103', 9, 2000),
(97, '913010', '103', 10, 2000),
(98, '913011', '103', 11, 2000),
(99, '913012', '103', 12, 2000),
(100, '913013', '103', 13, 2000),
(101, '913014', '103', 14, 2000),
(102, '913015', '103', 15, 2000),
(103, '913016', '103', 16, 2000),
(104, '913017', '103', 17, 2000),
(105, '913018', '103', 18, 2000),
(106, '913019', '103', 19, 2000),
(107, '913020', '103', 20, 2000),
(108, '913021', '103', 21, 2000),
(109, '913022', '103', 22, 2000),
(110, '913023', '103', 23, 2000),
(111, '913024', '103', 24, 2000),
(112, '913025', '103', 25, 2000),
(113, '913026', '103', 26, 2000),
(114, '913027', '103', 27, 2000),
(115, '913028', '103', 28, 2000),
(116, '913029', '103', 29, 2000),
(117, '913030', '103', 30, 2000),
(118, '913031', '103', 31, 2000),
(119, '913032', '103', 32, 2000),
(120, '913033', '103', 33, 2000),
(121, '913034', '103', 34, 2000),
(122, '913035', '103', 35, 2000),
(123, '913036', '103', 36, 2000),
(124, '913037', '103', 37, 2000),
(125, '913038', '103', 38, 2000),
(126, '913039', '103', 39, 2000),
(127, '913040', '103', 40, 2000),
(128, '913041', '103', 41, 2000),
(129, '913042', '103', 42, 2000),
(130, '913043', '103', 43, 2000),
(131, '913044', '103', 44, 2000),
(132, '913045', '103', 45, 2000),
(133, '913046', '103', 46, 2000),
(134, '913047', '103', 47, 2000),
(135, '913048', '103', 48, 2000),
(136, '913049', '103', 49, 2000),
(137, '913050', '103', 50, 2000),
(138, '913051', '103', 51, 2000),
(139, '913052', '103', 52, 2000),
(140, '913053', '103', 53, 2000),
(141, '913054', '103', 54, 2000),
(142, '913055', '103', 55, 2000),
(143, '913056', '103', 56, 2000),
(144, '913057', '103', 57, 2000),
(145, '913058', '104', 1, 2000),
(146, '913059', '104', 2, 2000),
(147, '913060', '104', 3, 2000),
(148, '913061', '104', 4, 2000),
(149, '913062', '104', 5, 2000),
(150, '913063', '104', 6, 2000),
(151, '913064', '104', 7, 2000),
(152, '913065', '104', 8, 2000),
(153, '913066', '104', 9, 2000),
(154, '913067', '104', 10, 2000),
(155, '913068', '104', 11, 2000),
(156, '913069', '104', 12, 2000),
(157, '913070', '104', 13, 2000),
(158, '913071', '104', 14, 2000),
(159, '913072', '104', 15, 2000),
(160, '913073', '104', 16, 2000),
(161, '913074', '104', 17, 2000),
(162, '913075', '104', 18, 2000),
(163, '913076', '104', 19, 2000),
(164, '913077', '104', 20, 2000),
(165, '913078', '104', 21, 2000),
(166, '913079', '104', 22, 2000),
(167, '913080', '104', 23, 2000),
(168, '913081', '104', 24, 2000),
(169, '913082', '104', 25, 2000),
(170, '913083', '104', 26, 2000),
(171, '913084', '104', 27, 2000),
(172, '913085', '104', 28, 2000),
(173, '913086', '104', 29, 2000),
(174, '913087', '104', 30, 2000),
(175, '913088', '104', 31, 2000),
(176, '913089', '104', 32, 2000),
(177, '913090', '104', 33, 2000),
(178, '913091', '104', 34, 2000),
(179, '913092', '104', 35, 2000),
(180, '913093', '104', 36, 2000),
(181, '913094', '104', 37, 2000),
(182, '913095', '104', 38, 2000),
(183, '913096', '104', 39, 2000),
(184, '913097', '104', 40, 2000),
(185, '913098', '104', 41, 2000),
(186, '913099', '104', 42, 2000),
(187, '913100', '104', 43, 2000),
(188, '913101', '104', 44, 2000),
(189, '913102', '104', 45, 2000),
(190, '913103', '104', 46, 2000),
(191, '913104', '104', 47, 2000),
(192, '913105', '104', 48, 2000),
(193, '913106', '104', 49, 2000),
(194, '913107', '104', 50, 2000),
(195, '913108', '104', 51, 2000),
(196, '913109', '104', 52, 2000),
(197, '913110', '104', 53, 2000),
(198, '913111', '104', 54, 2000),
(199, '913112', '104', 55, 2000),
(200, '913113', '104', 56, 2000),
(201, '913114', '104', 57, 2000),
(202, '913115', '104', 58, 2000),
(203, '913116', '104', 59, 2000),
(204, '913117', '105', 1, 2000),
(205, '913118', '105', 2, 2000),
(206, '913119', '105', 3, 2000),
(207, '913120', '105', 4, 2000),
(208, '913121', '105', 5, 2000),
(209, '913122', '105', 6, 2000),
(210, '913123', '105', 7, 2000),
(211, '913124', '105', 8, 2000),
(212, '913125', '105', 9, 2000),
(213, '913126', '105', 10, 2000),
(214, '913127', '105', 11, 2000),
(215, '913128', '105', 12, 2000),
(216, '913129', '105', 13, 2000),
(217, '913130', '105', 14, 2000),
(218, '913131', '105', 15, 2000),
(219, '913132', '105', 16, 2000),
(220, '913133', '105', 17, 2000),
(221, '913134', '105', 18, 2000),
(222, '913135', '105', 19, 2000),
(223, '913136', '105', 20, 2000),
(224, '913137', '105', 21, 2000),
(225, '913138', '105', 22, 2000),
(226, '913139', '105', 23, 2000),
(227, '913140', '105', 24, 2000),
(228, '913141', '105', 25, 2000),
(229, '913142', '105', 26, 2000),
(230, '913143', '105', 27, 2000),
(231, '913144', '105', 28, 2000),
(232, '913145', '105', 29, 2000),
(233, '913146', '105', 30, 2000),
(234, '913147', '105', 31, 2000),
(235, '913148', '105', 32, 2000),
(236, '913149', '105', 33, 2000),
(237, '913150', '105', 34, 2000),
(238, '913151', '105', 35, 2000),
(239, '913152', '105', 36, 2000),
(240, '913153', '105', 37, 2000),
(241, '913154', '105', 38, 2000),
(242, '913155', '105', 39, 2000),
(243, '913156', '105', 40, 2000),
(244, '913157', '105', 41, 2000),
(245, '913158', '105', 42, 2000),
(246, '913159', '105', 43, 2000),
(247, '913160', '105', 44, 2000),
(248, '913161', '105', 45, 2000),
(249, '913162', '105', 46, 2000),
(250, '913163', '105', 47, 2000),
(251, '913164', '105', 48, 2000),
(252, '913165', '105', 49, 2000),
(253, '913166', '105', 50, 2000),
(254, '913167', '105', 51, 2000),
(255, '913168', '105', 52, 2000),
(256, '913169', '105', 53, 2000),
(257, '913170', '105', 54, 2000),
(258, '913171', '105', 55, 2000),
(259, '914001', '106', 1, 2000),
(260, '914002', '106', 2, 2000),
(261, '914003', '106', 3, 2000),
(262, '914004', '106', 4, 2000),
(263, '914005', '106', 5, 2000),
(264, '914006', '106', 6, 2000),
(265, '914007', '106', 7, 2000),
(266, '914008', '106', 8, 2000),
(267, '914009', '106', 9, 2000),
(268, '914010', '106', 10, 2000),
(269, '914011', '106', 11, 2000),
(270, '914012', '106', 12, 2000),
(271, '914013', '106', 13, 2000),
(272, '914014', '106', 14, 2000),
(273, '914015', '106', 15, 2000),
(274, '914016', '106', 16, 2000),
(275, '914017', '106', 17, 2000),
(276, '914018', '106', 18, 2000),
(277, '914019', '106', 19, 2000),
(278, '914020', '106', 20, 2000),
(279, '914021', '106', 21, 2000),
(280, '914022', '106', 22, 2000),
(281, '914023', '106', 23, 2000),
(282, '914024', '106', 24, 2000),
(283, '914025', '106', 25, 2000),
(284, '914026', '106', 26, 2000),
(285, '914027', '106', 27, 2000),
(286, '914028', '106', 28, 2000),
(287, '914029', '106', 29, 2000),
(288, '914030', '106', 30, 2000),
(289, '914031', '106', 31, 2000),
(290, '914032', '106', 32, 2000),
(291, '914033', '106', 33, 2000),
(292, '914034', '106', 34, 2000),
(293, '914035', '106', 35, 2000),
(294, '914036', '106', 36, 2000),
(295, '914037', '106', 37, 2000),
(296, '914038', '106', 38, 2000),
(297, '914039', '106', 39, 2000),
(298, '914040', '106', 40, 2000),
(299, '914041', '106', 41, 2000),
(300, '914042', '106', 42, 2000),
(301, '914043', '106', 43, 2000),
(302, '914044', '106', 44, 2000),
(303, '914045', '106', 45, 2000),
(304, '914046', '106', 46, 2000),
(305, '914047', '106', 47, 2000),
(306, '914048', '106', 48, 2000),
(307, '914049', '107', 1, 2000),
(308, '914050', '107', 2, 2000),
(309, '914051', '107', 3, 2000),
(310, '914052', '107', 4, 2000),
(311, '914053', '107', 5, 2000),
(312, '914054', '107', 6, 2000),
(313, '914055', '107', 7, 2000),
(314, '914056', '107', 8, 2000),
(315, '914057', '107', 9, 2000),
(316, '914058', '107', 10, 2000),
(317, '914059', '107', 11, 2000),
(318, '914060', '107', 12, 2000),
(319, '914061', '107', 13, 2000),
(320, '914062', '107', 14, 2000),
(321, '914063', '107', 15, 2000),
(322, '914064', '107', 16, 2000),
(323, '914065', '107', 17, 2000),
(324, '914066', '107', 18, 2000),
(325, '914067', '107', 19, 2000),
(326, '914068', '107', 20, 2000),
(327, '914069', '107', 21, 2000),
(328, '914070', '107', 22, 2000),
(329, '914071', '107', 23, 2000),
(330, '914072', '107', 24, 2000),
(331, '914073', '107', 25, 2000),
(332, '914074', '107', 26, 2000),
(333, '914075', '107', 27, 2000),
(334, '914076', '107', 28, 2000),
(335, '914077', '107', 29, 2000),
(336, '914078', '107', 30, 2000),
(337, '914079', '107', 31, 2000),
(338, '914080', '107', 32, 2000),
(339, '914081', '107', 33, 2000),
(340, '914082', '107', 34, 2000),
(341, '914083', '107', 35, 2000),
(342, '914084', '107', 36, 2000),
(343, '914085', '107', 37, 2000),
(344, '914086', '107', 38, 2000),
(345, '914087', '107', 39, 2000),
(346, '914088', '107', 40, 2000),
(347, '914089', '107', 41, 2000),
(348, '914090', '107', 42, 2000),
(349, '914091', '107', 43, 2000),
(350, '914092', '107', 44, 2000),
(351, '914093', '107', 45, 2000),
(352, '914094', '107', 46, 2000),
(353, '914095', '107', 47, 2000),
(354, '914096', '108', 1, 2000),
(355, '914097', '108', 2, 2000),
(356, '914098', '108', 3, 2000),
(357, '914099', '108', 4, 2000),
(358, '914100', '108', 5, 2000),
(359, '914101', '108', 6, 2000),
(360, '914102', '108', 7, 2000),
(361, '914103', '108', 8, 2000),
(362, '914104', '108', 9, 2000),
(363, '914105', '108', 10, 2000),
(364, '914106', '108', 11, 2000),
(365, '914107', '108', 12, 2000),
(366, '914108', '108', 13, 2000),
(367, '914109', '108', 14, 2000),
(368, '914110', '108', 15, 2000),
(369, '914111', '108', 16, 2000),
(370, '914112', '108', 17, 2000),
(371, '914113', '108', 18, 2000),
(372, '914114', '108', 19, 2000),
(373, '914115', '108', 20, 2000),
(374, '914116', '108', 21, 2000),
(375, '914117', '108', 22, 2000),
(376, '914118', '108', 23, 2000),
(377, '914119', '108', 24, 2000),
(378, '914120', '108', 25, 2000),
(379, '914121', '108', 26, 2000),
(380, '914122', '108', 27, 2000),
(381, '914123', '108', 28, 2000),
(382, '914124', '108', 29, 2000),
(383, '914125', '108', 30, 2000),
(384, '914126', '108', 31, 2000),
(385, '914127', '108', 32, 2000),
(386, '914128', '108', 33, 2000),
(387, '914129', '108', 34, 2000),
(388, '914130', '108', 35, 2000),
(389, '914131', '108', 36, 2000),
(390, '914132', '108', 37, 2000),
(391, '914133', '108', 38, 2000),
(392, '914134', '108', 39, 2000),
(393, '914135', '108', 40, 2000),
(394, '914136', '108', 41, 2000),
(395, '914137', '108', 42, 2000),
(396, '914138', '108', 43, 2000),
(397, '915001', '109', 1, 2000),
(398, '915002', '109', 2, 2000),
(399, '915003', '109', 3, 2000),
(400, '915004', '109', 4, 2000),
(401, '915005', '109', 5, 2000),
(402, '915006', '109', 6, 2000),
(403, '915007', '109', 7, 2000),
(404, '915008', '109', 8, 2000),
(405, '915009', '109', 9, 2000),
(406, '915010', '109', 10, 2000),
(407, '915011', '109', 11, 2000),
(408, '915012', '109', 12, 2000),
(409, '915013', '109', 13, 2000),
(410, '915014', '109', 14, 2000),
(411, '915015', '109', 15, 2000),
(412, '915016', '109', 16, 2000),
(413, '915017', '109', 17, 2000),
(414, '915018', '109', 18, 2000),
(415, '915019', '109', 19, 2000),
(416, '915020', '109', 20, 2000),
(417, '915021', '109', 21, 2000),
(418, '915022', '109', 22, 2000),
(419, '915023', '109', 23, 2000),
(420, '915024', '109', 24, 2000),
(421, '915025', '109', 25, 2000),
(422, '915026', '109', 26, 2000),
(423, '915027', '109', 27, 2000),
(424, '915028', '109', 28, 2000),
(425, '915029', '109', 29, 2000),
(426, '915030', '109', 30, 2000),
(427, '915031', '109', 31, 2000),
(428, '915032', '109', 32, 2000),
(429, '915033', '109', 33, 2000),
(430, '915034', '109', 34, 2000),
(431, '915035', '109', 35, 2000),
(432, '915036', '109', 36, 2000),
(433, '915037', '109', 37, 2000),
(434, '915038', '109', 38, 2000),
(435, '915039', '109', 39, 2000),
(436, '915040', '109', 40, 2000),
(437, '915041', '109', 41, 2000),
(438, '915042', '109', 42, 2000),
(439, '915043', '110', 1, 2000),
(440, '915044', '110', 2, 2000),
(441, '915045', '110', 3, 2000),
(442, '915046', '110', 4, 2000),
(443, '915047', '110', 5, 2000),
(444, '915048', '110', 6, 2000),
(445, '915049', '110', 7, 2000),
(446, '915050', '110', 8, 2000),
(447, '915051', '110', 9, 2000),
(448, '915052', '110', 10, 2000),
(449, '915053', '110', 11, 2000),
(450, '915054', '110', 12, 2000),
(451, '915055', '110', 13, 2000),
(452, '915056', '110', 14, 2000),
(453, '915057', '110', 15, 2000),
(454, '915058', '110', 16, 2000),
(455, '915059', '110', 17, 2000),
(456, '915060', '110', 18, 2000),
(457, '915061', '110', 19, 2000),
(458, '915062', '110', 20, 2000),
(459, '915063', '110', 21, 2000),
(460, '915064', '110', 22, 2000),
(461, '915065', '110', 23, 2000),
(462, '915066', '110', 24, 2000),
(463, '915067', '110', 25, 2000),
(464, '915068', '110', 26, 2000),
(465, '915069', '110', 27, 2000),
(466, '915070', '110', 28, 2000),
(467, '915071', '110', 29, 2000),
(468, '915072', '110', 30, 2000),
(469, '915073', '110', 31, 2000),
(470, '915074', '110', 32, 2000),
(471, '915075', '110', 33, 2000),
(472, '915076', '110', 34, 2000),
(473, '915077', '110', 35, 2000),
(474, '915078', '110', 36, 2000),
(475, '915079', '110', 37, 2000),
(476, '915080', '110', 38, 2000),
(477, '915081', '110', 39, 2000),
(478, '915082', '110', 40, 2000),
(479, '915083', '110', 41, 2000);

-- --------------------------------------------------------

--
-- 資料表結構 `conduct`
--

CREATE TABLE `conduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_num` varchar(6) NOT NULL,
  `class_code` varchar(3) DEFAULT NULL COMMENT '班級座號',
  `score` int(2) DEFAULT NULL COMMENT '導師評分',
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `conduct`
--

INSERT INTO `conduct` (`id`, `school_num`, `class_code`, `score`, `year`) VALUES
(1, '911001', '101', 82, 2000),
(2, '911002', '101', 64, 2000),
(3, '911003', '101', 78, 2000),
(4, '911004', '101', 64, 2000),
(5, '911005', '101', 74, 2000),
(6, '911006', '101', 80, 2000),
(7, '911007', '101', 81, 2000),
(8, '911008', '101', 66, 2000),
(9, '911009', '101', 65, 2000),
(10, '911010', '101', 62, 2000),
(11, '911011', '101', 70, 2000),
(12, '911012', '101', 80, 2000),
(13, '911013', '101', 81, 2000),
(14, '911014', '101', 70, 2000),
(15, '911015', '101', 72, 2000),
(16, '911016', '101', 71, 2000),
(17, '911017', '101', 75, 2000),
(18, '911018', '101', 62, 2000),
(19, '911019', '101', 60, 2000),
(20, '911020', '101', 60, 2000),
(21, '911021', '101', 74, 2000),
(22, '911022', '101', 71, 2000),
(23, '911023', '101', 72, 2000),
(24, '911024', '101', 71, 2000),
(25, '911025', '101', 71, 2000),
(26, '911026', '101', 75, 2000),
(27, '911027', '101', 74, 2000),
(28, '911028', '101', 71, 2000),
(29, '911029', '101', 73, 2000),
(30, '911030', '101', 75, 2000),
(31, '911031', '101', 78, 2000),
(32, '911032', '101', 79, 2000),
(33, '911033', '101', 85, 2000),
(34, '911034', '101', 84, 2000),
(35, '911035', '101', 75, 2000),
(36, '911036', '101', 66, 2000),
(37, '911037', '101', 84, 2000),
(38, '911038', '101', 84, 2000),
(39, '911039', '101', 85, 2000),
(40, '911040', '101', 75, 2000),
(41, '911041', '101', 67, 2000),
(42, '911042', '101', 71, 2000),
(43, '911043', '101', 72, 2000),
(44, '911044', '101', 71, 2000),
(45, '911045', '101', 70, 2000),
(46, '911046', '101', 78, 2000),
(47, '911047', '101', 87, 2000),
(48, '911048', '101', 88, 2000),
(49, '911049', '101', 86, 2000),
(50, '912001', '102', 84, 2000),
(51, '912002', '102', 78, 2000),
(52, '912003', '102', 79, 2000),
(53, '912004', '102', 70, 2000),
(54, '912005', '102', 71, 2000),
(55, '912006', '102', 84, 2000),
(56, '912007', '102', 76, 2000),
(57, '912008', '102', 70, 2000),
(58, '912009', '102', 70, 2000),
(59, '912010', '102', 66, 2000),
(60, '912011', '102', 64, 2000),
(61, '912012', '102', 68, 2000),
(62, '912013', '102', 69, 2000),
(63, '912014', '102', 76, 2000),
(64, '912015', '102', 60, 2000),
(65, '912016', '102', 61, 2000),
(66, '912017', '102', 63, 2000),
(67, '912018', '102', 85, 2000),
(68, '912019', '102', 74, 2000),
(69, '912020', '102', 76, 2000),
(70, '912021', '102', 70, 2000),
(71, '912022', '102', 71, 2000),
(72, '912023', '102', 75, 2000),
(73, '912024', '102', 80, 2000),
(74, '912025', '102', 87, 2000),
(75, '912026', '102', 81, 2000),
(76, '912027', '102', 65, 2000),
(77, '912028', '102', 67, 2000),
(78, '912029', '102', 60, 2000),
(79, '912030', '102', 64, 2000),
(80, '912031', '102', 63, 2000),
(81, '912032', '102', 61, 2000),
(82, '912033', '102', 85, 2000),
(83, '912034', '102', 87, 2000),
(84, '912035', '102', 64, 2000),
(85, '912036', '102', 61, 2000),
(86, '912037', '102', 62, 2000),
(87, '912038', '102', 85, 2000),
(88, '913001', '103', 87, 2000),
(89, '913002', '103', 89, 2000),
(90, '913003', '103', 87, 2000),
(91, '913004', '103', 84, 2000),
(92, '913005', '103', 82, 2000),
(93, '913006', '103', 80, 2000),
(94, '913007', '103', 71, 2000),
(95, '913008', '103', 70, 2000),
(96, '913009', '103', 73, 2000),
(97, '913010', '103', 76, 2000),
(98, '913011', '103', 78, 2000),
(99, '913012', '103', 79, 2000),
(100, '913013', '103', 74, 2000),
(101, '913014', '103', 84, 2000),
(102, '913015', '103', 85, 2000),
(103, '913016', '103', 86, 2000),
(104, '913017', '103', 89, 2000),
(105, '913018', '103', 78, 2000),
(106, '913019', '103', 74, 2000),
(107, '913020', '103', 70, 2000),
(108, '913021', '103', 66, 2000),
(109, '913022', '103', 65, 2000),
(110, '913023', '103', 61, 2000),
(111, '913024', '103', 85, 2000),
(112, '913025', '103', 81, 2000),
(113, '913026', '103', 68, 2000),
(114, '913027', '103', 61, 2000),
(115, '913028', '103', 65, 2000),
(116, '913029', '103', 69, 2000),
(117, '913030', '103', 64, 2000),
(118, '913031', '103', 84, 2000),
(119, '913032', '103', 71, 2000),
(120, '913033', '103', 75, 2000),
(121, '913034', '103', 74, 2000),
(122, '913035', '103', 71, 2000),
(123, '913036', '103', 68, 2000),
(124, '913037', '103', 69, 2000),
(125, '913038', '103', 65, 2000),
(126, '913039', '103', 63, 2000),
(127, '913040', '103', 77, 2000),
(128, '913041', '103', 56, 2000),
(129, '913042', '103', 85, 2000),
(130, '913043', '103', 60, 2000),
(131, '913044', '103', 67, 2000),
(132, '913045', '103', 78, 2000),
(133, '913046', '103', 76, 2000),
(134, '913047', '103', 67, 2000),
(135, '913048', '103', 86, 2000),
(136, '913049', '103', 80, 2000),
(137, '913050', '103', 81, 2000),
(138, '913051', '103', 80, 2000),
(139, '913052', '103', 87, 2000),
(140, '913053', '103', 86, 2000),
(141, '913054', '103', 82, 2000),
(142, '913055', '103', 83, 2000),
(143, '913056', '103', 81, 2000),
(144, '913057', '103', 88, 2000),
(145, '913058', '104', 65, 2000),
(146, '913059', '104', 60, 2000),
(147, '913060', '104', 62, 2000),
(148, '913061', '104', 61, 2000),
(149, '913062', '104', 68, 2000),
(150, '913063', '104', 80, 2000),
(151, '913064', '104', 85, 2000),
(152, '913065', '104', 82, 2000),
(153, '913066', '104', 61, 2000),
(154, '913067', '104', 63, 2000),
(155, '913068', '104', 78, 2000),
(156, '913069', '104', 75, 2000),
(157, '913070', '104', 74, 2000),
(158, '913071', '104', 74, 2000),
(159, '913072', '104', 75, 2000),
(160, '913073', '104', 71, 2000),
(161, '913074', '104', 70, 2000),
(162, '913075', '104', 70, 2000),
(163, '913076', '104', 70, 2000),
(164, '913077', '104', 70, 2000),
(165, '913078', '104', 60, 2000),
(166, '913079', '104', 60, 2000),
(167, '913080', '104', 65, 2000),
(168, '913081', '104', 65, 2000),
(169, '913082', '104', 64, 2000),
(170, '913083', '104', 64, 2000),
(171, '913084', '104', 63, 2000),
(172, '913085', '104', 62, 2000),
(173, '913086', '104', 61, 2000),
(174, '913087', '104', 60, 2000),
(175, '913088', '104', 69, 2000),
(176, '913089', '104', 67, 2000),
(177, '913090', '104', 68, 2000),
(178, '913091', '104', 64, 2000),
(179, '913092', '104', 66, 2000),
(180, '913093', '104', 65, 2000),
(181, '913094', '104', 62, 2000),
(182, '913095', '104', 61, 2000),
(183, '913096', '104', 60, 2000),
(184, '913097', '104', 63, 2000),
(185, '913098', '104', 64, 2000),
(186, '913099', '104', 69, 2000),
(187, '913100', '104', 78, 2000),
(188, '913101', '104', 78, 2000),
(189, '913102', '104', 79, 2000),
(190, '913103', '104', 74, 2000),
(191, '913104', '104', 71, 2000),
(192, '913105', '104', 70, 2000),
(193, '913106', '104', 72, 2000),
(194, '913107', '104', 76, 2000),
(195, '913108', '104', 77, 2000),
(196, '913109', '104', 88, 2000),
(197, '913110', '104', 85, 2000),
(198, '913111', '104', 81, 2000),
(199, '913112', '104', 80, 2000),
(200, '913113', '104', 60, 2000),
(201, '913114', '104', 60, 2000),
(202, '913115', '104', 61, 2000),
(203, '913116', '104', 62, 2000),
(204, '913117', '105', 62, 2000),
(205, '913118', '105', 63, 2000),
(206, '913119', '105', 63, 2000),
(207, '913120', '105', 61, 2000),
(208, '913121', '105', 64, 2000),
(209, '913122', '105', 62, 2000),
(210, '913123', '105', 64, 2000),
(211, '913124', '105', 68, 2000),
(212, '913125', '105', 69, 2000),
(213, '913126', '105', 61, 2000),
(214, '913127', '105', 65, 2000),
(215, '913128', '105', 66, 2000),
(216, '913129', '105', 60, 2000),
(217, '913130', '105', 61, 2000),
(218, '913131', '105', 63, 2000),
(219, '913132', '105', 61, 2000),
(220, '913133', '105', 68, 2000),
(221, '913134', '105', 67, 2000),
(222, '913135', '105', 69, 2000),
(223, '913136', '105', 85, 2000),
(224, '913137', '105', 87, 2000),
(225, '913138', '105', 81, 2000),
(226, '913139', '105', 80, 2000),
(227, '913140', '105', 60, 2000),
(228, '913141', '105', 61, 2000),
(229, '913142', '105', 61, 2000),
(230, '913143', '105', 62, 2000),
(231, '913144', '105', 62, 2000),
(232, '913145', '105', 63, 2000),
(233, '913146', '105', 64, 2000),
(234, '913147', '105', 68, 2000),
(235, '913148', '105', 68, 2000),
(236, '913149', '105', 69, 2000),
(237, '913150', '105', 61, 2000),
(238, '913151', '105', 80, 2000),
(239, '913152', '105', 87, 2000),
(240, '913153', '105', 83, 2000),
(241, '913154', '105', 82, 2000),
(242, '913155', '105', 81, 2000),
(243, '913156', '105', 82, 2000),
(244, '913157', '105', 65, 2000),
(245, '913158', '105', 74, 2000),
(246, '913159', '105', 70, 2000),
(247, '913160', '105', 63, 2000),
(248, '913161', '105', 65, 2000),
(249, '913162', '105', 67, 2000),
(250, '913163', '105', 68, 2000),
(251, '913164', '105', 69, 2000),
(252, '913165', '105', 67, 2000),
(253, '913166', '105', 70, 2000),
(254, '913167', '105', 78, 2000),
(255, '913168', '105', 70, 2000),
(256, '913169', '105', 71, 2000),
(257, '913170', '105', 71, 2000),
(258, '913171', '105', 70, 2000),
(259, '914001', '106', 85, 2000),
(260, '914002', '106', 85, 2000),
(261, '914003', '106', 81, 2000),
(262, '914004', '106', 81, 2000),
(263, '914005', '106', 82, 2000),
(264, '914006', '106', 87, 2000),
(265, '914007', '106', 89, 2000),
(266, '914008', '106', 75, 2000),
(267, '914009', '106', 72, 2000),
(268, '914010', '106', 71, 2000),
(269, '914011', '106', 71, 2000),
(270, '914012', '106', 70, 2000),
(271, '914013', '106', 74, 2000),
(272, '914014', '106', 73, 2000),
(273, '914015', '106', 71, 2000),
(274, '914016', '106', 79, 2000),
(275, '914017', '106', 75, 2000),
(276, '914018', '106', 74, 2000),
(277, '914019', '106', 74, 2000),
(278, '914020', '106', 71, 2000),
(279, '914021', '106', 77, 2000),
(280, '914022', '106', 80, 2000),
(281, '914023', '106', 65, 2000),
(282, '914024', '106', 80, 2000),
(283, '914025', '106', 82, 2000),
(284, '914026', '106', 81, 2000),
(285, '914027', '106', 87, 2000),
(286, '914028', '106', 83, 2000),
(287, '914029', '106', 87, 2000),
(288, '914030', '106', 78, 2000),
(289, '914031', '106', 75, 2000),
(290, '914032', '106', 74, 2000),
(291, '914033', '106', 71, 2000),
(292, '914034', '106', 70, 2000),
(293, '914035', '106', 73, 2000),
(294, '914036', '106', 71, 2000),
(295, '914037', '106', 70, 2000),
(296, '914038', '106', 70, 2000),
(297, '914039', '106', 70, 2000),
(298, '914040', '106', 65, 2000),
(299, '914041', '106', 62, 2000),
(300, '914042', '106', 66, 2000),
(301, '914043', '106', 66, 2000),
(302, '914044', '106', 74, 2000),
(303, '914045', '106', 85, 2000),
(304, '914046', '106', 74, 2000),
(305, '914047', '106', 71, 2000),
(306, '914048', '106', 70, 2000),
(307, '914049', '107', 72, 2000),
(308, '914050', '107', 71, 2000),
(309, '914051', '107', 70, 2000),
(310, '914052', '107', 73, 2000),
(311, '914053', '107', 76, 2000),
(312, '914054', '107', 78, 2000),
(313, '914055', '107', 74, 2000),
(314, '914056', '107', 78, 2000),
(315, '914057', '107', 68, 2000),
(316, '914058', '107', 67, 2000),
(317, '914059', '107', 65, 2000),
(318, '914060', '107', 64, 2000),
(319, '914061', '107', 63, 2000),
(320, '914062', '107', 62, 2000),
(321, '914063', '107', 61, 2000),
(322, '914064', '107', 60, 2000),
(323, '914065', '107', 60, 2000),
(324, '914066', '107', 65, 2000),
(325, '914067', '107', 68, 2000),
(326, '914068', '107', 78, 2000),
(327, '914069', '107', 70, 2000),
(328, '914070', '107', 74, 2000),
(329, '914071', '107', 71, 2000),
(330, '914072', '107', 72, 2000),
(331, '914073', '107', 70, 2000),
(332, '914074', '107', 77, 2000),
(333, '914075', '107', 70, 2000),
(334, '914076', '107', 75, 2000),
(335, '914077', '107', 78, 2000),
(336, '914078', '107', 74, 2000),
(337, '914079', '107', 71, 2000),
(338, '914080', '107', 78, 2000),
(339, '914081', '107', 74, 2000),
(340, '914082', '107', 72, 2000),
(341, '914083', '107', 71, 2000),
(342, '914084', '107', 70, 2000),
(343, '914085', '107', 73, 2000),
(344, '914086', '107', 84, 2000),
(345, '914087', '107', 85, 2000),
(346, '914088', '107', 81, 2000),
(347, '914089', '107', 80, 2000),
(348, '914090', '107', 60, 2000),
(349, '914091', '107', 62, 2000),
(350, '914092', '107', 65, 2000),
(351, '914093', '107', 67, 2000),
(352, '914094', '107', 67, 2000),
(353, '914095', '107', 68, 2000),
(354, '914096', '108', 69, 2000),
(355, '914097', '108', 76, 2000),
(356, '914098', '108', 74, 2000),
(357, '914099', '108', 78, 2000),
(358, '914100', '108', 74, 2000),
(359, '914101', '108', 75, 2000),
(360, '914102', '108', 71, 2000),
(361, '914103', '108', 72, 2000),
(362, '914104', '108', 70, 2000),
(363, '914105', '108', 73, 2000),
(364, '914106', '108', 71, 2000),
(365, '914107', '108', 70, 2000),
(366, '914108', '108', 80, 2000),
(367, '914109', '108', 85, 2000),
(368, '914110', '108', 88, 2000),
(369, '914111', '108', 87, 2000),
(370, '914112', '108', 84, 2000),
(371, '914113', '108', 81, 2000),
(372, '914114', '108', 80, 2000),
(373, '914115', '108', 80, 2000),
(374, '914116', '108', 81, 2000),
(375, '914117', '108', 82, 2000),
(376, '914118', '108', 80, 2000),
(377, '914119', '108', 87, 2000),
(378, '914120', '108', 86, 2000),
(379, '914121', '108', 85, 2000),
(380, '914122', '108', 87, 2000),
(381, '914123', '108', 84, 2000),
(382, '914124', '108', 72, 2000),
(383, '914125', '108', 80, 2000),
(384, '914126', '108', 82, 2000),
(385, '914127', '108', 83, 2000),
(386, '914128', '108', 75, 2000),
(387, '914129', '108', 84, 2000),
(388, '914130', '108', 86, 2000),
(389, '914131', '108', 85, 2000),
(390, '914132', '108', 84, 2000),
(391, '914133', '108', 87, 2000),
(392, '914134', '108', 81, 2000),
(393, '914135', '108', 75, 2000),
(394, '914136', '108', 78, 2000),
(395, '914137', '108', 74, 2000),
(396, '914138', '108', 76, 2000),
(397, '915001', '109', 78, 2000),
(398, '915002', '109', 74, 2000),
(399, '915003', '109', 71, 2000),
(400, '915004', '109', 72, 2000),
(401, '915005', '109', 70, 2000),
(402, '915006', '109', 73, 2000),
(403, '915007', '109', 79, 2000),
(404, '915008', '109', 77, 2000),
(405, '915009', '109', 78, 2000),
(406, '915010', '109', 79, 2000),
(407, '915011', '109', 74, 2000),
(408, '915012', '109', 75, 2000),
(409, '915013', '109', 76, 2000),
(410, '915014', '109', 84, 2000),
(411, '915015', '109', 86, 2000),
(412, '915016', '109', 78, 2000),
(413, '915017', '109', 74, 2000),
(414, '915018', '109', 75, 2000),
(415, '915019', '109', 71, 2000),
(416, '915020', '109', 72, 2000),
(417, '915021', '109', 70, 2000),
(418, '915022', '109', 76, 2000),
(419, '915023', '109', 70, 2000),
(420, '915024', '109', 78, 2000),
(421, '915025', '109', 79, 2000),
(422, '915026', '109', 87, 2000),
(423, '915027', '109', 85, 2000),
(424, '915028', '109', 87, 2000),
(425, '915029', '109', 84, 2000),
(426, '915030', '109', 88, 2000),
(427, '915031', '109', 85, 2000),
(428, '915032', '109', 81, 2000),
(429, '915033', '109', 82, 2000),
(430, '915034', '109', 83, 2000),
(431, '915035', '109', 80, 2000),
(432, '915036', '109', 87, 2000),
(433, '915037', '109', 85, 2000),
(434, '915038', '109', 78, 2000),
(435, '915039', '109', 75, 2000),
(436, '915040', '109', 74, 2000),
(437, '915041', '109', 71, 2000),
(438, '915042', '109', 72, 2000),
(439, '915043', '110', 73, 2000),
(440, '915044', '110', 77, 2000),
(441, '915045', '110', 76, 2000),
(442, '915046', '110', 65, 2000),
(443, '915047', '110', 68, 2000),
(444, '915048', '110', 67, 2000),
(445, '915049', '110', 85, 2000),
(446, '915050', '110', 86, 2000),
(447, '915051', '110', 82, 2000),
(448, '915052', '110', 83, 2000),
(449, '915053', '110', 81, 2000),
(450, '915054', '110', 80, 2000),
(451, '915055', '110', 80, 2000),
(452, '915056', '110', 78, 2000),
(453, '915057', '110', 80, 2000),
(454, '915058', '110', 80, 2000),
(455, '915059', '110', 70, 2000),
(456, '915060', '110', 75, 2000),
(457, '915061', '110', 78, 2000),
(458, '915062', '110', 74, 2000),
(459, '915063', '110', 74, 2000),
(460, '915064', '110', 71, 2000),
(461, '915065', '110', 72, 2000),
(462, '915066', '110', 77, 2000),
(463, '915067', '110', 79, 2000),
(464, '915068', '110', 68, 2000),
(465, '915069', '110', 69, 2000),
(466, '915070', '110', 67, 2000),
(467, '915071', '110', 64, 2000),
(468, '915072', '110', 68, 2000),
(469, '915073', '110', 67, 2000),
(470, '915074', '110', 78, 2000),
(471, '915075', '110', 74, 2000),
(472, '915076', '110', 75, 2000),
(473, '915077', '110', 74, 2000),
(474, '915078', '110', 72, 2000),
(475, '915079', '110', 71, 2000),
(476, '915080', '110', 70, 2000),
(477, '915081', '110', 81, 2000),
(478, '915082', '110', 80, 2000),
(479, '915083', '110', 82, 2000);

-- --------------------------------------------------------

--
-- 資料表結構 `dept`
--

CREATE TABLE `dept` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `dept`
--

INSERT INTO `dept` (`id`, `code`, `name`) VALUES
(1, '401', '商業經營科'),
(2, '402', '國際貿易科'),
(3, '404', '資料處理科'),
(4, '503', '幼兒保育科'),
(5, '504', '美容科'),
(6, '506', '室內佈置科');

-- --------------------------------------------------------

--
-- 資料表結構 `graduate_school`
--

CREATE TABLE `graduate_school` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `graduate_school`
--

INSERT INTO `graduate_school` (`id`, `name`) VALUES
(1, '南投縣縣立仁愛國中'),
(2, '南投縣縣立和平國中'),
(3, '南投縣縣立土城國中'),
(4, '南投縣縣立平溪國中'),
(5, '南投縣縣立汐止國中'),
(6, '南投縣縣立淡水國中'),
(7, '南投縣縣立石門國中'),
(8, '南投縣縣立萬里國中'),
(9, '南投縣縣立金山國中'),
(10, '南投縣縣立雙溪國中'),
(11, '台中市市立中和國中'),
(12, '台中市市立中山國中'),
(13, '台中市市立中平國中'),
(14, '台中市市立中正國中'),
(15, '台中市市立中船國中'),
(16, '台中市市立仁愛國中'),
(17, '台中市市立信義國中'),
(18, '台中市市立八斗國中'),
(19, '台中市市立公園國中'),
(20, '台中市市立北寧國中'),
(21, '台中市市立南榮國中'),
(22, '台中市市立安一國中'),
(23, '台中市市立安樂國中'),
(24, '台中市市立建德國中'),
(25, '台中市市立忠孝國中'),
(26, '台中市市立月眉國中'),
(27, '台中市市立百福國中'),
(28, '宜蘭縣縣立頭城國中');

-- --------------------------------------------------------

--
-- 資料表結構 `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `leaves`
--

INSERT INTO `leaves` (`id`, `name`, `note`) VALUES
(1, '公假', '公假時數不記入缺課時數'),
(2, '事假', '1小時事假記1小時缺課'),
(3, '病假', '1小時病假記1小時缺課'),
(4, '曠課', '曠課時數x2為缺課時數');

-- --------------------------------------------------------

--
-- 資料表結構 `records`
--

CREATE TABLE `records` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_num` varchar(6) DEFAULT NULL COMMENT '學生學號',
  `date` date DEFAULT NULL COMMENT '年月日',
  `type` tinyint(2) UNSIGNED NOT NULL,
  `hours` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `records`
--

INSERT INTO `records` (`id`, `school_num`, `date`, `type`, `hours`) VALUES
(1, '911026', '1990-02-26', 2, 1),
(2, '911026', '1990-02-26', 4, 1),
(3, '911027', '1990-02-26', 4, 1),
(4, '911028', '1990-02-26', 1, 1),
(5, '911028', '1990-02-26', 2, 1),
(6, '911030', '1990-02-26', 1, 1),
(7, '912001', '1990-02-26', 2, 1),
(8, '912001', '1990-02-26', 3, 4),
(9, '912010', '1990-02-26', 2, 3),
(10, '912034', '1990-02-26', 3, 1),
(11, '912034', '1990-02-26', 4, 1),
(12, '913082', '1990-02-26', 3, 4),
(13, '913127', '1990-02-26', 3, 2),
(14, '913127', '1990-02-26', 4, 2),
(15, '914020', '1990-02-26', 2, 4),
(16, '915042', '1990-02-26', 2, 4),
(17, '915042', '1990-02-26', 3, 1),
(18, '915074', '1990-02-27', 2, 1),
(19, '915074', '1990-02-27', 4, 7),
(20, '915075', '1990-02-27', 3, 2),
(21, '911009', '1990-02-28', 1, 2),
(22, '911009', '1990-02-28', 4, 1),
(23, '911037', '1990-02-28', 2, 3),
(24, '911037', '1990-02-28', 4, 1),
(25, '911043', '1990-02-28', 1, 1),
(26, '911043', '1990-02-28', 3, 1),
(27, '912001', '1990-02-28', 2, 1),
(28, '912001', '1990-02-28', 4, 2),
(29, '911027', '1990-03-02', 4, 1),
(30, '911028', '1990-03-02', 1, 1),
(31, '911028', '1990-03-02', 2, 1),
(32, '911030', '1990-03-02', 1, 1),
(33, '912001', '1990-03-02', 2, 1),
(34, '912001', '1990-03-02', 3, 4),
(35, '912010', '1990-03-02', 2, 3),
(36, '912034', '1990-03-02', 3, 1),
(37, '912034', '1990-03-02', 4, 1),
(38, '913082', '1990-03-02', 3, 4),
(39, '913127', '1990-03-02', 3, 2),
(40, '913127', '1990-03-02', 4, 6),
(41, '914020', '1990-03-02', 2, 4),
(42, '915042', '1990-03-02', 2, 4),
(43, '915042', '1990-03-02', 3, 1),
(44, '915047', '1990-03-02', 3, 2),
(45, '911009', '1990-03-02', 3, 2),
(46, '911032', '1990-03-02', 2, 2),
(47, '911032', '1990-03-02', 4, 1),
(48, '911034', '1990-03-02', 2, 2),
(49, '911041', '1990-03-02', 4, 2),
(50, '912001', '1990-03-02', 2, 7),
(51, '912001', '1990-03-02', 4, 1),
(52, '912025', '1990-03-02', 1, 4),
(53, '912037', '1990-03-02', 3, 3),
(54, '913026', '1990-03-02', 1, 2),
(55, '913026', '1990-03-02', 3, 1),
(56, '913084', '1990-03-02', 3, 1),
(57, '913084', '1990-03-02', 4, 1),
(58, '913151', '1990-03-02', 1, 3),
(59, '913151', '1990-03-02', 4, 3),
(60, '914012', '1990-03-02', 1, 2),
(61, '914089', '1990-03-02', 1, 1),
(62, '914089', '1990-03-02', 3, 2),
(63, '914128', '1990-03-02', 4, 7),
(64, '915002', '1990-03-02', 1, 1),
(65, '915002', '1990-03-02', 4, 7),
(66, '915042', '1990-03-02', 2, 7),
(67, '915057', '1990-03-02', 2, 5),
(68, '915057', '1990-03-02', 3, 2),
(69, '915057', '1990-03-02', 4, 2),
(70, '915083', '1990-03-02', 1, 7),
(71, '911009', '1990-03-05', 1, 1),
(72, '911009', '1990-03-05', 4, 7),
(73, '911032', '1990-03-05', 1, 1),
(74, '911032', '1990-03-05', 3, 1),
(75, '911034', '1990-03-05', 1, 1),
(76, '911034', '1990-03-05', 3, 1),
(77, '911041', '1990-03-05', 1, 1),
(78, '912027', '1990-03-05', 3, 7),
(79, '912027', '1990-03-05', 4, 1),
(80, '913015', '1990-03-05', 4, 5),
(81, '913090', '1990-03-05', 4, 1),
(82, '914012', '1990-03-05', 1, 1),
(83, '914089', '1990-03-05', 3, 2),
(84, '914095', '1990-03-05', 2, 1),
(85, '914095', '1990-03-05', 4, 1),
(86, '914120', '1990-03-05', 1, 7),
(87, '914120', '1990-03-05', 3, 1),
(88, '915042', '1990-03-05', 3, 7),
(89, '915043', '1990-03-05', 2, 1),
(90, '915043', '1990-03-05', 4, 7),
(91, '915074', '1990-03-05', 4, 7),
(92, '911041', '1990-03-06', 1, 2),
(93, '911041', '1990-03-06', 3, 1),
(94, '912035', '1990-03-06', 4, 7),
(95, '913018', '1990-03-06', 2, 4),
(96, '913018', '1990-03-06', 3, 1),
(97, '913051', '1990-03-06', 1, 1),
(98, '913051', '1990-03-06', 3, 3),
(99, '913149', '1990-03-06', 4, 1),
(100, '914072', '1990-03-06', 2, 3),
(101, '914089', '1990-03-06', 1, 2),
(102, '914089', '1990-03-06', 3, 1),
(103, '915021', '1990-03-06', 4, 1),
(104, '915043', '1990-03-06', 4, 7),
(105, '911009', '1990-03-07', 1, 2),
(106, '911009', '1990-03-07', 3, 1),
(107, '911012', '1990-03-07', 1, 7),
(108, '911012', '1990-03-07', 2, 10),
(109, '911012', '1990-03-07', 3, 1),
(110, '911015', '1990-03-07', 1, 1),
(111, '911015', '1990-03-07', 4, 1),
(112, '911032', '1990-03-07', 1, 2),
(113, '913038', '1990-03-07', 3, 1),
(114, '913038', '1990-03-07', 4, 7),
(115, '913070', '1990-03-07', 1, 7),
(116, '913070', '1990-03-07', 2, 2),
(117, '913070', '1990-03-07', 4, 1),
(118, '913114', '1990-03-07', 4, 7),
(119, '913155', '1990-03-07', 1, 7),
(120, '913155', '1990-03-07', 3, 1),
(121, '914025', '1990-03-07', 2, 2),
(122, '914025', '1990-03-07', 4, 6),
(123, '914034', '1990-03-07', 1, 7),
(124, '914034', '1990-03-07', 3, 2),
(125, '914044', '1990-03-07', 1, 7),
(126, '914072', '1990-03-07', 2, 7),
(127, '914072', '1990-03-07', 4, 1),
(128, '914073', '1990-03-07', 1, 7),
(129, '914078', '1990-03-07', 1, 7),
(130, '914078', '1990-03-07', 3, 2),
(131, '914083', '1990-03-07', 4, 5),
(132, '914094', '1990-03-07', 1, 7),
(133, '914094', '1990-03-07', 3, 1),
(134, '915043', '1990-03-07', 4, 7),
(135, '911009', '1990-03-08', 1, 2),
(136, '911009', '1990-03-08', 2, 1),
(137, '911032', '1990-03-08', 1, 2),
(138, '911032', '1990-03-08', 3, 1),
(139, '911034', '1990-03-08', 1, 2),
(140, '911034', '1990-03-08', 4, 1),
(141, '911041', '1990-03-08', 1, 2),
(142, '911041', '1990-03-08', 4, 1),
(143, '911045', '1990-03-08', 2, 1),
(144, '911045', '1990-03-08', 3, 5),
(145, '913008', '1990-03-08', 3, 3),
(146, '913025', '1990-03-08', 2, 1),
(147, '913025', '1990-03-08', 4, 3),
(148, '914072', '1990-03-08', 2, 5),
(149, '914072', '1990-03-08', 4, 1),
(150, '914089', '1990-03-08', 1, 2),
(151, '914124', '1990-03-08', 2, 1),
(152, '914124', '1990-03-08', 4, 7),
(153, '915074', '1990-03-08', 2, 1),
(154, '915074', '1990-03-08', 4, 7),
(155, '915075', '1990-03-08', 3, 2),
(156, '911009', '1990-03-09', 1, 2),
(157, '911009', '1990-03-09', 4, 1),
(158, '911037', '1990-03-09', 2, 3),
(159, '911037', '1990-03-09', 4, 1),
(160, '911043', '1990-03-09', 1, 1),
(161, '911043', '1990-03-09', 3, 1),
(162, '912001', '1990-03-09', 2, 1),
(163, '912001', '1990-03-09', 4, 2),
(164, '912034', '1990-03-09', 2, 2),
(165, '913161', '1990-03-09', 2, 4),
(166, '913161', '1990-03-09', 3, 1),
(167, '913170', '1990-03-09', 4, 1),
(168, '914043', '1990-03-09', 2, 1),
(169, '914043', '1990-03-09', 3, 4),
(170, '914045', '1990-03-09', 1, 4),
(171, '914089', '1990-03-09', 1, 2),
(172, '914089', '1990-03-09', 3, 1),
(173, '914115', '1990-03-09', 4, 4),
(174, '915005', '1990-03-09', 1, 1),
(175, '915031', '1990-03-09', 4, 4),
(176, '915053', '1990-03-09', 4, 4),
(177, '911009', '1990-03-12', 1, 1),
(178, '911032', '1990-03-12', 1, 2),
(179, '911034', '1990-03-12', 4, 1),
(180, '913013', '1990-03-12', 1, 1),
(181, '913013', '1990-03-12', 3, 7),
(182, '913018', '1990-03-12', 4, 3),
(183, '913041', '1990-03-12', 2, 7),
(184, '913043', '1990-03-12', 3, 7),
(185, '913054', '1990-03-12', 4, 7),
(186, '913066', '1990-03-12', 4, 7),
(187, '913101', '1990-03-12', 2, 7),
(188, '913152', '1990-03-12', 1, 2),
(189, '913152', '1990-03-12', 3, 1),
(190, '914036', '1990-03-12', 1, 6),
(191, '914036', '1990-03-12', 3, 5),
(192, '914036', '1990-03-12', 4, 1),
(193, '914048', '1990-03-12', 2, 6),
(194, '914048', '1990-03-12', 3, 1),
(195, '914086', '1990-03-12', 2, 7),
(196, '914125', '1990-03-12', 1, 7),
(197, '915002', '1990-03-12', 3, 1),
(198, '915002', '1990-03-12', 4, 1),
(199, '915065', '1990-03-12', 4, 1),
(200, '911009', '1990-03-12', 1, 2),
(201, '911009', '1990-03-12', 2, 1),
(202, '911045', '1990-03-12', 1, 2),
(203, '913035', '1990-03-12', 2, 1),
(204, '913035', '1990-03-12', 3, 7),
(205, '913041', '1990-03-12', 3, 7),
(206, '913055', '1990-03-12', 1, 7),
(207, '913077', '1990-03-12', 1, 7),
(208, '913077', '1990-03-12', 2, 1),
(209, '913116', '1990-03-12', 3, 1),
(210, '913116', '1990-03-12', 4, 7),
(211, '913157', '1990-03-12', 1, 5),
(212, '914040', '1990-03-12', 3, 1),
(213, '914040', '1990-03-12', 4, 7),
(214, '914089', '1990-03-12', 1, 2),
(215, '914128', '1990-03-12', 2, 1),
(216, '914128', '1990-03-12', 4, 3),
(217, '915001', '1990-03-12', 4, 1),
(218, '915020', '1990-03-12', 2, 2),
(219, '915020', '1990-03-12', 3, 1),
(220, '915053', '1990-03-12', 4, 4),
(221, '915070', '1990-03-12', 1, 1),
(222, '915070', '1990-03-12', 3, 7),
(223, '915074', '1990-03-12', 1, 3),
(224, '915074', '1990-03-12', 4, 1),
(225, '911009', '1990-03-13', 1, 7),
(226, '911032', '1990-03-13', 2, 7),
(227, '911034', '1990-03-13', 3, 7),
(228, '911034', '1990-03-13', 4, 1),
(229, '911041', '1990-03-13', 2, 1),
(230, '911041', '1990-03-13', 4, 7),
(231, '911045', '1990-03-13', 1, 7),
(232, '911045', '1990-03-13', 4, 7),
(233, '913077', '1990-03-13', 4, 7),
(234, '913085', '1990-03-13', 1, 7),
(235, '913085', '1990-03-13', 3, 7),
(236, '913133', '1990-03-13', 4, 7),
(237, '914012', '1990-03-13', 1, 5),
(238, '914012', '1990-03-13', 3, 7),
(239, '914089', '1990-03-13', 1, 7),
(240, '915005', '1990-03-13', 4, 1),
(241, '915019', '1990-03-13', 2, 7),
(242, '915019', '1990-03-13', 4, 7),
(243, '915020', '1990-03-13', 4, 1),
(244, '915033', '1990-03-13', 1, 7),
(245, '915033', '1990-03-13', 3, 3),
(246, '915034', '1990-03-13', 3, 1),
(247, '915060', '1990-03-13', 1, 1),
(248, '915060', '1990-03-13', 4, 7),
(249, '911009', '1990-03-14', 1, 7),
(250, '911032', '1990-03-14', 1, 7),
(251, '911032', '1990-03-14', 3, 3),
(252, '911034', '1990-03-14', 3, 7),
(253, '911041', '1990-03-14', 1, 7),
(254, '911041', '1990-03-14', 3, 1),
(255, '911045', '1990-03-14', 4, 7),
(256, '912001', '1990-03-14', 2, 1),
(257, '912001', '1990-03-14', 4, 1),
(258, '912025', '1990-03-14', 2, 7),
(259, '911027', '1990-03-14', 2, 7),
(260, '913031', '1990-03-14', 3, 1),
(261, '913031', '1990-03-14', 4, 2),
(262, '913077', '1990-03-14', 1, 7),
(263, '913148', '1990-03-14', 2, 1),
(264, '913148', '1990-03-14', 4, 7),
(265, '914012', '1990-03-14', 1, 7),
(266, '914019', '1990-03-14', 3, 7),
(267, '914036', '1990-03-14', 2, 1),
(268, '914036', '1990-03-14', 4, 7),
(269, '914077', '1990-03-14', 1, 2),
(270, '914089', '1990-03-14', 2, 7),
(271, '915052', '1990-03-14', 3, 7),
(272, '915052', '1990-03-14', 4, 1),
(273, '911009', '1990-03-15', 1, 7),
(274, '911009', '1990-03-15', 3, 1),
(275, '912035', '1990-03-15', 4, 1),
(276, '913037', '1990-03-15', 2, 7),
(277, '913037', '1990-03-15', 4, 1),
(278, '913094', '1990-03-15', 1, 7),
(279, '913101', '1990-03-15', 4, 3),
(280, '914012', '1990-03-15', 1, 7),
(281, '914089', '1990-03-15', 2, 1),
(282, '914089', '1990-03-15', 4, 7),
(283, '912001', '1990-03-16', 4, 1),
(284, '913054', '1990-03-16', 1, 4),
(285, '913120', '1990-03-06', 3, 1),
(286, '913120', '1990-03-06', 4, 4),
(287, '914029', '1990-03-16', 3, 4),
(288, '914089', '1990-03-16', 4, 3),
(289, '914115', '1990-03-16', 2, 1),
(290, '915074', '1990-03-16', 1, 4),
(291, '913033', '1990-03-19', 4, 1),
(292, '913041', '1990-03-19', 3, 1),
(293, '913041', '1990-03-19', 4, 1),
(294, '913042', '1990-03-19', 4, 1),
(295, '913094', '1990-03-19', 1, 3),
(296, '913120', '1990-03-19', 2, 2),
(297, '913120', '1990-03-19', 4, 4),
(298, '914037', '1990-03-19', 1, 1),
(299, '914037', '1990-03-19', 3, 7),
(300, '915001', '1990-03-19', 4, 1),
(301, '915043', '1990-03-19', 1, 7),
(302, '915060', '1990-03-19', 2, 1),
(303, '915060', '1990-03-19', 3, 7),
(304, '915067', '1990-03-19', 3, 2),
(305, '915080', '1990-03-19', 2, 7),
(306, '911048', '1990-03-19', 4, 7),
(307, '913042', '1990-03-19', 3, 7),
(308, '913042', '1990-03-19', 4, 1),
(309, '913054', '1990-03-19', 1, 7),
(310, '913055', '1990-03-19', 3, 7),
(311, '913123', '1990-03-19', 2, 2),
(312, '913123', '1990-03-19', 3, 1),
(313, '913161', '1990-03-19', 2, 2),
(314, '915001', '1990-03-19', 4, 1),
(315, '915034', '1990-03-19', 4, 7),
(316, '915074', '1990-03-19', 1, 6),
(317, '915079', '1990-03-19', 3, 1),
(318, '915079', '1990-03-19', 4, 1),
(319, '915081', '1990-03-19', 3, 7),
(320, '911019', '1990-03-20', 3, 7),
(321, '911045', '1990-03-20', 2, 1),
(322, '913042', '1990-03-20', 4, 7),
(323, '913054', '1990-03-20', 1, 1),
(324, '913085', '1990-03-20', 2, 1),
(325, '913085', '1990-03-20', 4, 7),
(326, '914009', '1990-03-20', 3, 7),
(327, '915021', '1990-03-20', 4, 7),
(328, '915074', '1990-03-20', 1, 7),
(329, '915074', '1990-03-20', 2, 3),
(330, '913038', '1990-03-21', 3, 7),
(331, '913041', '1990-03-21', 4, 7),
(332, '914014', '1990-03-21', 2, 1),
(333, '914014', '1990-03-21', 3, 6),
(334, '914061', '1990-03-21', 2, 3),
(335, '915009', '1990-03-21', 1, 1),
(336, '915009', '1990-03-21', 4, 1),
(337, '915019', '1990-03-21', 2, 1),
(338, '915042', '1990-03-21', 3, 7),
(339, '915053', '1990-03-21', 1, 7),
(340, '915074', '1990-03-21', 2, 3),
(341, '915074', '1990-03-21', 3, 7),
(342, '915075', '1990-03-21', 4, 2),
(343, '913048', '1990-03-22', 1, 5),
(344, '914130', '1990-03-22', 4, 7),
(345, '915070', '1990-03-22', 1, 1),
(346, '915070', '1990-03-22', 2, 7),
(347, '915074', '1990-03-22', 4, 7),
(348, '912015', '1990-03-26', 3, 4),
(349, '912015', '1990-03-26', 4, 2),
(350, '913012', '1990-03-26', 1, 7),
(351, '913041', '1990-03-26', 1, 1),
(352, '913041', '1990-03-26', 3, 3),
(353, '913084', '1990-03-26', 2, 7),
(354, '913085', '1990-03-26', 4, 7),
(355, '914116', '1990-03-26', 1, 1),
(356, '914116', '1990-03-26', 2, 7),
(357, '915004', '1990-03-26', 4, 1),
(358, '915005', '1990-03-26', 4, 1),
(359, '915019', '1990-03-26', 2, 1),
(360, '915022', '1990-03-26', 1, 3),
(361, '915022', '1990-03-26', 4, 1),
(362, '915023', '1990-03-26', 4, 3),
(363, '915053', '1990-03-26', 4, 7),
(364, '915073', '1990-03-26', 1, 2),
(365, '915083', '1990-03-26', 1, 2),
(366, '915083', '1990-03-26', 2, 1),
(367, '911016', '1990-03-26', 1, 3),
(368, '915062', '1990-03-26', 2, 3),
(369, '915078', '1990-03-26', 3, 3),
(370, '915079', '1990-03-26', 2, 1),
(371, '915079', '1990-03-26', 4, 3),
(372, '913016', '1990-03-26', 1, 3),
(373, '913018', '1990-03-26', 2, 1),
(374, '913018', '1990-03-26', 3, 7),
(375, '913037', '1990-03-26', 2, 3),
(376, '913042', '1990-03-26', 4, 7),
(377, '913070', '1990-03-26', 1, 7),
(378, '913070', '1990-03-26', 4, 1),
(379, '913085', '1990-03-26', 4, 7),
(380, '913110', '1990-03-26', 2, 3),
(381, '913136', '1990-03-26', 4, 3),
(382, '913141', '1990-03-26', 3, 3),
(383, '913147', '1990-03-26', 1, 3),
(384, '913147', '1990-03-26', 3, 1),
(385, '913150', '1990-03-26', 3, 3),
(386, '913158', '1990-03-26', 1, 3),
(387, '915053', '1990-03-26', 4, 1),
(388, '915074', '1990-03-26', 3, 1),
(389, '915074', '1990-03-26', 4, 7),
(390, '911001', '1990-03-27', 2, 1),
(391, '911001', '1990-03-27', 4, 3),
(392, '911019', '1990-03-27', 1, 1),
(393, '911019', '1990-03-27', 2, 2),
(394, '913041', '1990-03-27', 2, 1),
(395, '913041', '1990-03-27', 4, 1),
(396, '913085', '1990-03-27', 1, 7),
(397, '913086', '1990-03-27', 2, 7),
(398, '913098', '1990-03-27', 1, 1),
(399, '914012', '1990-03-27', 1, 3),
(400, '914012', '1990-03-27', 4, 1),
(401, '914045', '1990-03-27', 4, 1),
(402, '914109', '1990-03-27', 3, 7),
(403, '915031', '1990-03-27', 1, 3),
(404, '915042', '1990-03-27', 3, 1),
(405, '915042', '1990-03-27', 4, 2),
(406, '915053', '1990-03-27', 4, 2),
(407, '911001', '1990-03-28', 1, 1),
(408, '911001', '1990-03-28', 2, 7),
(409, '912001', '1990-03-28', 4, 1),
(410, '912034', '1990-03-28', 2, 1),
(411, '912038', '1990-03-28', 3, 1),
(412, '913037', '1990-03-28', 1, 2),
(413, '913037', '1990-03-28', 3, 7),
(414, '913042', '1990-03-28', 2, 7),
(415, '914011', '1990-03-28', 2, 2),
(416, '914011', '1990-03-28', 3, 7),
(417, '914028', '1990-03-28', 1, 2),
(418, '914028', '1990-03-28', 4, 1),
(419, '914077', '1990-03-28', 3, 7),
(420, '914086', '1990-03-28', 2, 7),
(421, '915031', '1990-03-28', 2, 2),
(422, '915031', '1990-03-28', 3, 2),
(423, '915042', '1990-03-28', 4, 1),
(424, '915053', '1990-03-28', 1, 1),
(425, '915053', '1990-03-28', 4, 2),
(426, '913118', '1990-04-02', 2, 3),
(427, '913118', '1990-04-02', 3, 4),
(428, '913120', '1990-04-02', 1, 1),
(429, '913120', '1990-04-02', 4, 3),
(430, '913123', '1990-04-05', 3, 5),
(431, '913123', '1990-04-05', 4, 4),
(432, '913125', '1990-04-05', 2, 2),
(433, '913125', '1990-04-05', 4, 7),
(434, '914124', '1990-04-12', 4, 3),
(435, '914128', '1990-04-12', 4, 5),
(436, '914115', '1990-04-12', 1, 1),
(437, '914118', '1990-04-12', 1, 2),
(438, '914118', '1990-04-12', 4, 3),
(439, '914096', '1990-04-12', 4, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `status`
--

INSERT INTO `status` (`id`, `code`, `status`, `note`) VALUES
(1, '001', '畢業', '持國中畢業證書者'),
(2, '002', '補校', '持國中補校資格證明書者'),
(3, '003', '補結', '持國中補校結業證明書者'),
(4, '004', '結業', '持國中修(結)業證明書者(修畢三年)');

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_num` int(6) DEFAULT NULL COMMENT '學號',
  `name` varchar(8) DEFAULT NULL COMMENT '姓名',
  `birthday` date DEFAULT NULL COMMENT '出生年月日',
  `uni_id` varchar(10) DEFAULT NULL COMMENT '身分證號碼',
  `addr` varchar(32) DEFAULT NULL COMMENT '住址',
  `parents` varchar(8) DEFAULT NULL COMMENT '家長',
  `tel` varchar(16) DEFAULT NULL COMMENT '電話',
  `dept` varchar(8) DEFAULT NULL COMMENT '科別',
  `graduate_at` varchar(16) DEFAULT NULL COMMENT '畢業國中',
  `status_code` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `school_num`, `name`, `birthday`, `uni_id`, `addr`, `parents`, `tel`, `dept`, `graduate_at`, `status_code`) VALUES
(1, 911001, '丁于穎', '1984-03-05', 'C100000012', '台中縣大甲鎮安和一街4巷4-3號4F', '丁世傑', '04-13310667', '1', '23', '001'),
(2, 911002, '尹彗如', '1980-09-08', 'F200000026', '南投縣南投市一坑路426號', '尹文淵', '04-13971835', '2', '2', '001'),
(3, 911003, '孔琇榆', '1984-08-28', 'F200000035', '台中縣大安鄉源遠路292巷1-5號1F', '孔進豐', '04-13570828', '3', '25', '001'),
(4, 911004, '文勝真', '1984-08-28', 'F100000042', '南投縣埔里鎮逢甲路337號', '文水順', '04-13970773', '4', '2', '004'),
(5, 911005, '方玉婷', '1983-12-10', 'C200000058', '台中縣大肚鄉安和一街6巷43之1號2F', '方明順', '04-13322272', '5', '23', '001'),
(6, 911006, '毛家男', '1983-12-16', 'C100000067', '台中縣大里市百六街53號3F', '毛長壽', '04-13518685', '6', '12', '001'),
(7, 911007, '王鳳如', '1984-01-06', 'F200000071', '南投縣草屯鎮三爪子坑路106 巷11號3', '王學義', '04-13974327', '1', '2', '001'),
(8, 911008, '史乾君', '1984-04-01', 'C100000085', '台中縣大雅鄉111巷39號2F', '史吳屘', '04-13318360', '2', '25', '004'),
(9, 911009, '田泓宜', '1984-07-09', 'F100000097', '台中縣太平市義六路36-34 號3F', '田慶鐘', '04-13275530', '3', '17', '001'),
(10, 911010, '白金圓', '1984-01-02', 'V200000109', '台中縣外埔鄉調和街80巷63號', '白鳳鳴', '04-13693021', '4', '16', '001'),
(11, 911011, '石政華', '1984-03-03', 'C100000110', '台中縣石岡鄉正義路74巷30弄40號', '石芳雄', '04-13287732', '5', '14', '001'),
(12, 911012, '任佩君', '1984-09-17', 'G200000123', '南投縣竹山鎮大寮路49巷1 號', '任旺樹', '04-13969168', '6', '2', '001'),
(13, 911013, '朱怡蓉', '1983-10-24', 'F200000131', '南投縣集集鎮東和路84號', '朱金池', '04-13977208', '1', '2', '001'),
(14, 911014, '江欣欽', '1983-12-11', 'C100000147', '台中縣后里鄉金山街74號', '江清祥', '04-13582284', '2', '24', '001'),
(15, 911015, '何秋桂', '1983-11-16', 'G200000150', '台中縣沙鹿鎮麥金路11巷40號', '何明東', '04-13327347', '3', '27', '001'),
(16, 911016, '余進財', '1984-02-26', 'F100000168', '南投縣名間鄉中山路246巷11號2F', '余文吉', '04-13974586', '4', '2', '001'),
(17, 911017, '吳菁菁', '1984-07-13', 'F200000177', '南投縣鹿谷鄉龍崗村泮宮路17號', '吳顯瑞', '04-13941334', '5', '1', '001'),
(18, 911018, '呂意倫', '1984-06-01', 'F100000186', '南投縣中寮鄉三爪子坑路民享新村11', '呂林飛', '04-13979021', '6', '2', '001'),
(19, 911019, '宋時雨', '1984-09-16', 'K100000199', '台中縣和平鄉中華路135-3 號4F', '宋德祥', '04-13230092', '1', '12', '001'),
(20, 911020, '李禬敏', '1984-05-03', 'C100000209', '台中縣東勢鎮泰安路91號', '李玉雲', '04-13514121', '2', '12', '001'),
(21, 911021, '杜晉華', '1984-02-24', 'C100000218', '台中縣烏日鄉東峰街11巷2 號', '杜秦英', '04-13654770', '3', '17', '001'),
(22, 911022, '沈慧如', '1984-03-11', 'F200000220', '南投縣魚池鄉大埔路48號3F', '沈朝雄', '04-13579700', '4', '2', '001'),
(23, 911023, '汪純芬', '1984-10-20', 'C200000236', '台中縣神岡鄉東新街4巷66 號', '汪瑞琴', '04-13564111', '5', '12', '001'),
(24, 911024, '周惠琴', '1983-06-06', 'C200000245', '台中縣梧棲鎮協和街192-1 號', '周水清', '04-13288344', '1', '14', '004'),
(25, 911025, '孟亞秦', '1984-04-03', 'F100000257', '南投縣國姓鄉員潭路6號', '孟正吉', '04-13983355', '2', '8', '001'),
(26, 911026, '於秀雅', '1984-06-24', 'F200000268', '台中縣清水鎮中正路182巷33-1號', '於景仁', '04-13286086', '3', '14', '001'),
(27, 911027, '易益偲', '1984-09-29', 'C100000272', '台中縣新社鄉深澳路226-1 號', '易文誠', '04-13651306', '4', '17', '001'),
(28, 911028, '林玟玲', '1983-09-19', 'C200000283', '台中縣潭子鄉武嶺街274之2號3F', '林國麟', '04-13331399', '5', '23', '001'),
(29, 911029, '武 嵋', '1984-02-18', 'C100000290', '台中縣龍井鄉通明街53巷7 號', '武季緞', '04-13231258', '6', '14', '001'),
(30, 911030, '邵金瑜', '1984-02-17', 'C200000309', '台中縣豐原市國安路30巷6 號1F', '邵德雄', '04-13573928', '1', '24', '001'),
(31, 911031, '邱惠朗', '1984-01-13', 'C100000316', '台中縣霧峰鄉深澳坑路13-1號', '邱翰霖', '04-13653844', '2', '17', '001'),
(32, 911032, '金惠甹', '1984-02-11', 'C100000325', '台中縣大甲鎮中華路69巷52號', '金明吉', '04-13281414', '3', '14', '001'),
(33, 911033, '侯保貴', '1985-02-09', 'F100000337', '南投縣水里鄉十三層路45號', '侯菊枝', '04-13932802', '4', '10', '001'),
(34, 911034, '姜陵贏', '1983-10-23', 'F100000346', '台中縣大安鄉259巷38號4F', '姜福鈞', '04-13366195', '5', '17', '001'),
(35, 911035, '姚樺軒', '1984-07-14', 'F100000355', '南投縣信義鄉水源路二段184巷7號', '姚金寶', '04-26415555', '1', '5', '001'),
(36, 911036, '段雅惠', '1983-11-14', 'C200000361', '台中縣大肚鄉明德2路1巷111號2F', '段兩傳', '04-13512268', '2', '12', '001'),
(37, 911037, '胡千慧', '1984-10-06', 'F200000375', '台中縣大里市過港路10巷251號', '胡修傳', '04-13570716', '3', '25', '001'),
(38, 911038, '范佳薇', '1984-06-22', 'C200000381', '台中縣大雅鄉明德3路93號', '范進財', '04-13511340', '4', '12', '001'),
(39, 911039, '唐珮菁', '1984-08-30', 'C200000390', '台中縣太平市義三路12巷37號', '唐基旺', '04-13293600', '5', '17', '001'),
(40, 911040, '夏欣怡', '1983-12-15', 'C100000405', '台中縣外埔鄉中平街51-13 號', '夏明輝', '04-13274041', '6', '12', '001'),
(41, 911041, '孫柔君', '1984-06-02', 'C200000416', '台中縣石岡鄉華興街51巷1-3號4F', '孫玉嬌', '04-13243092', '1', '14', '001'),
(42, 911042, '徐文芳', '1984-04-20', 'C200000425', '台中縣后里鄉132巷44號2F', '徐家銘', '04-13251568', '2', '27', '001'),
(43, 911043, '秦敏如', '1982-11-12', 'C200000434', '台中縣沙鹿鎮和二路16號', '秦天賜', '04-13620992', '3', '14', '001'),
(44, 911044, '袁翊文', '1982-11-03', 'G100000445', '台中縣和平鄉路310-1號', '袁龍水', '04-13662401', '4', '17', '001'),
(45, 911045, '郝郁儒', '1984-01-10', 'C100000450', '台中縣東勢鎮74巷103號', '郝錦銓', '04-13234410', '5', '27', '001'),
(46, 911046, '馬嘉禎', '1984-07-23', 'C100000469', '台中縣烏日鄉崇智街25號2F', '馬峻源', '04-13560330', '6', '12', '001'),
(47, 911047, '高惠榛', '1983-08-16', 'C100000478', '台中縣神岡鄉3巷6號', '高吉龍', '04-13251472', '1', '21', '001'),
(48, 911048, '崔台分', '1984-01-05', 'C100000487', '台中縣梧棲鎮180巷24號', '崔敦泰', '04-13661985', '2', '27', '001'),
(49, 911049, '常心怡', '1983-11-22', 'T200000492', '台中縣清水鎮港路10巷107號', '常錦康', '04-13579585', '3', '25', '001'),
(50, 912001, '康渴欣', '1983-09-20', 'C200000505', '南投縣仁愛鄉中央路48巷7號4F吉祥園', '康國全', '04-13582740', '4', '2', '001'),
(51, 912002, '張麗婷', '1984-03-04', 'H200000519', '台中縣新社鄉義七路26巷14號5F', '張慶源', '04-13281849', '5', '17', '001'),
(52, 912003, '曹淑淨', '1983-12-17', 'E200000525', '台中縣潭子鄉復興路212巷12弄23號', '曹春蓮', '04-13371131', '6', '14', '001'),
(53, 912004, '梁瑩鵑', '1984-02-18', 'F200000535', '台中縣龍井鄉愛七路16-甲 號', '梁英博', '04-13288880', '1', '23', '001'),
(54, 912005, '許心慈', '1984-08-13', 'A200000549', '台中縣豐原市安和一街4巷33-4號5F', '許長義', '04-13322951', '2', '23', '001'),
(55, 912006, '郭佩臨', '1984-10-27', 'C100000558', '台中縣霧峰鄉豐稔街54巷16-4號5F', '郭正順', '04-13622333', '3', '16', '001'),
(56, 912007, '陳辛夷', '1984-02-10', 'F100000560', '南投縣南投市仁愛路51號1F', '陳李雄', '04-13984686', '4', '9', '001'),
(57, 912008, '陸加零', '1983-12-05', 'G100000570', '台中縣大甲鎮明德二路13號3F', '陸春金', '039-360436', '5', '12', '001'),
(58, 912009, '章肅贏', '1984-07-19', 'F100000588', '南投縣埔里鎮明燈路二段54號1F', '章富田', '04-13968775', '1', '2', '001'),
(59, 912010, '傅淑真', '1984-04-03', 'F200000597', '南投縣草屯鎮三爪子坑民享新村37號1', '傅添進', '04-13976722', '2', '2', '001'),
(60, 912011, '喬菊方', '1983-11-05', 'G100000605', '台中縣大安鄉明德二路13號3F', '喬基吳', '04-13516556', '3', '12', '001'),
(61, 912012, '彭家慧', '1984-01-18', 'F100000613', '台中縣大肚鄉和平街5巷9號', '彭其祥', '04-13629527', '4', '14', '001'),
(62, 912013, '曾敬雯', '1983-10-23', 'C100000629', '台中縣大里市中山三路167 巷52號', '曾勝貴', '04-13265939', '5', '12', '001'),
(63, 912014, '湯意茹', '1984-03-06', 'F200000633', '南投縣竹山鎮大埔路慶安新村18號', '湯聰明', '04-13576882', '6', '2', '001'),
(64, 912015, '程斯梅', '1984-07-01', 'A200000647', '台中縣大雅鄉信二路174巷16號3F', '程韻蓉', '04-13295596', '1', '17', '001'),
(65, 912016, '賀晚零', '1984-09-03', 'C100000656', '台中縣太平市八斗街96巷27-1號', '賀姚榮', '04-13691897', '2', '14', '001'),
(66, 912017, '馮燋鈴', '1984-08-13', 'C200000667', '台中縣外埔鄉東信路236巷37-26號', '馮登松', '04-13657585', '3', '17', '001'),
(67, 912018, '黃雅軍', '1983-12-29', 'F200000679', '南投縣集集鎮中山路158巷10號1F', '黃榮春', '04-13971976', '4', '2', '001'),
(68, 912019, '楊晚滎', '1984-05-23', 'H100000688', '台中縣石岡鄉64巷17號4F', '楊志誠', '04-13658624', '5', '17', '001'),
(69, 912020, '萬宣芳', '1984-10-25', 'C200000694', '台中縣后里鄉北寧路252巷6弄25號', '萬錦花', '04-13692020', '1', '14', '001'),
(70, 912021, '葉紫確', '1984-02-19', 'F100000702', '南投縣名間鄉真理村延平街159號', '葉泰雄', '04-13901955', '2', '1', '001'),
(71, 912022, '董佳旗', '1983-12-12', 'C100000718', '台中縣沙鹿鎮中華路69巷60號', '董春來', '04-13278627', '3', '14', '001'),
(72, 912023, '賈加靈', '1983-11-21', 'F100000720', '南投縣鹿谷鄉水源路2段190號2F', '賈美雲', '04-26434627', '4', '5', '001'),
(73, 912024, '鄒品言', '1984-05-28', 'C100000736', '台中縣和平鄉52-2號', '鄒寬銘', '04-13278087', '5', '27', '001'),
(74, 912025, '廖品瀛', '1984-11-03', 'C100000745', '台中縣東勢鎮深澳坑166-7 號6F', '廖松風', '04-13663416', '6', '17', '001'),
(75, 912026, '熊秋勻', '1984-05-14', 'V100000750', '台中縣烏日鄉新豐街161巷12號', '熊德順', '04-13693828', '1', '16', '001'),
(76, 912027, '趙偉玲', '1984-02-02', 'C200000765', '台中縣神岡鄉仁一路163巷9號', '趙建誠', '04-13234904', '2', '16', '001'),
(77, 912028, '劉淑遺', '1983-11-23', 'C200000774', '台中縣梧棲鎮和一路103號2F', '劉美麗', '04-13626698', '3', '14', '001'),
(78, 912029, '潘寵亞', '1984-06-12', 'C200000783', '台中縣清水鎮北寧路333號', '潘金水', '04-13693795', '4', '14', '001'),
(79, 912030, '蔣怡方', '1984-06-24', 'C200000792', '台中縣新社鄉西定路132巷41號', '蔣景城', '04-13277495', '5', '14', '001'),
(80, 912031, '蔡井萱', '1984-01-29', 'C200000809', '台中縣潭子鄉樂利三街28巷8 號2F', '蔡秋明', '04-13312403', '6', '27', '001'),
(81, 912032, '鄭小瀅', '1983-10-06', 'H200000813', '台中縣龍井鄉路51巷60號', '鄭秀珍', '04-13286453', '1', '12', '001'),
(82, 912033, '鄧蘊潔', '1984-04-27', 'F200000820', '南投縣中寮鄉三爪子坑路29巷59號4F', '鄧文定', '04-13977716', '2', '2', '001'),
(83, 912034, '黎絮迎', '1984-08-23', 'C100000834', '台中縣豐原市中山一路4號', '黎玉琴', '04-13228529', '3', '12', '001'),
(84, 912035, '盧佩熅', '1984-02-18', 'C100000843', '南投縣魚池鄉中山路395號A區9F之六', '盧蓮和', '04-13985610', '4', '9', '001'),
(85, 912036, '蕭玉奉', '1984-07-12', 'C100000852', '台中縣霧峰鄉新豐街327巷51號', '蕭清波', '04-13693553', '5', '16', '001'),
(86, 912037, '賴閿文', '1984-06-18', 'C100000861', '台中縣大甲鎮290巷286號', '賴勳明', '04-13693308', '6', '25', '001'),
(87, 912038, '錢師亞', '1984-05-31', 'C100000870', '台中縣大安鄉東明路217號5樓', '錢幼玲', '04-13651950', '1', '17', '001'),
(88, 913001, '閻營君', '1984-07-18', 'C100000889', '台中縣大肚鄉570巷110-3號', '閻李發', '04-13582448', '2', '25', '001'),
(89, 913002, '龍會玢', '1984-03-15', 'F100000891', '南投縣國姓鄉野柳村港西路11-1號', '龍建松', '04-13923610', '3', '8', '001'),
(90, 913003, '戴明樺', '1983-11-23', 'F100000908', '南投縣水里鄉瑞濱里台電新村114號', '戴文盛', '04-13978362', '4', '2', '001'),
(91, 913004, '薛金陵', '1983-10-14', 'F100000917', '南投縣信義鄉民族六街5巷8號2F', '薛炳分', '04-26953914', '5', '5', '001'),
(92, 913005, '謝惠頻', '1984-07-03', 'U100000928', '台中縣大里市正榮街36-3號3F', '謝冬妹', '04-13625932', '1', '14', '001'),
(93, 913006, '鍾玉文', '1984-04-28', 'C100000932', '台中縣大雅鄉路271號', '鍾金山', '04-13256152', '2', '12', '001'),
(94, 913007, '韓亞坊', '1984-04-14', 'H100000946', '南投縣仁愛鄉大鵬村下社路41-1號', '韓自忠', '04-13985637', '3', '8', '001'),
(95, 913008, '魏嘉汸', '1984-04-29', 'F100000953', '南投縣南投市重和村林口路8-1號', '魏信男', '04-13983292', '4', '9', '001'),
(96, 913009, '羅力欣', '1984-04-02', 'C100000969', '南投縣埔里鎮加投路213號', '羅其輝', '04-13982340', '5', '8', '001'),
(97, 913010, '譚瑞頻', '1984-09-11', 'C100000978', '台中縣太平市480-2號', '譚文生', '04-13693294', '6', '23', '001'),
(98, 913011, '蘇安禎', '1984-09-23', 'C200000989', '台中縣外埔鄉崇德路10巷26號1F', '蘇清溪', '04-13228297', '1', '27', '001'),
(99, 913012, '顧秀霞', '1983-12-01', 'F200000991', '南投縣草屯鎮東和路16巷46號2F', '顧源炎', '04-13977772', '2', '2', '001'),
(100, 913013, '龔玉璿', '1983-05-16', 'C200002009', '台中縣石岡鄉31巷2弄30號 之1F', '龔觀清', '04-13238364', '3', '16', '001'),
(101, 913014, '丁淑華', '1983-04-01', 'F200002011', '南投縣竹山鎮十分街209號', '丁萬居', '04-13958056', '4', '4', '001'),
(102, 913015, '尹詩萍', '1984-08-24', 'F200002020', '南投縣集集鎮玉田路46-4號', '尹介璧', '04-13923421', '5', '8', '001'),
(103, 913016, '孔新怡', '1984-03-20', 'F200002039', '南投縣名間鄉三爪子坑路13巷7號', '孔施雄', '04-13978642', '1', '2', '001'),
(104, 913017, '文秀豐', '1984-02-09', 'V200002041', '台中縣后里鄉和一路2巷9之13號', '文長妹', '04-13632481', '2', '14', '001'),
(105, 913018, '方玉茹', '1984-09-22', 'C200002054', '台中縣沙鹿鎮正義路2巷78 號3F', '方素員', '04-13228896', '3', '14', '001'),
(106, 913019, '毛秀真', '1984-05-06', 'F200002066', '南投縣鹿谷鄉三港村雙澳路95號', '毛炎火', '04-13932203', '4', '10', '001'),
(107, 913020, '王惠琄', '1984-04-24', 'C100001073', '台中縣和平鄉明德一路172巷16之4號', '王文棋', '04-13567293', '5', '12', '001'),
(108, 913021, '史欣青', '1983-04-05', 'F100001085', '南投縣中寮鄉水源路2段190號1F', '史炎興', '04-26418130', '6', '5', '001'),
(109, 913022, '田芳祝', '1984-03-02', 'F100001094', '南投縣魚池鄉頌德里8號巷3號', '田麗卿', '04-13975359', '1', '2', '001'),
(110, 913023, '白雅玲', '1984-02-26', 'C100001108', '台中縣東勢鎮通明街70-2號', '白上華', '04-13288811', '2', '14', '001'),
(111, 913024, '石雅霖', '1984-01-05', 'C100001117', '台中縣烏日鄉月眉路65巷108號之2', '石正雄', '04-13652732', '3', '27', '001'),
(112, 913025, '任慈縈', '1984-07-29', 'F100001129', '南投縣國姓鄉粗坑口路37號', '任連枝', '04-13578811', '4', '2', '001'),
(113, 913026, '朱嘉儀', '1983-11-22', 'C100001135', '台中縣神岡鄉街15號4F', '朱金明', '04-13651340', '5', '27', '001'),
(114, 913027, '江慧禎', '1984-07-16', 'C100001144', '台中縣梧棲鎮復興路230巷63-2號3F', '江榮華', '04-42372168', '6', '14', '001'),
(115, 913028, '何靜雯', '1983-12-03', 'F100001156', '南投縣水里鄉中山路77號', '何榮貴', '04-49274224', '1', '2', '001'),
(116, 913029, '余韻芬', '1984-08-09', 'C100001162', '台中縣清水鎮安一路100巷219-3號4F', '余振宗', '04-42252917', '2', '23', '001'),
(117, 913030, '吳秋萍', '1984-02-03', 'C100001171', '台中縣新社鄉北寧路346-3 號4F', '吳茂林', '04-13692220', '3', '14', '001'),
(118, 913031, '呂郁茹', '1984-09-24', 'C100001180', '台中縣潭子鄉信二路25-7號4F', '呂輝隆', '04-42243317', '4', '17', '001'),
(119, 913032, '宋亦菁', '1984-09-27', 'C100001199', '台中縣龍井鄉路359號5F', '宋榮華', '04-13337460', '5', '17', '001'),
(120, 913033, '李淑樺', '1984-08-06', 'C100001206', '台中縣豐原市泰安路69-5號2F', '李再明', '04-42514641', '6', '12', '001'),
(121, 913034, '杜愛君', '1983-05-29', 'C100001215', '台中縣霧峰鄉街108號5樓', '杜清平', '04-46925677', '1', '25', '001'),
(122, 913035, '沈淑淋', '1984-03-28', 'C100001224', '台中縣大甲鎮30號', '沈文輝', '04-46932611', '2', '25', '001'),
(123, 913036, '汪慧君', '1983-09-03', 'F100001236', '南投縣信義鄉大埔路152號1樓', '汪明月', '04-42571005', '3', '2', '001'),
(124, 913037, '周偵如', '1983-12-17', 'C100001242', '台中縣大安鄉東明路39巷45-14號4F', '周偉良', '04-42656768', '4', '17', '001'),
(125, 913038, '孟曉玲', '1984-10-04', 'C100001251', '台中縣大肚鄉正榮街77巷43號底二層', '孟木生', '04-42272406', '5', '14', '001'),
(126, 913039, '於致聖', '1984-11-04', 'C100001260', '台中縣大里市中華路103-1 號5F', '於振峰', '04-42232710', '1', '12', '001'),
(127, 913040, '易嘉莉', '1984-05-30', 'A100001277', '台中縣大雅鄉花源五街7號6樓', '易榮華', '04-46263210', '2', '17', '001'),
(128, 913041, '林佳真', '1982-06-11', 'A100001286', '台中縣太平市路1巷66-8號', '林廖森', '04-43233266', '3', '17', '001'),
(129, 913042, '武惠玲', '1982-03-09', 'F100001290', '南投縣仁愛鄉加投路六鄰23號之3 2F', '武文和', '04-49286193', '4', '8', '001'),
(130, 913043, '邵鳳玲', '1984-02-06', 'C100001304', '台中縣外埔鄉復興路230巷63號', '邵春河', '04-43371767', '5', '14', '001'),
(131, 913044, '邱怡菁', '1983-03-15', 'C100001313', '台中縣石岡鄉112巷2 弄11-3號4F', '邱明宗', '04-34274782', '6', '16', '001'),
(132, 913045, '金佳純', '1984-04-21', 'C100001322', '台中縣后里鄉中正街656巷40號2F', '金寬二', '04-44624537', '1', '14', '001'),
(133, 913046, '侯秋燕', '1984-08-30', 'C200001333', '台中縣沙鹿鎮154巷11-2號3F', '侯金木', '04-46150755', '2', '27', '001'),
(134, 913047, '姜玉茹', '1983-12-26', 'C200001342', '台中縣和平鄉187-1號2F', '姜政聲', '04-46227840', '3', '17', '001'),
(135, 913048, '姚怡婷', '1984-03-17', 'C200001351', '台中縣東勢鎮漁港三街146 號3F', '姚國清', '04-43691540', '4', '16', '001'),
(136, 913049, '段秀玉', '1984-08-27', 'F200001363', '南投縣南投市磺潭村清水路13號', '段黃英', '04-49484536', '5', '8', '001'),
(137, 913050, '胡月香', '1983-10-05', 'P200001379', '台中縣烏日鄉基金二路1巷158號', '胡素碧', '04-41691122', '1', '23', '001'),
(138, 913051, '范蕙琴', '1983-11-21', 'C200001388', '台中縣神岡鄉北寧路369巷27-3號', '范英連', '04-46191518', '2', '14', '001'),
(139, 913052, '唐千怡', '1984-01-04', 'C200001397', '台中縣梧棲鎮信二路101號之4,4樓', '唐新田', '04-42339773', '3', '17', '001'),
(140, 913053, '夏喬后', '1984-01-29', 'C200001404', '台中縣清水鎮188巷14之3號', '夏榮文', '04-43579947', '4', '25', '001'),
(141, 913054, '孫小芬', '1984-07-21', 'L200001410', '南投縣埔里鎮仁愛路67巷9 號3F', '孫春菅', '04-41986214', '5', '9', '001'),
(142, 913055, '徐姍珊', '1984-04-13', 'C200001422', '台中縣新社鄉正濱路116巷7弄10號5F', '徐清隆', '04-46223474', '6', '14', '001'),
(143, 913056, '秦書敏', '1984-10-09', 'C100001439', '台中縣潭子鄉中山二路32號', '秦銀女', '04-42333128', '1', '12', '001'),
(144, 913057, '袁曉雯', '1984-07-26', 'F100001441', '台中縣龍井鄉源遠路152巷31號5F', '袁清連', '04-42573183', '2', '25', '001'),
(145, 913058, '郝雅萍', '1984-07-10', 'P100001457', '台中縣豐原市泰安路22號1F', '郝進後', '04-13515078', '3', '12', '001'),
(146, 913059, '馬瑩純', '1984-08-01', 'F100001469', '南投縣草屯鎮瑪鍊下街49號', '馬春長', '04-41925378', '4', '8', '001'),
(147, 913060, '高佳芬', '1984-05-20', 'C100001475', '台中縣霧峰鄉北寧路31巷4-1號', '高金吉', '04-46329028', '5', '14', '001'),
(148, 913061, '崔秋萍', '1980-10-29', 'F100001487', '南投縣竹山鎮仁和路41號2F', '崔有福', '04-14902565', '6', '1', '001'),
(149, 913062, '常雯蓉', '1983-12-07', 'F100001496', '南投縣集集鎮仁和路41號2F', '常有福', '04-43902656', '1', '1', '001'),
(150, 913063, '康如宜', '1984-04-12', 'C100001500', '台中縣大甲鎮信二路174巷49-4號5F', '康添財', '04-42295279', '2', '17', '001'),
(151, 913064, '張玉如', '1982-12-22', 'P100001519', '台中縣大安鄉12巷39號5F', '張淑霞', '04-42177000', '3', '25', '001'),
(152, 913065, '曹佳穎', '1984-07-19', 'C100001528', '台中縣大肚鄉東明路54號4F', '曹勝華', '04-46514149', '4', '17', '001'),
(153, 913066, '梁素瑩', '1984-10-04', 'C100001537', '台中縣大里市中正路790-1 號', '梁銘振', '04-43621493', '5', '14', '001'),
(154, 913067, '許佩賢', '1984-03-25', 'C100001546', '台中縣大雅鄉180-7號5F', '許陽生', '04-43573452', '6', '25', '001'),
(155, 913068, '郭婉琪', '1983-10-11', 'C100001555', '台中縣太平市源遠路292巷4-1號2F', '郭瑞添', '04-45473379', '1', '25', '001'),
(156, 913069, '陳惠文', '1984-03-10', 'V100001560', '台中縣外埔鄉69號', '陳瑞欽', '090-022306', '2', '23', '001'),
(157, 913070, '陸少衿', '1984-04-24', 'C100001573', '台中縣石岡鄉69號', '陸林乾', '04-41653238', '3', '23', '001'),
(158, 913071, '章意如', '1984-08-10', 'F100001585', '南投縣名間鄉仁愛路124巷2號3F', '章顯榮', '04-13901148', '4', '1', '001'),
(159, 913072, '傅心怡', '1984-03-29', 'C100001591', '台中縣后里鄉武聖街144巷23號3F', '傅福長', '04-42333639', '5', '23', '001'),
(160, 913073, '喬苑茹', '1984-07-05', 'C100001608', '台中縣沙鹿鎮工建路172號2F', '喬振興', '04-45213353', '1', '18', '001'),
(161, 913074, '彭曉茹', '1984-10-26', 'C100001617', '台中縣和平鄉崇德路68號底樓', '彭金牛', '023-4286109', '2', '27', '001'),
(162, 913075, '曾懷文', '1984-09-17', 'C100001626', '台中縣東勢鎮寧靜街48號1F', '曾南方', '04-43575236', '3', '25', '001'),
(163, 913076, '湯麗芳', '1983-10-23', 'V100001631', '台中縣烏日鄉中正路345號之4,5樓', '湯義聖', '04-46432694', '4', '14', '001'),
(164, 913077, '程巧鈐', '1984-11-04', 'F100001647', '台中縣神岡鄉源遠路243號', '程金來', '04-42574792', '5', '25', '001'),
(165, 913078, '賀若霜', '1984-10-29', 'C100001653', '台中縣梧棲鎮新豐街159號4樓', '賀忠勇', '04-41691101', '6', '16', '001'),
(166, 913079, '馮曉娟', '1984-01-08', 'C100001662', '台中縣清水鎮龍安街29號5F', '馮建財', '04-42727145', '1', '23', '001'),
(167, 913080, '黃玉燕', '1983-10-28', 'U100001676', '台中縣新社鄉正濱路116巷5弄9號5F', '黃阿德', '04-46129726', '2', '14', '001'),
(168, 913081, '楊佳雯', '1984-05-21', 'C100001680', '台中縣潭子鄉祥豐街112號3F', '楊建良', '04-46121345', '3', '14', '001'),
(169, 913082, '萬明瑜', '1984-11-04', 'C100001699', '台中縣龍井鄉新西街207巷30之3號4F', '萬朝國', '04-41255482', '4', '27', '001'),
(170, 913083, '葉欣瑜', '1984-10-29', 'F100001709', '台中縣豐原市168巷13弄10 號4F', '葉鳳嬌', '04-43265587', '5', '16', '001'),
(171, 913084, '董婉婷', '1984-07-19', 'F100001718', '南投縣鹿谷鄉岳王路78號4F', '董陳竹', '04-49722475', '1', '2', '001'),
(172, 913085, '賈淑美', '1983-04-15', 'G100001728', '台中縣霧峰鄉105號', '賈清標', '04-42264907', '2', '25', '001'),
(173, 913086, '鄒雅玲', '1984-09-15', 'C100001733', '台中縣大甲鎮中船路90巷3 號3F', '鄒勝奇', '04-42842842', '3', '14', '001'),
(174, 913087, '廖雅慧', '1982-12-15', 'F100001745', '南投縣中寮鄉四維路41號1F', '廖錦亮', '04-49822759', '4', '9', '001'),
(175, 913088, '熊蓉蓉', '1983-12-07', 'E100001753', '台中縣大安鄉和一路75號3F', '熊美月', '04-46322685', '5', '14', '001'),
(176, 913089, '趙依萍', '1983-12-05', 'V100001766', '台中縣大肚鄉新豐街327巷24號', '趙光仁', '04-46922153', '6', '16', '001'),
(177, 913090, '劉玲蓉', '1984-01-17', 'E100001771', '南投縣魚池鄉清水路60巷16號', '劉文政', '04-49824056', '1', '9', '001'),
(178, 913091, '潘素麗', '1984-10-05', 'C100001788', '台中縣大里市平二路19巷17號', '潘春隆', '04-41623518', '2', '14', '001'),
(179, 913092, '蔣鈺惠', '1984-01-12', 'H100001792', '南投縣國姓鄉明里路121號', '蔣黃翔', '04-49262023', '3', '2', '001'),
(180, 913093, '蔡秀娟', '1984-07-09', 'E100001806', '台中縣大雅鄉漁港三街108 號5F', '蔡清平', '04-46295677', '4', '16', '001'),
(181, 913094, '鄭姍玫', '1984-11-26', 'F100001816', '南投縣中寮鄉朝陽街20號', '鄭文然', '04-49341228', '5', '1', '001'),
(182, 913095, '鄧雅麟', '1984-02-02', 'C100001822', '台中縣太平市191號之5F', '鄧慧卿', '04-41241255', '6', '16', '001'),
(183, 913096, '黎惠雯', '1984-11-06', 'C200001833', '台中縣外埔鄉路168巷52弄21號4F', '黎忠成', '04-46264103', '1', '17', '001'),
(184, 913097, '盧思雅', '1983-10-30', 'F200001845', '南投縣魚池鄉基山街22號', '盧志祥', '04-49736471', '2', '2', '001'),
(185, 913098, '蕭淑真', '1984-03-01', 'F200001854', '南投縣國姓鄉仁愛路116號', '蕭俊明', '04-49201673', '3', '1', '001'),
(186, 913099, '賴純慧', '1984-09-20', 'V200001866', '台中縣石岡鄉新豐街157號4樓', '賴彩祥', '04-46191499', '4', '16', '001'),
(187, 913100, '錢婉怡', '1983-10-24', 'C200001879', '台中縣后里鄉祥豐街319號5樓', '錢金樹', '04-46227923', '5', '14', '001'),
(188, 913101, '閻雅玲', '1984-02-02', 'F100001889', '南投縣水里鄉忠孝東路437 巷16號1F', '閻元在', '04-64110635', '6', '5', '001'),
(189, 913102, '龍曉韻', '1984-09-20', 'X100001891', '台中縣沙鹿鎮百二路88-2號3F', '龍峰瑞', '04-45122615', '1', '12', '001'),
(190, 913103, '戴梅玉', '1984-05-26', 'C100001902', '台中縣和平鄉和平街29巷51弄1號', '戴則貴', '04-46129151', '2', '14', '001'),
(191, 913104, '薛秋菊', '1983-04-28', 'C100001911', '台中縣東勢鎮172號之2,3樓', '薛錦基', '04-42728611', '3', '14', '001'),
(192, 913105, '謝淑秋', '1984-10-18', 'F100001923', '南投縣信義鄉魚行村新店街52號', '謝三郎', '04-49231326', '4', '10', '001'),
(193, 913106, '鍾麗秋', '1984-12-06', 'F100001932', '南投縣仁愛鄉貢寮街61號', '鍾天助', '04-49412498', '5', '1', '001'),
(194, 913107, '韓淑真', '1984-09-29', 'C100001948', '台中縣烏日鄉2-51號4F', '韓朝松', '04-46525202', '1', '17', '001'),
(195, 913108, '魏賴琦', '1984-08-22', 'F100001950', '南投縣南投市深澳路63號', '魏銀旺', '04-49772486', '2', '2', '001'),
(196, 913109, '羅淑玲', '1984-09-15', 'U100001961', '台中縣神岡鄉中華路105巷57號', '羅賜源', '04-42281534', '3', '12', '001'),
(197, 913110, '譚心培', '1984-07-01', 'F100001978', '南投縣埔里鎮三爪子坑路47巷2弄16-1', '譚志達', '04-42971397', '4', '2', '001'),
(198, 913111, '蘇富仙', '1984-06-26', 'N100001983', '台中縣梧棲鎮平三路13號5F', '蘇降復', '04-14625904', '5', '14', '001'),
(199, 913112, '顧怡芳', '1984-01-23', 'C100001993', '台中縣清水鎮樂利三街28巷27-2號3F', '顧宗成', '04-43121092', '6', '27', '001'),
(200, 913113, '龔慧玉', '1984-08-08', 'F100002000', '南投縣草屯鎮十分街202號', '龔榮富', '04-49258535', '1', '4', '001'),
(201, 913114, '丁嘉琪', '1984-06-12', 'C100002016', '台中縣新社鄉55巷12號4F', '丁坤清', '04-46262043', '2', '27', '001'),
(202, 913115, '尹伶霞', '1983-12-17', 'A100002023', '台中縣潭子鄉路11巷24弄8-2號3F', '尹玉音', '04-42824665', '3', '25', '001'),
(203, 913116, '孔潔如', '1984-06-12', 'F100002037', '南投縣竹山鎮中央路44巷27號', '孔國鈞', '04-63822956', '4', '7', '001'),
(204, 913117, '文元君', '1983-12-18', 'F100002046', '台中縣龍井鄉東信路180巷70號', '文明志', '04-46524922', '5', '17', '001'),
(205, 913118, '方姍珊', '1984-04-13', 'C100002052', '台中縣豐原市正濱路116巷7弄10號5F', '方清隆', '04-46223474', '1', '14', '001'),
(206, 913119, '毛蕙琴', '1983-11-21', 'C100002061', '台中縣霧峰鄉北寧路369巷27-3號', '毛英連', '04-46921518', '2', '14', '001'),
(207, 913120, '王思穎', '1984-08-16', 'A100002078', '台中縣大甲鎮安一路100 巷186號', '王翰嬌', '04-42377352', '3', '23', '001'),
(208, 913121, '史雪莉', '1984-07-07', 'C100002089', '台中縣大安鄉堵南里溪頭街23號', '史和睦', '04-45142263', '4', '12', '001'),
(209, 913122, '田佳佳', '1984-07-08', 'F100002091', '南投縣集集鎮大埔路231號', '田信弘', '04-45378084', '5', '2', '001'),
(210, 913123, '白嘉惠', '1984-05-20', 'C100002105', '台中縣大肚鄉過港路154號1F', '白錦德', '04-45731354', '6', '25', '001'),
(211, 913124, '石欣玲', '1984-04-24', 'C100002114', '台中縣大里市北寧路349-1號', '石順發', '04-46394377', '1', '14', '001'),
(212, 913125, '任千怡', '1984-01-04', 'C100002123', '台中縣大雅鄉信二路101號之4,4樓', '任新田', '04-42339773', '2', '17', '001'),
(213, 913126, '朱秀容', '1984-09-18', 'F100002135', '南投縣名間鄉建基路2段116號', '朱賜宗', '04-49731685', '3', '2', '001'),
(214, 913127, '江香君', '1984-02-07', 'P100002141', '台中縣太平市信六路12號2F', '江民意', '04-42830427', '4', '14', '001'),
(215, 913128, '何嘉容', '1983-12-02', 'C100002150', '台中縣外埔鄉大華一路78號', '何武雄', '04-45652210', '5', '18', '001'),
(216, 913129, '余憶萍', '1984-04-04', 'C100002169', '台中縣石岡鄉安和一街4巷12號2F', '余聰明', '04-43153123', '6', '23', '001'),
(217, 913130, '吳秀玲', '1984-07-28', 'F100002171', '南投縣鹿谷鄉大同路2段202號7F', '吳龍昌', '04-64723223', '1', '5', '001'),
(218, 913131, '呂秀娟', '1984-07-28', 'F100002180', '南投縣中寮鄉大同路2段202號7F', '呂龍昌', '04-64732223', '2', '5', '001'),
(219, 913132, '宋依婷', '1983-11-08', 'F100002199', '南投縣魚池鄉中央路48巷4 號1F吉祥', '宋新勇', '04-45731667', '3', '2', '001'),
(220, 913133, '李佳瑩', '1983-10-13', 'C100002203', '台中縣后里鄉和一路84巷20弄65號', '李坤祥', '04-46323095', '4', '14', '001'),
(221, 913134, '杜怡亭', '1984-02-09', 'N100002211', '台中縣沙鹿鎮東勢街6-34號', '杜春烈', '04-45370919', '5', '24', '001'),
(222, 913135, '沈雨欣', '1984-05-25', 'F100002224', '南投縣國姓鄉汐萬路二段66巷63弄6號', '沈永源', '04-63463941', '6', '5', '001'),
(223, 913136, '汪圓惠', '1984-11-02', 'C100002230', '台中縣和平鄉750號', '汪順義', '04-46328151', '1', '16', '001'),
(224, 913137, '周秀芬', '1984-03-04', 'C100002249', '南投縣中寮鄉大埔路115巷26-3號', '周明輝', '04-45733874', '2', '2', '001'),
(225, 913138, '孟 涵', '1984-01-11', 'C100002258', '台中縣東勢鎮239號3F', '孟守義', '04-42635636', '3', '27', '001'),
(226, 913139, '於偉齡', '1984-04-09', 'C100002267', '南投縣魚池鄉水源路1段286號2F', '於品山', '04-43224375', '4', '5', '001'),
(227, 913140, '易心怡', '1983-10-09', 'C100002276', '台中縣烏日鄉南榮路121號5F', '易德煌', '04-42238022', '5', '20', '001'),
(228, 913141, '林永安', '1984-09-19', 'F100002288', '南投縣國姓鄉逢甲路330號', '林基珍', '04-49371879', '1', '2', '001'),
(229, 913142, '武惟琇', '1983-11-30', 'A100002292', '台中縣神岡鄉東信路258巷31-4號5F', '武捷隆', '04-46256341', '2', '17', '001'),
(230, 913143, '邵喬后', '1984-01-29', 'C100002301', '台中縣梧棲鎮街131巷 12之2號', '邵榮文', '04-43228909', '3', '23', '001'),
(231, 913144, '邱麗梅', '1983-02-03', 'C100002310', '台中縣清水鎮北寧路369巷43號', '邱朝福', '04-46292059', '4', '14', '001'),
(232, 913145, '金瓊如', '1984-03-22', 'C100002329', '台中縣新社鄉南路337號', '金朝枝', '04-42270612', '5', '26', '001'),
(233, 913146, '侯玉梅', '1984-06-29', 'A100002336', '南投縣水里鄉公園路10號', '侯金連', '04-64121082', '6', '5', '001'),
(234, 913147, '姜亦潔', '1984-08-09', 'C100002347', '台中縣潭子鄉福二街204之4號', '姜美雲', '04-42512482', '1', '12', '001'),
(235, 913148, '姚長怡', '1984-03-16', 'C100002356', '台中縣龍井鄉安和一街6巷46-4號5F', '姚士清', '04-43116796', '2', '23', '001'),
(236, 913149, '段音如', '1983-12-11', 'C100002365', '台中縣豐原市大華一路34-3號1F', '段連東', '04-45611878', '3', '18', '001'),
(237, 913150, '胡曉琳', '1984-01-16', 'C100002374', '台中縣霧峰鄉崇孝街71號之3四樓', '胡萬枝', '04-45163290', '4', '12', '001'),
(238, 913151, '范錦儒', '1983-09-23', 'F100002386', '南投縣信義鄉瑞興新村12巷11號', '范東興', '04-41968686', '5', '2', '001'),
(239, 913152, '唐靜華', '1984-07-25', 'F100002395', '南投縣仁愛鄉大埔路有勝二村6號4F', '唐金城', '04-45718171', '1', '2', '001'),
(240, 913153, '夏麗玲', '1984-01-07', 'C100002409', '台中縣大甲鎮西定路368巷22號2F', '夏清溪', '04-42614981', '2', '14', '001'),
(241, 913154, '孫麗涵', '1983-10-15', 'C200002410', '台中縣大安鄉中正路51號', '孫耀明', '04-42122695', '3', '14', '001'),
(242, 913155, '徐雪如', '1984-07-30', 'C200002429', '台中縣大肚鄉南榮路117巷35弄12之3', '徐燕魁', '04-42218110', '4', '26', '001'),
(243, 913156, '秦佩芬', '1984-10-03', 'C200002438', '台中縣大里市樂利三街34巷10號', '秦達明', '04-43135864', '5', '27', '001'),
(244, 913157, '袁惠晴', '1984-04-05', 'C200002447', '台中縣大雅鄉正義路29巷14號1F', '袁福雄', '04-41241812', '6', '14', '001'),
(245, 913158, '郝瑞婷', '1984-03-02', 'M200002454', '台中縣太平市祥豐街68巷306號', '郝介吾', '04-14623046', '1', '11', '001'),
(246, 913159, '馬嘉琪', '1984-06-12', 'C200002465', '台中縣外埔鄉55巷12號4F', '馬坤清', '04-14662043', '2', '27', '001'),
(247, 913160, '高素鳳', '1984-07-18', 'F200002477', '南投縣南投市三爪子路69巷14號4F', '高政宗', '04-41960256', '3', '2', '001'),
(248, 913161, '崔曉芬', '1983-12-11', 'C200002483', '台中縣石岡鄉南新街218-1 號2F', '崔雲庚', '04-42832850', '4', '19', '001'),
(249, 913162, '常鈺玟', '1983-12-05', 'D200002493', '台中縣后里鄉百六街23號4F', '常澤田', '04-45162208', '5', '12', '001'),
(250, 913163, '康宜敏', '1984-03-12', 'F200002502', '台中縣沙鹿鎮中山一路35巷15號3F', '康簡碧', '04-42728447', '6', '12', '001'),
(251, 913164, '張亦文', '1984-06-22', 'F200002511', '南投縣埔里鎮建基路弘祥新村1段2號', '張柯滿', '04-49270998', '1', '2', '001'),
(252, 913165, '曹曉琪', '1983-11-28', 'C200002527', '台中縣和平鄉新豐街161巷75號3F', '曹神舜', '04-13693477', '2', '16', '001'),
(253, 913166, '梁怡芳', '1984-01-23', 'C200002536', '台中縣東勢鎮樂利三街28巷27-2號3F', '梁宗成', '04-43221092', '3', '27', '001'),
(254, 913167, '許書敏', '1984-10-09', 'C200002545', '台中縣烏日鄉中山二路32號', '許銀女', '04-42233128', '4', '12', '001'),
(255, 913168, '郭巧真', '1984-02-27', 'C100002552', '台中縣神岡鄉89巷47之2號3F', '郭總成', '04-42247115', '5', '21', '001'),
(256, 913169, '陳曼雯', '1983-10-28', 'C100002561', '台中縣梧棲鎮樂利三街30巷4號', '陳清泉', '04-43124294', '6', '27', '001'),
(257, 913170, '陸慧玉', '1984-08-08', 'F100002573', '南投縣草屯鎮十分街202號', '陸榮富', '04-49528535', '1', '4', '001'),
(258, 913171, '章詩萍', '1984-02-19', 'A100002587', '南投縣竹山鎮瑞濱路93號', '章雅雄', '04-49277703', '2', '2', '001'),
(259, 914001, '傅佳怡', '1984-09-20', 'C100002598', '台中縣清水鎮安一路166-3 號4F', '傅聖寬', '04-14237541', '3', '23', '001'),
(260, 914002, '喬嘉瑋', '1983-06-25', 'A100002603', '台中縣新社鄉信二路224巷3號', '喬蓮琴', '04-42227371', '4', '17', '001'),
(261, 914003, '彭君怡', '1984-06-20', 'F100002617', '台中縣潭子鄉正義路2巷46 號1F', '彭寶琴', '04-42231279', '5', '14', '001'),
(262, 914004, '曾靜瑩', '1984-07-27', 'V100002629', '南投縣集集鎮復興路37號', '曾明雄', '04-64319784', '1', '5', '001'),
(263, 914005, '湯怡珊', '1984-03-08', 'C100002632', '台中縣龍井鄉寧靜街151-28號1F', '湯志士', '04-45174027', '2', '25', '001'),
(264, 914006, '程錦芳', '1984-08-09', 'F100002644', '南投縣名間鄉瑞竹路59號', '程三源', '04-45728128', '3', '2', '001'),
(265, 914007, '賀淑穎', '1984-07-21', 'C100002650', '台中縣豐原市愛四路3-1號', '賀明賢', '04-42822370', '4', '23', '001'),
(266, 914008, '馮筱慧', '1983-10-12', 'C100002669', '台中縣霧峰鄉文化路50巷1 弄6號1F', '馮月嬌', '04-42614657', '5', '14', '001'),
(267, 914009, '黃佳玲', '1984-09-20', 'C100002678', '台中縣大甲鎮中船路112巷30弄12號', '黃春松', '04-41273279', '6', '14', '001'),
(268, 914010, '楊雅惠', '1983-04-09', 'F100002680', '南投縣鹿谷鄉民權街12巷25號', '楊勝芳', '04-49616522', '1', '2', '001'),
(269, 914011, '萬燕鈴', '1980-05-25', 'F100002699', '南投縣中寮鄉傑魚坑路271 號', '萬份來', '04-49748168', '2', '2', '001'),
(270, 914012, '葉君美', '1983-02-14', 'V100002709', '台中縣大安鄉明德一路2巷21號5F', '葉金玉', '04-41551181', '3', '12', '001'),
(271, 914013, '董宜慧', '1984-03-03', 'C100002712', '台中縣大肚鄉百六街107巷18號3樓', '董信次', '04-45113262', '4', '12', '001'),
(272, 914014, '賈淑芬', '1984-09-13', 'F100002724', '南投縣魚池鄉十分街34號', '賈松進', '04-49518551', '5', '4', '001'),
(273, 914015, '鄒家萱', '1983-12-18', 'C100002730', '台中縣大里市實踐路294巷8號1F', '鄒成富', '04-45215824', '1', '12', '001'),
(274, 914016, '廖怡芬', '1983-09-16', 'C100002749', '台中縣大雅鄉西定路351號2F', '廖黃水', '04-42462747', '2', '14', '001'),
(275, 914017, '熊筑伶', '1984-06-17', 'H100002753', '台中縣太平市安樂路一段266號2F', '熊勝賢', '04-13244999', '3', '23', '001'),
(276, 914018, '趙雅琳', '1984-06-14', 'F100002760', '南投縣國姓鄉忠孝東路234 號2F', '趙三奇', '04-64217527', '4', '5', '001'),
(277, 914019, '劉百合', '1984-12-27', 'C100002776', '台中縣外埔鄉新丰街251巷10弄8號', '劉榮煌', '04-46293569', '5', '16', '001'),
(278, 914020, '潘春梅', '1984-02-11', 'C100002785', '台中縣石岡鄉和一路58巷23號5F', '潘瑞源', '04-46228033', '6', '14', '001'),
(279, 914021, '蔣淑秋', '1983-11-11', 'G100002798', '宜蘭縣三星鄉大溪里仁澤新村2號', '蔣長波', '039-781717', '1', '28', '001'),
(280, 914022, '蔡淑娟', '1984-07-18', 'C100002801', '台中縣后里鄉大同街21號', '蔡瑞榮', '04-45265527', '2', '18', '001'),
(281, 914023, '鄭嘉燕', '1984-09-26', 'C100002810', '台中縣沙鹿鎮基金一路208 巷18號', '鄭阿生', '04-43210943', '3', '23', '001'),
(282, 914024, '鄧賜華', '1984-07-14', 'C100002829', '台中縣和平鄉和一路127號', '鄧國權', '04-46225239', '4', '14', '001'),
(283, 914025, '黎麗玲', '1983-10-10', 'F100002831', '台中縣東勢鎮中正路702號 之2三樓', '黎文進', '04-46220301', '5', '14', '001'),
(284, 914026, '盧莉萍', '1984-09-06', 'G100002841', '台中縣烏日鄉正濱路26巷22號', '盧松輝', '04-46202615', '6', '14', '001'),
(285, 914027, '蕭筱怡', '1984-04-21', 'C100002856', '台中縣神岡鄉武嶺街144號3樓', '蕭秋欽', '04-43223684', '1', '27', '001'),
(286, 914028, '賴雅雯', '1984-08-23', 'C100002865', '台中縣梧棲鎮培德路7巷25 號3F', '賴文德', '04-46257141', '2', '17', '001'),
(287, 914029, '錢麗琴', '1983-11-28', 'E100002876', '台中縣清水鎮漁港三街106 號5F', '錢三益', '04-46295688', '3', '16', '001'),
(288, 914030, '閻慧蘭', '1984-03-11', 'C100002883', '台中縣新社鄉愛五路6巷46 號', '閻寬永', '04-42523628', '4', '23', '001'),
(289, 914031, '龍苑君', '1984-02-05', 'C100002892', '台中縣潭子鄉開元路104-4 號', '龍添福', '04-45623321', '5', '12', '001'),
(290, 914032, '戴亦芳', '1984-08-05', 'C100002909', '台中縣龍井鄉信二路74巷18號', '戴坤銘', '04-42201911', '6', '17', '001'),
(291, 914033, '薛雅芳', '1984-08-16', 'F100002911', '南投縣中寮鄉十分街215號', '薛榮華', '04-49580260', '1', '4', '001'),
(292, 914034, '謝佩君', '1984-08-24', 'C100002927', '台中縣豐原市水源路9-9號2F', '謝兩傳', '04-45720238', '2', '24', '001'),
(293, 914035, '鍾郁鈴', '1984-08-16', 'F100002939', '南投縣魚池鄉瑪鍊路2號3F', '鍾崇煌', '04-49212916', '3', '8', '001'),
(294, 914036, '韓卓葳', '1984-08-06', 'C100002945', '台中縣霧峰鄉培德路2巷32 號5F', '韓培興', '04-46258603', '4', '17', '001'),
(295, 914037, '魏佳琪', '1982-07-29', 'F100002957', '南投縣國姓鄉金包里街73號', '魏清河', '04-49281806', '5', '9', '001'),
(296, 914038, '羅孟君', '1984-08-18', 'C100002963', '台中縣大甲鎮中山1路241巷20號', '羅德和', '04-42230795', '1', '12', '001'),
(297, 914039, '譚婷婷', '1984-01-16', 'F100002975', '南投縣水里鄉磺港路26號', '譚明全', '04-49282994', '2', '9', '001'),
(298, 914040, '蘇詩平', '1983-10-12', 'F100002984', '南投縣信義鄉三爪子坑64-10號1F', '蘇阿涼', '04-42970812', '3', '2', '001'),
(299, 914041, '顧曉君', '1983-11-23', 'C100002990', '台中縣大安鄉安一路278巷62弄69號', '顧佳銘', '04-42328592', '4', '23', '001'),
(300, 914042, '龔琬珊', '1983-11-14', 'C100003004', '台中縣大肚鄉愛五路10巷3 號', '龔寬忠', '04-42323529', '5', '23', '001'),
(301, 914043, '丁曉琦', '1984-08-28', 'C100003013', '台中縣大里市祥豐街71號3F', '丁聯祥', '04-46220872', '6', '15', '001'),
(302, 914044, '尹惠琳', '1983-10-28', 'C100003022', '台中縣大雅鄉復興212巷21 弄69號', '尹阿財', '04-43726182', '1', '14', '001'),
(303, 914045, '孔秀雅', '1984-06-24', 'F100003034', '台中縣太平市中正路182巷33-1號', '孔景仁', '04-42826086', '2', '14', '001'),
(304, 914046, '文鈺淳', '1983-08-24', 'C100003040', '台中縣外埔鄉86號2F', '文秀美', '04-42728847', '3', '17', '001'),
(305, 914047, '方憶萍', '1984-01-29', 'F100003052', '南投縣仁愛鄉共和村中山路30號', '方文三', '04-49321325', '4', '10', '001'),
(306, 914048, '毛尹華', '1983-02-20', 'F100003061', '南投縣南投市和平街6巷5弄11號3F', '毛國隆', '04-64213941', '5', '5', '001'),
(307, 914049, '王淑如', '1983-09-28', 'C100003077', '台中縣石岡鄉仁安街53巷8 之1號', '王金塗', '04-42725487', '1', '14', '001'),
(308, 914050, '史嘉雯', '1984-10-18', 'F100003089', '南投縣埔里鎮海濱路162號', '史深淵', '04-49726061', '2', '2', '001'),
(309, 914051, '田佳玲', '1984-07-23', 'C100003095', '台中縣后里鄉105號', '田慶良', '04-13276443', '3', '17', '001'),
(310, 914052, '白蕙如', '1984-01-13', 'C100003102', '台中縣沙鹿鎮中山一路241巷94號', '白炳坤', '04-42323372', '4', '12', '001'),
(311, 914053, '石蕾苑', '1983-07-17', 'C100003111', '台中縣和平鄉福二街154巷18號4樓', '石新居', '04-45121754', '5', '12', '001'),
(312, 914054, '任婉菱', '1984-04-14', 'C100003120', '台中縣東勢鎮630號', '任坤弟', '04-46221280', '6', '16', '001'),
(313, 914055, '朱玉純', '1984-05-12', 'C100003139', '台中縣烏日鄉平三路21號3F', '朱阿樹', '04-46222411', '1', '14', '001'),
(314, 914056, '江欣蕙', '1984-01-30', 'F100003141', '南投縣草屯鎮三爪坑路91巷22號', '江錦淵', '04-49662962', '2', '2', '001'),
(315, 914057, '何春蘭', '1984-07-05', 'C100003157', '台中縣神岡鄉275號2F', '何金隆', '04-45724770', '3', '25', '001'),
(316, 914058, '余家妮', '1983-11-26', 'C100003166', '南投縣竹山鎮忠義路55巷5 號3F', '余李淑', '04-26025665', '4', '3', '001'),
(317, 914059, '吳靜蘋', '1984-05-28', 'C100003175', '台中縣梧棲鎮義三路4巷31 號', '吳文智', '04-42622482', '5', '17', '001'),
(318, 914060, '呂美桂', '1984-08-09', 'C100003184', '台中縣清水鎮樂利三街34巷18號', '呂阿雲', '04-43122553', '6', '27', '001'),
(319, 914061, '宋玉珊', '1983-09-22', 'C100003193', '台中縣新社鄉街263巷19弄33號底層', '宋林忠', '04-43325081', '1', '25', '001'),
(320, 914062, '李玉菁', '1981-02-16', 'C100003200', '台中縣潭子鄉明德一路98-4號', '李基隆', '04-45642603', '2', '12', '001'),
(321, 914063, '杜若男', '1984-06-05', 'C100003219', '台中縣龍井鄉西定路51號4F', '杜宗輝', '04-42925626', '3', '14', '001'),
(322, 914064, '沈馨怡', '1984-01-01', 'C100003228', '台中縣豐原市東信路154巷7-3號4F', '沈菊嵊', '04-46520898', '4', '17', '001'),
(323, 914065, '汪玉真', '1984-09-16', 'C200003239', '台中縣霧峰鄉仁二路137巷64號', '汪清吉', '04-42427913', '5', '16', '001'),
(324, 914066, '周宛華', '1984-05-25', 'F200003241', '南投縣集集鎮中山路263巷9號4F', '周聰明', '04-49825626', '6', '9', '001'),
(325, 914067, '孟玫芳', '1983-12-16', 'C200003257', '台中縣大甲鎮定國路119巷21 號', '孟兆亮', '04-42722859', '1', '23', '001'),
(326, 914068, '於淑瑛', '1984-05-21', 'C200003266', '台中縣大安鄉119巷15弄3號', '於志鵬', '04-46282032', '2', '16', '001'),
(327, 914069, '易美玲', '1981-10-23', 'E200003277', '台中縣大肚鄉東光路4-5號底 層樓', '易金燧', '04-46261299', '3', '17', '001'),
(328, 914070, '林雯琪', '1983-10-25', 'F200003287', '台中縣大里市定國街125號', '林月里', '04-42524929', '4', '27', '001'),
(329, 914071, '武舒盈', '1984-06-06', 'F200003296', '南投縣名間鄉中山路46號', '武松江', '04-49272314', '5', '2', '001'),
(330, 914072, '邵佩茹', '1983-06-17', 'F100003301', '南投縣鹿谷鄉忠孝東路451 號3樓', '邵麗芬', '04-64287313', '1', '5', '001'),
(331, 914073, '邱芷琳', '1984-02-09', 'C100003317', '台中縣大雅鄉武嶺街240-2 號3F', '邱金鐘', '04-42310872', '2', '23', '001'),
(332, 914074, '金婉如', '1984-02-21', 'C100003326', '台中縣太平市421巷103-2號3F', '金武華', '04-43124728', '3', '17', '001'),
(333, 914075, '侯惠瑜', '1984-07-14', 'F100003338', '南投縣中寮鄉汐萬路一段134號', '侯日成', '04-64214482', '4', '5', '001'),
(334, 914076, '姜雅鳳', '1984-03-17', 'F100003347', '南投縣魚池鄉磺港村31號', '姜武雄', '04-49283233', '5', '9', '001'),
(335, 914077, '姚嘉玲', '1983-08-15', 'F100003356', '南投縣國姓鄉新寮村3號', '姚慶福', '04-49582351', '6', '4', '001'),
(336, 914078, '段慧琪', '1984-08-08', 'C100003362', '台中縣外埔鄉正義路2巷46 號1F', '段象雄', '04-42231279', '1', '14', '001'),
(337, 914079, '胡梅貴', '1984-06-28', 'C100003371', '台中縣石岡鄉忠孝街610巷17號4F', '胡文科', '04-45270286', '2', '24', '001'),
(338, 914080, '范惠玲', '1984-01-10', 'F100003383', '南投縣中寮鄉和平街1號3F', '范色雄', '04-49286334', '3', '9', '001'),
(339, 914081, '唐雅君', '1984-09-08', 'G100003393', '台中縣后里鄉新丰街161巷126號2F', '唐彝香', '04-46294566', '4', '16', '001'),
(340, 914082, '夏嘉琳', '1984-06-11', 'C100003406', '台中縣沙鹿鎮西定路57號2F', '夏秋山', '04-42260818', '5', '14', '001'),
(341, 914083, '孫雲婷', '1984-04-12', 'C100003415', '台中縣和平鄉新西街57巷21號', '孫阿日', '04-42263256', '1', '27', '001'),
(342, 914084, '徐德芳', '1984-06-12', 'C100003424', '台中縣東勢鎮平一路320-3 號', '徐明富', '04-46225924', '2', '14', '001'),
(343, 914085, '秦琇雯', '1984-11-16', 'C100003433', '台中縣烏日鄉中山二路一巷53號', '秦進富', '04-42255976', '3', '12', '001'),
(344, 914086, '袁佩琳', '1984-04-08', 'C100003442', '台中縣神岡鄉139號', '袁謝萍', '04-46254736', '4', '17', '001'),
(345, 914087, '郝婉菁', '1983-09-28', 'T100003455', '台中縣梧棲鎮中華路1巷2號', '郝香筑', '04-42234146', '5', '14', '001'),
(346, 914088, '馬曉甄', '1983-10-10', 'N100003469', '南投縣魚池鄉瑪鍊路5-4號2F', '馬阿萬', '04-49222315', '6', '8', '001'),
(347, 914089, '高嘉琳', '1983-09-30', 'F100003472', '南投縣國姓鄉成功新村66號', '高政雄', '04-49222329', '1', '8', '001'),
(348, 914090, '崔筱穎', '1984-09-11', 'C100003488', '台中縣清水鎮劉銘傳路95巷1-1號2樓', '崔志誠', '04-13254994', '2', '23', '001'),
(349, 914091, '常佳昕', '1982-02-10', 'C100003497', '台中縣新社鄉95巷29號2F', '常重典', '04-13280672', '3', '16', '001'),
(350, 914092, '康思婷', '1984-02-16', 'F100003507', '南投縣水里鄉傑魚坑路217 號之1', '康建村', '04-13974743', '4', '2', '001'),
(351, 914093, '張秀珍', '1983-09-03', 'F100003516', '南投縣信義鄉半嶺路58號', '張輝次', '04-13985692', '5', '9', '001'),
(352, 914094, '曹意欣', '1984-10-05', 'F100003525', '台中縣潭子鄉定國街11巷14號', '曹明山', '04-13266601', '6', '23', '001'),
(353, 914095, '梁秀萍', '1984-09-07', 'F100003534', '南投縣仁愛鄉中正路65號2F', '梁田玉', '04-13983032', '1', '9', '001'),
(354, 914096, '許蓁齡', '1984-02-09', 'C100003540', '台中縣龍井鄉西定路308號', '許奄能', '04-13287226', '2', '14', '001'),
(355, 914097, '郭中慧', '1984-08-16', 'C100003559', '台中縣豐原市東碇路366號2F', '郭貽立', '04-13259126', '3', '27', '001'),
(356, 914098, '陳沛文', '1984-01-09', 'F100003561', '台中縣霧峰鄉暖碇路15巷26號', '陳瑞鳳', '03-23833704', '4', '25', '001'),
(357, 914099, '陸欣雅', '1984-02-25', 'C100003577', '台中縣大甲鎮正信路175巷8號', '陸玉蘭', '04-13655316', '5', '17', '001'),
(358, 914100, '章慧薰', '1983-12-11', 'C100003586', '台中縣大安鄉中山二路107 巷94號', '章培盛', '04-13238378', '6', '12', '001'),
(359, 914101, '傅婉如', '1983-12-16', 'C100003595', '台中縣大肚鄉崇信街41巷4-1 號2F', '傅勝毅', '04-13566607', '1', '12', '001'),
(360, 914102, '喬郁庭', '1984-04-15', 'C100003602', '台中縣大里市定國街119巷5號', '喬北海', '04-13262342', '2', '23', '001'),
(361, 914103, '彭意琳', '1984-01-16', 'A100003619', '台中縣大雅鄉實踐路112號5F', '彭振富', '04-13511275', '3', '12', '001'),
(362, 914104, '曾文泙', '1984-04-05', 'C100003620', '台中縣太平市一段69巷36號4F', '曾蔡麗', '04-13315894', '4', '27', '001'),
(363, 914105, '湯淑婷', '1984-01-13', 'F100003632', '台中縣外埔鄉東明路114號', '湯明麟', '04-13652808', '5', '17', '001'),
(364, 914106, '程詩萍', '1984-02-19', 'A100003646', '南投縣南投市瑞濱路93號', '程雅雄', '04-13977703', '1', '2', '001'),
(365, 914107, '賀昱呈', '1984-08-07', 'C100003657', '台中縣石岡鄉西定路110巷3號', '賀炳煌', '04-13281730', '2', '14', '001'),
(366, 914108, '馮欣璇', '1984-08-17', 'C100003666', '台中縣后里鄉福五街85巷44號1F', '馮國棟', '04-13517620', '3', '12', '001'),
(367, 914109, '黃湘儀', '1984-10-15', 'C100003675', '台中縣沙鹿鎮東信路55巷24-2號3F', '黃國雄', '04-13655539', '4', '17', '001'),
(368, 914110, '楊雅惠', '1980-11-08', 'F100003687', '南投縣埔里鎮鉋里街24號', '楊明珠', '04-13982021', '5', '9', '001'),
(369, 914111, '萬雅琳', '1983-10-22', 'C100003693', '台中縣和平鄉崇智街35巷10-7號4F', '萬順能', '04-13565040', '6', '12', '001'),
(370, 914112, '葉詩儀', '1984-01-09', 'C100003700', '台中縣東勢鎮月眉路65巷64號', '葉天來', '04-13659785', '1', '17', '001'),
(371, 914113, '董麗如', '1984-02-05', 'C100003719', '台中縣烏日鄉實踐路128-2 號3F', '董文良', '04-13511076', '2', '12', '001'),
(372, 914114, '賈姵吟', '1984-06-02', 'C100003728', '台中縣神岡鄉南新街20-1號2F', '賈昌盛', '04-13242243', '3', '16', '001'),
(373, 914115, '鄒佩萱', '1984-03-11', 'C100003737', '台中縣梧棲鎮街6 巷55-2號3F', '鄒德發', '04-13312719', '4', '23', '001'),
(374, 914116, '廖惠君', '1984-07-25', 'C100003746', '台中縣清水鎮431之4號5F', '廖孟哲', '04-13627910', '5', '17', '001'),
(375, 914117, '熊雅莉', '1984-06-25', 'F100003758', '台中縣新社鄉義二路215號4F', '熊坤霖', '04-13263451', '1', '16', '001'),
(376, 914118, '趙曉馨', '1984-04-29', 'F100003767', '台中縣潭子鄉安樂路2段166巷58號1F', '趙正隆', '04-13313556', '2', '23', '001'),
(377, 914119, '劉美玲', '1984-07-23', 'F100003776', '南投縣草屯鎮加投路158號', '劉蒼田', '04-13981872', '3', '8', '001'),
(378, 914120, '潘可欣', '1984-02-29', 'A100003780', '台中縣龍井鄉源遠路152巷15號14F', '潘培禎', '04-13572246', '4', '25', '001'),
(379, 914121, '蔣秀燕', '1984-03-05', 'C100003791', '南投縣竹山鎮三爪子坑路69巷15-2號3', '蔣義郎', '04-13979480', '5', '2', '001'),
(380, 914122, '蔡佳雯', '1984-09-16', 'F100003801', '南投縣集集鎮野柳村港東路71號4F', '蔡春生', '04-13922608', '6', '8', '001'),
(381, 914123, '鄭甫美', '1984-07-31', 'C100003817', '台中縣豐原市南榮路319巷19號', '鄭再壽', '04-13277780', '1', '22', '001'),
(382, 914124, '鄧靜苓', '1984-01-08', 'F100003829', '台中縣霧峰鄉中興路3巷11-8號', '鄧虞村', '04-13322703', '2', '17', '001'),
(383, 914125, '黎菲雯', '1984-06-08', 'F100003838', '南投縣名間鄉瑞興新村12巷2號4F', '黎朝福', '04-13977792', '3', '2', '001'),
(384, 914126, '盧雅琳', '1984-10-25', 'C100003844', '台中縣大甲鎮信二路25-2號3F', '盧文正', '04-13232924', '4', '17', '001'),
(385, 914127, '蕭宛真', '1983-12-30', 'C100003853', '台中縣大安鄉溪頭街24-3號4F', '蕭榮貴', '04-13513675', '5', '12', '001'),
(386, 914128, '賴惠茹', '1983-11-29', 'C100003862', '台中縣大肚鄉中山一路113 巷81號', '賴淑芳', '04-13239573', '6', '12', '001'),
(387, 914129, '錢珊珊', '1984-11-08', 'C100003871', '台中縣大里市中山二路51巷171-1號', '錢岳鐘', '04-13255170', '1', '12', '001'),
(388, 914130, '閻秋琴', '1983-10-23', 'C100003880', '台中縣大雅鄉定國街11巷39號', '閻依維', '04-13266643', '2', '23', '001'),
(389, 914131, '龍文雅', '1983-10-23', 'C100003899', '台中縣太平市安和一街129巷6-3號4F', '龍銘鐘', '04-13322516', '3', '23', '001'),
(390, 914132, '戴怡慈', '1984-07-04', 'F100003909', '南投縣鹿谷鄉屯山里石頭厝17-2號', '戴盧文', '04-28010287', '4', '6', '001'),
(391, 914133, '薛秀鳳', '1984-01-22', 'F100003918', '南投縣中寮鄉東和路63號1F', '薛月娥', '04-13960270', '5', '2', '001'),
(392, 914134, '謝鈺霞', '1984-06-19', 'C100003924', '台中縣外埔鄉街4巷47號', '謝幸福', '04-13319792', '6', '23', '001'),
(393, 914135, '鍾小芬', '1984-07-21', 'L100003930', '南投縣魚池鄉仁愛路67巷9 號3F', '鍾春菅', '04-13986214', '1', '9', '001'),
(394, 914136, '韓彩鳳', '1983-09-24', 'C100003942', '台中縣石岡鄉崇德路10巷38-37號2F', '韓治雄', '04-13256196', '2', '27', '001'),
(395, 914137, '魏修吟', '1984-07-24', 'C100003951', '台中縣后里鄉樂一路76巷11號', '魏則亮', '04-13252836', '3', '27', '001'),
(396, 914138, '羅筱慧', '1983-10-12', 'C100003960', '台中縣沙鹿鎮文化路50巷1 弄6號1F', '羅月嬌', '04-13264657', '4', '14', '001'),
(397, 915001, '譚琇怡', '1984-09-13', 'C100003979', '台中縣和平鄉崇德路218-12號3F', '譚萬福', '04-13279637', '5', '27', '001'),
(398, 915002, '蘇琬鈺', '1984-01-06', 'C100003988', '台中縣東勢鎮麥金路458號 之4五樓', '蘇仲信', '04-13335533', '1', '27', '001'),
(399, 915003, '顧美芳', '1984-02-26', 'H100003992', '南投縣國姓鄉仁五路3號3F', '顧新章', '04-13925229', '2', '8', '001'),
(400, 915004, '龔雅貞', '1984-03-05', 'C100004001', '台中縣烏日鄉復興街50巷23號', '龔朝玉', '04-13285231', '3', '23', '001'),
(401, 915005, '丁婉禎', '1984-09-04', 'C100004010', '台中縣神岡鄉崇德路85-12 號地下2F', '丁明正', '04-13246535', '4', '27', '001'),
(402, 915006, '尹芳儀', '1983-07-23', 'C100004029', '台中縣梧棲鎮西定路453號', '尹期昆', '04-13242097', '5', '14', '001'),
(403, 915007, '孔玉茹', '1984-09-26', 'F100004031', '台中縣清水鎮成功路67巷31號3樓', '孔文科', '04-13318166', '6', '16', '001'),
(404, 915008, '文麗婷', '1984-10-26', 'F100004040', '南投縣中寮鄉菁桐村二坑4 號', '文火樹', '04-13951570', '1', '4', '001'),
(405, 915009, '方秀瑩', '1983-12-05', 'C100004056', '台中縣新社鄉愛五路4-1號2樓', '方永進', '04-13285139', '2', '23', '001'),
(406, 915010, '毛怡雯', '1984-05-27', 'C100004065', '台中縣潭子鄉碇內街160巷4號', '毛金李', '04-13574877', '3', '25', '001'),
(407, 915011, '王文琪', '1984-03-29', 'C100004074', '台中縣龍井鄉街110號 4F', '王德銘', '04-13316105', '4', '25', '001'),
(408, 915012, '史忞燕', '1984-03-23', 'R100004085', '台中縣豐原市義七路19號4F', '史秀靜', '04-13224708', '5', '17', '001'),
(409, 915013, '田佳詩', '1983-12-21', 'C100004092', '台中縣霧峰鄉獅球路48巷55號', '田武龍', '04-13336325', '1', '23', '001'),
(410, 915014, '白慧怡', '1984-04-07', 'K100004106', '台中縣大甲鎮街二巷22-5號6F', '白火龍', '04-26212902', '2', '23', '001'),
(411, 915015, '石惠名', '1984-08-01', 'C100004118', '台中縣大安鄉復興街117巷13號2樓', '石清和', '04-13231378', '3', '23', '001'),
(412, 915016, '任瑞欣', '1983-11-26', 'V100004123', '台中縣大肚鄉新丰街327巷2號', '任勤努', '04-13693354', '4', '16', '001'),
(413, 915017, '朱玉萍', '1984-01-10', 'C100004136', '台中縣大里市六堵里工建路42號', '朱秋揚', '04-13510695', '5', '18', '001'),
(414, 915018, '江惠瑩', '1984-10-14', 'C100004145', '台中縣大雅鄉大華一路57巷11-2號3F', '江連興', '04-13551392', '6', '18', '001'),
(415, 915019, '何依婷', '1984-10-11', 'F100004157', '南投縣魚池鄉瑞竹路12號2F', '何金生', '04-13573797', '1', '2', '001'),
(416, 915020, '余欣妮', '1984-01-28', 'G100004167', '台中縣太平市通仁路20巷46號', '余美華', '04-13230461', '2', '14', '001'),
(417, 915021, '吳嘉玲', '1984-07-27', 'F100004175', '南投縣國姓鄉延平街69號', '吳春生', '04-13901172', '3', '1', '001'),
(418, 915022, '呂欣怡', '1984-08-14', 'C100004181', '台中縣外埔鄉19巷27號4F', '呂美鈴', '04-13323946', '4', '16', '001'),
(419, 915023, '宋彥蓉', '1984-09-19', 'M100004198', '台中縣石岡鄉開元路104-1 號2F', '宋陳鎬', '04-13567307', '5', '12', '001'),
(420, 915024, '李柏楨', '1984-04-08', 'F100004200', '台中縣后里鄉源遠路249巷11-2號3F', '李金德', '04-13572735', '6', '25', '001'),
(421, 915025, '杜慧玲', '1983-11-20', 'C100004216', '台中縣沙鹿鎮調和街17-8號3F', '杜文田', '04-13691790', '1', '16', '001'),
(422, 915026, '沈蕙敏', '1984-05-27', 'C100004225', '台中縣和平鄉中華路167巷13-3號', '沈玉嬌', '04-13286212', '2', '13', '001'),
(423, 915027, '汪純慧', '1983-10-14', 'C100004234', '台中縣東勢鎮龍安街340號', '汪進寶', '04-13232499', '3', '23', '001'),
(424, 915028, '周雅君', '1983-10-10', 'C100004243', '台中縣烏日鄉八堵路31巷1 號3F', '周清漢', '04-13570712', '4', '21', '001'),
(425, 915029, '孟伶樺', '1984-04-04', 'F100004255', '南投縣水里鄉仁愛路67巷14號3F', '孟俊湧', '04-13988057', '5', '9', '001'),
(426, 915030, '於淑珍', '1984-05-11', 'C100004261', '台中縣神岡鄉路131巷11弄4號5F', '於 書', '04-13322536', '6', '23', '001'),
(427, 915031, '易惠如', '1984-01-24', 'F100004273', '南投縣信義鄉128號', '易平郎', '04-13941300', '1', '1', '001'),
(428, 915032, '林文琪', '1984-06-03', 'F100004282', '南投縣仁愛鄉水源路1段185號', '林詹園', '04-26427938', '2', '5', '001'),
(429, 915033, '武怡琴', '1983-10-23', 'F100004291', '台中縣梧棲鎮劉銘傳路110 巷34號2F', '武啟輝', '04-13272209', '3', '23', '001'),
(430, 915034, '邵汶琪', '1984-01-30', 'F100004308', '南投縣中寮鄉港東路177號1F', '邵桂花', '04-13921744', '4', '8', '001'),
(431, 915035, '邱惠茹', '1984-09-13', 'F100004317', '南投縣魚池鄉福德一路102 巷16號', '邱正宗', '04-26941388', '5', '5', '001'),
(432, 915036, '金鈺婷', '1984-02-25', 'G100004327', '南投縣國姓鄉樟樹一路123-2號1F', '金兒燎', '04-26473809', '1', '5', '001'),
(433, 915037, '侯佩純', '1984-04-21', 'G100004336', '台中縣清水鎮518號', '侯祈財', '04-13623381', '2', '16', '001'),
(434, 915038, '姜雯菁', '1983-09-22', 'F100004344', '台中縣新社鄉樂利二街26號1樓', '姜寶根', '04-13315522', '3', '27', '001'),
(435, 915039, '姚愷莉', '1984-03-29', 'C100004350', '台中縣潭子鄉復興街105巷1號', '姚玉書', '04-13234590', '4', '23', '001'),
(436, 915040, '段聖芳', '1984-06-14', 'C100004369', '台中縣龍井鄉七巷29號', '段興益', '04-13653019', '5', '17', '001'),
(437, 915041, '胡嘉慧', '1984-01-13', 'C100004378', '台中縣豐原市437巷7號1F', '胡金玉', '04-13314538', '6', '17', '001'),
(438, 915042, '范欣怡', '1984-02-10', 'F100004380', '南投縣水里鄉仁愛路51號1F', '范李雄', '04-13984686', '1', '9', '001'),
(439, 915043, '唐利光', '1984-07-28', 'C100004396', '台中縣霧峰鄉龍安街94號', '唐明達', '04-13321631', '2', '23', '001'),
(440, 915044, '夏芳祺', '1984-10-22', 'F100004406', '南投縣信義鄉石門街29號5F', '夏正池', '04-26382102', '3', '7', '001'),
(441, 915045, '孫雅嵐', '1984-08-01', 'C100004412', '台中縣大甲鎮八堵路28號', '孫龍竹', '04-13581940', '4', '21', '001'),
(442, 915046, '徐文怡', '1984-06-21', 'C100004421', '台中縣大安鄉月眉路250巷19 號', '徐勝和', '04-13651852', '5', '27', '001'),
(443, 915047, '秦佳芳', '1982-10-24', 'C100004430', '台中縣大肚鄉路168巷50弄7號4F', '秦輝龍', '04-25077981', '1', '17', '001'),
(444, 915048, '袁桂綾', '1984-05-04', 'F100004442', '南投縣仁愛鄉大同路2段687巷23弄2號', '袁財團', '04-26434642', '2', '5', '001'),
(445, 915049, '郝怡珊', '1984-07-23', 'F100004451', '南投縣南投市新港街26巷21弄3號2F', '郝明雄', '04-13901985', '3', '1', '001'),
(446, 915050, '馬靖怡', '1984-08-22', 'C100004467', '南投縣埔里鎮仁愛路119巷19號四樓', '馬勝龍', '04-26479455', '4', '5', '001'),
(447, 915051, '高素惠', '1984-08-04', 'F100004479', '南投縣草屯鎮建基路2段97 號', '高萬生', '04-13975894', '5', '2', '001'),
(448, 915052, '崔雅苓', '1984-01-29', 'C100004485', '台中縣大里市35巷159號1F', '崔總富', '04-13655941', '6', '27', '001'),
(449, 915053, '常依雲', '1984-11-11', 'F100004497', '南投縣竹山鎮牡丹村233號', '常水木', '04-13934372', '1', '10', '001'),
(450, 915054, '康佳靜', '1984-07-18', 'C100004501', '台中縣大雅鄉培德路59號之1,5樓', '康明端', '04-13656789', '2', '17', '001'),
(451, 915055, '張淑梅', '1984-01-05', 'C100004510', '台中縣太平市二巷9-5號', '張崇武', '04-13621993', '3', '27', '001'),
(452, 915056, '曹曉燕', '1984-06-10', 'F100004522', '南投縣集集鎮港西路56-3號2F', '曹宗興', '04-13923628', '4', '8', '001'),
(453, 915057, '梁心怡', '1983-03-20', 'C100004538', '台中縣外埔鄉257號', '梁希滇', '04-13627038', '5', '17', '001'),
(454, 915058, '許秀美', '1984-06-27', 'C100004547', '台中縣石岡鄉復興路212巷23 弄23號', '許阿潻', '04-13257782', '6', '14', '001'),
(455, 915059, '郭美冠', '1983-12-01', 'F100004559', '南投縣名間鄉中山路180巷5弄11號', '郭福來', '04-13971390', '1', '2', '001'),
(456, 915060, '陳珮瑛', '1984-05-16', 'A100004563', '台中縣后里鄉愛三路9-3號9F', '陳淑珍', '04-13222830', '2', '23', '001'),
(457, 915061, '陸佳惠', '1983-12-09', 'C100004574', '台中縣沙鹿鎮寧靜街60巷20號 6F', '陸田濤', '04-13575282', '3', '25', '001'),
(458, 915062, '章靜玉', '1984-09-19', 'C100004583', '台中縣和平鄉華三街4號7樓', '章國楨', '04-13336213', '4', '23', '001'),
(459, 915063, '傅璧如', '1984-07-14', 'A100004590', '台中縣東勢鎮培德路12巷40-2號', '傅石村', '04-13656925', '5', '17', '001'),
(460, 915064, '喬琇婷', '1983-11-18', 'C100004609', '台中縣烏日鄉信二路36巷81號', '喬來成', '04-13259123', '6', '17', '001'),
(461, 915065, '彭嘉純', '1983-09-23', 'C100004618', '台中縣神岡鄉16巷70-11號', '彭茂金', '04-13573382', '1', '25', '001'),
(462, 915066, '曾銘芳', '1984-04-13', 'C100004627', '台中縣梧棲鎮348號之16', '曾連富', '04-13286436', '2', '23', '001'),
(463, 915067, '湯怡婷', '1983-05-06', 'C100004636', '台中縣清水鎮339號5F', '湯棋昌', '04-13282854', '3', '23', '001'),
(464, 915068, '程佳汎', '1984-07-04', 'C100004645', '台中縣新社鄉忠孝街281巷7號 3F', '程文卿', '04-13575009', '4', '24', '001'),
(465, 915069, '賀淑珍', '1984-06-14', 'V100004650', '台中縣潭子鄉開元路59-56 號', '賀福順', '04-13569139', '5', '12', '001');
INSERT INTO `students` (`id`, `school_num`, `name`, `birthday`, `uni_id`, `addr`, `parents`, `tel`, `dept`, `graduate_at`, `status_code`) VALUES
(466, 915070, '馮惠貞', '1984-10-20', 'F200004668', '南投縣鹿谷鄉中央路44巷18-1號1F', '馮永富', '04-26381985', '1', '7', '001'),
(467, 915071, '黃潔如', '1983-12-30', 'C200004674', '台中縣龍井鄉麥金路54號11樓', '黃明泉', '04-13333651', '2', '27', '001'),
(468, 915072, '楊靜漪', '1983-05-04', 'F200004686', '南投縣中寮鄉中正路93號', '楊欽賢', '04-26415225', '3', '5', '001'),
(469, 915073, '萬莉萍', '1983-10-15', 'C200004692', '台中縣豐原市25號', '萬燕青', '04-13323143', '4', '21', '001'),
(470, 915074, '葉玉婷', '1984-02-01', 'C200004709', '台中縣霧峰鄉國安路30巷16-2號3F', '葉文欽', '04-13576610', '5', '24', '001'),
(471, 915075, '董佳琪', '1984-03-21', 'F200004711', '台中縣大甲鎮崇智街27巷7-3號4F', '董瑞德', '04-13658126', '6', '12', '001'),
(472, 915076, '賈慧怡', '1984-06-21', 'C200004727', '台中縣大安鄉正榮街77巷35號底2樓', '賈鑽輝', '04-13632632', '1', '14', '001'),
(473, 915077, '鄒思怡', '1984-03-03', 'C200004736', '台中縣大肚鄉麥金路437巷14-3號', '鄒忠成', '04-13313918', '2', '27', '001'),
(474, 915078, '廖柔君', '1984-05-15', 'C200004745', '台中縣大里市中正路124號4樓', '廖啟彰', '04-13277422', '3', '14', '001'),
(475, 915079, '熊嘉慧', '1982-11-24', 'C200004754', '台中縣大雅鄉中平街17號之3 4F', '熊朝宗', '04-13233272', '4', '12', '001'),
(476, 915080, '趙佳蕙', '1984-01-18', 'C200004763', '台中縣太平市復興街107號', '趙朝陽', '04-13288094', '5', '23', '001'),
(477, 915081, '劉佳融', '1984-01-29', 'F200004775', '南投縣魚池鄉中福村59-2號', '劉阿屘', '04-13922431', '2', '8', '001'),
(478, 915082, '潘曉慧', '1983-12-30', 'A200004789', '南投縣國姓鄉輕便路5號', '潘崇義', '04-13969103', '3', '2', '001'),
(479, 915083, '蔣柏雲', '1984-06-27', 'C200004790', '台中縣外埔鄉25號4F', '蔣耒成', '04-13632327', '4', '27', '001');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `class_student`
--
ALTER TABLE `class_student`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `conduct`
--
ALTER TABLE `conduct`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `graduate_school`
--
ALTER TABLE `graduate_school`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `class_student`
--
ALTER TABLE `class_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `conduct`
--
ALTER TABLE `conduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `graduate_school`
--
ALTER TABLE `graduate_school`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `records`
--
ALTER TABLE `records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;
--
-- 資料庫： `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
