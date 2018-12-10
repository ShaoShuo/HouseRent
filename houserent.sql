/*
Navicat MySQL Data Transfer

Source Server         : house
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : houserent

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2018-12-06 16:16:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) DEFAULT NULL,
  `userId` int(255) DEFAULT NULL,
  PRIMARY KEY (`commentId`),
  KEY `u-fk` (`userId`),
  CONSTRAINT `u-fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '好棒啊', '1');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `houseId` int(11) NOT NULL AUTO_INCREMENT,
  `houseName` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rentType` varchar(255) DEFAULT NULL,
  `houseType` varchar(255) DEFAULT NULL,
  `person` int(11) DEFAULT NULL,
  `area` float DEFAULT NULL,
  `houseHead` varchar(255) DEFAULT NULL,
  `houseLocation` varchar(255) DEFAULT NULL,
  `houseAddress` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`houseId`),
  KEY `userId` (`userId`),
  CONSTRAINT `house_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', 'CBD商务区地铁口体验古朴民风', '368', '整套出租', '2室2厅1卫1厨1阳台', '5', '85', '朝南', '河南省郑州市', '郑东新区金水区民航路9号', '../img/houseImages/userId-1-house-1.jpg', '17714558719', '1', '1');
INSERT INTO `house` VALUES ('2', '步行15分钟高铁站CBD方特双子塔两居住5人', '358', '整套出租', '2室1厅1卫1厨1阳台', '5', '95', '朝南', '河南省郑州市', '郑东新区东风南路与永平路交叉口', '../img/houseImages/userId-1-house-2.jpg', '17714558719', '1', '1');
INSERT INTO `house` VALUES ('3', '东建材CBD福塔世纪欢乐园精致一居', '199', '整套出租', '1室1厅1卫1厨1阳台', '2', '43', '朝南', '河南省郑州市', '金水区红星蚂蚁SOHO', '../img/houseImages/userId-1-house-3.jpg', '17714558719', '1', '1');
INSERT INTO `house` VALUES ('4', '高铁站CBD省政府地铁口禅意超大LOFT两居', '338', '整套出租', '2室1厅2卫1厨1阳台', '4', '120', '朝南', '河南省郑州市', '郑东新区金水路与黄河南路交叉口', '../img/houseImages/userId-10-house-1.jpg', '18936560268', '1', '10');
INSERT INTO `house` VALUES ('5', '高铁站CBD中原福塔方特时尚两室LOFT', '258', '整套出租', '2室1厅1卫1厨0阳台', '4', '45', '朝南', '河南省郑州市', '管城回族区康平路与永平路交叉口', '../img/houseImages/userId-10-house-2.jpg', '18936560268', '1', '10');
INSERT INTO `house` VALUES ('6', '豫城印象CBD商务区如意湖', '368', '整套出租', '2室2厅1卫1厨1阳台', '4', '85', '朝南', '河南省郑州市', '郑东新区金水区民航路9号', '../img/houseImages/userId-10-house-3.jpg', '18936560268', '1', '10');
INSERT INTO `house` VALUES ('7', '逅海LOEF阳光足一室一厅配套免费健身', '249', '整套出租', '1室1厅1卫1厨0阳台', '2', '50', '朝南', '河南省郑州市', '中原区棉纺西路与桐柏路交叉口', '../img/houseImages/userId-1-house-4.jpg', '17714558719', '1', '1');
INSERT INTO `house` VALUES ('8', '爱情公寓', '1213.8', '整套出租', '3室2厅1厨1卫1阳台', '4', '121', '朝南', '江苏省苏州市', '苏州大学', 'D:\\apache-tomcat-6.0.37\\apache-tomcat-6.0.37\\webapps\\ROOT\\upload\\haha.png', '17714558719', '1', '1');
INSERT INTO `house` VALUES ('9', '洛阳理工妹子楼', '1213.8', '整套出租', '3室2厅1厨1卫1阳台', '4', '121', '朝南', '河南洛阳', '洛阳理工大学', 'D:\\apache-tomcat-6.0.37\\apache-tomcat-6.0.37\\webapps\\ROOT\\upload\\haha.png', '17714558719', '1', '1');
INSERT INTO `house` VALUES ('10', '洛阳理工宿舍楼', '1213.8', '整套出租', '3室2厅1厨1卫1阳台', '8', '12', '朝南', '河南洛阳', '洛阳理工大学', 'D:\\apache-tomcat-6.0.37\\apache-tomcat-6.0.37\\webapps\\ROOT\\upload\\haha.png', '17714558719', '0', '1');
INSERT INTO `house` VALUES ('11', '洛阳理工宿舍楼', '1213.8', '整套出租', '3室2厅1厨1卫1阳台', '8', '12', '朝南', '河南洛阳', '洛阳理工大学', 'D:\\apache-tomcat-6.0.37\\apache-tomcat-6.0.37\\webapps\\ROOT\\upload\\haha.png', '17714558719', '1', '1');
INSERT INTO `house` VALUES ('12', '洛阳理工', '9.99', '整套出租', '3室2厅1厨1卫1阳台', '4', '121', '朝南', '江苏省苏州市', '苏州大学', 'D:\\apache-tomcat-6.0.37\\apache-tomcat-6.0.37\\webapps\\ROOT\\upload\\haha.png', '17714558719', '1', '1');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT '邵烁',
  `context` varchar(255) DEFAULT NULL,
  `commentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`noticeId`),
  KEY `commentId` (`commentId`),
  CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`commentId`) REFERENCES `comment` (`commentId`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '震惊！真相竟然是这样...', 'admin', '九旬老太为何裸死街头？ 数百头母驴为何半夜惨叫？ 小卖部安全套为何屡遭黑手？ 女生宿舍内裤为何频频失窃？ 连环强奸母猪案，究竟是何人所为？ 老尼姑的门夜夜被敲，究竟是人是鬼？ 数百只小母狗意外身亡的背后又隐藏着什么？ 这一切的背后， 是人性的扭曲还是道德的沦丧？  ', '1');
INSERT INTO `notice` VALUES ('2', '默认存在', '邵烁', '默认存在测试', '1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `houseId` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `inTime` datetime DEFAULT NULL,
  `outTime` datetime DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `houseId` (`houseId`),
  KEY `userId` (`userId`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`houseId`) REFERENCES `house` (`houseId`) ON DELETE SET NULL,
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '6', '368', '2018-12-01 10:43:28', '2018-12-01 10:43:34', '2018-12-02 10:43:46', '17714558719', '1');
INSERT INTO `order` VALUES ('2', '5', '258', '2018-12-01 10:44:34', '2018-12-02 10:44:37', '2018-12-03 10:44:43', '1714558719', '1');
INSERT INTO `order` VALUES ('3', '1', '368', '2018-12-03 20:19:17', '2018-12-03 01:00:00', '2018-12-04 01:00:00', '17714558719', '1');
INSERT INTO `order` VALUES ('4', '3', '199', '2018-12-03 20:22:11', '2018-12-03 01:00:00', '2018-12-04 01:00:00', '17714558719', '1');
INSERT INTO `order` VALUES ('5', '2', '358', '2018-12-04 18:19:11', '2018-12-04 01:00:00', '2018-12-05 01:00:00', '17714558719', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'ss', '123', '男', '17714558719', '1922538960@qq.com', '江苏省连云港');
INSERT INTO `user` VALUES ('10', 'gyj', '123', '女', '18936560268', null, null);
INSERT INTO `user` VALUES ('11', 'aa', '1', '女', '18936560268', '1922538960@qq.com', '江苏省连云港市');
INSERT INTO `user` VALUES ('12', 'qwer', '123', '男', '18936560268', '1922538960@qq.com', '江苏省连云港市');
