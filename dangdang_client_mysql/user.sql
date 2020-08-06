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

-- 导出  表 dangdang.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(100) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(100) NOT NULL DEFAULT '0' COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '0' COMMENT '密码',
  `imgsrc` varchar(900) NOT NULL DEFAULT '0' COMMENT '用户头像',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0是个人，1是商家。',
  `blacklist` varchar(50) NOT NULL DEFAULT '否' COMMENT '是否为黑名单用户。',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 正在导出表  dangdang.user 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`uid`, `username`, `password`, `imgsrc`, `type`, `blacklist`) VALUES
	(1, 'muss1998', 'muss', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1722506617,2322243230&fm=26&gp=0.jpg', 1, '否'),
	(9, 'objobj', '1234567', 'http://img4.imgtn.bdimg.com/it/u=1659322401,3609956675&fm=26&gp=0.jpg', 1, '否'),
	(11, 'sein1998', 'sein', 'http://img4.imgtn.bdimg.com/it/u=1659322401,3609956675&fm=26&gp=0.jpg', 0, '否'),
	(13, '123123', '123123', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1722506617,2322243230&fm=26&gp=0.jpg', 1, '是');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
