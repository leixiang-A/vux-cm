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

-- 导出  表 dangdang.comments 结构
CREATE TABLE IF NOT EXISTS `comments` (
  `mid` int(100) NOT NULL AUTO_INCREMENT COMMENT '评价的id',
  `gid` int(100) DEFAULT NULL COMMENT '商品的id',
  `uid` int(100) DEFAULT NULL COMMENT '用户的id',
  `comments` varchar(900) DEFAULT NULL COMMENT '评价',
  `score` int(11) NOT NULL COMMENT '分数',
  `pjimg` varchar(900) DEFAULT NULL COMMENT '买家图片',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 正在导出表  dangdang.comments 的数据：~11 rows (大约)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`mid`, `gid`, `uid`, `comments`, `score`, `pjimg`) VALUES
	(5, 2, 1, 'aaaaa', 4, ''),
	(6, 2, 1, 'bbbbb', 4, ''),
	(7, 2, 1, 'sdvzsdv', 4, ''),
	(8, 2, 1, '经常一起购买的商品\n\n价格说明\n当当价：为商品的销售价，具体的成交价可能因会员使用优惠券、银铃铛等发生变化，最终以订单结算页价格为准。 划线价：划线价格可能是图书封底定价、商品吊牌价、品牌专柜价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品曾经展示过的销售价等，由于地区、时间的差异化和市场行情波动，商品吊牌价、品牌专柜价等可能会与您购物时展示的不一致，该价格仅供您参考。 折扣：折扣指在划线价（图书定价、商品吊牌价、品牌专柜价、厂商指导价等）某一价格基础上计算出的优惠比例或优惠金额。如有疑问，您可在购买前联系客服咨询。 异常问题：如您发现活动商品销售价或促销信息有异常，请立即联系我们补正，以便您能顺利购物。\n短评\n长评\n我对本书的评价是\n\n5\n这本书的内容/作者/文笔....给你留下了怎么样的印象？是否值得推荐给其他书友？写下你的评论吧~\n只能上传jpg/png文件，且不超过500kb', 5, ''),
	(9, 2, 1, '\n当当价：为商品的销售价，具体的成交价可能因会员使用优惠券、银铃铛等发生变化，最终以订单结算页价格为准。 划线价：划线价格可能是图书封底定价、商品吊牌价、品牌专柜价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品曾经展示过的销售价等，由于地区、时间的差异化和市场行情波动，商品吊牌价、品牌专柜价等可能会与您购物时展示的不一致，该价格仅供您参考。 折扣：折扣指在划线价（图书定价、商品吊牌价、品牌专柜价、厂商指导价等）某一价格基础上计算出的优惠比例或优惠金额。如有疑问，您可在购买前联系客服咨询。 异常问题：如您发现活动商品销售价或促销信息有异常，请立即联系我们补正，以便您能顺利购物', 4, ''),
	(10, 2, 1, 'sqd', 4, ''),
	(11, 2, 1, 'ra', 4, ''),
	(12, 2, 1, '', 0, ''),
	(13, 2, 1, '', 0, ''),
	(14, 2, 1, '', 0, 'http://localhost:7001/public/upload/96806203-3a5e-421e-a262-f58cfb8fd065.jpg'),
	(15, 2, 1, '', 3, 'http://localhost:7001/public/upload/9680a1ac-9d3d-474a-b886-f53c148dffe5.jpg');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
