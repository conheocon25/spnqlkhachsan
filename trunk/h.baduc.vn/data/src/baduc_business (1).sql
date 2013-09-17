-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 16, 2013 at 12:42 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `baduc_business`
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
(18, 'GUEST_VISIT', '61');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `h3d_guest`
--

INSERT INTO `h3d_guest` (`id`, `ip`, `entry_time`, `exit_time`, `agent`) VALUES
(5, '192.168.1.3', '1379327824', '1379331424', '192.168.1.3');

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
(1081, 1, 4, 1, '2013-05-17 00:40:00', '2013-05-17 01:45:00', '', 0, 0, 0, 0, 0, 60000),
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
(4, 'Bùi Thanh Tuấn', 'tuanbuithanh@gmail.com', 'admin123456', 0, '', '2013-04-10 21:44:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, '123456789'),
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
