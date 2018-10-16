-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 16, 2018 lúc 08:03 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `csdl_mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(11, 'APPLE', 'apple.jpg'),
(12, 'SAMSUNG', 'Samsung.jpg'),
(13, 'SONY', 'sony.jpg'),
(14, 'NOKIA', 'nokia.jpg'),
(15, 'BLACKBERRY', 'bb.jpg'),
(16, 'OPPO', 'oppo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `Name`, `image`, `description`, `Price`, `manu_id`, `type_id`) VALUES
(1, 'iPhone XS ', 'iPhone_XS.jpg', 'iphone XS hàng like new', 200, 11, 212),
(2, 'SamSung Note 9', 'ssn9.jpg', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 300, 12, 213),
(3, 'Iphone 7 plus', 'iphone7plus.jpg', 'LED-backlit IPS LCD, 5.5\", Retina HD', 400, 11, 212),
(4, 'Iphone 6 plus', 'iphone6plus.jpg', 'LED-backlit IPS LCD, 5.5\", Retina HD', 100, 11, 212),
(5, 'Samsung s8', 'Samsungs8.jpg', 'Super AMOLED, 6.4\", Quad HD+ (2K+)', 150, 12, 213),
(6, 'Samsung J7 pro', 'SamsungJ7pro.jpg', 'Super AMOLED, 6.4\", Quad HD+ (2K+)', 500, 12, 213),
(7, 'Sony Xperia XZ Dual', 'SonyXperiaXZDual.jpg', 'TRILUMINOS™, 5.2\", Full HD', 800, 13, 213),
(8, 'Sony Xperia XA1 Plus', 'A1Pl.jpg', 'IPS LCD, 5.5\", Full HD', 900, 13, 213),
(9, 'Nokia 105 Single Sim', 'nokia105.jpg', 'TFT, 1.8\", 65.536 màu', 55, 14, 214),
(10, 'Nokia 216', 'nokia216.jpg', 'TFT, 2.4\", QVGA', 30, 14, 214),
(11, 'BlackBerry Classic Q20', 'bbq20.jpg', 'Màn hình 3.5 inch', 400, 15, 215),
(12, 'BlackBerry Passport', 'bbpp.jpg', 'Qualcomm Snapdragon 800 with 2.2GHz Quad-Core CPUs (MSM8974-AA)\r\nAdreno 330, 450MHz GPU', 1000, 15, 215),
(13, 'Nokia Lumia 1020', 'lu1020.jpg', 'Qualcomm MSM896\r\n', 100, 14, 216),
(14, 'Nokia Lumia 930', 'l930.jpg', 'Windows Phone 8.1', 400, 14, 216),
(15, 'Samsung Galaxy J8', 'ssj8.jpg', 'Màn hình:	Super AMOLED, 6.0\", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	16 MP và 5 MP (2 camera)\r\nCamera trước:	16 MP', 700, 12, 213),
(16, 'Samsung Galaxy A8', 'ssA8.jpg', 'Màn hình:Super AMOLED, 5.6\", Full HD+\r\nHệ điều hành:	Android 7.1 (Nougat)\r\nCamera sau:	16 MP\r\nCamera trước:	16 MP và 8 MP', 800, 12, 213),
(17, 'Nokia 7 Plus', 'nokia7plus.jpg', 'Màn hình:	IPS LCD, 6\", Full HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	12 MP và 13 MP (2 camera)\r\nCamera trước:	16 MP', 960, 14, 213),
(18, 'Sony Xperia XZ1', 'SonyXperiaXZ1.jpg', 'Màn hình:	IPS HDR LCD, 5.2\", Full HD\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	19 MP\r\nCamera trước:	13 MP', 730, 13, 213),
(19, 'OPPO F9', 'OPPOF9.jpg', 'Màn hình:	LTPS LCD, 6.3\", Full HD+\r\nHệ điều hành:	ColorOS 5.2 (Android 8.1)\r\nCamera sau:	16 MP và 2 MP (2 camera)\r\nCamera trước:	25 MP', 380, 16, 213),
(20, 'OPPO F7', 'OPPOF7.jpg', 'Màn hình:	LTPS LCD, 6.23\", Full HD+\r\nHệ điều hành:	ColorOS 5.0 (Android 8.1)\r\nCamera sau:	16 MP\r\nCamera trước:	25 MP', 410, 16, 213),
(21, 'IP X', 'Penguins.jpg', 'adas', 5000, 11, 212);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`, `type_img`) VALUES
(212, 'Smartphone ios', 'smartphone.jpg'),
(213, 'Smartphone android', 'smartphone2.jpg'),
(214, 'Diện thoại phổ thông', 'dtpt.jpg'),
(215, 'smartphone BOS', 'babr.jpg'),
(216, 'smarphone windows phone', 'wdp.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
