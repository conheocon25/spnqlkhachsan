-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2013 at 04:53 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qlkhsan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `h3d_app`
--

CREATE TABLE IF NOT EXISTS `h3d_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `banner` varchar(125) CHARACTER SET utf8 NOT NULL,
  `prefix` varchar(50) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(256) CHARACTER SET utf8 NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_activity` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(4) NOT NULL,
  `page_view` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `h3d_app`
--

INSERT INTO `h3d_app` (`id`, `name`, `phone`, `address`, `email`, `banner`, `prefix`, `alias`, `date_created`, `date_modified`, `date_activity`, `type`, `page_view`) VALUES
(1, 'Karaoke Ba Đức', '0945 03 07 09', 'Phó Cơ Điều P3 - TPVL', '', 'data/images/banner/logo.png', 'h3d_', 'h3d_', '2012-06-30 17:00:00', '0000-00-00 00:00:00', '2012-12-26 07:28:02', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_category`
--

CREATE TABLE IF NOT EXISTS `h3d_category` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` binary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `h3d_category`
--

INSERT INTO `h3d_category` (`id`, `name`, `picture`) VALUES
(3, 'BEER', NULL),
(8, 'NƯỚC GIẢI KHÁT', NULL),
(11, 'THUỐC HÚT', NULL),
(12, 'THỨC ĂN', NULL),
(13, 'KHÁC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_collect_customer`
--

CREATE TABLE IF NOT EXISTS `h3d_collect_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcustomer` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_customer_collect_1` (`idcustomer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `h3d_collect_customer`
--

INSERT INTO `h3d_collect_customer` (`id`, `idcustomer`, `date`, `value`, `note`) VALUES
(2, 1, '2013-05-18', 112, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_collect_general`
--

CREATE TABLE IF NOT EXISTS `h3d_collect_general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_term` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_collect_1` (`id_term`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `h3d_collect_general`
--

INSERT INTO `h3d_collect_general` (`id`, `id_term`, `date`, `value`, `note`) VALUES
(5, 1, '2013-05-18', 101, 'a1'),
(6, 2, '2013-09-09', 10111, '1');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_config`
--

CREATE TABLE IF NOT EXISTS `h3d_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `h3d_config`
--

INSERT INTO `h3d_config` (`id`, `param`, `value`) VALUES
(1, 'DON_LANH_NGAY', '200000'),
(2, 'DON_LANH_GIO', '60000'),
(3, 'DON_QUAT_NGAY', '160000'),
(4, 'DON_QUAT_GIO', '40000'),
(5, 'DOI_LANH_NGAY', '250000'),
(6, 'DON_LANH_NGAY_LO', '20000'),
(7, 'DON_LANH_GIO_LO', '20000'),
(8, 'DON_QUAT_NGAY_LO', '20000'),
(9, 'DON_QUAT_GIO_LO', '20000'),
(10, 'DOI_LANH_NGAY_LO', '30000'),
(11, 'DON_QUAT_DEM', '120000'),
(12, 'DON_QUAT_DEM_LO', '20000'),
(13, 'DON_LANH_DEM', '160000'),
(14, 'DON_LANH_DEM_LO', '20000'),
(15, 'DOI_LANH_DEM', '210000'),
(16, 'DOI_LANH_DEM_LO', '30000'),
(17, 'ROW_PER_PAGE', '12'),
(18, 'GUEST_VISIT', '51');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_course`
--

CREATE TABLE IF NOT EXISTS `h3d_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcategory` int(25) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price1` bigint(20) NOT NULL,
  `price2` bigint(20) NOT NULL,
  `price3` bigint(20) NOT NULL,
  `price4` bigint(20) NOT NULL,
  `picture` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_field` (`idcategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=141 ;

--
-- Dumping data for table `h3d_course`
--

INSERT INTO `h3d_course` (`id`, `idcategory`, `name`, `shortname`, `unit`, `price1`, `price2`, `price3`, `price4`, `picture`) VALUES
(15, 11, 'Thuốc Hút', 'Thuốc Hút', 'Gói', 25000, 0, 0, 0, NULL),
(53, 8, 'Trà Xanh', 'Trà Xanh', 'Chai', 12000, 0, 0, 0, NULL),
(54, 8, 'C2', 'C2', 'Chai', 12000, 0, 0, 0, NULL),
(55, 8, 'Dr Thanh', 'Dr Thanh', 'Chai', 12000, 0, 0, 0, NULL),
(56, 8, 'Nước Yến', 'Nước Yến', 'Lon', 15000, 0, 0, 0, NULL),
(108, 3, 'HENIKEN', 'HENIKEN', 'Lon', 25000, 0, 0, 0, ''),
(113, 3, 'SÀI GÒN XK', 'SÀI GÒN XK', 'Lon', 18000, 0, 0, 0, ''),
(114, 3, 'BIA 333', 'BIA 333', 'Lon', 18000, 0, 0, 0, ''),
(115, 11, 'Thuốc 555', 'Thuốc 555', 'Gói', 30000, 0, 0, 0, ''),
(116, 11, 'Thuốc Craven', 'Thuốc Craven', 'Gói', 25000, 0, 0, 0, ''),
(122, 12, 'Chewing Gum', 'Chewing Gum', 'Cây', 6000, 0, 0, 0, ''),
(126, 8, 'Lavie', 'Lavie', 'Chai', 10000, 0, 0, 0, ''),
(127, 8, 'Pepsi', 'Pepsi', 'Lon', 12000, 0, 0, 0, ''),
(128, 8, '7 Up', '7 Up', 'Lon', 12000, 0, 0, 0, ''),
(129, 8, 'Nước Cam', 'Nước Cam', 'Lon', 12000, 0, 0, 0, ''),
(131, 12, 'Khăn Lạnh', 'Khăn Lạnh', 'Cái', 2000, 0, 0, 0, ''),
(136, 8, 'Red_Bull', 'Red_Bull', 'Lon', 15000, 0, 0, 0, ''),
(139, 12, 'Mì Tôm', 'Mì Tôm', 'Tô', 10000, 0, 0, 0, ''),
(140, 12, 'Mì Tôm Trứng', 'Mì Tôm Trứng', 'Tô', 15000, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_course_default`
--

CREATE TABLE IF NOT EXISTS `h3d_course_default` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_type_room` int(11) NOT NULL,
  `id_course` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_type_room` (`id_type_room`),
  KEY `id_course` (`id_course`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `h3d_course_default`
--

INSERT INTO `h3d_course_default` (`id`, `id_type_room`, `id_course`, `count`, `price`) VALUES
(2, 1, 115, 2, 0),
(3, 1, 54, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_customer`
--

CREATE TABLE IF NOT EXISTS `h3d_customer` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `card` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `h3d_customer`
--

INSERT INTO `h3d_customer` (`id`, `name`, `type`, `card`, `phone`, `address`, `note`, `discount`) VALUES
(1, 'Khách Hàng', 0, '', '', 'Vãng lai', 'Vãng lai', 0),
(6, 'Lê Nguyễn Đông Khoa', 1, '', '', 'Vĩnh Long', '', 0),
(10, 'Lê Hồng Đức', 1, '', '0918585203', 'Cty TNHH MTV Ba Đức Vĩnh Long', 'Giám Đốc', 0),
(11, 'Lê Sâm Tuôl', 1, '331372896', '', '', '', 0),
(12, 'Phạm Hữu Vĩnh Phước', 1, '331531512', '', '', '', 0),
(13, 'Mai Văn Hai', 1, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_domain`
--

CREATE TABLE IF NOT EXISTS `h3d_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `h3d_domain`
--

INSERT INTO `h3d_domain` (`id`, `name`) VALUES
(1, 'TRỆT KHU_A'),
(2, 'TRỆT KHU_B'),
(3, 'LẦU 1 KHU_A'),
(4, 'LẦU 1 KHU_B');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_employee`
--

CREATE TABLE IF NOT EXISTS `h3d_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(2) NOT NULL,
  `phone` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `h3d_employee`
--

INSERT INTO `h3d_employee` (`id`, `name`, `job`, `gender`, `phone`, `address`) VALUES
(1, 'Nguyễn Hồng Châu', '', 1, '0919570207', 'Hiếu Phụng, Vũng Liêm, Vĩnh Long'),
(3, 'Phan Lê Hữu Phúc', '', 0, '0986468896', 'Mỹ Long, Cao Lãnh, Đồng Tháp');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_guest`
--

CREATE TABLE IF NOT EXISTS `h3d_guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) CHARACTER SET latin1 NOT NULL,
  `entry_time` varchar(32) CHARACTER SET latin1 NOT NULL,
  `exit_time` varchar(32) CHARACTER SET latin1 NOT NULL,
  `agent` varchar(16) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `h3d_guest`
--


-- --------------------------------------------------------

--
-- Table structure for table `h3d_order_import`
--

CREATE TABLE IF NOT EXISTS `h3d_order_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsupplier` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_order_import_1` (`idsupplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `h3d_order_import`
--

INSERT INTO `h3d_order_import` (`id`, `idsupplier`, `date`, `description`) VALUES
(1, 1, '2012-04-07', 'ở dưới bét xem nó có hiển thị ra không ?'),
(2, 1, '2012-04-01', 'có thử'),
(3, 1, '2012-08-05', 'chúng ta thử xem'),
(4, 1, '2012-08-08', 'Hạnh ơi hạnh à'),
(5, 1, '2012-07-23', 'thử heng'),
(7, 1, '2012-08-01', 'thằng này thế mà được'),
(8, 1, '2012-09-11', 'thử nghiệm nhé được không em ?'),
(10, 1, '2012-08-24', ''),
(11, 1, '2012-08-23', ''),
(12, 1, '2012-08-22', ''),
(13, 1, '2012-08-19', 'thử nè'),
(16, 6, '2013-03-10', ''),
(17, 9, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_order_import_detail`
--

CREATE TABLE IF NOT EXISTS `h3d_order_import_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idorder` int(11) NOT NULL,
  `idresource` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_order_import_detail_1` (`idorder`),
  KEY `h3d_order_import_detail_2` (`idresource`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `h3d_order_import_detail`
--

INSERT INTO `h3d_order_import_detail` (`id`, `idorder`, `idresource`, `count`, `price`) VALUES
(1, 1, 1, 20, 1000),
(3, 1, 2, 10, 8000),
(4, 4, 1, 8, 10000),
(6, 4, 2, 19, 8000),
(7, 4, 3, 2, 12000),
(8, 5, 2, 3, 12000),
(9, 5, 1, 12, 10000),
(10, 5, 3, 6, 12000),
(11, 1, 3, 11, 12000),
(12, 2, 1, 11, 10000),
(13, 2, 2, 11, 8000),
(14, 3, 1, 3, 10000),
(15, 3, 2, 20, 8000),
(16, 3, 3, 4, 12000),
(18, 7, 1, 11, 10000),
(19, 7, 2, 11, 8000),
(20, 7, 3, 1, 12000),
(22, 2, 3, 21, 12000),
(28, 13, 1, 1, 3000),
(29, 7, 14, 2, 2000),
(30, 13, 2, 1, 8000),
(31, 13, 3, 1, 12000),
(32, 12, 1, 11, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_paid_employee`
--

CREATE TABLE IF NOT EXISTS `h3d_paid_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idemployee` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_employee_paid_1` (`idemployee`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `h3d_paid_employee`
--

INSERT INTO `h3d_paid_employee` (`id`, `idemployee`, `date`, `value`, `note`) VALUES
(1, 1, '2012-09-20', 1500000, 'lương tháng 9'),
(2, 1, '2012-08-19', 200000, 'Ứng lương tháng 8');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_paid_general`
--

CREATE TABLE IF NOT EXISTS `h3d_paid_general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_term` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k3d_paid_1` (`id_term`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `h3d_paid_general`
--

INSERT INTO `h3d_paid_general` (`id`, `id_term`, `date`, `value`, `note`) VALUES
(1, 1, '2013-04-10', 3500000, 'Thử 2'),
(2, 1, '2013-04-08', 300000, 'Đóng tiền nước'),
(3, 1, '2013-04-01', 2300000, 'Thử 2');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_paid_pay_roll`
--

CREATE TABLE IF NOT EXISTS `h3d_paid_pay_roll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idemployee` int(11) NOT NULL,
  `date` date NOT NULL,
  `value_base` int(11) NOT NULL,
  `value_sub` int(11) NOT NULL,
  `value_pre` int(11) NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_paid_pay_roll_1` (`idemployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `h3d_paid_pay_roll`
--


-- --------------------------------------------------------

--
-- Table structure for table `h3d_paid_supplier`
--

CREATE TABLE IF NOT EXISTS `h3d_paid_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsupplier` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_supplier_paid_1` (`idsupplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `h3d_paid_supplier`
--

INSERT INTO `h3d_paid_supplier` (`id`, `idsupplier`, `date`, `value`, `note`) VALUES
(1, 1, '2012-08-01', 2300000, 'được không ?'),
(2, 1, '2012-07-03', 350000, 'Ghi chú gì đây'),
(3, 1, '2012-07-26', 750000, 'Ghi ghi gì gì đó'),
(8, 6, '2012-09-19', 1000000, 'Thử nè được không đó !'),
(9, 1, '2012-09-19', 1000000, 'lung tung quá đi'),
(11, 1, '2012-01-01', 123, 'sdfdsfggf'),
(12, 1, '2012-09-24', 1230000, 'đâu biết'),
(13, 1, '2012-09-24', 1213232, ''),
(14, 1, '2012-09-24', 34243243, ''),
(15, 1, '2012-09-24', 21323, ''),
(16, 1, '2012-09-24', 123323, ''),
(17, 1, '2012-09-24', 21323, '');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_r2c`
--

CREATE TABLE IF NOT EXISTS `h3d_r2c` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_course` int(11) NOT NULL,
  `id_resource` int(11) NOT NULL,
  `value1` int(11) NOT NULL,
  `value2` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `r3d_r2c_1` (`id_course`),
  KEY `r3d_r2c_2` (`id_resource`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `h3d_r2c`
--


-- --------------------------------------------------------

--
-- Table structure for table `h3d_resource`
--

CREATE TABLE IF NOT EXISTS `h3d_resource` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `idsupplier` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_resource_1` (`idsupplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `h3d_resource`
--

INSERT INTO `h3d_resource` (`id`, `idsupplier`, `name`, `unit`, `price`, `description`) VALUES
(1, 1, 'Nước đá ống', 'Chai', 3000, 'Nước đá dùng để uống trà, cafe'),
(2, 1, 'Nước đá ướp', 'kg', 8000, 'Dùng để ướp trái cây'),
(3, 1, 'Nước đá viên', 'kg', 12000, 'Dùng uống tẩy'),
(14, 1, 'Nước đá tủ lạnh', 'kg', 2000, 'Nước đá lấy từ tủ lạnh nhà'),
(17, 6, 'BÁNH', 'Bịch', 0, ''),
(19, 8, 'Heniken', 'Chai', 0, ''),
(20, 8, 'Heniken', 'Lon', 0, ''),
(21, 8, 'Sài gòn đỏ', 'Chai', 0, ''),
(22, 8, 'Sài gòn XK', 'Chai', 0, ''),
(23, 8, 'Sài Gòn XK', 'Lon', 0, ''),
(24, 8, 'Bia 333', 'Lon', 0, ''),
(25, 8, 'Tiger Bạc', 'Chai', 0, ''),
(26, 8, 'Tiger Đỏ', 'Chai', 0, ''),
(27, 6, 'XÚC XÍCH', 'Bịch', 0, ''),
(28, 6, 'SING GUM', 'Bịch', 0, ''),
(29, 6, 'CHẢ GIÒ', 'Bịch', 0, ''),
(30, 6, 'KHÔ BÒ', 'Bịch', 0, ''),
(31, 6, 'MÍT SẤY', 'Bịch', 0, ''),
(32, 6, 'ĐẬU PHỘNG ', 'Bịch', 0, ''),
(34, 9, 'TRÁI CÂY', 'Dĩa', 0, ''),
(35, 9, 'ĐẬU PHỘNG SẤY KHÔ', 'Bịch', 0, ''),
(36, 9, 'ĐẬU PHỘNG CHIÊN GIÒN', 'Bịch', 0, ''),
(39, 9, 'THUỐC MÈO', 'Gói', 0, ''),
(40, 9, 'THUỐC 555', 'Gói', 0, ''),
(41, 9, 'THUỐC JET', 'Gói', 0, ''),
(42, 9, 'THUỐC HERO', 'Gói', 0, ''),
(43, 9, 'QUẸT GAS', 'Cái', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_session`
--

CREATE TABLE IF NOT EXISTS `h3d_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtable` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idcustomer` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datetimeend` datetime DEFAULT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `discount_value` int(11) NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `surtax` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idtable` (`idtable`),
  KEY `iduser` (`iduser`),
  KEY `h3d_session_3` (`idcustomer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1157 ;

--
-- Dumping data for table `h3d_session`
--

INSERT INTO `h3d_session` (`id`, `idtable`, `iduser`, `idcustomer`, `datetime`, `datetimeend`, `note`, `status`, `discount_value`, `discount_percent`, `surtax`, `payment`, `value`) VALUES
(10, 4, 3, 1, '2013-04-01 21:30:00', '2013-04-01 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(11, 3, 3, 1, '2013-04-01 22:15:00', '2013-04-01 23:00:00', '', 1, 0, 0, 0, 0, 60000),
(18, 42, 3, 1, '2013-04-01 23:45:00', '2013-04-02 11:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 128000),
(19, 17, 3, 1, '2013-04-02 09:45:00', '2013-04-02 10:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(20, 27, 3, 1, '2013-04-02 12:05:00', '2013-04-02 13:10:00', '', 1, 0, 0, 0, 0, 60000),
(28, 42, 3, 1, '2013-04-02 17:25:00', '2013-04-03 11:00:00', '', 1, 0, 0, 0, 0, 200000),
(29, 4, 3, 1, '2013-04-02 18:20:00', '2013-04-02 19:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(30, 37, 3, 1, '2013-04-02 20:50:00', '2013-04-03 11:00:00', '', 1, 0, 0, 0, 0, 200000),
(31, 3, 3, 1, '2013-04-02 21:35:00', '2013-04-02 22:30:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(32, 17, 3, 1, '2013-04-02 22:35:00', '2013-04-02 23:40:00', '', 1, 0, 0, 0, 0, 60000),
(33, 43, 3, 1, '2013-04-03 00:30:00', '2013-04-03 07:30:00', '2 tô mì trứng 30k. phụ thu 40k tính theo giá ban đ', 1, 0, 0, 70000, 0, 276000),
(34, 45, 3, 1, '2013-04-03 00:30:00', '2013-04-03 07:00:00', '1 tô mì trứng 15k. phụ thu 40k tính theo giá phòng', 1, 0, 0, 55000, 0, 245000),
(35, 46, 3, 1, '2013-04-03 00:30:00', '2013-04-03 07:00:00', 'phụ thu 40k, tính theo giá phòng ban đầu', 1, 0, 0, 40000, 0, 200000),
(36, 17, 3, 1, '2013-04-03 06:55:00', '2013-04-03 07:35:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(37, 36, 3, 1, '2013-04-03 13:10:00', '2013-04-03 14:37:00', '', 1, 0, 0, 0, 0, 60000),
(38, 3, 3, 1, '2013-04-04 00:00:00', '2013-04-04 01:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(39, 4, 3, 1, '2013-04-04 00:00:00', '2013-04-04 01:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(40, 37, 3, 1, '2013-04-04 09:40:00', '2013-04-04 13:25:00', 'tính theo giá đợt đầu', 1, 0, 0, 60000, 0, 208000),
(41, 4, 3, 1, '2013-04-04 12:00:00', '2013-04-04 12:20:00', '', 1, 0, 0, 0, 0, 60000),
(42, 27, 3, 1, '2013-04-04 15:05:00', '2013-04-04 16:00:00', '', 1, 0, 0, 0, 0, 80000),
(43, 37, 3, 1, '2013-04-04 16:55:00', '2013-04-04 20:00:00', '', 1, 0, 0, 0, 0, 120000),
(44, 43, 3, 1, '2013-04-04 16:30:00', '2013-04-04 18:25:00', '', 1, 0, 0, 0, 0, 90000),
(45, 32, 3, 1, '2013-04-04 17:25:00', '2013-04-05 10:00:00', '', 1, 0, 0, 0, 0, 265000),
(46, 36, 3, 1, '2013-04-04 18:05:00', '2013-04-04 19:00:00', '', 1, 0, 0, 0, 0, 60000),
(48, 4, 3, 1, '2013-04-04 22:10:00', '2013-04-05 00:45:00', '', 1, 0, 0, 0, 0, 120000),
(50, 36, 3, 1, '2013-04-05 02:45:00', '2013-04-05 11:45:00', '', 1, 0, 0, 0, 0, 180000),
(54, 16, 3, 1, '2013-04-05 04:00:00', '2013-04-05 05:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(55, 4, 3, 1, '2013-04-05 11:50:00', '2013-04-05 12:50:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(56, 16, 3, 1, '2013-04-05 14:55:00', '2013-04-05 16:05:00', '', 1, 0, 0, 0, 0, 68000),
(57, 3, 3, 1, '2013-04-05 19:40:00', '2013-04-05 20:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(58, 4, 3, 1, '2013-04-05 19:40:00', '2013-04-05 20:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(59, 17, 3, 1, '2013-04-05 19:40:00', '2013-04-05 20:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(65, 41, 3, 1, '2013-04-06 01:45:00', '2013-04-06 06:30:00', '', 1, 0, 0, 0, 0, 160000),
(66, 42, 3, 1, '2013-04-06 01:45:00', '2013-04-06 04:45:00', '', 1, 0, 0, 0, 0, 128000),
(67, 3, 3, 1, '2013-04-06 02:30:00', '2013-04-06 03:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(68, 4, 3, 1, '2013-04-06 02:30:00', '2013-04-06 03:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(69, 17, 3, 1, '2013-04-06 02:30:00', '2013-04-06 03:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(70, 37, 3, 1, '2013-04-05 16:00:00', '2013-04-06 17:00:00', '', 1, 0, 0, 0, 0, 362000),
(71, 27, 3, 1, '2013-04-06 08:05:00', '2013-04-06 11:35:00', '', 1, 0, 0, 0, 0, 140000),
(72, 4, 3, 1, '2013-04-06 13:05:00', '2013-04-06 14:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(73, 4, 3, 1, '2013-04-06 15:30:00', '2013-04-06 16:00:00', '', 1, 0, 0, 0, 0, 60000),
(74, 3, 3, 1, '2013-04-06 17:00:00', '2013-04-06 18:00:00', 'tính theo giá phòng quạt', 1, 20000, 0, 0, 0, 40000),
(75, 17, 3, 1, '2013-04-06 22:40:00', '2013-04-07 11:00:00', '', 1, 0, 0, 0, 0, 190000),
(77, 45, 3, 1, '2013-04-07 01:00:00', '2013-04-07 11:00:00', '1 dĩa trái cây', 1, 0, 0, 50000, 0, 242000),
(78, 27, 3, 1, '2013-04-07 01:00:00', '2013-04-07 06:00:00', '', 1, 0, 0, 0, 0, 160000),
(79, 42, 3, 1, '2013-04-07 01:00:00', '2013-04-07 06:00:00', '', 1, 0, 0, 0, 0, 168000),
(82, 44, 3, 1, '2013-04-04 23:30:00', '2013-04-05 16:05:00', '', 1, 10000, 0, 0, 0, 310000),
(83, 41, 3, 1, '2013-04-05 02:45:00', '2013-04-05 14:35:00', 'Nguyễn Hồng Châu thu tiền', 1, 10000, 0, 0, 0, 205000),
(84, 37, 3, 1, '2013-04-05 03:20:00', '2013-04-05 06:45:00', 'Nguyễn Hồng Châu thu tiền', 1, 0, 0, 20000, 0, 140000),
(85, 3, 3, 1, '2013-04-05 04:00:00', '2013-04-05 05:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(87, 36, 3, 1, '2013-04-06 00:40:00', '2013-04-06 11:05:00', '', 1, 0, 0, 0, 0, 172000),
(89, 26, 3, 1, '2013-04-07 01:00:00', '2013-04-07 09:00:00', '', 1, 0, 0, 0, 0, 243000),
(90, 30, 3, 1, '2013-04-05 21:00:00', '2013-04-06 05:00:00', 'tính theo giá đợt đầu', 1, 40000, 0, 0, 0, 120000),
(93, 16, 3, 1, '2013-04-07 01:35:00', '2013-04-07 06:00:00', '', 1, 0, 0, 0, 0, 189000),
(94, 3, 3, 1, '2013-04-07 01:30:00', '2013-04-07 12:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 155000),
(95, 4, 3, 1, '2013-04-07 01:30:00', '2013-04-07 03:45:00', 'phòng quạt', 1, 30000, 0, 0, 0, 60000),
(97, 28, 3, 1, '2013-04-07 02:40:00', '2013-04-07 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(100, 43, 3, 1, '2013-04-07 05:30:00', '2013-04-07 07:50:00', '', 1, 0, 0, 0, 0, 98000),
(102, 3, 3, 1, '2013-04-07 12:30:00', '2013-04-07 13:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(103, 4, 3, 1, '2013-04-07 12:30:00', '2013-04-07 13:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(104, 3, 3, 1, '2013-04-07 15:40:00', '2013-04-07 16:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 59000),
(105, 27, 3, 1, '2013-04-07 17:40:00', '2013-04-07 18:40:00', '', 1, 0, 0, 0, 0, 60000),
(106, 17, 3, 1, '2013-04-07 18:20:00', '2013-04-08 12:00:00', '', 1, 0, 0, 0, 0, 257000),
(107, 3, 3, 1, '2013-04-07 21:25:00', '2013-04-07 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(108, 3, 3, 1, '2013-04-07 22:45:00', '2013-04-07 23:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(109, 4, 3, 1, '2013-04-07 22:45:00', '2013-04-07 23:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(111, 3, 3, 1, '2013-04-07 23:20:00', '2013-04-08 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(112, 4, 3, 1, '2013-04-07 23:20:00', '2013-04-08 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(113, 28, 3, 1, '2013-04-07 23:20:00', '2013-04-08 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(115, 16, 3, 1, '2013-04-07 23:50:00', '2013-04-08 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(116, 4, 3, 1, '2013-04-07 23:50:00', '2013-04-08 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(117, 17, 3, 1, '2013-04-07 23:50:00', '2013-04-08 00:00:00', 'phòng quạt ', 1, 20000, 0, 0, 0, 40000),
(118, 28, 3, 1, '2013-04-07 23:50:00', '2013-04-08 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(120, 3, 3, 1, '2013-04-07 23:50:00', '2013-04-08 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(121, 41, 3, 1, '2013-04-08 00:20:00', '2013-04-08 06:00:00', 'phòng quạt ', 1, 40000, 0, 0, 0, 143000),
(122, 36, 3, 1, '2013-04-08 00:30:00', '2013-04-08 08:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(124, 26, 3, 1, '2013-04-04 21:00:00', '2013-04-05 05:00:00', 'tính theo giá đợt đầu', 1, 40000, 0, 0, 0, 210000),
(126, 3, 3, 1, '2013-04-08 16:00:00', '2013-04-08 16:30:00', 'phòng quạt ', 1, 20000, 0, 0, 0, 40000),
(127, 3, 3, 1, '2013-04-08 19:55:00', '2013-04-08 20:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(128, 4, 3, 1, '2013-04-08 19:55:00', '2013-04-08 20:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(129, 4, 3, 1, '2013-04-08 23:15:00', '2013-04-09 00:00:00', '', 1, 0, 0, 0, 0, 84000),
(130, 3, 3, 1, '2013-04-09 01:55:00', '2013-04-09 02:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(131, 4, 3, 1, '2013-04-09 01:55:00', '2013-04-09 02:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(132, 4, 3, 1, '2013-04-09 12:15:00', '2013-04-09 13:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(133, 42, 3, 1, '2013-04-09 13:00:00', '2013-04-09 19:20:00', '', 1, 0, 0, 0, 0, 180000),
(135, 37, 3, 1, '2013-04-09 17:35:00', '2013-04-10 06:00:00', '', 1, 0, 0, 0, 0, 200000),
(136, 26, 3, 1, '2013-04-09 19:30:00', '2013-04-10 07:00:00', 'Nguyễn Hồng Châu thu tiền', 1, 40000, 0, 0, 0, 210000),
(137, 3, 3, 1, '2013-04-09 20:30:00', '2013-04-09 21:01:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(138, 16, 3, 1, '2013-04-09 20:30:00', '2013-04-09 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(139, 4, 3, 1, '2013-04-09 20:30:00', '2013-04-09 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(140, 17, 3, 1, '2013-04-09 20:30:00', '2013-04-09 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(141, 32, 3, 1, '2013-04-09 22:15:00', '2013-04-09 23:00:00', 'Phan Lê Hữu Phúc thu tiền', 1, 150000, 0, 0, 0, 68000),
(143, 41, 3, 1, '2013-04-10 00:20:00', '2013-04-10 19:00:00', 'Phan lê Hữu Phúc thu tiền', 1, 0, 0, 60000, 0, 486000),
(144, 4, 3, 1, '2013-04-10 00:30:00', '2013-04-10 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(145, 3, 3, 1, '2013-04-10 00:30:00', '2013-04-10 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(146, 16, 3, 1, '2013-04-10 00:30:00', '2013-04-10 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(147, 42, 3, 1, '2013-04-10 01:15:00', '2013-04-10 06:00:00', 'tính tiền hột quẹt', 1, 0, 0, 4000, 0, 164000),
(148, 45, 3, 1, '2013-04-10 03:15:00', '2013-04-10 11:00:00', '', 1, 0, 0, 0, 0, 187000),
(149, 40, 3, 1, '2013-04-10 03:15:00', '2013-04-10 16:00:00', '', 1, 0, 0, 0, 0, 265000),
(150, 30, 3, 1, '2013-04-10 03:50:00', '2013-04-10 19:00:00', 'phan lê hữu phúc thu tiền', 1, 0, 0, 16000, 0, 272000),
(151, 27, 3, 1, '2013-04-10 04:00:00', '2013-04-10 16:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 224000),
(152, 4, 3, 1, '2013-04-10 12:55:00', '2013-04-10 13:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(154, 42, 3, 1, '2013-04-10 17:15:00', '2013-04-11 11:00:00', '', 1, 0, 0, 0, 0, 200000),
(155, 3, 3, 1, '2013-04-10 18:15:00', '2013-04-10 19:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(156, 16, 3, 1, '2013-04-10 18:15:00', '2013-04-10 19:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(157, 17, 3, 1, '2013-04-10 20:50:00', '2013-04-10 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(158, 3, 3, 1, '2013-04-10 22:20:00', '2013-04-10 23:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(161, 37, 3, 1, '2013-04-11 17:45:00', '2013-04-11 18:30:00', '', 1, 0, 0, 0, 0, 60000),
(162, 41, 3, 1, '2013-04-07 00:30:00', '2013-04-07 06:00:00', '', 1, 0, 0, 0, 0, 168000),
(164, 36, 3, 1, '2013-04-10 00:30:00', '2013-04-10 06:00:00', '', 1, 0, 0, 0, 0, 160000),
(165, 43, 3, 1, '2013-04-10 00:30:00', '2013-04-10 06:30:00', 'cộng thêm tiền phòng số 7 (1h phòng quạt)', 1, 0, 0, 40000, 0, 267000),
(166, 38, 3, 1, '2013-04-09 23:00:00', '2013-04-10 04:30:00', 'tiền mua hủ tiếu 15000đ.  ( Bạn anh khoa chưa than', 1, 202000, 0, 15000, 0, 0),
(172, 30, 3, 1, '2013-04-07 01:45:00', '2013-04-07 02:10:00', '', 1, 0, 0, 0, 0, 56000),
(173, 31, 3, 1, '2013-04-07 01:45:00', '2013-04-07 02:10:00', '', 1, 0, 0, 0, 0, 40000),
(174, 30, 3, 1, '2013-04-07 02:40:00', '2013-04-07 03:00:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(175, 31, 3, 1, '2013-04-07 02:40:00', '2013-04-07 03:00:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(176, 30, 3, 1, '2013-04-07 22:45:00', '2013-04-07 23:00:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(179, 42, 3, 1, '2013-04-11 20:00:00', '2013-04-12 11:00:00', '', 1, 0, 0, 0, 0, 200000),
(180, 26, 3, 1, '2013-04-11 20:30:00', '2013-04-12 07:20:00', '', 1, 0, 0, 0, 0, 250000),
(181, 29, 3, 1, '2013-04-11 22:10:00', '2013-04-11 23:00:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(183, 4, 3, 1, '2013-04-12 11:45:00', '2013-04-12 12:15:00', 'phòng quạt', 1, 0, 0, 0, 0, 60000),
(186, 42, 3, 1, '2013-04-12 17:35:00', '2013-04-13 11:40:00', '', 1, 0, 0, 0, 0, 232000),
(187, 38, 3, 1, '2013-04-12 16:05:00', '2013-04-13 22:00:00', '', 1, 0, 0, 0, 0, 447000),
(188, 41, 3, 1, '2013-04-12 17:50:00', '2013-04-12 18:30:00', '', 1, 0, 0, 0, 0, 60000),
(189, 26, 3, 1, '2013-04-12 17:55:00', '2013-04-13 08:00:00', 'tiền giặt đồ', 1, 0, 0, 90000, 0, 340000),
(190, 32, 3, 1, '2013-04-12 22:50:00', '2013-04-13 05:00:00', '1bịch khô bò 30k, 1 dĩa trái cây 50k', 1, 2000, 0, 80000, 0, 500000),
(191, 17, 3, 1, '2013-04-12 21:00:00', '2013-04-12 22:00:00', '', 1, 0, 0, 0, 0, 60000),
(192, 29, 3, 1, '2013-04-12 21:40:00', '2013-04-12 22:15:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(193, 17, 3, 1, '2013-04-12 23:00:00', '2013-04-13 00:00:00', '', 1, 0, 0, 0, 0, 60000),
(195, 36, 3, 1, '2013-04-13 13:25:00', '2013-04-13 15:10:00', '', 1, 0, 0, 0, 0, 90000),
(197, 26, 3, 1, '2013-04-13 23:00:00', '2013-04-14 08:00:00', '', 1, 0, 0, 0, 0, 309000),
(207, 29, 3, 1, '2013-04-14 14:40:00', '2013-04-14 15:20:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(209, 27, 3, 1, '2013-04-14 15:00:00', '2013-04-14 16:45:00', '', 1, 0, 0, 0, 0, 90000),
(210, 3, 3, 1, '2013-04-14 16:55:00', '2013-04-14 17:30:00', '', 1, 0, 0, 0, 0, 60000),
(212, 4, 3, 1, '2013-04-14 21:00:00', '2013-04-14 21:40:00', '', 1, 0, 0, 0, 0, 97000),
(213, 43, 3, 1, '2013-04-14 21:35:00', '2013-04-15 08:00:00', '', 1, 0, 0, 0, 0, 208000),
(214, 27, 3, 1, '2013-04-14 22:30:00', '2013-04-15 07:00:00', '', 1, 0, 0, 0, 0, 180000),
(215, 41, 3, 1, '2013-04-14 23:30:00', '2013-04-15 07:30:00', '', 1, 0, 0, 0, 0, 184000),
(217, 17, 3, 1, '2013-04-15 08:45:00', '2013-04-15 11:55:00', '', 1, 0, 0, 0, 0, 120000),
(218, 29, 3, 1, '2013-04-15 11:05:00', '2013-04-15 12:00:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(219, 36, 3, 1, '2013-04-15 13:35:00', '2013-04-15 14:50:00', '', 1, 0, 0, 0, 0, 70000),
(221, 27, 3, 1, '2013-04-15 19:35:00', '2013-04-15 21:10:00', '', 1, 0, 0, 0, 0, 90000),
(230, 37, 3, 1, '2013-04-16 12:00:00', '2013-04-16 14:00:00', '', 1, 0, 0, 0, 0, 90000),
(233, 16, 3, 1, '2013-04-16 21:15:00', '2013-04-16 22:00:00', '', 1, 0, 0, 0, 0, 72000),
(236, 42, 3, 1, '2013-04-17 00:45:00', '2013-04-17 09:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(242, 41, 3, 1, '2013-04-17 21:15:00', '2013-04-18 09:00:00', 'tính giá qua đêm', 1, 40000, 0, 0, 0, 185000),
(248, 42, 3, 1, '2013-04-18 15:00:00', '2013-04-18 16:00:00', '', 1, 0, 0, 0, 0, 60000),
(249, 36, 3, 1, '2013-04-18 16:25:00', '2013-04-18 17:00:00', '', 1, 0, 0, 0, 0, 84000),
(256, 29, 3, 1, '2013-04-18 19:40:00', '2013-04-18 20:30:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(257, 41, 3, 1, '2013-04-18 21:05:00', '2013-04-19 05:30:00', 'tính theo giá qua đêm', 1, 40000, 0, 0, 0, 168000),
(260, 37, 3, 1, '2013-04-18 23:30:00', '2013-04-19 07:00:00', '', 1, 0, 0, 0, 0, 160000),
(261, 43, 3, 1, '2013-04-18 23:30:00', '2013-04-19 07:00:00', '', 1, 0, 0, 0, 0, 160000),
(262, 26, 3, 1, '2013-04-18 23:30:00', '2013-04-19 07:00:00', '', 1, 0, 0, 0, 0, 210000),
(272, 27, 3, 1, '2013-04-19 02:00:00', '2013-04-19 04:00:00', '', 1, 0, 0, 0, 0, 129000),
(278, 36, 3, 1, '2013-04-19 03:00:00', '2013-04-19 07:45:00', '', 1, 0, 0, 0, 0, 184000),
(279, 45, 3, 1, '2013-04-19 03:00:00', '2013-04-19 07:45:00', '', 1, 0, 0, 0, 0, 168000),
(280, 40, 3, 1, '2013-04-19 03:00:00', '2013-04-19 07:45:00', '', 1, 0, 0, 0, 0, 168000),
(283, 37, 3, 1, '2013-04-19 16:25:00', '2013-04-20 06:00:00', '', 1, 0, 0, 0, 0, 212000),
(306, 16, 3, 1, '2013-04-19 00:10:00', '2013-04-19 00:40:00', 'phòng quạt ', 1, 20000, 0, 0, 0, 40000),
(307, 17, 3, 1, '2013-04-19 00:10:00', '2013-04-19 00:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(308, 28, 3, 1, '2013-04-19 00:10:00', '2013-04-19 00:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(309, 3, 3, 1, '2013-04-19 01:00:00', '2013-04-19 01:30:00', 'phòng quạt ', 1, 20000, 0, 0, 0, 40000),
(310, 4, 3, 1, '2013-04-19 01:00:00', '2013-04-19 01:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(311, 30, 3, 1, '2013-04-19 01:00:00', '2013-04-19 01:30:00', '', 1, 0, 0, 0, 0, 40000),
(312, 16, 3, 1, '2013-04-19 01:00:00', '2013-04-19 01:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(313, 17, 3, 1, '2013-04-19 01:00:00', '2013-04-19 01:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(315, 31, 3, 1, '2013-04-19 02:00:00', '2013-04-19 04:00:00', '', 1, 0, 0, 0, 0, 60000),
(316, 30, 3, 1, '2013-04-19 02:00:00', '2013-04-19 06:00:00', '', 1, 0, 0, 0, 0, 100000),
(317, 29, 3, 1, '2013-04-19 02:00:00', '2013-04-19 10:00:00', '', 1, 0, 0, 0, 0, 120000),
(318, 3, 3, 1, '2013-04-19 02:30:00', '2013-04-19 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(319, 4, 3, 1, '2013-04-19 02:30:00', '2013-04-19 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(320, 17, 3, 1, '2013-04-19 02:00:00', '2013-04-19 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(321, 4, 3, 1, '2013-04-19 10:00:00', '2013-04-19 10:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(322, 3, 3, 1, '2013-04-19 10:50:00', '2013-04-19 11:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 65000),
(323, 3, 3, 1, '2013-04-19 16:00:00', '2013-04-19 16:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(324, 28, 3, 1, '2013-04-19 17:50:00', '2013-04-19 18:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(325, 3, 3, 1, '2013-04-19 19:00:00', '2013-04-19 19:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(326, 17, 3, 1, '2013-04-19 19:25:00', '2013-04-19 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(327, 3, 3, 1, '2013-04-19 19:45:00', '2013-04-19 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(328, 16, 3, 1, '2013-04-19 20:30:00', '2013-04-19 22:15:00', '', 1, 0, 0, 0, 0, 106000),
(329, 4, 3, 1, '2013-04-19 20:30:00', '2013-04-19 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(330, 17, 3, 1, '2013-04-19 20:35:00', '2013-04-19 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(332, 16, 3, 1, '2013-04-19 21:00:00', '2013-04-19 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(333, 4, 3, 1, '2013-04-19 21:00:00', '2013-04-19 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(334, 28, 3, 1, '2013-04-19 21:00:00', '2013-04-19 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(335, 30, 3, 1, '2013-04-19 21:00:00', '2013-04-19 21:30:00', '', 1, 0, 0, 0, 0, 65000),
(336, 3, 3, 1, '2013-04-19 22:00:00', '2013-04-19 22:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(337, 4, 3, 1, '2013-04-19 22:10:00', '2013-04-19 22:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(338, 17, 3, 1, '2013-04-19 22:35:00', '2013-04-19 23:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(339, 3, 3, 1, '2013-04-19 23:30:00', '2013-04-19 23:50:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(340, 4, 3, 1, '2013-04-19 23:30:00', '2013-04-19 23:50:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(341, 17, 3, 1, '2013-04-19 23:30:00', '2013-04-19 23:50:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(342, 16, 3, 1, '2013-04-20 00:00:00', '2013-04-20 00:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(343, 3, 3, 1, '2013-04-20 00:00:00', '2013-04-20 00:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(344, 17, 3, 1, '2013-04-20 00:30:00', '2013-04-20 00:55:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(345, 3, 3, 1, '2013-04-20 00:45:00', '2013-04-20 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(346, 4, 3, 1, '2013-04-20 00:45:00', '2013-04-20 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(347, 28, 3, 1, '2013-04-20 00:45:00', '2013-04-20 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(348, 27, 3, 1, '2013-04-20 01:10:00', '2013-04-20 06:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(349, 16, 3, 1, '2013-04-20 00:45:00', '2013-04-20 07:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(350, 41, 3, 1, '2013-04-20 01:30:00', '2013-04-20 09:00:00', '', 1, 0, 0, 0, 0, 168000),
(351, 42, 3, 1, '2013-04-20 02:35:00', '2013-04-20 04:30:00', '', 1, 0, 0, 0, 0, 108000),
(352, 3, 3, 1, '2013-04-18 21:30:00', '2013-04-18 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 65000),
(353, 16, 3, 1, '2013-04-18 21:30:00', '2013-04-18 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(354, 4, 3, 1, '2013-04-18 19:40:00', '2013-04-18 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(355, 17, 3, 1, '2013-04-18 19:40:00', '2013-04-18 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(356, 16, 3, 1, '2013-04-18 19:40:00', '2013-04-18 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(357, 3, 3, 1, '2013-04-18 19:40:00', '2013-04-18 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(359, 28, 3, 1, '2013-04-18 19:40:00', '2013-04-18 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(360, 3, 3, 1, '2013-04-18 19:00:00', '2013-04-18 19:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(361, 3, 3, 1, '2013-04-18 14:25:00', '2013-04-18 14:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(362, 16, 3, 1, '2013-04-18 14:25:00', '2013-04-18 14:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(363, 3, 3, 1, '2013-04-18 09:25:00', '2013-04-18 09:50:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(364, 3, 3, 1, '2013-04-18 02:10:00', '2013-04-18 02:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(365, 16, 3, 1, '2013-04-18 01:00:00', '2013-04-18 05:15:00', '', 1, 0, 0, 0, 0, 170000),
(366, 16, 3, 1, '2013-04-17 21:00:00', '2013-04-17 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(367, 17, 3, 1, '2013-04-17 20:00:00', '2013-04-17 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(368, 4, 3, 1, '2013-04-17 20:00:00', '2013-04-17 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(369, 3, 3, 1, '2013-04-17 19:45:00', '2013-04-17 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(370, 4, 3, 1, '2013-04-17 09:00:00', '2013-04-17 10:00:00', '', 1, 0, 0, 0, 0, 60000),
(371, 4, 3, 1, '2013-04-17 00:20:00', '2013-04-17 00:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 52000),
(372, 3, 3, 1, '2013-04-16 17:10:00', '2013-04-16 17:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(373, 3, 3, 1, '2013-04-16 15:50:00', '2013-04-16 16:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(374, 3, 3, 1, '2013-04-16 09:00:00', '2013-04-16 09:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(376, 4, 3, 1, '2013-04-15 22:50:00', '2013-04-15 23:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(377, 4, 3, 1, '2013-04-15 20:00:00', '2013-04-15 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(378, 3, 3, 1, '2013-04-15 18:20:00', '2013-04-15 19:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(379, 3, 3, 1, '2013-04-15 03:00:00', '2013-04-15 03:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(380, 17, 3, 1, '2013-04-14 16:55:00', '2013-04-14 17:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(381, 17, 3, 1, '2013-04-14 14:40:00', '2013-04-14 15:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(382, 29, 3, 1, '2013-04-14 11:10:00', '2013-04-14 12:00:00', '', 1, 0, 0, 0, 0, 80000),
(383, 4, 3, 1, '2013-04-14 10:05:00', '2013-04-14 10:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(384, 17, 3, 1, '2013-04-14 10:05:00', '2013-04-14 10:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(385, 3, 3, 1, '2013-04-14 02:20:00', '2013-04-14 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(386, 28, 3, 1, '2013-04-14 02:15:00', '2013-04-14 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(387, 17, 3, 1, '2013-04-14 02:15:00', '2013-04-14 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(388, 3, 3, 1, '2013-04-14 02:00:00', '2013-04-14 02:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(389, 16, 3, 1, '2013-04-14 02:00:00', '2013-04-14 02:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(390, 4, 3, 1, '2013-04-14 02:00:00', '2013-04-14 02:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(392, 4, 3, 1, '2013-04-13 18:10:00', '2013-04-13 18:45:00', '', 1, 0, 0, 0, 0, 60000),
(393, 3, 3, 1, '2013-04-13 10:00:00', '2013-04-13 10:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(394, 3, 3, 1, '2013-04-12 13:45:00', '2013-04-12 14:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(395, 3, 3, 1, '2013-04-12 11:45:00', '2013-04-12 12:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(396, 17, 3, 1, '2013-04-12 11:45:00', '2013-04-12 12:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(397, 3, 3, 1, '2013-04-11 19:45:00', '2013-04-11 20:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(398, 4, 3, 1, '2013-04-11 19:45:00', '2013-04-11 20:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(399, 29, 3, 1, '2013-04-11 15:05:00', '2013-04-11 16:00:00', '', 1, 0, 0, 0, 0, 40000),
(400, 27, 3, 1, '2013-04-11 02:25:00', '2013-04-11 10:00:00', '', 1, 0, 0, 0, 0, 160000),
(401, 29, 3, 1, '2013-04-10 12:55:00', '2013-04-10 13:30:00', '', 1, 0, 0, 0, 0, 40000),
(402, 29, 3, 1, '2013-04-09 13:40:00', '2013-04-09 14:00:00', '', 1, 0, 0, 0, 0, 40000),
(403, 29, 3, 1, '2013-04-07 23:20:00', '2013-04-08 00:00:00', '', 1, 0, 0, 0, 0, 40000),
(404, 29, 3, 1, '2013-04-07 11:00:00', '2013-04-07 11:20:00', '', 1, 0, 0, 0, 0, 40000),
(405, 29, 3, 1, '2013-04-07 02:40:00', '2013-04-07 03:00:00', '', 1, 0, 0, 0, 0, 40000),
(406, 29, 3, 1, '2013-04-07 01:35:00', '2013-04-07 02:30:00', '', 1, 0, 0, 0, 0, 40000),
(407, 29, 3, 1, '2013-04-05 21:35:00', '2013-04-05 21:55:00', '', 1, 0, 0, 0, 0, 40000),
(567, 36, 3, 1, '2013-04-16 07:00:00', '2013-04-16 14:00:00', '', 1, 0, 0, 0, 0, 236000),
(568, 29, 3, 1, '2013-04-27 00:45:00', '2013-04-27 06:00:00', '', 1, 0, 0, 0, 0, 120000),
(569, 34, 3, 1, '2013-04-27 00:45:00', '2013-04-27 06:00:00', '', 1, 0, 0, 0, 0, 165000),
(570, 26, 3, 1, '2013-04-27 01:35:00', '2013-04-27 09:30:00', '', 1, 0, 0, 0, 0, 244000),
(571, 4, 3, 1, '2013-04-27 01:25:00', '2013-04-27 09:30:00', 'phòng quạt', 1, 40000, 0, 0, 0, 132000),
(572, 34, 3, 1, '2013-04-27 10:35:00', '2013-04-27 11:00:00', '', 1, 0, 0, 0, 0, 40000),
(573, 3, 3, 1, '2013-04-27 12:20:00', '2013-04-27 12:55:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(574, 4, 3, 1, '2013-04-27 15:30:00', '2013-04-27 17:00:00', '', 1, 0, 0, 0, 0, 90000),
(575, 28, 3, 1, '2013-04-27 16:20:00', '2013-04-27 17:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(576, 3, 3, 1, '2013-04-27 18:15:00', '2013-04-27 19:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(577, 16, 3, 1, '2013-04-27 19:45:00', '2013-04-27 20:05:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(578, 17, 3, 1, '2013-04-27 19:45:00', '2013-04-27 20:05:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(579, 28, 3, 1, '2013-04-27 20:30:00', '2013-04-27 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(580, 4, 3, 1, '2013-04-27 20:55:00', '2013-04-27 21:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(582, 3, 3, 1, '2013-04-21 03:55:00', '2013-04-21 04:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(583, 28, 3, 1, '2013-04-21 03:55:00', '2013-04-21 04:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(584, 3, 3, 1, '2013-04-21 03:00:00', '2013-04-21 03:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 65000),
(585, 4, 3, 1, '2013-04-21 03:00:00', '2013-04-21 03:30:00', 'phòng quạt', 1, 25000, 0, 0, 0, 35000),
(586, 3, 3, 1, '2013-04-27 21:20:00', '2013-04-27 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(587, 34, 3, 1, '2013-04-27 21:20:00', '2013-04-27 22:00:00', '', 1, 0, 0, 0, 0, 40000),
(588, 4, 3, 1, '2013-04-27 21:25:00', '2013-04-27 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(590, 16, 3, 1, '2013-04-27 22:40:00', '2013-04-27 23:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(591, 17, 3, 1, '2013-04-27 22:40:00', '2013-04-27 23:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(592, 26, 3, 1, '2013-04-27 22:40:00', '2013-04-28 05:45:00', '', 1, 0, 0, 0, 0, 210000),
(593, 35, 3, 1, '2013-04-27 22:40:00', '2013-04-28 08:45:00', '', 1, 0, 0, 0, 0, 120000),
(594, 28, 3, 1, '2013-04-27 23:00:00', '2013-04-27 23:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(595, 42, 3, 1, '2013-04-27 23:15:00', '2013-04-28 09:00:00', '', 1, 0, 0, 0, 0, 160000),
(596, 32, 3, 1, '2013-04-27 23:30:00', '2013-04-28 07:45:00', '1 bịch khô bò 30k, 1 bịch mít sấy 30k, 1 bịch cơm ', 1, 0, 0, 77000, 0, 557000),
(597, 3, 3, 1, '2013-04-27 23:40:00', '2013-04-28 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(598, 4, 3, 1, '2013-04-27 23:40:00', '2013-04-28 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(599, 16, 3, 1, '2013-04-28 00:00:00', '2013-04-28 00:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(600, 30, 3, 1, '2013-04-28 00:10:00', '2013-04-28 00:40:00', '', 1, 0, 0, 0, 0, 40000),
(601, 31, 3, 1, '2013-04-28 00:10:00', '2013-04-28 00:40:00', '', 1, 0, 0, 0, 0, 40000),
(602, 3, 3, 1, '2013-04-28 00:40:00', '2013-04-28 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(603, 4, 3, 1, '2013-04-28 00:40:00', '2013-04-28 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(604, 28, 3, 1, '2013-04-28 00:40:00', '2013-04-28 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(605, 17, 3, 1, '2013-04-28 00:40:00', '2013-04-28 01:05:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(606, 29, 3, 1, '2013-04-28 01:35:00', '2013-04-28 02:15:00', '', 1, 0, 0, 0, 0, 40000),
(607, 37, 3, 1, '2013-04-28 00:50:00', '2013-04-28 07:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(608, 37, 3, 1, '2013-04-28 10:00:00', '2013-04-28 11:35:00', '', 1, 0, 0, 0, 0, 90000),
(609, 41, 3, 1, '2013-04-28 10:35:00', '2013-04-28 13:15:00', '', 1, 0, 0, 0, 0, 120000),
(610, 4, 3, 1, '2013-04-28 10:50:00', '2013-04-28 11:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(611, 3, 3, 1, '2013-04-28 12:00:00', '2013-04-28 12:10:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(612, 41, 3, 1, '2013-04-28 18:00:00', '2013-04-28 19:00:00', '', 1, 0, 0, 0, 0, 85000),
(613, 3, 3, 1, '2013-04-28 18:30:00', '2013-04-28 18:50:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(614, 16, 3, 1, '2013-04-28 18:40:00', '2013-04-28 19:00:00', '', 1, 0, 0, 0, 0, 60000),
(615, 3, 3, 1, '2013-04-28 19:30:00', '2013-04-28 19:50:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(616, 30, 3, 1, '2013-04-28 20:05:00', '2013-04-28 20:30:00', '', 1, 0, 0, 0, 0, 40000),
(617, 28, 3, 1, '2013-04-28 20:30:00', '2013-04-28 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(618, 29, 3, 1, '2013-04-28 20:40:00', '2013-04-28 21:00:00', '', 1, 0, 0, 0, 0, 40000),
(619, 17, 3, 1, '2013-04-28 21:00:00', '2013-04-28 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(620, 27, 3, 1, '2013-04-28 20:30:00', '2013-04-29 06:50:00', '', 1, 0, 0, 0, 0, 200000),
(621, 4, 3, 1, '2013-04-28 21:45:00', '2013-04-28 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(622, 28, 3, 1, '2013-04-28 21:45:00', '2013-04-28 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(623, 29, 3, 1, '2013-04-28 22:25:00', '2013-04-28 23:00:00', '', 1, 0, 0, 0, 0, 40000),
(624, 4, 3, 1, '2013-04-28 23:30:00', '2013-04-29 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(625, 30, 3, 1, '2013-04-28 23:30:00', '2013-04-28 23:40:00', 'phòng quạt', 1, 0, 0, 0, 0, 40000),
(626, 31, 3, 1, '2013-04-28 23:30:00', '2013-04-28 23:40:00', '', 1, 0, 0, 0, 0, 40000),
(627, 28, 3, 1, '2013-04-29 00:00:00', '2013-04-29 00:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(628, 34, 3, 1, '2013-04-29 00:00:00', '2013-04-29 00:20:00', '', 1, 0, 0, 0, 0, 40000),
(629, 31, 3, 1, '2013-04-29 00:30:00', '2013-04-29 01:00:00', '', 1, 0, 0, 0, 0, 40000),
(630, 30, 3, 1, '2013-04-29 00:30:00', '2013-04-29 01:00:00', '', 1, 0, 0, 0, 0, 40000),
(631, 28, 3, 1, '2013-04-29 00:30:00', '2013-04-29 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(632, 34, 3, 1, '2013-04-29 00:30:00', '2013-04-29 01:00:00', '', 1, 0, 0, 0, 0, 40000),
(633, 3, 3, 1, '2013-04-29 01:36:00', '2013-04-29 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 79000),
(634, 16, 3, 1, '2013-04-29 01:40:00', '2013-04-29 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(635, 17, 3, 1, '2013-04-29 01:40:00', '2013-04-29 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(636, 40, 3, 1, '2013-04-29 02:00:00', '2013-04-29 07:00:00', 'Anh Tâm ', 1, 160000, 0, 0, 0, 15000),
(637, 28, 3, 1, '2013-04-29 02:25:00', '2013-04-29 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(638, 4, 3, 1, '2013-04-29 02:35:00', '2013-04-29 05:10:00', 'phòng quạt', 1, 40000, 0, 0, 0, 80000),
(639, 34, 3, 1, '2013-04-29 02:50:00', '2013-04-29 03:00:00', '', 1, 0, 0, 0, 0, 40000),
(640, 36, 3, 1, '2013-04-29 03:20:00', '2013-04-29 06:35:00', 'tính giá qua đêm', 1, 0, 0, 40000, 0, 160000),
(641, 37, 3, 1, '2013-04-29 08:10:00', '2013-04-30 07:35:00', 'nguyễn hồng châu thu tiền', 1, 80000, 0, 0, 0, 196000),
(642, 4, 3, 1, '2013-04-29 11:25:00', '2013-04-29 13:30:00', 'cafe 8k', 1, 0, 0, 8000, 0, 113000),
(643, 4, 3, 1, '2013-04-29 17:20:00', '2013-04-29 19:00:00', '', 1, 0, 0, 0, 0, 90000),
(644, 17, 3, 1, '2013-04-29 19:50:00', '2013-04-29 20:25:00', '', 1, 0, 0, 0, 0, 60000),
(645, 3, 3, 1, '2013-04-29 20:40:00', '2013-04-29 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(646, 16, 3, 1, '2013-04-29 21:30:00', '2013-04-29 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(647, 29, 3, 1, '2013-04-29 23:00:00', '2013-04-30 06:40:00', '', 1, 0, 0, 0, 0, 120000),
(648, 17, 3, 1, '2013-04-30 00:00:00', '2013-04-30 01:00:00', '', 1, 0, 0, 0, 0, 60000),
(649, 30, 3, 1, '2013-04-30 00:25:00', '2013-04-30 00:45:00', '', 1, 0, 0, 0, 0, 40000),
(650, 31, 3, 1, '2013-04-30 00:25:00', '2013-04-30 00:45:00', '', 1, 0, 0, 0, 0, 40000),
(651, 3, 3, 1, '2013-04-30 01:35:00', '2013-04-30 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(652, 41, 3, 1, '2013-04-30 03:00:00', '2013-04-30 04:20:00', '', 1, 0, 0, 0, 0, 68000),
(653, 28, 3, 1, '2013-04-30 03:30:00', '2013-04-30 03:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(654, 17, 3, 1, '2013-04-30 03:30:00', '2013-04-30 03:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(655, 4, 3, 1, '2013-04-30 09:35:00', '2013-04-30 10:05:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(656, 3, 3, 1, '2013-04-30 09:55:00', '2013-04-30 10:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(657, 4, 3, 1, '2013-04-30 13:40:00', '2013-04-30 14:35:00', '', 1, 0, 0, 0, 0, 60000),
(658, 16, 3, 1, '2013-04-30 14:45:00', '2013-04-30 15:05:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(659, 36, 3, 1, '2013-04-30 14:45:00', '2013-04-30 16:45:00', '', 1, 0, 0, 0, 0, 98000),
(660, 3, 3, 1, '2013-04-30 14:55:00', '2013-04-30 15:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(661, 3, 3, 1, '2013-04-30 15:35:00', '2013-04-30 16:00:00', '', 1, 0, 0, 0, 0, 80000),
(662, 4, 3, 1, '2013-04-30 15:35:00', '2013-04-30 16:00:00', '', 1, 0, 0, 0, 0, 80000),
(663, 17, 3, 1, '2013-04-30 15:35:00', '2013-04-30 16:00:00', '', 1, 0, 0, 0, 0, 80000),
(664, 27, 3, 1, '2013-04-30 15:20:00', '2013-04-30 16:50:00', '', 1, 0, 0, 0, 0, 100000),
(665, 4, 3, 1, '2013-04-30 17:35:00', '2013-04-30 18:30:00', '', 1, 0, 0, 0, 0, 60000),
(667, 34, 3, 1, '2013-04-30 18:15:00', '2013-05-01 06:35:00', '', 1, 0, 0, 0, 0, 168000),
(668, 30, 3, 1, '2013-04-30 19:20:00', '2013-04-30 20:00:00', '', 1, 0, 0, 0, 0, 40000),
(669, 3, 3, 1, '2013-04-30 19:20:00', '2013-04-30 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 52000),
(670, 42, 3, 1, '2013-04-30 19:40:00', '2013-05-01 07:00:00', '', 1, 0, 0, 0, 0, 200000),
(671, 4, 3, 1, '2013-04-30 19:50:00', '2013-04-30 20:10:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(672, 36, 3, 1, '2013-04-30 19:55:00', '2013-05-01 10:10:00', '', 1, 0, 0, 0, 0, 200000),
(673, 43, 3, 1, '2013-04-30 20:10:00', '2013-05-01 18:15:00', '', 1, 0, 0, 0, 0, 343000),
(674, 3, 3, 1, '2013-04-30 20:35:00', '2013-05-01 07:50:00', '', 1, 0, 0, 0, 0, 216000),
(675, 4, 3, 1, '2013-04-30 21:10:00', '2013-04-30 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(676, 16, 3, 1, '2013-04-30 21:40:00', '2013-04-30 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(677, 38, 3, 1, '2013-04-30 22:15:00', '2013-05-01 08:00:00', 'phụ thu thiệt hại lavabo', 1, 0, 0, 200000, 0, 360000),
(678, 45, 3, 1, '2013-04-30 22:30:00', '2013-05-01 09:00:00', '', 1, 0, 0, 0, 0, 182000),
(679, 44, 3, 1, '2013-04-30 22:50:00', '2013-05-01 08:00:00', '', 1, 0, 0, 0, 0, 168000),
(680, 17, 3, 1, '2013-04-30 22:50:00', '2013-04-30 23:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(681, 27, 3, 1, '2013-04-30 23:00:00', '2013-05-01 09:10:00', '', 1, 0, 0, 0, 0, 160000),
(682, 26, 3, 1, '2013-04-30 23:50:00', '2013-05-01 08:05:00', '', 1, 0, 0, 0, 0, 510000),
(683, 4, 3, 1, '2013-04-30 23:45:00', '2013-05-01 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(684, 28, 3, 1, '2013-04-30 23:45:00', '2013-05-01 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(685, 29, 3, 1, '2013-04-30 23:45:00', '2013-05-01 00:00:00', '', 1, 0, 0, 0, 0, 40000),
(686, 32, 3, 1, '2013-05-01 00:30:00', '2013-05-01 08:00:00', '', 1, 0, 0, 0, 0, 267000),
(687, 39, 3, 1, '2013-05-01 00:30:00', '2013-05-01 09:00:00', '', 1, 0, 0, 0, 0, 172000),
(688, 40, 3, 1, '2013-05-01 00:35:00', '2013-05-01 10:15:00', '', 1, 0, 0, 0, 0, 195000),
(689, 41, 3, 1, '2013-05-01 00:45:00', '2013-05-01 06:20:00', '', 1, 0, 0, 0, 0, 175000),
(690, 31, 3, 1, '2013-05-01 00:55:00', '2013-05-01 09:20:00', '', 1, 0, 0, 0, 0, 120000),
(691, 4, 3, 1, '2013-05-01 00:50:00', '2013-05-01 01:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(692, 35, 3, 1, '2013-05-01 01:30:00', '2013-05-01 09:00:00', '', 1, 0, 0, 0, 0, 144000),
(693, 28, 3, 1, '2013-05-01 02:15:00', '2013-05-01 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(694, 3, 3, 1, '2013-05-01 08:55:00', '2013-05-01 10:25:00', '', 1, 0, 0, 0, 0, 98000),
(695, 4, 3, 1, '2013-05-01 10:05:00', '2013-05-01 10:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(696, 17, 3, 1, '2013-05-01 10:05:00', '2013-05-01 10:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(697, 3, 3, 1, '2013-05-01 12:00:00', '2013-05-01 12:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(698, 4, 3, 1, '2013-05-01 13:15:00', '2013-05-01 13:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(699, 27, 3, 1, '2013-05-01 14:10:00', '2013-05-02 15:10:00', '', 1, 0, 0, 0, 0, 271000),
(700, 37, 3, 1, '2013-05-01 15:25:00', '2013-05-01 17:15:00', '', 1, 0, 0, 0, 0, 107000),
(701, 41, 3, 1, '2013-05-01 15:45:00', '2013-05-01 16:30:00', '', 1, 0, 0, 0, 0, 60000),
(702, 41, 3, 1, '2013-05-01 18:30:00', '2013-05-02 04:20:00', '', 1, 0, 0, 0, 0, 236000),
(703, 3, 3, 1, '2013-05-01 20:30:00', '2013-05-01 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(704, 42, 3, 1, '2013-05-01 20:35:00', '2013-05-02 06:00:00', '', 1, 0, 0, 0, 0, 296000),
(705, 3, 3, 1, '2013-05-01 21:40:00', '2013-05-01 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(706, 4, 3, 1, '2013-05-01 21:40:00', '2013-05-01 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(707, 17, 3, 1, '2013-05-01 21:40:00', '2013-05-01 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(708, 29, 3, 1, '2013-05-02 00:50:00', '2013-05-02 06:00:00', '', 1, 0, 0, 0, 0, 120000),
(709, 36, 3, 1, '2013-05-02 01:25:00', '2013-05-02 09:30:00', '', 1, 0, 0, 0, 0, 197000),
(710, 28, 3, 1, '2013-05-02 02:05:00', '2013-05-02 02:30:00', 'phòng quạt ', 1, 20000, 0, 0, 0, 40000),
(711, 17, 3, 1, '2013-05-02 02:05:00', '2013-05-02 02:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(712, 3, 3, 1, '2013-05-02 02:20:00', '2013-05-02 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(713, 4, 3, 1, '2013-05-02 02:20:00', '2013-05-02 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(714, 16, 3, 1, '2013-05-02 02:20:00', '2013-05-02 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(715, 34, 3, 1, '2013-05-02 02:20:00', '2013-05-02 03:00:00', '', 1, 0, 0, 0, 0, 40000),
(716, 4, 3, 1, '2013-05-02 16:10:00', '2013-05-02 16:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(717, 3, 3, 1, '2013-05-02 16:45:00', '2013-05-02 17:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(718, 17, 3, 1, '2013-05-02 19:40:00', '2013-05-02 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(719, 37, 3, 1, '2013-05-02 22:45:00', '2013-05-03 07:55:00', '', 1, 0, 0, 0, 0, 172000),
(720, 27, 3, 1, '2013-05-02 23:05:00', '2013-05-03 07:25:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(721, 36, 3, 1, '2013-05-02 23:35:00', '2013-05-03 08:05:00', '', 1, 0, 0, 0, 0, 184000),
(722, 17, 3, 1, '2013-05-03 02:10:00', '2013-05-03 02:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(723, 3, 3, 1, '2013-05-03 03:15:00', '2013-05-03 03:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(724, 30, 3, 1, '2013-05-03 03:25:00', '2013-05-03 03:50:00', '', 1, 0, 0, 0, 0, 39000),
(725, 34, 3, 1, '2013-05-03 03:25:00', '2013-05-03 03:50:00', '', 1, 0, 0, 0, 0, 39000),
(726, 16, 3, 1, '2013-05-03 03:30:00', '2013-05-03 04:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(727, 28, 3, 1, '2013-05-03 03:30:00', '2013-05-03 04:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(728, 17, 3, 1, '2013-05-03 04:10:00', '2013-05-03 04:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(729, 27, 3, 1, '2013-05-03 10:15:00', '2013-05-03 13:15:00', '', 1, 0, 0, 0, 0, 142000),
(730, 3, 3, 1, '2013-05-03 13:05:00', '2013-05-03 13:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(731, 36, 3, 1, '2013-05-03 15:10:00', '2013-05-04 09:20:00', '', 1, 0, 0, 0, 0, 200000),
(732, 16, 3, 1, '2013-05-03 19:30:00', '2013-05-03 20:00:00', '', 1, 0, 0, 0, 0, 60000),
(733, 17, 3, 1, '2013-05-03 21:05:00', '2013-05-03 21:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(734, 26, 3, 1, '2013-05-03 21:15:00', '2013-05-04 07:55:00', '', 1, 0, 0, 0, 0, 275000),
(735, 4, 3, 1, '2013-05-03 21:30:00', '2013-05-03 21:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(736, 3, 3, 1, '2013-05-03 22:00:00', '2013-05-03 22:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(737, 28, 3, 1, '2013-05-03 22:40:00', '2013-05-03 23:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(738, 32, 3, 1, '2013-05-03 23:00:00', '2013-05-04 06:45:00', '', 1, 0, 0, 0, 0, 232000),
(739, 17, 3, 1, '2013-05-04 00:20:00', '2013-05-04 00:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(740, 16, 3, 1, '2013-05-04 00:30:00', '2013-05-04 00:55:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(741, 4, 3, 1, '2013-05-04 00:30:00', '2013-05-04 00:55:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(742, 29, 3, 1, '2013-05-04 00:30:00', '2013-05-04 00:55:00', '', 1, 0, 0, 0, 0, 40000),
(743, 35, 3, 1, '2013-05-04 00:30:00', '2013-05-04 00:55:00', '', 1, 0, 0, 0, 0, 40000),
(744, 34, 3, 1, '2013-05-04 00:30:00', '2013-05-04 00:45:00', '', 1, 0, 0, 0, 0, 40000),
(745, 41, 3, 1, '2013-05-04 01:00:00', '2013-05-04 09:05:00', 'phòng quạt', 1, 40000, 0, 0, 0, 135000),
(746, 28, 3, 1, '2013-05-04 01:00:00', '2013-05-04 01:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(747, 31, 3, 1, '2013-05-04 01:00:00', '2013-05-04 01:30:00', '', 1, 0, 0, 0, 0, 40000),
(748, 42, 3, 1, '2013-05-04 01:30:00', '2013-05-04 06:00:00', '', 1, 1000, 0, 0, 0, 174000),
(749, 43, 3, 1, '2013-05-04 01:30:00', '2013-05-04 06:00:00', '', 1, 0, 0, 0, 0, 180000),
(750, 28, 3, 1, '2013-05-04 01:30:00', '2013-05-04 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(751, 29, 3, 1, '2013-05-04 01:30:00', '2013-05-04 02:00:00', '', 1, 0, 0, 0, 0, 40000),
(752, 30, 3, 1, '2013-05-04 01:30:00', '2013-05-04 02:00:00', '', 1, 0, 0, 0, 0, 40000),
(753, 17, 3, 1, '2013-05-04 01:30:00', '2013-05-04 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(754, 3, 3, 1, '2013-05-04 01:55:00', '2013-05-04 02:10:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(755, 34, 3, 1, '2013-05-04 01:55:00', '2013-05-04 02:10:00', '', 1, 0, 0, 0, 0, 40000),
(756, 3, 3, 1, '2013-05-04 02:30:00', '2013-05-04 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(757, 30, 3, 1, '2013-05-04 03:40:00', '2013-05-04 10:35:00', '', 1, 0, 0, 0, 0, 120000),
(758, 16, 3, 1, '2013-05-04 02:50:00', '2013-05-04 03:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(759, 17, 3, 1, '2013-05-04 02:50:00', '2013-05-04 03:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(760, 4, 3, 1, '2013-05-04 02:50:00', '2013-05-04 03:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(761, 28, 3, 1, '2013-05-04 02:50:00', '2013-05-04 03:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(762, 29, 3, 1, '2013-05-04 02:50:00', '2013-05-04 03:15:00', '', 1, 0, 0, 0, 0, 40000),
(763, 31, 3, 1, '2013-05-04 02:50:00', '2013-05-04 03:15:00', '', 1, 0, 0, 0, 0, 40000),
(944, 40, 3, 1, '2013-05-12 11:40:00', '2013-05-13 17:30:00', '', 1, 0, 0, 0, 0, 347000),
(946, 36, 3, 1, '2013-05-11 12:05:00', '2013-05-11 15:30:00', '', 1, 0, 0, 0, 0, 120000),
(947, 4, 3, 1, '2013-05-11 12:30:00', '2013-05-11 12:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(948, 37, 3, 1, '2013-05-11 14:10:00', '2013-05-12 15:00:00', '', 1, 0, 0, 0, 0, 285000),
(949, 17, 3, 1, '2013-05-11 14:25:00', '2013-05-11 14:55:00', '', 1, 0, 0, 0, 0, 84000),
(950, 3, 3, 1, '2013-05-11 15:20:00', '2013-05-11 16:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(951, 4, 3, 1, '2013-05-11 15:50:00', '2013-05-11 17:20:00', '', 1, 0, 0, 0, 0, 100000),
(952, 17, 3, 1, '2013-05-11 18:45:00', '2013-05-11 19:50:00', '', 1, 0, 0, 0, 0, 60000),
(953, 3, 3, 1, '2013-05-11 18:50:00', '2013-05-11 21:00:00', 'phòng quạt', 1, 30000, 0, 0, 0, 60000),
(954, 16, 3, 1, '2013-05-11 18:55:00', '2013-05-11 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(955, 29, 3, 1, '2013-05-11 19:00:00', '2013-05-11 20:00:00', '', 1, 0, 0, 0, 0, 40000),
(956, 41, 3, 1, '2013-05-11 19:25:00', '2013-05-11 21:00:00', '', 1, 0, 0, 0, 0, 105000),
(957, 42, 3, 1, '2013-05-11 20:45:00', '2013-05-12 06:00:00', '', 1, 0, 0, 0, 0, 200000),
(958, 43, 3, 1, '2013-05-11 20:45:00', '2013-05-12 06:00:00', '', 1, 0, 0, 0, 0, 200000),
(959, 4, 3, 1, '2013-05-11 22:20:00', '2013-05-12 06:00:00', '', 1, 0, 0, 0, 0, 160000),
(960, 36, 3, 1, '2013-05-11 22:45:00', '2013-05-12 09:00:00', '', 1, 0, 0, 0, 0, 184000),
(961, 16, 3, 1, '2013-05-11 23:20:00', '2013-05-12 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(962, 39, 3, 1, '2013-05-11 23:40:00', '2013-05-12 06:10:00', '', 1, 5000, 0, 0, 0, 170000),
(963, 40, 3, 1, '2013-05-12 00:10:00', '2013-05-12 10:00:00', '', 1, 0, 0, 0, 0, 172000),
(964, 17, 3, 1, '2013-05-12 00:00:00', '2013-05-12 00:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(965, 41, 3, 1, '2013-05-12 00:25:00', '2013-05-12 08:30:00', '', 1, 0, 0, 0, 0, 194000),
(966, 45, 3, 1, '2013-05-12 00:25:00', '2013-05-12 10:00:00', '', 1, 0, 0, 0, 0, 168000),
(967, 3, 3, 1, '2013-05-12 00:55:00', '2013-05-12 01:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(968, 17, 3, 1, '2013-05-12 01:20:00', '2013-05-12 07:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(969, 29, 3, 1, '2013-05-12 01:20:00', '2013-05-12 07:30:00', '', 1, 0, 0, 0, 0, 120000),
(970, 27, 3, 1, '2013-05-12 01:30:00', '2013-05-12 07:40:00', '', 1, 0, 0, 0, 0, 172000),
(971, 34, 3, 1, '2013-05-12 01:30:00', '2013-05-12 06:00:00', '', 1, 0, 0, 0, 0, 120000),
(972, 16, 3, 1, '2013-05-12 01:35:00', '2013-05-12 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(973, 3, 3, 1, '2013-05-12 01:45:00', '2013-05-12 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(974, 28, 3, 1, '2013-05-12 01:45:00', '2013-05-12 02:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(975, 30, 3, 1, '2013-05-12 01:45:00', '2013-05-12 02:00:00', '', 1, 0, 0, 0, 0, 40000),
(976, 31, 3, 1, '2013-05-12 01:45:00', '2013-05-12 02:00:00', '', 1, 0, 0, 0, 0, 40000),
(977, 3, 3, 1, '2013-05-12 03:00:00', '2013-05-12 03:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(978, 28, 3, 1, '2013-05-12 03:00:00', '2013-05-12 03:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(979, 16, 3, 1, '2013-05-12 03:00:00', '2013-05-12 03:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(981, 4, 3, 1, '2013-05-12 11:40:00', '2013-05-12 12:05:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(982, 17, 3, 1, '2013-05-12 13:30:00', '2013-05-12 16:10:00', '', 1, 0, 0, 0, 0, 150000),
(984, 3, 3, 1, '2013-05-12 18:05:00', '2013-05-12 18:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(985, 4, 3, 1, '2013-05-12 18:05:00', '2013-05-12 18:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(986, 4, 3, 1, '2013-05-12 19:30:00', '2013-05-12 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(987, 3, 3, 1, '2013-05-12 19:40:00', '2013-05-12 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(988, 17, 3, 1, '2013-05-12 19:55:00', '2013-05-12 20:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(989, 3, 3, 1, '2013-05-12 22:10:00', '2013-05-12 22:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(990, 4, 3, 1, '2013-05-12 22:10:00', '2013-05-12 22:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(991, 17, 3, 1, '2013-05-12 23:45:00', '2013-05-13 00:15:00', '', 1, 0, 0, 0, 0, 60000),
(992, 3, 3, 1, '2013-05-13 00:15:00', '2013-05-13 00:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(993, 16, 3, 1, '2013-05-13 02:30:00', '2013-05-13 02:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(994, 4, 3, 1, '2013-05-13 02:30:00', '2013-05-13 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(995, 17, 3, 1, '2013-05-13 02:30:00', '2013-05-13 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(996, 42, 3, 1, '2013-05-13 02:35:00', '2013-05-13 08:00:00', 'hột quẹt 4k', 1, 0, 0, 4000, 0, 213000),
(997, 16, 3, 1, '2013-05-13 03:10:00', '2013-05-13 03:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(998, 28, 3, 1, '2013-05-13 03:10:00', '2013-05-13 03:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(999, 17, 3, 1, '2013-05-13 03:15:00', '2013-05-13 03:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1000, 37, 3, 1, '2013-05-12 22:00:00', '2013-05-13 07:30:00', '', 1, 0, 0, 0, 0, 160000),
(1001, 4, 3, 1, '2013-05-13 10:40:00', '2013-05-13 11:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1002, 3, 3, 1, '2013-05-13 15:45:00', '2013-05-13 16:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000);
INSERT INTO `h3d_session` (`id`, `idtable`, `iduser`, `idcustomer`, `datetime`, `datetimeend`, `note`, `status`, `discount_value`, `discount_percent`, `surtax`, `payment`, `value`) VALUES
(1003, 3, 3, 1, '2013-05-13 16:50:00', '2013-05-13 17:10:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1004, 4, 3, 1, '2013-05-13 16:50:00', '2013-05-13 17:10:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1006, 17, 3, 1, '2013-05-13 21:40:00', '2013-05-13 22:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1008, 37, 3, 1, '2013-05-13 22:50:00', '2013-05-13 23:30:00', '', 1, 0, 0, 0, 0, 60000),
(1009, 16, 3, 1, '2013-05-13 23:00:00', '2013-05-13 23:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1010, 4, 3, 1, '2013-05-13 23:55:00', '2013-05-14 00:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1011, 17, 3, 1, '2013-05-13 23:55:00', '2013-05-14 00:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1012, 29, 3, 1, '2013-05-13 23:55:00', '2013-05-14 00:25:00', '', 1, 0, 0, 0, 0, 40000),
(1014, 16, 3, 1, '2013-05-14 00:55:00', '2013-05-14 04:15:00', '', 1, 0, 0, 0, 0, 120000),
(1015, 17, 3, 1, '2013-05-14 02:00:00', '2013-05-14 02:45:03', 'phòng quạt', 1, 20000, 0, 0, 0, 77000),
(1017, 28, 3, 1, '2013-05-14 02:00:00', '2013-05-14 02:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1018, 3, 3, 1, '2013-05-14 02:25:00', '2013-05-14 02:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1019, 4, 3, 1, '2013-05-14 02:25:00', '2013-05-14 02:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1022, 42, 3, 1, '2013-05-13 20:30:00', '2013-05-14 08:45:00', 'tiền mua hủ tiếu dùm khách 30k', 1, 0, 0, 30000, 0, 279000),
(1023, 36, 3, 1, '2013-05-13 22:50:00', '2013-05-14 13:25:00', 'phụ thu 1h ', 1, 20000, 0, 0, 0, 186000),
(1024, 41, 3, 1, '2013-05-14 00:10:00', '2013-05-14 09:10:00', '', 1, 0, 0, 0, 0, 170000),
(1025, 43, 3, 1, '2013-05-14 03:00:00', '2013-05-14 12:25:00', '', 1, 0, 0, 0, 0, 160000),
(1026, 17, 3, 1, '2013-05-14 17:50:00', '2013-05-14 18:10:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1027, 3, 3, 1, '2013-05-14 22:10:00', '2013-05-14 22:43:43', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1028, 4, 3, 1, '2013-05-14 22:10:00', '2013-05-14 22:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1029, 17, 3, 1, '2013-05-14 23:00:00', '2013-05-14 23:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1030, 41, 3, 1, '2013-05-14 23:45:00', '2013-05-15 08:00:00', '', 1, 0, 0, 0, 0, 160000),
(1031, 36, 3, 1, '2013-05-14 23:50:00', '2013-05-15 03:00:00', '', 1, 0, 0, 0, 0, 197000),
(1033, 42, 3, 1, '2013-05-14 23:50:00', '2013-05-15 00:30:00', 'phòng 23 thanh toán', 1, 75000, 0, 0, 0, 0),
(1034, 37, 3, 1, '2013-05-15 00:00:00', '2013-05-15 05:30:00', 'tiền phòng 22 (75k)', 1, 0, 0, 75000, 0, 250000),
(1035, 43, 3, 1, '2013-05-15 00:00:00', '2013-05-15 07:00:00', '', 1, 0, 0, 0, 0, 362000),
(1036, 39, 3, 1, '2013-05-15 01:15:00', '2013-05-15 09:05:00', '', 1, 0, 0, 0, 0, 172000),
(1037, 3, 3, 1, '2013-05-15 01:30:00', '2013-05-15 01:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1038, 16, 3, 1, '2013-05-15 02:55:00', '2013-05-15 03:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 52000),
(1039, 4, 3, 1, '2013-05-15 02:15:00', '2013-05-15 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 52000),
(1040, 29, 3, 1, '2013-05-15 02:40:00', '2013-05-15 11:15:00', '', 1, 0, 0, 0, 0, 120000),
(1041, 17, 3, 1, '2013-05-15 02:40:00', '2013-05-15 07:50:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(1042, 30, 3, 1, '2013-05-15 07:00:00', '2013-05-15 07:35:00', '', 1, 0, 0, 0, 0, 40000),
(1043, 17, 3, 1, '2013-05-15 11:50:00', '2013-05-15 12:55:00', '', 1, 0, 0, 0, 0, 60000),
(1044, 3, 3, 1, '2013-05-15 13:00:00', '2013-05-15 13:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1045, 17, 3, 1, '2013-05-15 14:50:00', '2013-05-15 17:05:00', '', 1, 0, 0, 0, 0, 125000),
(1046, 4, 3, 1, '2013-05-15 15:25:00', '2013-05-15 15:55:00', 'phòng quạt', 1, 20000, 0, 0, 0, 59000),
(1047, 31, 3, 1, '2013-05-15 15:25:00', '2013-05-15 15:50:00', '', 1, 0, 0, 0, 0, 85000),
(1048, 34, 3, 1, '2013-05-15 15:25:00', '2013-05-15 16:25:00', '', 1, 0, 0, 0, 0, 39000),
(1049, 3, 3, 1, '2013-05-15 17:35:00', '2013-05-15 18:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1050, 41, 3, 1, '2013-05-15 17:55:00', '2013-05-15 18:50:00', '', 1, 0, 0, 0, 0, 85000),
(1051, 3, 3, 1, '2013-05-15 20:00:00', '2013-05-15 20:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1052, 16, 3, 1, '2013-05-15 20:30:00', '2013-05-15 21:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1053, 26, 3, 1, '2013-05-15 21:30:00', '2013-05-16 07:05:00', '', 1, 10000, 0, 0, 0, 240000),
(1054, 3, 3, 1, '2013-05-15 22:00:00', '2013-05-15 22:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1055, 4, 3, 1, '2013-05-16 01:15:00', '2013-05-16 06:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(1056, 17, 3, 1, '2013-05-16 01:15:00', '2013-05-16 06:00:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(1059, 27, 3, 1, '2013-04-23 02:15:00', '2013-04-24 17:05:00', '', 1, 0, 0, 0, 0, 504000),
(1060, 4, 3, 1, '2013-04-02 12:55:00', '2013-04-02 13:15:00', '', 1, 0, 0, 0, 0, 60000),
(1062, 16, 3, 1, '2013-04-22 22:40:00', '2013-04-23 10:00:00', '', 1, 0, 0, 0, 0, 168000),
(1063, 16, 3, 1, '2013-04-23 21:00:00', '2013-04-23 21:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1064, 17, 3, 1, '2013-05-16 12:45:00', '2013-05-16 14:05:00', '', 1, 0, 0, 0, 0, 84000),
(1065, 3, 3, 1, '2013-05-16 17:00:00', '2013-05-16 18:00:00', '', 1, 0, 0, 0, 0, 134000),
(1066, 17, 3, 1, '2013-05-16 19:40:00', '2013-05-16 20:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1067, 27, 3, 1, '2013-05-16 21:35:00', '2013-05-17 08:00:00', 'giá ngày', 1, 0, 0, 40000, 0, 255000),
(1068, 26, 3, 1, '2013-05-16 21:00:00', '2013-05-17 07:00:00', '', 1, 0, 0, 0, 0, 260000),
(1069, 32, 3, 1, '2013-05-16 22:00:00', '2013-05-17 08:05:00', '', 1, 0, 0, 0, 0, 222000),
(1070, 29, 3, 1, '2013-04-26 21:35:00', '2013-04-26 21:45:00', '', 1, 0, 0, 0, 0, 40000),
(1072, 39, 3, 1, '2013-05-16 22:00:00', '2013-05-17 08:30:00', '', 1, 0, 0, 0, 0, 160000),
(1073, 3, 3, 1, '2013-05-16 22:10:00', '2013-05-16 22:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1074, 17, 3, 1, '2013-05-16 22:30:00', '2013-05-16 22:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1075, 16, 3, 1, '2013-05-16 23:25:00', '2013-05-16 23:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1076, 43, 3, 1, '2013-05-17 00:00:00', '2013-05-17 14:02:00', '', 1, 0, 0, 0, 0, 225000),
(1077, 28, 3, 1, '2013-05-17 00:15:00', '2013-05-17 00:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1081, 1, 4, 1, '2013-05-17 00:40:00', '2013-05-17 01:45:00', '', 0, 0, 0, 0, 0, 60000),
(1082, 4, 3, 1, '2013-05-17 00:45:00', '2013-05-17 01:50:00', 'phòng quạt', 1, 20000, 0, 0, 0, 65000),
(1083, 41, 3, 1, '2013-05-17 00:50:00', '2013-05-17 07:00:00', '', 1, 0, 0, 0, 0, 170000),
(1084, 16, 3, 1, '2013-05-17 05:45:00', '2013-05-17 06:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1085, 4, 3, 1, '2013-05-17 09:00:00', '2013-05-17 09:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1086, 3, 3, 1, '2013-05-17 09:45:00', '2013-05-17 10:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1087, 17, 3, 1, '2013-05-17 11:30:00', '2013-05-17 11:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1088, 4, 3, 1, '2013-05-17 11:45:00', '2013-05-17 14:45:00', 'phòng quạt', 1, 40000, 0, 0, 0, 80000),
(1089, 30, 3, 1, '2013-05-17 12:15:00', '2013-05-17 12:45:00', '', 1, 0, 0, 0, 0, 50000),
(1091, 17, 3, 1, '2013-05-17 16:00:00', '2013-05-17 16:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1093, 26, 3, 1, '2013-05-17 19:40:00', '2013-05-18 04:30:00', '', 1, 0, 0, 0, 0, 275000),
(1094, 17, 3, 1, '2013-05-17 20:05:00', '2013-05-17 21:45:00', '', 1, 0, 0, 0, 0, 112000),
(1095, 3, 3, 1, '2013-05-17 21:15:00', '2013-05-17 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 60000),
(1096, 16, 3, 1, '2013-05-17 21:15:00', '2013-05-17 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1097, 4, 3, 1, '2013-05-17 21:15:00', '2013-05-17 21:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1099, 29, 3, 1, '2013-05-17 22:20:00', '2013-05-18 06:00:00', '', 1, 0, 0, 0, 0, 120000),
(1100, 3, 3, 1, '2013-05-18 01:00:00', '2013-05-18 01:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1101, 16, 3, 1, '2013-05-18 01:00:00', '2013-05-18 01:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1102, 17, 3, 1, '2013-05-18 01:00:00', '2013-05-18 01:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1103, 28, 3, 1, '2013-05-18 01:00:00', '2013-05-18 01:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1107, 4, 3, 1, '2013-05-18 02:05:00', '2013-05-18 02:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1108, 17, 3, 1, '2013-05-18 02:05:00', '2013-05-18 02:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1109, 28, 3, 1, '2013-05-18 02:05:00', '2013-05-18 03:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1110, 3, 3, 1, '2013-05-18 02:30:00', '2013-05-18 02:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1111, 17, 3, 1, '2013-05-18 11:40:00', '2013-05-18 14:25:00', '', 1, 0, 0, 0, 0, 120000),
(1112, 16, 3, 1, '2013-05-18 13:30:00', '2013-05-18 15:25:00', '', 1, 0, 0, 0, 0, 102000),
(1113, 3, 3, 1, '2013-05-18 12:15:00', '2013-05-18 13:15:00', '', 1, 0, 0, 0, 0, 60000),
(1114, 3, 3, 1, '2013-05-18 14:00:00', '2013-05-18 15:20:00', '', 1, 0, 0, 0, 0, 60000),
(1115, 3, 3, 1, '2013-05-18 17:55:00', '2013-05-18 18:15:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1116, 17, 3, 1, '2013-05-18 18:00:00', '2013-05-18 19:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1117, 34, 3, 1, '2013-05-18 18:50:00', '2013-05-19 08:00:00', '', 1, 0, 0, 0, 0, 160000),
(1118, 16, 3, 1, '2013-05-18 20:35:00', '2013-05-18 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1119, 27, 3, 1, '2013-05-18 20:40:00', '2013-05-19 06:00:00', '', 1, 0, 0, 0, 0, 200000),
(1120, 30, 3, 1, '2013-05-18 20:50:00', '2013-05-18 21:10:00', '', 1, 0, 0, 0, 0, 40000),
(1121, 31, 3, 1, '2013-05-18 20:50:00', '2013-05-18 21:10:00', '', 1, 0, 0, 0, 0, 40000),
(1122, 28, 3, 1, '2013-05-18 20:55:00', '2013-05-18 21:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1123, 17, 3, 1, '2013-05-18 21:10:00', '2013-05-18 21:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1124, 3, 3, 1, '2013-05-18 22:00:00', '2013-05-18 22:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1125, 3, 3, 1, '2013-05-18 23:10:00', '2013-05-18 23:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1126, 16, 3, 1, '2013-05-18 21:15:00', '2013-05-18 21:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1127, 3, 3, 1, '2013-05-19 00:00:00', '2013-05-19 00:20:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1128, 4, 3, 1, '2013-05-19 00:15:00', '2013-05-19 00:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1129, 28, 3, 1, '2013-05-19 00:15:00', '2013-05-19 00:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1130, 29, 3, 1, '2013-05-19 00:45:00', '2013-05-19 08:00:00', '', 1, 0, 0, 0, 0, 120000),
(1131, 41, 3, 1, '2013-05-19 00:10:00', '2013-05-19 07:00:00', '', 1, 0, 0, 0, 0, 160000),
(1132, 36, 3, 1, '2013-05-19 00:10:00', '2013-05-19 05:40:00', '', 1, 0, 0, 0, 0, 160000),
(1133, 30, 3, 1, '2013-05-19 14:10:00', '2013-05-19 15:00:00', '', 1, 0, 0, 0, 0, 40000),
(1134, 34, 3, 1, '2013-05-19 14:10:00', '2013-05-19 15:00:00', '', 1, 0, 0, 0, 0, 40000),
(1135, 45, 3, 1, '2013-05-19 14:30:00', '2013-05-19 19:50:00', 'tiền trà đường', 1, 0, 0, 5000, 0, 165000),
(1136, 3, 3, 1, '2013-05-19 16:35:00', '2013-05-19 17:30:00', '', 1, 0, 0, 0, 0, 70000),
(1137, 41, 3, 1, '2013-05-19 17:45:00', '2013-05-19 18:40:00', '', 1, 0, 0, 0, 0, 70000),
(1138, 3, 3, 1, '2013-05-19 19:15:00', '2013-05-19 19:45:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1139, 3, 3, 1, '2013-05-19 20:00:00', '2013-05-19 20:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1140, 34, 3, 1, '2013-05-19 20:05:00', '2013-05-19 20:25:00', '', 1, 0, 0, 0, 0, 40000),
(1141, 3, 3, 1, '2013-05-19 20:30:00', '2013-05-19 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1142, 17, 3, 1, '2013-05-19 20:30:00', '2013-05-19 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 76000),
(1143, 16, 3, 1, '2013-05-19 20:30:00', '2013-05-19 21:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1144, 28, 3, 1, '2013-05-19 20:30:00', '2013-05-19 20:40:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1145, 3, 3, 1, '2013-05-19 23:35:00', '2013-05-20 00:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1146, 16, 3, 1, '2013-05-20 02:20:00', '2013-05-20 02:25:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1147, 17, 3, 1, '2013-05-20 02:20:00', '2013-05-20 02:35:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1148, 3, 3, 1, '2013-05-20 04:40:00', '2013-05-20 05:00:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1149, 16, 3, 1, '2013-05-20 05:15:00', '2013-05-20 05:30:00', 'phòng quạt', 1, 20000, 0, 0, 0, 40000),
(1150, 17, 3, 1, '2013-05-20 05:15:00', '2013-05-20 05:30:00', '', 1, 0, 0, 0, 0, 60000),
(1152, 2, 4, 1, '2013-09-12 16:57:27', NULL, '', 0, 0, 0, 0, 0, 60000),
(1156, 3, 4, 1, '2013-09-12 17:05:00', '2013-09-12 17:45:00', '', 0, 20000, 0, 0, 0, 76000);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_session_detail`
--

CREATE TABLE IF NOT EXISTS `h3d_session_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsession` int(11) NOT NULL,
  `idcourse` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idsession` (`idsession`),
  KEY `idcourse` (`idcourse`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=698 ;

--
-- Dumping data for table `h3d_session_detail`
--

INSERT INTO `h3d_session_detail` (`id`, `idsession`, `idcourse`, `count`, `price`) VALUES
(298, 18, 126, 1, 8000),
(299, 33, 136, 1, 15000),
(300, 33, 56, 1, 15000),
(301, 33, 126, 2, 8000),
(302, 34, 115, 1, 30000),
(303, 40, 126, 1, 8000),
(304, 45, 56, 1, 15000),
(305, 50, 54, 1, 12000),
(306, 50, 126, 1, 8000),
(307, 56, 126, 1, 8000),
(308, 66, 126, 1, 8000),
(309, 70, 54, 1, 12000),
(310, 70, 136, 1, 15000),
(311, 70, 126, 1, 8000),
(312, 70, 56, 1, 15000),
(313, 70, 55, 1, 12000),
(314, 75, 56, 2, 15000),
(316, 77, 55, 1, 12000),
(317, 77, 53, 1, 12000),
(318, 77, 126, 1, 8000),
(319, 79, 126, 1, 8000),
(320, 82, 108, 2, 25000),
(321, 82, 53, 1, 12000),
(322, 82, 126, 1, 8000),
(323, 87, 55, 1, 12000),
(324, 89, 108, 1, 25000),
(325, 89, 126, 1, 8000),
(326, 93, 53, 2, 12000),
(327, 93, 15, 1, 25000),
(328, 94, 15, 1, 25000),
(329, 100, 126, 1, 8000),
(330, 106, 136, 1, 15000),
(331, 106, 127, 3, 12000),
(332, 121, 126, 1, 8000),
(333, 121, 136, 1, 15000),
(334, 129, 53, 2, 12000),
(335, 141, 126, 1, 8000),
(336, 143, 129, 2, 12000),
(337, 143, 126, 4, 8000),
(338, 143, 56, 1, 15000),
(339, 143, 55, 1, 12000),
(340, 143, 54, 1, 12000),
(341, 143, 15, 1, 25000),
(342, 148, 54, 1, 12000),
(343, 148, 56, 1, 15000),
(344, 149, 54, 1, 12000),
(345, 149, 126, 1, 8000),
(346, 151, 55, 1, 12000),
(347, 151, 54, 1, 12000),
(348, 162, 126, 1, 8000),
(349, 165, 15, 1, 25000),
(350, 165, 56, 1, 15000),
(351, 165, 136, 1, 15000),
(352, 165, 55, 1, 12000),
(353, 166, 53, 1, 12000),
(354, 166, 136, 1, 15000),
(355, 172, 126, 2, 8000),
(360, 186, 55, 1, 12000),
(361, 186, 126, 1, 8000),
(362, 186, 127, 1, 12000),
(363, 187, 54, 1, 12000),
(364, 187, 126, 1, 8000),
(365, 187, 53, 1, 12000),
(366, 187, 136, 1, 15000),
(367, 190, 108, 10, 20000),
(368, 190, 54, 1, 12000),
(369, 197, 53, 1, 12000),
(370, 197, 136, 1, 15000),
(371, 197, 126, 1, 8000),
(372, 197, 56, 1, 15000),
(373, 197, 129, 1, 12000),
(374, 197, 127, 1, 12000),
(375, 197, 15, 1, 25000),
(378, 212, 15, 1, 25000),
(379, 212, 53, 1, 12000),
(380, 213, 126, 1, 8000),
(381, 214, 55, 1, 12000),
(382, 214, 126, 1, 8000),
(383, 215, 55, 1, 12000),
(384, 215, 54, 1, 12000),
(385, 219, 126, 1, 10000),
(389, 233, 53, 1, 12000),
(391, 242, 15, 1, 25000),
(395, 249, 126, 1, 12000),
(396, 249, 55, 1, 12000),
(397, 257, 126, 1, 8000),
(399, 272, 54, 1, 12000),
(400, 272, 55, 1, 12000),
(401, 272, 56, 1, 15000),
(402, 278, 55, 1, 12000),
(403, 278, 127, 1, 12000),
(404, 279, 126, 1, 8000),
(405, 280, 126, 1, 8000),
(407, 283, 53, 1, 12000),
(410, 322, 116, 1, 25000),
(411, 328, 126, 2, 8000),
(412, 335, 116, 1, 25000),
(413, 350, 126, 1, 8000),
(414, 351, 126, 1, 8000),
(415, 352, 116, 1, 25000),
(416, 365, 131, 5, 2000),
(417, 365, 53, 1, 12000),
(418, 365, 126, 1, 8000),
(419, 371, 53, 1, 12000),
(420, 382, 55, 1, 15000),
(421, 382, 108, 1, 25000),
(484, 567, 54, 1, 12000),
(485, 567, 53, 1, 12000),
(486, 567, 55, 1, 12000),
(487, 569, 54, 1, 12000),
(488, 569, 126, 1, 8000),
(489, 569, 15, 1, 25000),
(490, 570, 55, 1, 12000),
(491, 570, 126, 1, 10000),
(492, 570, 53, 1, 12000),
(493, 571, 55, 1, 12000),
(497, 584, 116, 1, 25000),
(498, 596, 131, 4, 2000),
(499, 596, 108, 8, 25000),
(500, 596, 54, 1, 12000),
(501, 596, 136, 1, 15000),
(502, 596, 56, 1, 15000),
(503, 596, 126, 1, 8000),
(504, 596, 128, 1, 12000),
(505, 612, 15, 1, 25000),
(506, 633, 116, 1, 25000),
(507, 633, 131, 1, 2000),
(508, 633, 53, 1, 12000),
(509, 636, 56, 1, 15000),
(510, 642, 56, 1, 15000),
(511, 652, 126, 1, 8000),
(512, 659, 126, 1, 8000),
(513, 667, 126, 1, 8000),
(514, 669, 53, 1, 12000),
(515, 673, 126, 1, 8000),
(516, 673, 53, 1, 12000),
(517, 674, 126, 2, 8000),
(518, 678, 55, 1, 12000),
(519, 678, 126, 1, 10000),
(520, 679, 126, 1, 8000),
(521, 682, 108, 11, 25000),
(522, 682, 126, 1, 10000),
(523, 682, 56, 1, 15000),
(524, 686, 116, 1, 25000),
(525, 686, 54, 1, 12000),
(526, 686, 126, 1, 8000),
(527, 686, 53, 1, 12000),
(528, 687, 53, 1, 12000),
(529, 688, 126, 1, 10000),
(530, 688, 15, 1, 25000),
(531, 689, 56, 1, 15000),
(532, 692, 54, 2, 12000),
(533, 694, 126, 1, 8000),
(534, 699, 126, 1, 8000),
(535, 700, 126, 1, 8000),
(536, 702, 55, 3, 12000),
(537, 703, 126, 2, 10000),
(538, 704, 126, 1, 8000),
(539, 704, 53, 1, 12000),
(540, 704, 54, 1, 12000),
(541, 704, 56, 1, 15000),
(542, 704, 108, 1, 25000),
(543, 704, 129, 1, 12000),
(544, 704, 55, 1, 12000),
(545, 709, 15, 1, 25000),
(546, 709, 55, 1, 12000),
(547, 719, 54, 1, 12000),
(548, 721, 54, 1, 12000),
(549, 721, 55, 1, 12000),
(550, 729, 53, 1, 12000),
(551, 729, 126, 1, 10000),
(552, 734, 136, 1, 15000),
(553, 734, 126, 1, 10000),
(554, 738, 55, 1, 12000),
(555, 738, 126, 1, 10000),
(556, 745, 56, 1, 15000),
(557, 748, 136, 1, 15000),
(558, 749, 54, 1, 12000),
(559, 749, 126, 1, 8000),
(620, 944, 54, 1, 12000),
(621, 944, 136, 1, 15000),
(622, 948, 54, 1, 12000),
(623, 948, 126, 1, 10000),
(624, 949, 54, 2, 12000),
(625, 956, 56, 1, 15000),
(626, 960, 53, 1, 12000),
(627, 960, 55, 1, 12000),
(628, 962, 136, 1, 15000),
(629, 963, 53, 1, 12000),
(630, 965, 54, 0, 10000),
(631, 965, 126, 1, 10000),
(632, 965, 53, 1, 12000),
(633, 965, 127, 1, 12000),
(634, 966, 126, 1, 8000),
(635, 970, 126, 1, 12000),
(638, 982, 56, 2, 15000),
(639, 996, 15, 1, 25000),
(640, 996, 55, 1, 12000),
(641, 996, 54, 1, 12000),
(642, 1015, 54, 1, 12000),
(643, 1015, 15, 1, 25000),
(644, 1022, 108, 1, 25000),
(645, 1022, 55, 1, 12000),
(646, 1022, 54, 1, 12000),
(647, 1023, 126, 1, 10000),
(648, 1024, 126, 1, 10000),
(649, 1031, 55, 1, 12000),
(650, 1031, 56, 1, 15000),
(651, 1031, 108, 2, 25000),
(653, 1033, 56, 1, 15000),
(654, 1034, 56, 1, 15000),
(655, 1035, 55, 1, 12000),
(656, 1035, 56, 1, 15000),
(657, 1035, 108, 7, 25000),
(658, 1036, 127, 1, 12000),
(659, 1038, 54, 1, 12000),
(660, 1039, 54, 1, 12000),
(661, 1045, 15, 1, 25000),
(662, 1047, 126, 1, 10000),
(663, 1047, 55, 2, 12000),
(664, 1047, 54, 1, 12000),
(665, 1050, 15, 1, 25000),
(672, 1059, 54, 1, 12000),
(673, 1059, 55, 1, 12000),
(674, 1059, 136, 1, 15000),
(675, 1062, 126, 1, 8000),
(676, 1064, 54, 2, 12000),
(677, 1065, 54, 2, 12000),
(678, 1065, 116, 2, 25000),
(679, 1067, 56, 1, 15000),
(680, 1068, 126, 1, 10000),
(681, 1069, 55, 1, 12000),
(682, 1076, 126, 1, 10000),
(683, 1076, 56, 1, 15000),
(684, 1082, 116, 1, 25000),
(685, 1083, 126, 1, 10000),
(686, 1089, 126, 1, 10000),
(687, 1093, 15, 1, 25000),
(688, 1094, 55, 1, 12000),
(689, 1094, 126, 1, 10000),
(690, 1095, 126, 2, 10000),
(691, 1112, 53, 1, 12000),
(692, 1136, 126, 1, 10000),
(693, 1137, 126, 1, 10000),
(694, 1142, 53, 3, 12000),
(695, 1156, 115, 2, 0),
(696, 1156, 54, 2, 0),
(697, 1156, 114, 2, 18000);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_supplier`
--

CREATE TABLE IF NOT EXISTS `h3d_supplier` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `debt` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `h3d_supplier`
--

INSERT INTO `h3d_supplier` (`id`, `name`, `phone`, `address`, `note`, `debt`) VALUES
(1, 'Đại lý nước đá', '0703456456', 'Phường 4', 'Cung cấp nước đá', 0),
(6, 'Coop Mart', '070', 'Vĩnh Long', 'Cung cấp mọi thứ', 0),
(8, 'Nhà PP Đoan Trang', '0703 822 227 - ', '64/6N Trần Phú P4 TP Vĩnh Long', '', 0),
(9, 'KHÁC', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_table`
--

CREATE TABLE IF NOT EXISTS `h3d_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddomain` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iddomain` (`iddomain`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `h3d_table`
--

INSERT INTO `h3d_table` (`id`, `iddomain`, `name`, `iduser`, `type`) VALUES
(1, 1, 'Phòng 01', 0, '1'),
(2, 1, 'Phòng 03', 0, '1'),
(3, 1, 'Phòng 05', 0, '1'),
(4, 1, 'Phòng 07', 0, '1'),
(14, 2, 'Phòng 02', 0, '1'),
(15, 2, 'Phòng 04', 0, '1'),
(16, 2, 'Phòng 06', 0, '1'),
(17, 2, 'Phòng 08', 0, '1'),
(26, 3, 'Phòng 18', 0, '2'),
(27, 3, 'Phòng 19', 0, '1'),
(28, 1, 'Phòng 09', 1, '1'),
(29, 1, 'Phòng 11', 1, '3'),
(30, 1, 'Phòng 13', 1, '3'),
(31, 1, 'Phòng 15', 1, '3'),
(32, 2, 'Phòng 10', 1, '2'),
(33, 2, 'Phòng 12', 1, '3'),
(34, 2, 'Phòng 14', 1, '3'),
(35, 2, 'Phòng 16', 1, '3'),
(36, 3, 'Phòng 21', 1, '1'),
(37, 3, 'Phòng 23', 1, '1'),
(38, 3, 'Phòng 25', 1, '1'),
(39, 3, 'Phòng 27', 1, '1'),
(40, 3, 'Phòng 29', 1, '1'),
(41, 4, 'Phòng 20', 1, '1'),
(42, 4, 'Phòng 22', 1, '1'),
(43, 4, 'Phòng 24', 1, '1'),
(44, 4, 'Phòng 26', 1, '1'),
(45, 4, 'Phòng 28', 1, '1'),
(46, 4, 'Phòng 30', 1, '1'),
(47, 3, 'Phòng 17', 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_term`
--

CREATE TABLE IF NOT EXISTS `h3d_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `h3d_term`
--

INSERT INTO `h3d_term` (`id`, `name`, `type`) VALUES
(1, 'Tiền điện', 0),
(2, 'Tiền nước', 0),
(3, 'Tiền thuế', 0),
(4, 'CP Khác', 1),
(5, 'Lương Nhân Viên', 0);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_term_collect`
--

CREATE TABLE IF NOT EXISTS `h3d_term_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `h3d_term_collect`
--

INSERT INTO `h3d_term_collect` (`id`, `name`) VALUES
(1, 'Thu 1'),
(2, 'Thu 2');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_tracking`
--

CREATE TABLE IF NOT EXISTS `h3d_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `estate_rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `h3d_tracking`
--

INSERT INTO `h3d_tracking` (`id`, `date_start`, `date_end`, `estate_rate`) VALUES
(1, '2013-01-01', '2013-01-31', 0),
(2, '2013-02-01', '2013-02-28', 0),
(3, '2013-03-01', '2013-03-31', 0),
(4, '2013-04-01', '2013-04-30', 0),
(5, '2013-05-01', '2013-05-31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `h3d_type_room`
--

CREATE TABLE IF NOT EXISTS `h3d_type_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `h3d_type_room`
--

INSERT INTO `h3d_type_room` (`id`, `name`) VALUES
(1, 'Đơn máy lạnh'),
(2, 'Đôi máy lạnh'),
(3, 'Đơn quạt');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_unit`
--

CREATE TABLE IF NOT EXISTS `h3d_unit` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `h3d_unit`
--

INSERT INTO `h3d_unit` (`id`, `name`) VALUES
(1, 'Ly'),
(3, 'Chai'),
(4, 'Lon'),
(9, 'Bịch'),
(10, 'Gói'),
(11, 'Cái'),
(12, 'Cây'),
(16, 'Tô');

-- --------------------------------------------------------

--
-- Table structure for table `h3d_user`
--

CREATE TABLE IF NOT EXISTS `h3d_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datecreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateupdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateactivity` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(4) NOT NULL,
  `code` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `h3d_user`
--

INSERT INTO `h3d_user` (`id`, `name`, `email`, `pass`, `gender`, `note`, `datecreate`, `dateupdate`, `dateactivity`, `type`, `code`) VALUES
(3, 'Phan Lê Hữu Phúc', 'phucphan.bdc@gmail.com', '2vzWwPC5YMAC7hCBFPvLnSMQ2kYm09i51mY00I8C8Cc=', 0, ' ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, '123456789'),
(4, 'Bùi Thanh Tuấn', 'tuanbuithanh@gmail.com', '123456', 0, '', '2013-04-10 21:44:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, '123456789'),
(5, 'Phan Xuân Mai', 'maiphan.bdc@gmail.com', 'WHa3/wsMpuVHlDy+Y8Zb+EDkccANR4eKdzU9/dqLRUc=', 1, '', '2013-04-10 21:45:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, '123456789'),
(6, 'Đoàn Thị Dung', 'dungdoan.bdc@gmail.com', 'dung1234', 1, '', '2013-05-16 19:02:46', '2013-05-16 19:02:46', '2013-05-16 19:02:46', 1, '123456789'),
(9, 'Đỗ Lê Trúc Giang', 'giangdo.bdc@gmail.com', '/lb0G5kCmLDw0zTYuW2SBwBVlIwsPCAnrQEtEh2wqmg=', 1, '', '2013-05-19 12:06:44', '2013-05-19 12:06:44', '2013-05-19 12:06:44', 1, '123456789');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `h3d_collect_customer`
--
ALTER TABLE `h3d_collect_customer`
  ADD CONSTRAINT `h3d_customer_collect_1` FOREIGN KEY (`idcustomer`) REFERENCES `h3d_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_collect_general`
--
ALTER TABLE `h3d_collect_general`
  ADD CONSTRAINT `h3d_collect_general_1` FOREIGN KEY (`id_term`) REFERENCES `h3d_term_collect` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_course`
--
ALTER TABLE `h3d_course`
  ADD CONSTRAINT `h3d_course_1` FOREIGN KEY (`idcategory`) REFERENCES `h3d_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_course_default`
--
ALTER TABLE `h3d_course_default`
  ADD CONSTRAINT `h3d_course_default_1` FOREIGN KEY (`id_type_room`) REFERENCES `h3d_type_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_course_default_2` FOREIGN KEY (`id_course`) REFERENCES `h3d_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_order_import`
--
ALTER TABLE `h3d_order_import`
  ADD CONSTRAINT `h3d_order_import_1` FOREIGN KEY (`idsupplier`) REFERENCES `h3d_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_order_import_detail`
--
ALTER TABLE `h3d_order_import_detail`
  ADD CONSTRAINT `h3d_order_import_detail_1` FOREIGN KEY (`idorder`) REFERENCES `h3d_order_import` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_order_import_detail_2` FOREIGN KEY (`idresource`) REFERENCES `h3d_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_paid_employee`
--
ALTER TABLE `h3d_paid_employee`
  ADD CONSTRAINT `h3d_employee_paid_1` FOREIGN KEY (`idemployee`) REFERENCES `h3d_employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_paid_general`
--
ALTER TABLE `h3d_paid_general`
  ADD CONSTRAINT `h3d_paid_general_1` FOREIGN KEY (`id_term`) REFERENCES `h3d_term` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_paid_supplier`
--
ALTER TABLE `h3d_paid_supplier`
  ADD CONSTRAINT `h3d_supplier_paid_1` FOREIGN KEY (`idsupplier`) REFERENCES `h3d_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_resource`
--
ALTER TABLE `h3d_resource`
  ADD CONSTRAINT `h3d_resource_1` FOREIGN KEY (`idsupplier`) REFERENCES `h3d_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_session`
--
ALTER TABLE `h3d_session`
  ADD CONSTRAINT `h3d_session_1` FOREIGN KEY (`idtable`) REFERENCES `h3d_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_session_2` FOREIGN KEY (`iduser`) REFERENCES `h3d_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_session_3` FOREIGN KEY (`idcustomer`) REFERENCES `h3d_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_session_detail`
--
ALTER TABLE `h3d_session_detail`
  ADD CONSTRAINT `h3d_session_detail_1` FOREIGN KEY (`idsession`) REFERENCES `h3d_session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_session_detail_2` FOREIGN KEY (`idcourse`) REFERENCES `h3d_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `h3d_table`
--
ALTER TABLE `h3d_table`
  ADD CONSTRAINT `h3d_table_1` FOREIGN KEY (`iddomain`) REFERENCES `h3d_domain` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
