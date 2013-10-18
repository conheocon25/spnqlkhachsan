-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 17 Octobre 2013 à 02:58
-- Version du serveur: 5.5.33-31.1
-- Version de PHP: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `spngroup_khsan_baduc`
--

-- --------------------------------------------------------

--
-- Structure de la table `h3d_app`
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
-- Contenu de la table `h3d_app`
--

INSERT INTO `h3d_app` (`id`, `name`, `phone`, `address`, `email`, `banner`, `prefix`, `alias`, `date_created`, `date_modified`, `date_activity`, `type`, `page_view`) VALUES
(1, 'Karaoke Ba Đức', '0945 03 07 09', 'Phó Cơ Điều P3 - TPVL', '', 'data/images/banner/logo.png', 'h3d_', 'h3d_', '2012-06-30 10:00:00', '0000-00-00 00:00:00', '2012-12-26 00:28:02', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_category`
--

CREATE TABLE IF NOT EXISTS `h3d_category` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` binary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Contenu de la table `h3d_category`
--

INSERT INTO `h3d_category` (`id`, `name`, `picture`) VALUES
(3, 'BEER', NULL),
(8, 'NƯỚC GIẢI KHÁT', NULL),
(11, 'THUỐC HÚT', NULL),
(12, 'THỨC ĂN', NULL),
(13, 'KHÁC', NULL),
(14, 'DỊCH VỤ', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_collect_customer`
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
-- Contenu de la table `h3d_collect_customer`
--

INSERT INTO `h3d_collect_customer` (`id`, `idcustomer`, `date`, `value`, `note`) VALUES
(2, 1, '2013-05-18', 112, 'abc');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_collect_general`
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
-- Contenu de la table `h3d_collect_general`
--

INSERT INTO `h3d_collect_general` (`id`, `id_term`, `date`, `value`, `note`) VALUES
(5, 1, '2013-05-18', 101, 'a1'),
(6, 2, '2013-09-09', 10111, '1');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_config`
--

CREATE TABLE IF NOT EXISTS `h3d_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `h3d_config`
--

INSERT INTO `h3d_config` (`id`, `param`, `value`) VALUES
(1, 'DON_LANH_NGAY', '200000'),
(2, 'DON_LANH_GIO', '60000'),
(3, 'DON_QUAT_NGAY', '160000'),
(4, 'DON_QUAT_GIO', '40000'),
(5, 'DOI_LANH_NGAY', '250000'),
(6, 'DON_LANH_NGAY_LO', '30000'),
(7, 'DON_LANH_GIO_LO', '30000'),
(8, 'DON_QUAT_NGAY_LO', '20000'),
(9, 'DON_QUAT_GIO_LO', '20000'),
(10, 'DOI_LANH_NGAY_LO', '50000'),
(11, 'DON_QUAT_DEM', '120000'),
(12, 'DON_QUAT_DEM_LO', '20000'),
(13, 'DON_LANH_DEM', '160000'),
(14, 'DON_LANH_DEM_LO', '30000'),
(15, 'DOI_LANH_DEM', '210000'),
(16, 'DOI_LANH_DEM_LO', '50000'),
(17, 'ROW_PER_PAGE', '12'),
(18, 'GUEST_VISIT', '3494');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_course`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=148 ;

--
-- Contenu de la table `h3d_course`
--

INSERT INTO `h3d_course` (`id`, `idcategory`, `name`, `shortname`, `unit`, `price1`, `price2`, `price3`, `price4`, `picture`) VALUES
(15, 11, 'Thuốc Hút', 'Thuốc Hút', 'Gói', 25000, 0, 0, 0, NULL),
(53, 8, 'Trà Xanh', 'Trà Xanh', 'Chai', 12000, 0, 0, 0, NULL),
(54, 8, 'C2', 'C2', 'Chai', 12000, 0, 0, 0, NULL),
(55, 8, 'Dr Thanh', 'Dr Thanh', 'Chai', 12000, 0, 0, 0, NULL),
(56, 8, 'Nước Yến', 'Nước Yến', 'Lon', 15000, 0, 0, 0, NULL),
(108, 3, 'Heniken', 'Heniken', 'Lon', 20000, 0, 0, 0, ''),
(113, 3, 'Sài gòn Special', 'Sài gòn Special', 'Lon', 17000, 0, 0, 0, ''),
(114, 3, 'Bia 333', 'Bia 333', 'Lon', 16000, 0, 0, 0, ''),
(115, 11, 'Thuốc 555', 'Thuốc 555', 'Gói', 30000, 0, 0, 0, ''),
(116, 11, 'Thuốc Craven', 'Thuốc Craven', 'Gói', 25000, 0, 0, 0, ''),
(122, 12, 'Chewing Gum', 'Chewing Gum', 'Cây', 6000, 0, 0, 0, ''),
(126, 8, 'Lavie 500ml', 'Lavie 500ml', 'Chai', 10000, 0, 0, 0, ''),
(127, 8, 'Pepsi', 'Pepsi', 'Lon', 12000, 0, 0, 0, ''),
(128, 8, '7 Up', '7 Up', 'Lon', 12000, 0, 0, 0, ''),
(129, 8, 'Mirinda Cam', 'Mirinda Cam', 'Lon', 12000, 0, 0, 0, ''),
(136, 8, 'Red Bull', 'Red Bull', 'Lon', 15000, 0, 0, 0, ''),
(139, 12, 'Mì Tôm', 'Mì Tôm', 'Tô', 10000, 0, 0, 0, ''),
(140, 12, 'Mì Tôm Trứng', 'Mì Tôm Trứng', 'Tô', 15000, 0, 0, 0, ''),
(141, 8, 'Sting', 'Sting', 'Lon', 12000, 0, 0, 0, ''),
(142, 11, 'Quẹt gas', '', 'Cái', 4000, 0, 0, 0, ''),
(143, 8, 'Lavie 350ml', '', 'Chai', 8000, 0, 0, 0, ''),
(144, 13, 'Khăn Lạnh', '', 'Cái', 2000, 0, 0, 0, ''),
(145, 14, 'Giặt ủi Áo', '', 'Cái', 10000, 0, 0, 0, ''),
(146, 14, 'Giặt ủi Quần', '', 'Cái', 10000, 0, 0, 0, ''),
(147, 14, 'Giặt ủi Quần & Áo', '', 'Bộ', 20000, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_course_default`
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
-- Contenu de la table `h3d_course_default`
--

INSERT INTO `h3d_course_default` (`id`, `id_type_room`, `id_course`, `count`, `price`) VALUES
(2, 1, 115, 2, 0),
(3, 1, 54, 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_customer`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `h3d_customer`
--

INSERT INTO `h3d_customer` (`id`, `name`, `type`, `card`, `phone`, `address`, `note`, `discount`) VALUES
(1, 'KHÁCH HÀNG', 0, '', '', 'Vãng lai', 'Vãng lai', 0),
(6, 'Lê Nguyễn Đông Khoa', 1, '', '', 'Vĩnh Long', '', 0),
(10, 'Lê Hồng Đức', 1, '', '0918585203', 'Cty TNHH MTV Ba Đức Vĩnh Long', 'Giám Đốc', 0),
(11, 'Lê Sâm Tuôl', 1, '331372896', '', '', '', 0),
(12, 'Phạm Hữu Vĩnh Phước', 1, '331531512', '', '', '', 0),
(13, 'Mai Văn Hai', 1, '', '', '', '', 0),
(14, 'KHÁCH HÀNG NỢ', 0, '', '', '', '', 0),
(15, 'TIẾP KHÁCH', 0, '', '', '', '', 0),
(16, 'Anh Thắng', 0, '', '', 'CAVL', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_domain`
--

CREATE TABLE IF NOT EXISTS `h3d_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `h3d_domain`
--

INSERT INTO `h3d_domain` (`id`, `name`) VALUES
(1, 'TRỆT KHU_A'),
(2, 'TRỆT KHU_B'),
(3, 'LẦU 1 KHU_A'),
(4, 'LẦU 1 KHU_B');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_employee`
--

CREATE TABLE IF NOT EXISTS `h3d_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(2) NOT NULL,
  `phone` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `h3d_employee`
--

INSERT INTO `h3d_employee` (`id`, `name`, `job`, `gender`, `phone`, `address`) VALUES
(1, 'Đoàn Thị Dung', 'Tiếp Tân', 1, '', 'An Giang'),
(3, 'Võ Thị Thu Trang', 'Tiếp Tân', 1, '', 'Bến Tre'),
(4, 'Trương Phước Sang', 'PV Phòng', 0, '', 'Vĩnh Long'),
(6, 'Ngọc', 'PV Phòng', 0, '', 'Đồng Tháp'),
(8, 'Bảo vệ 1', 'Bảo vệ', 0, '', 'Hoàng Dũng');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_guest`
--

CREATE TABLE IF NOT EXISTS `h3d_guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) CHARACTER SET latin1 NOT NULL,
  `entry_time` varchar(32) CHARACTER SET latin1 NOT NULL,
  `exit_time` varchar(32) CHARACTER SET latin1 NOT NULL,
  `agent` varchar(16) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `h3d_guest`
--

INSERT INTO `h3d_guest` (`id`, `ip`, `entry_time`, `exit_time`, `agent`) VALUES
(5, '108.162.209.38', '1381816121', '1381819721', '108.162.209.38'),
(6, '108.162.209.37', '1381816152', '1381819752', '108.162.209.37');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_order_import`
--

CREATE TABLE IF NOT EXISTS `h3d_order_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsupplier` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `h3d_order_import_1` (`idsupplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Contenu de la table `h3d_order_import`
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
(17, 9, '2013-09-18', ''),
(18, 13, '2013-09-18', ''),
(19, 8, '2013-09-26', ''),
(20, 8, '2013-10-03', '');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_order_import_detail`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Contenu de la table `h3d_order_import_detail`
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
(32, 12, 1, 11, 3000),
(33, 17, 39, 10, 16900),
(34, 17, 41, 10, 15300),
(35, 18, 67, 30, 5100),
(36, 19, 46, 24, 3584),
(37, 20, 52, 60, 6200),
(38, 20, 51, 24, 6625),
(39, 20, 53, 24, 6417),
(40, 20, 48, 24, 4459);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_paid_employee`
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
-- Contenu de la table `h3d_paid_employee`
--

INSERT INTO `h3d_paid_employee` (`id`, `idemployee`, `date`, `value`, `note`) VALUES
(1, 1, '2012-09-20', 1500000, 'lương tháng 9'),
(2, 1, '2012-08-19', 200000, 'Ứng lương tháng 8');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_paid_general`
--

CREATE TABLE IF NOT EXISTS `h3d_paid_general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_term` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k3d_paid_1` (`id_term`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `h3d_paid_general`
--

INSERT INTO `h3d_paid_general` (`id`, `id_term`, `date`, `value`, `note`) VALUES
(1, 1, '2013-04-10', 3500000, 'Thử 2'),
(2, 1, '2013-04-08', 300000, 'Đóng tiền nước'),
(3, 1, '2013-04-01', 2300000, 'Thử 2'),
(4, 7, '2013-09-29', 2000000, 'Bảo trì & sữa chữa máy lạnh');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_paid_pay_roll`
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

-- --------------------------------------------------------

--
-- Structure de la table `h3d_paid_supplier`
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
-- Contenu de la table `h3d_paid_supplier`
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
-- Structure de la table `h3d_r2c`
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

-- --------------------------------------------------------

--
-- Structure de la table `h3d_resource`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=68 ;

--
-- Contenu de la table `h3d_resource`
--

INSERT INTO `h3d_resource` (`id`, `idsupplier`, `name`, `unit`, `price`, `description`) VALUES
(1, 1, 'Nước đá ống viên nhỏ', 'Kg', 3000, 'Nước đá dùng để uống trà, cafe'),
(2, 1, 'Nước đá ướp', 'Kg', 3000, 'Dùng để ướp trái cây'),
(3, 1, 'Nước đá ống viên lớn', 'Kg', 3000, 'Dùng uống bia'),
(14, 1, 'Nước đá tủ lạnh', 'kg', 2000, 'Nước đá lấy từ tủ lạnh nhà'),
(19, 8, 'Heniken', 'Chai', 13042, 'Két 24 chai'),
(20, 8, 'Heniken', 'Lon', 15084, 'Thùng 24 lon'),
(21, 8, 'Sài gòn đỏ', 'Chai', 6600, 'Két 20 chai'),
(22, 8, 'Sài gòn Special', 'Chai', 8900, 'Két 20 chai'),
(23, 8, 'Sài gòn Special', 'Lon', 10896, 'Thùng 24 lon'),
(24, 8, 'Bia 333', 'Lon', 8625, 'Thùng 24 lon'),
(25, 8, 'Tiger Bạc', 'Chai', 10834, 'Két 24 chai'),
(26, 8, 'Tiger', 'Chai', 9917, 'Két 24 chai'),
(32, 6, 'ĐẬU PHỘNG ', 'Bịch', 0, ''),
(39, 9, 'Thuốc Craven', 'Gói', 16500, ''),
(40, 9, 'Thuốc 555', 'Gói', 23500, ''),
(41, 9, 'Thuốc Hút', 'Gói', 15500, ''),
(43, 9, 'Quẹt gas', 'Cái', 1800, ''),
(44, 8, 'Tiger', 'Lon', 11667, 'Thùng 24 lon'),
(45, 8, 'Sting', 'Lon', 7208, 'Thùng 24 lon'),
(46, 8, 'Lavie 500ml', 'Chai', 3584, 'Thùng 24 chai'),
(48, 8, 'C2', 'Chai', 4500, 'Thùng 24 chai'),
(49, 8, '7 Up', 'Lon', 6375, 'Thùng 24 lon'),
(51, 8, 'Trà Xanh', 'Chai', 6583, 'Thùng 24 chai'),
(52, 8, 'Red Bull', 'Lon', 6200, 'Thùng 30 lon'),
(53, 8, 'Pepsi', 'Lon', 6375, 'Thùng 24 lon'),
(54, 8, 'Mirinda Cam', 'Lon', 5417, 'Thùng 24 lon'),
(55, 8, 'Dr Thanh', 'Chai', 7750, 'Thùng 24 chai'),
(57, 8, 'Nước Yến', 'Lon', 5917, 'Thùng 24 lon'),
(58, 8, 'Lavie 350ml', 'Chai', 2500, ''),
(59, 10, 'Suối PP 500ml', 'Chai', 2000, ''),
(60, 10, 'Suối PP', 'Thùng', 10000, ''),
(61, 11, 'Khăn Lạnh', 'Cái', 550, ''),
(62, 11, 'Bàn chải đánh răng', 'Cái', 1000, ''),
(63, 11, 'Xà bông cục', 'Cái', 500, ''),
(64, 12, 'Dầu gội Clear Men', 'Gói', 630, '0'),
(65, 12, 'Dầu gội The Man', 'Gói', 320, ''),
(66, 12, 'Dầu gội X-Men', 'Gói', 600, ''),
(67, 13, 'Mì Đệ Nhất', 'Gói', 5100, '');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_session`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1482 ;

--
-- Contenu de la table `h3d_session`
--

INSERT INTO `h3d_session` (`id`, `idtable`, `iduser`, `idcustomer`, `datetime`, `datetimeend`, `note`, `status`, `discount_value`, `discount_percent`, `surtax`, `payment`, `value`) VALUES
(1081, 1, 4, 1, '2013-09-15 23:05:00', '2013-09-16 14:00:00', '', 1, 0, 0, 0, 0, 240000),
(1158, 1, 11, 1, '2013-09-17 10:25:00', '2013-09-17 17:55:00', '', 1, 0, 0, 0, 500000, 119000),
(1159, 1, 6, 6, '2013-09-15 07:30:00', '2013-09-15 14:30:00', 'Bảo Ngân', 2, 60000, 0, 0, 0, 0),
(1160, 1, 6, 1, '2013-09-16 05:00:00', '2013-09-16 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 42000),
(1161, 2, 11, 1, '2013-08-29 17:30:00', '2013-08-30 00:40:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1164, 17, 11, 1, '2013-08-29 18:15:00', '2013-08-30 01:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1165, 45, 11, 1, '2013-08-30 07:40:00', '2013-08-31 11:30:00', '', 1, 0, 0, 0, 0, 212000),
(1166, 46, 11, 1, '2013-08-30 15:05:00', '2013-08-31 06:35:00', '', 1, 0, 0, 0, 0, 190000),
(1167, 1, 6, 1, '2013-09-17 05:00:00', '2013-09-17 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 66000),
(1168, 1, 6, 6, '2013-09-15 07:30:00', '2013-09-15 14:30:00', 'Bảo Ngân', 2, 60000, 0, 0, 0, 12000),
(1169, 1, 4, 1, '2013-09-18 05:00:00', '2013-09-18 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 60000),
(1170, 42, 9, 1, '2013-08-30 15:25:00', '2013-08-31 11:05:00', '', 1, 0, 0, 0, 0, 182000),
(1171, 43, 9, 1, '2013-08-30 15:25:00', '2013-08-31 11:05:00', '', 1, 0, 0, 0, 0, 160000),
(1172, 3, 9, 1, '2013-08-30 19:05:00', '2013-08-31 04:10:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 60000),
(1173, 28, 9, 1, '2013-08-30 19:15:00', '2013-08-31 02:40:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1174, 41, 9, 1, '2013-08-30 19:30:00', '2013-08-31 07:00:00', '', 1, 0, 0, 0, 0, 160000),
(1175, 27, 9, 1, '2013-08-30 19:35:00', '2013-08-31 04:00:00', '', 1, 0, 0, 0, 0, 90000),
(1176, 4, 9, 1, '2013-08-31 06:00:00', '2013-08-31 14:00:00', '', 1, 0, 0, 0, 0, 60000),
(1177, 17, 9, 1, '2013-08-31 07:45:00', '2013-09-01 16:45:00', '', 1, 0, 0, 0, 0, 420000),
(1178, 16, 9, 1, '2013-08-31 14:25:00', '2013-08-31 22:40:00', '', 1, 0, 0, 0, 0, 70000),
(1179, 39, 9, 1, '2013-08-31 16:45:00', '2013-09-01 04:00:00', '', 1, 0, 0, 0, 0, 160000),
(1180, 4, 9, 1, '2013-08-31 18:00:00', '2013-09-01 09:20:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1181, 3, 9, 1, '2013-08-31 19:50:00', '2013-09-01 03:05:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1182, 46, 9, 1, '2013-08-31 20:00:00', '2013-09-01 09:35:00', '', 1, 0, 0, 0, 0, 175000),
(1183, 2, 9, 1, '2013-08-31 20:00:00', '2013-09-01 03:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1184, 4, 9, 1, '2013-09-01 09:40:00', '2013-09-01 17:20:00', '', 1, 0, 0, 0, 0, 60000),
(1185, 38, 9, 1, '2013-09-01 10:00:00', '2013-09-01 17:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1186, 16, 9, 1, '2013-09-01 13:35:00', '2013-09-02 10:15:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 160000),
(1187, 17, 9, 1, '2013-09-01 16:15:00', '2013-09-02 09:45:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1188, 26, 9, 1, '2013-09-01 17:30:00', '2013-09-02 11:10:00', 'Phòng 5 người', 1, 0, 0, 50000, 0, 272000),
(1189, 2, 9, 1, '2013-09-01 17:30:00', '2013-09-02 11:10:00', 'Phòng 3 người', 1, 0, 0, 40000, 0, 200000),
(1190, 4, 9, 1, '2013-09-01 17:30:00', '2013-09-02 11:10:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 150000),
(1191, 30, 9, 1, '2013-09-01 17:40:00', '2013-09-02 02:30:00', '', 1, 0, 0, 0, 0, 85000),
(1192, 29, 9, 1, '2013-09-01 18:15:00', '2013-09-02 05:05:00', '', 1, 20000, 0, 0, 0, 120000),
(1193, 3, 9, 1, '2013-09-01 18:15:00', '2013-09-02 07:05:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 130000),
(1194, 15, 9, 1, '2013-09-01 20:15:00', '2013-09-02 05:45:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 80000),
(1195, 15, 9, 1, '2013-09-02 04:15:00', '2013-09-02 14:30:00', '', 1, 0, 0, 0, 0, 140000),
(1196, 30, 9, 1, '2013-09-02 05:00:00', '2013-09-02 12:30:00', '', 1, 0, 0, 0, 0, 40000),
(1197, 16, 9, 1, '2013-09-02 05:10:00', '2013-09-02 14:20:00', '', 1, 0, 0, 0, 0, 100000),
(1198, 3, 9, 1, '2013-09-02 09:05:00', '2013-09-02 18:30:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 80000),
(1199, 4, 9, 1, '2013-09-02 08:20:00', '2013-09-02 16:00:00', '', 1, 0, 0, 0, 0, 60000),
(1200, 36, 9, 1, '2013-09-02 16:15:00', '2013-09-03 09:05:00', '', 1, 0, 0, 0, 0, 260000),
(1201, 46, 9, 1, '2013-09-02 16:45:00', '2013-09-03 08:30:00', '', 1, 0, 0, 0, 0, 160000),
(1202, 26, 9, 1, '2013-09-02 18:40:00', '2013-09-03 05:10:00', '', 1, 0, 0, 0, 0, 235000),
(1203, 40, 9, 1, '2013-09-02 19:25:00', '2013-09-03 04:05:00', '', 1, 0, 0, 0, 0, 90000),
(1204, 2, 9, 1, '2013-09-02 19:30:00', '2013-09-03 02:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1205, 16, 9, 1, '2013-09-02 19:35:00', '2013-09-03 02:50:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1206, 4, 9, 1, '2013-09-02 19:35:00', '2013-09-03 02:55:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1207, 3, 9, 1, '2013-09-02 20:25:00', '2013-09-03 03:40:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1208, 17, 9, 1, '2013-09-02 20:30:00', '2013-09-03 09:45:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1209, 2, 9, 1, '2013-09-02 21:05:00', '2013-09-03 04:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1210, 15, 9, 1, '2013-09-02 21:05:00', '2013-09-03 04:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1211, 4, 9, 1, '2013-09-03 03:30:00', '2013-09-03 12:45:00', '', 1, 0, 0, 0, 0, 100000),
(1212, 16, 9, 1, '2013-09-03 04:30:00', '2013-09-03 14:20:00', 'Phòng Quạt', 1, 0, 0, 0, 0, 120000),
(1213, 27, 9, 1, '2013-09-03 16:05:00', '2013-09-04 09:10:00', '', 1, 0, 0, 0, 0, 160000),
(1214, 15, 9, 1, '2013-09-03 17:35:00', '2013-09-04 01:35:00', '', 1, 0, 0, 0, 0, 76000),
(1215, 16, 9, 1, '2013-09-04 11:25:00', '2013-09-04 09:30:00', '', 1, 0, 0, 0, 0, 60000),
(1216, 46, 9, 1, '2013-09-04 14:20:00', '2013-09-05 07:35:00', '', 1, 0, 0, 0, 0, 200000),
(1217, 40, 9, 1, '2013-09-04 15:05:00', '2013-09-05 09:20:00', '', 1, 0, 0, 0, 0, 160000),
(1218, 4, 9, 1, '2013-09-05 00:45:00', '2013-09-05 09:15:00', '', 1, 0, 0, 0, 0, 110000),
(1219, 17, 9, 1, '2013-09-05 04:05:00', '2013-09-05 11:30:00', '', 1, 0, 0, 0, 0, 76000),
(1220, 29, 9, 1, '2013-09-05 07:35:00', '2013-09-05 15:10:00', '', 1, 0, 0, 0, 0, 40000),
(1221, 16, 9, 1, '2013-09-05 11:05:00', '2013-09-05 19:45:00', '', 1, 0, 0, 0, 0, 106000),
(1222, 16, 9, 1, '2013-09-06 10:00:00', '2013-09-07 08:30:00', '', 1, 0, 0, 0, 0, 200000),
(1223, 2, 9, 1, '2013-09-06 18:00:00', '2013-09-07 01:20:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1224, 27, 9, 1, '2013-09-06 18:00:00', '2013-09-07 08:25:00', '', 1, 0, 0, 0, 0, 160000),
(1225, 41, 9, 1, '2013-09-06 18:00:00', '2013-09-07 08:40:00', '', 1, 0, 0, 0, 0, 217000),
(1226, 42, 9, 1, '2013-09-06 18:00:00', '2013-09-07 08:15:00', '', 1, 0, 0, 0, 0, 185000),
(1227, 43, 9, 1, '2013-09-06 18:00:00', '2013-09-07 01:30:00', '', 1, 0, 0, 0, 0, 60000),
(1228, 15, 9, 1, '2013-09-06 18:55:00', '2013-09-07 02:15:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1229, 46, 9, 1, '2013-09-07 16:00:00', '2013-09-08 09:35:00', '', 1, 0, 0, 0, 0, 160000),
(1230, 43, 9, 1, '2013-09-07 10:00:00', '2013-09-07 17:25:00', '', 1, 0, 0, 0, 0, 60000),
(1231, 17, 9, 1, '2013-09-07 11:35:00', '2013-09-07 19:35:00', '', 1, 0, 0, 0, 0, 60000),
(1232, 27, 9, 1, '2013-09-07 18:40:00', '2013-09-08 07:35:00', '', 1, 0, 0, 0, 0, 160000),
(1233, 16, 9, 1, '2013-09-08 07:50:00', '2013-09-08 16:40:00', '', 1, 0, 0, 0, 0, 90000),
(1234, 4, 9, 1, '2013-09-08 08:35:00', '2013-09-09 10:30:00', '', 1, 0, 0, 0, 0, 200000),
(1235, 42, 9, 1, '2013-09-08 11:45:00', '2013-09-08 20:30:00', '', 1, 0, 0, 0, 0, 90000),
(1236, 46, 9, 1, '2013-09-08 13:55:00', '2013-09-09 05:50:00', '', 1, 0, 0, 0, 0, 200000),
(1237, 15, 9, 1, '2013-09-10 13:30:00', '2013-09-10 08:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1238, 2, 9, 1, '2013-09-08 17:25:00', '2013-09-09 00:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1239, 16, 9, 1, '2013-09-08 19:00:00', '2013-09-09 02:15:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1240, 2, 9, 1, '2013-09-08 19:00:00', '2013-09-09 02:15:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1241, 36, 9, 1, '2013-09-08 19:20:00', '2013-09-09 05:20:00', '', 1, 0, 0, 0, 0, 143000),
(1242, 27, 9, 1, '2013-09-08 19:20:00', '2013-09-09 05:20:00', '', 1, 0, 0, 0, 0, 120000),
(1243, 17, 9, 1, '2013-09-08 19:20:00', '2013-09-09 02:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1244, 3, 9, 1, '2013-09-08 19:20:00', '2013-09-09 02:40:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1245, 4, 9, 1, '2013-09-09 08:10:00', '2013-09-09 16:05:00', '', 1, 0, 0, 0, 0, 60000),
(1246, 45, 9, 1, '2013-09-09 10:50:00', '2013-09-11 07:05:00', '', 1, 0, 0, 0, 0, 452000),
(1247, 26, 9, 1, '2013-09-09 08:35:00', '2013-09-12 08:00:00', '', 1, 0, 0, 0, 0, 884000),
(1248, 46, 9, 1, '2013-09-09 16:50:00', '2013-09-10 06:20:00', '', 1, 0, 0, 0, 0, 160000),
(1249, 2, 9, 1, '2013-09-09 18:15:00', '2013-09-10 01:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1250, 27, 9, 1, '2013-09-09 19:00:00', '2013-09-10 11:30:00', '', 1, 0, 0, 0, 0, 180000),
(1251, 3, 9, 1, '2013-09-10 02:45:00', '2013-09-10 13:00:00', '', 1, 0, 0, 0, 0, 144000),
(1252, 2, 9, 1, '2013-09-10 12:25:00', '2013-09-10 21:15:00', 'Phòng Quạt', 1, 30000, 0, 0, 0, 76000),
(1253, 3, 9, 1, '2013-09-10 13:30:00', '2013-09-10 20:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1254, 4, 9, 1, '2013-09-11 03:15:00', '2013-09-11 12:25:00', '', 1, 0, 0, 0, 0, 120000),
(1255, 16, 9, 1, '2013-09-11 04:00:00', '2013-09-11 13:30:00', '', 1, 0, 0, 0, 0, 120000),
(1256, 3, 9, 1, '2013-09-11 04:20:00', '2013-09-11 12:35:00', '', 1, 0, 0, 0, 0, 68000),
(1257, 27, 9, 1, '2013-09-11 04:55:00', '2013-09-11 12:45:00', '', 1, 0, 0, 0, 0, 60000),
(1258, 30, 9, 1, '2013-09-11 07:30:00', '2013-09-11 15:30:00', '', 1, 0, 0, 0, 0, 48000),
(1259, 16, 9, 1, '2013-09-11 09:45:00', '2013-09-12 01:30:00', '', 1, 0, 0, 0, 0, 208000),
(1260, 3, 9, 1, '2013-09-11 11:15:00', '2013-09-11 21:30:00', '', 1, 0, 0, 0, 0, 136000),
(1261, 27, 9, 1, '2013-09-11 15:00:00', '2013-09-12 07:30:00', '', 1, 0, 0, 0, 0, 160000),
(1262, 36, 9, 1, '2013-09-11 15:00:00', '2013-09-12 07:30:00', '', 1, 0, 0, 0, 0, 160000),
(1263, 46, 9, 1, '2013-09-12 13:00:00', '2013-09-13 07:00:00', '', 1, 0, 0, 0, 0, 200000),
(1264, 17, 9, 1, '2013-09-12 17:20:00', '2013-09-13 06:25:00', '', 1, 40000, 0, 0, 0, 170000),
(1265, 2, 9, 1, '2013-09-12 17:20:00', '2013-09-13 00:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1266, 38, 9, 1, '2013-09-12 18:00:00', '2013-09-13 09:55:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1267, 26, 9, 1, '2013-09-12 18:30:00', '2013-09-13 11:00:00', '', 1, 0, 0, 0, 0, 210000),
(1268, 3, 9, 1, '2013-09-13 08:45:00', '2013-09-13 18:00:00', 'Phòng Quạt', 1, 0, 0, 0, 0, 90000),
(1269, 16, 9, 1, '2013-09-13 14:30:00', '2013-09-14 00:05:00', '', 1, 0, 0, 0, 0, 136000),
(1270, 15, 9, 1, '2013-09-13 15:30:00', '2013-09-13 22:50:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1271, 44, 9, 1, '2013-09-13 16:00:00', '2013-09-14 07:05:00', '', 1, 0, 0, 0, 0, 160000),
(1272, 2, 9, 1, '2013-09-13 18:00:00', '2013-09-14 01:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1273, 15, 9, 1, '2013-09-13 18:00:00', '2013-09-14 01:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1274, 3, 9, 1, '2013-09-13 18:00:00', '2013-09-14 01:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1275, 29, 9, 1, '2013-09-14 09:10:00', '2013-09-14 18:20:00', '', 1, 0, 0, 0, 0, 60000),
(1276, 39, 9, 1, '2013-09-14 15:00:00', '2013-09-15 05:55:00', '', 1, 0, 0, 0, 0, 160000),
(1277, 26, 9, 1, '2013-09-14 16:00:00', '2013-09-15 07:20:00', '', 1, 0, 0, 0, 0, 226000),
(1278, 38, 9, 1, '2013-09-14 17:15:00', '2013-09-15 08:35:00', '', 1, 0, 0, 0, 0, 176000),
(1279, 2, 9, 1, '2013-09-14 17:50:00', '2013-09-15 10:30:00', 'Phòng Quạt', 1, 40000, 0, 40000, 0, 190000),
(1280, 4, 9, 1, '2013-09-14 17:55:00', '2013-09-15 01:35:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1281, 36, 9, 1, '2013-09-14 18:00:00', '2013-09-15 10:30:00', '', 1, 0, 0, 0, 0, 160000),
(1282, 3, 9, 1, '2013-09-15 07:35:00', '2013-09-15 15:35:00', '', 1, 0, 0, 0, 0, 93000),
(1283, 4, 9, 1, '2013-09-15 07:40:00', '2013-09-15 15:55:00', '', 1, 0, 0, 0, 0, 75000),
(1284, 2, 9, 1, '2013-09-15 09:05:00', '2013-09-15 17:45:00', '', 1, 0, 0, 0, 0, 113000),
(1285, 16, 9, 1, '2013-09-15 11:55:00', '2013-09-15 19:15:00', '', 1, 0, 0, 0, 0, 60000),
(1286, 26, 9, 1, '2013-09-15 12:40:00', '2013-09-16 06:40:00', '', 1, 0, 0, 0, 0, 250000),
(1287, 42, 9, 1, '2013-09-15 13:00:00', '2013-09-16 09:00:00', '', 1, 0, 0, 0, 0, 212000),
(1288, 27, 9, 1, '2013-09-15 15:35:00', '2013-09-16 04:50:00', '', 1, 0, 0, 0, 0, 160000),
(1289, 17, 9, 1, '2013-09-15 17:10:00', '2013-09-16 06:45:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1290, 2, 9, 1, '2013-09-15 20:00:00', '2013-09-16 03:20:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1291, 3, 9, 1, '2013-09-15 20:00:00', '2013-09-16 03:15:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1292, 41, 9, 1, '2013-09-15 22:00:00', '2013-09-16 12:15:00', '', 1, 0, 0, 0, 0, 182000),
(1293, 30, 9, 1, '2013-09-16 07:10:00', '2013-09-16 14:50:00', '', 1, 0, 0, 0, 0, 40000),
(1294, 36, 9, 1, '2013-09-15 22:00:00', '2013-09-16 09:10:00', '', 1, 0, 0, 0, 0, 160000),
(1295, 3, 9, 1, '2013-09-10 03:40:00', '2013-09-10 13:30:00', '', 1, 0, 0, 0, 0, 140000),
(1296, 16, 9, 1, '2013-09-16 05:10:00', '2013-09-16 14:05:00', '', 1, 0, 0, 0, 0, 114000),
(1297, 4, 9, 1, '2013-09-16 06:25:00', '2013-09-16 17:35:00', '', 1, 50000, 0, 0, 0, 150000),
(1299, 26, 9, 1, '2013-09-16 10:50:00', '2013-09-17 08:15:00', '', 1, 0, 0, 0, 0, 290000),
(1300, 16, 9, 1, '2013-09-16 08:35:00', '2013-09-16 16:55:00', '', 1, 0, 0, 0, 0, 90000),
(1301, 16, 9, 1, '2013-09-16 13:45:00', '2013-09-16 21:30:00', '', 1, 0, 0, 0, 0, 60000),
(1302, 41, 9, 1, '2013-09-16 10:50:00', '2013-09-17 08:15:00', '', 1, 0, 0, 0, 0, 222000),
(1303, 17, 9, 1, '2013-09-18 16:50:00', '2013-09-19 00:10:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1304, 38, 9, 1, '2013-09-16 17:40:00', '2013-09-17 11:00:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1305, 16, 9, 1, '2013-09-17 03:20:00', '2013-09-17 14:05:00', 'Phòng Quạt ', 1, 160000, 0, 0, 0, 116000),
(1306, 30, 9, 1, '2013-09-17 07:05:00', '2013-09-17 15:05:00', '', 1, 0, 0, 0, 0, 40000),
(1307, 4, 9, 1, '2013-09-17 10:20:00', '2013-09-17 18:00:00', '', 1, 0, 0, 0, 0, 60000),
(1308, 46, 9, 16, '2013-09-17 13:20:00', '2013-09-18 05:55:00', '', 2, 0, 0, 0, 0, 210000),
(1309, 27, 9, 1, '2013-09-17 15:30:00', '2013-09-18 09:15:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1310, 15, 9, 1, '2013-09-17 15:30:00', '2013-09-18 07:30:00', '', 1, 0, 0, 0, 0, 160000),
(1311, 40, 9, 1, '2013-09-17 18:00:00', '2013-09-18 11:10:00', '', 1, 0, 0, 0, 0, 180000),
(1313, 1, 6, 6, '2013-09-17 10:30:00', '2013-09-17 17:30:00', 'Bảo Ngân', 2, 60000, 0, 0, 0, 10000),
(1314, 41, 6, 1, '2013-09-17 20:50:00', '2013-09-18 11:05:00', '', 1, 0, 0, 0, 0, 160000),
(1315, 3, 6, 1, '2013-09-18 06:00:00', '2013-09-18 15:45:00', '', 1, 0, 0, 0, 0, 130000),
(1316, 30, 6, 1, '2013-09-18 08:00:00', '2013-09-18 16:10:00', '', 1, 0, 0, 0, 0, 40000),
(1317, 4, 6, 1, '2013-09-18 08:10:00', '2013-09-18 16:15:00', '', 1, 0, 0, 0, 0, 60000),
(1318, 2, 9, 1, '2013-09-18 15:35:00', '2013-09-18 22:50:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1319, 46, 9, 1, '2013-09-18 15:25:00', '2013-09-19 06:45:00', '', 1, 0, 0, 0, 0, 180000),
(1320, 36, 9, 1, '2013-09-18 16:05:00', '2013-09-19 11:45:00', '', 1, 0, 0, 0, 0, 160000),
(1321, 3, 6, 1, '2013-09-18 16:10:00', '2013-09-19 00:00:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1322, 16, 6, 1, '2013-09-18 16:25:00', '2013-09-18 23:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1323, 4, 6, 1, '2013-09-18 16:50:00', '2013-09-19 00:10:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1324, 40, 6, 1, '2013-09-18 16:50:00', '2013-09-19 05:40:00', '', 1, 0, 0, 0, 0, 180000),
(1325, 3, 6, 1, '2013-09-18 18:40:00', '2013-09-19 02:05:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 87000),
(1326, 2, 6, 1, '2013-09-18 20:05:00', '2013-09-19 03:20:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1327, 16, 6, 1, '2013-09-18 20:05:00', '2013-09-19 03:20:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1328, 16, 6, 1, '2013-09-19 05:00:00', '2013-09-20 15:15:00', 'Nhận phòng lúc 11h', 1, 0, 0, 40000, 0, 370000),
(1329, 40, 6, 1, '2013-09-19 05:00:00', '2013-09-20 10:50:00', 'Nhận phòng lúc 11h40', 1, 0, 0, 40000, 0, 240000),
(1330, 27, 10, 1, '2013-09-19 17:30:00', '2013-09-20 08:00:00', '', 1, 0, 0, 0, 0, 160000),
(1331, 1, 6, 6, '2013-09-18 10:00:00', '2013-09-18 17:00:00', 'Bán Lẻ', 2, 60000, 0, 0, 0, 10000),
(1332, 1, 6, 1, '2013-09-19 05:00:00', '2013-09-19 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 46000),
(1333, 4, 6, 1, '2013-09-19 05:35:00', '2013-09-19 13:30:00', '', 1, 0, 0, 0, 0, 72000),
(1334, 2, 6, 1, '2013-09-19 07:30:00', '2013-09-19 15:05:00', '', 1, 0, 0, 0, 0, 84000),
(1335, 3, 6, 1, '2013-09-19 08:50:00', '2013-09-19 17:20:00', '', 1, 0, 0, 0, 0, 90000),
(1336, 3, 6, 1, '2013-09-20 17:10:00', '2013-09-20 00:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1337, 2, 9, 1, '2013-09-19 17:10:00', '2013-09-20 00:30:00', 'Phòng Quạt', 1, 20000, 0, 5000, 0, 45000),
(1338, 15, 9, 1, '2013-09-19 17:10:00', '2013-09-20 00:35:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1339, 46, 6, 1, '2013-09-19 15:20:00', '2013-09-20 08:00:00', '', 1, 0, 0, 0, 0, 185000),
(1340, 2, 6, 1, '2013-09-20 03:10:00', '2013-09-20 10:30:00', '', 1, 0, 0, 0, 0, 60000),
(1341, 3, 6, 1, '2013-09-20 04:50:00', '2013-09-20 12:20:00', '', 1, 0, 0, 0, 0, 70000),
(1342, 1, 6, 1, '2013-09-20 05:00:00', '2013-09-20 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 51000),
(1345, 1, 11, 1, '2013-09-20 14:54:58', '0000-00-00 00:00:00', 'Ví dụ', 1, 0, 0, 0, 0, 80000),
(1346, 1, 4, 1, '2013-09-20 15:47:38', NULL, '', 1, 0, 0, 0, 0, 60000),
(1347, 15, 9, 1, '2013-09-20 16:10:00', '2013-09-21 01:50:00', '', 1, 0, 0, 0, 0, 140000),
(1348, 4, 10, 1, '2013-09-20 19:30:00', '2013-09-21 03:30:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1349, 4, 10, 1, '2013-09-22 09:10:00', '2013-09-22 17:05:00', '', 1, 0, 0, 0, 0, 70000),
(1350, 16, 10, 1, '2013-09-20 19:30:00', '2013-09-21 02:25:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1351, 1, 6, 6, '2013-09-21 05:00:00', '2013-09-21 12:00:00', 'Bảo Ngân', 2, 60000, 0, 0, 0, 12000),
(1352, 1, 6, 1, '2013-09-21 05:00:00', '2013-09-21 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 24000),
(1353, 1, 6, 1, '2013-09-22 05:00:00', '2013-09-22 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 15000),
(1354, 2, 6, 1, '2013-09-21 08:05:00', '2013-09-21 17:05:00', '', 1, 0, 0, 0, 0, 105000),
(1355, 16, 6, 1, '2013-09-21 08:40:00', '2013-09-21 18:10:00', '', 1, 0, 0, 0, 0, 130000),
(1356, 15, 9, 1, '2013-09-24 15:00:00', '2013-09-24 23:05:00', '', 1, 0, 0, 0, 0, 72000),
(1357, 27, 6, 1, '2013-09-21 19:00:00', '2013-09-22 09:00:00', '', 1, 0, 0, 0, 0, 160000),
(1358, 27, 6, 1, '2013-09-22 16:15:00', '2013-09-26 07:20:00', '', 1, 0, 0, 0, 0, 770000),
(1359, 30, 9, 1, '2013-09-22 09:30:00', '2013-09-22 19:05:00', '', 1, 0, 0, 0, 0, 80000),
(1360, 26, 9, 1, '2013-09-22 15:00:00', '2013-09-24 13:15:00', '', 1, 0, 0, 0, 0, 510000),
(1361, 41, 9, 1, '2013-10-04 18:55:00', '2013-10-05 05:00:00', '', 1, 0, 0, 0, 0, 120000),
(1362, 16, 9, 1, '2013-09-22 18:55:00', '2013-09-23 06:25:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 160000),
(1363, 3, 9, 1, '2013-09-23 04:25:00', '2013-09-23 13:25:00', '', 1, 0, 0, 0, 0, 90000),
(1364, 1, 6, 1, '2013-09-23 05:00:00', '2013-09-23 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 52000),
(1365, 36, 6, 1, '2013-09-23 14:45:00', '2013-09-24 10:50:00', 'Bán bịt bánh khoai tây', 1, 0, 0, 10000, 0, 210000),
(1366, 42, 6, 1, '2013-09-23 15:00:00', '2013-09-24 07:35:00', '', 1, 0, 0, 0, 0, 170000),
(1367, 2, 10, 1, '2013-09-23 18:50:00', '2013-09-24 02:10:00', 'phòng quạt', 1, 20000, 0, 0, 0, 50000),
(1368, 37, 10, 1, '2013-09-23 19:00:00', '2013-09-24 04:55:00', '', 1, 0, 0, 0, 0, 120000),
(1369, 4, 10, 1, '2013-09-24 03:20:00', '2013-09-24 10:30:00', '', 1, 0, 0, 0, 0, 60000),
(1370, 1, 6, 1, '2013-09-24 05:00:00', '0000-00-00 00:00:00', 'Bán Lẻ ', 1, 60000, 0, 0, 0, 25000),
(1371, 30, 9, 1, '2013-09-24 12:30:00', '2013-09-24 20:30:00', '', 1, 0, 0, 40000, 0, 114000),
(1372, 26, 9, 1, '2013-09-24 13:45:00', '2013-09-25 13:00:00', '', 1, 0, 0, 0, 0, 340000),
(1373, 46, 9, 1, '2013-09-30 15:55:00', '2013-10-01 07:30:00', '', 1, 0, 0, 0, 0, 160000),
(1374, 16, 9, 1, '2013-09-24 15:00:00', '2013-09-24 23:05:00', '', 1, 0, 0, 0, 0, 60000),
(1375, 40, 9, 1, '2013-09-24 16:00:00', '2013-09-25 04:50:00', '', 1, 0, 0, 0, 0, 160000),
(1376, 3, 9, 1, '2013-09-24 16:35:00', '2013-09-25 00:10:00', '', 1, 20000, 0, 0, 0, 50000),
(1377, 45, 9, 1, '2013-09-24 17:15:00', '2013-09-25 07:50:00', '', 1, 0, 0, 0, 0, 160000),
(1378, 15, 9, 1, '2013-09-24 17:30:00', '2013-09-25 00:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1379, 15, 6, 1, '2013-09-21 15:05:00', '2013-09-22 06:40:00', 'Giá bia 25.000đ', 1, 0, 0, 50000, 0, 460000),
(1380, 16, 6, 1, '2013-09-23 11:15:00', '2013-09-24 15:15:00', 'Giá bia 25.000đ', 1, 0, 0, 10000, 0, 340000),
(1381, 45, 10, 1, '2013-09-27 18:45:00', '2013-09-28 05:35:00', '', 1, 0, 0, 0, 0, 184000),
(1382, 15, 10, 1, '2013-09-24 17:35:00', '2013-09-25 06:00:00', '', 1, 0, 0, 0, 0, 190000),
(1383, 1, 6, 1, '2013-09-25 05:00:00', '2013-09-25 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 42000),
(1384, 4, 6, 1, '2013-09-25 08:10:00', '2013-09-25 17:15:00', '', 1, 0, 0, 0, 0, 110000),
(1385, 15, 6, 1, '2013-09-25 10:45:00', '2013-09-25 20:28:00', '', 1, 0, 0, 0, 0, 120000),
(1386, 16, 6, 1, '2013-09-25 10:40:00', '2013-09-25 19:18:00', '', 1, 0, 0, 0, 0, 110000),
(1387, 39, 6, 1, '2013-09-25 10:45:00', '2013-09-26 08:15:00', '', 1, 0, 0, 0, 0, 210000),
(1388, 3, 9, 1, '2013-09-25 11:40:00', '2013-09-25 19:50:00', '', 1, 0, 0, 0, 0, 60000),
(1389, 4, 9, 1, '2013-09-25 11:55:00', '2013-09-25 19:50:00', '', 1, 0, 0, 0, 0, 60000),
(1390, 43, 9, 1, '2013-10-01 14:25:00', '2013-10-02 05:51:00', '', 1, 0, 0, 0, 0, 200000),
(1391, 16, 9, 1, '2013-09-25 15:35:00', '2013-09-26 06:10:00', '', 1, 0, 0, 0, 0, 160000),
(1392, 3, 6, 1, '2013-09-26 01:00:00', '2013-09-26 09:40:00', '', 1, 0, 0, 0, 0, 90000),
(1393, 16, 6, 1, '2013-09-26 04:10:00', '2013-09-26 13:00:00', '', 1, 0, 0, 0, 0, 90000),
(1394, 3, 6, 1, '2013-09-26 04:30:00', '2013-09-26 13:25:00', '', 1, 0, 0, 0, 0, 100000),
(1395, 2, 6, 1, '2013-09-26 08:20:00', '2013-09-26 16:00:00', '', 1, 0, 0, 0, 0, 60000),
(1396, 1, 6, 1, '2013-09-26 05:00:00', '2013-09-26 12:00:00', '', 1, 60000, 0, 0, 0, 87000),
(1397, 16, 6, 1, '2013-09-26 09:10:00', '2013-09-26 17:05:00', '', 1, 0, 0, 0, 0, 60000),
(1398, 15, 6, 1, '2013-09-26 09:45:00', '2013-09-26 18:54:00', '', 1, 0, 0, 0, 0, 110000),
(1399, 26, 9, 1, '2013-09-26 14:50:00', '2013-09-27 08:25:00', '', 1, 0, 0, 0, 0, 260000),
(1400, 2, 6, 1, '2013-09-26 23:05:00', '2013-09-27 06:25:00', 'Phòng Quạt (Khách yêu cầu phòng gần)', 1, 20000, 0, 0, 0, 40000),
(1401, 1, 6, 1, '2013-09-27 05:00:00', '2013-09-27 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 36000),
(1402, 39, 9, 1, '2013-09-27 11:55:00', '2013-09-28 10:15:00', '', 1, 0, 0, 0, 0, 210000),
(1403, 26, 9, 1, '2013-09-27 16:15:00', '2013-09-28 06:40:00', '', 1, 0, 0, 0, 0, 210000),
(1404, 37, 9, 1, '2013-09-27 18:45:00', '2013-09-28 08:30:00', '', 1, 0, 0, 0, 0, 160000),
(1405, 2, 6, 1, '2013-09-28 01:20:00', '2013-09-28 11:55:00', '', 1, 50000, 0, 0, 0, 150000),
(1406, 3, 6, 1, '2013-09-28 06:15:00', '2013-09-28 17:00:00', '', 1, 50000, 0, 0, 0, 150000),
(1407, 16, 6, 1, '2013-09-28 06:20:00', '2013-09-28 16:25:00', 'Nước đá', 1, 0, 0, 5000, 0, 147000),
(1409, 1, 6, 1, '2013-09-28 05:00:00', '2013-09-28 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 24000),
(1410, 1, 6, 6, '2013-09-28 01:20:00', '2013-09-28 08:20:00', 'Bán Lẻ (Bảo Ngân)', 2, 60000, 0, 0, 0, 12000),
(1411, 4, 6, 1, '2013-09-28 10:55:00', '2013-09-28 18:29:00', '', 1, 0, 0, 0, 0, 60000),
(1412, 15, 9, 1, '2013-09-28 11:15:00', '2013-09-28 19:25:00', '', 1, 0, 0, 0, 0, 60000),
(1413, 17, 9, 1, '2013-09-28 11:47:00', '2013-09-28 20:00:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1414, 4, 6, 1, '2013-09-28 19:35:00', '2013-09-29 07:10:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1415, 15, 6, 1, '2013-09-29 01:30:07', '2013-09-29 08:50:00', '', 1, 20000, 0, 0, 0, 40000),
(1416, 1, 6, 1, '2013-09-29 05:00:00', '2013-09-29 12:00:00', 'Ban Le', 1, 60000, 0, 0, 0, 69000),
(1417, 3, 6, 1, '2013-09-29 06:15:00', '2013-09-29 18:30:00', '', 1, 0, 0, 0, 0, 210000),
(1418, 30, 9, 1, '2013-10-03 07:15:00', '2013-10-03 15:15:00', '', 0, 0, 0, 0, 0, 50000),
(1419, 1, 6, 1, '2013-09-30 05:00:00', '2013-09-30 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 24000),
(1420, 3, 9, 1, '2013-09-30 10:45:00', '2013-09-30 18:15:00', '', 1, 0, 0, 0, 0, 70000),
(1421, 4, 10, 1, '2013-09-29 15:15:00', '2013-09-30 03:40:00', 'phòng quạt', 1, 40000, 0, 0, 0, 120000),
(1422, 27, 10, 1, '2013-09-29 18:00:00', '2013-09-30 06:00:00', '', 1, 0, 0, 0, 0, 160000),
(1423, 29, 9, 1, '2013-09-30 17:10:00', '2013-10-01 08:45:00', '', 1, 0, 0, 0, 0, 130000),
(1424, 40, 9, 1, '2013-10-05 02:15:00', '2013-10-06 11:15:00', '', 1, 160000, 0, 0, 0, 240000),
(1425, 1, 6, 1, '2013-10-01 05:00:00', '2013-10-01 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 72000),
(1426, 37, 9, 1, '2013-10-01 18:20:00', '2013-10-02 09:00:00', '', 1, 0, 0, 0, 0, 160000),
(1427, 36, 9, 1, '2013-10-01 19:30:00', '2013-10-02 07:25:00', '', 1, 0, 0, 0, 0, 160000),
(1428, 42, 9, 1, '2013-10-01 18:30:00', '2013-10-02 04:01:00', '', 1, 0, 0, 0, 0, 120000),
(1429, 1, 6, 1, '2013-10-02 05:00:00', '2013-10-02 12:00:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 36000),
(1430, 1, 6, 1, '2013-10-03 04:55:00', '2013-10-03 11:55:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 46000),
(1431, 3, 6, 1, '2013-09-30 06:15:00', '2013-09-30 13:45:00', '', 1, 0, 0, 0, 0, 60000),
(1432, 3, 6, 1, '2013-10-01 02:00:00', '2013-10-01 11:15:00', '', 1, 0, 0, 0, 0, 105000),
(1433, 4, 6, 1, '2013-09-30 07:50:00', '2013-09-30 16:00:00', '', 1, 0, 0, 0, 0, 70000),
(1434, 43, 6, 1, '2013-09-30 16:10:00', '2013-10-01 10:20:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 132000),
(1435, 16, 6, 1, '2013-10-01 07:40:00', '2013-10-02 13:30:00', '', 1, 0, 0, 0, 0, 270000),
(1436, 45, 6, 1, '2013-10-01 10:40:00', '2013-10-02 12:10:00', 'Tiền phòng 200.000đ', 1, 30000, 0, 0, 0, 227000),
(1437, 3, 6, 1, '2013-10-02 07:00:00', '2013-10-02 17:00:00', '', 1, 0, 0, 0, 0, 140000),
(1438, 16, 9, 1, '2013-10-03 13:45:00', '2013-10-03 21:26:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 50000),
(1439, 26, 9, 1, '2013-10-03 14:25:00', '2013-10-04 06:15:00', '', 1, 0, 0, 0, 0, 250000),
(1440, 16, 9, 1, '2013-10-04 13:39:00', '2013-10-04 22:11:00', '', 1, 0, 0, 0, 0, 100000),
(1441, 16, 9, 1, '2013-10-03 07:30:00', '2013-10-03 16:00:00', '', 1, 0, 0, 0, 0, 100000),
(1442, 3, 9, 1, '2013-10-04 16:41:00', '2013-10-05 00:01:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1443, 4, 6, 1, '2013-10-05 01:45:00', '2013-10-05 09:50:00', '', 1, 0, 0, 0, 0, 70000),
(1444, 3, 6, 1, '2013-10-05 03:30:00', '2013-10-05 14:30:00', '', 1, 140000, 0, 0, 0, 160000),
(1445, 2, 6, 1, '2013-10-05 03:30:00', '2013-10-05 13:10:00', '', 1, 0, 0, 0, 0, 120000),
(1446, 36, 6, 1, '2013-10-05 06:40:00', '2013-10-05 16:20:00', '', 1, 0, 0, 0, 0, 120000),
(1447, 1, 6, 1, '2013-10-04 04:55:00', '2013-10-04 11:55:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 24000),
(1448, 1, 6, 6, '2013-10-05 05:30:00', '2013-10-05 12:30:00', 'Bảo Ngân ', 2, 60000, 0, 0, 0, 12000),
(1449, 27, 6, 1, '2013-10-03 05:45:00', '2013-10-03 15:25:00', '', 1, 0, 0, 0, 0, 120000),
(1450, 26, 6, 1, '2013-10-05 10:15:00', '2013-10-06 07:50:00', '', 1, 0, 0, 0, 0, 285000),
(1451, 46, 9, 1, '2013-10-05 12:12:00', '2013-10-06 09:30:00', '', 1, 0, 0, 0, 0, 200000),
(1452, 39, 9, 1, '2013-10-05 14:25:00', '2013-10-06 07:50:00', '', 1, 0, 0, 0, 0, 200000),
(1453, 4, 9, 1, '2013-10-05 16:02:00', '2013-10-06 12:00:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 130000),
(1454, 3, 9, 1, '2013-10-05 18:30:00', '2013-10-06 01:57:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1455, 15, 6, 1, '2013-10-06 01:50:00', '2013-10-06 10:55:00', '', 1, 0, 0, 0, 0, 90000),
(1456, 1, 6, 1, '2013-10-06 04:55:00', '2013-10-06 11:55:00', 'Bán Lẻ', 1, 60000, 0, 0, 0, 36000),
(1457, 43, 6, 11, '2013-09-25 11:55:00', '2013-09-26 10:10:00', 'Ngày 6/10 A Tuôl đã thanh toán Phiếu nợ ngày 25/09', 1, 0, 0, 0, 0, 212000),
(1458, 3, 6, 1, '2013-10-06 06:00:00', '2013-10-06 13:40:00', '', 1, 0, 0, 0, 0, 80000),
(1459, 2, 6, 1, '2013-10-06 06:20:00', '2013-10-06 15:15:00', '', 1, 0, 0, 0, 0, 100000),
(1460, 16, 6, 1, '2013-10-04 14:25:00', '2013-10-06 15:15:00', '', 1, 0, 0, 0, 0, 550000),
(1461, 4, 9, 1, '2013-10-06 12:15:00', '2013-10-06 19:53:00', '', 1, 0, 0, 0, 0, 60000),
(1462, 46, 9, 1, '2013-10-06 13:17:00', '2013-10-07 07:50:00', '', 1, 0, 0, 0, 0, 212000),
(1463, 2, 9, 1, '2013-10-06 14:10:00', '2013-10-06 21:45:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1464, 3, 9, 1, '2013-10-06 15:50:00', '0000-00-00 00:00:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1465, 4, 9, 1, '2013-10-06 15:50:00', '0000-00-00 00:00:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1466, 16, 9, 1, '2013-10-06 15:50:00', '0000-00-00 00:00:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1467, 17, 9, 1, '2013-10-06 15:50:00', '2013-10-06 23:19:00', 'Phòng Quạt', 1, 20000, 0, 0, 0, 40000),
(1468, 4, 6, 1, '2013-10-07 05:45:00', '2013-10-07 14:35:00', '', 1, 0, 0, 0, 0, 110000),
(1469, 26, 6, 1, '2013-10-07 06:05:00', '2013-10-08 07:15:00', '', 1, 0, 0, 0, 0, 250000),
(1470, 27, 6, 1, '2013-10-07 06:05:00', '2013-10-08 07:15:00', '', 1, 0, 0, 0, 0, 200000),
(1471, 1, 6, 1, '2013-10-07 04:55:00', '2013-10-07 11:55:00', 'Bán lẻ', 1, 60000, 0, 0, 0, 32000),
(1472, 1, 6, 6, '2013-10-07 01:10:00', '2013-10-07 08:10:00', 'Tiếp khách (karaoke)', 1, 60000, 0, 0, 0, 30000),
(1473, 3, 6, 1, '2013-10-07 07:15:00', '2013-10-07 15:55:00', '', 1, 0, 0, 0, 0, 90000),
(1474, 2, 10, 1, '2013-10-07 20:25:00', '2013-10-08 07:25:00', 'Phòng Quạt', 1, 40000, 0, 0, 0, 120000),
(1475, 16, 10, 1, '2013-10-07 13:20:00', '2013-10-07 21:50:00', '', 1, 0, 0, 0, 0, 90000),
(1476, 16, 10, 1, '2013-10-07 15:00:14', NULL, '', 0, 0, 0, 0, 0, 60000),
(1477, 32, 9, 1, '2013-10-07 17:45:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 210000),
(1478, 36, 9, 1, '2013-10-07 18:37:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 60000),
(1479, 41, 9, 1, '2013-10-14 05:43:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 60000),
(1480, 27, 9, 1, '2013-10-14 05:40:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 60000),
(1481, 4, 9, 1, '2013-10-14 06:50:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 60000);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_session_detail`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1475 ;

--
-- Contenu de la table `h3d_session_detail`
--

INSERT INTO `h3d_session_detail` (`id`, `idsession`, `idcourse`, `count`, `price`) VALUES
(698, 1158, 115, 2, 0),
(699, 1158, 54, 12, 1),
(700, 1158, 128, 2, 12000),
(701, 1158, 139, 1, 10000),
(702, 1158, 15, 1, 25000),
(703, 1159, 115, 2, 0),
(704, 1159, 54, 12, 1),
(705, 1160, 115, 2, 0),
(706, 1160, 54, 12, 1),
(707, 1160, 56, 2, 15000),
(708, 1160, 53, 1, 12000),
(709, 1161, 115, 2, 0),
(710, 1161, 54, 12, 1),
(715, 1164, 115, 2, 0),
(716, 1164, 54, 12, 1),
(717, 1165, 115, 2, 0),
(718, 1165, 54, 1, 12000),
(719, 1166, 115, 2, 0),
(720, 1166, 54, 12, 1),
(721, 1166, 126, 3, 10000),
(722, 1167, 115, 2, 0),
(723, 1167, 54, 1, 12000),
(724, 1167, 136, 2, 15000),
(725, 1167, 53, 1, 12000),
(726, 1167, 128, 1, 12000),
(727, 1168, 115, 2, 0),
(728, 1168, 54, 12, 1),
(729, 1168, 127, 1, 12000),
(730, 1169, 115, 2, 0),
(731, 1169, 54, 1, 12000),
(732, 1170, 115, 2, 0),
(733, 1170, 54, 12, 1),
(734, 1170, 126, 1, 10000),
(735, 1170, 53, 1, 12000),
(736, 1171, 115, 2, 0),
(737, 1171, 54, 12, 1),
(738, 1171, 143, 1, 0),
(739, 1172, 115, 2, 0),
(740, 1172, 54, 12, 1),
(741, 1173, 115, 2, 0),
(742, 1173, 54, 12, 1),
(743, 1174, 115, 2, 0),
(744, 1174, 54, 12, 1),
(745, 1174, 143, 1, 0),
(746, 1175, 115, 2, 0),
(747, 1175, 54, 12, 1),
(748, 1175, 143, 1, 0),
(749, 1176, 115, 2, 0),
(750, 1176, 54, 12, 1),
(751, 1177, 115, 2, 0),
(752, 1177, 54, 12, 1),
(753, 1177, 126, 2, 10000),
(754, 1178, 115, 2, 0),
(755, 1178, 54, 12, 1),
(756, 1178, 126, 1, 10000),
(757, 1179, 115, 2, 0),
(758, 1179, 54, 12, 1),
(759, 1179, 143, 1, 0),
(760, 1180, 115, 2, 0),
(761, 1180, 54, 12, 1),
(762, 1181, 115, 2, 0),
(763, 1181, 54, 12, 1),
(764, 1182, 115, 2, 0),
(765, 1182, 54, 12, 1),
(766, 1182, 136, 1, 15000),
(767, 1182, 143, 1, 0),
(768, 1183, 115, 2, 0),
(769, 1183, 54, 12, 1),
(770, 1184, 115, 2, 0),
(771, 1184, 54, 12, 1),
(772, 1185, 115, 2, 0),
(773, 1185, 54, 12, 1),
(774, 1186, 115, 2, 0),
(775, 1186, 54, 12, 1),
(776, 1187, 115, 2, 0),
(777, 1187, 54, 12, 1),
(778, 1188, 53, 1, 12000),
(779, 1189, 115, 2, 0),
(780, 1189, 54, 12, 1),
(781, 1190, 115, 2, 0),
(782, 1190, 54, 12, 1),
(783, 1190, 126, 3, 10000),
(784, 1191, 116, 1, 25000),
(785, 1192, 126, 2, 10000),
(786, 1193, 126, 1, 10000),
(787, 1194, 115, 2, 0),
(788, 1194, 54, 12, 1),
(789, 1195, 115, 2, 0),
(790, 1195, 54, 12, 1),
(791, 1195, 126, 2, 10000),
(792, 1197, 115, 2, 0),
(793, 1197, 54, 12, 1),
(794, 1197, 126, 1, 10000),
(795, 1198, 115, 2, 0),
(796, 1198, 54, 12, 1),
(797, 1199, 115, 2, 0),
(798, 1199, 54, 12, 1),
(799, 1200, 115, 2, 0),
(800, 1200, 54, 12, 1),
(801, 1200, 108, 4, 25000),
(802, 1201, 115, 2, 0),
(803, 1201, 54, 12, 1),
(804, 1202, 116, 1, 25000),
(805, 1203, 115, 2, 0),
(806, 1203, 54, 12, 1),
(807, 1204, 115, 2, 0),
(808, 1204, 54, 12, 1),
(809, 1205, 115, 2, 0),
(810, 1205, 54, 12, 1),
(811, 1206, 115, 2, 0),
(812, 1206, 54, 12, 1),
(813, 1207, 115, 2, 0),
(814, 1207, 54, 12, 1),
(815, 1208, 115, 2, 0),
(816, 1208, 54, 12, 1),
(817, 1209, 115, 2, 0),
(818, 1209, 54, 12, 1),
(819, 1210, 115, 2, 0),
(820, 1210, 54, 12, 1),
(821, 1211, 115, 2, 0),
(822, 1211, 54, 12, 1),
(823, 1211, 126, 1, 10000),
(824, 1212, 115, 2, 0),
(825, 1212, 54, 12, 1),
(826, 1213, 115, 2, 0),
(827, 1213, 54, 12, 1),
(828, 1214, 115, 2, 0),
(829, 1214, 54, 12, 1),
(830, 1214, 143, 2, 8000),
(831, 1215, 115, 2, 0),
(832, 1215, 54, 12, 1),
(833, 1216, 115, 2, 0),
(834, 1216, 54, 12, 1),
(835, 1217, 115, 2, 0),
(836, 1217, 54, 12, 1),
(837, 1218, 115, 2, 0),
(838, 1218, 54, 12, 1),
(839, 1218, 143, 1, 8000),
(840, 1218, 127, 1, 12000),
(841, 1219, 115, 2, 0),
(842, 1219, 54, 12, 1),
(843, 1219, 143, 2, 8000),
(844, 1221, 115, 2, 0),
(845, 1221, 54, 12, 1),
(846, 1221, 143, 2, 8000),
(847, 1222, 115, 2, 0),
(848, 1222, 54, 12, 1),
(849, 1223, 115, 2, 0),
(850, 1223, 54, 12, 1),
(851, 1224, 115, 2, 0),
(852, 1224, 54, 12, 1),
(853, 1225, 115, 2, 0),
(854, 1225, 54, 12, 1),
(855, 1225, 53, 2, 12000),
(856, 1225, 143, 1, 8000),
(857, 1225, 116, 1, 25000),
(858, 1226, 115, 2, 0),
(859, 1226, 54, 12, 1),
(860, 1226, 116, 1, 25000),
(861, 1227, 115, 2, 0),
(862, 1227, 54, 12, 1),
(863, 1228, 115, 2, 0),
(864, 1228, 54, 12, 1),
(865, 1229, 115, 2, 0),
(866, 1229, 54, 12, 1),
(867, 1230, 115, 2, 0),
(868, 1230, 54, 12, 1),
(869, 1231, 115, 2, 0),
(870, 1231, 54, 12, 1),
(871, 1232, 115, 2, 0),
(872, 1232, 54, 12, 1),
(873, 1233, 115, 2, 0),
(874, 1233, 54, 12, 1),
(875, 1234, 115, 2, 0),
(876, 1234, 54, 12, 1),
(877, 1235, 115, 2, 0),
(878, 1235, 54, 12, 1),
(879, 1236, 115, 2, 0),
(880, 1236, 54, 12, 1),
(881, 1237, 115, 2, 0),
(882, 1237, 54, 12, 1),
(883, 1238, 115, 2, 0),
(884, 1238, 54, 12, 1),
(885, 1239, 115, 2, 0),
(886, 1239, 54, 12, 1),
(887, 1240, 115, 2, 0),
(888, 1240, 54, 12, 1),
(889, 1241, 115, 2, 0),
(890, 1241, 54, 12, 1),
(891, 1241, 143, 1, 8000),
(892, 1241, 56, 1, 15000),
(893, 1242, 115, 2, 0),
(894, 1242, 54, 12, 1),
(895, 1243, 115, 2, 0),
(896, 1243, 54, 12, 1),
(897, 1244, 115, 2, 0),
(898, 1244, 54, 12, 1),
(899, 1245, 115, 2, 0),
(900, 1245, 54, 12, 1),
(901, 1246, 115, 2, 0),
(902, 1246, 54, 12, 1),
(903, 1246, 143, 5, 8000),
(904, 1246, 53, 1, 12000),
(905, 1247, 143, 13, 8000),
(906, 1247, 140, 2, 15000),
(907, 1248, 115, 2, 0),
(908, 1248, 54, 12, 1),
(909, 1249, 115, 2, 0),
(910, 1249, 54, 12, 1),
(911, 1250, 115, 2, 0),
(912, 1250, 54, 1, 12000),
(913, 1250, 143, 1, 8000),
(914, 1251, 115, 2, 0),
(915, 1251, 54, 12, 1),
(916, 1251, 127, 2, 12000),
(917, 1252, 115, 2, 0),
(918, 1252, 54, 12, 1),
(919, 1252, 143, 2, 8000),
(920, 1253, 115, 2, 0),
(921, 1253, 54, 12, 1),
(922, 1254, 115, 2, 0),
(923, 1254, 54, 12, 1),
(924, 1254, 136, 2, 15000),
(925, 1255, 115, 2, 0),
(926, 1255, 54, 12, 1),
(927, 1256, 115, 2, 0),
(928, 1256, 54, 12, 1),
(929, 1256, 143, 1, 8000),
(930, 1257, 115, 2, 0),
(931, 1257, 54, 12, 1),
(932, 1258, 143, 1, 8000),
(933, 1259, 115, 2, 0),
(934, 1259, 54, 12, 1),
(935, 1259, 143, 1, 8000),
(936, 1260, 115, 2, 0),
(937, 1260, 54, 12, 1),
(938, 1260, 143, 2, 8000),
(939, 1261, 115, 2, 0),
(940, 1261, 54, 12, 1),
(941, 1262, 115, 2, 0),
(942, 1262, 54, 12, 1),
(943, 1263, 115, 2, 0),
(944, 1263, 54, 12, 1),
(945, 1264, 115, 2, 0),
(946, 1264, 54, 12, 1),
(947, 1264, 108, 2, 25000),
(948, 1265, 115, 2, 0),
(949, 1265, 54, 12, 1),
(950, 1266, 115, 2, 0),
(951, 1266, 54, 12, 1),
(952, 1268, 115, 2, 0),
(953, 1268, 54, 12, 1),
(954, 1269, 115, 2, 0),
(955, 1269, 54, 12, 1),
(956, 1269, 143, 2, 8000),
(957, 1270, 115, 2, 0),
(958, 1270, 54, 12, 1),
(959, 1271, 115, 2, 0),
(960, 1271, 54, 12, 1),
(961, 1272, 115, 2, 0),
(962, 1272, 54, 12, 1),
(963, 1273, 115, 2, 0),
(964, 1273, 54, 12, 1),
(965, 1274, 115, 2, 0),
(966, 1274, 54, 12, 1),
(967, 1276, 115, 2, 0),
(968, 1276, 54, 12, 1),
(969, 1277, 143, 2, 8000),
(970, 1278, 115, 2, 0),
(971, 1278, 54, 12, 1),
(972, 1278, 143, 2, 8000),
(973, 1279, 115, 2, 0),
(974, 1279, 54, 12, 1),
(975, 1279, 140, 2, 15000),
(976, 1280, 115, 2, 0),
(977, 1280, 54, 12, 1),
(978, 1281, 115, 2, 0),
(979, 1281, 54, 12, 1),
(980, 1282, 115, 0, 0),
(981, 1282, 54, 0, 0),
(982, 1282, 143, 1, 8000),
(983, 1282, 108, 1, 25000),
(984, 1283, 115, 2, 0),
(985, 1283, 54, 12, 1),
(986, 1283, 136, 1, 15000),
(987, 1284, 115, 2, 0),
(988, 1284, 54, 12, 1),
(989, 1284, 56, 1, 15000),
(990, 1284, 143, 1, 8000),
(991, 1285, 115, 2, 0),
(992, 1285, 54, 12, 1),
(993, 1287, 115, 2, 0),
(994, 1287, 54, 12, 1),
(995, 1287, 53, 1, 12000),
(996, 1288, 115, 2, 0),
(997, 1288, 54, 12, 1),
(998, 1289, 115, 2, 0),
(999, 1289, 54, 12, 1),
(1000, 1290, 115, 2, 0),
(1001, 1290, 54, 12, 1),
(1002, 1291, 115, 2, 0),
(1003, 1291, 54, 12, 1),
(1004, 1292, 115, 2, 0),
(1005, 1292, 54, 12, 1),
(1006, 1292, 126, 1, 10000),
(1007, 1292, 53, 1, 12000),
(1008, 1294, 115, 2, 0),
(1009, 1294, 54, 12, 1),
(1010, 1295, 115, 2, 0),
(1011, 1295, 54, 1, 12000),
(1012, 1295, 143, 1, 8000),
(1013, 1296, 115, 2, 0),
(1014, 1296, 54, 1, 12000),
(1015, 1296, 53, 1, 12000),
(1016, 1297, 115, 2, 0),
(1017, 1297, 54, 12, 1),
(1020, 1299, 140, 2, 15000),
(1021, 1299, 126, 1, 10000),
(1022, 1300, 115, 2, 0),
(1023, 1300, 54, 12, 1),
(1024, 1301, 115, 2, 0),
(1025, 1301, 54, 12, 1),
(1026, 1302, 115, 2, 0),
(1027, 1302, 54, 12, 1),
(1028, 1302, 55, 1, 12000),
(1029, 1302, 126, 1, 10000),
(1030, 1303, 115, 2, 0),
(1031, 1303, 54, 12, 1),
(1032, 1304, 115, 2, 0),
(1033, 1304, 54, 12, 1),
(1034, 1305, 115, 2, 0),
(1035, 1305, 54, 12, 1),
(1036, 1307, 115, 2, 0),
(1037, 1307, 54, 12, 1),
(1038, 1308, 115, 2, 0),
(1039, 1308, 54, 12, 1),
(1040, 1309, 115, 2, 0),
(1041, 1309, 54, 12, 1),
(1042, 1310, 115, 2, 0),
(1043, 1310, 54, 12, 1),
(1044, 1311, 115, 2, 0),
(1045, 1311, 54, 12, 1),
(1048, 1305, 143, 2, 8000),
(1049, 1169, 55, 3, 12000),
(1050, 1169, 53, 1, 12000),
(1051, 1313, 115, 2, 0),
(1052, 1313, 54, 12, 1),
(1053, 1313, 126, 1, 10000),
(1054, 1308, 126, 1, 10000),
(1055, 1311, 126, 2, 10000),
(1056, 1314, 115, 2, 0),
(1057, 1314, 54, 12, 1),
(1058, 1315, 115, 2, 0),
(1059, 1315, 54, 12, 1),
(1060, 1315, 126, 1, 10000),
(1061, 1317, 115, 2, 0),
(1062, 1317, 54, 12, 1),
(1063, 1318, 115, 2, 0),
(1064, 1318, 54, 12, 1),
(1065, 1319, 115, 2, 0),
(1066, 1319, 54, 12, 1),
(1067, 1319, 126, 2, 10000),
(1068, 1320, 115, 2, 0),
(1069, 1320, 54, 12, 1),
(1070, 1321, 115, 2, 0),
(1071, 1321, 54, 12, 1),
(1072, 1322, 115, 2, 0),
(1073, 1322, 54, 12, 1),
(1074, 1323, 115, 2, 0),
(1075, 1323, 54, 12, 1),
(1076, 1324, 115, 2, 0),
(1077, 1324, 54, 12, 1),
(1078, 1324, 126, 2, 10000),
(1079, 1325, 115, 2, 0),
(1080, 1325, 54, 12, 1),
(1081, 1325, 126, 1, 10000),
(1082, 1325, 53, 1, 12000),
(1083, 1325, 116, 1, 25000),
(1084, 1326, 115, 2, 0),
(1085, 1326, 54, 12, 1),
(1086, 1327, 115, 2, 0),
(1087, 1327, 54, 12, 1),
(1088, 1328, 115, 2, 0),
(1089, 1328, 54, 12, 1),
(1090, 1328, 126, 1, 10000),
(1091, 1329, 115, 2, 0),
(1092, 1329, 54, 12, 1),
(1093, 1330, 115, 2, 0),
(1094, 1330, 54, 12, 1),
(1095, 1331, 115, 2, 0),
(1096, 1331, 54, 12, 1),
(1097, 1331, 126, 1, 10000),
(1098, 1332, 115, 2, 0),
(1099, 1332, 54, 12, 1),
(1100, 1332, 126, 1, 10000),
(1101, 1332, 53, 1, 12000),
(1102, 1332, 55, 1, 12000),
(1103, 1332, 127, 1, 12000),
(1104, 1332, 116, 0, 25000),
(1105, 1333, 115, 2, 0),
(1106, 1333, 54, 12, 1),
(1107, 1333, 55, 1, 12000),
(1108, 1334, 115, 2, 0),
(1109, 1334, 54, 12, 1),
(1110, 1334, 53, 2, 12000),
(1111, 1335, 115, 2, 0),
(1112, 1335, 54, 12, 1),
(1113, 1336, 115, 2, 0),
(1114, 1336, 54, 12, 1),
(1115, 1337, 115, 2, 0),
(1116, 1337, 54, 12, 1),
(1117, 1338, 115, 2, 0),
(1118, 1338, 54, 12, 1),
(1119, 1339, 115, 2, 0),
(1120, 1339, 54, 12, 1),
(1121, 1339, 116, 1, 25000),
(1122, 1340, 115, 2, 0),
(1123, 1340, 54, 12, 1),
(1124, 1341, 115, 2, 0),
(1125, 1341, 54, 12, 1),
(1126, 1341, 126, 1, 10000),
(1127, 1342, 115, 2, 0),
(1128, 1342, 54, 2, 12000),
(1129, 1342, 136, 1, 15000),
(1130, 1342, 53, 1, 12000),
(1131, 1328, 56, 2, 15000),
(1137, 1345, 115, 2, 0),
(1138, 1345, 54, 12, 1),
(1139, 1345, 108, 1, 20000),
(1140, 1347, 115, 2, 0),
(1141, 1347, 54, 12, 1),
(1142, 1347, 126, 2, 10000),
(1143, 1348, 115, 2, 0),
(1144, 1348, 54, 12, 1),
(1145, 1349, 115, 2, 0),
(1146, 1349, 54, 12, 1),
(1147, 1350, 115, 2, 0),
(1148, 1350, 54, 12, 1),
(1149, 1351, 115, 2, 0),
(1150, 1351, 54, 1, 12000),
(1151, 1352, 115, 2, 0),
(1152, 1352, 54, 12, 1),
(1153, 1352, 127, 1, 12000),
(1154, 1352, 53, 1, 12000),
(1155, 1353, 115, 2, 0),
(1156, 1353, 54, 12, 1),
(1157, 1354, 115, 2, 0),
(1158, 1354, 54, 12, 1),
(1159, 1354, 56, 1, 15000),
(1160, 1355, 115, 2, 0),
(1161, 1355, 54, 12, 1),
(1162, 1355, 126, 1, 10000),
(1169, 1357, 115, 2, 0),
(1170, 1357, 54, 12, 1),
(1171, 1358, 115, 2, 0),
(1172, 1358, 54, 12, 1),
(1173, 1353, 56, 1, 15000),
(1174, 1349, 126, 1, 10000),
(1175, 1361, 115, 2, 0),
(1176, 1361, 54, 12, 1),
(1177, 1362, 115, 2, 0),
(1178, 1362, 54, 12, 1),
(1179, 1363, 115, 2, 0),
(1180, 1363, 54, 12, 1),
(1181, 1362, 108, 2, 20000),
(1182, 1364, 115, 2, 0),
(1183, 1364, 54, 12, 1),
(1184, 1364, 136, 2, 15000),
(1185, 1364, 126, 1, 10000),
(1186, 1364, 53, 1, 12000),
(1187, 1365, 115, 2, 0),
(1188, 1365, 54, 12, 1),
(1189, 1366, 115, 2, 0),
(1190, 1366, 54, 12, 1),
(1191, 1366, 126, 1, 10000),
(1192, 1367, 115, 2, 0),
(1193, 1367, 54, 12, 1),
(1194, 1367, 126, 1, 10000),
(1195, 1368, 115, 2, 0),
(1196, 1368, 54, 12, 1),
(1197, 1369, 115, 2, 0),
(1198, 1369, 54, 12, 1),
(1199, 1370, 115, 2, 0),
(1200, 1370, 54, 12, 1),
(1201, 1370, 15, 1, 25000),
(1202, 1371, 126, 1, 10000),
(1203, 1371, 55, 1, 12000),
(1204, 1371, 54, 1, 12000),
(1205, 1372, 126, 4, 10000),
(1206, 1373, 115, 2, 0),
(1207, 1373, 54, 12, 1),
(1208, 1356, 53, 1, 12000),
(1209, 1374, 115, 2, 0),
(1210, 1374, 54, 12, 1),
(1211, 1375, 115, 2, 0),
(1212, 1375, 54, 12, 1),
(1213, 1376, 115, 2, 0),
(1214, 1376, 54, 12, 1),
(1215, 1376, 126, 1, 10000),
(1216, 1377, 115, 2, 0),
(1217, 1377, 54, 12, 1),
(1218, 1378, 115, 2, 0),
(1219, 1378, 54, 12, 1),
(1220, 1379, 115, 2, 0),
(1221, 1379, 54, 12, 1),
(1222, 1379, 108, 10, 20000),
(1223, 1379, 140, 2, 15000),
(1224, 1379, 126, 2, 10000),
(1225, 1380, 115, 2, 0),
(1226, 1380, 54, 12, 1),
(1227, 1380, 108, 2, 20000),
(1228, 1381, 115, 2, 0),
(1229, 1381, 54, 12, 1),
(1230, 1382, 115, 2, 0),
(1231, 1382, 54, 12, 1),
(1232, 1382, 56, 2, 15000),
(1233, 1383, 115, 2, 0),
(1234, 1383, 54, 12, 1),
(1235, 1383, 136, 2, 15000),
(1236, 1383, 53, 1, 12000),
(1237, 1384, 115, 2, 0),
(1238, 1384, 54, 12, 1),
(1239, 1384, 126, 2, 10000),
(1240, 1385, 115, 2, 0),
(1241, 1385, 54, 12, 1),
(1242, 1386, 115, 2, 0),
(1243, 1386, 54, 12, 1),
(1244, 1386, 126, 2, 10000),
(1245, 1387, 115, 2, 0),
(1246, 1387, 54, 12, 1),
(1247, 1388, 115, 2, 0),
(1248, 1388, 54, 12, 1),
(1249, 1389, 115, 2, 0),
(1250, 1389, 54, 12, 1),
(1254, 1391, 115, 2, 0),
(1255, 1391, 54, 12, 1),
(1256, 1392, 115, 2, 0),
(1257, 1392, 54, 12, 1),
(1258, 1392, 127, 0, 12000),
(1259, 1358, 126, 1, 10000),
(1260, 1387, 126, 1, 10000),
(1261, 1393, 115, 2, 0),
(1262, 1393, 54, 12, 1),
(1263, 1394, 126, 1, 10000),
(1264, 1395, 115, 2, 0),
(1265, 1395, 54, 12, 1),
(1266, 1396, 115, 2, 0),
(1267, 1396, 54, 12, 1),
(1268, 1396, 53, 1, 12000),
(1269, 1396, 56, 4, 15000),
(1270, 1396, 136, 1, 15000),
(1271, 1397, 115, 2, 0),
(1272, 1397, 54, 12, 1),
(1273, 1398, 115, 2, 0),
(1274, 1398, 54, 12, 1),
(1275, 1398, 126, 2, 10000),
(1276, 1400, 115, 2, 0),
(1277, 1400, 54, 12, 1),
(1278, 1401, 115, 2, 0),
(1279, 1401, 54, 1, 12000),
(1280, 1401, 53, 2, 12000),
(1281, 1399, 126, 1, 10000),
(1282, 1402, 115, 2, 0),
(1283, 1402, 54, 12, 1),
(1284, 1402, 126, 1, 10000),
(1285, 1404, 115, 2, 0),
(1286, 1404, 54, 12, 1),
(1287, 1381, 55, 2, 12000),
(1288, 1405, 115, 2, 0),
(1289, 1405, 54, 12, 1),
(1290, 1406, 115, 2, 0),
(1291, 1406, 54, 12, 1),
(1292, 1407, 115, 2, 0),
(1293, 1407, 54, 12, 1),
(1294, 1407, 126, 1, 10000),
(1297, 1409, 115, 2, 0),
(1298, 1409, 54, 12, 1),
(1299, 1409, 53, 2, 12000),
(1300, 1410, 115, 2, 0),
(1301, 1410, 54, 1, 12000),
(1302, 1407, 127, 1, 12000),
(1303, 1411, 115, 2, 0),
(1304, 1411, 54, 12, 1),
(1305, 1411, 127, 0, 12000),
(1306, 1411, 136, 0, 15000),
(1307, 1412, 115, 2, 0),
(1308, 1412, 54, 12, 1),
(1309, 1413, 115, 2, 0),
(1310, 1413, 54, 12, 1),
(1311, 1414, 115, 2, 0),
(1312, 1414, 54, 12, 1),
(1313, 1415, 115, 2, 0),
(1314, 1415, 54, 12, 1),
(1315, 1416, 115, 2, 0),
(1316, 1416, 54, 2, 12000),
(1317, 1416, 136, 3, 15000),
(1318, 1417, 115, 2, 0),
(1319, 1417, 54, 12, 1),
(1320, 1417, 126, 1, 10000),
(1321, 1419, 115, 2, 0),
(1322, 1419, 54, 12, 1),
(1323, 1419, 53, 2, 12000),
(1324, 1420, 115, 2, 0),
(1325, 1420, 54, 12, 1),
(1326, 1420, 126, 1, 10000),
(1327, 1421, 115, 2, 0),
(1328, 1421, 54, 12, 1),
(1329, 1422, 115, 2, 0),
(1330, 1422, 54, 12, 1),
(1331, 1424, 115, 2, 0),
(1332, 1424, 54, 12, 1),
(1333, 1425, 115, 2, 0),
(1334, 1425, 54, 3, 12000),
(1335, 1425, 127, 1, 12000),
(1336, 1425, 53, 2, 12000),
(1337, 1426, 115, 2, 0),
(1338, 1426, 54, 12, 1),
(1339, 1427, 115, 2, 0),
(1340, 1427, 54, 12, 1),
(1341, 1428, 115, 2, 0),
(1342, 1428, 54, 12, 1),
(1343, 1429, 115, 2, 0),
(1344, 1429, 54, 12, 1),
(1345, 1429, 128, 3, 12000),
(1346, 1430, 115, 2, 0),
(1347, 1430, 54, 12, 1),
(1348, 1431, 115, 2, 0),
(1349, 1431, 54, 12, 1),
(1350, 1432, 115, 2, 0),
(1351, 1432, 54, 12, 1),
(1352, 1433, 115, 2, 0),
(1353, 1433, 54, 12, 1),
(1354, 1433, 126, 1, 10000),
(1355, 1434, 115, 2, 0),
(1356, 1434, 54, 1, 12000),
(1357, 1423, 126, 1, 10000),
(1358, 1432, 136, 1, 15000),
(1359, 1435, 115, 2, 0),
(1360, 1435, 54, 12, 1),
(1361, 1435, 126, 1, 10000),
(1362, 1436, 115, 2, 0),
(1363, 1436, 54, 12, 1),
(1364, 1436, 136, 1, 15000),
(1365, 1436, 127, 1, 12000),
(1366, 1437, 115, 2, 0),
(1367, 1437, 54, 12, 1),
(1368, 1437, 126, 2, 10000),
(1369, 1430, 53, 2, 12000),
(1370, 1430, 126, 1, 10000),
(1371, 1430, 127, 1, 12000),
(1372, 1438, 115, 2, 0),
(1373, 1438, 54, 12, 1),
(1374, 1438, 126, 1, 10000),
(1375, 1440, 115, 2, 0),
(1376, 1440, 54, 12, 1),
(1377, 1440, 126, 1, 10000),
(1378, 1441, 115, 2, 0),
(1379, 1441, 54, 12, 1),
(1380, 1441, 56, 0, 15000),
(1381, 1442, 115, 2, 0),
(1382, 1442, 54, 12, 1),
(1383, 1443, 115, 2, 0),
(1384, 1443, 54, 12, 1),
(1385, 1443, 126, 1, 10000),
(1386, 1444, 115, 2, 0),
(1387, 1444, 54, 12, 1),
(1388, 1445, 115, 2, 0),
(1389, 1445, 54, 12, 1),
(1390, 1444, 126, 1, 10000),
(1391, 1446, 115, 2, 0),
(1392, 1446, 54, 12, 1),
(1393, 1447, 115, 2, 0),
(1394, 1447, 54, 12, 1),
(1395, 1447, 128, 1, 12000),
(1396, 1447, 55, 1, 12000),
(1397, 1448, 115, 2, 0),
(1398, 1448, 54, 12, 1),
(1399, 1449, 115, 2, 0),
(1400, 1449, 54, 12, 1),
(1401, 1418, 126, 1, 10000),
(1402, 1441, 126, 1, 10000),
(1403, 1451, 115, 2, 0),
(1404, 1451, 54, 12, 1),
(1405, 1452, 115, 2, 0),
(1406, 1452, 54, 12, 1),
(1407, 1453, 115, 2, 0),
(1408, 1453, 54, 12, 1),
(1409, 1454, 115, 2, 0),
(1410, 1454, 54, 12, 1),
(1411, 1450, 143, 0, 8000),
(1412, 1450, 126, 1, 10000),
(1413, 1450, 15, 1, 25000),
(1414, 1455, 115, 2, 0),
(1415, 1455, 54, 12, 1),
(1416, 1448, 127, 1, 12000),
(1417, 1456, 115, 2, 0),
(1418, 1456, 54, 1, 12000),
(1419, 1456, 53, 2, 12000),
(1420, 1457, 115, 2, 0),
(1421, 1457, 54, 12, 1),
(1422, 1457, 53, 1, 12000),
(1423, 1453, 126, 1, 10000),
(1424, 1458, 115, 2, 0),
(1425, 1458, 54, 12, 1),
(1426, 1458, 126, 2, 10000),
(1427, 1459, 115, 2, 0),
(1428, 1459, 54, 12, 1),
(1429, 1459, 126, 1, 10000),
(1430, 1460, 115, 2, 0),
(1431, 1460, 54, 12, 1),
(1432, 1460, 56, 4, 15000),
(1433, 1461, 115, 2, 0),
(1434, 1461, 54, 12, 1),
(1435, 1462, 115, 2, 0),
(1436, 1462, 54, 1, 12000),
(1437, 1463, 115, 2, 0),
(1438, 1463, 54, 12, 1),
(1439, 1464, 115, 2, 0),
(1440, 1464, 54, 12, 1),
(1441, 1465, 115, 2, 0),
(1442, 1465, 54, 12, 1),
(1443, 1466, 115, 2, 0),
(1444, 1466, 54, 12, 1),
(1445, 1467, 115, 2, 0),
(1446, 1467, 54, 12, 1),
(1447, 1468, 115, 2, 0),
(1448, 1468, 54, 12, 1),
(1449, 1468, 126, 2, 10000),
(1450, 1470, 115, 2, 0),
(1451, 1470, 54, 12, 1),
(1452, 1471, 115, 2, 0),
(1453, 1471, 54, 12, 1),
(1454, 1471, 126, 2, 10000),
(1455, 1471, 53, 1, 12000),
(1456, 1472, 115, 2, 0),
(1457, 1472, 54, 12, 1),
(1458, 1472, 126, 3, 10000),
(1459, 1473, 115, 2, 0),
(1460, 1473, 54, 12, 1),
(1461, 1474, 115, 2, 0),
(1462, 1474, 54, 12, 1),
(1463, 1475, 115, 2, 0),
(1464, 1475, 54, 12, 1),
(1465, 1476, 115, 2, 0),
(1466, 1476, 54, 12, 1),
(1467, 1478, 115, 2, 0),
(1468, 1478, 54, 12, 1),
(1469, 1479, 115, 2, 0),
(1470, 1479, 54, 12, 1),
(1471, 1480, 115, 2, 0),
(1472, 1480, 54, 12, 1),
(1473, 1481, 115, 2, 0),
(1474, 1481, 54, 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_supplier`
--

CREATE TABLE IF NOT EXISTS `h3d_supplier` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `debt` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Contenu de la table `h3d_supplier`
--

INSERT INTO `h3d_supplier` (`id`, `name`, `phone`, `address`, `note`, `debt`) VALUES
(1, 'ĐL NƯỚC ĐÁ TRÍ', '0703456456', 'Phường 4', 'Cung cấp nước đá', 0),
(6, 'COPP MART', '', 'Vĩnh Long', 'Siêu Thị', 0),
(8, 'NPP ĐOAN TRANG', '0703 822 227', '64/6N Trần Phú P4 TP Vĩnh Long', '', 0),
(9, 'CH THUỐC LÁ', '', 'Vĩnh Long', '', 0),
(10, 'NPP PHONG PHÚ', '', 'TT Cái Tàu Hạ, Châu Thành, Đồng Tháp', '', 0),
(11, 'NPP THANH SƠN', '', 'Vĩnh Long', '', 0),
(12, 'CH DẦU GỘI 01', '', '', '', 0),
(13, 'TẠP HÓA', '', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_table`
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
-- Contenu de la table `h3d_table`
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
-- Structure de la table `h3d_term`
--

CREATE TABLE IF NOT EXISTS `h3d_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `h3d_term`
--

INSERT INTO `h3d_term` (`id`, `name`, `type`) VALUES
(1, 'TIỀN ĐIỆN', 0),
(2, 'TIỀN NƯỚC', 0),
(3, 'TIỀN THUẾ', 0),
(4, 'CP KHÁC', 1),
(5, 'TIỀN LƯƠNG', 0),
(6, 'PHỤ CẤP & THƯỞNG', 0),
(7, 'CP BẢO TRÌ & SỬA CHỮA', 0);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_term_collect`
--

CREATE TABLE IF NOT EXISTS `h3d_term_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `h3d_term_collect`
--

INSERT INTO `h3d_term_collect` (`id`, `name`) VALUES
(1, 'PHỤ PHẨM'),
(2, 'KHÁC');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_tracking`
--

CREATE TABLE IF NOT EXISTS `h3d_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `estate_rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `h3d_tracking`
--

INSERT INTO `h3d_tracking` (`id`, `date_start`, `date_end`, `estate_rate`) VALUES
(1, '2013-01-01', '2013-01-31', 0),
(2, '2013-02-01', '2013-02-28', 0),
(3, '2013-03-01', '2013-03-31', 0),
(4, '2013-04-01', '2013-04-30', 0),
(5, '2013-05-01', '2013-05-31', 0),
(6, '2013-08-01', '2013-08-31', 0),
(7, '2013-09-01', '2013-09-30', 0),
(8, '2013-10-01', '2013-10-31', 0);

-- --------------------------------------------------------

--
-- Structure de la table `h3d_type_room`
--

CREATE TABLE IF NOT EXISTS `h3d_type_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `h3d_type_room`
--

INSERT INTO `h3d_type_room` (`id`, `name`) VALUES
(1, 'Đơn máy lạnh'),
(2, 'Đôi máy lạnh'),
(3, 'Đơn quạt');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_unit`
--

CREATE TABLE IF NOT EXISTS `h3d_unit` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Contenu de la table `h3d_unit`
--

INSERT INTO `h3d_unit` (`id`, `name`) VALUES
(1, 'Ly'),
(3, 'Chai'),
(4, 'Lon'),
(9, 'Bịch'),
(10, 'Gói'),
(11, 'Cái'),
(12, 'Cây'),
(16, 'Tô'),
(17, 'Kg'),
(18, 'Thùng'),
(19, 'Bộ');

-- --------------------------------------------------------

--
-- Structure de la table `h3d_user`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Contenu de la table `h3d_user`
--

INSERT INTO `h3d_user` (`id`, `name`, `email`, `pass`, `gender`, `note`, `datecreate`, `dateupdate`, `dateactivity`, `type`, `code`) VALUES
(4, 'Bùi Thanh Tuấn', 'tuanbuithanh@gmail.com', 'admin123456', 0, '', '2013-04-10 14:44:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, '123456789'),
(6, 'Dung', 'dungdoan.bdc@gmail.com', 'dung123987dung', 1, '', '2013-05-16 12:02:46', '2013-05-16 12:02:46', '2013-05-16 12:02:46', 1, '123456789'),
(9, 'Trang', 'trangvo.bdc@gmail.com', '32136210', 1, '', '2013-05-19 05:06:44', '2013-05-19 05:06:44', '2013-05-19 05:06:44', 1, '123456789'),
(10, 'Sang', 'sangtruong.bdc@gmail.com', '123456', 0, '', '2013-09-16 11:22:07', '2013-09-16 11:22:07', '2013-09-16 11:22:07', 1, ''),
(11, 'Khoa', 'lekhoa.bdc@gmail.com', 'lenguyen0945030709...', 0, '', '2013-09-16 11:22:42', '2013-09-16 11:22:42', '2013-09-16 11:22:42', 4, ''),
(12, 'Khoa', 'lenguyen.bdc@gmail.com', 'lenguyen0945030709...', 0, '', '2013-09-16 11:23:16', '2013-09-16 11:23:16', '2013-09-16 11:23:16', 1, ''),
(13, 'Khoa_QL', 'quanlyh.bdc@gmail.com', 'admin123987', 0, '', '2013-09-25 01:14:20', '2013-09-25 01:14:20', '2013-09-25 01:14:20', 2, '');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `h3d_collect_customer`
--
ALTER TABLE `h3d_collect_customer`
  ADD CONSTRAINT `h3d_customer_collect_1` FOREIGN KEY (`idcustomer`) REFERENCES `h3d_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_collect_general`
--
ALTER TABLE `h3d_collect_general`
  ADD CONSTRAINT `h3d_collect_general_1` FOREIGN KEY (`id_term`) REFERENCES `h3d_term_collect` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_course`
--
ALTER TABLE `h3d_course`
  ADD CONSTRAINT `h3d_course_1` FOREIGN KEY (`idcategory`) REFERENCES `h3d_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_course_default`
--
ALTER TABLE `h3d_course_default`
  ADD CONSTRAINT `h3d_course_default_1` FOREIGN KEY (`id_type_room`) REFERENCES `h3d_type_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_course_default_2` FOREIGN KEY (`id_course`) REFERENCES `h3d_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_order_import`
--
ALTER TABLE `h3d_order_import`
  ADD CONSTRAINT `h3d_order_import_1` FOREIGN KEY (`idsupplier`) REFERENCES `h3d_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_order_import_detail`
--
ALTER TABLE `h3d_order_import_detail`
  ADD CONSTRAINT `h3d_order_import_detail_1` FOREIGN KEY (`idorder`) REFERENCES `h3d_order_import` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_order_import_detail_2` FOREIGN KEY (`idresource`) REFERENCES `h3d_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_paid_employee`
--
ALTER TABLE `h3d_paid_employee`
  ADD CONSTRAINT `h3d_employee_paid_1` FOREIGN KEY (`idemployee`) REFERENCES `h3d_employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_paid_general`
--
ALTER TABLE `h3d_paid_general`
  ADD CONSTRAINT `h3d_paid_general_1` FOREIGN KEY (`id_term`) REFERENCES `h3d_term` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_paid_supplier`
--
ALTER TABLE `h3d_paid_supplier`
  ADD CONSTRAINT `h3d_supplier_paid_1` FOREIGN KEY (`idsupplier`) REFERENCES `h3d_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_resource`
--
ALTER TABLE `h3d_resource`
  ADD CONSTRAINT `h3d_resource_1` FOREIGN KEY (`idsupplier`) REFERENCES `h3d_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_session`
--
ALTER TABLE `h3d_session`
  ADD CONSTRAINT `h3d_session_1` FOREIGN KEY (`idtable`) REFERENCES `h3d_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_session_2` FOREIGN KEY (`iduser`) REFERENCES `h3d_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_session_3` FOREIGN KEY (`idcustomer`) REFERENCES `h3d_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_session_detail`
--
ALTER TABLE `h3d_session_detail`
  ADD CONSTRAINT `h3d_session_detail_1` FOREIGN KEY (`idsession`) REFERENCES `h3d_session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h3d_session_detail_2` FOREIGN KEY (`idcourse`) REFERENCES `h3d_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `h3d_table`
--
ALTER TABLE `h3d_table`
  ADD CONSTRAINT `h3d_table_1` FOREIGN KEY (`iddomain`) REFERENCES `h3d_domain` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
