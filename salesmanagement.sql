-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-01-22 09:52:20
-- サーバのバージョン： 10.4.22-MariaDB
-- PHP のバージョン: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `salesmanagement`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(4) NOT NULL,
  `CustomerName` varchar(30) NOT NULL,
  `TEL` varchar(12) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `TEL`, `Email`) VALUES
('0001', '青空商事', '0268-26-9999', 'ao@aaa.jp'),
('0002', 'ひまわり商事', '06-6547-8963', 'info@himawari.como'),
('0003', 'まこに酒房', '0268-36-3214', 'makon@plala.pr'),
('0004', '丸子文具', '0268-26-9999', 'tatsuda@gmail.com');

-- --------------------------------------------------------

--
-- テーブルの構造 `goods`
--

CREATE TABLE `goods` (
  `GoodsID` varchar(4) NOT NULL,
  `GoodsName` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `goods`
--

INSERT INTO `goods` (`GoodsID`, `GoodsName`, `Price`) VALUES
('1000', 'シンプルな消しゴム', 100),
('1001', 'カラフルノート', 150),
('1002', 'きらきらボールペン', 120),
('1003', '天使の手帳', 200),
('1004', 'チョコの味するスケール', 1080),
('1005', 'センサー付きクリップ', 650),
('1006', 'おせっかいなノート', 1500),
('1007', 'ミスト付ボールペン', 230),
('1999', '神秘的な鉛筆', 300);

-- --------------------------------------------------------

--
-- テーブルの構造 `salesinfo`
--

CREATE TABLE `salesinfo` (
  `id` int(11) NOT NULL,
  `SalesDate` date NOT NULL,
  `CustomerID` varchar(4) NOT NULL,
  `GoodsID` varchar(4) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `salesinfo`
--

INSERT INTO `salesinfo` (`id`, `SalesDate`, `CustomerID`, `GoodsID`, `Quantity`) VALUES
(1, '2022-01-22', '0001', '1000', 2);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- テーブルのインデックス `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`GoodsID`);

--
-- テーブルのインデックス `salesinfo`
--
ALTER TABLE `salesinfo`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `salesinfo`
--
ALTER TABLE `salesinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
