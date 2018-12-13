/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : ymx

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-08-01 17:44:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `wage` varchar(50) NOT NULL,
  `age` varchar(2) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '小明', '研发部', '18000', '28', '12345678901');
INSERT INTO `employee` VALUES ('16', '马歇尔', '新闻部', '15000', '23', '12345678900');
INSERT INTO `employee` VALUES ('22', '小凯4', '网络部', '12700', '25', '12345678902');

-- ----------------------------
-- Table structure for `hwua_cart`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_cart`;
CREATE TABLE `hwua_cart` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PID` int(10) DEFAULT NULL,
  `QUANTITY` int(10) DEFAULT NULL,
  `USERID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_cart
-- ----------------------------
INSERT INTO `hwua_cart` VALUES ('2', '1', '1', '1');
INSERT INTO `hwua_cart` VALUES ('4', '2', '1', '1');

-- ----------------------------
-- Table structure for `hwua_comment`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_comment`;
CREATE TABLE `hwua_comment` (
  `HC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `HC_REPLY` varchar(200) DEFAULT NULL,
  `HC_CONTENT` varchar(200) NOT NULL,
  `HC_CREATE_TIME` varchar(200) NOT NULL,
  `HC_REPLY_TIME` varchar(200) DEFAULT NULL,
  `HC_NICK_NAME` varchar(50) NOT NULL,
  `HC_STATE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`HC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_comment
-- ----------------------------
INSERT INTO `hwua_comment` VALUES ('1', '最新酷睿笔记本', 'i7超强配置，赶快下手啦!', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '天天', null);
INSERT INTO `hwua_comment` VALUES ('2', '团购无忧', '团购上拉手拉手上团购', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '拉手', null);
INSERT INTO `hwua_comment` VALUES ('3', '会员特惠月开始', '积分大返利，机不可失失不再来!', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '会员', null);
INSERT INTO `hwua_comment` VALUES ('4', '加入会员，赢千万大礼包', '我是会员我快乐啦啦啦啦啦', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '我是神', null);
INSERT INTO `hwua_comment` VALUES ('5', '赢双旦促销大酬宾', '元旦圣诞超级大礼包等你拿啦', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '双蛋', null);
INSERT INTO `hwua_comment` VALUES ('6', '新年不夜夏，通宵也是开张啦', '新年不夜夏，通宵也是开张啦', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '新年', null);
INSERT INTO `hwua_comment` VALUES ('7', '积分兑换开始了', '积分兑换开始了积分兑换开始了积分兑换开始了', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '\r\n兑换', null);
INSERT INTO `hwua_comment` VALUES ('8', '配货通知', '开始配货开始配货开始配货开始配货!', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '配货', '配送在途\r\n中');
INSERT INTO `hwua_comment` VALUES ('9', '团购阿迪1折起', '团购阿迪1折起团购阿迪1折起团购阿迪1折起！', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '\r\n团购', null);
INSERT INTO `hwua_comment` VALUES ('10', '方便', '阿什顿', '2013-05-03  11:24:38', '2013-05-03  11:24:38', '飞飞', null);

-- ----------------------------
-- Table structure for `hwua_history`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_history`;
CREATE TABLE `hwua_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `HP_ID` int(10) NOT NULL,
  `HU_USER_ID` int(10) NOT NULL,
  `HP_FILE_NAME` varchar(200) NOT NULL,
  `HP_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_history
-- ----------------------------
INSERT INTO `hwua_history` VALUES ('6', '1', '1', 'images/product/2.jpg', '乐扣普通型保鲜盒圣诞7件套');
INSERT INTO `hwua_history` VALUES ('7', '2', '1', 'images/product/3.jpg', '欧珀莱均衡保湿四件套');
INSERT INTO `hwua_history` VALUES ('11', '3', '1', 'images/product/4.jpg', '联想笔记本电脑 高速独立显存');
INSERT INTO `hwua_history` VALUES ('12', '4', '1', 'images/product/1.jpg', '德菲丝巧克力');
INSERT INTO `hwua_history` VALUES ('13', '2', '1', 'images/product/3.jpg', '欧珀莱均衡保湿四件套');
INSERT INTO `hwua_history` VALUES ('14', '7', '1', 'images/product/8.jpg', '达派高档拉杆箱20寸 经典款式');
INSERT INTO `hwua_history` VALUES ('15', '1', '1', 'images/product/2.jpg', '乐扣普通型保鲜盒圣诞7件套');
INSERT INTO `hwua_history` VALUES ('16', '1', '1', 'images/product/2.jpg', '乐扣普通型保鲜盒圣诞7件套');
INSERT INTO `hwua_history` VALUES ('17', '2', '1', 'images/product/3.jpg', '欧珀莱均衡保湿四件套');
INSERT INTO `hwua_history` VALUES ('18', '2', '1', 'images/product/3.jpg', '欧珀莱均衡保湿四件套');
INSERT INTO `hwua_history` VALUES ('19', '1', '1', 'images/product/2.jpg', '乐扣普通型保鲜盒圣诞7件套');
INSERT INTO `hwua_history` VALUES ('20', '1', '1', 'images/product/2.jpg', '乐扣普通型保鲜盒圣诞7件套');
INSERT INTO `hwua_history` VALUES ('21', '4', '1', 'images/product/1.jpg', '德菲丝巧克力');

-- ----------------------------
-- Table structure for `hwua_news`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_news`;
CREATE TABLE `hwua_news` (
  `HN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `HN_TITLE` varchar(80) NOT NULL,
  `HN_CONTENT` varchar(1000) NOT NULL,
  `HN_CREATE_TIME` varchar(100) NOT NULL,
  PRIMARY KEY (`HN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_news
-- ----------------------------
INSERT INTO `hwua_news` VALUES ('1', '会员特惠月开始', '积分大返利，机不可失失不再来!', '2012-03-08');
INSERT INTO `hwua_news` VALUES ('2', '加入会员，赢千万大礼包', '我是会员我快乐啦啦啦啦啦', '2012-03-08');
INSERT INTO `hwua_news` VALUES ('3', '积分兑换开始了', '积分兑换开始了积分兑换开始了积分兑换开始了', '2012-03-08');
INSERT INTO `hwua_news` VALUES ('4', '配货通知', '开始配货开始配货开始配货开始配货!', '2012-03-08');
INSERT INTO `hwua_news` VALUES ('5', '团购阿迪1折起', '团购阿迪1折起团购阿迪1折起团购阿迪1折起！', '2012-03-08');
INSERT INTO `hwua_news` VALUES ('6', '汇源果汁大甩卖', '甩卖甩卖甩卖甩卖甩卖甩卖', '2012-03-08');
INSERT INTO `hwua_news` VALUES ('7', '苹果手机不要钱', '不要不要钱不要钱不要钱不要钱', '2012-03-08');

-- ----------------------------
-- Table structure for `hwua_order`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_order`;
CREATE TABLE `hwua_order` (
  `HO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `HO_USER_ID` int(11) DEFAULT NULL,
  `HO_USER_NAME` varchar(50) NOT NULL,
  `HO_USER_ADDRESS` varchar(200) NOT NULL,
  `HO_CREATE_TIME` varchar(100) NOT NULL,
  `HO_COST` int(10) NOT NULL,
  `HO_STATUS` int(6) NOT NULL,
  `HO_TYPE` int(11) NOT NULL,
  PRIMARY KEY (`HO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_order
-- ----------------------------
INSERT INTO `hwua_order` VALUES ('1', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');
INSERT INTO `hwua_order` VALUES ('2', '1001', '朱琦', '重庆', '2012-03-19 23:25:31', '22191', '1', '1');
INSERT INTO `hwua_order` VALUES ('3', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');
INSERT INTO `hwua_order` VALUES ('4', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');
INSERT INTO `hwua_order` VALUES ('5', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');
INSERT INTO `hwua_order` VALUES ('6', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');
INSERT INTO `hwua_order` VALUES ('7', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');
INSERT INTO `hwua_order` VALUES ('8', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');
INSERT INTO `hwua_order` VALUES ('9', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');
INSERT INTO `hwua_order` VALUES ('10', '1000', '234', '123', '2012-03-19 23:25:31', '100', '1', '1');

-- ----------------------------
-- Table structure for `hwua_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_order_detail`;
CREATE TABLE `hwua_order_detail` (
  `HOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `HO_ID` int(10) DEFAULT NULL,
  `HP_ID` int(10) DEFAULT NULL,
  `HOD_QUANTITY` int(10) NOT NULL,
  `HOD_COST` int(10) NOT NULL,
  PRIMARY KEY (`HOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `hwua_product`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_product`;
CREATE TABLE `hwua_product` (
  `HP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `HP_NAME` varchar(50) NOT NULL,
  `HP_DESCRIPTION` varchar(100) DEFAULT NULL,
  `HP_PRICE` int(10) NOT NULL,
  `HP_STOCK` int(10) NOT NULL,
  `HPC_ID` int(10) DEFAULT NULL,
  `HPC_CHILD_ID` int(10) DEFAULT NULL,
  `HP_FILE_NAME` varchar(200) NOT NULL,
  `Hp_SELLING_COUNT` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`HP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_product
-- ----------------------------
INSERT INTO `hwua_product` VALUES ('1', '乐扣普通型保鲜盒圣诞7件套', '圣诞7件套', '69', '2000', '2', '7', 'images/product/2.jpg', '100');
INSERT INTO `hwua_product` VALUES ('2', '欧珀莱均衡保湿四件套', '均衡保湿四件套', '279', '50', '2', '8', 'images/product/3.jpg', '250');
INSERT INTO `hwua_product` VALUES ('3', '联想笔记本电脑 高速独立显存', '高速独立显存 I7处理器', '4199', '50', '2', '16', 'images/product/4.jpg', '80');
INSERT INTO `hwua_product` VALUES ('4', '德菲丝巧克力', '108.00', '100', '111', '1', '4', 'images/product/1.jpg', '95');
INSERT INTO `hwua_product` VALUES ('5', 'Genius925纯银施华洛世奇水晶吊坠', '华洛世奇水晶吊坠', '69', '50', '2', '12', 'images/product/6.jpg', '500');
INSERT INTO `hwua_product` VALUES ('6', '利仁2018M福满堂电饼铛 好用实惠', '福满堂电饼铛 好用实惠', '268', '50', '2', '15', 'images/product/7.jpg', '450');
INSERT INTO `hwua_product` VALUES ('7', '达派高档拉杆箱20寸 经典款式', '高档拉杆箱20寸 经典款式', '198', '50', '2', '14', 'images/product/8.jpg', '200');
INSERT INTO `hwua_product` VALUES ('8', '爱国者MP4 全屏触摸多格式播放 4G', '全屏触摸多格式播放 4G', '289', '50', '2', '11', 'images/product/0.jpg', '150');
INSERT INTO `hwua_product` VALUES ('9', '多美滋金装金盾3阶段幼儿配方奶粉', '金盾3阶段幼儿配方奶粉', '186', '50', '1', '10', 'images/product/10.jpg', '220');
INSERT INTO `hwua_product` VALUES ('10', '德菲丝巧克力', '巧克力500g/盒', '108', '100', '1', '10', 'images/product/1.jpg', '404');
INSERT INTO `hwua_product` VALUES ('11', '乐扣普通型保鲜盒圣诞7件套', '圣诞7件套', '69', '2000', '2', '7', 'images/product/2.jpg', '0');
INSERT INTO `hwua_product` VALUES ('12', '欧珀莱均衡保湿四件套', '均衡保湿四件套', '279', '50', '2', '8', 'images/product/3.jpg', '0');
INSERT INTO `hwua_product` VALUES ('13', '联想笔记本电脑 高速独立显存', '高速独立显存 I7处理器', '4199', '50', '2', '16', 'images/product/4.jpg', '0');
INSERT INTO `hwua_product` VALUES ('14', '上衣', '红色上衣', '199', '100', '2', '19', 'images/product/clothes2.jpg', '0');
INSERT INTO `hwua_product` VALUES ('15', 'Genius925纯银施华洛世奇水晶吊坠', '华洛世奇水晶吊坠', '69', '50', '2', '12', 'images/product/6.jpg', '0');
INSERT INTO `hwua_product` VALUES ('16', '利仁2018M福满堂电饼铛 好用实惠', '福满堂电饼铛 好用实惠', '268', '50', '2', '15', 'images/product/7.jpg', '0');
INSERT INTO `hwua_product` VALUES ('17', '达派高档拉杆箱20寸 经典款式', '高档拉杆箱20寸 经典款式', '198', '50', '2', '14', 'images/product/8.jpg', '0');
INSERT INTO `hwua_product` VALUES ('18', '爱国者MP4 全屏触摸多格式播放 4G', '全屏触摸多格式播放 4G', '289', '50', '2', '11', 'images/product/0.jpg', '0');
INSERT INTO `hwua_product` VALUES ('19', '多美滋金装金盾3阶段幼儿配方奶粉', '金盾3阶段幼儿配方奶粉', '186', '50', '1', '10', 'images/product/10.jpg', '0');
INSERT INTO `hwua_product` VALUES ('20', '上衣', '夹克', '99', '100', '2', '19', 'images/product/clothes3.jpg', '0');
INSERT INTO `hwua_product` VALUES ('21', '上衣', '粉色上衣', '96', '100', '2', '19', 'images/product/clothes5.jpg', '0');
INSERT INTO `hwua_product` VALUES ('22', '上衣', '灰色上衣', '299', '100', '2', '19', 'images/product/clothes6.jpg', '0');
INSERT INTO `hwua_product` VALUES ('23', '上衣', '红色上衣', '199', '100', '2', '19', 'images/product/clothes7.jpg', '0');
INSERT INTO `hwua_product` VALUES ('24', '上衣', '银色上衣', '599', '100', '2', '19', 'images/product/clothes8.jpg', '0');
INSERT INTO `hwua_product` VALUES ('25', '上衣', '蓝色上衣', '399', '100', '2', '19', 'images/product/clothes9.jpg', '0');
INSERT INTO `hwua_product` VALUES ('26', '上衣', '浅蓝色上衣', '499', '100', '2', '19', 'images/product/clothes10.jpg', '0');
INSERT INTO `hwua_product` VALUES ('27', '上衣', '白色上衣', '68', '100', '2', '19', 'images/product/clothes4.jpg', '0');
INSERT INTO `hwua_product` VALUES ('28', '皮鞋', '黑色皮鞋', '299', '100', '21', '14', 'images/product/shoes1.jpg', '0');
INSERT INTO `hwua_product` VALUES ('29', '皮鞋', '灰色皮鞋', '299', '100', '21', '14', 'images/product/shoes2.jpg', '0');
INSERT INTO `hwua_product` VALUES ('30', '皮鞋', '蓝色皮鞋', '299', '100', '21', '14', 'images/product/shoes3.jpg', '0');
INSERT INTO `hwua_product` VALUES ('31', '皮鞋', '灰色皮鞋', '299', '100', '21', '14', 'images/product/shoes4.jpg', '0');
INSERT INTO `hwua_product` VALUES ('32', '皮鞋', '棕色皮鞋', '299', '100', '21', '14', 'images/product/shoes5.jpg', '0');
INSERT INTO `hwua_product` VALUES ('33', '皮鞋', '黑色皮鞋', '299', '100', '21', '14', 'images/product/shoes6.jpg', '0');
INSERT INTO `hwua_product` VALUES ('34', '皮鞋', '黑色皮鞋', '299', '100', '21', '14', 'images/product/shoes7.jpg', '0');
INSERT INTO `hwua_product` VALUES ('35', '皮鞋', '黑色皮鞋', '299', '100', '21', '14', 'images/product/shoes8.jpg', '0');
INSERT INTO `hwua_product` VALUES ('36', '皮鞋', '黑色皮鞋', '299', '100', '21', '14', 'images/product/shoes9.jpg', '0');
INSERT INTO `hwua_product` VALUES ('37', '皮鞋', '黑色皮鞋', '299', '100', '21', '14', 'images/product/shoes10.jpg', '0');
INSERT INTO `hwua_product` VALUES ('38', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass1.jpg', '0');
INSERT INTO `hwua_product` VALUES ('39', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass2.jpg', '0');
INSERT INTO `hwua_product` VALUES ('40', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass3.jpg', '0');
INSERT INTO `hwua_product` VALUES ('41', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass4.jpg', '0');
INSERT INTO `hwua_product` VALUES ('42', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass5.jpg', '0');
INSERT INTO `hwua_product` VALUES ('43', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass6.jpg', '0');
INSERT INTO `hwua_product` VALUES ('44', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass7.jpg', '0');
INSERT INTO `hwua_product` VALUES ('45', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass8.jpg', '0');
INSERT INTO `hwua_product` VALUES ('46', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass9.jpg', '0');
INSERT INTO `hwua_product` VALUES ('47', '眼镜', '太阳镜', '299', '100', '2', '12', 'images/product/sunglass10.jpg', '0');
INSERT INTO `hwua_product` VALUES ('48', '电视', '彩电', '1299', '100', '2', '15', 'images/product/television1.jpg', '0');
INSERT INTO `hwua_product` VALUES ('49', '电视', '彩电', '1299', '100', '2', '15', 'images/product/television2.jpg', '0');
INSERT INTO `hwua_product` VALUES ('50', '电视', '彩电', '2299', '100', '2', '15', 'images/products/television3.jpg', '0');
INSERT INTO `hwua_product` VALUES ('51', '电视', '彩电', '2299', '100', '2', '15', 'images/product/television4.jpg', '0');
INSERT INTO `hwua_product` VALUES ('52', '电视', '彩电', '3299', '100', '2', '15', 'images/product/television5.jpg', '0');
INSERT INTO `hwua_product` VALUES ('53', '电视', '彩电', '2299', '100', '2', '15', 'images/product/television6.jpg', '0');
INSERT INTO `hwua_product` VALUES ('54', '电视', '彩电', '4299', '100', '2', '15', 'images/product/television7.jpg', '0');
INSERT INTO `hwua_product` VALUES ('55', '电视', '彩电', '5299', '100', '2', '15', 'images/product/television8.jpg', '0');
INSERT INTO `hwua_product` VALUES ('56', '电视', '彩电', '2299', '100', '2', '15', 'images/product/television9.jpg', '0');
INSERT INTO `hwua_product` VALUES ('57', '电视', '彩电', '6299', '100', '2', '15', 'images/product/television10.jpg', '0');
INSERT INTO `hwua_product` VALUES ('58', '卡地亚', '见证你的爱情', '22122', '100', '2', '13', 'images/product/20.jpg', '0');
INSERT INTO `hwua_product` VALUES ('59', '卡地亚', '见证你的爱情', '22122', '100', '22', '22', 'images/product/20.jpg', '0');
INSERT INTO `hwua_product` VALUES ('60', '双色球', '来吧', '2', '1000', '2', '20', 'images/product/21.jpg', '0');
INSERT INTO `hwua_product` VALUES ('61', '变形金刚', '大黄蜂', '222', '1000', '21', '17', 'images/product/23.jpg', '0');
INSERT INTO `hwua_product` VALUES ('62', 'GPS', '导航仪', '2222', '1000', '21', '18', 'images/product/24.jpg', '0');
INSERT INTO `hwua_product` VALUES ('63', '123', null, '100', '111', '2', '9', 'imagesproduct133214492473826.jpg', '0');

-- ----------------------------
-- Table structure for `hwua_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_product_category`;
CREATE TABLE `hwua_product_category` (
  `HPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `HPC_NAME` varchar(50) NOT NULL,
  `HPC_PARENT_ID` int(10) NOT NULL,
  PRIMARY KEY (`HPC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_product_category
-- ----------------------------
INSERT INTO `hwua_product_category` VALUES ('1', '图音', '1');
INSERT INTO `hwua_product_category` VALUES ('2', '百货', '2');
INSERT INTO `hwua_product_category` VALUES ('4', '音乐', '1');
INSERT INTO `hwua_product_category` VALUES ('5', '运动健康', '0');
INSERT INTO `hwua_product_category` VALUES ('7', '家居', '2');
INSERT INTO `hwua_product_category` VALUES ('8', '美妆', '22');
INSERT INTO `hwua_product_category` VALUES ('9', '母婴', '2');
INSERT INTO `hwua_product_category` VALUES ('10', '食品', '2');
INSERT INTO `hwua_product_category` VALUES ('11', '手机数码', '2');
INSERT INTO `hwua_product_category` VALUES ('12', '家居首饰', '2');
INSERT INTO `hwua_product_category` VALUES ('13', '手表饰品', '2');
INSERT INTO `hwua_product_category` VALUES ('14', '鞋包', '21');
INSERT INTO `hwua_product_category` VALUES ('15', '家电', '2');
INSERT INTO `hwua_product_category` VALUES ('16', '电脑办公', '2');
INSERT INTO `hwua_product_category` VALUES ('17', '玩具文具', '21');
INSERT INTO `hwua_product_category` VALUES ('18', '汽车用品', '21');
INSERT INTO `hwua_product_category` VALUES ('19', '服饰', '2');
INSERT INTO `hwua_product_category` VALUES ('20', '彩票充值', '2');
INSERT INTO `hwua_product_category` VALUES ('21', '品牌', '21');
INSERT INTO `hwua_product_category` VALUES ('22', '团购', '22');
INSERT INTO `hwua_product_category` VALUES ('23', '易买社区', '23');
INSERT INTO `hwua_product_category` VALUES ('28', 'qq', '1');

-- ----------------------------
-- Table structure for `hwua_user`
-- ----------------------------
DROP TABLE IF EXISTS `hwua_user`;
CREATE TABLE `hwua_user` (
  `HU_USER_ID` int(10) NOT NULL AUTO_INCREMENT,
  `HU_USER_NAME` varchar(20) NOT NULL,
  `HU_PASSWORD` varchar(20) NOT NULL,
  `HU_SEX` char(2) NOT NULL,
  `HU_BIRTHDAY` varchar(200) DEFAULT NULL,
  `HU_IDENTITY_CODE` varchar(60) DEFAULT NULL,
  `HU_EMAIL` varchar(80) DEFAULT NULL,
  `HU_MOBILE` varchar(11) DEFAULT NULL,
  `HU_ADDRESS` varchar(200) NOT NULL,
  `HU_STATUS` int(6) NOT NULL,
  PRIMARY KEY (`HU_USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwua_user
-- ----------------------------
INSERT INTO `hwua_user` VALUES ('1', 'qwer123', '1234', '0', '1998-03-05', 'LENA', '11@qq.com', '11111111111', '111', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '小米', '123');
INSERT INTO `user` VALUES ('2', '1', '2');
INSERT INTO `user` VALUES ('3', '1111', '2323423');
