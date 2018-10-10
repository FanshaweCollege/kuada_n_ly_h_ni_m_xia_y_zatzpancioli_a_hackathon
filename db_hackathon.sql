-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-10-10 21:16:44
-- 服务器版本： 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hackathon`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb2_background`
--

DROP TABLE IF EXISTS `tb2_background`;
CREATE TABLE IF NOT EXISTS `tb2_background` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `background` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tb2_background`
--

INSERT INTO `tb2_background` (`ID`, `background`) VALUES
(1, '#ddccba\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `tb2_color`
--

DROP TABLE IF EXISTS `tb2_color`;
CREATE TABLE IF NOT EXISTS `tb2_color` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `color` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tb2_color`
--

INSERT INTO `tb2_color` (`ID`, `color`) VALUES
(1, 'Black');

-- --------------------------------------------------------

--
-- 表的结构 `tb2_font`
--

DROP TABLE IF EXISTS `tb2_font`;
CREATE TABLE IF NOT EXISTS `tb2_font` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `font` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tb2_font`
--

INSERT INTO `tb2_font` (`ID`, `font`) VALUES
(1, './fonts/walkway_bold-webfont.woff'),
(2, './fonts/walkway_rounded-webfont.woff'),
(3, './fonts/walkway_semibold-webfont.woff');

-- --------------------------------------------------------

--
-- 表的结构 `tb2_font_color_background`
--

DROP TABLE IF EXISTS `tb2_font_color_background`;
CREATE TABLE IF NOT EXISTS `tb2_font_color_background` (
  `ID` int(10) NOT NULL,
  `homepage_id` int(11) NOT NULL,
  `font_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `background_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tb2_font_color_background`
--

INSERT INTO `tb2_font_color_background` (`ID`, `homepage_id`, `font_id`, `color_id`, `background_id`) VALUES
(1, 1, 2, 1, 1),
(2, 1, 1, NULL, NULL),
(7, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tb2_homepage`
--

DROP TABLE IF EXISTS `tb2_homepage`;
CREATE TABLE IF NOT EXISTS `tb2_homepage` (
  `ID` int(10) NOT NULL,
  `position` varchar(100) NOT NULL,
  `mobileimages` varchar(100) DEFAULT NULL,
  `desktopimages` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tb2_homepage`
--

INSERT INTO `tb2_homepage` (`ID`, `position`, `mobileimages`, `desktopimages`) VALUES
(1, 'title-bar', 'banner1.jpg', 'desktop_banner1.jpg'),
(2, 'textBanner', NULL, NULL),
(3, 'icons', 'termo_icon.png', 'termo_icon.png'),
(4, 'icons', 'lock_icon.png', 'lock_icon.png'),
(5, 'icons', 'camera_icon.png', 'camera_icon.png'),
(6, 'icons', 'ocupancy_icon.png', 'ocupancy_icon.png'),
(7, 'bannerBox', 'banner2,jpg', 'banner2,jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
CREATE TABLE IF NOT EXISTS `tbl_color` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_color`
--

INSERT INTO `tbl_color` (`ID`, `color`) VALUES
(1, 'Black'),
(2, 'Gold'),
(3, 'Silver');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `ID` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  `product_description` text NOT NULL,
  `product_mobileimage` varchar(100) NOT NULL,
  `product_desktopimage` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_product`
--

INSERT INTO `tbl_product` (`ID`, `product_name`, `product_price`, `product_description`, `product_mobileimage`, `product_desktopimage`) VALUES
(1, 'ThermoSecure_regular', '$350', 'HouseCom™ ThermoSecure™ System is a fully digital, hardwired and wireless (WiFi, Bluetooth) enabled home personal and secure environment control system. \r\nwidth: 305cm\r\nheight:108cm\r\n', 'thermostat.jpg', 'thermostat_desktop.jpg.jpg'),
(2, 'ThermoSecure_mobile', '$270', 'HouseCom™ ThermoSecure™ System is a fully digital, hardwired and wireless (WiFi, Bluetooth) enabled home personal and secure environment control system. \r\nwidth: 183cm\r\nheight:64cm\r\n', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_product_color`
--

DROP TABLE IF EXISTS `tbl_product_color`;
CREATE TABLE IF NOT EXISTS `tbl_product_color` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`ID`, `product_id`, `color_id`) VALUES
(6, 2, 3),
(5, 2, 2),
(4, 2, 1),
(3, 1, 3),
(2, 1, 2),
(1, 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
