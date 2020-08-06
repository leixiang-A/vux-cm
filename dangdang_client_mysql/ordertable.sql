-- --------------------------------------------------------
-- 主机:                           192.168.3.234
-- 服务器版本:                        5.5.53 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.5.0.5220
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 dangdang 的数据库结构
CREATE DATABASE IF NOT EXISTS `dangdang` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dangdang`;

-- 导出  表 dangdang.ordertable 结构
CREATE TABLE IF NOT EXISTS `ordertable` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总价',
  `username` varchar(900) NOT NULL DEFAULT '0' COMMENT '用户名',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  dangdang.ordertable 的数据：5 rows
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` (`oid`, `gid`, `total`, `username`) VALUES
	(1, 2, 102, 'muss1998'),
	(2, 2, 102, 'muss1998'),
	(3, 2, 238, 'muss1998'),
	(5, 15, 3679, 'muss1998'),
	(6, 1, 1472, 'muss1998');
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
