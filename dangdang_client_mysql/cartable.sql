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

-- 导出  表 dangdang.cartable 结构
CREATE TABLE IF NOT EXISTS `cartable` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `gid` int(11) DEFAULT NULL COMMENT '商品id',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- 正在导出表  dangdang.cartable 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `cartable` DISABLE KEYS */;
INSERT INTO `cartable` (`cid`, `gid`, `number`, `username`) VALUES
	(4, 5, 2, 'xiaoxiaoxi'),
	(39, 2, 1, 'objobj'),
	(44, 9, 12, 'muss1998'),
	(45, 2, 1, 'muss1998');
/*!40000 ALTER TABLE `cartable` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
