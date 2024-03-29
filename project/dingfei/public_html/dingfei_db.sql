/*
Navicat MySQL Data Transfer

Source Server         : 本机_3306
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : dingfei_db

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-03-29 14:17:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mqu_access
-- ----------------------------
DROP TABLE IF EXISTS `mqu_access`;
CREATE TABLE `mqu_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_access
-- ----------------------------
INSERT INTO `mqu_access` VALUES ('2', '157', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '158', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '156', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '155', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '154', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '153', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '152', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '151', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '139', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '130', '3', '118', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '124', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '123', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '122', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '121', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '120', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '119', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '118', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '117', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '116', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '115', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '114', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '113', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '112', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '111', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '110', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '107', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '98', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '90', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '88', '3', '81', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '81', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '80', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '79', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '78', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '77', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '76', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '75', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '65', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '55', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '48', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '40', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '30', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '28', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '27', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '26', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '25', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '24', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '23', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '22', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '21', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '19', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '18', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '17', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '16', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '15', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '14', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '13', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '12', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '11', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '8', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '7', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '6', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '5', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '4', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '3', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '2', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('2', '1', '1', '0', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '157', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '158', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '156', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '155', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '154', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '153', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '152', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '151', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '139', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '30', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '28', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '27', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '26', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '25', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '24', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '23', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '22', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '21', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '18', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '17', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '16', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '15', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '14', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '13', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '12', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '11', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '7', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '6', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '5', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '4', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '3', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '2', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('5', '1', '1', '0', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '1', '1', '0', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '12', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '13', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '14', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '15', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '16', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '21', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '22', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '23', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '24', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '25', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('4', '139', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '1', '1', '0', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '3', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '4', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '5', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '6', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '7', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '17', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '18', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '157', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('3', '158', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '1', '1', '0', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '2', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '3', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '4', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '5', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '6', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '7', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '8', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '11', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '12', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '13', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '14', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '15', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '16', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '17', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '18', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '19', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '21', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '22', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '23', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '24', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '25', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '26', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '27', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '28', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '30', '3', '2', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '40', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '48', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '55', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '65', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '75', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '76', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '77', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '78', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '79', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '80', '3', '75', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '81', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '88', '3', '81', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '90', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '98', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '107', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '110', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '111', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '112', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '113', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '114', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '115', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '116', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '117', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '118', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '119', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '120', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '121', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '122', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '123', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '124', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '125', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '126', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '127', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '128', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '129', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '130', '3', '118', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '131', '3', '125', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '132', '3', '125', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '133', '3', '125', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '134', '3', '125', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '135', '3', '125', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '136', '3', '125', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '137', '3', '125', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '138', '3', '125', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '139', '3', '12', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '140', '3', '126', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '141', '3', '126', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '142', '3', '127', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '144', '3', '127', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '145', '3', '129', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '146', '3', '129', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '147', '3', '129', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '148', '3', '129', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '149', '3', '129', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '150', '3', '129', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '151', '2', '1', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '152', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '153', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '154', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '155', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '156', '3', '151', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '158', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '157', '3', '3', '', '0');
INSERT INTO `mqu_access` VALUES ('1', '143', '3', '127', '', '0');

-- ----------------------------
-- Table structure for mqu_area
-- ----------------------------
DROP TABLE IF EXISTS `mqu_area`;
CREATE TABLE `mqu_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3267 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_area
-- ----------------------------
INSERT INTO `mqu_area` VALUES ('1', '0', '﻿北京', '0');
INSERT INTO `mqu_area` VALUES ('2', '1', '北京市', '0');
INSERT INTO `mqu_area` VALUES ('3', '2', '东城区', '0');
INSERT INTO `mqu_area` VALUES ('4', '2', '西城区', '0');
INSERT INTO `mqu_area` VALUES ('5', '2', '崇文区', '0');
INSERT INTO `mqu_area` VALUES ('6', '2', '宣武区', '0');
INSERT INTO `mqu_area` VALUES ('7', '2', '朝阳区', '0');
INSERT INTO `mqu_area` VALUES ('8', '2', '丰台区', '0');
INSERT INTO `mqu_area` VALUES ('9', '2', '石景山区', '0');
INSERT INTO `mqu_area` VALUES ('10', '2', '海淀区', '0');
INSERT INTO `mqu_area` VALUES ('11', '2', '门头沟区', '0');
INSERT INTO `mqu_area` VALUES ('12', '2', '房山区', '0');
INSERT INTO `mqu_area` VALUES ('13', '2', '通州区', '0');
INSERT INTO `mqu_area` VALUES ('14', '2', '顺义区', '0');
INSERT INTO `mqu_area` VALUES ('15', '2', '昌平区', '0');
INSERT INTO `mqu_area` VALUES ('16', '2', '大兴区', '0');
INSERT INTO `mqu_area` VALUES ('17', '2', '怀柔区', '0');
INSERT INTO `mqu_area` VALUES ('18', '2', '平谷区', '0');
INSERT INTO `mqu_area` VALUES ('19', '2', '密云县', '0');
INSERT INTO `mqu_area` VALUES ('20', '2', '延庆县', '0');
INSERT INTO `mqu_area` VALUES ('21', '0', '上海', '0');
INSERT INTO `mqu_area` VALUES ('22', '21', '上海市', '0');
INSERT INTO `mqu_area` VALUES ('23', '22', '黄浦区', '0');
INSERT INTO `mqu_area` VALUES ('24', '22', '卢湾区', '0');
INSERT INTO `mqu_area` VALUES ('25', '22', '徐汇区', '0');
INSERT INTO `mqu_area` VALUES ('26', '22', '长宁区', '0');
INSERT INTO `mqu_area` VALUES ('27', '22', '静安区', '0');
INSERT INTO `mqu_area` VALUES ('28', '22', '普陀区', '0');
INSERT INTO `mqu_area` VALUES ('29', '22', '闸北区', '0');
INSERT INTO `mqu_area` VALUES ('30', '22', '虹口区', '0');
INSERT INTO `mqu_area` VALUES ('31', '22', '杨浦区', '0');
INSERT INTO `mqu_area` VALUES ('32', '22', '闵行区', '0');
INSERT INTO `mqu_area` VALUES ('33', '22', '宝山区', '0');
INSERT INTO `mqu_area` VALUES ('34', '22', '嘉定区', '0');
INSERT INTO `mqu_area` VALUES ('35', '22', '浦东新区', '0');
INSERT INTO `mqu_area` VALUES ('36', '22', '金山区', '0');
INSERT INTO `mqu_area` VALUES ('37', '22', '松江区', '0');
INSERT INTO `mqu_area` VALUES ('38', '22', '青浦区', '0');
INSERT INTO `mqu_area` VALUES ('39', '22', '南汇区', '0');
INSERT INTO `mqu_area` VALUES ('40', '22', '奉贤区', '0');
INSERT INTO `mqu_area` VALUES ('41', '22', '崇明县', '0');
INSERT INTO `mqu_area` VALUES ('42', '0', '天津', '0');
INSERT INTO `mqu_area` VALUES ('43', '42', '天津市', '0');
INSERT INTO `mqu_area` VALUES ('44', '43', '和平区', '0');
INSERT INTO `mqu_area` VALUES ('45', '43', '河东区', '0');
INSERT INTO `mqu_area` VALUES ('46', '43', '河西区', '0');
INSERT INTO `mqu_area` VALUES ('47', '43', '南开区', '0');
INSERT INTO `mqu_area` VALUES ('48', '43', '河北区', '0');
INSERT INTO `mqu_area` VALUES ('49', '43', '红桥区', '0');
INSERT INTO `mqu_area` VALUES ('50', '43', '塘沽区', '0');
INSERT INTO `mqu_area` VALUES ('51', '43', '汉沽区', '0');
INSERT INTO `mqu_area` VALUES ('52', '43', '大港区', '0');
INSERT INTO `mqu_area` VALUES ('53', '43', '东丽区', '0');
INSERT INTO `mqu_area` VALUES ('54', '43', '西青区', '0');
INSERT INTO `mqu_area` VALUES ('55', '43', '津南区', '0');
INSERT INTO `mqu_area` VALUES ('56', '43', '北辰区', '0');
INSERT INTO `mqu_area` VALUES ('57', '43', '武清区', '0');
INSERT INTO `mqu_area` VALUES ('58', '43', '宝坻区', '0');
INSERT INTO `mqu_area` VALUES ('59', '43', '宁河县', '0');
INSERT INTO `mqu_area` VALUES ('60', '43', '静海县', '0');
INSERT INTO `mqu_area` VALUES ('61', '43', '蓟县', '0');
INSERT INTO `mqu_area` VALUES ('62', '0', '重庆', '0');
INSERT INTO `mqu_area` VALUES ('63', '62', '重庆市', '0');
INSERT INTO `mqu_area` VALUES ('64', '63', '万州区', '0');
INSERT INTO `mqu_area` VALUES ('65', '63', '涪陵区', '0');
INSERT INTO `mqu_area` VALUES ('66', '63', '渝中区', '0');
INSERT INTO `mqu_area` VALUES ('67', '63', '大渡口区', '0');
INSERT INTO `mqu_area` VALUES ('68', '63', '江北区', '0');
INSERT INTO `mqu_area` VALUES ('69', '63', '沙坪坝区', '0');
INSERT INTO `mqu_area` VALUES ('70', '63', '九龙坡区', '0');
INSERT INTO `mqu_area` VALUES ('71', '63', '南岸区', '0');
INSERT INTO `mqu_area` VALUES ('72', '63', '北碚区', '0');
INSERT INTO `mqu_area` VALUES ('73', '63', '万盛区', '0');
INSERT INTO `mqu_area` VALUES ('74', '63', '双桥区', '0');
INSERT INTO `mqu_area` VALUES ('75', '63', '渝北区', '0');
INSERT INTO `mqu_area` VALUES ('76', '63', '巴南区', '0');
INSERT INTO `mqu_area` VALUES ('77', '63', '黔江区', '0');
INSERT INTO `mqu_area` VALUES ('78', '63', '长寿区', '0');
INSERT INTO `mqu_area` VALUES ('79', '63', '綦江县', '0');
INSERT INTO `mqu_area` VALUES ('80', '63', '潼南县', '0');
INSERT INTO `mqu_area` VALUES ('81', '63', '铜梁县', '0');
INSERT INTO `mqu_area` VALUES ('82', '63', '大足县', '0');
INSERT INTO `mqu_area` VALUES ('83', '63', '荣昌县', '0');
INSERT INTO `mqu_area` VALUES ('84', '63', '璧山县', '0');
INSERT INTO `mqu_area` VALUES ('85', '63', '梁平县', '0');
INSERT INTO `mqu_area` VALUES ('86', '63', '城口县', '0');
INSERT INTO `mqu_area` VALUES ('87', '63', '丰都县', '0');
INSERT INTO `mqu_area` VALUES ('88', '63', '垫江县', '0');
INSERT INTO `mqu_area` VALUES ('89', '63', '武隆县', '0');
INSERT INTO `mqu_area` VALUES ('90', '63', '忠县', '0');
INSERT INTO `mqu_area` VALUES ('91', '63', '开县', '0');
INSERT INTO `mqu_area` VALUES ('92', '63', '云阳县', '0');
INSERT INTO `mqu_area` VALUES ('93', '63', '奉节县', '0');
INSERT INTO `mqu_area` VALUES ('94', '63', '巫山县', '0');
INSERT INTO `mqu_area` VALUES ('95', '63', '巫溪县', '0');
INSERT INTO `mqu_area` VALUES ('96', '63', '石柱土家族自治县', '0');
INSERT INTO `mqu_area` VALUES ('97', '63', '秀山土家族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('98', '63', '酉阳土家族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('99', '63', '彭水苗族土家族自治县', '0');
INSERT INTO `mqu_area` VALUES ('100', '63', '江津市', '0');
INSERT INTO `mqu_area` VALUES ('101', '63', '合川市', '0');
INSERT INTO `mqu_area` VALUES ('102', '63', '永川市', '0');
INSERT INTO `mqu_area` VALUES ('103', '63', '南川市', '0');
INSERT INTO `mqu_area` VALUES ('104', '0', '安徽', '0');
INSERT INTO `mqu_area` VALUES ('105', '104', '合肥市', '0');
INSERT INTO `mqu_area` VALUES ('106', '105', '瑶海区', '0');
INSERT INTO `mqu_area` VALUES ('107', '105', '庐阳区', '0');
INSERT INTO `mqu_area` VALUES ('108', '105', '蜀山区', '0');
INSERT INTO `mqu_area` VALUES ('109', '105', '包河区', '0');
INSERT INTO `mqu_area` VALUES ('110', '105', '长丰县', '0');
INSERT INTO `mqu_area` VALUES ('111', '105', '肥东县', '0');
INSERT INTO `mqu_area` VALUES ('112', '105', '肥西县', '0');
INSERT INTO `mqu_area` VALUES ('113', '104', '安庆市', '0');
INSERT INTO `mqu_area` VALUES ('114', '113', '迎江区', '0');
INSERT INTO `mqu_area` VALUES ('115', '113', '大观区', '0');
INSERT INTO `mqu_area` VALUES ('116', '113', '郊区', '0');
INSERT INTO `mqu_area` VALUES ('117', '113', '怀宁县', '0');
INSERT INTO `mqu_area` VALUES ('118', '113', '枞阳县', '0');
INSERT INTO `mqu_area` VALUES ('119', '113', '潜山县', '0');
INSERT INTO `mqu_area` VALUES ('120', '113', '太湖县', '0');
INSERT INTO `mqu_area` VALUES ('121', '113', '宿松县', '0');
INSERT INTO `mqu_area` VALUES ('122', '113', '望江县', '0');
INSERT INTO `mqu_area` VALUES ('123', '113', '岳西县', '0');
INSERT INTO `mqu_area` VALUES ('124', '113', '桐城市', '0');
INSERT INTO `mqu_area` VALUES ('125', '104', '蚌埠市', '0');
INSERT INTO `mqu_area` VALUES ('126', '125', '龙子湖区', '0');
INSERT INTO `mqu_area` VALUES ('127', '125', '蚌山区', '0');
INSERT INTO `mqu_area` VALUES ('128', '125', '禹会区', '0');
INSERT INTO `mqu_area` VALUES ('129', '125', '淮上区', '0');
INSERT INTO `mqu_area` VALUES ('130', '125', '怀远县', '0');
INSERT INTO `mqu_area` VALUES ('131', '125', '五河县', '0');
INSERT INTO `mqu_area` VALUES ('132', '125', '固镇县', '0');
INSERT INTO `mqu_area` VALUES ('133', '104', '亳州市', '0');
INSERT INTO `mqu_area` VALUES ('134', '133', '谯城区', '0');
INSERT INTO `mqu_area` VALUES ('135', '133', '涡阳县', '0');
INSERT INTO `mqu_area` VALUES ('136', '133', '蒙城县', '0');
INSERT INTO `mqu_area` VALUES ('137', '133', '利辛县', '0');
INSERT INTO `mqu_area` VALUES ('138', '104', '巢湖市', '0');
INSERT INTO `mqu_area` VALUES ('139', '138', '居巢区', '0');
INSERT INTO `mqu_area` VALUES ('140', '138', '庐江县', '0');
INSERT INTO `mqu_area` VALUES ('141', '138', '无为县', '0');
INSERT INTO `mqu_area` VALUES ('142', '138', '含山县', '0');
INSERT INTO `mqu_area` VALUES ('143', '138', '和县', '0');
INSERT INTO `mqu_area` VALUES ('144', '104', '池州市', '0');
INSERT INTO `mqu_area` VALUES ('145', '144', '贵池区', '0');
INSERT INTO `mqu_area` VALUES ('146', '144', '东至县', '0');
INSERT INTO `mqu_area` VALUES ('147', '144', '石台县', '0');
INSERT INTO `mqu_area` VALUES ('148', '144', '青阳县', '0');
INSERT INTO `mqu_area` VALUES ('149', '104', '滁州市', '0');
INSERT INTO `mqu_area` VALUES ('150', '149', '琅琊区', '0');
INSERT INTO `mqu_area` VALUES ('151', '149', '南谯区', '0');
INSERT INTO `mqu_area` VALUES ('152', '149', '来安县', '0');
INSERT INTO `mqu_area` VALUES ('153', '149', '全椒县', '0');
INSERT INTO `mqu_area` VALUES ('154', '149', '定远县', '0');
INSERT INTO `mqu_area` VALUES ('155', '149', '凤阳县', '0');
INSERT INTO `mqu_area` VALUES ('156', '149', '天长市', '0');
INSERT INTO `mqu_area` VALUES ('157', '149', '明光市', '0');
INSERT INTO `mqu_area` VALUES ('158', '104', '阜阳市', '0');
INSERT INTO `mqu_area` VALUES ('159', '158', '颍州区', '0');
INSERT INTO `mqu_area` VALUES ('160', '158', '颍东区', '0');
INSERT INTO `mqu_area` VALUES ('161', '158', '颍泉区', '0');
INSERT INTO `mqu_area` VALUES ('162', '158', '临泉县', '0');
INSERT INTO `mqu_area` VALUES ('163', '158', '太和县', '0');
INSERT INTO `mqu_area` VALUES ('164', '158', '阜南县', '0');
INSERT INTO `mqu_area` VALUES ('165', '158', '颍上县', '0');
INSERT INTO `mqu_area` VALUES ('166', '158', '界首市', '0');
INSERT INTO `mqu_area` VALUES ('167', '104', '淮北市', '0');
INSERT INTO `mqu_area` VALUES ('168', '167', '杜集区', '0');
INSERT INTO `mqu_area` VALUES ('169', '167', '相山区', '0');
INSERT INTO `mqu_area` VALUES ('170', '167', '烈山区', '0');
INSERT INTO `mqu_area` VALUES ('171', '167', '濉溪县', '0');
INSERT INTO `mqu_area` VALUES ('172', '104', '淮南市', '0');
INSERT INTO `mqu_area` VALUES ('173', '172', '大通区', '0');
INSERT INTO `mqu_area` VALUES ('174', '172', '田家庵区', '0');
INSERT INTO `mqu_area` VALUES ('175', '172', '谢家集区', '0');
INSERT INTO `mqu_area` VALUES ('176', '172', '八公山区', '0');
INSERT INTO `mqu_area` VALUES ('177', '172', '潘集区', '0');
INSERT INTO `mqu_area` VALUES ('178', '172', '凤台县', '0');
INSERT INTO `mqu_area` VALUES ('179', '104', '黄山市', '0');
INSERT INTO `mqu_area` VALUES ('180', '179', '屯溪区', '0');
INSERT INTO `mqu_area` VALUES ('181', '179', '黄山区', '0');
INSERT INTO `mqu_area` VALUES ('182', '179', '徽州区', '0');
INSERT INTO `mqu_area` VALUES ('183', '179', '歙县', '0');
INSERT INTO `mqu_area` VALUES ('184', '179', '休宁县', '0');
INSERT INTO `mqu_area` VALUES ('185', '179', '黟县', '0');
INSERT INTO `mqu_area` VALUES ('186', '179', '祁门县', '0');
INSERT INTO `mqu_area` VALUES ('187', '104', '六安市', '0');
INSERT INTO `mqu_area` VALUES ('188', '187', '金安区', '0');
INSERT INTO `mqu_area` VALUES ('189', '187', '裕安区', '0');
INSERT INTO `mqu_area` VALUES ('190', '187', '寿县', '0');
INSERT INTO `mqu_area` VALUES ('191', '187', '霍邱县', '0');
INSERT INTO `mqu_area` VALUES ('192', '187', '舒城县', '0');
INSERT INTO `mqu_area` VALUES ('193', '187', '金寨县', '0');
INSERT INTO `mqu_area` VALUES ('194', '187', '霍山县', '0');
INSERT INTO `mqu_area` VALUES ('195', '104', '马鞍山市', '0');
INSERT INTO `mqu_area` VALUES ('196', '195', '金家庄区', '0');
INSERT INTO `mqu_area` VALUES ('197', '195', '花山区', '0');
INSERT INTO `mqu_area` VALUES ('198', '195', '雨山区', '0');
INSERT INTO `mqu_area` VALUES ('199', '195', '当涂县', '0');
INSERT INTO `mqu_area` VALUES ('200', '104', '宿州市', '0');
INSERT INTO `mqu_area` VALUES ('201', '200', '墉桥区', '0');
INSERT INTO `mqu_area` VALUES ('202', '200', '砀山县', '0');
INSERT INTO `mqu_area` VALUES ('203', '200', '萧县', '0');
INSERT INTO `mqu_area` VALUES ('204', '200', '灵璧县', '0');
INSERT INTO `mqu_area` VALUES ('205', '200', '泗县', '0');
INSERT INTO `mqu_area` VALUES ('206', '104', '铜陵市', '0');
INSERT INTO `mqu_area` VALUES ('207', '206', '铜官山区', '0');
INSERT INTO `mqu_area` VALUES ('208', '206', '狮子山区', '0');
INSERT INTO `mqu_area` VALUES ('209', '206', '郊区', '0');
INSERT INTO `mqu_area` VALUES ('210', '206', '铜陵县', '0');
INSERT INTO `mqu_area` VALUES ('211', '104', '芜湖市', '0');
INSERT INTO `mqu_area` VALUES ('212', '211', '镜湖区', '0');
INSERT INTO `mqu_area` VALUES ('213', '211', '马塘区', '0');
INSERT INTO `mqu_area` VALUES ('214', '211', '新芜区', '0');
INSERT INTO `mqu_area` VALUES ('215', '211', '鸠江区', '0');
INSERT INTO `mqu_area` VALUES ('216', '211', '芜湖县', '0');
INSERT INTO `mqu_area` VALUES ('217', '211', '繁昌县', '0');
INSERT INTO `mqu_area` VALUES ('218', '211', '南陵县', '0');
INSERT INTO `mqu_area` VALUES ('219', '104', '宣城市', '0');
INSERT INTO `mqu_area` VALUES ('220', '219', '宣州区', '0');
INSERT INTO `mqu_area` VALUES ('221', '219', '郎溪县', '0');
INSERT INTO `mqu_area` VALUES ('222', '219', '广德县', '0');
INSERT INTO `mqu_area` VALUES ('223', '219', '泾县', '0');
INSERT INTO `mqu_area` VALUES ('224', '219', '绩溪县', '0');
INSERT INTO `mqu_area` VALUES ('225', '219', '旌德县', '0');
INSERT INTO `mqu_area` VALUES ('226', '219', '宁国市', '0');
INSERT INTO `mqu_area` VALUES ('227', '0', '福建', '0');
INSERT INTO `mqu_area` VALUES ('228', '227', '福州市', '0');
INSERT INTO `mqu_area` VALUES ('229', '228', '鼓楼区', '0');
INSERT INTO `mqu_area` VALUES ('230', '228', '台江区', '0');
INSERT INTO `mqu_area` VALUES ('231', '228', '仓山区', '0');
INSERT INTO `mqu_area` VALUES ('232', '228', '马尾区', '0');
INSERT INTO `mqu_area` VALUES ('233', '228', '晋安区', '0');
INSERT INTO `mqu_area` VALUES ('234', '228', '闽侯县', '0');
INSERT INTO `mqu_area` VALUES ('235', '228', '连江县', '0');
INSERT INTO `mqu_area` VALUES ('236', '228', '罗源县', '0');
INSERT INTO `mqu_area` VALUES ('237', '228', '闽清县', '0');
INSERT INTO `mqu_area` VALUES ('238', '228', '永泰县', '0');
INSERT INTO `mqu_area` VALUES ('239', '228', '平潭县', '0');
INSERT INTO `mqu_area` VALUES ('240', '228', '福清市', '0');
INSERT INTO `mqu_area` VALUES ('241', '228', '长乐市', '0');
INSERT INTO `mqu_area` VALUES ('242', '227', '龙岩市', '0');
INSERT INTO `mqu_area` VALUES ('243', '242', '新罗区', '0');
INSERT INTO `mqu_area` VALUES ('244', '242', '长汀县', '0');
INSERT INTO `mqu_area` VALUES ('245', '242', '永定县', '0');
INSERT INTO `mqu_area` VALUES ('246', '242', '上杭县', '0');
INSERT INTO `mqu_area` VALUES ('247', '242', '武平县', '0');
INSERT INTO `mqu_area` VALUES ('248', '242', '连城县', '0');
INSERT INTO `mqu_area` VALUES ('249', '242', '漳平市', '0');
INSERT INTO `mqu_area` VALUES ('250', '227', '南平市', '0');
INSERT INTO `mqu_area` VALUES ('251', '250', '延平区', '0');
INSERT INTO `mqu_area` VALUES ('252', '250', '顺昌县', '0');
INSERT INTO `mqu_area` VALUES ('253', '250', '浦城县', '0');
INSERT INTO `mqu_area` VALUES ('254', '250', '光泽县', '0');
INSERT INTO `mqu_area` VALUES ('255', '250', '松溪县', '0');
INSERT INTO `mqu_area` VALUES ('256', '250', '政和县', '0');
INSERT INTO `mqu_area` VALUES ('257', '250', '邵武市', '0');
INSERT INTO `mqu_area` VALUES ('258', '250', '武夷山市', '0');
INSERT INTO `mqu_area` VALUES ('259', '250', '建瓯市', '0');
INSERT INTO `mqu_area` VALUES ('260', '250', '建阳市', '0');
INSERT INTO `mqu_area` VALUES ('261', '227', '宁德市', '0');
INSERT INTO `mqu_area` VALUES ('262', '261', '蕉城区', '0');
INSERT INTO `mqu_area` VALUES ('263', '261', '霞浦县', '0');
INSERT INTO `mqu_area` VALUES ('264', '261', '古田县', '0');
INSERT INTO `mqu_area` VALUES ('265', '261', '屏南县', '0');
INSERT INTO `mqu_area` VALUES ('266', '261', '寿宁县', '0');
INSERT INTO `mqu_area` VALUES ('267', '261', '周宁县', '0');
INSERT INTO `mqu_area` VALUES ('268', '261', '柘荣县', '0');
INSERT INTO `mqu_area` VALUES ('269', '261', '福安市', '0');
INSERT INTO `mqu_area` VALUES ('270', '261', '福鼎市', '0');
INSERT INTO `mqu_area` VALUES ('271', '227', '莆田市', '0');
INSERT INTO `mqu_area` VALUES ('272', '271', '城厢区', '0');
INSERT INTO `mqu_area` VALUES ('273', '271', '涵江区', '0');
INSERT INTO `mqu_area` VALUES ('274', '271', '荔城区', '0');
INSERT INTO `mqu_area` VALUES ('275', '271', '秀屿区', '0');
INSERT INTO `mqu_area` VALUES ('276', '271', '仙游县', '0');
INSERT INTO `mqu_area` VALUES ('277', '227', '泉州市', '0');
INSERT INTO `mqu_area` VALUES ('278', '277', '鲤城区', '0');
INSERT INTO `mqu_area` VALUES ('279', '277', '丰泽区', '0');
INSERT INTO `mqu_area` VALUES ('280', '277', '洛江区', '0');
INSERT INTO `mqu_area` VALUES ('281', '277', '泉港区', '0');
INSERT INTO `mqu_area` VALUES ('282', '277', '惠安县', '0');
INSERT INTO `mqu_area` VALUES ('283', '277', '安溪县', '0');
INSERT INTO `mqu_area` VALUES ('284', '277', '永春县', '0');
INSERT INTO `mqu_area` VALUES ('285', '277', '德化县', '0');
INSERT INTO `mqu_area` VALUES ('286', '277', '金门县', '0');
INSERT INTO `mqu_area` VALUES ('287', '277', '石狮市', '0');
INSERT INTO `mqu_area` VALUES ('288', '277', '晋江市', '0');
INSERT INTO `mqu_area` VALUES ('289', '277', '南安市', '0');
INSERT INTO `mqu_area` VALUES ('290', '227', '三明市', '0');
INSERT INTO `mqu_area` VALUES ('291', '290', '梅列区', '0');
INSERT INTO `mqu_area` VALUES ('292', '290', '三元区', '0');
INSERT INTO `mqu_area` VALUES ('293', '290', '明溪县', '0');
INSERT INTO `mqu_area` VALUES ('294', '290', '清流县', '0');
INSERT INTO `mqu_area` VALUES ('295', '290', '宁化县', '0');
INSERT INTO `mqu_area` VALUES ('296', '290', '大田县', '0');
INSERT INTO `mqu_area` VALUES ('297', '290', '尤溪县', '0');
INSERT INTO `mqu_area` VALUES ('298', '290', '沙县', '0');
INSERT INTO `mqu_area` VALUES ('299', '290', '将乐县', '0');
INSERT INTO `mqu_area` VALUES ('300', '290', '泰宁县', '0');
INSERT INTO `mqu_area` VALUES ('301', '290', '建宁县', '0');
INSERT INTO `mqu_area` VALUES ('302', '290', '永安市', '0');
INSERT INTO `mqu_area` VALUES ('303', '227', '厦门市', '0');
INSERT INTO `mqu_area` VALUES ('304', '303', '思明区', '0');
INSERT INTO `mqu_area` VALUES ('305', '303', '海沧区', '0');
INSERT INTO `mqu_area` VALUES ('306', '303', '湖里区', '0');
INSERT INTO `mqu_area` VALUES ('307', '303', '集美区', '0');
INSERT INTO `mqu_area` VALUES ('308', '303', '同安区', '0');
INSERT INTO `mqu_area` VALUES ('309', '303', '翔安区', '0');
INSERT INTO `mqu_area` VALUES ('310', '227', '漳州市', '0');
INSERT INTO `mqu_area` VALUES ('311', '310', '芗城区', '0');
INSERT INTO `mqu_area` VALUES ('312', '310', '龙文区', '0');
INSERT INTO `mqu_area` VALUES ('313', '310', '云霄县', '0');
INSERT INTO `mqu_area` VALUES ('314', '310', '漳浦县', '0');
INSERT INTO `mqu_area` VALUES ('315', '310', '诏安县', '0');
INSERT INTO `mqu_area` VALUES ('316', '310', '长泰县', '0');
INSERT INTO `mqu_area` VALUES ('317', '310', '东山县', '0');
INSERT INTO `mqu_area` VALUES ('318', '310', '南靖县', '0');
INSERT INTO `mqu_area` VALUES ('319', '310', '平和县', '0');
INSERT INTO `mqu_area` VALUES ('320', '310', '华安县', '0');
INSERT INTO `mqu_area` VALUES ('321', '310', '龙海市', '0');
INSERT INTO `mqu_area` VALUES ('322', '0', '甘肃', '0');
INSERT INTO `mqu_area` VALUES ('323', '322', '兰州市', '0');
INSERT INTO `mqu_area` VALUES ('324', '323', '城关区', '0');
INSERT INTO `mqu_area` VALUES ('325', '323', '七里河区', '0');
INSERT INTO `mqu_area` VALUES ('326', '323', '西固区', '0');
INSERT INTO `mqu_area` VALUES ('327', '323', '安宁区', '0');
INSERT INTO `mqu_area` VALUES ('328', '323', '红古区', '0');
INSERT INTO `mqu_area` VALUES ('329', '323', '永登县', '0');
INSERT INTO `mqu_area` VALUES ('330', '323', '皋兰县', '0');
INSERT INTO `mqu_area` VALUES ('331', '323', '榆中县', '0');
INSERT INTO `mqu_area` VALUES ('332', '322', '白银市', '0');
INSERT INTO `mqu_area` VALUES ('333', '332', '白银区', '0');
INSERT INTO `mqu_area` VALUES ('334', '332', '平川区', '0');
INSERT INTO `mqu_area` VALUES ('335', '332', '靖远县', '0');
INSERT INTO `mqu_area` VALUES ('336', '332', '会宁县', '0');
INSERT INTO `mqu_area` VALUES ('337', '332', '景泰县', '0');
INSERT INTO `mqu_area` VALUES ('338', '322', '定西市', '0');
INSERT INTO `mqu_area` VALUES ('339', '338', '安定区', '0');
INSERT INTO `mqu_area` VALUES ('340', '338', '通渭县', '0');
INSERT INTO `mqu_area` VALUES ('341', '338', '陇西县', '0');
INSERT INTO `mqu_area` VALUES ('342', '338', '渭源县', '0');
INSERT INTO `mqu_area` VALUES ('343', '338', '临洮县', '0');
INSERT INTO `mqu_area` VALUES ('344', '338', '漳县', '0');
INSERT INTO `mqu_area` VALUES ('345', '338', '岷县', '0');
INSERT INTO `mqu_area` VALUES ('346', '322', '甘南藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('347', '346', '合作市', '0');
INSERT INTO `mqu_area` VALUES ('348', '346', '临潭县', '0');
INSERT INTO `mqu_area` VALUES ('349', '346', '卓尼县', '0');
INSERT INTO `mqu_area` VALUES ('350', '346', '舟曲县', '0');
INSERT INTO `mqu_area` VALUES ('351', '346', '迭部县', '0');
INSERT INTO `mqu_area` VALUES ('352', '346', '玛曲县', '0');
INSERT INTO `mqu_area` VALUES ('353', '346', '碌曲县', '0');
INSERT INTO `mqu_area` VALUES ('354', '346', '夏河县', '0');
INSERT INTO `mqu_area` VALUES ('355', '322', '嘉峪关市', '0');
INSERT INTO `mqu_area` VALUES ('356', '322', '金昌市', '0');
INSERT INTO `mqu_area` VALUES ('357', '356', '金川区', '0');
INSERT INTO `mqu_area` VALUES ('358', '356', '永昌县', '0');
INSERT INTO `mqu_area` VALUES ('359', '322', '酒泉市', '0');
INSERT INTO `mqu_area` VALUES ('360', '359', '肃州区', '0');
INSERT INTO `mqu_area` VALUES ('361', '359', '金塔县', '0');
INSERT INTO `mqu_area` VALUES ('362', '359', '安西县', '0');
INSERT INTO `mqu_area` VALUES ('363', '359', '肃北蒙古族自治县', '0');
INSERT INTO `mqu_area` VALUES ('364', '359', '阿克塞哈萨克族自治县', '0');
INSERT INTO `mqu_area` VALUES ('365', '359', '玉门市', '0');
INSERT INTO `mqu_area` VALUES ('366', '359', '敦煌市', '0');
INSERT INTO `mqu_area` VALUES ('367', '322', '临夏回族自治州', '0');
INSERT INTO `mqu_area` VALUES ('368', '367', '临夏市', '0');
INSERT INTO `mqu_area` VALUES ('369', '367', '临夏县', '0');
INSERT INTO `mqu_area` VALUES ('370', '367', '康乐县', '0');
INSERT INTO `mqu_area` VALUES ('371', '367', '永靖县', '0');
INSERT INTO `mqu_area` VALUES ('372', '367', '广河县', '0');
INSERT INTO `mqu_area` VALUES ('373', '367', '和政县', '0');
INSERT INTO `mqu_area` VALUES ('374', '367', '东乡族自治县', '0');
INSERT INTO `mqu_area` VALUES ('375', '367', '积石山保安族东乡族撒拉族自治县', '0');
INSERT INTO `mqu_area` VALUES ('376', '322', '陇南市', '0');
INSERT INTO `mqu_area` VALUES ('377', '376', '武都区', '0');
INSERT INTO `mqu_area` VALUES ('378', '376', '成县', '0');
INSERT INTO `mqu_area` VALUES ('379', '376', '文县', '0');
INSERT INTO `mqu_area` VALUES ('380', '376', '宕昌县', '0');
INSERT INTO `mqu_area` VALUES ('381', '376', '康县', '0');
INSERT INTO `mqu_area` VALUES ('382', '376', '西和县', '0');
INSERT INTO `mqu_area` VALUES ('383', '376', '礼县', '0');
INSERT INTO `mqu_area` VALUES ('384', '376', '徽县', '0');
INSERT INTO `mqu_area` VALUES ('385', '376', '两当县', '0');
INSERT INTO `mqu_area` VALUES ('386', '322', '平凉市', '0');
INSERT INTO `mqu_area` VALUES ('387', '386', '崆峒区', '0');
INSERT INTO `mqu_area` VALUES ('388', '386', '泾川县', '0');
INSERT INTO `mqu_area` VALUES ('389', '386', '灵台县', '0');
INSERT INTO `mqu_area` VALUES ('390', '386', '崇信县', '0');
INSERT INTO `mqu_area` VALUES ('391', '386', '华亭县', '0');
INSERT INTO `mqu_area` VALUES ('392', '386', '庄浪县', '0');
INSERT INTO `mqu_area` VALUES ('393', '386', '静宁县', '0');
INSERT INTO `mqu_area` VALUES ('394', '322', '庆阳市', '0');
INSERT INTO `mqu_area` VALUES ('395', '394', '西峰区', '0');
INSERT INTO `mqu_area` VALUES ('396', '394', '庆城县', '0');
INSERT INTO `mqu_area` VALUES ('397', '394', '环县', '0');
INSERT INTO `mqu_area` VALUES ('398', '394', '华池县', '0');
INSERT INTO `mqu_area` VALUES ('399', '394', '合水县', '0');
INSERT INTO `mqu_area` VALUES ('400', '394', '正宁县', '0');
INSERT INTO `mqu_area` VALUES ('401', '394', '宁县', '0');
INSERT INTO `mqu_area` VALUES ('402', '394', '镇原县', '0');
INSERT INTO `mqu_area` VALUES ('403', '322', '天水市', '0');
INSERT INTO `mqu_area` VALUES ('404', '403', '秦城区', '0');
INSERT INTO `mqu_area` VALUES ('405', '403', '北道区', '0');
INSERT INTO `mqu_area` VALUES ('406', '403', '清水县', '0');
INSERT INTO `mqu_area` VALUES ('407', '403', '秦安县', '0');
INSERT INTO `mqu_area` VALUES ('408', '403', '甘谷县', '0');
INSERT INTO `mqu_area` VALUES ('409', '403', '武山县', '0');
INSERT INTO `mqu_area` VALUES ('410', '403', '张家川回族自治县', '0');
INSERT INTO `mqu_area` VALUES ('411', '322', '武威市', '0');
INSERT INTO `mqu_area` VALUES ('412', '411', '凉州区', '0');
INSERT INTO `mqu_area` VALUES ('413', '411', '民勤县', '0');
INSERT INTO `mqu_area` VALUES ('414', '411', '古浪县', '0');
INSERT INTO `mqu_area` VALUES ('415', '411', '天祝藏族自治县', '0');
INSERT INTO `mqu_area` VALUES ('416', '322', '张掖市', '0');
INSERT INTO `mqu_area` VALUES ('417', '416', '甘州区', '0');
INSERT INTO `mqu_area` VALUES ('418', '416', '肃南裕固族自治县', '0');
INSERT INTO `mqu_area` VALUES ('419', '416', '民乐县', '0');
INSERT INTO `mqu_area` VALUES ('420', '416', '临泽县', '0');
INSERT INTO `mqu_area` VALUES ('421', '416', '高台县', '0');
INSERT INTO `mqu_area` VALUES ('422', '416', '山丹县', '0');
INSERT INTO `mqu_area` VALUES ('423', '0', '广东', '0');
INSERT INTO `mqu_area` VALUES ('424', '423', '广州市', '0');
INSERT INTO `mqu_area` VALUES ('425', '424', '东山区', '0');
INSERT INTO `mqu_area` VALUES ('426', '424', '荔湾区', '0');
INSERT INTO `mqu_area` VALUES ('427', '424', '越秀区', '0');
INSERT INTO `mqu_area` VALUES ('428', '424', '海珠区', '0');
INSERT INTO `mqu_area` VALUES ('429', '424', '天河区', '0');
INSERT INTO `mqu_area` VALUES ('430', '424', '芳村区', '0');
INSERT INTO `mqu_area` VALUES ('431', '424', '白云区', '0');
INSERT INTO `mqu_area` VALUES ('432', '424', '黄埔区', '0');
INSERT INTO `mqu_area` VALUES ('433', '424', '番禺区', '0');
INSERT INTO `mqu_area` VALUES ('434', '424', '花都区', '0');
INSERT INTO `mqu_area` VALUES ('435', '424', '增城市', '0');
INSERT INTO `mqu_area` VALUES ('436', '424', '从化市', '0');
INSERT INTO `mqu_area` VALUES ('437', '423', '潮州市', '0');
INSERT INTO `mqu_area` VALUES ('438', '437', '湘桥区', '0');
INSERT INTO `mqu_area` VALUES ('439', '437', '潮安县', '0');
INSERT INTO `mqu_area` VALUES ('440', '437', '饶平县', '0');
INSERT INTO `mqu_area` VALUES ('441', '423', '东莞市', '0');
INSERT INTO `mqu_area` VALUES ('442', '423', '佛山市', '0');
INSERT INTO `mqu_area` VALUES ('443', '442', '禅城区', '0');
INSERT INTO `mqu_area` VALUES ('444', '442', '南海区', '0');
INSERT INTO `mqu_area` VALUES ('445', '442', '顺德区', '0');
INSERT INTO `mqu_area` VALUES ('446', '442', '三水区', '0');
INSERT INTO `mqu_area` VALUES ('447', '442', '高明区', '0');
INSERT INTO `mqu_area` VALUES ('448', '423', '河源市', '0');
INSERT INTO `mqu_area` VALUES ('449', '448', '源城区', '0');
INSERT INTO `mqu_area` VALUES ('450', '448', '紫金县', '0');
INSERT INTO `mqu_area` VALUES ('451', '448', '龙川县', '0');
INSERT INTO `mqu_area` VALUES ('452', '448', '连平县', '0');
INSERT INTO `mqu_area` VALUES ('453', '448', '和平县', '0');
INSERT INTO `mqu_area` VALUES ('454', '448', '东源县', '0');
INSERT INTO `mqu_area` VALUES ('455', '423', '惠州市', '0');
INSERT INTO `mqu_area` VALUES ('456', '455', '惠城区', '0');
INSERT INTO `mqu_area` VALUES ('457', '455', '惠阳区', '0');
INSERT INTO `mqu_area` VALUES ('458', '455', '博罗县', '0');
INSERT INTO `mqu_area` VALUES ('459', '455', '惠东县', '0');
INSERT INTO `mqu_area` VALUES ('460', '455', '龙门县', '0');
INSERT INTO `mqu_area` VALUES ('461', '423', '江门市', '0');
INSERT INTO `mqu_area` VALUES ('462', '461', '蓬江区', '0');
INSERT INTO `mqu_area` VALUES ('463', '461', '江海区', '0');
INSERT INTO `mqu_area` VALUES ('464', '461', '新会区', '0');
INSERT INTO `mqu_area` VALUES ('465', '461', '台山市', '0');
INSERT INTO `mqu_area` VALUES ('466', '461', '开平市', '0');
INSERT INTO `mqu_area` VALUES ('467', '461', '鹤山市', '0');
INSERT INTO `mqu_area` VALUES ('468', '461', '恩平市', '0');
INSERT INTO `mqu_area` VALUES ('469', '423', '揭阳市', '0');
INSERT INTO `mqu_area` VALUES ('470', '469', '榕城区', '0');
INSERT INTO `mqu_area` VALUES ('471', '469', '揭东县', '0');
INSERT INTO `mqu_area` VALUES ('472', '469', '揭西县', '0');
INSERT INTO `mqu_area` VALUES ('473', '469', '惠来县', '0');
INSERT INTO `mqu_area` VALUES ('474', '469', '普宁市', '0');
INSERT INTO `mqu_area` VALUES ('475', '423', '茂名市', '0');
INSERT INTO `mqu_area` VALUES ('476', '475', '茂南区', '0');
INSERT INTO `mqu_area` VALUES ('477', '475', '茂港区', '0');
INSERT INTO `mqu_area` VALUES ('478', '475', '电白县', '0');
INSERT INTO `mqu_area` VALUES ('479', '475', '高州市', '0');
INSERT INTO `mqu_area` VALUES ('480', '475', '化州市', '0');
INSERT INTO `mqu_area` VALUES ('481', '475', '信宜市', '0');
INSERT INTO `mqu_area` VALUES ('482', '423', '梅江区', '0');
INSERT INTO `mqu_area` VALUES ('483', '423', '梅州市', '0');
INSERT INTO `mqu_area` VALUES ('484', '483', '梅县', '0');
INSERT INTO `mqu_area` VALUES ('485', '483', '大埔县', '0');
INSERT INTO `mqu_area` VALUES ('486', '483', '丰顺县', '0');
INSERT INTO `mqu_area` VALUES ('487', '483', '五华县', '0');
INSERT INTO `mqu_area` VALUES ('488', '483', '平远县', '0');
INSERT INTO `mqu_area` VALUES ('489', '483', '蕉岭县', '0');
INSERT INTO `mqu_area` VALUES ('490', '483', '兴宁市', '0');
INSERT INTO `mqu_area` VALUES ('491', '423', '清远市', '0');
INSERT INTO `mqu_area` VALUES ('492', '491', '清城区', '0');
INSERT INTO `mqu_area` VALUES ('493', '491', '佛冈县', '0');
INSERT INTO `mqu_area` VALUES ('494', '491', '阳山县', '0');
INSERT INTO `mqu_area` VALUES ('495', '491', '连山壮族瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('496', '491', '连南瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('497', '491', '清新县', '0');
INSERT INTO `mqu_area` VALUES ('498', '491', '英德市', '0');
INSERT INTO `mqu_area` VALUES ('499', '491', '连州市', '0');
INSERT INTO `mqu_area` VALUES ('500', '423', '汕头市', '0');
INSERT INTO `mqu_area` VALUES ('501', '500', '龙湖区', '0');
INSERT INTO `mqu_area` VALUES ('502', '500', '金平区', '0');
INSERT INTO `mqu_area` VALUES ('503', '500', '濠江区', '0');
INSERT INTO `mqu_area` VALUES ('504', '500', '潮阳区', '0');
INSERT INTO `mqu_area` VALUES ('505', '500', '潮南区', '0');
INSERT INTO `mqu_area` VALUES ('506', '500', '澄海区', '0');
INSERT INTO `mqu_area` VALUES ('507', '500', '南澳县', '0');
INSERT INTO `mqu_area` VALUES ('508', '423', '汕尾市', '0');
INSERT INTO `mqu_area` VALUES ('509', '508', '城区', '0');
INSERT INTO `mqu_area` VALUES ('510', '508', '海丰县', '0');
INSERT INTO `mqu_area` VALUES ('511', '508', '陆河县', '0');
INSERT INTO `mqu_area` VALUES ('512', '508', '陆丰市', '0');
INSERT INTO `mqu_area` VALUES ('513', '423', '韶关市', '0');
INSERT INTO `mqu_area` VALUES ('514', '513', '武江区', '0');
INSERT INTO `mqu_area` VALUES ('515', '513', '浈江区', '0');
INSERT INTO `mqu_area` VALUES ('516', '513', '曲江区', '0');
INSERT INTO `mqu_area` VALUES ('517', '513', '始兴县', '0');
INSERT INTO `mqu_area` VALUES ('518', '513', '仁化县', '0');
INSERT INTO `mqu_area` VALUES ('519', '513', '翁源县', '0');
INSERT INTO `mqu_area` VALUES ('520', '513', '乳源瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('521', '513', '新丰县', '0');
INSERT INTO `mqu_area` VALUES ('522', '513', '乐昌市', '0');
INSERT INTO `mqu_area` VALUES ('523', '513', '南雄市', '0');
INSERT INTO `mqu_area` VALUES ('524', '423', '深圳市', '0');
INSERT INTO `mqu_area` VALUES ('525', '524', '罗湖区', '0');
INSERT INTO `mqu_area` VALUES ('526', '524', '福田区', '0');
INSERT INTO `mqu_area` VALUES ('527', '524', '南山区', '0');
INSERT INTO `mqu_area` VALUES ('528', '524', '宝安区', '0');
INSERT INTO `mqu_area` VALUES ('529', '524', '龙岗区', '0');
INSERT INTO `mqu_area` VALUES ('530', '524', '盐田区', '0');
INSERT INTO `mqu_area` VALUES ('531', '423', '阳江市', '0');
INSERT INTO `mqu_area` VALUES ('532', '531', '江城区', '0');
INSERT INTO `mqu_area` VALUES ('533', '531', '阳西县', '0');
INSERT INTO `mqu_area` VALUES ('534', '531', '阳东县', '0');
INSERT INTO `mqu_area` VALUES ('535', '531', '阳春市', '0');
INSERT INTO `mqu_area` VALUES ('536', '423', '云浮市', '0');
INSERT INTO `mqu_area` VALUES ('537', '536', '云城区', '0');
INSERT INTO `mqu_area` VALUES ('538', '536', '新兴县', '0');
INSERT INTO `mqu_area` VALUES ('539', '536', '郁南县', '0');
INSERT INTO `mqu_area` VALUES ('540', '536', '云安县', '0');
INSERT INTO `mqu_area` VALUES ('541', '536', '罗定市', '0');
INSERT INTO `mqu_area` VALUES ('542', '423', '湛江市', '0');
INSERT INTO `mqu_area` VALUES ('543', '542', '赤坎区', '0');
INSERT INTO `mqu_area` VALUES ('544', '542', '霞山区', '0');
INSERT INTO `mqu_area` VALUES ('545', '542', '坡头区', '0');
INSERT INTO `mqu_area` VALUES ('546', '542', '麻章区', '0');
INSERT INTO `mqu_area` VALUES ('547', '542', '遂溪县', '0');
INSERT INTO `mqu_area` VALUES ('548', '542', '徐闻县', '0');
INSERT INTO `mqu_area` VALUES ('549', '542', '廉江市', '0');
INSERT INTO `mqu_area` VALUES ('550', '542', '雷州市', '0');
INSERT INTO `mqu_area` VALUES ('551', '542', '吴川市', '0');
INSERT INTO `mqu_area` VALUES ('552', '423', '肇庆市', '0');
INSERT INTO `mqu_area` VALUES ('553', '552', '端州区', '0');
INSERT INTO `mqu_area` VALUES ('554', '552', '鼎湖区', '0');
INSERT INTO `mqu_area` VALUES ('555', '552', '广宁县', '0');
INSERT INTO `mqu_area` VALUES ('556', '552', '怀集县', '0');
INSERT INTO `mqu_area` VALUES ('557', '552', '封开县', '0');
INSERT INTO `mqu_area` VALUES ('558', '552', '德庆县', '0');
INSERT INTO `mqu_area` VALUES ('559', '552', '高要市', '0');
INSERT INTO `mqu_area` VALUES ('560', '552', '四会市', '0');
INSERT INTO `mqu_area` VALUES ('561', '423', '中山市', '0');
INSERT INTO `mqu_area` VALUES ('562', '423', '珠海市', '0');
INSERT INTO `mqu_area` VALUES ('563', '562', '香洲区', '0');
INSERT INTO `mqu_area` VALUES ('564', '562', '斗门区', '0');
INSERT INTO `mqu_area` VALUES ('565', '562', '金湾区', '0');
INSERT INTO `mqu_area` VALUES ('566', '0', '广西', '0');
INSERT INTO `mqu_area` VALUES ('567', '566', '南宁市', '0');
INSERT INTO `mqu_area` VALUES ('568', '567', '兴宁区', '0');
INSERT INTO `mqu_area` VALUES ('569', '567', '青秀区', '0');
INSERT INTO `mqu_area` VALUES ('570', '567', '江南区', '0');
INSERT INTO `mqu_area` VALUES ('571', '567', '西乡塘区', '0');
INSERT INTO `mqu_area` VALUES ('572', '567', '良庆区', '0');
INSERT INTO `mqu_area` VALUES ('573', '567', '邕宁区', '0');
INSERT INTO `mqu_area` VALUES ('574', '567', '武鸣县', '0');
INSERT INTO `mqu_area` VALUES ('575', '567', '隆安县', '0');
INSERT INTO `mqu_area` VALUES ('576', '567', '马山县', '0');
INSERT INTO `mqu_area` VALUES ('577', '567', '上林县', '0');
INSERT INTO `mqu_area` VALUES ('578', '567', '宾阳县', '0');
INSERT INTO `mqu_area` VALUES ('579', '567', '横县', '0');
INSERT INTO `mqu_area` VALUES ('580', '566', '百色市', '0');
INSERT INTO `mqu_area` VALUES ('581', '580', '右江区', '0');
INSERT INTO `mqu_area` VALUES ('582', '580', '田阳县', '0');
INSERT INTO `mqu_area` VALUES ('583', '580', '田东县', '0');
INSERT INTO `mqu_area` VALUES ('584', '580', '平果县', '0');
INSERT INTO `mqu_area` VALUES ('585', '580', '德保县', '0');
INSERT INTO `mqu_area` VALUES ('586', '580', '靖西县', '0');
INSERT INTO `mqu_area` VALUES ('587', '580', '那坡县', '0');
INSERT INTO `mqu_area` VALUES ('588', '580', '凌云县', '0');
INSERT INTO `mqu_area` VALUES ('589', '580', '乐业县', '0');
INSERT INTO `mqu_area` VALUES ('590', '580', '田林县', '0');
INSERT INTO `mqu_area` VALUES ('591', '580', '西林县', '0');
INSERT INTO `mqu_area` VALUES ('592', '580', '隆林各族自治县', '0');
INSERT INTO `mqu_area` VALUES ('593', '566', '北海市', '0');
INSERT INTO `mqu_area` VALUES ('594', '593', '海城区', '0');
INSERT INTO `mqu_area` VALUES ('595', '593', '银海区', '0');
INSERT INTO `mqu_area` VALUES ('596', '593', '铁山港区', '0');
INSERT INTO `mqu_area` VALUES ('597', '593', '合浦县', '0');
INSERT INTO `mqu_area` VALUES ('598', '566', '崇左市', '0');
INSERT INTO `mqu_area` VALUES ('599', '598', '江洲区', '0');
INSERT INTO `mqu_area` VALUES ('600', '598', '扶绥县', '0');
INSERT INTO `mqu_area` VALUES ('601', '598', '宁明县', '0');
INSERT INTO `mqu_area` VALUES ('602', '598', '龙州县', '0');
INSERT INTO `mqu_area` VALUES ('603', '598', '大新县', '0');
INSERT INTO `mqu_area` VALUES ('604', '598', '天等县', '0');
INSERT INTO `mqu_area` VALUES ('605', '598', '凭祥市', '0');
INSERT INTO `mqu_area` VALUES ('606', '566', '防城港市', '0');
INSERT INTO `mqu_area` VALUES ('607', '606', '港口区', '0');
INSERT INTO `mqu_area` VALUES ('608', '606', '防城区', '0');
INSERT INTO `mqu_area` VALUES ('609', '606', '上思县', '0');
INSERT INTO `mqu_area` VALUES ('610', '606', '东兴市', '0');
INSERT INTO `mqu_area` VALUES ('611', '566', '贵港市', '0');
INSERT INTO `mqu_area` VALUES ('612', '611', '港北区', '0');
INSERT INTO `mqu_area` VALUES ('613', '611', '港南区', '0');
INSERT INTO `mqu_area` VALUES ('614', '611', '覃塘区', '0');
INSERT INTO `mqu_area` VALUES ('615', '611', '平南县', '0');
INSERT INTO `mqu_area` VALUES ('616', '611', '桂平市', '0');
INSERT INTO `mqu_area` VALUES ('617', '566', '桂林市', '0');
INSERT INTO `mqu_area` VALUES ('618', '617', '秀峰区', '0');
INSERT INTO `mqu_area` VALUES ('619', '617', '叠彩区', '0');
INSERT INTO `mqu_area` VALUES ('620', '617', '象山区', '0');
INSERT INTO `mqu_area` VALUES ('621', '617', '七星区', '0');
INSERT INTO `mqu_area` VALUES ('622', '617', '雁山区', '0');
INSERT INTO `mqu_area` VALUES ('623', '617', '阳朔县', '0');
INSERT INTO `mqu_area` VALUES ('624', '617', '临桂县', '0');
INSERT INTO `mqu_area` VALUES ('625', '617', '灵川县', '0');
INSERT INTO `mqu_area` VALUES ('626', '617', '全州县', '0');
INSERT INTO `mqu_area` VALUES ('627', '617', '兴安县', '0');
INSERT INTO `mqu_area` VALUES ('628', '617', '永福县', '0');
INSERT INTO `mqu_area` VALUES ('629', '617', '灌阳县', '0');
INSERT INTO `mqu_area` VALUES ('630', '617', '龙胜各族自治县', '0');
INSERT INTO `mqu_area` VALUES ('631', '617', '资源县', '0');
INSERT INTO `mqu_area` VALUES ('632', '617', '平乐县', '0');
INSERT INTO `mqu_area` VALUES ('633', '617', '荔蒲县', '0');
INSERT INTO `mqu_area` VALUES ('634', '617', '恭城瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('635', '566', '河池市', '0');
INSERT INTO `mqu_area` VALUES ('636', '635', '金城江区', '0');
INSERT INTO `mqu_area` VALUES ('637', '635', '南丹县', '0');
INSERT INTO `mqu_area` VALUES ('638', '635', '天峨县', '0');
INSERT INTO `mqu_area` VALUES ('639', '635', '凤山县', '0');
INSERT INTO `mqu_area` VALUES ('640', '635', '东兰县', '0');
INSERT INTO `mqu_area` VALUES ('641', '635', '罗城仫佬族自治县', '0');
INSERT INTO `mqu_area` VALUES ('642', '635', '环江毛南族自治县', '0');
INSERT INTO `mqu_area` VALUES ('643', '635', '巴马瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('644', '635', '都安瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('645', '635', '大化瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('646', '635', '宜州市', '0');
INSERT INTO `mqu_area` VALUES ('647', '566', '贺州市', '0');
INSERT INTO `mqu_area` VALUES ('648', '647', '八步区', '0');
INSERT INTO `mqu_area` VALUES ('649', '647', '昭平县', '0');
INSERT INTO `mqu_area` VALUES ('650', '647', '钟山县', '0');
INSERT INTO `mqu_area` VALUES ('651', '647', '富川瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('652', '566', '来宾市', '0');
INSERT INTO `mqu_area` VALUES ('653', '652', '兴宾区', '0');
INSERT INTO `mqu_area` VALUES ('654', '652', '忻城县', '0');
INSERT INTO `mqu_area` VALUES ('655', '652', '象州县', '0');
INSERT INTO `mqu_area` VALUES ('656', '652', '武宣县', '0');
INSERT INTO `mqu_area` VALUES ('657', '652', '金秀瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('658', '652', '合山市', '0');
INSERT INTO `mqu_area` VALUES ('659', '566', '柳州市', '0');
INSERT INTO `mqu_area` VALUES ('660', '659', '城中区', '0');
INSERT INTO `mqu_area` VALUES ('661', '659', '鱼峰区', '0');
INSERT INTO `mqu_area` VALUES ('662', '659', '柳南区', '0');
INSERT INTO `mqu_area` VALUES ('663', '659', '柳北区', '0');
INSERT INTO `mqu_area` VALUES ('664', '659', '柳江县', '0');
INSERT INTO `mqu_area` VALUES ('665', '659', '柳城县', '0');
INSERT INTO `mqu_area` VALUES ('666', '659', '鹿寨县', '0');
INSERT INTO `mqu_area` VALUES ('667', '659', '融安县', '0');
INSERT INTO `mqu_area` VALUES ('668', '659', '融水苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('669', '659', '三江侗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('670', '566', '钦州市', '0');
INSERT INTO `mqu_area` VALUES ('671', '670', '钦南区', '0');
INSERT INTO `mqu_area` VALUES ('672', '670', '钦北区', '0');
INSERT INTO `mqu_area` VALUES ('673', '670', '灵山县', '0');
INSERT INTO `mqu_area` VALUES ('674', '670', '浦北县', '0');
INSERT INTO `mqu_area` VALUES ('675', '566', '梧州市', '0');
INSERT INTO `mqu_area` VALUES ('676', '675', '万秀区', '0');
INSERT INTO `mqu_area` VALUES ('677', '675', '蝶山区', '0');
INSERT INTO `mqu_area` VALUES ('678', '675', '长洲区', '0');
INSERT INTO `mqu_area` VALUES ('679', '675', '苍梧县', '0');
INSERT INTO `mqu_area` VALUES ('680', '675', '藤县', '0');
INSERT INTO `mqu_area` VALUES ('681', '675', '蒙山县', '0');
INSERT INTO `mqu_area` VALUES ('682', '675', '岑溪市', '0');
INSERT INTO `mqu_area` VALUES ('683', '566', '玉林市', '0');
INSERT INTO `mqu_area` VALUES ('684', '683', '玉州区', '0');
INSERT INTO `mqu_area` VALUES ('685', '683', '容县', '0');
INSERT INTO `mqu_area` VALUES ('686', '683', '陆川县', '0');
INSERT INTO `mqu_area` VALUES ('687', '683', '博白县', '0');
INSERT INTO `mqu_area` VALUES ('688', '683', '兴业县', '0');
INSERT INTO `mqu_area` VALUES ('689', '683', '北流市', '0');
INSERT INTO `mqu_area` VALUES ('690', '0', '贵州', '0');
INSERT INTO `mqu_area` VALUES ('691', '690', '贵阳市', '0');
INSERT INTO `mqu_area` VALUES ('692', '691', '南明区', '0');
INSERT INTO `mqu_area` VALUES ('693', '691', '云岩区', '0');
INSERT INTO `mqu_area` VALUES ('694', '691', '花溪区', '0');
INSERT INTO `mqu_area` VALUES ('695', '691', '乌当区', '0');
INSERT INTO `mqu_area` VALUES ('696', '691', '白云区', '0');
INSERT INTO `mqu_area` VALUES ('697', '691', '小河区', '0');
INSERT INTO `mqu_area` VALUES ('698', '691', '开阳县', '0');
INSERT INTO `mqu_area` VALUES ('699', '691', '息烽县', '0');
INSERT INTO `mqu_area` VALUES ('700', '691', '修文县', '0');
INSERT INTO `mqu_area` VALUES ('701', '691', '清镇市', '0');
INSERT INTO `mqu_area` VALUES ('702', '690', '安顺市', '0');
INSERT INTO `mqu_area` VALUES ('703', '702', '西秀区', '0');
INSERT INTO `mqu_area` VALUES ('704', '702', '平坝县', '0');
INSERT INTO `mqu_area` VALUES ('705', '702', '普定县', '0');
INSERT INTO `mqu_area` VALUES ('706', '702', '镇宁布依族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('707', '702', '关岭布依族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('708', '702', '紫云苗族布依族自治县', '0');
INSERT INTO `mqu_area` VALUES ('709', '690', '毕节地区', '0');
INSERT INTO `mqu_area` VALUES ('710', '709', '毕节市', '0');
INSERT INTO `mqu_area` VALUES ('711', '709', '大方县', '0');
INSERT INTO `mqu_area` VALUES ('712', '709', '黔西县', '0');
INSERT INTO `mqu_area` VALUES ('713', '709', '金沙县', '0');
INSERT INTO `mqu_area` VALUES ('714', '709', '织金县', '0');
INSERT INTO `mqu_area` VALUES ('715', '709', '纳雍县', '0');
INSERT INTO `mqu_area` VALUES ('716', '709', '威宁彝族回族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('717', '709', '赫章县', '0');
INSERT INTO `mqu_area` VALUES ('718', '690', '六盘水市', '0');
INSERT INTO `mqu_area` VALUES ('719', '718', '钟山区', '0');
INSERT INTO `mqu_area` VALUES ('720', '718', '六枝特区', '0');
INSERT INTO `mqu_area` VALUES ('721', '718', '水城县', '0');
INSERT INTO `mqu_area` VALUES ('722', '718', '盘县', '0');
INSERT INTO `mqu_area` VALUES ('723', '690', '黔东南苗族侗族自治州', '0');
INSERT INTO `mqu_area` VALUES ('724', '723', '凯里市', '0');
INSERT INTO `mqu_area` VALUES ('725', '723', '黄平县', '0');
INSERT INTO `mqu_area` VALUES ('726', '723', '施秉县', '0');
INSERT INTO `mqu_area` VALUES ('727', '723', '三穗县', '0');
INSERT INTO `mqu_area` VALUES ('728', '723', '镇远县', '0');
INSERT INTO `mqu_area` VALUES ('729', '723', '岑巩县', '0');
INSERT INTO `mqu_area` VALUES ('730', '723', '天柱县', '0');
INSERT INTO `mqu_area` VALUES ('731', '723', '锦屏县', '0');
INSERT INTO `mqu_area` VALUES ('732', '723', '剑河县', '0');
INSERT INTO `mqu_area` VALUES ('733', '723', '台江县', '0');
INSERT INTO `mqu_area` VALUES ('734', '723', '黎平县', '0');
INSERT INTO `mqu_area` VALUES ('735', '723', '榕江县', '0');
INSERT INTO `mqu_area` VALUES ('736', '723', '从江县', '0');
INSERT INTO `mqu_area` VALUES ('737', '723', '雷山县', '0');
INSERT INTO `mqu_area` VALUES ('738', '723', '麻江县', '0');
INSERT INTO `mqu_area` VALUES ('739', '723', '丹寨县', '0');
INSERT INTO `mqu_area` VALUES ('740', '690', '黔南布依族苗族自治州', '0');
INSERT INTO `mqu_area` VALUES ('741', '740', '都匀市', '0');
INSERT INTO `mqu_area` VALUES ('742', '740', '福泉市', '0');
INSERT INTO `mqu_area` VALUES ('743', '740', '荔波县', '0');
INSERT INTO `mqu_area` VALUES ('744', '740', '贵定县', '0');
INSERT INTO `mqu_area` VALUES ('745', '740', '瓮安县', '0');
INSERT INTO `mqu_area` VALUES ('746', '740', '独山县', '0');
INSERT INTO `mqu_area` VALUES ('747', '740', '平塘县', '0');
INSERT INTO `mqu_area` VALUES ('748', '740', '罗甸县', '0');
INSERT INTO `mqu_area` VALUES ('749', '740', '长顺县', '0');
INSERT INTO `mqu_area` VALUES ('750', '740', '龙里县', '0');
INSERT INTO `mqu_area` VALUES ('751', '740', '惠水县', '0');
INSERT INTO `mqu_area` VALUES ('752', '740', '三都水族自治县', '0');
INSERT INTO `mqu_area` VALUES ('753', '690', '黔西南布依族苗族自治州', '0');
INSERT INTO `mqu_area` VALUES ('754', '753', '兴义市', '0');
INSERT INTO `mqu_area` VALUES ('755', '753', '兴仁县', '0');
INSERT INTO `mqu_area` VALUES ('756', '753', '普安县', '0');
INSERT INTO `mqu_area` VALUES ('757', '753', '晴隆县', '0');
INSERT INTO `mqu_area` VALUES ('758', '753', '贞丰县', '0');
INSERT INTO `mqu_area` VALUES ('759', '753', '望谟县', '0');
INSERT INTO `mqu_area` VALUES ('760', '753', '册亨县', '0');
INSERT INTO `mqu_area` VALUES ('761', '753', '安龙县', '0');
INSERT INTO `mqu_area` VALUES ('762', '690', '铜仁地区', '0');
INSERT INTO `mqu_area` VALUES ('763', '762', '铜仁市', '0');
INSERT INTO `mqu_area` VALUES ('764', '762', '江口县', '0');
INSERT INTO `mqu_area` VALUES ('765', '762', '玉屏侗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('766', '762', '石阡县', '0');
INSERT INTO `mqu_area` VALUES ('767', '762', '思南县', '0');
INSERT INTO `mqu_area` VALUES ('768', '762', '印江土家族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('769', '762', '德江县', '0');
INSERT INTO `mqu_area` VALUES ('770', '762', '沿河土家族自治县', '0');
INSERT INTO `mqu_area` VALUES ('771', '762', '松桃苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('772', '762', '万山特区', '0');
INSERT INTO `mqu_area` VALUES ('773', '690', '遵义市', '0');
INSERT INTO `mqu_area` VALUES ('774', '773', '红花岗区', '0');
INSERT INTO `mqu_area` VALUES ('775', '773', '汇川区', '0');
INSERT INTO `mqu_area` VALUES ('776', '773', '遵义县', '0');
INSERT INTO `mqu_area` VALUES ('777', '773', '桐梓县', '0');
INSERT INTO `mqu_area` VALUES ('778', '773', '绥阳县', '0');
INSERT INTO `mqu_area` VALUES ('779', '773', '正安县', '0');
INSERT INTO `mqu_area` VALUES ('780', '773', '道真仡佬族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('781', '773', '务川仡佬族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('782', '773', '凤冈县', '0');
INSERT INTO `mqu_area` VALUES ('783', '773', '湄潭县', '0');
INSERT INTO `mqu_area` VALUES ('784', '773', '余庆县', '0');
INSERT INTO `mqu_area` VALUES ('785', '773', '习水县', '0');
INSERT INTO `mqu_area` VALUES ('786', '773', '赤水市', '0');
INSERT INTO `mqu_area` VALUES ('787', '773', '仁怀市', '0');
INSERT INTO `mqu_area` VALUES ('788', '0', '海南', '0');
INSERT INTO `mqu_area` VALUES ('789', '788', '海口市', '0');
INSERT INTO `mqu_area` VALUES ('790', '789', '秀英区', '0');
INSERT INTO `mqu_area` VALUES ('791', '789', '龙华区', '0');
INSERT INTO `mqu_area` VALUES ('792', '789', '琼山区', '0');
INSERT INTO `mqu_area` VALUES ('793', '789', '美兰区', '0');
INSERT INTO `mqu_area` VALUES ('794', '788', '白沙黎族自治县', '0');
INSERT INTO `mqu_area` VALUES ('795', '788', '保亭黎族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('796', '788', '昌江黎族自治县', '0');
INSERT INTO `mqu_area` VALUES ('797', '788', '澄迈县', '0');
INSERT INTO `mqu_area` VALUES ('798', '788', '儋州市', '0');
INSERT INTO `mqu_area` VALUES ('799', '788', '定安县', '0');
INSERT INTO `mqu_area` VALUES ('800', '788', '东方市', '0');
INSERT INTO `mqu_area` VALUES ('801', '788', '乐东黎族自治县', '0');
INSERT INTO `mqu_area` VALUES ('802', '788', '临高县', '0');
INSERT INTO `mqu_area` VALUES ('803', '788', '陵水黎族自治县', '0');
INSERT INTO `mqu_area` VALUES ('804', '788', '南沙群岛', '0');
INSERT INTO `mqu_area` VALUES ('805', '788', '琼海市', '0');
INSERT INTO `mqu_area` VALUES ('806', '788', '琼中黎族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('807', '788', '三亚市', '0');
INSERT INTO `mqu_area` VALUES ('808', '788', '屯昌县', '0');
INSERT INTO `mqu_area` VALUES ('809', '788', '万宁市', '0');
INSERT INTO `mqu_area` VALUES ('810', '788', '文昌市', '0');
INSERT INTO `mqu_area` VALUES ('811', '788', '五指山市', '0');
INSERT INTO `mqu_area` VALUES ('812', '788', '西沙群岛', '0');
INSERT INTO `mqu_area` VALUES ('813', '788', '中沙群岛的岛礁及其海域', '0');
INSERT INTO `mqu_area` VALUES ('814', '0', '河北', '0');
INSERT INTO `mqu_area` VALUES ('815', '814', '石家庄市', '0');
INSERT INTO `mqu_area` VALUES ('816', '815', '长安区', '0');
INSERT INTO `mqu_area` VALUES ('817', '815', '桥东区', '0');
INSERT INTO `mqu_area` VALUES ('818', '815', '桥西区', '0');
INSERT INTO `mqu_area` VALUES ('819', '815', '新华区', '0');
INSERT INTO `mqu_area` VALUES ('820', '815', '井陉矿区', '0');
INSERT INTO `mqu_area` VALUES ('821', '815', '裕华区', '0');
INSERT INTO `mqu_area` VALUES ('822', '815', '井陉县', '0');
INSERT INTO `mqu_area` VALUES ('823', '815', '正定县', '0');
INSERT INTO `mqu_area` VALUES ('824', '815', '栾城县', '0');
INSERT INTO `mqu_area` VALUES ('825', '815', '行唐县', '0');
INSERT INTO `mqu_area` VALUES ('826', '815', '灵寿县', '0');
INSERT INTO `mqu_area` VALUES ('827', '815', '高邑县', '0');
INSERT INTO `mqu_area` VALUES ('828', '815', '深泽县', '0');
INSERT INTO `mqu_area` VALUES ('829', '815', '赞皇县', '0');
INSERT INTO `mqu_area` VALUES ('830', '815', '无极县', '0');
INSERT INTO `mqu_area` VALUES ('831', '815', '平山县', '0');
INSERT INTO `mqu_area` VALUES ('832', '815', '元氏县', '0');
INSERT INTO `mqu_area` VALUES ('833', '815', '赵县', '0');
INSERT INTO `mqu_area` VALUES ('834', '815', '辛集市', '0');
INSERT INTO `mqu_area` VALUES ('835', '815', '藁城市', '0');
INSERT INTO `mqu_area` VALUES ('836', '815', '晋州市', '0');
INSERT INTO `mqu_area` VALUES ('837', '815', '新乐市', '0');
INSERT INTO `mqu_area` VALUES ('838', '815', '鹿泉市', '0');
INSERT INTO `mqu_area` VALUES ('839', '814', '保定市', '0');
INSERT INTO `mqu_area` VALUES ('840', '839', '新市区', '0');
INSERT INTO `mqu_area` VALUES ('841', '839', '北市区', '0');
INSERT INTO `mqu_area` VALUES ('842', '839', '南市区', '0');
INSERT INTO `mqu_area` VALUES ('843', '839', '满城县', '0');
INSERT INTO `mqu_area` VALUES ('844', '839', '清苑县', '0');
INSERT INTO `mqu_area` VALUES ('845', '839', '涞水县', '0');
INSERT INTO `mqu_area` VALUES ('846', '839', '阜平县', '0');
INSERT INTO `mqu_area` VALUES ('847', '839', '徐水县', '0');
INSERT INTO `mqu_area` VALUES ('848', '839', '定兴县', '0');
INSERT INTO `mqu_area` VALUES ('849', '839', '唐县', '0');
INSERT INTO `mqu_area` VALUES ('850', '839', '高阳县', '0');
INSERT INTO `mqu_area` VALUES ('851', '839', '容城县', '0');
INSERT INTO `mqu_area` VALUES ('852', '839', '涞源县', '0');
INSERT INTO `mqu_area` VALUES ('853', '839', '望都县', '0');
INSERT INTO `mqu_area` VALUES ('854', '839', '安新县', '0');
INSERT INTO `mqu_area` VALUES ('855', '839', '易县', '0');
INSERT INTO `mqu_area` VALUES ('856', '839', '曲阳县', '0');
INSERT INTO `mqu_area` VALUES ('857', '839', '蠡县', '0');
INSERT INTO `mqu_area` VALUES ('858', '839', '顺平县', '0');
INSERT INTO `mqu_area` VALUES ('859', '839', '博野县', '0');
INSERT INTO `mqu_area` VALUES ('860', '839', '雄县', '0');
INSERT INTO `mqu_area` VALUES ('861', '839', '涿州市', '0');
INSERT INTO `mqu_area` VALUES ('862', '839', '定州市', '0');
INSERT INTO `mqu_area` VALUES ('863', '839', '安国市', '0');
INSERT INTO `mqu_area` VALUES ('864', '839', '高碑店市', '0');
INSERT INTO `mqu_area` VALUES ('865', '814', '沧州市', '0');
INSERT INTO `mqu_area` VALUES ('866', '865', '新华区', '0');
INSERT INTO `mqu_area` VALUES ('867', '865', '运河区', '0');
INSERT INTO `mqu_area` VALUES ('868', '865', '沧县', '0');
INSERT INTO `mqu_area` VALUES ('869', '865', '青县', '0');
INSERT INTO `mqu_area` VALUES ('870', '865', '东光县', '0');
INSERT INTO `mqu_area` VALUES ('871', '865', '海兴县', '0');
INSERT INTO `mqu_area` VALUES ('872', '865', '盐山县', '0');
INSERT INTO `mqu_area` VALUES ('873', '865', '肃宁县', '0');
INSERT INTO `mqu_area` VALUES ('874', '865', '南皮县', '0');
INSERT INTO `mqu_area` VALUES ('875', '865', '吴桥县', '0');
INSERT INTO `mqu_area` VALUES ('876', '865', '献县', '0');
INSERT INTO `mqu_area` VALUES ('877', '865', '孟村回族自治县', '0');
INSERT INTO `mqu_area` VALUES ('878', '865', '泊头市', '0');
INSERT INTO `mqu_area` VALUES ('879', '865', '任丘市', '0');
INSERT INTO `mqu_area` VALUES ('880', '865', '黄骅市', '0');
INSERT INTO `mqu_area` VALUES ('881', '865', '河间市', '0');
INSERT INTO `mqu_area` VALUES ('882', '814', '承德市', '0');
INSERT INTO `mqu_area` VALUES ('883', '882', '双桥区', '0');
INSERT INTO `mqu_area` VALUES ('884', '882', '双滦区', '0');
INSERT INTO `mqu_area` VALUES ('885', '882', '鹰手营子矿区', '0');
INSERT INTO `mqu_area` VALUES ('886', '882', '承德县', '0');
INSERT INTO `mqu_area` VALUES ('887', '882', '兴隆县', '0');
INSERT INTO `mqu_area` VALUES ('888', '882', '平泉县', '0');
INSERT INTO `mqu_area` VALUES ('889', '882', '滦平县', '0');
INSERT INTO `mqu_area` VALUES ('890', '882', '隆化县', '0');
INSERT INTO `mqu_area` VALUES ('891', '882', '丰宁满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('892', '882', '宽城满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('893', '882', '围场满族蒙古族自治县', '0');
INSERT INTO `mqu_area` VALUES ('894', '814', '邯郸市', '0');
INSERT INTO `mqu_area` VALUES ('895', '894', '邯山区', '0');
INSERT INTO `mqu_area` VALUES ('896', '894', '丛台区', '0');
INSERT INTO `mqu_area` VALUES ('897', '894', '复兴区', '0');
INSERT INTO `mqu_area` VALUES ('898', '894', '峰峰矿区', '0');
INSERT INTO `mqu_area` VALUES ('899', '894', '邯郸县', '0');
INSERT INTO `mqu_area` VALUES ('900', '894', '临漳县', '0');
INSERT INTO `mqu_area` VALUES ('901', '894', '成安县', '0');
INSERT INTO `mqu_area` VALUES ('902', '894', '大名县', '0');
INSERT INTO `mqu_area` VALUES ('903', '894', '涉县', '0');
INSERT INTO `mqu_area` VALUES ('904', '894', '磁县', '0');
INSERT INTO `mqu_area` VALUES ('905', '894', '肥乡县', '0');
INSERT INTO `mqu_area` VALUES ('906', '894', '永年县', '0');
INSERT INTO `mqu_area` VALUES ('907', '894', '邱县', '0');
INSERT INTO `mqu_area` VALUES ('908', '894', '鸡泽县', '0');
INSERT INTO `mqu_area` VALUES ('909', '894', '广平县', '0');
INSERT INTO `mqu_area` VALUES ('910', '894', '馆陶县', '0');
INSERT INTO `mqu_area` VALUES ('911', '894', '魏县', '0');
INSERT INTO `mqu_area` VALUES ('912', '894', '曲周县', '0');
INSERT INTO `mqu_area` VALUES ('913', '894', '武安市', '0');
INSERT INTO `mqu_area` VALUES ('914', '814', '衡水市', '0');
INSERT INTO `mqu_area` VALUES ('915', '914', '桃城区', '0');
INSERT INTO `mqu_area` VALUES ('916', '914', '枣强县', '0');
INSERT INTO `mqu_area` VALUES ('917', '914', '武邑县', '0');
INSERT INTO `mqu_area` VALUES ('918', '914', '武强县', '0');
INSERT INTO `mqu_area` VALUES ('919', '914', '饶阳县', '0');
INSERT INTO `mqu_area` VALUES ('920', '914', '安平县', '0');
INSERT INTO `mqu_area` VALUES ('921', '914', '故城县', '0');
INSERT INTO `mqu_area` VALUES ('922', '914', '景县', '0');
INSERT INTO `mqu_area` VALUES ('923', '914', '阜城县', '0');
INSERT INTO `mqu_area` VALUES ('924', '914', '冀州市', '0');
INSERT INTO `mqu_area` VALUES ('925', '914', '深州市', '0');
INSERT INTO `mqu_area` VALUES ('926', '814', '廊坊市', '0');
INSERT INTO `mqu_area` VALUES ('927', '926', '安次区', '0');
INSERT INTO `mqu_area` VALUES ('928', '926', '广阳区', '0');
INSERT INTO `mqu_area` VALUES ('929', '926', '固安县', '0');
INSERT INTO `mqu_area` VALUES ('930', '926', '永清县', '0');
INSERT INTO `mqu_area` VALUES ('931', '926', '香河县', '0');
INSERT INTO `mqu_area` VALUES ('932', '926', '大城县', '0');
INSERT INTO `mqu_area` VALUES ('933', '926', '文安县', '0');
INSERT INTO `mqu_area` VALUES ('934', '926', '大厂回族自治县', '0');
INSERT INTO `mqu_area` VALUES ('935', '926', '霸州市', '0');
INSERT INTO `mqu_area` VALUES ('936', '926', '三河市', '0');
INSERT INTO `mqu_area` VALUES ('937', '814', '秦皇岛市', '0');
INSERT INTO `mqu_area` VALUES ('938', '937', '海港区', '0');
INSERT INTO `mqu_area` VALUES ('939', '937', '山海关区', '0');
INSERT INTO `mqu_area` VALUES ('940', '937', '北戴河区', '0');
INSERT INTO `mqu_area` VALUES ('941', '937', '青龙满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('942', '937', '昌黎县', '0');
INSERT INTO `mqu_area` VALUES ('943', '937', '抚宁县', '0');
INSERT INTO `mqu_area` VALUES ('944', '937', '卢龙县', '0');
INSERT INTO `mqu_area` VALUES ('945', '814', '唐山市', '0');
INSERT INTO `mqu_area` VALUES ('946', '945', '路南区', '0');
INSERT INTO `mqu_area` VALUES ('947', '945', '路北区', '0');
INSERT INTO `mqu_area` VALUES ('948', '945', '古冶区', '0');
INSERT INTO `mqu_area` VALUES ('949', '945', '开平区', '0');
INSERT INTO `mqu_area` VALUES ('950', '945', '丰南区', '0');
INSERT INTO `mqu_area` VALUES ('951', '945', '丰润区', '0');
INSERT INTO `mqu_area` VALUES ('952', '945', '滦县', '0');
INSERT INTO `mqu_area` VALUES ('953', '945', '滦南县', '0');
INSERT INTO `mqu_area` VALUES ('954', '945', '乐亭县', '0');
INSERT INTO `mqu_area` VALUES ('955', '945', '迁西县', '0');
INSERT INTO `mqu_area` VALUES ('956', '945', '玉田县', '0');
INSERT INTO `mqu_area` VALUES ('957', '945', '唐海县', '0');
INSERT INTO `mqu_area` VALUES ('958', '945', '遵化市', '0');
INSERT INTO `mqu_area` VALUES ('959', '945', '迁安市', '0');
INSERT INTO `mqu_area` VALUES ('960', '814', '邢台市', '0');
INSERT INTO `mqu_area` VALUES ('961', '960', '桥东区', '0');
INSERT INTO `mqu_area` VALUES ('962', '960', '桥西区', '0');
INSERT INTO `mqu_area` VALUES ('963', '960', '邢台县', '0');
INSERT INTO `mqu_area` VALUES ('964', '960', '临城县', '0');
INSERT INTO `mqu_area` VALUES ('965', '960', '内丘县', '0');
INSERT INTO `mqu_area` VALUES ('966', '960', '柏乡县', '0');
INSERT INTO `mqu_area` VALUES ('967', '960', '隆尧县', '0');
INSERT INTO `mqu_area` VALUES ('968', '960', '任县', '0');
INSERT INTO `mqu_area` VALUES ('969', '960', '南和县', '0');
INSERT INTO `mqu_area` VALUES ('970', '960', '宁晋县', '0');
INSERT INTO `mqu_area` VALUES ('971', '960', '巨鹿县', '0');
INSERT INTO `mqu_area` VALUES ('972', '960', '新河县', '0');
INSERT INTO `mqu_area` VALUES ('973', '960', '广宗县', '0');
INSERT INTO `mqu_area` VALUES ('974', '960', '平乡县', '0');
INSERT INTO `mqu_area` VALUES ('975', '960', '威县', '0');
INSERT INTO `mqu_area` VALUES ('976', '960', '清河县', '0');
INSERT INTO `mqu_area` VALUES ('977', '960', '临西县', '0');
INSERT INTO `mqu_area` VALUES ('978', '960', '南宫市', '0');
INSERT INTO `mqu_area` VALUES ('979', '960', '沙河市', '0');
INSERT INTO `mqu_area` VALUES ('980', '814', '张家口市', '0');
INSERT INTO `mqu_area` VALUES ('981', '980', '桥东区', '0');
INSERT INTO `mqu_area` VALUES ('982', '980', '桥西区', '0');
INSERT INTO `mqu_area` VALUES ('983', '980', '宣化区', '0');
INSERT INTO `mqu_area` VALUES ('984', '980', '下花园区', '0');
INSERT INTO `mqu_area` VALUES ('985', '980', '宣化县', '0');
INSERT INTO `mqu_area` VALUES ('986', '980', '张北县', '0');
INSERT INTO `mqu_area` VALUES ('987', '980', '康保县', '0');
INSERT INTO `mqu_area` VALUES ('988', '980', '沽源县', '0');
INSERT INTO `mqu_area` VALUES ('989', '980', '尚义县', '0');
INSERT INTO `mqu_area` VALUES ('990', '980', '蔚县', '0');
INSERT INTO `mqu_area` VALUES ('991', '980', '阳原县', '0');
INSERT INTO `mqu_area` VALUES ('992', '980', '怀安县', '0');
INSERT INTO `mqu_area` VALUES ('993', '980', '万全县', '0');
INSERT INTO `mqu_area` VALUES ('994', '980', '怀来县', '0');
INSERT INTO `mqu_area` VALUES ('995', '980', '涿鹿县', '0');
INSERT INTO `mqu_area` VALUES ('996', '980', '赤城县', '0');
INSERT INTO `mqu_area` VALUES ('997', '980', '崇礼县', '0');
INSERT INTO `mqu_area` VALUES ('998', '0', '河南', '0');
INSERT INTO `mqu_area` VALUES ('999', '998', '郑州市', '0');
INSERT INTO `mqu_area` VALUES ('1000', '999', '中原区', '0');
INSERT INTO `mqu_area` VALUES ('1001', '999', '二七区', '0');
INSERT INTO `mqu_area` VALUES ('1002', '999', '管城回族区', '0');
INSERT INTO `mqu_area` VALUES ('1003', '999', '金水区', '0');
INSERT INTO `mqu_area` VALUES ('1004', '999', '上街区', '0');
INSERT INTO `mqu_area` VALUES ('1005', '999', '邙山区', '0');
INSERT INTO `mqu_area` VALUES ('1006', '999', '中牟县', '0');
INSERT INTO `mqu_area` VALUES ('1007', '999', '巩义市', '0');
INSERT INTO `mqu_area` VALUES ('1008', '999', '荥阳市', '0');
INSERT INTO `mqu_area` VALUES ('1009', '999', '新密市', '0');
INSERT INTO `mqu_area` VALUES ('1010', '999', '新郑市', '0');
INSERT INTO `mqu_area` VALUES ('1011', '999', '登封市', '0');
INSERT INTO `mqu_area` VALUES ('1012', '998', '安阳市', '0');
INSERT INTO `mqu_area` VALUES ('1013', '1012', '文峰区', '0');
INSERT INTO `mqu_area` VALUES ('1014', '1012', '北关区', '0');
INSERT INTO `mqu_area` VALUES ('1015', '1012', '殷都区', '0');
INSERT INTO `mqu_area` VALUES ('1016', '1012', '龙安区', '0');
INSERT INTO `mqu_area` VALUES ('1017', '1012', '安阳县', '0');
INSERT INTO `mqu_area` VALUES ('1018', '1012', '汤阴县', '0');
INSERT INTO `mqu_area` VALUES ('1019', '1012', '滑县', '0');
INSERT INTO `mqu_area` VALUES ('1020', '1012', '内黄县', '0');
INSERT INTO `mqu_area` VALUES ('1021', '1012', '林州市', '0');
INSERT INTO `mqu_area` VALUES ('1022', '998', '鹤壁市', '0');
INSERT INTO `mqu_area` VALUES ('1023', '1022', '鹤山区', '0');
INSERT INTO `mqu_area` VALUES ('1024', '1022', '山城区', '0');
INSERT INTO `mqu_area` VALUES ('1025', '1022', '淇滨区', '0');
INSERT INTO `mqu_area` VALUES ('1026', '1022', '浚县', '0');
INSERT INTO `mqu_area` VALUES ('1027', '1022', '淇县', '0');
INSERT INTO `mqu_area` VALUES ('1028', '998', '济源市', '0');
INSERT INTO `mqu_area` VALUES ('1029', '998', '焦作市', '0');
INSERT INTO `mqu_area` VALUES ('1030', '1029', '解放区', '0');
INSERT INTO `mqu_area` VALUES ('1031', '1029', '中站区', '0');
INSERT INTO `mqu_area` VALUES ('1032', '1029', '马村区', '0');
INSERT INTO `mqu_area` VALUES ('1033', '1029', '山阳区', '0');
INSERT INTO `mqu_area` VALUES ('1034', '1029', '修武县', '0');
INSERT INTO `mqu_area` VALUES ('1035', '1029', '博爱县', '0');
INSERT INTO `mqu_area` VALUES ('1036', '1029', '武陟县', '0');
INSERT INTO `mqu_area` VALUES ('1037', '1029', '温县', '0');
INSERT INTO `mqu_area` VALUES ('1038', '1029', '济源市', '0');
INSERT INTO `mqu_area` VALUES ('1039', '1029', '沁阳市', '0');
INSERT INTO `mqu_area` VALUES ('1040', '1029', '孟州市', '0');
INSERT INTO `mqu_area` VALUES ('1041', '998', '开封市', '0');
INSERT INTO `mqu_area` VALUES ('1042', '1041', '龙亭区', '0');
INSERT INTO `mqu_area` VALUES ('1043', '1041', '顺河回族区', '0');
INSERT INTO `mqu_area` VALUES ('1044', '1041', '鼓楼区', '0');
INSERT INTO `mqu_area` VALUES ('1045', '1041', '南关区', '0');
INSERT INTO `mqu_area` VALUES ('1046', '1041', '郊区', '0');
INSERT INTO `mqu_area` VALUES ('1047', '1041', '杞县', '0');
INSERT INTO `mqu_area` VALUES ('1048', '1041', '通许县', '0');
INSERT INTO `mqu_area` VALUES ('1049', '1041', '尉氏县', '0');
INSERT INTO `mqu_area` VALUES ('1050', '1041', '开封县', '0');
INSERT INTO `mqu_area` VALUES ('1051', '1041', '兰考县', '0');
INSERT INTO `mqu_area` VALUES ('1052', '998', '洛阳市', '0');
INSERT INTO `mqu_area` VALUES ('1053', '1052', '老城区', '0');
INSERT INTO `mqu_area` VALUES ('1054', '1052', '西工区', '0');
INSERT INTO `mqu_area` VALUES ('1055', '1052', '廛河回族区', '0');
INSERT INTO `mqu_area` VALUES ('1056', '1052', '涧西区', '0');
INSERT INTO `mqu_area` VALUES ('1057', '1052', '吉利区', '0');
INSERT INTO `mqu_area` VALUES ('1058', '1052', '洛龙区', '0');
INSERT INTO `mqu_area` VALUES ('1059', '1052', '孟津县', '0');
INSERT INTO `mqu_area` VALUES ('1060', '1052', '新安县', '0');
INSERT INTO `mqu_area` VALUES ('1061', '1052', '栾川县', '0');
INSERT INTO `mqu_area` VALUES ('1062', '1052', '嵩县', '0');
INSERT INTO `mqu_area` VALUES ('1063', '1052', '汝阳县', '0');
INSERT INTO `mqu_area` VALUES ('1064', '1052', '宜阳县', '0');
INSERT INTO `mqu_area` VALUES ('1065', '1052', '洛宁县', '0');
INSERT INTO `mqu_area` VALUES ('1066', '1052', '伊川县', '0');
INSERT INTO `mqu_area` VALUES ('1067', '1052', '偃师市', '0');
INSERT INTO `mqu_area` VALUES ('1068', '998', '漯河市', '0');
INSERT INTO `mqu_area` VALUES ('1069', '1068', '源汇区', '0');
INSERT INTO `mqu_area` VALUES ('1070', '1068', '郾城区', '0');
INSERT INTO `mqu_area` VALUES ('1071', '1068', '召陵区', '0');
INSERT INTO `mqu_area` VALUES ('1072', '1068', '舞阳县', '0');
INSERT INTO `mqu_area` VALUES ('1073', '1068', '临颍县', '0');
INSERT INTO `mqu_area` VALUES ('1074', '998', '南阳市', '0');
INSERT INTO `mqu_area` VALUES ('1075', '1074', '宛城区', '0');
INSERT INTO `mqu_area` VALUES ('1076', '1074', '卧龙区', '0');
INSERT INTO `mqu_area` VALUES ('1077', '1074', '南召县', '0');
INSERT INTO `mqu_area` VALUES ('1078', '1074', '方城县', '0');
INSERT INTO `mqu_area` VALUES ('1079', '1074', '西峡县', '0');
INSERT INTO `mqu_area` VALUES ('1080', '1074', '镇平县', '0');
INSERT INTO `mqu_area` VALUES ('1081', '1074', '内乡县', '0');
INSERT INTO `mqu_area` VALUES ('1082', '1074', '淅川县', '0');
INSERT INTO `mqu_area` VALUES ('1083', '1074', '社旗县', '0');
INSERT INTO `mqu_area` VALUES ('1084', '1074', '唐河县', '0');
INSERT INTO `mqu_area` VALUES ('1085', '1074', '新野县', '0');
INSERT INTO `mqu_area` VALUES ('1086', '1074', '桐柏县', '0');
INSERT INTO `mqu_area` VALUES ('1087', '1074', '邓州市', '0');
INSERT INTO `mqu_area` VALUES ('1088', '998', '平顶山市', '0');
INSERT INTO `mqu_area` VALUES ('1089', '1088', '新华区', '0');
INSERT INTO `mqu_area` VALUES ('1090', '1088', '卫东区', '0');
INSERT INTO `mqu_area` VALUES ('1091', '1088', '石龙区', '0');
INSERT INTO `mqu_area` VALUES ('1092', '1088', '湛河区', '0');
INSERT INTO `mqu_area` VALUES ('1093', '1088', '宝丰县', '0');
INSERT INTO `mqu_area` VALUES ('1094', '1088', '叶县', '0');
INSERT INTO `mqu_area` VALUES ('1095', '1088', '鲁山县', '0');
INSERT INTO `mqu_area` VALUES ('1096', '1088', '郏县', '0');
INSERT INTO `mqu_area` VALUES ('1097', '1088', '舞钢市', '0');
INSERT INTO `mqu_area` VALUES ('1098', '1088', '汝州市', '0');
INSERT INTO `mqu_area` VALUES ('1099', '998', '濮阳市', '0');
INSERT INTO `mqu_area` VALUES ('1100', '1099', '华龙区', '0');
INSERT INTO `mqu_area` VALUES ('1101', '1099', '清丰县', '0');
INSERT INTO `mqu_area` VALUES ('1102', '1099', '南乐县', '0');
INSERT INTO `mqu_area` VALUES ('1103', '1099', '范县', '0');
INSERT INTO `mqu_area` VALUES ('1104', '1099', '台前县', '0');
INSERT INTO `mqu_area` VALUES ('1105', '1099', '濮阳县', '0');
INSERT INTO `mqu_area` VALUES ('1106', '998', '三门峡市', '0');
INSERT INTO `mqu_area` VALUES ('1107', '1106', '湖滨区', '0');
INSERT INTO `mqu_area` VALUES ('1108', '1106', '渑池县', '0');
INSERT INTO `mqu_area` VALUES ('1109', '1106', '陕县', '0');
INSERT INTO `mqu_area` VALUES ('1110', '1106', '卢氏县', '0');
INSERT INTO `mqu_area` VALUES ('1111', '1106', '义马市', '0');
INSERT INTO `mqu_area` VALUES ('1112', '1106', '灵宝市', '0');
INSERT INTO `mqu_area` VALUES ('1113', '998', '商丘市', '0');
INSERT INTO `mqu_area` VALUES ('1114', '1113', '梁园区', '0');
INSERT INTO `mqu_area` VALUES ('1115', '1113', '睢阳区', '0');
INSERT INTO `mqu_area` VALUES ('1116', '1113', '民权县', '0');
INSERT INTO `mqu_area` VALUES ('1117', '1113', '睢县', '0');
INSERT INTO `mqu_area` VALUES ('1118', '1113', '宁陵县', '0');
INSERT INTO `mqu_area` VALUES ('1119', '1113', '柘城县', '0');
INSERT INTO `mqu_area` VALUES ('1120', '1113', '虞城县', '0');
INSERT INTO `mqu_area` VALUES ('1121', '1113', '夏邑县', '0');
INSERT INTO `mqu_area` VALUES ('1122', '1113', '永城市', '0');
INSERT INTO `mqu_area` VALUES ('1123', '998', '新乡市', '0');
INSERT INTO `mqu_area` VALUES ('1124', '1123', '红旗区', '0');
INSERT INTO `mqu_area` VALUES ('1125', '1123', '卫滨区', '0');
INSERT INTO `mqu_area` VALUES ('1126', '1123', '凤泉区', '0');
INSERT INTO `mqu_area` VALUES ('1127', '1123', '牧野区', '0');
INSERT INTO `mqu_area` VALUES ('1128', '1123', '新乡县', '0');
INSERT INTO `mqu_area` VALUES ('1129', '1123', '获嘉县', '0');
INSERT INTO `mqu_area` VALUES ('1130', '1123', '原阳县', '0');
INSERT INTO `mqu_area` VALUES ('1131', '1123', '延津县', '0');
INSERT INTO `mqu_area` VALUES ('1132', '1123', '封丘县', '0');
INSERT INTO `mqu_area` VALUES ('1133', '1123', '长垣县', '0');
INSERT INTO `mqu_area` VALUES ('1134', '1123', '卫辉市', '0');
INSERT INTO `mqu_area` VALUES ('1135', '1123', '辉县市', '0');
INSERT INTO `mqu_area` VALUES ('1136', '998', '信阳市', '0');
INSERT INTO `mqu_area` VALUES ('1137', '1136', '师河区', '0');
INSERT INTO `mqu_area` VALUES ('1138', '1136', '平桥区', '0');
INSERT INTO `mqu_area` VALUES ('1139', '1136', '罗山县', '0');
INSERT INTO `mqu_area` VALUES ('1140', '1136', '光山县', '0');
INSERT INTO `mqu_area` VALUES ('1141', '1136', '新县', '0');
INSERT INTO `mqu_area` VALUES ('1142', '1136', '商城县', '0');
INSERT INTO `mqu_area` VALUES ('1143', '1136', '固始县', '0');
INSERT INTO `mqu_area` VALUES ('1144', '1136', '潢川县', '0');
INSERT INTO `mqu_area` VALUES ('1145', '1136', '淮滨县', '0');
INSERT INTO `mqu_area` VALUES ('1146', '1136', '息县', '0');
INSERT INTO `mqu_area` VALUES ('1147', '998', '许昌市', '0');
INSERT INTO `mqu_area` VALUES ('1148', '1147', '魏都区', '0');
INSERT INTO `mqu_area` VALUES ('1149', '1147', '许昌县', '0');
INSERT INTO `mqu_area` VALUES ('1150', '1147', '鄢陵县', '0');
INSERT INTO `mqu_area` VALUES ('1151', '1147', '襄城县', '0');
INSERT INTO `mqu_area` VALUES ('1152', '1147', '禹州市', '0');
INSERT INTO `mqu_area` VALUES ('1153', '1147', '长葛市', '0');
INSERT INTO `mqu_area` VALUES ('1154', '998', '周口市', '0');
INSERT INTO `mqu_area` VALUES ('1155', '1154', '川汇区', '0');
INSERT INTO `mqu_area` VALUES ('1156', '1154', '扶沟县', '0');
INSERT INTO `mqu_area` VALUES ('1157', '1154', '西华县', '0');
INSERT INTO `mqu_area` VALUES ('1158', '1154', '商水县', '0');
INSERT INTO `mqu_area` VALUES ('1159', '1154', '沈丘县', '0');
INSERT INTO `mqu_area` VALUES ('1160', '1154', '郸城县', '0');
INSERT INTO `mqu_area` VALUES ('1161', '1154', '淮阳县', '0');
INSERT INTO `mqu_area` VALUES ('1162', '1154', '太康县', '0');
INSERT INTO `mqu_area` VALUES ('1163', '1154', '鹿邑县', '0');
INSERT INTO `mqu_area` VALUES ('1164', '1154', '项城市', '0');
INSERT INTO `mqu_area` VALUES ('1165', '998', '驻马店市', '0');
INSERT INTO `mqu_area` VALUES ('1166', '1165', '驿城区', '0');
INSERT INTO `mqu_area` VALUES ('1167', '1165', '西平县', '0');
INSERT INTO `mqu_area` VALUES ('1168', '1165', '上蔡县', '0');
INSERT INTO `mqu_area` VALUES ('1169', '1165', '平舆县', '0');
INSERT INTO `mqu_area` VALUES ('1170', '1165', '正阳县', '0');
INSERT INTO `mqu_area` VALUES ('1171', '1165', '确山县', '0');
INSERT INTO `mqu_area` VALUES ('1172', '1165', '泌阳县', '0');
INSERT INTO `mqu_area` VALUES ('1173', '1165', '汝南县', '0');
INSERT INTO `mqu_area` VALUES ('1174', '1165', '遂平县', '0');
INSERT INTO `mqu_area` VALUES ('1175', '1165', '新蔡县', '0');
INSERT INTO `mqu_area` VALUES ('1176', '0', '黑龙江', '0');
INSERT INTO `mqu_area` VALUES ('1177', '1176', '哈尔滨市', '0');
INSERT INTO `mqu_area` VALUES ('1178', '1177', '道里区', '0');
INSERT INTO `mqu_area` VALUES ('1179', '1177', '南岗区', '0');
INSERT INTO `mqu_area` VALUES ('1180', '1177', '道外区', '0');
INSERT INTO `mqu_area` VALUES ('1181', '1177', '香坊区', '0');
INSERT INTO `mqu_area` VALUES ('1182', '1177', '动力区', '0');
INSERT INTO `mqu_area` VALUES ('1183', '1177', '平房区', '0');
INSERT INTO `mqu_area` VALUES ('1184', '1177', '松北区', '0');
INSERT INTO `mqu_area` VALUES ('1185', '1177', '呼兰区', '0');
INSERT INTO `mqu_area` VALUES ('1186', '1177', '依兰县', '0');
INSERT INTO `mqu_area` VALUES ('1187', '1177', '方正县', '0');
INSERT INTO `mqu_area` VALUES ('1188', '1177', '宾县', '0');
INSERT INTO `mqu_area` VALUES ('1189', '1177', '巴彦县', '0');
INSERT INTO `mqu_area` VALUES ('1190', '1177', '木兰县', '0');
INSERT INTO `mqu_area` VALUES ('1191', '1177', '通河县', '0');
INSERT INTO `mqu_area` VALUES ('1192', '1177', '延寿县', '0');
INSERT INTO `mqu_area` VALUES ('1193', '1177', '阿城市', '0');
INSERT INTO `mqu_area` VALUES ('1194', '1177', '双城市', '0');
INSERT INTO `mqu_area` VALUES ('1195', '1177', '尚志市', '0');
INSERT INTO `mqu_area` VALUES ('1196', '1177', '五常市', '0');
INSERT INTO `mqu_area` VALUES ('1197', '1176', '大庆市', '0');
INSERT INTO `mqu_area` VALUES ('1198', '1197', '萨尔图区', '0');
INSERT INTO `mqu_area` VALUES ('1199', '1197', '龙凤区', '0');
INSERT INTO `mqu_area` VALUES ('1200', '1197', '让胡路区', '0');
INSERT INTO `mqu_area` VALUES ('1201', '1197', '红岗区', '0');
INSERT INTO `mqu_area` VALUES ('1202', '1197', '大同区', '0');
INSERT INTO `mqu_area` VALUES ('1203', '1197', '肇州县', '0');
INSERT INTO `mqu_area` VALUES ('1204', '1197', '肇源县', '0');
INSERT INTO `mqu_area` VALUES ('1205', '1197', '林甸县', '0');
INSERT INTO `mqu_area` VALUES ('1206', '1197', '杜尔伯特蒙古族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1207', '1176', '大兴安岭地区', '0');
INSERT INTO `mqu_area` VALUES ('1208', '1207', '呼玛县', '0');
INSERT INTO `mqu_area` VALUES ('1209', '1207', '塔河县', '0');
INSERT INTO `mqu_area` VALUES ('1210', '1207', '漠河县', '0');
INSERT INTO `mqu_area` VALUES ('1211', '1176', '鹤岗市', '0');
INSERT INTO `mqu_area` VALUES ('1212', '1211', '向阳区', '0');
INSERT INTO `mqu_area` VALUES ('1213', '1211', '工农区', '0');
INSERT INTO `mqu_area` VALUES ('1214', '1211', '南山区', '0');
INSERT INTO `mqu_area` VALUES ('1215', '1211', '兴安区', '0');
INSERT INTO `mqu_area` VALUES ('1216', '1211', '东山区', '0');
INSERT INTO `mqu_area` VALUES ('1217', '1211', '兴山区', '0');
INSERT INTO `mqu_area` VALUES ('1218', '1211', '萝北县', '0');
INSERT INTO `mqu_area` VALUES ('1219', '1211', '绥滨县', '0');
INSERT INTO `mqu_area` VALUES ('1220', '1176', '黑河市', '0');
INSERT INTO `mqu_area` VALUES ('1221', '1220', '爱辉区', '0');
INSERT INTO `mqu_area` VALUES ('1222', '1220', '嫩江县', '0');
INSERT INTO `mqu_area` VALUES ('1223', '1220', '逊克县', '0');
INSERT INTO `mqu_area` VALUES ('1224', '1220', '孙吴县', '0');
INSERT INTO `mqu_area` VALUES ('1225', '1220', '北安市', '0');
INSERT INTO `mqu_area` VALUES ('1226', '1220', '五大连池市', '0');
INSERT INTO `mqu_area` VALUES ('1227', '1176', '鸡西市', '0');
INSERT INTO `mqu_area` VALUES ('1228', '1227', '鸡冠区', '0');
INSERT INTO `mqu_area` VALUES ('1229', '1227', '恒山区', '0');
INSERT INTO `mqu_area` VALUES ('1230', '1227', '滴道区', '0');
INSERT INTO `mqu_area` VALUES ('1231', '1227', '梨树区', '0');
INSERT INTO `mqu_area` VALUES ('1232', '1227', '城子河区', '0');
INSERT INTO `mqu_area` VALUES ('1233', '1227', '麻山区', '0');
INSERT INTO `mqu_area` VALUES ('1234', '1227', '鸡东县', '0');
INSERT INTO `mqu_area` VALUES ('1235', '1227', '虎林市', '0');
INSERT INTO `mqu_area` VALUES ('1236', '1227', '密山市', '0');
INSERT INTO `mqu_area` VALUES ('1237', '1176', '佳木斯市', '0');
INSERT INTO `mqu_area` VALUES ('1238', '1237', '永红区', '0');
INSERT INTO `mqu_area` VALUES ('1239', '1237', '向阳区', '0');
INSERT INTO `mqu_area` VALUES ('1240', '1237', '前进区', '0');
INSERT INTO `mqu_area` VALUES ('1241', '1237', '东风区', '0');
INSERT INTO `mqu_area` VALUES ('1242', '1237', '郊区', '0');
INSERT INTO `mqu_area` VALUES ('1243', '1237', '桦南县', '0');
INSERT INTO `mqu_area` VALUES ('1244', '1237', '桦川县', '0');
INSERT INTO `mqu_area` VALUES ('1245', '1237', '汤原县', '0');
INSERT INTO `mqu_area` VALUES ('1246', '1237', '抚远县', '0');
INSERT INTO `mqu_area` VALUES ('1247', '1237', '同江市', '0');
INSERT INTO `mqu_area` VALUES ('1248', '1237', '富锦市', '0');
INSERT INTO `mqu_area` VALUES ('1249', '1176', '牡丹江市', '0');
INSERT INTO `mqu_area` VALUES ('1250', '1249', '东安区', '0');
INSERT INTO `mqu_area` VALUES ('1251', '1249', '阳明区', '0');
INSERT INTO `mqu_area` VALUES ('1252', '1249', '爱民区', '0');
INSERT INTO `mqu_area` VALUES ('1253', '1249', '西安区', '0');
INSERT INTO `mqu_area` VALUES ('1254', '1249', '东宁县', '0');
INSERT INTO `mqu_area` VALUES ('1255', '1249', '林口县', '0');
INSERT INTO `mqu_area` VALUES ('1256', '1249', '绥芬河市', '0');
INSERT INTO `mqu_area` VALUES ('1257', '1249', '海林市', '0');
INSERT INTO `mqu_area` VALUES ('1258', '1249', '宁安市', '0');
INSERT INTO `mqu_area` VALUES ('1259', '1249', '穆棱市', '0');
INSERT INTO `mqu_area` VALUES ('1260', '1176', '七台河市', '0');
INSERT INTO `mqu_area` VALUES ('1261', '1260', '新兴区', '0');
INSERT INTO `mqu_area` VALUES ('1262', '1260', '桃山区', '0');
INSERT INTO `mqu_area` VALUES ('1263', '1260', '茄子河区', '0');
INSERT INTO `mqu_area` VALUES ('1264', '1260', '勃利县', '0');
INSERT INTO `mqu_area` VALUES ('1265', '1176', '齐齐哈尔市', '0');
INSERT INTO `mqu_area` VALUES ('1266', '1265', '龙沙区', '0');
INSERT INTO `mqu_area` VALUES ('1267', '1265', '建华区', '0');
INSERT INTO `mqu_area` VALUES ('1268', '1265', '铁锋区', '0');
INSERT INTO `mqu_area` VALUES ('1269', '1265', '昂昂溪区', '0');
INSERT INTO `mqu_area` VALUES ('1270', '1265', '富拉尔基区', '0');
INSERT INTO `mqu_area` VALUES ('1271', '1265', '碾子山区', '0');
INSERT INTO `mqu_area` VALUES ('1272', '1265', '梅里斯达斡尔族区', '0');
INSERT INTO `mqu_area` VALUES ('1273', '1265', '龙江县', '0');
INSERT INTO `mqu_area` VALUES ('1274', '1265', '依安县', '0');
INSERT INTO `mqu_area` VALUES ('1275', '1265', '泰来县', '0');
INSERT INTO `mqu_area` VALUES ('1276', '1265', '甘南县', '0');
INSERT INTO `mqu_area` VALUES ('1277', '1265', '富裕县', '0');
INSERT INTO `mqu_area` VALUES ('1278', '1265', '克山县', '0');
INSERT INTO `mqu_area` VALUES ('1279', '1265', '克东县', '0');
INSERT INTO `mqu_area` VALUES ('1280', '1265', '拜泉县', '0');
INSERT INTO `mqu_area` VALUES ('1281', '1265', '讷河市', '0');
INSERT INTO `mqu_area` VALUES ('1282', '1176', '双鸭山市', '0');
INSERT INTO `mqu_area` VALUES ('1283', '1282', '尖山区', '0');
INSERT INTO `mqu_area` VALUES ('1284', '1282', '岭东区', '0');
INSERT INTO `mqu_area` VALUES ('1285', '1282', '四方台区', '0');
INSERT INTO `mqu_area` VALUES ('1286', '1282', '宝山区', '0');
INSERT INTO `mqu_area` VALUES ('1287', '1282', '集贤县', '0');
INSERT INTO `mqu_area` VALUES ('1288', '1282', '友谊县', '0');
INSERT INTO `mqu_area` VALUES ('1289', '1282', '宝清县', '0');
INSERT INTO `mqu_area` VALUES ('1290', '1282', '饶河县', '0');
INSERT INTO `mqu_area` VALUES ('1291', '1176', '绥化市', '0');
INSERT INTO `mqu_area` VALUES ('1292', '1291', '北林区', '0');
INSERT INTO `mqu_area` VALUES ('1293', '1291', '望奎县', '0');
INSERT INTO `mqu_area` VALUES ('1294', '1291', '兰西县', '0');
INSERT INTO `mqu_area` VALUES ('1295', '1291', '青冈县', '0');
INSERT INTO `mqu_area` VALUES ('1296', '1291', '庆安县', '0');
INSERT INTO `mqu_area` VALUES ('1297', '1291', '明水县', '0');
INSERT INTO `mqu_area` VALUES ('1298', '1291', '绥棱县', '0');
INSERT INTO `mqu_area` VALUES ('1299', '1291', '安达市', '0');
INSERT INTO `mqu_area` VALUES ('1300', '1291', '肇东市', '0');
INSERT INTO `mqu_area` VALUES ('1301', '1291', '海伦市', '0');
INSERT INTO `mqu_area` VALUES ('1302', '1176', '伊春市', '0');
INSERT INTO `mqu_area` VALUES ('1303', '1302', '伊春区', '0');
INSERT INTO `mqu_area` VALUES ('1304', '1302', '南岔区', '0');
INSERT INTO `mqu_area` VALUES ('1305', '1302', '友好区', '0');
INSERT INTO `mqu_area` VALUES ('1306', '1302', '西林区', '0');
INSERT INTO `mqu_area` VALUES ('1307', '1302', '翠峦区', '0');
INSERT INTO `mqu_area` VALUES ('1308', '1302', '新青区', '0');
INSERT INTO `mqu_area` VALUES ('1309', '1302', '美溪区', '0');
INSERT INTO `mqu_area` VALUES ('1310', '1302', '金山屯区', '0');
INSERT INTO `mqu_area` VALUES ('1311', '1302', '五营区', '0');
INSERT INTO `mqu_area` VALUES ('1312', '1302', '乌马河区', '0');
INSERT INTO `mqu_area` VALUES ('1313', '1302', '汤旺河区', '0');
INSERT INTO `mqu_area` VALUES ('1314', '1302', '带岭区', '0');
INSERT INTO `mqu_area` VALUES ('1315', '1302', '乌伊岭区', '0');
INSERT INTO `mqu_area` VALUES ('1316', '1302', '红星区', '0');
INSERT INTO `mqu_area` VALUES ('1317', '1302', '上甘岭区', '0');
INSERT INTO `mqu_area` VALUES ('1318', '1302', '嘉荫县', '0');
INSERT INTO `mqu_area` VALUES ('1319', '1302', '铁力市', '0');
INSERT INTO `mqu_area` VALUES ('1320', '0', '湖北', '0');
INSERT INTO `mqu_area` VALUES ('1321', '1320', '武汉市', '0');
INSERT INTO `mqu_area` VALUES ('1322', '1321', '江岸区', '0');
INSERT INTO `mqu_area` VALUES ('1323', '1321', '江汉区', '0');
INSERT INTO `mqu_area` VALUES ('1324', '1321', '乔口区', '0');
INSERT INTO `mqu_area` VALUES ('1325', '1321', '汉阳区', '0');
INSERT INTO `mqu_area` VALUES ('1326', '1321', '武昌区', '0');
INSERT INTO `mqu_area` VALUES ('1327', '1321', '青山区', '0');
INSERT INTO `mqu_area` VALUES ('1328', '1321', '洪山区', '0');
INSERT INTO `mqu_area` VALUES ('1329', '1321', '东西湖区', '0');
INSERT INTO `mqu_area` VALUES ('1330', '1321', '汉南区', '0');
INSERT INTO `mqu_area` VALUES ('1331', '1321', '蔡甸区', '0');
INSERT INTO `mqu_area` VALUES ('1332', '1321', '江夏区', '0');
INSERT INTO `mqu_area` VALUES ('1333', '1321', '黄陂区', '0');
INSERT INTO `mqu_area` VALUES ('1334', '1321', '新洲区', '0');
INSERT INTO `mqu_area` VALUES ('1335', '1320', '鄂州市', '0');
INSERT INTO `mqu_area` VALUES ('1336', '1335', '梁子湖区', '0');
INSERT INTO `mqu_area` VALUES ('1337', '1335', '华容区', '0');
INSERT INTO `mqu_area` VALUES ('1338', '1335', '鄂城区', '0');
INSERT INTO `mqu_area` VALUES ('1339', '1320', '恩施土家族苗族自治州', '0');
INSERT INTO `mqu_area` VALUES ('1340', '1339', '恩施市', '0');
INSERT INTO `mqu_area` VALUES ('1341', '1339', '利川市', '0');
INSERT INTO `mqu_area` VALUES ('1342', '1339', '建始县', '0');
INSERT INTO `mqu_area` VALUES ('1343', '1339', '巴东县', '0');
INSERT INTO `mqu_area` VALUES ('1344', '1339', '宣恩县', '0');
INSERT INTO `mqu_area` VALUES ('1345', '1339', '咸丰县', '0');
INSERT INTO `mqu_area` VALUES ('1346', '1339', '来凤县', '0');
INSERT INTO `mqu_area` VALUES ('1347', '1339', '鹤峰县', '0');
INSERT INTO `mqu_area` VALUES ('1348', '1320', '黄冈市', '0');
INSERT INTO `mqu_area` VALUES ('1349', '1348', '黄州区', '0');
INSERT INTO `mqu_area` VALUES ('1350', '1348', '团风县', '0');
INSERT INTO `mqu_area` VALUES ('1351', '1348', '红安县', '0');
INSERT INTO `mqu_area` VALUES ('1352', '1348', '罗田县', '0');
INSERT INTO `mqu_area` VALUES ('1353', '1348', '英山县', '0');
INSERT INTO `mqu_area` VALUES ('1354', '1348', '浠水县', '0');
INSERT INTO `mqu_area` VALUES ('1355', '1348', '蕲春县', '0');
INSERT INTO `mqu_area` VALUES ('1356', '1348', '黄梅县', '0');
INSERT INTO `mqu_area` VALUES ('1357', '1348', '麻城市', '0');
INSERT INTO `mqu_area` VALUES ('1358', '1348', '武穴市', '0');
INSERT INTO `mqu_area` VALUES ('1359', '1320', '黄石市', '0');
INSERT INTO `mqu_area` VALUES ('1360', '1359', '黄石港区', '0');
INSERT INTO `mqu_area` VALUES ('1361', '1359', '西塞山区', '0');
INSERT INTO `mqu_area` VALUES ('1362', '1359', '下陆区', '0');
INSERT INTO `mqu_area` VALUES ('1363', '1359', '铁山区', '0');
INSERT INTO `mqu_area` VALUES ('1364', '1359', '阳新县', '0');
INSERT INTO `mqu_area` VALUES ('1365', '1359', '大冶市', '0');
INSERT INTO `mqu_area` VALUES ('1366', '1320', '荆门市', '0');
INSERT INTO `mqu_area` VALUES ('1367', '1366', '东宝区', '0');
INSERT INTO `mqu_area` VALUES ('1368', '1366', '掇刀区', '0');
INSERT INTO `mqu_area` VALUES ('1369', '1366', '京山县', '0');
INSERT INTO `mqu_area` VALUES ('1370', '1366', '沙洋县', '0');
INSERT INTO `mqu_area` VALUES ('1371', '1366', '钟祥市', '0');
INSERT INTO `mqu_area` VALUES ('1372', '1320', '荆州市', '0');
INSERT INTO `mqu_area` VALUES ('1373', '1372', '沙市区', '0');
INSERT INTO `mqu_area` VALUES ('1374', '1372', '荆州区', '0');
INSERT INTO `mqu_area` VALUES ('1375', '1372', '公安县', '0');
INSERT INTO `mqu_area` VALUES ('1376', '1372', '监利县', '0');
INSERT INTO `mqu_area` VALUES ('1377', '1372', '江陵县', '0');
INSERT INTO `mqu_area` VALUES ('1378', '1372', '石首市', '0');
INSERT INTO `mqu_area` VALUES ('1379', '1372', '洪湖市', '0');
INSERT INTO `mqu_area` VALUES ('1380', '1372', '松滋市', '0');
INSERT INTO `mqu_area` VALUES ('1381', '1320', '潜江市', '0');
INSERT INTO `mqu_area` VALUES ('1382', '1320', '神农架林区', '0');
INSERT INTO `mqu_area` VALUES ('1383', '1320', '十堰市', '0');
INSERT INTO `mqu_area` VALUES ('1384', '1383', '茅箭区', '0');
INSERT INTO `mqu_area` VALUES ('1385', '1383', '张湾区', '0');
INSERT INTO `mqu_area` VALUES ('1386', '1383', '郧县', '0');
INSERT INTO `mqu_area` VALUES ('1387', '1383', '郧西县', '0');
INSERT INTO `mqu_area` VALUES ('1388', '1383', '竹山县', '0');
INSERT INTO `mqu_area` VALUES ('1389', '1383', '竹溪县', '0');
INSERT INTO `mqu_area` VALUES ('1390', '1383', '房县', '0');
INSERT INTO `mqu_area` VALUES ('1391', '1383', '丹江口市', '0');
INSERT INTO `mqu_area` VALUES ('1392', '1320', '随州市', '0');
INSERT INTO `mqu_area` VALUES ('1393', '1392', '曾都区', '0');
INSERT INTO `mqu_area` VALUES ('1394', '1392', '广水市', '0');
INSERT INTO `mqu_area` VALUES ('1395', '1320', '天门市', '0');
INSERT INTO `mqu_area` VALUES ('1396', '1320', '仙桃市', '0');
INSERT INTO `mqu_area` VALUES ('1397', '1320', '咸宁市', '0');
INSERT INTO `mqu_area` VALUES ('1398', '1397', '咸安区', '0');
INSERT INTO `mqu_area` VALUES ('1399', '1397', '嘉鱼县', '0');
INSERT INTO `mqu_area` VALUES ('1400', '1397', '通城县', '0');
INSERT INTO `mqu_area` VALUES ('1401', '1397', '崇阳县', '0');
INSERT INTO `mqu_area` VALUES ('1402', '1397', '通山县', '0');
INSERT INTO `mqu_area` VALUES ('1403', '1397', '赤壁市', '0');
INSERT INTO `mqu_area` VALUES ('1404', '1320', '襄樊市', '0');
INSERT INTO `mqu_area` VALUES ('1405', '1404', '襄城区', '0');
INSERT INTO `mqu_area` VALUES ('1406', '1404', '樊城区', '0');
INSERT INTO `mqu_area` VALUES ('1407', '1404', '襄阳区', '0');
INSERT INTO `mqu_area` VALUES ('1408', '1404', '南漳县', '0');
INSERT INTO `mqu_area` VALUES ('1409', '1404', '谷城县', '0');
INSERT INTO `mqu_area` VALUES ('1410', '1404', '保康县', '0');
INSERT INTO `mqu_area` VALUES ('1411', '1404', '老河口市', '0');
INSERT INTO `mqu_area` VALUES ('1412', '1404', '枣阳市', '0');
INSERT INTO `mqu_area` VALUES ('1413', '1404', '宜城市', '0');
INSERT INTO `mqu_area` VALUES ('1414', '1320', '孝感市', '0');
INSERT INTO `mqu_area` VALUES ('1415', '1414', '孝南区', '0');
INSERT INTO `mqu_area` VALUES ('1416', '1414', '孝昌县', '0');
INSERT INTO `mqu_area` VALUES ('1417', '1414', '大悟县', '0');
INSERT INTO `mqu_area` VALUES ('1418', '1414', '云梦县', '0');
INSERT INTO `mqu_area` VALUES ('1419', '1414', '应城市', '0');
INSERT INTO `mqu_area` VALUES ('1420', '1414', '安陆市', '0');
INSERT INTO `mqu_area` VALUES ('1421', '1414', '汉川市', '0');
INSERT INTO `mqu_area` VALUES ('1422', '1320', '宜昌市', '0');
INSERT INTO `mqu_area` VALUES ('1423', '1422', '西陵区', '0');
INSERT INTO `mqu_area` VALUES ('1424', '1422', '伍家岗区', '0');
INSERT INTO `mqu_area` VALUES ('1425', '1422', '点军区', '0');
INSERT INTO `mqu_area` VALUES ('1426', '1422', '猇亭区', '0');
INSERT INTO `mqu_area` VALUES ('1427', '1422', '夷陵区', '0');
INSERT INTO `mqu_area` VALUES ('1428', '1422', '远安县', '0');
INSERT INTO `mqu_area` VALUES ('1429', '1422', '兴山县', '0');
INSERT INTO `mqu_area` VALUES ('1430', '1422', '秭归县', '0');
INSERT INTO `mqu_area` VALUES ('1431', '1422', '长阳土家族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1432', '1422', '五峰土家族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1433', '1422', '宜都市', '0');
INSERT INTO `mqu_area` VALUES ('1434', '1422', '当阳市', '0');
INSERT INTO `mqu_area` VALUES ('1435', '1422', '枝江市', '0');
INSERT INTO `mqu_area` VALUES ('1436', '0', '湖南', '0');
INSERT INTO `mqu_area` VALUES ('1437', '1436', '长沙市', '0');
INSERT INTO `mqu_area` VALUES ('1438', '1437', '芙蓉区', '0');
INSERT INTO `mqu_area` VALUES ('1439', '1437', '天心区', '0');
INSERT INTO `mqu_area` VALUES ('1440', '1437', '岳麓区', '0');
INSERT INTO `mqu_area` VALUES ('1441', '1437', '开福区', '0');
INSERT INTO `mqu_area` VALUES ('1442', '1437', '雨花区', '0');
INSERT INTO `mqu_area` VALUES ('1443', '1437', '长沙县', '0');
INSERT INTO `mqu_area` VALUES ('1444', '1437', '望城县', '0');
INSERT INTO `mqu_area` VALUES ('1445', '1437', '宁乡县', '0');
INSERT INTO `mqu_area` VALUES ('1446', '1437', '浏阳市', '0');
INSERT INTO `mqu_area` VALUES ('1447', '1436', '常德市', '0');
INSERT INTO `mqu_area` VALUES ('1448', '1447', '武陵区', '0');
INSERT INTO `mqu_area` VALUES ('1449', '1447', '鼎城区', '0');
INSERT INTO `mqu_area` VALUES ('1450', '1447', '安乡县', '0');
INSERT INTO `mqu_area` VALUES ('1451', '1447', '汉寿县', '0');
INSERT INTO `mqu_area` VALUES ('1452', '1447', '澧县', '0');
INSERT INTO `mqu_area` VALUES ('1453', '1447', '临澧县', '0');
INSERT INTO `mqu_area` VALUES ('1454', '1447', '桃源县', '0');
INSERT INTO `mqu_area` VALUES ('1455', '1447', '石门县', '0');
INSERT INTO `mqu_area` VALUES ('1456', '1447', '津市市', '0');
INSERT INTO `mqu_area` VALUES ('1457', '1436', '郴州市', '0');
INSERT INTO `mqu_area` VALUES ('1458', '1457', '北湖区', '0');
INSERT INTO `mqu_area` VALUES ('1459', '1457', '苏仙区', '0');
INSERT INTO `mqu_area` VALUES ('1460', '1457', '桂阳县', '0');
INSERT INTO `mqu_area` VALUES ('1461', '1457', '宜章县', '0');
INSERT INTO `mqu_area` VALUES ('1462', '1457', '永兴县', '0');
INSERT INTO `mqu_area` VALUES ('1463', '1457', '嘉禾县', '0');
INSERT INTO `mqu_area` VALUES ('1464', '1457', '临武县', '0');
INSERT INTO `mqu_area` VALUES ('1465', '1457', '汝城县', '0');
INSERT INTO `mqu_area` VALUES ('1466', '1457', '桂东县', '0');
INSERT INTO `mqu_area` VALUES ('1467', '1457', '安仁县', '0');
INSERT INTO `mqu_area` VALUES ('1468', '1457', '资兴市', '0');
INSERT INTO `mqu_area` VALUES ('1469', '1436', '衡阳市', '0');
INSERT INTO `mqu_area` VALUES ('1470', '1469', '珠晖区', '0');
INSERT INTO `mqu_area` VALUES ('1471', '1469', '雁峰区', '0');
INSERT INTO `mqu_area` VALUES ('1472', '1469', '石鼓区', '0');
INSERT INTO `mqu_area` VALUES ('1473', '1469', '蒸湘区', '0');
INSERT INTO `mqu_area` VALUES ('1474', '1469', '南岳区', '0');
INSERT INTO `mqu_area` VALUES ('1475', '1469', '衡阳县', '0');
INSERT INTO `mqu_area` VALUES ('1476', '1469', '衡南县', '0');
INSERT INTO `mqu_area` VALUES ('1477', '1469', '衡山县', '0');
INSERT INTO `mqu_area` VALUES ('1478', '1469', '衡东县', '0');
INSERT INTO `mqu_area` VALUES ('1479', '1469', '祁东县', '0');
INSERT INTO `mqu_area` VALUES ('1480', '1469', '耒阳市', '0');
INSERT INTO `mqu_area` VALUES ('1481', '1469', '常宁市', '0');
INSERT INTO `mqu_area` VALUES ('1482', '1436', '怀化市', '0');
INSERT INTO `mqu_area` VALUES ('1483', '1482', '鹤城区', '0');
INSERT INTO `mqu_area` VALUES ('1484', '1482', '中方县', '0');
INSERT INTO `mqu_area` VALUES ('1485', '1482', '沅陵县', '0');
INSERT INTO `mqu_area` VALUES ('1486', '1482', '辰溪县', '0');
INSERT INTO `mqu_area` VALUES ('1487', '1482', '溆浦县', '0');
INSERT INTO `mqu_area` VALUES ('1488', '1482', '会同县', '0');
INSERT INTO `mqu_area` VALUES ('1489', '1482', '麻阳苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1490', '1482', '新晃侗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1491', '1482', '芷江侗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1492', '1482', '靖州苗族侗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1493', '1482', '通道侗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1494', '1482', '洪江市', '0');
INSERT INTO `mqu_area` VALUES ('1495', '1436', '娄底市', '0');
INSERT INTO `mqu_area` VALUES ('1496', '1495', '娄星区', '0');
INSERT INTO `mqu_area` VALUES ('1497', '1495', '双峰县', '0');
INSERT INTO `mqu_area` VALUES ('1498', '1495', '新化县', '0');
INSERT INTO `mqu_area` VALUES ('1499', '1495', '冷水江市', '0');
INSERT INTO `mqu_area` VALUES ('1500', '1495', '涟源市', '0');
INSERT INTO `mqu_area` VALUES ('1501', '1436', '邵阳市', '0');
INSERT INTO `mqu_area` VALUES ('1502', '1501', '双清区', '0');
INSERT INTO `mqu_area` VALUES ('1503', '1501', '大祥区', '0');
INSERT INTO `mqu_area` VALUES ('1504', '1501', '北塔区', '0');
INSERT INTO `mqu_area` VALUES ('1505', '1501', '邵东县', '0');
INSERT INTO `mqu_area` VALUES ('1506', '1501', '新邵县', '0');
INSERT INTO `mqu_area` VALUES ('1507', '1501', '邵阳县', '0');
INSERT INTO `mqu_area` VALUES ('1508', '1501', '隆回县', '0');
INSERT INTO `mqu_area` VALUES ('1509', '1501', '洞口县', '0');
INSERT INTO `mqu_area` VALUES ('1510', '1501', '绥宁县', '0');
INSERT INTO `mqu_area` VALUES ('1511', '1501', '新宁县', '0');
INSERT INTO `mqu_area` VALUES ('1512', '1501', '城步苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1513', '1501', '武冈市', '0');
INSERT INTO `mqu_area` VALUES ('1514', '1436', '湘潭市', '0');
INSERT INTO `mqu_area` VALUES ('1515', '1514', '雨湖区', '0');
INSERT INTO `mqu_area` VALUES ('1516', '1514', '岳塘区', '0');
INSERT INTO `mqu_area` VALUES ('1517', '1514', '湘潭县', '0');
INSERT INTO `mqu_area` VALUES ('1518', '1514', '湘乡市', '0');
INSERT INTO `mqu_area` VALUES ('1519', '1514', '韶山市', '0');
INSERT INTO `mqu_area` VALUES ('1520', '1436', '湘西土家族苗族自治州', '0');
INSERT INTO `mqu_area` VALUES ('1521', '1520', '吉首市', '0');
INSERT INTO `mqu_area` VALUES ('1522', '1520', '泸溪县', '0');
INSERT INTO `mqu_area` VALUES ('1523', '1520', '凤凰县', '0');
INSERT INTO `mqu_area` VALUES ('1524', '1520', '花垣县', '0');
INSERT INTO `mqu_area` VALUES ('1525', '1520', '保靖县', '0');
INSERT INTO `mqu_area` VALUES ('1526', '1520', '古丈县', '0');
INSERT INTO `mqu_area` VALUES ('1527', '1520', '永顺县', '0');
INSERT INTO `mqu_area` VALUES ('1528', '1520', '龙山县', '0');
INSERT INTO `mqu_area` VALUES ('1529', '1436', '益阳市', '0');
INSERT INTO `mqu_area` VALUES ('1530', '1529', '资阳区', '0');
INSERT INTO `mqu_area` VALUES ('1531', '1529', '赫山区', '0');
INSERT INTO `mqu_area` VALUES ('1532', '1529', '南县', '0');
INSERT INTO `mqu_area` VALUES ('1533', '1529', '桃江县', '0');
INSERT INTO `mqu_area` VALUES ('1534', '1529', '安化县', '0');
INSERT INTO `mqu_area` VALUES ('1535', '1529', '沅江市', '0');
INSERT INTO `mqu_area` VALUES ('1536', '1436', '永州市', '0');
INSERT INTO `mqu_area` VALUES ('1537', '1536', '芝山区', '0');
INSERT INTO `mqu_area` VALUES ('1538', '1536', '冷水滩区', '0');
INSERT INTO `mqu_area` VALUES ('1539', '1536', '祁阳县', '0');
INSERT INTO `mqu_area` VALUES ('1540', '1536', '东安县', '0');
INSERT INTO `mqu_area` VALUES ('1541', '1536', '双牌县', '0');
INSERT INTO `mqu_area` VALUES ('1542', '1536', '道县', '0');
INSERT INTO `mqu_area` VALUES ('1543', '1536', '江永县', '0');
INSERT INTO `mqu_area` VALUES ('1544', '1536', '宁远县', '0');
INSERT INTO `mqu_area` VALUES ('1545', '1536', '蓝山县', '0');
INSERT INTO `mqu_area` VALUES ('1546', '1536', '新田县', '0');
INSERT INTO `mqu_area` VALUES ('1547', '1536', '江华瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1548', '1436', '岳阳市', '0');
INSERT INTO `mqu_area` VALUES ('1549', '1548', '岳阳楼区', '0');
INSERT INTO `mqu_area` VALUES ('1550', '1548', '云溪区', '0');
INSERT INTO `mqu_area` VALUES ('1551', '1548', '君山区', '0');
INSERT INTO `mqu_area` VALUES ('1552', '1548', '岳阳县', '0');
INSERT INTO `mqu_area` VALUES ('1553', '1548', '华容县', '0');
INSERT INTO `mqu_area` VALUES ('1554', '1548', '湘阴县', '0');
INSERT INTO `mqu_area` VALUES ('1555', '1548', '平江县', '0');
INSERT INTO `mqu_area` VALUES ('1556', '1548', '汨罗市', '0');
INSERT INTO `mqu_area` VALUES ('1557', '1548', '临湘市', '0');
INSERT INTO `mqu_area` VALUES ('1558', '1436', '张家界市', '0');
INSERT INTO `mqu_area` VALUES ('1559', '1558', '永定区', '0');
INSERT INTO `mqu_area` VALUES ('1560', '1558', '武陵源区', '0');
INSERT INTO `mqu_area` VALUES ('1561', '1558', '慈利县', '0');
INSERT INTO `mqu_area` VALUES ('1562', '1558', '桑植县', '0');
INSERT INTO `mqu_area` VALUES ('1563', '1436', '株洲市', '0');
INSERT INTO `mqu_area` VALUES ('1564', '1563', '荷塘区', '0');
INSERT INTO `mqu_area` VALUES ('1565', '1563', '芦淞区', '0');
INSERT INTO `mqu_area` VALUES ('1566', '1563', '石峰区', '0');
INSERT INTO `mqu_area` VALUES ('1567', '1563', '天元区', '0');
INSERT INTO `mqu_area` VALUES ('1568', '1563', '株洲县', '0');
INSERT INTO `mqu_area` VALUES ('1569', '1563', '攸县', '0');
INSERT INTO `mqu_area` VALUES ('1570', '1563', '茶陵县', '0');
INSERT INTO `mqu_area` VALUES ('1571', '1563', '炎陵县', '0');
INSERT INTO `mqu_area` VALUES ('1572', '1563', '醴陵市', '0');
INSERT INTO `mqu_area` VALUES ('1573', '0', '吉林', '0');
INSERT INTO `mqu_area` VALUES ('1574', '1573', '长春市', '0');
INSERT INTO `mqu_area` VALUES ('1575', '1574', '南关区', '0');
INSERT INTO `mqu_area` VALUES ('1576', '1574', '宽城区', '0');
INSERT INTO `mqu_area` VALUES ('1577', '1574', '朝阳区', '0');
INSERT INTO `mqu_area` VALUES ('1578', '1574', '二道区', '0');
INSERT INTO `mqu_area` VALUES ('1579', '1574', '绿园区', '0');
INSERT INTO `mqu_area` VALUES ('1580', '1574', '双阳区', '0');
INSERT INTO `mqu_area` VALUES ('1581', '1574', '农安县', '0');
INSERT INTO `mqu_area` VALUES ('1582', '1574', '九台市', '0');
INSERT INTO `mqu_area` VALUES ('1583', '1574', '榆树市', '0');
INSERT INTO `mqu_area` VALUES ('1584', '1574', '德惠市', '0');
INSERT INTO `mqu_area` VALUES ('1585', '1573', '白城市', '0');
INSERT INTO `mqu_area` VALUES ('1586', '1585', '洮北区', '0');
INSERT INTO `mqu_area` VALUES ('1587', '1585', '镇赉县', '0');
INSERT INTO `mqu_area` VALUES ('1588', '1585', '通榆县', '0');
INSERT INTO `mqu_area` VALUES ('1589', '1585', '洮南市', '0');
INSERT INTO `mqu_area` VALUES ('1590', '1585', '大安市', '0');
INSERT INTO `mqu_area` VALUES ('1591', '1573', '白山市', '0');
INSERT INTO `mqu_area` VALUES ('1592', '1591', '八道江区', '0');
INSERT INTO `mqu_area` VALUES ('1593', '1591', '抚松县', '0');
INSERT INTO `mqu_area` VALUES ('1594', '1591', '靖宇县', '0');
INSERT INTO `mqu_area` VALUES ('1595', '1591', '长白朝鲜族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1596', '1591', '江源县', '0');
INSERT INTO `mqu_area` VALUES ('1597', '1591', '临江市', '0');
INSERT INTO `mqu_area` VALUES ('1598', '1573', '吉林市', '0');
INSERT INTO `mqu_area` VALUES ('1599', '1598', '昌邑区', '0');
INSERT INTO `mqu_area` VALUES ('1600', '1598', '龙潭区', '0');
INSERT INTO `mqu_area` VALUES ('1601', '1598', '船营区', '0');
INSERT INTO `mqu_area` VALUES ('1602', '1598', '丰满区', '0');
INSERT INTO `mqu_area` VALUES ('1603', '1598', '永吉县', '0');
INSERT INTO `mqu_area` VALUES ('1604', '1598', '蛟河市', '0');
INSERT INTO `mqu_area` VALUES ('1605', '1598', '桦甸市', '0');
INSERT INTO `mqu_area` VALUES ('1606', '1598', '舒兰市', '0');
INSERT INTO `mqu_area` VALUES ('1607', '1598', '磐石市', '0');
INSERT INTO `mqu_area` VALUES ('1608', '1573', '辽源市', '0');
INSERT INTO `mqu_area` VALUES ('1609', '1608', '龙山区', '0');
INSERT INTO `mqu_area` VALUES ('1610', '1608', '西安区', '0');
INSERT INTO `mqu_area` VALUES ('1611', '1608', '东丰县', '0');
INSERT INTO `mqu_area` VALUES ('1612', '1608', '东辽县', '0');
INSERT INTO `mqu_area` VALUES ('1613', '1573', '四平市', '0');
INSERT INTO `mqu_area` VALUES ('1614', '1613', '铁西区', '0');
INSERT INTO `mqu_area` VALUES ('1615', '1613', '铁东区', '0');
INSERT INTO `mqu_area` VALUES ('1616', '1613', '梨树县', '0');
INSERT INTO `mqu_area` VALUES ('1617', '1613', '伊通满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1618', '1613', '公主岭市', '0');
INSERT INTO `mqu_area` VALUES ('1619', '1613', '双辽市', '0');
INSERT INTO `mqu_area` VALUES ('1620', '1573', '松原市', '0');
INSERT INTO `mqu_area` VALUES ('1621', '1620', '宁江区', '0');
INSERT INTO `mqu_area` VALUES ('1622', '1620', '前郭尔罗斯蒙古族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1623', '1620', '长岭县', '0');
INSERT INTO `mqu_area` VALUES ('1624', '1620', '乾安县', '0');
INSERT INTO `mqu_area` VALUES ('1625', '1620', '扶余县', '0');
INSERT INTO `mqu_area` VALUES ('1626', '1573', '通化市', '0');
INSERT INTO `mqu_area` VALUES ('1627', '1626', '东昌区', '0');
INSERT INTO `mqu_area` VALUES ('1628', '1626', '二道江区', '0');
INSERT INTO `mqu_area` VALUES ('1629', '1626', '通化县', '0');
INSERT INTO `mqu_area` VALUES ('1630', '1626', '辉南县', '0');
INSERT INTO `mqu_area` VALUES ('1631', '1626', '柳河县', '0');
INSERT INTO `mqu_area` VALUES ('1632', '1626', '梅河口市', '0');
INSERT INTO `mqu_area` VALUES ('1633', '1626', '集安市', '0');
INSERT INTO `mqu_area` VALUES ('1634', '1573', '延边朝鲜族自治州', '0');
INSERT INTO `mqu_area` VALUES ('1635', '1634', '延吉市', '0');
INSERT INTO `mqu_area` VALUES ('1636', '1634', '图们市', '0');
INSERT INTO `mqu_area` VALUES ('1637', '1634', '敦化市', '0');
INSERT INTO `mqu_area` VALUES ('1638', '1634', '珲春市', '0');
INSERT INTO `mqu_area` VALUES ('1639', '1634', '龙井市', '0');
INSERT INTO `mqu_area` VALUES ('1640', '1634', '和龙市', '0');
INSERT INTO `mqu_area` VALUES ('1641', '1634', '汪清县', '0');
INSERT INTO `mqu_area` VALUES ('1642', '1634', '安图县', '0');
INSERT INTO `mqu_area` VALUES ('1643', '0', '江苏', '0');
INSERT INTO `mqu_area` VALUES ('1644', '1643', '南京市', '0');
INSERT INTO `mqu_area` VALUES ('1645', '1644', '玄武区', '0');
INSERT INTO `mqu_area` VALUES ('1646', '1644', '白下区', '0');
INSERT INTO `mqu_area` VALUES ('1647', '1644', '秦淮区', '0');
INSERT INTO `mqu_area` VALUES ('1648', '1644', '建邺区', '0');
INSERT INTO `mqu_area` VALUES ('1649', '1644', '鼓楼区', '0');
INSERT INTO `mqu_area` VALUES ('1650', '1644', '下关区', '0');
INSERT INTO `mqu_area` VALUES ('1651', '1644', '浦口区', '0');
INSERT INTO `mqu_area` VALUES ('1652', '1644', '栖霞区', '0');
INSERT INTO `mqu_area` VALUES ('1653', '1644', '雨花台区', '0');
INSERT INTO `mqu_area` VALUES ('1654', '1644', '江宁区', '0');
INSERT INTO `mqu_area` VALUES ('1655', '1644', '六合区', '0');
INSERT INTO `mqu_area` VALUES ('1656', '1644', '溧水县', '0');
INSERT INTO `mqu_area` VALUES ('1657', '1644', '高淳县', '0');
INSERT INTO `mqu_area` VALUES ('1658', '1643', '常州市', '0');
INSERT INTO `mqu_area` VALUES ('1659', '1658', '天宁区', '0');
INSERT INTO `mqu_area` VALUES ('1660', '1658', '钟楼区', '0');
INSERT INTO `mqu_area` VALUES ('1661', '1658', '戚墅堰区', '0');
INSERT INTO `mqu_area` VALUES ('1662', '1658', '新北区', '0');
INSERT INTO `mqu_area` VALUES ('1663', '1658', '武进区', '0');
INSERT INTO `mqu_area` VALUES ('1664', '1658', '溧阳市', '0');
INSERT INTO `mqu_area` VALUES ('1665', '1658', '金坛市', '0');
INSERT INTO `mqu_area` VALUES ('1666', '1643', '淮安市', '0');
INSERT INTO `mqu_area` VALUES ('1667', '1666', '清河区', '0');
INSERT INTO `mqu_area` VALUES ('1668', '1666', '楚州区', '0');
INSERT INTO `mqu_area` VALUES ('1669', '1666', '淮阴区', '0');
INSERT INTO `mqu_area` VALUES ('1670', '1666', '清浦区', '0');
INSERT INTO `mqu_area` VALUES ('1671', '1666', '涟水县', '0');
INSERT INTO `mqu_area` VALUES ('1672', '1666', '洪泽县', '0');
INSERT INTO `mqu_area` VALUES ('1673', '1666', '盱眙县', '0');
INSERT INTO `mqu_area` VALUES ('1674', '1666', '金湖县', '0');
INSERT INTO `mqu_area` VALUES ('1675', '1643', '连云港市', '0');
INSERT INTO `mqu_area` VALUES ('1676', '1675', '连云区', '0');
INSERT INTO `mqu_area` VALUES ('1677', '1675', '新浦区', '0');
INSERT INTO `mqu_area` VALUES ('1678', '1675', '海州区', '0');
INSERT INTO `mqu_area` VALUES ('1679', '1675', '赣榆县', '0');
INSERT INTO `mqu_area` VALUES ('1680', '1675', '东海县', '0');
INSERT INTO `mqu_area` VALUES ('1681', '1675', '灌云县', '0');
INSERT INTO `mqu_area` VALUES ('1682', '1675', '灌南县', '0');
INSERT INTO `mqu_area` VALUES ('1683', '1643', '南通市', '0');
INSERT INTO `mqu_area` VALUES ('1684', '1683', '崇川区', '0');
INSERT INTO `mqu_area` VALUES ('1685', '1683', '港闸区', '0');
INSERT INTO `mqu_area` VALUES ('1686', '1683', '海安县', '0');
INSERT INTO `mqu_area` VALUES ('1687', '1683', '如东县', '0');
INSERT INTO `mqu_area` VALUES ('1688', '1683', '启东市', '0');
INSERT INTO `mqu_area` VALUES ('1689', '1683', '如皋市', '0');
INSERT INTO `mqu_area` VALUES ('1690', '1683', '通州市', '0');
INSERT INTO `mqu_area` VALUES ('1691', '1683', '海门市', '0');
INSERT INTO `mqu_area` VALUES ('1692', '1643', '苏州市', '0');
INSERT INTO `mqu_area` VALUES ('1693', '1692', '沧浪区', '0');
INSERT INTO `mqu_area` VALUES ('1694', '1692', '平江区', '0');
INSERT INTO `mqu_area` VALUES ('1695', '1692', '金阊区', '0');
INSERT INTO `mqu_area` VALUES ('1696', '1692', '虎丘区', '0');
INSERT INTO `mqu_area` VALUES ('1697', '1692', '吴中区', '0');
INSERT INTO `mqu_area` VALUES ('1698', '1692', '相城区', '0');
INSERT INTO `mqu_area` VALUES ('1699', '1692', '常熟市', '0');
INSERT INTO `mqu_area` VALUES ('1700', '1692', '张家港市', '0');
INSERT INTO `mqu_area` VALUES ('1701', '1692', '昆山市', '0');
INSERT INTO `mqu_area` VALUES ('1702', '1692', '吴江市', '0');
INSERT INTO `mqu_area` VALUES ('1703', '1692', '太仓市', '0');
INSERT INTO `mqu_area` VALUES ('1704', '1643', '宿迁市', '0');
INSERT INTO `mqu_area` VALUES ('1705', '1704', '宿城区', '0');
INSERT INTO `mqu_area` VALUES ('1706', '1704', '宿豫区', '0');
INSERT INTO `mqu_area` VALUES ('1707', '1704', '沭阳县', '0');
INSERT INTO `mqu_area` VALUES ('1708', '1704', '泗阳县', '0');
INSERT INTO `mqu_area` VALUES ('1709', '1704', '泗洪县', '0');
INSERT INTO `mqu_area` VALUES ('1710', '1643', '泰州市', '0');
INSERT INTO `mqu_area` VALUES ('1711', '1710', '海陵区', '0');
INSERT INTO `mqu_area` VALUES ('1712', '1710', '高港区', '0');
INSERT INTO `mqu_area` VALUES ('1713', '1710', '兴化市', '0');
INSERT INTO `mqu_area` VALUES ('1714', '1710', '靖江市', '0');
INSERT INTO `mqu_area` VALUES ('1715', '1710', '泰兴市', '0');
INSERT INTO `mqu_area` VALUES ('1716', '1710', '姜堰市', '0');
INSERT INTO `mqu_area` VALUES ('1717', '1643', '无锡市', '0');
INSERT INTO `mqu_area` VALUES ('1718', '1717', '崇安区', '0');
INSERT INTO `mqu_area` VALUES ('1719', '1717', '南长区', '0');
INSERT INTO `mqu_area` VALUES ('1720', '1717', '北塘区', '0');
INSERT INTO `mqu_area` VALUES ('1721', '1717', '锡山区', '0');
INSERT INTO `mqu_area` VALUES ('1722', '1717', '惠山区', '0');
INSERT INTO `mqu_area` VALUES ('1723', '1717', '滨湖区', '0');
INSERT INTO `mqu_area` VALUES ('1724', '1717', '江阴市', '0');
INSERT INTO `mqu_area` VALUES ('1725', '1717', '宜兴市', '0');
INSERT INTO `mqu_area` VALUES ('1726', '1643', '徐州市', '0');
INSERT INTO `mqu_area` VALUES ('1727', '1726', '鼓楼区', '0');
INSERT INTO `mqu_area` VALUES ('1728', '1726', '云龙区', '0');
INSERT INTO `mqu_area` VALUES ('1729', '1726', '九里区', '0');
INSERT INTO `mqu_area` VALUES ('1730', '1726', '贾汪区', '0');
INSERT INTO `mqu_area` VALUES ('1731', '1726', '泉山区', '0');
INSERT INTO `mqu_area` VALUES ('1732', '1726', '丰县', '0');
INSERT INTO `mqu_area` VALUES ('1733', '1726', '沛县', '0');
INSERT INTO `mqu_area` VALUES ('1734', '1726', '铜山县', '0');
INSERT INTO `mqu_area` VALUES ('1735', '1726', '睢宁县', '0');
INSERT INTO `mqu_area` VALUES ('1736', '1726', '新沂市', '0');
INSERT INTO `mqu_area` VALUES ('1737', '1726', '邳州市', '0');
INSERT INTO `mqu_area` VALUES ('1738', '1643', '盐城市', '0');
INSERT INTO `mqu_area` VALUES ('1739', '1738', '亭湖区', '0');
INSERT INTO `mqu_area` VALUES ('1740', '1738', '盐都区', '0');
INSERT INTO `mqu_area` VALUES ('1741', '1738', '响水县', '0');
INSERT INTO `mqu_area` VALUES ('1742', '1738', '滨海县', '0');
INSERT INTO `mqu_area` VALUES ('1743', '1738', '阜宁县', '0');
INSERT INTO `mqu_area` VALUES ('1744', '1738', '射阳县', '0');
INSERT INTO `mqu_area` VALUES ('1745', '1738', '建湖县', '0');
INSERT INTO `mqu_area` VALUES ('1746', '1738', '东台市', '0');
INSERT INTO `mqu_area` VALUES ('1747', '1738', '大丰市', '0');
INSERT INTO `mqu_area` VALUES ('1748', '1643', '扬州市', '0');
INSERT INTO `mqu_area` VALUES ('1749', '1748', '广陵区', '0');
INSERT INTO `mqu_area` VALUES ('1750', '1748', '邗江区', '0');
INSERT INTO `mqu_area` VALUES ('1751', '1748', '郊区', '0');
INSERT INTO `mqu_area` VALUES ('1752', '1748', '宝应县', '0');
INSERT INTO `mqu_area` VALUES ('1753', '1748', '仪征市', '0');
INSERT INTO `mqu_area` VALUES ('1754', '1748', '高邮市', '0');
INSERT INTO `mqu_area` VALUES ('1755', '1748', '江都市', '0');
INSERT INTO `mqu_area` VALUES ('1756', '1643', '镇江市', '0');
INSERT INTO `mqu_area` VALUES ('1757', '1756', '京口区', '0');
INSERT INTO `mqu_area` VALUES ('1758', '1756', '润州区', '0');
INSERT INTO `mqu_area` VALUES ('1759', '1756', '丹徒区', '0');
INSERT INTO `mqu_area` VALUES ('1760', '1756', '丹阳市', '0');
INSERT INTO `mqu_area` VALUES ('1761', '1756', '扬中市', '0');
INSERT INTO `mqu_area` VALUES ('1762', '1756', '句容市', '0');
INSERT INTO `mqu_area` VALUES ('1763', '0', '江西', '0');
INSERT INTO `mqu_area` VALUES ('1764', '1763', '南昌市', '0');
INSERT INTO `mqu_area` VALUES ('1765', '1764', '东湖区', '0');
INSERT INTO `mqu_area` VALUES ('1766', '1764', '西湖区', '0');
INSERT INTO `mqu_area` VALUES ('1767', '1764', '青云谱区', '0');
INSERT INTO `mqu_area` VALUES ('1768', '1764', '湾里区', '0');
INSERT INTO `mqu_area` VALUES ('1769', '1764', '青山湖区', '0');
INSERT INTO `mqu_area` VALUES ('1770', '1764', '南昌县', '0');
INSERT INTO `mqu_area` VALUES ('1771', '1764', '新建县', '0');
INSERT INTO `mqu_area` VALUES ('1772', '1764', '安义县', '0');
INSERT INTO `mqu_area` VALUES ('1773', '1764', '进贤县', '0');
INSERT INTO `mqu_area` VALUES ('1774', '1763', '抚州市', '0');
INSERT INTO `mqu_area` VALUES ('1775', '1774', '临川区', '0');
INSERT INTO `mqu_area` VALUES ('1776', '1774', '南城县', '0');
INSERT INTO `mqu_area` VALUES ('1777', '1774', '黎川县', '0');
INSERT INTO `mqu_area` VALUES ('1778', '1774', '南丰县', '0');
INSERT INTO `mqu_area` VALUES ('1779', '1774', '崇仁县', '0');
INSERT INTO `mqu_area` VALUES ('1780', '1774', '乐安县', '0');
INSERT INTO `mqu_area` VALUES ('1781', '1774', '宜黄县', '0');
INSERT INTO `mqu_area` VALUES ('1782', '1774', '金溪县', '0');
INSERT INTO `mqu_area` VALUES ('1783', '1774', '资溪县', '0');
INSERT INTO `mqu_area` VALUES ('1784', '1774', '东乡县', '0');
INSERT INTO `mqu_area` VALUES ('1785', '1774', '广昌县', '0');
INSERT INTO `mqu_area` VALUES ('1786', '1763', '赣州市', '0');
INSERT INTO `mqu_area` VALUES ('1787', '1786', '章贡区', '0');
INSERT INTO `mqu_area` VALUES ('1788', '1786', '赣县', '0');
INSERT INTO `mqu_area` VALUES ('1789', '1786', '信丰县', '0');
INSERT INTO `mqu_area` VALUES ('1790', '1786', '大余县', '0');
INSERT INTO `mqu_area` VALUES ('1791', '1786', '上犹县', '0');
INSERT INTO `mqu_area` VALUES ('1792', '1786', '崇义县', '0');
INSERT INTO `mqu_area` VALUES ('1793', '1786', '安远县', '0');
INSERT INTO `mqu_area` VALUES ('1794', '1786', '龙南县', '0');
INSERT INTO `mqu_area` VALUES ('1795', '1786', '定南县', '0');
INSERT INTO `mqu_area` VALUES ('1796', '1786', '全南县', '0');
INSERT INTO `mqu_area` VALUES ('1797', '1786', '宁都县', '0');
INSERT INTO `mqu_area` VALUES ('1798', '1786', '于都县', '0');
INSERT INTO `mqu_area` VALUES ('1799', '1786', '兴国县', '0');
INSERT INTO `mqu_area` VALUES ('1800', '1786', '会昌县', '0');
INSERT INTO `mqu_area` VALUES ('1801', '1786', '寻乌县', '0');
INSERT INTO `mqu_area` VALUES ('1802', '1786', '石城县', '0');
INSERT INTO `mqu_area` VALUES ('1803', '1786', '瑞金市', '0');
INSERT INTO `mqu_area` VALUES ('1804', '1786', '南康市', '0');
INSERT INTO `mqu_area` VALUES ('1805', '1763', '吉安市', '0');
INSERT INTO `mqu_area` VALUES ('1806', '1805', '吉州区', '0');
INSERT INTO `mqu_area` VALUES ('1807', '1805', '青原区', '0');
INSERT INTO `mqu_area` VALUES ('1808', '1805', '吉安县', '0');
INSERT INTO `mqu_area` VALUES ('1809', '1805', '吉水县', '0');
INSERT INTO `mqu_area` VALUES ('1810', '1805', '峡江县', '0');
INSERT INTO `mqu_area` VALUES ('1811', '1805', '新干县', '0');
INSERT INTO `mqu_area` VALUES ('1812', '1805', '永丰县', '0');
INSERT INTO `mqu_area` VALUES ('1813', '1805', '泰和县', '0');
INSERT INTO `mqu_area` VALUES ('1814', '1805', '遂川县', '0');
INSERT INTO `mqu_area` VALUES ('1815', '1805', '万安县', '0');
INSERT INTO `mqu_area` VALUES ('1816', '1805', '安福县', '0');
INSERT INTO `mqu_area` VALUES ('1817', '1805', '永新县', '0');
INSERT INTO `mqu_area` VALUES ('1818', '1805', '井冈山市', '0');
INSERT INTO `mqu_area` VALUES ('1819', '1763', '景德镇市', '0');
INSERT INTO `mqu_area` VALUES ('1820', '1819', '昌江区', '0');
INSERT INTO `mqu_area` VALUES ('1821', '1819', '珠山区', '0');
INSERT INTO `mqu_area` VALUES ('1822', '1819', '浮梁县', '0');
INSERT INTO `mqu_area` VALUES ('1823', '1819', '乐平市', '0');
INSERT INTO `mqu_area` VALUES ('1824', '1763', '九江市', '0');
INSERT INTO `mqu_area` VALUES ('1825', '1824', '庐山区', '0');
INSERT INTO `mqu_area` VALUES ('1826', '1824', '浔阳区', '0');
INSERT INTO `mqu_area` VALUES ('1827', '1824', '九江县', '0');
INSERT INTO `mqu_area` VALUES ('1828', '1824', '武宁县', '0');
INSERT INTO `mqu_area` VALUES ('1829', '1824', '修水县', '0');
INSERT INTO `mqu_area` VALUES ('1830', '1824', '永修县', '0');
INSERT INTO `mqu_area` VALUES ('1831', '1824', '德安县', '0');
INSERT INTO `mqu_area` VALUES ('1832', '1824', '星子县', '0');
INSERT INTO `mqu_area` VALUES ('1833', '1824', '都昌县', '0');
INSERT INTO `mqu_area` VALUES ('1834', '1824', '湖口县', '0');
INSERT INTO `mqu_area` VALUES ('1835', '1824', '彭泽县', '0');
INSERT INTO `mqu_area` VALUES ('1836', '1824', '瑞昌市', '0');
INSERT INTO `mqu_area` VALUES ('1837', '1763', '萍乡市', '0');
INSERT INTO `mqu_area` VALUES ('1838', '1837', '安源区', '0');
INSERT INTO `mqu_area` VALUES ('1839', '1837', '湘东区', '0');
INSERT INTO `mqu_area` VALUES ('1840', '1837', '莲花县', '0');
INSERT INTO `mqu_area` VALUES ('1841', '1837', '上栗县', '0');
INSERT INTO `mqu_area` VALUES ('1842', '1837', '芦溪县', '0');
INSERT INTO `mqu_area` VALUES ('1843', '1763', '上饶市', '0');
INSERT INTO `mqu_area` VALUES ('1844', '1843', '信州区', '0');
INSERT INTO `mqu_area` VALUES ('1845', '1843', '上饶县', '0');
INSERT INTO `mqu_area` VALUES ('1846', '1843', '广丰县', '0');
INSERT INTO `mqu_area` VALUES ('1847', '1843', '玉山县', '0');
INSERT INTO `mqu_area` VALUES ('1848', '1843', '铅山县', '0');
INSERT INTO `mqu_area` VALUES ('1849', '1843', '横峰县', '0');
INSERT INTO `mqu_area` VALUES ('1850', '1843', '弋阳县', '0');
INSERT INTO `mqu_area` VALUES ('1851', '1843', '余干县', '0');
INSERT INTO `mqu_area` VALUES ('1852', '1843', '鄱阳县', '0');
INSERT INTO `mqu_area` VALUES ('1853', '1843', '万年县', '0');
INSERT INTO `mqu_area` VALUES ('1854', '1843', '婺源县', '0');
INSERT INTO `mqu_area` VALUES ('1855', '1843', '德兴市', '0');
INSERT INTO `mqu_area` VALUES ('1856', '1763', '新余市', '0');
INSERT INTO `mqu_area` VALUES ('1857', '1856', '渝水区', '0');
INSERT INTO `mqu_area` VALUES ('1858', '1856', '分宜县', '0');
INSERT INTO `mqu_area` VALUES ('1859', '1763', '宜春市', '0');
INSERT INTO `mqu_area` VALUES ('1860', '1859', '袁州区', '0');
INSERT INTO `mqu_area` VALUES ('1861', '1859', '奉新县', '0');
INSERT INTO `mqu_area` VALUES ('1862', '1859', '万载县', '0');
INSERT INTO `mqu_area` VALUES ('1863', '1859', '上高县', '0');
INSERT INTO `mqu_area` VALUES ('1864', '1859', '宜丰县', '0');
INSERT INTO `mqu_area` VALUES ('1865', '1859', '靖安县', '0');
INSERT INTO `mqu_area` VALUES ('1866', '1859', '铜鼓县', '0');
INSERT INTO `mqu_area` VALUES ('1867', '1859', '丰城市', '0');
INSERT INTO `mqu_area` VALUES ('1868', '1859', '樟树市', '0');
INSERT INTO `mqu_area` VALUES ('1869', '1859', '高安市', '0');
INSERT INTO `mqu_area` VALUES ('1870', '1763', '鹰潭市', '0');
INSERT INTO `mqu_area` VALUES ('1871', '1870', '月湖区', '0');
INSERT INTO `mqu_area` VALUES ('1872', '1870', '余江县', '0');
INSERT INTO `mqu_area` VALUES ('1873', '1870', '贵溪市', '0');
INSERT INTO `mqu_area` VALUES ('1874', '0', '辽宁', '0');
INSERT INTO `mqu_area` VALUES ('1875', '1874', '沈阳市', '0');
INSERT INTO `mqu_area` VALUES ('1876', '1875', '和平区', '0');
INSERT INTO `mqu_area` VALUES ('1877', '1875', '沈河区', '0');
INSERT INTO `mqu_area` VALUES ('1878', '1875', '大东区', '0');
INSERT INTO `mqu_area` VALUES ('1879', '1875', '皇姑区', '0');
INSERT INTO `mqu_area` VALUES ('1880', '1875', '铁西区', '0');
INSERT INTO `mqu_area` VALUES ('1881', '1875', '苏家屯区', '0');
INSERT INTO `mqu_area` VALUES ('1882', '1875', '东陵区', '0');
INSERT INTO `mqu_area` VALUES ('1883', '1875', '新城子区', '0');
INSERT INTO `mqu_area` VALUES ('1884', '1875', '于洪区', '0');
INSERT INTO `mqu_area` VALUES ('1885', '1875', '辽中县', '0');
INSERT INTO `mqu_area` VALUES ('1886', '1875', '康平县', '0');
INSERT INTO `mqu_area` VALUES ('1887', '1875', '法库县', '0');
INSERT INTO `mqu_area` VALUES ('1888', '1875', '新民市', '0');
INSERT INTO `mqu_area` VALUES ('1889', '1874', '鞍山市', '0');
INSERT INTO `mqu_area` VALUES ('1890', '1889', '铁东区', '0');
INSERT INTO `mqu_area` VALUES ('1891', '1889', '铁西区', '0');
INSERT INTO `mqu_area` VALUES ('1892', '1889', '立山区', '0');
INSERT INTO `mqu_area` VALUES ('1893', '1889', '千山区', '0');
INSERT INTO `mqu_area` VALUES ('1894', '1889', '台安县', '0');
INSERT INTO `mqu_area` VALUES ('1895', '1889', '岫岩满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1896', '1889', '海城市', '0');
INSERT INTO `mqu_area` VALUES ('1897', '1874', '本溪市', '0');
INSERT INTO `mqu_area` VALUES ('1898', '1897', '平山区', '0');
INSERT INTO `mqu_area` VALUES ('1899', '1897', '溪湖区', '0');
INSERT INTO `mqu_area` VALUES ('1900', '1897', '明山区', '0');
INSERT INTO `mqu_area` VALUES ('1901', '1897', '南芬区', '0');
INSERT INTO `mqu_area` VALUES ('1902', '1897', '本溪满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1903', '1897', '桓仁满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1904', '1874', '朝阳市', '0');
INSERT INTO `mqu_area` VALUES ('1905', '1904', '双塔区', '0');
INSERT INTO `mqu_area` VALUES ('1906', '1904', '龙城区', '0');
INSERT INTO `mqu_area` VALUES ('1907', '1904', '朝阳县', '0');
INSERT INTO `mqu_area` VALUES ('1908', '1904', '建平县', '0');
INSERT INTO `mqu_area` VALUES ('1909', '1904', '喀喇沁左翼蒙古族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1910', '1904', '北票市', '0');
INSERT INTO `mqu_area` VALUES ('1911', '1904', '凌源市', '0');
INSERT INTO `mqu_area` VALUES ('1912', '1874', '大连市', '0');
INSERT INTO `mqu_area` VALUES ('1913', '1912', '中山区', '0');
INSERT INTO `mqu_area` VALUES ('1914', '1912', '西岗区', '0');
INSERT INTO `mqu_area` VALUES ('1915', '1912', '沙河口区', '0');
INSERT INTO `mqu_area` VALUES ('1916', '1912', '甘井子区', '0');
INSERT INTO `mqu_area` VALUES ('1917', '1912', '旅顺口区', '0');
INSERT INTO `mqu_area` VALUES ('1918', '1912', '金州区', '0');
INSERT INTO `mqu_area` VALUES ('1919', '1912', '长海县', '0');
INSERT INTO `mqu_area` VALUES ('1920', '1912', '瓦房店市', '0');
INSERT INTO `mqu_area` VALUES ('1921', '1912', '普兰店市', '0');
INSERT INTO `mqu_area` VALUES ('1922', '1912', '庄河市', '0');
INSERT INTO `mqu_area` VALUES ('1923', '1874', '丹东市', '0');
INSERT INTO `mqu_area` VALUES ('1924', '1923', '元宝区', '0');
INSERT INTO `mqu_area` VALUES ('1925', '1923', '振兴区', '0');
INSERT INTO `mqu_area` VALUES ('1926', '1923', '振安区', '0');
INSERT INTO `mqu_area` VALUES ('1927', '1923', '宽甸满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1928', '1923', '东港市', '0');
INSERT INTO `mqu_area` VALUES ('1929', '1923', '凤城市', '0');
INSERT INTO `mqu_area` VALUES ('1930', '1874', '抚顺市', '0');
INSERT INTO `mqu_area` VALUES ('1931', '1930', '新抚区', '0');
INSERT INTO `mqu_area` VALUES ('1932', '1930', '东洲区', '0');
INSERT INTO `mqu_area` VALUES ('1933', '1930', '望花区', '0');
INSERT INTO `mqu_area` VALUES ('1934', '1930', '顺城区', '0');
INSERT INTO `mqu_area` VALUES ('1935', '1930', '抚顺县', '0');
INSERT INTO `mqu_area` VALUES ('1936', '1930', '新宾满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1937', '1930', '清原满族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1938', '1874', '阜新市', '0');
INSERT INTO `mqu_area` VALUES ('1939', '1938', '海州区', '0');
INSERT INTO `mqu_area` VALUES ('1940', '1938', '新邱区', '0');
INSERT INTO `mqu_area` VALUES ('1941', '1938', '太平区', '0');
INSERT INTO `mqu_area` VALUES ('1942', '1938', '清河门区', '0');
INSERT INTO `mqu_area` VALUES ('1943', '1938', '细河区', '0');
INSERT INTO `mqu_area` VALUES ('1944', '1938', '阜新蒙古族自治县', '0');
INSERT INTO `mqu_area` VALUES ('1945', '1938', '彰武县', '0');
INSERT INTO `mqu_area` VALUES ('1946', '1874', '葫芦岛市', '0');
INSERT INTO `mqu_area` VALUES ('1947', '1946', '连山区', '0');
INSERT INTO `mqu_area` VALUES ('1948', '1946', '龙港区', '0');
INSERT INTO `mqu_area` VALUES ('1949', '1946', '南票区', '0');
INSERT INTO `mqu_area` VALUES ('1950', '1946', '绥中县', '0');
INSERT INTO `mqu_area` VALUES ('1951', '1946', '建昌县', '0');
INSERT INTO `mqu_area` VALUES ('1952', '1946', '兴城市', '0');
INSERT INTO `mqu_area` VALUES ('1953', '1874', '锦州市', '0');
INSERT INTO `mqu_area` VALUES ('1954', '1953', '古塔区', '0');
INSERT INTO `mqu_area` VALUES ('1955', '1953', '凌河区', '0');
INSERT INTO `mqu_area` VALUES ('1956', '1953', '太和区', '0');
INSERT INTO `mqu_area` VALUES ('1957', '1953', '黑山县', '0');
INSERT INTO `mqu_area` VALUES ('1958', '1953', '义县', '0');
INSERT INTO `mqu_area` VALUES ('1959', '1953', '凌海市', '0');
INSERT INTO `mqu_area` VALUES ('1960', '1953', '北宁市', '0');
INSERT INTO `mqu_area` VALUES ('1961', '1874', '辽阳市', '0');
INSERT INTO `mqu_area` VALUES ('1962', '1961', '白塔区', '0');
INSERT INTO `mqu_area` VALUES ('1963', '1961', '文圣区', '0');
INSERT INTO `mqu_area` VALUES ('1964', '1961', '宏伟区', '0');
INSERT INTO `mqu_area` VALUES ('1965', '1961', '弓长岭区', '0');
INSERT INTO `mqu_area` VALUES ('1966', '1961', '太子河区', '0');
INSERT INTO `mqu_area` VALUES ('1967', '1961', '辽阳县', '0');
INSERT INTO `mqu_area` VALUES ('1968', '1961', '灯塔市', '0');
INSERT INTO `mqu_area` VALUES ('1969', '1874', '盘锦市', '0');
INSERT INTO `mqu_area` VALUES ('1970', '1969', '双台子区', '0');
INSERT INTO `mqu_area` VALUES ('1971', '1969', '兴隆台区', '0');
INSERT INTO `mqu_area` VALUES ('1972', '1969', '大洼县', '0');
INSERT INTO `mqu_area` VALUES ('1973', '1969', '盘山县', '0');
INSERT INTO `mqu_area` VALUES ('1974', '1874', '铁岭市', '0');
INSERT INTO `mqu_area` VALUES ('1975', '1974', '银州区', '0');
INSERT INTO `mqu_area` VALUES ('1976', '1974', '清河区', '0');
INSERT INTO `mqu_area` VALUES ('1977', '1974', '铁岭县', '0');
INSERT INTO `mqu_area` VALUES ('1978', '1974', '西丰县', '0');
INSERT INTO `mqu_area` VALUES ('1979', '1974', '昌图县', '0');
INSERT INTO `mqu_area` VALUES ('1980', '1974', '调兵山市', '0');
INSERT INTO `mqu_area` VALUES ('1981', '1974', '开原市', '0');
INSERT INTO `mqu_area` VALUES ('1982', '1874', '营口市', '0');
INSERT INTO `mqu_area` VALUES ('1983', '1982', '站前区', '0');
INSERT INTO `mqu_area` VALUES ('1984', '1982', '西市区', '0');
INSERT INTO `mqu_area` VALUES ('1985', '1982', '鲅鱼圈区', '0');
INSERT INTO `mqu_area` VALUES ('1986', '1982', '老边区', '0');
INSERT INTO `mqu_area` VALUES ('1987', '1982', '盖州市', '0');
INSERT INTO `mqu_area` VALUES ('1988', '1982', '大石桥市', '0');
INSERT INTO `mqu_area` VALUES ('1989', '0', '内蒙古', '0');
INSERT INTO `mqu_area` VALUES ('1990', '1989', '呼和浩特市', '0');
INSERT INTO `mqu_area` VALUES ('1991', '1990', '新城区', '0');
INSERT INTO `mqu_area` VALUES ('1992', '1990', '回民区', '0');
INSERT INTO `mqu_area` VALUES ('1993', '1990', '玉泉区', '0');
INSERT INTO `mqu_area` VALUES ('1994', '1990', '赛罕区', '0');
INSERT INTO `mqu_area` VALUES ('1995', '1990', '土默特左旗', '0');
INSERT INTO `mqu_area` VALUES ('1996', '1990', '托克托县', '0');
INSERT INTO `mqu_area` VALUES ('1997', '1990', '和林格尔县', '0');
INSERT INTO `mqu_area` VALUES ('1998', '1990', '清水河县', '0');
INSERT INTO `mqu_area` VALUES ('1999', '1990', '武川县', '0');
INSERT INTO `mqu_area` VALUES ('2000', '1989', '阿拉善盟', '0');
INSERT INTO `mqu_area` VALUES ('2001', '2000', '阿拉善左旗', '0');
INSERT INTO `mqu_area` VALUES ('2002', '2000', '阿拉善右旗', '0');
INSERT INTO `mqu_area` VALUES ('2003', '2000', '额济纳旗', '0');
INSERT INTO `mqu_area` VALUES ('2004', '1989', '巴彦淖尔市', '0');
INSERT INTO `mqu_area` VALUES ('2005', '2004', '临河区', '0');
INSERT INTO `mqu_area` VALUES ('2006', '2004', '五原县', '0');
INSERT INTO `mqu_area` VALUES ('2007', '2004', '磴口县', '0');
INSERT INTO `mqu_area` VALUES ('2008', '2004', '乌拉特前旗', '0');
INSERT INTO `mqu_area` VALUES ('2009', '2004', '乌拉特中旗', '0');
INSERT INTO `mqu_area` VALUES ('2010', '2004', '乌拉特后旗', '0');
INSERT INTO `mqu_area` VALUES ('2011', '2004', '杭锦后旗', '0');
INSERT INTO `mqu_area` VALUES ('2012', '1989', '包头市', '0');
INSERT INTO `mqu_area` VALUES ('2013', '2012', '东河区', '0');
INSERT INTO `mqu_area` VALUES ('2014', '2012', '昆都仑区', '0');
INSERT INTO `mqu_area` VALUES ('2015', '2012', '青山区', '0');
INSERT INTO `mqu_area` VALUES ('2016', '2012', '石拐区', '0');
INSERT INTO `mqu_area` VALUES ('2017', '2012', '白云矿区', '0');
INSERT INTO `mqu_area` VALUES ('2018', '2012', '九原区', '0');
INSERT INTO `mqu_area` VALUES ('2019', '2012', '土默特右旗', '0');
INSERT INTO `mqu_area` VALUES ('2020', '2012', '固阳县', '0');
INSERT INTO `mqu_area` VALUES ('2021', '2012', '达尔罕茂明安联合旗', '0');
INSERT INTO `mqu_area` VALUES ('2022', '1989', '赤峰市', '0');
INSERT INTO `mqu_area` VALUES ('2023', '2022', '红山区', '0');
INSERT INTO `mqu_area` VALUES ('2024', '2022', '元宝山区', '0');
INSERT INTO `mqu_area` VALUES ('2025', '2022', '松山区', '0');
INSERT INTO `mqu_area` VALUES ('2026', '2022', '阿鲁科尔沁旗', '0');
INSERT INTO `mqu_area` VALUES ('2027', '2022', '巴林左旗', '0');
INSERT INTO `mqu_area` VALUES ('2028', '2022', '巴林右旗', '0');
INSERT INTO `mqu_area` VALUES ('2029', '2022', '林西县', '0');
INSERT INTO `mqu_area` VALUES ('2030', '2022', '克什克腾旗', '0');
INSERT INTO `mqu_area` VALUES ('2031', '2022', '翁牛特旗', '0');
INSERT INTO `mqu_area` VALUES ('2032', '2022', '喀喇沁旗', '0');
INSERT INTO `mqu_area` VALUES ('2033', '2022', '宁城县', '0');
INSERT INTO `mqu_area` VALUES ('2034', '2022', '敖汉旗', '0');
INSERT INTO `mqu_area` VALUES ('2035', '1989', '鄂尔多斯市', '0');
INSERT INTO `mqu_area` VALUES ('2036', '2035', '东胜区', '0');
INSERT INTO `mqu_area` VALUES ('2037', '2035', '达拉特旗', '0');
INSERT INTO `mqu_area` VALUES ('2038', '2035', '准格尔旗', '0');
INSERT INTO `mqu_area` VALUES ('2039', '2035', '鄂托克前旗', '0');
INSERT INTO `mqu_area` VALUES ('2040', '2035', '鄂托克旗', '0');
INSERT INTO `mqu_area` VALUES ('2041', '2035', '杭锦旗', '0');
INSERT INTO `mqu_area` VALUES ('2042', '2035', '乌审旗', '0');
INSERT INTO `mqu_area` VALUES ('2043', '2035', '伊金霍洛旗', '0');
INSERT INTO `mqu_area` VALUES ('2044', '1989', '呼伦贝尔市', '0');
INSERT INTO `mqu_area` VALUES ('2045', '2044', '海拉尔区', '0');
INSERT INTO `mqu_area` VALUES ('2046', '2044', '阿荣旗', '0');
INSERT INTO `mqu_area` VALUES ('2047', '2044', '莫力达瓦达斡尔族自治旗', '0');
INSERT INTO `mqu_area` VALUES ('2048', '2044', '鄂伦春自治旗', '0');
INSERT INTO `mqu_area` VALUES ('2049', '2044', '鄂温克族自治旗', '0');
INSERT INTO `mqu_area` VALUES ('2050', '2044', '陈巴尔虎旗', '0');
INSERT INTO `mqu_area` VALUES ('2051', '2044', '新巴尔虎左旗', '0');
INSERT INTO `mqu_area` VALUES ('2052', '2044', '新巴尔虎右旗', '0');
INSERT INTO `mqu_area` VALUES ('2053', '2044', '满洲里市', '0');
INSERT INTO `mqu_area` VALUES ('2054', '2044', '牙克石市', '0');
INSERT INTO `mqu_area` VALUES ('2055', '2044', '扎兰屯市', '0');
INSERT INTO `mqu_area` VALUES ('2056', '2044', '额尔古纳市', '0');
INSERT INTO `mqu_area` VALUES ('2057', '2044', '根河市', '0');
INSERT INTO `mqu_area` VALUES ('2058', '1989', '通辽市', '0');
INSERT INTO `mqu_area` VALUES ('2059', '2058', '科尔沁区', '0');
INSERT INTO `mqu_area` VALUES ('2060', '2058', '科尔沁左翼中旗', '0');
INSERT INTO `mqu_area` VALUES ('2061', '2058', '科尔沁左翼后旗', '0');
INSERT INTO `mqu_area` VALUES ('2062', '2058', '开鲁县', '0');
INSERT INTO `mqu_area` VALUES ('2063', '2058', '库伦旗', '0');
INSERT INTO `mqu_area` VALUES ('2064', '2058', '奈曼旗', '0');
INSERT INTO `mqu_area` VALUES ('2065', '2058', '扎鲁特旗', '0');
INSERT INTO `mqu_area` VALUES ('2066', '2058', '霍林郭勒市', '0');
INSERT INTO `mqu_area` VALUES ('2067', '1989', '乌海市', '0');
INSERT INTO `mqu_area` VALUES ('2068', '2067', '海勃湾区', '0');
INSERT INTO `mqu_area` VALUES ('2069', '2067', '海南区', '0');
INSERT INTO `mqu_area` VALUES ('2070', '2067', '乌达区', '0');
INSERT INTO `mqu_area` VALUES ('2071', '1989', '乌兰察布市', '0');
INSERT INTO `mqu_area` VALUES ('2072', '2071', '集宁区', '0');
INSERT INTO `mqu_area` VALUES ('2073', '2071', '卓资县', '0');
INSERT INTO `mqu_area` VALUES ('2074', '2071', '化德县', '0');
INSERT INTO `mqu_area` VALUES ('2075', '2071', '商都县', '0');
INSERT INTO `mqu_area` VALUES ('2076', '2071', '兴和县', '0');
INSERT INTO `mqu_area` VALUES ('2077', '2071', '凉城县', '0');
INSERT INTO `mqu_area` VALUES ('2078', '2071', '察哈尔右翼前旗', '0');
INSERT INTO `mqu_area` VALUES ('2079', '2071', '察哈尔右翼中旗', '0');
INSERT INTO `mqu_area` VALUES ('2080', '2071', '察哈尔右翼后旗', '0');
INSERT INTO `mqu_area` VALUES ('2081', '2071', '四子王旗', '0');
INSERT INTO `mqu_area` VALUES ('2082', '2071', '丰镇市', '0');
INSERT INTO `mqu_area` VALUES ('2083', '1989', '锡林郭勒盟', '0');
INSERT INTO `mqu_area` VALUES ('2084', '2083', '二连浩特市', '0');
INSERT INTO `mqu_area` VALUES ('2085', '2083', '锡林浩特市', '0');
INSERT INTO `mqu_area` VALUES ('2086', '2083', '阿巴嘎旗', '0');
INSERT INTO `mqu_area` VALUES ('2087', '2083', '苏尼特左旗', '0');
INSERT INTO `mqu_area` VALUES ('2088', '2083', '苏尼特右旗', '0');
INSERT INTO `mqu_area` VALUES ('2089', '2083', '东乌珠穆沁旗', '0');
INSERT INTO `mqu_area` VALUES ('2090', '2083', '西乌珠穆沁旗', '0');
INSERT INTO `mqu_area` VALUES ('2091', '2083', '太仆寺旗', '0');
INSERT INTO `mqu_area` VALUES ('2092', '2083', '镶黄旗', '0');
INSERT INTO `mqu_area` VALUES ('2093', '2083', '正镶白旗', '0');
INSERT INTO `mqu_area` VALUES ('2094', '2083', '正蓝旗', '0');
INSERT INTO `mqu_area` VALUES ('2095', '2083', '多伦县', '0');
INSERT INTO `mqu_area` VALUES ('2096', '1989', '兴安盟', '0');
INSERT INTO `mqu_area` VALUES ('2097', '2096', '乌兰浩特市', '0');
INSERT INTO `mqu_area` VALUES ('2098', '2096', '阿尔山市', '0');
INSERT INTO `mqu_area` VALUES ('2099', '2096', '科尔沁右翼前旗', '0');
INSERT INTO `mqu_area` VALUES ('2100', '2096', '科尔沁右翼中旗', '0');
INSERT INTO `mqu_area` VALUES ('2101', '2096', '扎赉特旗', '0');
INSERT INTO `mqu_area` VALUES ('2102', '2096', '突泉县', '0');
INSERT INTO `mqu_area` VALUES ('2103', '0', '宁夏', '0');
INSERT INTO `mqu_area` VALUES ('2104', '2103', '银川市', '0');
INSERT INTO `mqu_area` VALUES ('2105', '2104', '兴庆区', '0');
INSERT INTO `mqu_area` VALUES ('2106', '2104', '西夏区', '0');
INSERT INTO `mqu_area` VALUES ('2107', '2104', '金凤区', '0');
INSERT INTO `mqu_area` VALUES ('2108', '2104', '永宁县', '0');
INSERT INTO `mqu_area` VALUES ('2109', '2104', '贺兰县', '0');
INSERT INTO `mqu_area` VALUES ('2110', '2104', '灵武市', '0');
INSERT INTO `mqu_area` VALUES ('2111', '2103', '固原市', '0');
INSERT INTO `mqu_area` VALUES ('2112', '2111', '原州区', '0');
INSERT INTO `mqu_area` VALUES ('2113', '2111', '西吉县', '0');
INSERT INTO `mqu_area` VALUES ('2114', '2111', '隆德县', '0');
INSERT INTO `mqu_area` VALUES ('2115', '2111', '泾源县', '0');
INSERT INTO `mqu_area` VALUES ('2116', '2111', '彭阳县', '0');
INSERT INTO `mqu_area` VALUES ('2117', '2103', '石嘴山市', '0');
INSERT INTO `mqu_area` VALUES ('2118', '2117', '大武口区', '0');
INSERT INTO `mqu_area` VALUES ('2119', '2117', '惠农区', '0');
INSERT INTO `mqu_area` VALUES ('2120', '2117', '平罗县', '0');
INSERT INTO `mqu_area` VALUES ('2121', '2103', '吴忠市', '0');
INSERT INTO `mqu_area` VALUES ('2122', '2121', '利通区', '0');
INSERT INTO `mqu_area` VALUES ('2123', '2121', '盐池县', '0');
INSERT INTO `mqu_area` VALUES ('2124', '2121', '同心县', '0');
INSERT INTO `mqu_area` VALUES ('2125', '2121', '青铜峡市', '0');
INSERT INTO `mqu_area` VALUES ('2126', '2103', '中卫市', '0');
INSERT INTO `mqu_area` VALUES ('2127', '2126', '沙坡头区', '0');
INSERT INTO `mqu_area` VALUES ('2128', '2126', '中宁县', '0');
INSERT INTO `mqu_area` VALUES ('2129', '2126', '海原县', '0');
INSERT INTO `mqu_area` VALUES ('2130', '0', '青海', '0');
INSERT INTO `mqu_area` VALUES ('2131', '2130', '西宁市', '0');
INSERT INTO `mqu_area` VALUES ('2132', '2131', '城东区', '0');
INSERT INTO `mqu_area` VALUES ('2133', '2131', '城中区', '0');
INSERT INTO `mqu_area` VALUES ('2134', '2131', '城西区', '0');
INSERT INTO `mqu_area` VALUES ('2135', '2131', '城北区', '0');
INSERT INTO `mqu_area` VALUES ('2136', '2131', '大通回族土族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2137', '2131', '湟中县', '0');
INSERT INTO `mqu_area` VALUES ('2138', '2131', '湟源县', '0');
INSERT INTO `mqu_area` VALUES ('2139', '2130', '果洛藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2140', '2139', '玛沁县', '0');
INSERT INTO `mqu_area` VALUES ('2141', '2139', '班玛县', '0');
INSERT INTO `mqu_area` VALUES ('2142', '2139', '甘德县', '0');
INSERT INTO `mqu_area` VALUES ('2143', '2139', '达日县', '0');
INSERT INTO `mqu_area` VALUES ('2144', '2139', '久治县', '0');
INSERT INTO `mqu_area` VALUES ('2145', '2139', '玛多县', '0');
INSERT INTO `mqu_area` VALUES ('2146', '2130', '海北藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2147', '2146', '门源回族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2148', '2146', '祁连县', '0');
INSERT INTO `mqu_area` VALUES ('2149', '2146', '海晏县', '0');
INSERT INTO `mqu_area` VALUES ('2150', '2146', '刚察县', '0');
INSERT INTO `mqu_area` VALUES ('2151', '2130', '海东地区', '0');
INSERT INTO `mqu_area` VALUES ('2152', '2151', '平安县', '0');
INSERT INTO `mqu_area` VALUES ('2153', '2151', '民和回族土族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2154', '2151', '乐都县', '0');
INSERT INTO `mqu_area` VALUES ('2155', '2151', '互助土族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2156', '2151', '化隆回族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2157', '2151', '循化撒拉族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2158', '2130', '海南藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2159', '2158', '共和县', '0');
INSERT INTO `mqu_area` VALUES ('2160', '2158', '同德县', '0');
INSERT INTO `mqu_area` VALUES ('2161', '2158', '贵德县', '0');
INSERT INTO `mqu_area` VALUES ('2162', '2158', '兴海县', '0');
INSERT INTO `mqu_area` VALUES ('2163', '2158', '贵南县', '0');
INSERT INTO `mqu_area` VALUES ('2164', '2130', '海西蒙古族藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2165', '2164', '格尔木市', '0');
INSERT INTO `mqu_area` VALUES ('2166', '2164', '德令哈市', '0');
INSERT INTO `mqu_area` VALUES ('2167', '2164', '乌兰县', '0');
INSERT INTO `mqu_area` VALUES ('2168', '2164', '都兰县', '0');
INSERT INTO `mqu_area` VALUES ('2169', '2164', '天峻县', '0');
INSERT INTO `mqu_area` VALUES ('2170', '2130', '黄南藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2171', '2170', '同仁县', '0');
INSERT INTO `mqu_area` VALUES ('2172', '2170', '尖扎县', '0');
INSERT INTO `mqu_area` VALUES ('2173', '2170', '泽库县', '0');
INSERT INTO `mqu_area` VALUES ('2174', '2170', '河南蒙古族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2175', '2130', '玉树藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2176', '2175', '玉树县', '0');
INSERT INTO `mqu_area` VALUES ('2177', '2175', '杂多县', '0');
INSERT INTO `mqu_area` VALUES ('2178', '2175', '称多县', '0');
INSERT INTO `mqu_area` VALUES ('2179', '2175', '治多县', '0');
INSERT INTO `mqu_area` VALUES ('2180', '2175', '囊谦县', '0');
INSERT INTO `mqu_area` VALUES ('2181', '2175', '曲麻莱县', '0');
INSERT INTO `mqu_area` VALUES ('2182', '0', '山东', '0');
INSERT INTO `mqu_area` VALUES ('2183', '2182', '济南市', '0');
INSERT INTO `mqu_area` VALUES ('2184', '2183', '历下区', '0');
INSERT INTO `mqu_area` VALUES ('2185', '2183', '市中区', '0');
INSERT INTO `mqu_area` VALUES ('2186', '2183', '槐荫区', '0');
INSERT INTO `mqu_area` VALUES ('2187', '2183', '天桥区', '0');
INSERT INTO `mqu_area` VALUES ('2188', '2183', '历城区', '0');
INSERT INTO `mqu_area` VALUES ('2189', '2183', '长清区', '0');
INSERT INTO `mqu_area` VALUES ('2190', '2183', '平阴县', '0');
INSERT INTO `mqu_area` VALUES ('2191', '2183', '济阳县', '0');
INSERT INTO `mqu_area` VALUES ('2192', '2183', '商河县', '0');
INSERT INTO `mqu_area` VALUES ('2193', '2183', '章丘市', '0');
INSERT INTO `mqu_area` VALUES ('2194', '2182', '滨州市', '0');
INSERT INTO `mqu_area` VALUES ('2195', '2194', '滨城区', '0');
INSERT INTO `mqu_area` VALUES ('2196', '2194', '惠民县', '0');
INSERT INTO `mqu_area` VALUES ('2197', '2194', '阳信县', '0');
INSERT INTO `mqu_area` VALUES ('2198', '2194', '无棣县', '0');
INSERT INTO `mqu_area` VALUES ('2199', '2194', '沾化县', '0');
INSERT INTO `mqu_area` VALUES ('2200', '2194', '博兴县', '0');
INSERT INTO `mqu_area` VALUES ('2201', '2194', '邹平县', '0');
INSERT INTO `mqu_area` VALUES ('2202', '2182', '德州市', '0');
INSERT INTO `mqu_area` VALUES ('2203', '2202', '德城区', '0');
INSERT INTO `mqu_area` VALUES ('2204', '2202', '陵县', '0');
INSERT INTO `mqu_area` VALUES ('2205', '2202', '宁津县', '0');
INSERT INTO `mqu_area` VALUES ('2206', '2202', '庆云县', '0');
INSERT INTO `mqu_area` VALUES ('2207', '2202', '临邑县', '0');
INSERT INTO `mqu_area` VALUES ('2208', '2202', '齐河县', '0');
INSERT INTO `mqu_area` VALUES ('2209', '2202', '平原县', '0');
INSERT INTO `mqu_area` VALUES ('2210', '2202', '夏津县', '0');
INSERT INTO `mqu_area` VALUES ('2211', '2202', '武城县', '0');
INSERT INTO `mqu_area` VALUES ('2212', '2202', '乐陵市', '0');
INSERT INTO `mqu_area` VALUES ('2213', '2202', '禹城市', '0');
INSERT INTO `mqu_area` VALUES ('2214', '2182', '东营市', '0');
INSERT INTO `mqu_area` VALUES ('2215', '2214', '东营区', '0');
INSERT INTO `mqu_area` VALUES ('2216', '2214', '河口区', '0');
INSERT INTO `mqu_area` VALUES ('2217', '2214', '垦利县', '0');
INSERT INTO `mqu_area` VALUES ('2218', '2214', '利津县', '0');
INSERT INTO `mqu_area` VALUES ('2219', '2214', '广饶县', '0');
INSERT INTO `mqu_area` VALUES ('2220', '2182', '菏泽市', '0');
INSERT INTO `mqu_area` VALUES ('2221', '2220', '牡丹区', '0');
INSERT INTO `mqu_area` VALUES ('2222', '2220', '曹县', '0');
INSERT INTO `mqu_area` VALUES ('2223', '2220', '单县', '0');
INSERT INTO `mqu_area` VALUES ('2224', '2220', '成武县', '0');
INSERT INTO `mqu_area` VALUES ('2225', '2220', '巨野县', '0');
INSERT INTO `mqu_area` VALUES ('2226', '2220', '郓城县', '0');
INSERT INTO `mqu_area` VALUES ('2227', '2220', '鄄城县', '0');
INSERT INTO `mqu_area` VALUES ('2228', '2220', '定陶县', '0');
INSERT INTO `mqu_area` VALUES ('2229', '2220', '东明县', '0');
INSERT INTO `mqu_area` VALUES ('2230', '2182', '济宁市', '0');
INSERT INTO `mqu_area` VALUES ('2231', '2230', '市中区', '0');
INSERT INTO `mqu_area` VALUES ('2232', '2230', '任城区', '0');
INSERT INTO `mqu_area` VALUES ('2233', '2230', '微山县', '0');
INSERT INTO `mqu_area` VALUES ('2234', '2230', '鱼台县', '0');
INSERT INTO `mqu_area` VALUES ('2235', '2230', '金乡县', '0');
INSERT INTO `mqu_area` VALUES ('2236', '2230', '嘉祥县', '0');
INSERT INTO `mqu_area` VALUES ('2237', '2230', '汶上县', '0');
INSERT INTO `mqu_area` VALUES ('2238', '2230', '泗水县', '0');
INSERT INTO `mqu_area` VALUES ('2239', '2230', '梁山县', '0');
INSERT INTO `mqu_area` VALUES ('2240', '2230', '曲阜市', '0');
INSERT INTO `mqu_area` VALUES ('2241', '2230', '兖州市', '0');
INSERT INTO `mqu_area` VALUES ('2242', '2230', '邹城市', '0');
INSERT INTO `mqu_area` VALUES ('2243', '2182', '莱芜市', '0');
INSERT INTO `mqu_area` VALUES ('2244', '2243', '莱城区', '0');
INSERT INTO `mqu_area` VALUES ('2245', '2243', '钢城区', '0');
INSERT INTO `mqu_area` VALUES ('2246', '2182', '聊城市', '0');
INSERT INTO `mqu_area` VALUES ('2247', '2246', '东昌府区', '0');
INSERT INTO `mqu_area` VALUES ('2248', '2246', '阳谷县', '0');
INSERT INTO `mqu_area` VALUES ('2249', '2246', '莘县', '0');
INSERT INTO `mqu_area` VALUES ('2250', '2246', '茌平县', '0');
INSERT INTO `mqu_area` VALUES ('2251', '2246', '东阿县', '0');
INSERT INTO `mqu_area` VALUES ('2252', '2246', '冠县', '0');
INSERT INTO `mqu_area` VALUES ('2253', '2246', '高唐县', '0');
INSERT INTO `mqu_area` VALUES ('2254', '2246', '临清市', '0');
INSERT INTO `mqu_area` VALUES ('2255', '2182', '临沂市', '0');
INSERT INTO `mqu_area` VALUES ('2256', '2255', '兰山区', '0');
INSERT INTO `mqu_area` VALUES ('2257', '2255', '罗庄区', '0');
INSERT INTO `mqu_area` VALUES ('2258', '2255', '河东区', '0');
INSERT INTO `mqu_area` VALUES ('2259', '2255', '沂南县', '0');
INSERT INTO `mqu_area` VALUES ('2260', '2255', '郯城县', '0');
INSERT INTO `mqu_area` VALUES ('2261', '2255', '沂水县', '0');
INSERT INTO `mqu_area` VALUES ('2262', '2255', '苍山县', '0');
INSERT INTO `mqu_area` VALUES ('2263', '2255', '费县', '0');
INSERT INTO `mqu_area` VALUES ('2264', '2255', '平邑县', '0');
INSERT INTO `mqu_area` VALUES ('2265', '2255', '莒南县', '0');
INSERT INTO `mqu_area` VALUES ('2266', '2255', '蒙阴县', '0');
INSERT INTO `mqu_area` VALUES ('2267', '2255', '临沭县', '0');
INSERT INTO `mqu_area` VALUES ('2268', '2182', '青岛市', '0');
INSERT INTO `mqu_area` VALUES ('2269', '2268', '市南区', '0');
INSERT INTO `mqu_area` VALUES ('2270', '2268', '市北区', '0');
INSERT INTO `mqu_area` VALUES ('2271', '2268', '四方区', '0');
INSERT INTO `mqu_area` VALUES ('2272', '2268', '黄岛区', '0');
INSERT INTO `mqu_area` VALUES ('2273', '2268', '崂山区', '0');
INSERT INTO `mqu_area` VALUES ('2274', '2268', '李沧区', '0');
INSERT INTO `mqu_area` VALUES ('2275', '2268', '城阳区', '0');
INSERT INTO `mqu_area` VALUES ('2276', '2268', '胶州市', '0');
INSERT INTO `mqu_area` VALUES ('2277', '2268', '即墨市', '0');
INSERT INTO `mqu_area` VALUES ('2278', '2268', '平度市', '0');
INSERT INTO `mqu_area` VALUES ('2279', '2268', '胶南市', '0');
INSERT INTO `mqu_area` VALUES ('2280', '2268', '莱西市', '0');
INSERT INTO `mqu_area` VALUES ('2281', '2182', '日照市', '0');
INSERT INTO `mqu_area` VALUES ('2282', '2281', '东港区', '0');
INSERT INTO `mqu_area` VALUES ('2283', '2281', '岚山区', '0');
INSERT INTO `mqu_area` VALUES ('2284', '2281', '五莲县', '0');
INSERT INTO `mqu_area` VALUES ('2285', '2281', '莒县', '0');
INSERT INTO `mqu_area` VALUES ('2286', '2182', '泰安市', '0');
INSERT INTO `mqu_area` VALUES ('2287', '2286', '泰山区', '0');
INSERT INTO `mqu_area` VALUES ('2288', '2286', '岱岳区', '0');
INSERT INTO `mqu_area` VALUES ('2289', '2286', '宁阳县', '0');
INSERT INTO `mqu_area` VALUES ('2290', '2286', '东平县', '0');
INSERT INTO `mqu_area` VALUES ('2291', '2286', '新泰市', '0');
INSERT INTO `mqu_area` VALUES ('2292', '2286', '肥城市', '0');
INSERT INTO `mqu_area` VALUES ('2293', '2182', '威海市', '0');
INSERT INTO `mqu_area` VALUES ('2294', '2293', '环翠区', '0');
INSERT INTO `mqu_area` VALUES ('2295', '2293', '文登市', '0');
INSERT INTO `mqu_area` VALUES ('2296', '2293', '荣成市', '0');
INSERT INTO `mqu_area` VALUES ('2297', '2293', '乳山市', '0');
INSERT INTO `mqu_area` VALUES ('2298', '2182', '潍坊市', '0');
INSERT INTO `mqu_area` VALUES ('2299', '2298', '潍城区', '0');
INSERT INTO `mqu_area` VALUES ('2300', '2298', '寒亭区', '0');
INSERT INTO `mqu_area` VALUES ('2301', '2298', '坊子区', '0');
INSERT INTO `mqu_area` VALUES ('2302', '2298', '奎文区', '0');
INSERT INTO `mqu_area` VALUES ('2303', '2298', '临朐县', '0');
INSERT INTO `mqu_area` VALUES ('2304', '2298', '昌乐县', '0');
INSERT INTO `mqu_area` VALUES ('2305', '2298', '青州市', '0');
INSERT INTO `mqu_area` VALUES ('2306', '2298', '诸城市', '0');
INSERT INTO `mqu_area` VALUES ('2307', '2298', '寿光市', '0');
INSERT INTO `mqu_area` VALUES ('2308', '2298', '安丘市', '0');
INSERT INTO `mqu_area` VALUES ('2309', '2298', '高密市', '0');
INSERT INTO `mqu_area` VALUES ('2310', '2298', '昌邑市', '0');
INSERT INTO `mqu_area` VALUES ('2311', '2182', '烟台市', '0');
INSERT INTO `mqu_area` VALUES ('2312', '2311', '芝罘区', '0');
INSERT INTO `mqu_area` VALUES ('2313', '2311', '福山区', '0');
INSERT INTO `mqu_area` VALUES ('2314', '2311', '牟平区', '0');
INSERT INTO `mqu_area` VALUES ('2315', '2311', '莱山区', '0');
INSERT INTO `mqu_area` VALUES ('2316', '2311', '长岛县', '0');
INSERT INTO `mqu_area` VALUES ('2317', '2311', '龙口市', '0');
INSERT INTO `mqu_area` VALUES ('2318', '2311', '莱阳市', '0');
INSERT INTO `mqu_area` VALUES ('2319', '2311', '莱州市', '0');
INSERT INTO `mqu_area` VALUES ('2320', '2311', '蓬莱市', '0');
INSERT INTO `mqu_area` VALUES ('2321', '2311', '招远市', '0');
INSERT INTO `mqu_area` VALUES ('2322', '2311', '栖霞市', '0');
INSERT INTO `mqu_area` VALUES ('2323', '2311', '海阳市', '0');
INSERT INTO `mqu_area` VALUES ('2324', '2182', '枣庄市', '0');
INSERT INTO `mqu_area` VALUES ('2325', '2324', '市中区', '0');
INSERT INTO `mqu_area` VALUES ('2326', '2324', '薛城区', '0');
INSERT INTO `mqu_area` VALUES ('2327', '2324', '峄城区', '0');
INSERT INTO `mqu_area` VALUES ('2328', '2324', '台儿庄区', '0');
INSERT INTO `mqu_area` VALUES ('2329', '2324', '山亭区', '0');
INSERT INTO `mqu_area` VALUES ('2330', '2324', '滕州市', '0');
INSERT INTO `mqu_area` VALUES ('2331', '2182', '淄博市', '0');
INSERT INTO `mqu_area` VALUES ('2332', '2331', '淄川区', '0');
INSERT INTO `mqu_area` VALUES ('2333', '2331', '张店区', '0');
INSERT INTO `mqu_area` VALUES ('2334', '2331', '博山区', '0');
INSERT INTO `mqu_area` VALUES ('2335', '2331', '临淄区', '0');
INSERT INTO `mqu_area` VALUES ('2336', '2331', '周村区', '0');
INSERT INTO `mqu_area` VALUES ('2337', '2331', '桓台县', '0');
INSERT INTO `mqu_area` VALUES ('2338', '2331', '高青县', '0');
INSERT INTO `mqu_area` VALUES ('2339', '2331', '沂源县', '0');
INSERT INTO `mqu_area` VALUES ('2340', '0', '山西', '0');
INSERT INTO `mqu_area` VALUES ('2341', '2340', '太原市', '0');
INSERT INTO `mqu_area` VALUES ('2342', '2341', '小店区', '0');
INSERT INTO `mqu_area` VALUES ('2343', '2341', '迎泽区', '0');
INSERT INTO `mqu_area` VALUES ('2344', '2341', '杏花岭区', '0');
INSERT INTO `mqu_area` VALUES ('2345', '2341', '尖草坪区', '0');
INSERT INTO `mqu_area` VALUES ('2346', '2341', '万柏林区', '0');
INSERT INTO `mqu_area` VALUES ('2347', '2341', '晋源区', '0');
INSERT INTO `mqu_area` VALUES ('2348', '2341', '清徐县', '0');
INSERT INTO `mqu_area` VALUES ('2349', '2341', '阳曲县', '0');
INSERT INTO `mqu_area` VALUES ('2350', '2341', '娄烦县', '0');
INSERT INTO `mqu_area` VALUES ('2351', '2341', '古交市', '0');
INSERT INTO `mqu_area` VALUES ('2352', '2340', '长治市', '0');
INSERT INTO `mqu_area` VALUES ('2353', '2352', '城区', '0');
INSERT INTO `mqu_area` VALUES ('2354', '2352', '郊区', '0');
INSERT INTO `mqu_area` VALUES ('2355', '2352', '长治县', '0');
INSERT INTO `mqu_area` VALUES ('2356', '2352', '襄垣县', '0');
INSERT INTO `mqu_area` VALUES ('2357', '2352', '屯留县', '0');
INSERT INTO `mqu_area` VALUES ('2358', '2352', '平顺县', '0');
INSERT INTO `mqu_area` VALUES ('2359', '2352', '黎城县', '0');
INSERT INTO `mqu_area` VALUES ('2360', '2352', '壶关县', '0');
INSERT INTO `mqu_area` VALUES ('2361', '2352', '长子县', '0');
INSERT INTO `mqu_area` VALUES ('2362', '2352', '武乡县', '0');
INSERT INTO `mqu_area` VALUES ('2363', '2352', '沁县', '0');
INSERT INTO `mqu_area` VALUES ('2364', '2352', '沁源县', '0');
INSERT INTO `mqu_area` VALUES ('2365', '2352', '潞城市', '0');
INSERT INTO `mqu_area` VALUES ('2366', '2340', '大同市', '0');
INSERT INTO `mqu_area` VALUES ('2367', '2366', '城区', '0');
INSERT INTO `mqu_area` VALUES ('2368', '2366', '矿区', '0');
INSERT INTO `mqu_area` VALUES ('2369', '2366', '南郊区', '0');
INSERT INTO `mqu_area` VALUES ('2370', '2366', '新荣区', '0');
INSERT INTO `mqu_area` VALUES ('2371', '2366', '阳高县', '0');
INSERT INTO `mqu_area` VALUES ('2372', '2366', '天镇县', '0');
INSERT INTO `mqu_area` VALUES ('2373', '2366', '广灵县', '0');
INSERT INTO `mqu_area` VALUES ('2374', '2366', '灵丘县', '0');
INSERT INTO `mqu_area` VALUES ('2375', '2366', '浑源县', '0');
INSERT INTO `mqu_area` VALUES ('2376', '2366', '左云县', '0');
INSERT INTO `mqu_area` VALUES ('2377', '2366', '大同县', '0');
INSERT INTO `mqu_area` VALUES ('2378', '2340', '晋城市', '0');
INSERT INTO `mqu_area` VALUES ('2379', '2378', '城区', '0');
INSERT INTO `mqu_area` VALUES ('2380', '2378', '沁水县', '0');
INSERT INTO `mqu_area` VALUES ('2381', '2378', '阳城县', '0');
INSERT INTO `mqu_area` VALUES ('2382', '2378', '陵川县', '0');
INSERT INTO `mqu_area` VALUES ('2383', '2378', '泽州县', '0');
INSERT INTO `mqu_area` VALUES ('2384', '2378', '高平市', '0');
INSERT INTO `mqu_area` VALUES ('2385', '2340', '晋中市', '0');
INSERT INTO `mqu_area` VALUES ('2386', '2385', '榆次区', '0');
INSERT INTO `mqu_area` VALUES ('2387', '2385', '榆社县', '0');
INSERT INTO `mqu_area` VALUES ('2388', '2385', '左权县', '0');
INSERT INTO `mqu_area` VALUES ('2389', '2385', '和顺县', '0');
INSERT INTO `mqu_area` VALUES ('2390', '2385', '昔阳县', '0');
INSERT INTO `mqu_area` VALUES ('2391', '2385', '寿阳县', '0');
INSERT INTO `mqu_area` VALUES ('2392', '2385', '太谷县', '0');
INSERT INTO `mqu_area` VALUES ('2393', '2385', '祁县', '0');
INSERT INTO `mqu_area` VALUES ('2394', '2385', '平遥县', '0');
INSERT INTO `mqu_area` VALUES ('2395', '2385', '灵石县', '0');
INSERT INTO `mqu_area` VALUES ('2396', '2385', '介休市', '0');
INSERT INTO `mqu_area` VALUES ('2397', '2340', '临汾市', '0');
INSERT INTO `mqu_area` VALUES ('2398', '2397', '尧都区', '0');
INSERT INTO `mqu_area` VALUES ('2399', '2397', '曲沃县', '0');
INSERT INTO `mqu_area` VALUES ('2400', '2397', '翼城县', '0');
INSERT INTO `mqu_area` VALUES ('2401', '2397', '襄汾县', '0');
INSERT INTO `mqu_area` VALUES ('2402', '2397', '洪洞县', '0');
INSERT INTO `mqu_area` VALUES ('2403', '2397', '古县', '0');
INSERT INTO `mqu_area` VALUES ('2404', '2397', '安泽县', '0');
INSERT INTO `mqu_area` VALUES ('2405', '2397', '浮山县', '0');
INSERT INTO `mqu_area` VALUES ('2406', '2397', '吉县', '0');
INSERT INTO `mqu_area` VALUES ('2407', '2397', '乡宁县', '0');
INSERT INTO `mqu_area` VALUES ('2408', '2397', '大宁县', '0');
INSERT INTO `mqu_area` VALUES ('2409', '2397', '隰县', '0');
INSERT INTO `mqu_area` VALUES ('2410', '2397', '永和县', '0');
INSERT INTO `mqu_area` VALUES ('2411', '2397', '蒲县', '0');
INSERT INTO `mqu_area` VALUES ('2412', '2397', '汾西县', '0');
INSERT INTO `mqu_area` VALUES ('2413', '2397', '侯马市', '0');
INSERT INTO `mqu_area` VALUES ('2414', '2397', '霍州市', '0');
INSERT INTO `mqu_area` VALUES ('2415', '2340', '吕梁市', '0');
INSERT INTO `mqu_area` VALUES ('2416', '2415', '离石区', '0');
INSERT INTO `mqu_area` VALUES ('2417', '2415', '文水县', '0');
INSERT INTO `mqu_area` VALUES ('2418', '2415', '交城县', '0');
INSERT INTO `mqu_area` VALUES ('2419', '2415', '兴县', '0');
INSERT INTO `mqu_area` VALUES ('2420', '2415', '临县', '0');
INSERT INTO `mqu_area` VALUES ('2421', '2415', '柳林县', '0');
INSERT INTO `mqu_area` VALUES ('2422', '2415', '石楼县', '0');
INSERT INTO `mqu_area` VALUES ('2423', '2415', '岚县', '0');
INSERT INTO `mqu_area` VALUES ('2424', '2415', '方山县', '0');
INSERT INTO `mqu_area` VALUES ('2425', '2415', '中阳县', '0');
INSERT INTO `mqu_area` VALUES ('2426', '2415', '交口县', '0');
INSERT INTO `mqu_area` VALUES ('2427', '2415', '孝义市', '0');
INSERT INTO `mqu_area` VALUES ('2428', '2415', '汾阳市', '0');
INSERT INTO `mqu_area` VALUES ('2429', '2340', '朔州市', '0');
INSERT INTO `mqu_area` VALUES ('2430', '2429', '朔城区', '0');
INSERT INTO `mqu_area` VALUES ('2431', '2429', '平鲁区', '0');
INSERT INTO `mqu_area` VALUES ('2432', '2429', '山阴县', '0');
INSERT INTO `mqu_area` VALUES ('2433', '2429', '应县', '0');
INSERT INTO `mqu_area` VALUES ('2434', '2429', '右玉县', '0');
INSERT INTO `mqu_area` VALUES ('2435', '2429', '怀仁县', '0');
INSERT INTO `mqu_area` VALUES ('2436', '2340', '忻州市', '0');
INSERT INTO `mqu_area` VALUES ('2437', '2436', '忻府区', '0');
INSERT INTO `mqu_area` VALUES ('2438', '2436', '定襄县', '0');
INSERT INTO `mqu_area` VALUES ('2439', '2436', '五台县', '0');
INSERT INTO `mqu_area` VALUES ('2440', '2436', '代县', '0');
INSERT INTO `mqu_area` VALUES ('2441', '2436', '繁峙县', '0');
INSERT INTO `mqu_area` VALUES ('2442', '2436', '宁武县', '0');
INSERT INTO `mqu_area` VALUES ('2443', '2436', '静乐县', '0');
INSERT INTO `mqu_area` VALUES ('2444', '2436', '神池县', '0');
INSERT INTO `mqu_area` VALUES ('2445', '2436', '五寨县', '0');
INSERT INTO `mqu_area` VALUES ('2446', '2436', '岢岚县', '0');
INSERT INTO `mqu_area` VALUES ('2447', '2436', '河曲县', '0');
INSERT INTO `mqu_area` VALUES ('2448', '2436', '保德县', '0');
INSERT INTO `mqu_area` VALUES ('2449', '2436', '偏关县', '0');
INSERT INTO `mqu_area` VALUES ('2450', '2436', '原平市', '0');
INSERT INTO `mqu_area` VALUES ('2451', '2340', '阳泉市', '0');
INSERT INTO `mqu_area` VALUES ('2452', '2451', '城区', '0');
INSERT INTO `mqu_area` VALUES ('2453', '2451', '矿区', '0');
INSERT INTO `mqu_area` VALUES ('2454', '2451', '郊区', '0');
INSERT INTO `mqu_area` VALUES ('2455', '2451', '平定县', '0');
INSERT INTO `mqu_area` VALUES ('2456', '2451', '盂县', '0');
INSERT INTO `mqu_area` VALUES ('2457', '2340', '运城市', '0');
INSERT INTO `mqu_area` VALUES ('2458', '2457', '盐湖区', '0');
INSERT INTO `mqu_area` VALUES ('2459', '2457', '临猗县', '0');
INSERT INTO `mqu_area` VALUES ('2460', '2457', '万荣县', '0');
INSERT INTO `mqu_area` VALUES ('2461', '2457', '闻喜县', '0');
INSERT INTO `mqu_area` VALUES ('2462', '2457', '稷山县', '0');
INSERT INTO `mqu_area` VALUES ('2463', '2457', '新绛县', '0');
INSERT INTO `mqu_area` VALUES ('2464', '2457', '绛县', '0');
INSERT INTO `mqu_area` VALUES ('2465', '2457', '垣曲县', '0');
INSERT INTO `mqu_area` VALUES ('2466', '2457', '夏县', '0');
INSERT INTO `mqu_area` VALUES ('2467', '2457', '平陆县', '0');
INSERT INTO `mqu_area` VALUES ('2468', '2457', '芮城县', '0');
INSERT INTO `mqu_area` VALUES ('2469', '2457', '永济市', '0');
INSERT INTO `mqu_area` VALUES ('2470', '2457', '河津市', '0');
INSERT INTO `mqu_area` VALUES ('2471', '0', '陕西', '0');
INSERT INTO `mqu_area` VALUES ('2472', '2471', '西安市', '0');
INSERT INTO `mqu_area` VALUES ('2473', '2472', '新城区', '0');
INSERT INTO `mqu_area` VALUES ('2474', '2472', '碑林区', '0');
INSERT INTO `mqu_area` VALUES ('2475', '2472', '莲湖区', '0');
INSERT INTO `mqu_area` VALUES ('2476', '2472', '灞桥区', '0');
INSERT INTO `mqu_area` VALUES ('2477', '2472', '未央区', '0');
INSERT INTO `mqu_area` VALUES ('2478', '2472', '雁塔区', '0');
INSERT INTO `mqu_area` VALUES ('2479', '2472', '阎良区', '0');
INSERT INTO `mqu_area` VALUES ('2480', '2472', '临潼区', '0');
INSERT INTO `mqu_area` VALUES ('2481', '2472', '长安区', '0');
INSERT INTO `mqu_area` VALUES ('2482', '2472', '蓝田县', '0');
INSERT INTO `mqu_area` VALUES ('2483', '2472', '周至县', '0');
INSERT INTO `mqu_area` VALUES ('2484', '2472', '户县', '0');
INSERT INTO `mqu_area` VALUES ('2485', '2472', '高陵县', '0');
INSERT INTO `mqu_area` VALUES ('2486', '2471', '安康市', '0');
INSERT INTO `mqu_area` VALUES ('2487', '2486', '汉滨区', '0');
INSERT INTO `mqu_area` VALUES ('2488', '2486', '汉阴县', '0');
INSERT INTO `mqu_area` VALUES ('2489', '2486', '石泉县', '0');
INSERT INTO `mqu_area` VALUES ('2490', '2486', '宁陕县', '0');
INSERT INTO `mqu_area` VALUES ('2491', '2486', '紫阳县', '0');
INSERT INTO `mqu_area` VALUES ('2492', '2486', '岚皋县', '0');
INSERT INTO `mqu_area` VALUES ('2493', '2486', '平利县', '0');
INSERT INTO `mqu_area` VALUES ('2494', '2486', '镇坪县', '0');
INSERT INTO `mqu_area` VALUES ('2495', '2486', '旬阳县', '0');
INSERT INTO `mqu_area` VALUES ('2496', '2486', '白河县', '0');
INSERT INTO `mqu_area` VALUES ('2497', '2471', '宝鸡市', '0');
INSERT INTO `mqu_area` VALUES ('2498', '2497', '渭滨区', '0');
INSERT INTO `mqu_area` VALUES ('2499', '2497', '金台区', '0');
INSERT INTO `mqu_area` VALUES ('2500', '2497', '陈仓区', '0');
INSERT INTO `mqu_area` VALUES ('2501', '2497', '凤翔县', '0');
INSERT INTO `mqu_area` VALUES ('2502', '2497', '岐山县', '0');
INSERT INTO `mqu_area` VALUES ('2503', '2497', '扶风县', '0');
INSERT INTO `mqu_area` VALUES ('2504', '2497', '眉县', '0');
INSERT INTO `mqu_area` VALUES ('2505', '2497', '陇县', '0');
INSERT INTO `mqu_area` VALUES ('2506', '2497', '千阳县', '0');
INSERT INTO `mqu_area` VALUES ('2507', '2497', '麟游县', '0');
INSERT INTO `mqu_area` VALUES ('2508', '2497', '凤县', '0');
INSERT INTO `mqu_area` VALUES ('2509', '2497', '太白县', '0');
INSERT INTO `mqu_area` VALUES ('2510', '2471', '汉中市', '0');
INSERT INTO `mqu_area` VALUES ('2511', '2510', '汉台区', '0');
INSERT INTO `mqu_area` VALUES ('2512', '2510', '南郑县', '0');
INSERT INTO `mqu_area` VALUES ('2513', '2510', '城固县', '0');
INSERT INTO `mqu_area` VALUES ('2514', '2510', '洋县', '0');
INSERT INTO `mqu_area` VALUES ('2515', '2510', '西乡县', '0');
INSERT INTO `mqu_area` VALUES ('2516', '2510', '勉县', '0');
INSERT INTO `mqu_area` VALUES ('2517', '2510', '宁强县', '0');
INSERT INTO `mqu_area` VALUES ('2518', '2510', '略阳县', '0');
INSERT INTO `mqu_area` VALUES ('2519', '2510', '镇巴县', '0');
INSERT INTO `mqu_area` VALUES ('2520', '2510', '留坝县', '0');
INSERT INTO `mqu_area` VALUES ('2521', '2510', '佛坪县', '0');
INSERT INTO `mqu_area` VALUES ('2522', '2471', '商洛市', '0');
INSERT INTO `mqu_area` VALUES ('2523', '2522', '商州区', '0');
INSERT INTO `mqu_area` VALUES ('2524', '2522', '洛南县', '0');
INSERT INTO `mqu_area` VALUES ('2525', '2522', '丹凤县', '0');
INSERT INTO `mqu_area` VALUES ('2526', '2522', '商南县', '0');
INSERT INTO `mqu_area` VALUES ('2527', '2522', '山阳县', '0');
INSERT INTO `mqu_area` VALUES ('2528', '2522', '镇安县', '0');
INSERT INTO `mqu_area` VALUES ('2529', '2522', '柞水县', '0');
INSERT INTO `mqu_area` VALUES ('2530', '2471', '铜川市', '0');
INSERT INTO `mqu_area` VALUES ('2531', '2530', '王益区', '0');
INSERT INTO `mqu_area` VALUES ('2532', '2530', '印台区', '0');
INSERT INTO `mqu_area` VALUES ('2533', '2530', '耀州区', '0');
INSERT INTO `mqu_area` VALUES ('2534', '2530', '宜君县', '0');
INSERT INTO `mqu_area` VALUES ('2535', '2471', '渭南市', '0');
INSERT INTO `mqu_area` VALUES ('2536', '2535', '临渭区', '0');
INSERT INTO `mqu_area` VALUES ('2537', '2535', '华县', '0');
INSERT INTO `mqu_area` VALUES ('2538', '2535', '潼关县', '0');
INSERT INTO `mqu_area` VALUES ('2539', '2535', '大荔县', '0');
INSERT INTO `mqu_area` VALUES ('2540', '2535', '合阳县', '0');
INSERT INTO `mqu_area` VALUES ('2541', '2535', '澄城县', '0');
INSERT INTO `mqu_area` VALUES ('2542', '2535', '蒲城县', '0');
INSERT INTO `mqu_area` VALUES ('2543', '2535', '白水县', '0');
INSERT INTO `mqu_area` VALUES ('2544', '2535', '富平县', '0');
INSERT INTO `mqu_area` VALUES ('2545', '2535', '韩城市', '0');
INSERT INTO `mqu_area` VALUES ('2546', '2535', '华阴市', '0');
INSERT INTO `mqu_area` VALUES ('2547', '2471', '咸阳市', '0');
INSERT INTO `mqu_area` VALUES ('2548', '2547', '秦都区', '0');
INSERT INTO `mqu_area` VALUES ('2549', '2547', '杨凌区', '0');
INSERT INTO `mqu_area` VALUES ('2550', '2547', '渭城区', '0');
INSERT INTO `mqu_area` VALUES ('2551', '2547', '三原县', '0');
INSERT INTO `mqu_area` VALUES ('2552', '2547', '泾阳县', '0');
INSERT INTO `mqu_area` VALUES ('2553', '2547', '乾县', '0');
INSERT INTO `mqu_area` VALUES ('2554', '2547', '礼泉县', '0');
INSERT INTO `mqu_area` VALUES ('2555', '2547', '永寿县', '0');
INSERT INTO `mqu_area` VALUES ('2556', '2547', '彬县', '0');
INSERT INTO `mqu_area` VALUES ('2557', '2547', '长武县', '0');
INSERT INTO `mqu_area` VALUES ('2558', '2547', '旬邑县', '0');
INSERT INTO `mqu_area` VALUES ('2559', '2547', '淳化县', '0');
INSERT INTO `mqu_area` VALUES ('2560', '2547', '武功县', '0');
INSERT INTO `mqu_area` VALUES ('2561', '2547', '兴平市', '0');
INSERT INTO `mqu_area` VALUES ('2562', '2471', '延安市', '0');
INSERT INTO `mqu_area` VALUES ('2563', '2562', '宝塔区', '0');
INSERT INTO `mqu_area` VALUES ('2564', '2562', '延长县', '0');
INSERT INTO `mqu_area` VALUES ('2565', '2562', '延川县', '0');
INSERT INTO `mqu_area` VALUES ('2566', '2562', '子长县', '0');
INSERT INTO `mqu_area` VALUES ('2567', '2562', '安塞县', '0');
INSERT INTO `mqu_area` VALUES ('2568', '2562', '志丹县', '0');
INSERT INTO `mqu_area` VALUES ('2569', '2562', '吴旗县', '0');
INSERT INTO `mqu_area` VALUES ('2570', '2562', '甘泉县', '0');
INSERT INTO `mqu_area` VALUES ('2571', '2562', '富县', '0');
INSERT INTO `mqu_area` VALUES ('2572', '2562', '洛川县', '0');
INSERT INTO `mqu_area` VALUES ('2573', '2562', '宜川县', '0');
INSERT INTO `mqu_area` VALUES ('2574', '2562', '黄龙县', '0');
INSERT INTO `mqu_area` VALUES ('2575', '2562', '黄陵县', '0');
INSERT INTO `mqu_area` VALUES ('2576', '2471', '榆林市', '0');
INSERT INTO `mqu_area` VALUES ('2577', '2576', '榆阳区', '0');
INSERT INTO `mqu_area` VALUES ('2578', '2576', '神木县', '0');
INSERT INTO `mqu_area` VALUES ('2579', '2576', '府谷县', '0');
INSERT INTO `mqu_area` VALUES ('2580', '2576', '横山县', '0');
INSERT INTO `mqu_area` VALUES ('2581', '2576', '靖边县', '0');
INSERT INTO `mqu_area` VALUES ('2582', '2576', '定边县', '0');
INSERT INTO `mqu_area` VALUES ('2583', '2576', '绥德县', '0');
INSERT INTO `mqu_area` VALUES ('2584', '2576', '米脂县', '0');
INSERT INTO `mqu_area` VALUES ('2585', '2576', '佳县', '0');
INSERT INTO `mqu_area` VALUES ('2586', '2576', '吴堡县', '0');
INSERT INTO `mqu_area` VALUES ('2587', '2576', '清涧县', '0');
INSERT INTO `mqu_area` VALUES ('2588', '2576', '子洲县', '0');
INSERT INTO `mqu_area` VALUES ('2589', '0', '四川', '0');
INSERT INTO `mqu_area` VALUES ('2590', '2589', '成都市', '0');
INSERT INTO `mqu_area` VALUES ('2591', '2590', '锦江区', '0');
INSERT INTO `mqu_area` VALUES ('2592', '2590', '青羊区', '0');
INSERT INTO `mqu_area` VALUES ('2593', '2590', '金牛区', '0');
INSERT INTO `mqu_area` VALUES ('2594', '2590', '武侯区', '0');
INSERT INTO `mqu_area` VALUES ('2595', '2590', '成华区', '0');
INSERT INTO `mqu_area` VALUES ('2596', '2590', '龙泉驿区', '0');
INSERT INTO `mqu_area` VALUES ('2597', '2590', '青白江区', '0');
INSERT INTO `mqu_area` VALUES ('2598', '2590', '新都区', '0');
INSERT INTO `mqu_area` VALUES ('2599', '2590', '温江区', '0');
INSERT INTO `mqu_area` VALUES ('2600', '2590', '金堂县', '0');
INSERT INTO `mqu_area` VALUES ('2601', '2590', '双流县', '0');
INSERT INTO `mqu_area` VALUES ('2602', '2590', '郫县', '0');
INSERT INTO `mqu_area` VALUES ('2603', '2590', '大邑县', '0');
INSERT INTO `mqu_area` VALUES ('2604', '2590', '蒲江县', '0');
INSERT INTO `mqu_area` VALUES ('2605', '2590', '新津县', '0');
INSERT INTO `mqu_area` VALUES ('2606', '2590', '都江堰市', '0');
INSERT INTO `mqu_area` VALUES ('2607', '2590', '彭州市', '0');
INSERT INTO `mqu_area` VALUES ('2608', '2590', '邛崃市', '0');
INSERT INTO `mqu_area` VALUES ('2609', '2590', '崇州市', '0');
INSERT INTO `mqu_area` VALUES ('2610', '2589', '阿坝藏族羌族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2611', '2610', '汶川县', '0');
INSERT INTO `mqu_area` VALUES ('2612', '2610', '理县', '0');
INSERT INTO `mqu_area` VALUES ('2613', '2610', '茂县', '0');
INSERT INTO `mqu_area` VALUES ('2614', '2610', '松潘县', '0');
INSERT INTO `mqu_area` VALUES ('2615', '2610', '九寨沟县', '0');
INSERT INTO `mqu_area` VALUES ('2616', '2610', '金川县', '0');
INSERT INTO `mqu_area` VALUES ('2617', '2610', '小金县', '0');
INSERT INTO `mqu_area` VALUES ('2618', '2610', '黑水县', '0');
INSERT INTO `mqu_area` VALUES ('2619', '2610', '马尔康县', '0');
INSERT INTO `mqu_area` VALUES ('2620', '2610', '壤塘县', '0');
INSERT INTO `mqu_area` VALUES ('2621', '2610', '阿坝县', '0');
INSERT INTO `mqu_area` VALUES ('2622', '2610', '若尔盖县', '0');
INSERT INTO `mqu_area` VALUES ('2623', '2610', '红原县', '0');
INSERT INTO `mqu_area` VALUES ('2624', '2589', '巴中市', '0');
INSERT INTO `mqu_area` VALUES ('2625', '2624', '巴州区', '0');
INSERT INTO `mqu_area` VALUES ('2626', '2624', '通江县', '0');
INSERT INTO `mqu_area` VALUES ('2627', '2624', '南江县', '0');
INSERT INTO `mqu_area` VALUES ('2628', '2624', '平昌县', '0');
INSERT INTO `mqu_area` VALUES ('2629', '2589', '达州市', '0');
INSERT INTO `mqu_area` VALUES ('2630', '2629', '通川区', '0');
INSERT INTO `mqu_area` VALUES ('2631', '2629', '达县', '0');
INSERT INTO `mqu_area` VALUES ('2632', '2629', '宣汉县', '0');
INSERT INTO `mqu_area` VALUES ('2633', '2629', '开江县', '0');
INSERT INTO `mqu_area` VALUES ('2634', '2629', '大竹县', '0');
INSERT INTO `mqu_area` VALUES ('2635', '2629', '渠县', '0');
INSERT INTO `mqu_area` VALUES ('2636', '2629', '万源市', '0');
INSERT INTO `mqu_area` VALUES ('2637', '2589', '德阳市', '0');
INSERT INTO `mqu_area` VALUES ('2638', '2637', '旌阳区', '0');
INSERT INTO `mqu_area` VALUES ('2639', '2637', '中江县', '0');
INSERT INTO `mqu_area` VALUES ('2640', '2637', '罗江县', '0');
INSERT INTO `mqu_area` VALUES ('2641', '2637', '广汉市', '0');
INSERT INTO `mqu_area` VALUES ('2642', '2637', '什邡市', '0');
INSERT INTO `mqu_area` VALUES ('2643', '2637', '绵竹市', '0');
INSERT INTO `mqu_area` VALUES ('2644', '2589', '甘孜藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2645', '2644', '康定县', '0');
INSERT INTO `mqu_area` VALUES ('2646', '2644', '泸定县', '0');
INSERT INTO `mqu_area` VALUES ('2647', '2644', '丹巴县', '0');
INSERT INTO `mqu_area` VALUES ('2648', '2644', '九龙县', '0');
INSERT INTO `mqu_area` VALUES ('2649', '2644', '雅江县', '0');
INSERT INTO `mqu_area` VALUES ('2650', '2644', '道孚县', '0');
INSERT INTO `mqu_area` VALUES ('2651', '2644', '炉霍县', '0');
INSERT INTO `mqu_area` VALUES ('2652', '2644', '甘孜县', '0');
INSERT INTO `mqu_area` VALUES ('2653', '2644', '新龙县', '0');
INSERT INTO `mqu_area` VALUES ('2654', '2644', '德格县', '0');
INSERT INTO `mqu_area` VALUES ('2655', '2644', '白玉县', '0');
INSERT INTO `mqu_area` VALUES ('2656', '2644', '石渠县', '0');
INSERT INTO `mqu_area` VALUES ('2657', '2644', '色达县', '0');
INSERT INTO `mqu_area` VALUES ('2658', '2644', '理塘县', '0');
INSERT INTO `mqu_area` VALUES ('2659', '2644', '巴塘县', '0');
INSERT INTO `mqu_area` VALUES ('2660', '2644', '乡城县', '0');
INSERT INTO `mqu_area` VALUES ('2661', '2644', '稻城县', '0');
INSERT INTO `mqu_area` VALUES ('2662', '2644', '得荣县', '0');
INSERT INTO `mqu_area` VALUES ('2663', '2589', '广安市', '0');
INSERT INTO `mqu_area` VALUES ('2664', '2663', '广安区', '0');
INSERT INTO `mqu_area` VALUES ('2665', '2663', '岳池县', '0');
INSERT INTO `mqu_area` VALUES ('2666', '2663', '武胜县', '0');
INSERT INTO `mqu_area` VALUES ('2667', '2663', '邻水县', '0');
INSERT INTO `mqu_area` VALUES ('2668', '2663', '华莹市', '0');
INSERT INTO `mqu_area` VALUES ('2669', '2589', '广元市', '0');
INSERT INTO `mqu_area` VALUES ('2670', '2669', '市中区', '0');
INSERT INTO `mqu_area` VALUES ('2671', '2669', '元坝区', '0');
INSERT INTO `mqu_area` VALUES ('2672', '2669', '朝天区', '0');
INSERT INTO `mqu_area` VALUES ('2673', '2669', '旺苍县', '0');
INSERT INTO `mqu_area` VALUES ('2674', '2669', '青川县', '0');
INSERT INTO `mqu_area` VALUES ('2675', '2669', '剑阁县', '0');
INSERT INTO `mqu_area` VALUES ('2676', '2669', '苍溪县', '0');
INSERT INTO `mqu_area` VALUES ('2677', '2589', '乐山市', '0');
INSERT INTO `mqu_area` VALUES ('2678', '2677', '市中区', '0');
INSERT INTO `mqu_area` VALUES ('2679', '2677', '沙湾区', '0');
INSERT INTO `mqu_area` VALUES ('2680', '2677', '五通桥区', '0');
INSERT INTO `mqu_area` VALUES ('2681', '2677', '金口河区', '0');
INSERT INTO `mqu_area` VALUES ('2682', '2677', '犍为县', '0');
INSERT INTO `mqu_area` VALUES ('2683', '2677', '井研县', '0');
INSERT INTO `mqu_area` VALUES ('2684', '2677', '夹江县', '0');
INSERT INTO `mqu_area` VALUES ('2685', '2677', '沐川县', '0');
INSERT INTO `mqu_area` VALUES ('2686', '2677', '峨边彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2687', '2677', '马边彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2688', '2677', '峨眉山市', '0');
INSERT INTO `mqu_area` VALUES ('2689', '2589', '凉山彝族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2690', '2689', '西昌市', '0');
INSERT INTO `mqu_area` VALUES ('2691', '2689', '木里藏族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2692', '2689', '盐源县', '0');
INSERT INTO `mqu_area` VALUES ('2693', '2689', '德昌县', '0');
INSERT INTO `mqu_area` VALUES ('2694', '2689', '会理县', '0');
INSERT INTO `mqu_area` VALUES ('2695', '2689', '会东县', '0');
INSERT INTO `mqu_area` VALUES ('2696', '2689', '宁南县', '0');
INSERT INTO `mqu_area` VALUES ('2697', '2689', '普格县', '0');
INSERT INTO `mqu_area` VALUES ('2698', '2689', '布拖县', '0');
INSERT INTO `mqu_area` VALUES ('2699', '2689', '金阳县', '0');
INSERT INTO `mqu_area` VALUES ('2700', '2689', '昭觉县', '0');
INSERT INTO `mqu_area` VALUES ('2701', '2689', '喜德县', '0');
INSERT INTO `mqu_area` VALUES ('2702', '2689', '冕宁县', '0');
INSERT INTO `mqu_area` VALUES ('2703', '2689', '越西县', '0');
INSERT INTO `mqu_area` VALUES ('2704', '2689', '甘洛县', '0');
INSERT INTO `mqu_area` VALUES ('2705', '2689', '美姑县', '0');
INSERT INTO `mqu_area` VALUES ('2706', '2689', '雷波县', '0');
INSERT INTO `mqu_area` VALUES ('2707', '2589', '泸州市', '0');
INSERT INTO `mqu_area` VALUES ('2708', '2707', '江阳区', '0');
INSERT INTO `mqu_area` VALUES ('2709', '2707', '纳溪区', '0');
INSERT INTO `mqu_area` VALUES ('2710', '2707', '龙马潭区', '0');
INSERT INTO `mqu_area` VALUES ('2711', '2707', '泸县', '0');
INSERT INTO `mqu_area` VALUES ('2712', '2707', '合江县', '0');
INSERT INTO `mqu_area` VALUES ('2713', '2707', '叙永县', '0');
INSERT INTO `mqu_area` VALUES ('2714', '2707', '古蔺县', '0');
INSERT INTO `mqu_area` VALUES ('2715', '2589', '眉山市', '0');
INSERT INTO `mqu_area` VALUES ('2716', '2715', '东坡区', '0');
INSERT INTO `mqu_area` VALUES ('2717', '2715', '仁寿县', '0');
INSERT INTO `mqu_area` VALUES ('2718', '2715', '彭山县', '0');
INSERT INTO `mqu_area` VALUES ('2719', '2715', '洪雅县', '0');
INSERT INTO `mqu_area` VALUES ('2720', '2715', '丹棱县', '0');
INSERT INTO `mqu_area` VALUES ('2721', '2715', '青神县', '0');
INSERT INTO `mqu_area` VALUES ('2722', '2589', '绵阳市', '0');
INSERT INTO `mqu_area` VALUES ('2723', '2722', '涪城区', '0');
INSERT INTO `mqu_area` VALUES ('2724', '2722', '游仙区', '0');
INSERT INTO `mqu_area` VALUES ('2725', '2722', '三台县', '0');
INSERT INTO `mqu_area` VALUES ('2726', '2722', '盐亭县', '0');
INSERT INTO `mqu_area` VALUES ('2727', '2722', '安县', '0');
INSERT INTO `mqu_area` VALUES ('2728', '2722', '梓潼县', '0');
INSERT INTO `mqu_area` VALUES ('2729', '2722', '北川羌族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2730', '2722', '平武县', '0');
INSERT INTO `mqu_area` VALUES ('2731', '2722', '江油市', '0');
INSERT INTO `mqu_area` VALUES ('2732', '2589', '内江市', '0');
INSERT INTO `mqu_area` VALUES ('2733', '2732', '市中区', '0');
INSERT INTO `mqu_area` VALUES ('2734', '2732', '东兴区', '0');
INSERT INTO `mqu_area` VALUES ('2735', '2732', '威远县', '0');
INSERT INTO `mqu_area` VALUES ('2736', '2732', '资中县', '0');
INSERT INTO `mqu_area` VALUES ('2737', '2732', '隆昌县', '0');
INSERT INTO `mqu_area` VALUES ('2738', '2589', '南充市', '0');
INSERT INTO `mqu_area` VALUES ('2739', '2738', '顺庆区', '0');
INSERT INTO `mqu_area` VALUES ('2740', '2738', '高坪区', '0');
INSERT INTO `mqu_area` VALUES ('2741', '2738', '嘉陵区', '0');
INSERT INTO `mqu_area` VALUES ('2742', '2738', '南部县', '0');
INSERT INTO `mqu_area` VALUES ('2743', '2738', '营山县', '0');
INSERT INTO `mqu_area` VALUES ('2744', '2738', '蓬安县', '0');
INSERT INTO `mqu_area` VALUES ('2745', '2738', '仪陇县', '0');
INSERT INTO `mqu_area` VALUES ('2746', '2738', '西充县', '0');
INSERT INTO `mqu_area` VALUES ('2747', '2738', '阆中市', '0');
INSERT INTO `mqu_area` VALUES ('2748', '2589', '攀枝花市', '0');
INSERT INTO `mqu_area` VALUES ('2749', '2748', '东区', '0');
INSERT INTO `mqu_area` VALUES ('2750', '2748', '西区', '0');
INSERT INTO `mqu_area` VALUES ('2751', '2748', '仁和区', '0');
INSERT INTO `mqu_area` VALUES ('2752', '2748', '米易县', '0');
INSERT INTO `mqu_area` VALUES ('2753', '2748', '盐边县', '0');
INSERT INTO `mqu_area` VALUES ('2754', '2589', '遂宁市', '0');
INSERT INTO `mqu_area` VALUES ('2755', '2754', '船山区', '0');
INSERT INTO `mqu_area` VALUES ('2756', '2754', '安居区', '0');
INSERT INTO `mqu_area` VALUES ('2757', '2754', '蓬溪县', '0');
INSERT INTO `mqu_area` VALUES ('2758', '2754', '射洪县', '0');
INSERT INTO `mqu_area` VALUES ('2759', '2754', '大英县', '0');
INSERT INTO `mqu_area` VALUES ('2760', '2589', '雅安市', '0');
INSERT INTO `mqu_area` VALUES ('2761', '2760', '雨城区', '0');
INSERT INTO `mqu_area` VALUES ('2762', '2760', '名山县', '0');
INSERT INTO `mqu_area` VALUES ('2763', '2760', '荥经县', '0');
INSERT INTO `mqu_area` VALUES ('2764', '2760', '汉源县', '0');
INSERT INTO `mqu_area` VALUES ('2765', '2760', '石棉县', '0');
INSERT INTO `mqu_area` VALUES ('2766', '2760', '天全县', '0');
INSERT INTO `mqu_area` VALUES ('2767', '2760', '芦山县', '0');
INSERT INTO `mqu_area` VALUES ('2768', '2760', '宝兴县', '0');
INSERT INTO `mqu_area` VALUES ('2769', '2589', '宜宾市', '0');
INSERT INTO `mqu_area` VALUES ('2770', '2769', '翠屏区', '0');
INSERT INTO `mqu_area` VALUES ('2771', '2769', '宜宾县', '0');
INSERT INTO `mqu_area` VALUES ('2772', '2769', '南溪县', '0');
INSERT INTO `mqu_area` VALUES ('2773', '2769', '江安县', '0');
INSERT INTO `mqu_area` VALUES ('2774', '2769', '长宁县', '0');
INSERT INTO `mqu_area` VALUES ('2775', '2769', '高县', '0');
INSERT INTO `mqu_area` VALUES ('2776', '2769', '珙县', '0');
INSERT INTO `mqu_area` VALUES ('2777', '2769', '筠连县', '0');
INSERT INTO `mqu_area` VALUES ('2778', '2769', '兴文县', '0');
INSERT INTO `mqu_area` VALUES ('2779', '2769', '屏山县', '0');
INSERT INTO `mqu_area` VALUES ('2780', '2589', '资阳市', '0');
INSERT INTO `mqu_area` VALUES ('2781', '2780', '雁江区', '0');
INSERT INTO `mqu_area` VALUES ('2782', '2780', '安岳县', '0');
INSERT INTO `mqu_area` VALUES ('2783', '2780', '乐至县', '0');
INSERT INTO `mqu_area` VALUES ('2784', '2780', '简阳市', '0');
INSERT INTO `mqu_area` VALUES ('2785', '2589', '自贡市', '0');
INSERT INTO `mqu_area` VALUES ('2786', '2785', '自流井区', '0');
INSERT INTO `mqu_area` VALUES ('2787', '2785', '贡井区', '0');
INSERT INTO `mqu_area` VALUES ('2788', '2785', '大安区', '0');
INSERT INTO `mqu_area` VALUES ('2789', '2785', '沿滩区', '0');
INSERT INTO `mqu_area` VALUES ('2790', '2785', '荣县', '0');
INSERT INTO `mqu_area` VALUES ('2791', '2785', '富顺县', '0');
INSERT INTO `mqu_area` VALUES ('2792', '0', '西藏', '0');
INSERT INTO `mqu_area` VALUES ('2793', '2792', '拉萨市', '0');
INSERT INTO `mqu_area` VALUES ('2794', '2793', '城关区', '0');
INSERT INTO `mqu_area` VALUES ('2795', '2793', '林周县', '0');
INSERT INTO `mqu_area` VALUES ('2796', '2793', '当雄县', '0');
INSERT INTO `mqu_area` VALUES ('2797', '2793', '尼木县', '0');
INSERT INTO `mqu_area` VALUES ('2798', '2793', '曲水县', '0');
INSERT INTO `mqu_area` VALUES ('2799', '2793', '堆龙德庆县', '0');
INSERT INTO `mqu_area` VALUES ('2800', '2793', '达孜县', '0');
INSERT INTO `mqu_area` VALUES ('2801', '2793', '墨竹工卡县', '0');
INSERT INTO `mqu_area` VALUES ('2802', '2792', '阿里地区', '0');
INSERT INTO `mqu_area` VALUES ('2803', '2802', '普兰县', '0');
INSERT INTO `mqu_area` VALUES ('2804', '2802', '札达县', '0');
INSERT INTO `mqu_area` VALUES ('2805', '2802', '噶尔县', '0');
INSERT INTO `mqu_area` VALUES ('2806', '2802', '日土县', '0');
INSERT INTO `mqu_area` VALUES ('2807', '2802', '革吉县', '0');
INSERT INTO `mqu_area` VALUES ('2808', '2802', '改则县', '0');
INSERT INTO `mqu_area` VALUES ('2809', '2802', '措勤县', '0');
INSERT INTO `mqu_area` VALUES ('2810', '2792', '昌都地区', '0');
INSERT INTO `mqu_area` VALUES ('2811', '2810', '昌都县', '0');
INSERT INTO `mqu_area` VALUES ('2812', '2810', '江达县', '0');
INSERT INTO `mqu_area` VALUES ('2813', '2810', '贡觉县', '0');
INSERT INTO `mqu_area` VALUES ('2814', '2810', '类乌齐县', '0');
INSERT INTO `mqu_area` VALUES ('2815', '2810', '丁青县', '0');
INSERT INTO `mqu_area` VALUES ('2816', '2810', '察雅县', '0');
INSERT INTO `mqu_area` VALUES ('2817', '2810', '八宿县', '0');
INSERT INTO `mqu_area` VALUES ('2818', '2810', '左贡县', '0');
INSERT INTO `mqu_area` VALUES ('2819', '2810', '芒康县', '0');
INSERT INTO `mqu_area` VALUES ('2820', '2810', '洛隆县', '0');
INSERT INTO `mqu_area` VALUES ('2821', '2810', '边坝县', '0');
INSERT INTO `mqu_area` VALUES ('2822', '2792', '林芝地区', '0');
INSERT INTO `mqu_area` VALUES ('2823', '2822', '林芝县', '0');
INSERT INTO `mqu_area` VALUES ('2824', '2822', '工布江达县', '0');
INSERT INTO `mqu_area` VALUES ('2825', '2822', '米林县', '0');
INSERT INTO `mqu_area` VALUES ('2826', '2822', '墨脱县', '0');
INSERT INTO `mqu_area` VALUES ('2827', '2822', '波密县', '0');
INSERT INTO `mqu_area` VALUES ('2828', '2822', '察隅县', '0');
INSERT INTO `mqu_area` VALUES ('2829', '2822', '朗县', '0');
INSERT INTO `mqu_area` VALUES ('2830', '2792', '那曲地区', '0');
INSERT INTO `mqu_area` VALUES ('2831', '2830', '那曲县', '0');
INSERT INTO `mqu_area` VALUES ('2832', '2830', '嘉黎县', '0');
INSERT INTO `mqu_area` VALUES ('2833', '2830', '比如县', '0');
INSERT INTO `mqu_area` VALUES ('2834', '2830', '聂荣县', '0');
INSERT INTO `mqu_area` VALUES ('2835', '2830', '安多县', '0');
INSERT INTO `mqu_area` VALUES ('2836', '2830', '申扎县', '0');
INSERT INTO `mqu_area` VALUES ('2837', '2830', '索县', '0');
INSERT INTO `mqu_area` VALUES ('2838', '2830', '班戈县', '0');
INSERT INTO `mqu_area` VALUES ('2839', '2830', '巴青县', '0');
INSERT INTO `mqu_area` VALUES ('2840', '2830', '尼玛县', '0');
INSERT INTO `mqu_area` VALUES ('2841', '2792', '日喀则地区', '0');
INSERT INTO `mqu_area` VALUES ('2842', '2841', '日喀则市', '0');
INSERT INTO `mqu_area` VALUES ('2843', '2841', '南木林县', '0');
INSERT INTO `mqu_area` VALUES ('2844', '2841', '江孜县', '0');
INSERT INTO `mqu_area` VALUES ('2845', '2841', '定日县', '0');
INSERT INTO `mqu_area` VALUES ('2846', '2841', '萨迦县', '0');
INSERT INTO `mqu_area` VALUES ('2847', '2841', '拉孜县', '0');
INSERT INTO `mqu_area` VALUES ('2848', '2841', '昂仁县', '0');
INSERT INTO `mqu_area` VALUES ('2849', '2841', '谢通门县', '0');
INSERT INTO `mqu_area` VALUES ('2850', '2841', '白朗县', '0');
INSERT INTO `mqu_area` VALUES ('2851', '2841', '仁布县', '0');
INSERT INTO `mqu_area` VALUES ('2852', '2841', '康马县', '0');
INSERT INTO `mqu_area` VALUES ('2853', '2841', '定结县', '0');
INSERT INTO `mqu_area` VALUES ('2854', '2841', '仲巴县', '0');
INSERT INTO `mqu_area` VALUES ('2855', '2841', '亚东县', '0');
INSERT INTO `mqu_area` VALUES ('2856', '2841', '吉隆县', '0');
INSERT INTO `mqu_area` VALUES ('2857', '2841', '聂拉木县', '0');
INSERT INTO `mqu_area` VALUES ('2858', '2841', '萨嘎县', '0');
INSERT INTO `mqu_area` VALUES ('2859', '2841', '岗巴县', '0');
INSERT INTO `mqu_area` VALUES ('2860', '2792', '山南地区', '0');
INSERT INTO `mqu_area` VALUES ('2861', '2860', '乃东县', '0');
INSERT INTO `mqu_area` VALUES ('2862', '2860', '扎囊县', '0');
INSERT INTO `mqu_area` VALUES ('2863', '2860', '贡嘎县', '0');
INSERT INTO `mqu_area` VALUES ('2864', '2860', '桑日县', '0');
INSERT INTO `mqu_area` VALUES ('2865', '2860', '琼结县', '0');
INSERT INTO `mqu_area` VALUES ('2866', '2860', '曲松县', '0');
INSERT INTO `mqu_area` VALUES ('2867', '2860', '措美县', '0');
INSERT INTO `mqu_area` VALUES ('2868', '2860', '洛扎县', '0');
INSERT INTO `mqu_area` VALUES ('2869', '2860', '加查县', '0');
INSERT INTO `mqu_area` VALUES ('2870', '2860', '隆子县', '0');
INSERT INTO `mqu_area` VALUES ('2871', '2860', '错那县', '0');
INSERT INTO `mqu_area` VALUES ('2872', '2860', '浪卡子县', '0');
INSERT INTO `mqu_area` VALUES ('2873', '0', '新疆', '0');
INSERT INTO `mqu_area` VALUES ('2874', '2873', '乌鲁木齐市', '0');
INSERT INTO `mqu_area` VALUES ('2875', '2874', '天山区', '0');
INSERT INTO `mqu_area` VALUES ('2876', '2874', '沙依巴克区', '0');
INSERT INTO `mqu_area` VALUES ('2877', '2874', '新市区', '0');
INSERT INTO `mqu_area` VALUES ('2878', '2874', '水磨沟区', '0');
INSERT INTO `mqu_area` VALUES ('2879', '2874', '头屯河区', '0');
INSERT INTO `mqu_area` VALUES ('2880', '2874', '达坂城区', '0');
INSERT INTO `mqu_area` VALUES ('2881', '2874', '东山区', '0');
INSERT INTO `mqu_area` VALUES ('2882', '2874', '乌鲁木齐县', '0');
INSERT INTO `mqu_area` VALUES ('2883', '2873', '阿克苏地区', '0');
INSERT INTO `mqu_area` VALUES ('2884', '2883', '阿克苏市', '0');
INSERT INTO `mqu_area` VALUES ('2885', '2883', '温宿县', '0');
INSERT INTO `mqu_area` VALUES ('2886', '2883', '库车县', '0');
INSERT INTO `mqu_area` VALUES ('2887', '2883', '沙雅县', '0');
INSERT INTO `mqu_area` VALUES ('2888', '2883', '新和县', '0');
INSERT INTO `mqu_area` VALUES ('2889', '2883', '拜城县', '0');
INSERT INTO `mqu_area` VALUES ('2890', '2883', '乌什县', '0');
INSERT INTO `mqu_area` VALUES ('2891', '2883', '阿瓦提县', '0');
INSERT INTO `mqu_area` VALUES ('2892', '2883', '柯坪县', '0');
INSERT INTO `mqu_area` VALUES ('2893', '2873', '阿拉尔市', '0');
INSERT INTO `mqu_area` VALUES ('2894', '2873', '阿勒泰地区', '0');
INSERT INTO `mqu_area` VALUES ('2895', '2894', '阿勒泰市', '0');
INSERT INTO `mqu_area` VALUES ('2896', '2894', '布尔津县', '0');
INSERT INTO `mqu_area` VALUES ('2897', '2894', '富蕴县', '0');
INSERT INTO `mqu_area` VALUES ('2898', '2894', '福海县', '0');
INSERT INTO `mqu_area` VALUES ('2899', '2894', '哈巴河县', '0');
INSERT INTO `mqu_area` VALUES ('2900', '2894', '青河县', '0');
INSERT INTO `mqu_area` VALUES ('2901', '2894', '吉木乃县', '0');
INSERT INTO `mqu_area` VALUES ('2902', '2873', '巴音郭楞蒙古自治州', '0');
INSERT INTO `mqu_area` VALUES ('2903', '2902', '库尔勒市', '0');
INSERT INTO `mqu_area` VALUES ('2904', '2902', '轮台县', '0');
INSERT INTO `mqu_area` VALUES ('2905', '2902', '尉犁县', '0');
INSERT INTO `mqu_area` VALUES ('2906', '2902', '若羌县', '0');
INSERT INTO `mqu_area` VALUES ('2907', '2902', '且末县', '0');
INSERT INTO `mqu_area` VALUES ('2908', '2902', '焉耆回族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2909', '2902', '和静县', '0');
INSERT INTO `mqu_area` VALUES ('2910', '2902', '和硕县', '0');
INSERT INTO `mqu_area` VALUES ('2911', '2902', '博湖县', '0');
INSERT INTO `mqu_area` VALUES ('2912', '2873', '博尔塔拉蒙古自治州', '0');
INSERT INTO `mqu_area` VALUES ('2913', '2912', '博乐市', '0');
INSERT INTO `mqu_area` VALUES ('2914', '2912', '精河县', '0');
INSERT INTO `mqu_area` VALUES ('2915', '2912', '温泉县', '0');
INSERT INTO `mqu_area` VALUES ('2916', '2873', '昌吉回族自治州', '0');
INSERT INTO `mqu_area` VALUES ('2917', '2916', '昌吉市', '0');
INSERT INTO `mqu_area` VALUES ('2918', '2916', '阜康市', '0');
INSERT INTO `mqu_area` VALUES ('2919', '2916', '米泉市', '0');
INSERT INTO `mqu_area` VALUES ('2920', '2916', '呼图壁县', '0');
INSERT INTO `mqu_area` VALUES ('2921', '2916', '玛纳斯县', '0');
INSERT INTO `mqu_area` VALUES ('2922', '2916', '奇台县', '0');
INSERT INTO `mqu_area` VALUES ('2923', '2916', '吉木萨尔县', '0');
INSERT INTO `mqu_area` VALUES ('2924', '2916', '木垒哈萨克自治县', '0');
INSERT INTO `mqu_area` VALUES ('2925', '2873', '哈密地区', '0');
INSERT INTO `mqu_area` VALUES ('2926', '2925', '哈密市', '0');
INSERT INTO `mqu_area` VALUES ('2927', '2925', '巴里坤哈萨克自治县', '0');
INSERT INTO `mqu_area` VALUES ('2928', '2925', '伊吾县', '0');
INSERT INTO `mqu_area` VALUES ('2929', '2873', '和田地区', '0');
INSERT INTO `mqu_area` VALUES ('2930', '2929', '和田市', '0');
INSERT INTO `mqu_area` VALUES ('2931', '2929', '和田县', '0');
INSERT INTO `mqu_area` VALUES ('2932', '2929', '墨玉县', '0');
INSERT INTO `mqu_area` VALUES ('2933', '2929', '皮山县', '0');
INSERT INTO `mqu_area` VALUES ('2934', '2929', '洛浦县', '0');
INSERT INTO `mqu_area` VALUES ('2935', '2929', '策勒县', '0');
INSERT INTO `mqu_area` VALUES ('2936', '2929', '于田县', '0');
INSERT INTO `mqu_area` VALUES ('2937', '2929', '民丰县', '0');
INSERT INTO `mqu_area` VALUES ('2938', '2873', '喀什地区', '0');
INSERT INTO `mqu_area` VALUES ('2939', '2938', '喀什市', '0');
INSERT INTO `mqu_area` VALUES ('2940', '2938', '疏附县', '0');
INSERT INTO `mqu_area` VALUES ('2941', '2938', '疏勒县', '0');
INSERT INTO `mqu_area` VALUES ('2942', '2938', '英吉沙县', '0');
INSERT INTO `mqu_area` VALUES ('2943', '2938', '泽普县', '0');
INSERT INTO `mqu_area` VALUES ('2944', '2938', '莎车县', '0');
INSERT INTO `mqu_area` VALUES ('2945', '2938', '叶城县', '0');
INSERT INTO `mqu_area` VALUES ('2946', '2938', '麦盖提县', '0');
INSERT INTO `mqu_area` VALUES ('2947', '2938', '岳普湖县', '0');
INSERT INTO `mqu_area` VALUES ('2948', '2938', '伽师县', '0');
INSERT INTO `mqu_area` VALUES ('2949', '2938', '巴楚县', '0');
INSERT INTO `mqu_area` VALUES ('2950', '2938', '塔什库尔干塔吉克自治县', '0');
INSERT INTO `mqu_area` VALUES ('2951', '2873', '克拉玛依市', '0');
INSERT INTO `mqu_area` VALUES ('2952', '2951', '独山子区', '0');
INSERT INTO `mqu_area` VALUES ('2953', '2951', '克拉玛依区', '0');
INSERT INTO `mqu_area` VALUES ('2954', '2951', '白碱滩区', '0');
INSERT INTO `mqu_area` VALUES ('2955', '2951', '乌尔禾区', '0');
INSERT INTO `mqu_area` VALUES ('2956', '2873', '克孜勒苏柯尔克孜自治州', '0');
INSERT INTO `mqu_area` VALUES ('2957', '2956', '阿图什市', '0');
INSERT INTO `mqu_area` VALUES ('2958', '2956', '阿克陶县', '0');
INSERT INTO `mqu_area` VALUES ('2959', '2956', '阿合奇县', '0');
INSERT INTO `mqu_area` VALUES ('2960', '2956', '乌恰县', '0');
INSERT INTO `mqu_area` VALUES ('2961', '2873', '石河子市', '0');
INSERT INTO `mqu_area` VALUES ('2962', '2873', '塔城地区', '0');
INSERT INTO `mqu_area` VALUES ('2963', '2962', '塔城市', '0');
INSERT INTO `mqu_area` VALUES ('2964', '2962', '乌苏市', '0');
INSERT INTO `mqu_area` VALUES ('2965', '2962', '额敏县', '0');
INSERT INTO `mqu_area` VALUES ('2966', '2962', '沙湾县', '0');
INSERT INTO `mqu_area` VALUES ('2967', '2962', '托里县', '0');
INSERT INTO `mqu_area` VALUES ('2968', '2962', '裕民县', '0');
INSERT INTO `mqu_area` VALUES ('2969', '2962', '和布克赛尔蒙古自治县', '0');
INSERT INTO `mqu_area` VALUES ('2970', '2873', '图木舒克市', '0');
INSERT INTO `mqu_area` VALUES ('2971', '2873', '吐鲁番地区', '0');
INSERT INTO `mqu_area` VALUES ('2972', '2971', '吐鲁番市', '0');
INSERT INTO `mqu_area` VALUES ('2973', '2971', '鄯善县', '0');
INSERT INTO `mqu_area` VALUES ('2974', '2971', '托克逊县', '0');
INSERT INTO `mqu_area` VALUES ('2975', '2873', '五家渠市', '0');
INSERT INTO `mqu_area` VALUES ('2976', '2873', '伊犁哈萨克自治州', '0');
INSERT INTO `mqu_area` VALUES ('2977', '2976', '伊宁市', '0');
INSERT INTO `mqu_area` VALUES ('2978', '2976', '奎屯市', '0');
INSERT INTO `mqu_area` VALUES ('2979', '2976', '伊宁县', '0');
INSERT INTO `mqu_area` VALUES ('2980', '2976', '察布查尔锡伯自治县', '0');
INSERT INTO `mqu_area` VALUES ('2981', '2976', '霍城县', '0');
INSERT INTO `mqu_area` VALUES ('2982', '2976', '巩留县', '0');
INSERT INTO `mqu_area` VALUES ('2983', '2976', '新源县', '0');
INSERT INTO `mqu_area` VALUES ('2984', '2976', '昭苏县', '0');
INSERT INTO `mqu_area` VALUES ('2985', '2976', '特克斯县', '0');
INSERT INTO `mqu_area` VALUES ('2986', '2976', '尼勒克县', '0');
INSERT INTO `mqu_area` VALUES ('2987', '0', '云南', '0');
INSERT INTO `mqu_area` VALUES ('2988', '2987', '昆明市', '0');
INSERT INTO `mqu_area` VALUES ('2989', '2988', '五华区', '0');
INSERT INTO `mqu_area` VALUES ('2990', '2988', '盘龙区', '0');
INSERT INTO `mqu_area` VALUES ('2991', '2988', '官渡区', '0');
INSERT INTO `mqu_area` VALUES ('2992', '2988', '西山区', '0');
INSERT INTO `mqu_area` VALUES ('2993', '2988', '东川区', '0');
INSERT INTO `mqu_area` VALUES ('2994', '2988', '呈贡县', '0');
INSERT INTO `mqu_area` VALUES ('2995', '2988', '晋宁县', '0');
INSERT INTO `mqu_area` VALUES ('2996', '2988', '富民县', '0');
INSERT INTO `mqu_area` VALUES ('2997', '2988', '宜良县', '0');
INSERT INTO `mqu_area` VALUES ('2998', '2988', '石林彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('2999', '2988', '嵩明县', '0');
INSERT INTO `mqu_area` VALUES ('3000', '2988', '禄劝彝族苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3001', '2988', '寻甸回族彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3002', '2988', '安宁市', '0');
INSERT INTO `mqu_area` VALUES ('3003', '2987', '保山市', '0');
INSERT INTO `mqu_area` VALUES ('3004', '3003', '隆阳区', '0');
INSERT INTO `mqu_area` VALUES ('3005', '3003', '施甸县', '0');
INSERT INTO `mqu_area` VALUES ('3006', '3003', '腾冲县', '0');
INSERT INTO `mqu_area` VALUES ('3007', '3003', '龙陵县', '0');
INSERT INTO `mqu_area` VALUES ('3008', '3003', '昌宁县', '0');
INSERT INTO `mqu_area` VALUES ('3009', '2987', '楚雄彝族自治州', '0');
INSERT INTO `mqu_area` VALUES ('3010', '3009', '楚雄市', '0');
INSERT INTO `mqu_area` VALUES ('3011', '3009', '双柏县', '0');
INSERT INTO `mqu_area` VALUES ('3012', '3009', '牟定县', '0');
INSERT INTO `mqu_area` VALUES ('3013', '3009', '南华县', '0');
INSERT INTO `mqu_area` VALUES ('3014', '3009', '姚安县', '0');
INSERT INTO `mqu_area` VALUES ('3015', '3009', '大姚县', '0');
INSERT INTO `mqu_area` VALUES ('3016', '3009', '永仁县', '0');
INSERT INTO `mqu_area` VALUES ('3017', '3009', '元谋县', '0');
INSERT INTO `mqu_area` VALUES ('3018', '3009', '武定县', '0');
INSERT INTO `mqu_area` VALUES ('3019', '3009', '禄丰县', '0');
INSERT INTO `mqu_area` VALUES ('3020', '2987', '大理白族自治州', '0');
INSERT INTO `mqu_area` VALUES ('3021', '3020', '大理市', '0');
INSERT INTO `mqu_area` VALUES ('3022', '3020', '漾濞彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3023', '3020', '祥云县', '0');
INSERT INTO `mqu_area` VALUES ('3024', '3020', '宾川县', '0');
INSERT INTO `mqu_area` VALUES ('3025', '3020', '弥渡县', '0');
INSERT INTO `mqu_area` VALUES ('3026', '3020', '南涧彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3027', '3020', '巍山彝族回族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3028', '3020', '永平县', '0');
INSERT INTO `mqu_area` VALUES ('3029', '3020', '云龙县', '0');
INSERT INTO `mqu_area` VALUES ('3030', '3020', '洱源县', '0');
INSERT INTO `mqu_area` VALUES ('3031', '3020', '剑川县', '0');
INSERT INTO `mqu_area` VALUES ('3032', '3020', '鹤庆县', '0');
INSERT INTO `mqu_area` VALUES ('3033', '2987', '德宏傣族景颇族自治州', '0');
INSERT INTO `mqu_area` VALUES ('3034', '3033', '瑞丽市', '0');
INSERT INTO `mqu_area` VALUES ('3035', '3033', '潞西市', '0');
INSERT INTO `mqu_area` VALUES ('3036', '3033', '梁河县', '0');
INSERT INTO `mqu_area` VALUES ('3037', '3033', '盈江县', '0');
INSERT INTO `mqu_area` VALUES ('3038', '3033', '陇川县', '0');
INSERT INTO `mqu_area` VALUES ('3039', '2987', '迪庆藏族自治州', '0');
INSERT INTO `mqu_area` VALUES ('3040', '3039', '香格里拉县', '0');
INSERT INTO `mqu_area` VALUES ('3041', '3039', '德钦县', '0');
INSERT INTO `mqu_area` VALUES ('3042', '3039', '维西傈僳族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3043', '2987', '红河哈尼族彝族自治州', '0');
INSERT INTO `mqu_area` VALUES ('3044', '3043', '个旧市', '0');
INSERT INTO `mqu_area` VALUES ('3045', '3043', '开远市', '0');
INSERT INTO `mqu_area` VALUES ('3046', '3043', '蒙自县', '0');
INSERT INTO `mqu_area` VALUES ('3047', '3043', '屏边苗族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3048', '3043', '建水县', '0');
INSERT INTO `mqu_area` VALUES ('3049', '3043', '石屏县', '0');
INSERT INTO `mqu_area` VALUES ('3050', '3043', '弥勒县', '0');
INSERT INTO `mqu_area` VALUES ('3051', '3043', '泸西县', '0');
INSERT INTO `mqu_area` VALUES ('3052', '3043', '元阳县', '0');
INSERT INTO `mqu_area` VALUES ('3053', '3043', '红河县', '0');
INSERT INTO `mqu_area` VALUES ('3054', '3043', '金平苗族瑶族傣族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3055', '3043', '绿春县', '0');
INSERT INTO `mqu_area` VALUES ('3056', '3043', '河口瑶族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3057', '2987', '丽江市', '0');
INSERT INTO `mqu_area` VALUES ('3058', '3057', '古城区', '0');
INSERT INTO `mqu_area` VALUES ('3059', '3057', '玉龙纳西族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3060', '3057', '永胜县', '0');
INSERT INTO `mqu_area` VALUES ('3061', '3057', '华坪县', '0');
INSERT INTO `mqu_area` VALUES ('3062', '3057', '宁蒗彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3063', '2987', '临沧市', '0');
INSERT INTO `mqu_area` VALUES ('3064', '3063', '临翔区', '0');
INSERT INTO `mqu_area` VALUES ('3065', '3063', '凤庆县', '0');
INSERT INTO `mqu_area` VALUES ('3066', '3063', '云县', '0');
INSERT INTO `mqu_area` VALUES ('3067', '3063', '永德县', '0');
INSERT INTO `mqu_area` VALUES ('3068', '3063', '镇康县', '0');
INSERT INTO `mqu_area` VALUES ('3069', '3063', '双江拉祜族佤族布朗族傣族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3070', '3063', '耿马傣族佤族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3071', '3063', '沧源佤族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3072', '2987', '怒江傈僳族自治州', '0');
INSERT INTO `mqu_area` VALUES ('3073', '3072', '泸水县', '0');
INSERT INTO `mqu_area` VALUES ('3074', '3072', '福贡县', '0');
INSERT INTO `mqu_area` VALUES ('3075', '3072', '贡山独龙族怒族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3076', '3072', '兰坪白族普米族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3077', '2987', '曲靖市', '0');
INSERT INTO `mqu_area` VALUES ('3078', '3077', '麒麟区', '0');
INSERT INTO `mqu_area` VALUES ('3079', '3077', '马龙县', '0');
INSERT INTO `mqu_area` VALUES ('3080', '3077', '陆良县', '0');
INSERT INTO `mqu_area` VALUES ('3081', '3077', '师宗县', '0');
INSERT INTO `mqu_area` VALUES ('3082', '3077', '罗平县', '0');
INSERT INTO `mqu_area` VALUES ('3083', '3077', '富源县', '0');
INSERT INTO `mqu_area` VALUES ('3084', '3077', '会泽县', '0');
INSERT INTO `mqu_area` VALUES ('3085', '3077', '沾益县', '0');
INSERT INTO `mqu_area` VALUES ('3086', '3077', '宣威市', '0');
INSERT INTO `mqu_area` VALUES ('3087', '2987', '思茅市', '0');
INSERT INTO `mqu_area` VALUES ('3088', '3087', '翠云区', '0');
INSERT INTO `mqu_area` VALUES ('3089', '3087', '普洱哈尼族彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3090', '3087', '墨江哈尼族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3091', '3087', '景东彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3092', '3087', '景谷傣族彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3093', '3087', '镇沅彝族哈尼族拉祜族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3094', '3087', '江城哈尼族彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3095', '3087', '孟连傣族拉祜族佤族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3096', '3087', '澜沧拉祜族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3097', '3087', '西盟佤族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3098', '2987', '文山壮族苗族自治州', '0');
INSERT INTO `mqu_area` VALUES ('3099', '3098', '文山县', '0');
INSERT INTO `mqu_area` VALUES ('3100', '3098', '砚山县', '0');
INSERT INTO `mqu_area` VALUES ('3101', '3098', '西畴县', '0');
INSERT INTO `mqu_area` VALUES ('3102', '3098', '麻栗坡县', '0');
INSERT INTO `mqu_area` VALUES ('3103', '3098', '马关县', '0');
INSERT INTO `mqu_area` VALUES ('3104', '3098', '丘北县', '0');
INSERT INTO `mqu_area` VALUES ('3105', '3098', '广南县', '0');
INSERT INTO `mqu_area` VALUES ('3106', '3098', '富宁县', '0');
INSERT INTO `mqu_area` VALUES ('3107', '2987', '西双版纳傣族自治州', '0');
INSERT INTO `mqu_area` VALUES ('3108', '3107', '景洪市', '0');
INSERT INTO `mqu_area` VALUES ('3109', '3107', '勐海县', '0');
INSERT INTO `mqu_area` VALUES ('3110', '3107', '勐腊县', '0');
INSERT INTO `mqu_area` VALUES ('3111', '2987', '玉溪市', '0');
INSERT INTO `mqu_area` VALUES ('3112', '3111', '红塔区', '0');
INSERT INTO `mqu_area` VALUES ('3113', '3111', '江川县', '0');
INSERT INTO `mqu_area` VALUES ('3114', '3111', '澄江县', '0');
INSERT INTO `mqu_area` VALUES ('3115', '3111', '通海县', '0');
INSERT INTO `mqu_area` VALUES ('3116', '3111', '华宁县', '0');
INSERT INTO `mqu_area` VALUES ('3117', '3111', '易门县', '0');
INSERT INTO `mqu_area` VALUES ('3118', '3111', '峨山彝族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3119', '3111', '新平彝族傣族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3120', '3111', '元江哈尼族彝族傣族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3121', '2987', '昭通市', '0');
INSERT INTO `mqu_area` VALUES ('3122', '3121', '昭阳区', '0');
INSERT INTO `mqu_area` VALUES ('3123', '3121', '鲁甸县', '0');
INSERT INTO `mqu_area` VALUES ('3124', '3121', '巧家县', '0');
INSERT INTO `mqu_area` VALUES ('3125', '3121', '盐津县', '0');
INSERT INTO `mqu_area` VALUES ('3126', '3121', '大关县', '0');
INSERT INTO `mqu_area` VALUES ('3127', '3121', '永善县', '0');
INSERT INTO `mqu_area` VALUES ('3128', '3121', '绥江县', '0');
INSERT INTO `mqu_area` VALUES ('3129', '3121', '镇雄县', '0');
INSERT INTO `mqu_area` VALUES ('3130', '3121', '彝良县', '0');
INSERT INTO `mqu_area` VALUES ('3131', '3121', '威信县', '0');
INSERT INTO `mqu_area` VALUES ('3132', '3121', '水富县', '0');
INSERT INTO `mqu_area` VALUES ('3133', '0', '浙江', '0');
INSERT INTO `mqu_area` VALUES ('3134', '3133', '杭州市', '0');
INSERT INTO `mqu_area` VALUES ('3135', '3134', '上城区', '0');
INSERT INTO `mqu_area` VALUES ('3136', '3134', '下城区', '0');
INSERT INTO `mqu_area` VALUES ('3137', '3134', '江干区', '0');
INSERT INTO `mqu_area` VALUES ('3138', '3134', '拱墅区', '0');
INSERT INTO `mqu_area` VALUES ('3139', '3134', '西湖区', '0');
INSERT INTO `mqu_area` VALUES ('3140', '3134', '滨江区', '0');
INSERT INTO `mqu_area` VALUES ('3141', '3134', '萧山区', '0');
INSERT INTO `mqu_area` VALUES ('3142', '3134', '余杭区', '0');
INSERT INTO `mqu_area` VALUES ('3143', '3134', '桐庐县', '0');
INSERT INTO `mqu_area` VALUES ('3144', '3134', '淳安县', '0');
INSERT INTO `mqu_area` VALUES ('3145', '3134', '建德市', '0');
INSERT INTO `mqu_area` VALUES ('3146', '3134', '富阳市', '0');
INSERT INTO `mqu_area` VALUES ('3147', '3134', '临安市', '0');
INSERT INTO `mqu_area` VALUES ('3148', '3133', '湖州市', '0');
INSERT INTO `mqu_area` VALUES ('3149', '3148', '吴兴区', '0');
INSERT INTO `mqu_area` VALUES ('3150', '3148', '南浔区', '0');
INSERT INTO `mqu_area` VALUES ('3151', '3148', '德清县', '0');
INSERT INTO `mqu_area` VALUES ('3152', '3148', '长兴县', '0');
INSERT INTO `mqu_area` VALUES ('3153', '3148', '安吉县', '0');
INSERT INTO `mqu_area` VALUES ('3154', '3133', '嘉兴市', '0');
INSERT INTO `mqu_area` VALUES ('3155', '3154', '秀城区', '0');
INSERT INTO `mqu_area` VALUES ('3156', '3154', '秀洲区', '0');
INSERT INTO `mqu_area` VALUES ('3157', '3154', '嘉善县', '0');
INSERT INTO `mqu_area` VALUES ('3158', '3154', '海盐县', '0');
INSERT INTO `mqu_area` VALUES ('3159', '3154', '海宁市', '0');
INSERT INTO `mqu_area` VALUES ('3160', '3154', '平湖市', '0');
INSERT INTO `mqu_area` VALUES ('3161', '3154', '桐乡市', '0');
INSERT INTO `mqu_area` VALUES ('3162', '3133', '金华市', '0');
INSERT INTO `mqu_area` VALUES ('3163', '3162', '婺城区', '0');
INSERT INTO `mqu_area` VALUES ('3164', '3162', '金东区', '0');
INSERT INTO `mqu_area` VALUES ('3165', '3162', '武义县', '0');
INSERT INTO `mqu_area` VALUES ('3166', '3162', '浦江县', '0');
INSERT INTO `mqu_area` VALUES ('3167', '3162', '磐安县', '0');
INSERT INTO `mqu_area` VALUES ('3168', '3162', '兰溪市', '0');
INSERT INTO `mqu_area` VALUES ('3169', '3162', '义乌市', '0');
INSERT INTO `mqu_area` VALUES ('3170', '3162', '东阳市', '0');
INSERT INTO `mqu_area` VALUES ('3171', '3162', '永康市', '0');
INSERT INTO `mqu_area` VALUES ('3172', '3133', '丽水市', '0');
INSERT INTO `mqu_area` VALUES ('3173', '3172', '莲都区', '0');
INSERT INTO `mqu_area` VALUES ('3174', '3172', '青田县', '0');
INSERT INTO `mqu_area` VALUES ('3175', '3172', '缙云县', '0');
INSERT INTO `mqu_area` VALUES ('3176', '3172', '遂昌县', '0');
INSERT INTO `mqu_area` VALUES ('3177', '3172', '松阳县', '0');
INSERT INTO `mqu_area` VALUES ('3178', '3172', '云和县', '0');
INSERT INTO `mqu_area` VALUES ('3179', '3172', '庆元县', '0');
INSERT INTO `mqu_area` VALUES ('3180', '3172', '景宁畲族自治县', '0');
INSERT INTO `mqu_area` VALUES ('3181', '3172', '龙泉市', '0');
INSERT INTO `mqu_area` VALUES ('3182', '3133', '宁波市', '0');
INSERT INTO `mqu_area` VALUES ('3183', '3182', '海曙区', '0');
INSERT INTO `mqu_area` VALUES ('3184', '3182', '江东区', '0');
INSERT INTO `mqu_area` VALUES ('3185', '3182', '江北区', '0');
INSERT INTO `mqu_area` VALUES ('3186', '3182', '北仑区', '0');
INSERT INTO `mqu_area` VALUES ('3187', '3182', '镇海区', '0');
INSERT INTO `mqu_area` VALUES ('3188', '3182', '鄞州区', '0');
INSERT INTO `mqu_area` VALUES ('3189', '3182', '象山县', '0');
INSERT INTO `mqu_area` VALUES ('3190', '3182', '宁海县', '0');
INSERT INTO `mqu_area` VALUES ('3191', '3182', '余姚市', '0');
INSERT INTO `mqu_area` VALUES ('3192', '3182', '慈溪市', '0');
INSERT INTO `mqu_area` VALUES ('3193', '3182', '奉化市', '0');
INSERT INTO `mqu_area` VALUES ('3194', '3133', '衢州市', '0');
INSERT INTO `mqu_area` VALUES ('3195', '3194', '柯城区', '0');
INSERT INTO `mqu_area` VALUES ('3196', '3194', '衢江区', '0');
INSERT INTO `mqu_area` VALUES ('3197', '3194', '常山县', '0');
INSERT INTO `mqu_area` VALUES ('3198', '3194', '开化县', '0');
INSERT INTO `mqu_area` VALUES ('3199', '3194', '龙游县', '0');
INSERT INTO `mqu_area` VALUES ('3200', '3194', '江山市', '0');
INSERT INTO `mqu_area` VALUES ('3201', '3133', '绍兴市', '0');
INSERT INTO `mqu_area` VALUES ('3202', '3201', '越城区', '0');
INSERT INTO `mqu_area` VALUES ('3203', '3201', '绍兴县', '0');
INSERT INTO `mqu_area` VALUES ('3204', '3201', '新昌县', '0');
INSERT INTO `mqu_area` VALUES ('3205', '3201', '诸暨市', '0');
INSERT INTO `mqu_area` VALUES ('3206', '3201', '上虞市', '0');
INSERT INTO `mqu_area` VALUES ('3207', '3201', '嵊州市', '0');
INSERT INTO `mqu_area` VALUES ('3208', '3133', '台州市', '0');
INSERT INTO `mqu_area` VALUES ('3209', '3208', '椒江区', '0');
INSERT INTO `mqu_area` VALUES ('3210', '3208', '黄岩区', '0');
INSERT INTO `mqu_area` VALUES ('3211', '3208', '路桥区', '0');
INSERT INTO `mqu_area` VALUES ('3212', '3208', '玉环县', '0');
INSERT INTO `mqu_area` VALUES ('3213', '3208', '三门县', '0');
INSERT INTO `mqu_area` VALUES ('3214', '3208', '天台县', '0');
INSERT INTO `mqu_area` VALUES ('3215', '3208', '仙居县', '0');
INSERT INTO `mqu_area` VALUES ('3216', '3208', '温岭市', '0');
INSERT INTO `mqu_area` VALUES ('3217', '3208', '临海市', '0');
INSERT INTO `mqu_area` VALUES ('3218', '3133', '温州市', '0');
INSERT INTO `mqu_area` VALUES ('3219', '3218', '鹿城区', '0');
INSERT INTO `mqu_area` VALUES ('3220', '3218', '龙湾区', '0');
INSERT INTO `mqu_area` VALUES ('3221', '3218', '瓯海区', '0');
INSERT INTO `mqu_area` VALUES ('3222', '3218', '洞头县', '0');
INSERT INTO `mqu_area` VALUES ('3223', '3218', '永嘉县', '0');
INSERT INTO `mqu_area` VALUES ('3224', '3218', '平阳县', '0');
INSERT INTO `mqu_area` VALUES ('3225', '3218', '苍南县', '0');
INSERT INTO `mqu_area` VALUES ('3226', '3218', '文成县', '0');
INSERT INTO `mqu_area` VALUES ('3227', '3218', '泰顺县', '0');
INSERT INTO `mqu_area` VALUES ('3228', '3218', '瑞安市', '0');
INSERT INTO `mqu_area` VALUES ('3229', '3218', '乐清市', '0');
INSERT INTO `mqu_area` VALUES ('3230', '3133', '舟山市', '0');
INSERT INTO `mqu_area` VALUES ('3231', '3230', '定海区', '0');
INSERT INTO `mqu_area` VALUES ('3232', '3230', '普陀区', '0');
INSERT INTO `mqu_area` VALUES ('3233', '3230', '岱山县', '0');
INSERT INTO `mqu_area` VALUES ('3234', '3230', '嵊泗县', '0');
INSERT INTO `mqu_area` VALUES ('3235', '0', '香港', '0');
INSERT INTO `mqu_area` VALUES ('3236', '3235', '九龙', '0');
INSERT INTO `mqu_area` VALUES ('3237', '3235', '香港岛', '0');
INSERT INTO `mqu_area` VALUES ('3238', '3235', '新界', '0');
INSERT INTO `mqu_area` VALUES ('3239', '0', '澳门', '0');
INSERT INTO `mqu_area` VALUES ('3240', '3239', '澳门半岛', '0');
INSERT INTO `mqu_area` VALUES ('3241', '3239', '离岛', '0');
INSERT INTO `mqu_area` VALUES ('3242', '0', '台湾', '0');
INSERT INTO `mqu_area` VALUES ('3243', '3242', '台北市', '0');
INSERT INTO `mqu_area` VALUES ('3244', '3242', '高雄市', '0');
INSERT INTO `mqu_area` VALUES ('3245', '3242', '高雄县', '0');
INSERT INTO `mqu_area` VALUES ('3246', '3242', '花莲县', '0');
INSERT INTO `mqu_area` VALUES ('3247', '3242', '基隆市', '0');
INSERT INTO `mqu_area` VALUES ('3248', '3242', '嘉义市', '0');
INSERT INTO `mqu_area` VALUES ('3249', '3242', '嘉义县', '0');
INSERT INTO `mqu_area` VALUES ('3250', '3242', '金门县', '0');
INSERT INTO `mqu_area` VALUES ('3251', '3242', '苗栗县', '0');
INSERT INTO `mqu_area` VALUES ('3252', '3242', '南投县', '0');
INSERT INTO `mqu_area` VALUES ('3253', '3242', '澎湖县', '0');
INSERT INTO `mqu_area` VALUES ('3254', '3242', '屏东县', '0');
INSERT INTO `mqu_area` VALUES ('3255', '3242', '台北县', '0');
INSERT INTO `mqu_area` VALUES ('3256', '3242', '台东县', '0');
INSERT INTO `mqu_area` VALUES ('3257', '3242', '台南市', '0');
INSERT INTO `mqu_area` VALUES ('3258', '3242', '台南县', '0');
INSERT INTO `mqu_area` VALUES ('3259', '3242', '台中市', '0');
INSERT INTO `mqu_area` VALUES ('3260', '3242', '台中县', '0');
INSERT INTO `mqu_area` VALUES ('3261', '3242', '桃园县', '0');
INSERT INTO `mqu_area` VALUES ('3262', '3242', '新竹市', '0');
INSERT INTO `mqu_area` VALUES ('3263', '3242', '新竹县', '0');
INSERT INTO `mqu_area` VALUES ('3264', '3242', '宜兰县', '0');
INSERT INTO `mqu_area` VALUES ('3265', '3242', '云林县', '0');
INSERT INTO `mqu_area` VALUES ('3266', '3242', '彰化县', '0');

-- ----------------------------
-- Table structure for mqu_article
-- ----------------------------
DROP TABLE IF EXISTS `mqu_article`;
CREATE TABLE `mqu_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `fromlink` varchar(80) NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `readgroup` varchar(255) NOT NULL DEFAULT '',
  `readpoint` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cc` varchar(255) NOT NULL DEFAULT '380*300',
  `author` varchar(255) NOT NULL DEFAULT '',
  `pin_image` varchar(80) NOT NULL DEFAULT '',
  `summary` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`lang`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_article
-- ----------------------------
INSERT INTO `mqu_article` VALUES ('29', '30', '3', 'admin', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直', '0', '/Uploads/201703/58cb9e1ddcd73.jpg', '0', '1', '1', '', '0', '0', '/company/show/29.html', '0', '1489737651', '1489739316', '', '3', '380*300', '', '/Uploads/201703/58cb980668f1d.jpg', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。');
INSERT INTO `mqu_article` VALUES ('30', '30', '3', 'admin', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直', '0', '/Uploads/201703/58cb9e1ddcd73.jpg', '0', '1', '1', '', '0', '0', '/company/show/30.html', '0', '1489737651', '1489739316', '', '3', '380*300', '', '/Uploads/201703/58cb980668f1d.jpg', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。');
INSERT INTO `mqu_article` VALUES ('31', '30', '3', 'admin', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直', '0', '/Uploads/201703/58cb9e1ddcd73.jpg', '0', '1', '1', '', '0', '0', '/company/show/31.html', '0', '1489737651', '1489739316', '', '3', '380*300', '', '/Uploads/201703/58cb980668f1d.jpg', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。');
INSERT INTO `mqu_article` VALUES ('32', '30', '3', 'admin', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直', '0', '/Uploads/201703/58cb9e1ddcd73.jpg', '0', '1', '1', '', '0', '0', '/company/show/32.html', '0', '1489737651', '1489739316', '', '3', '380*300', '', '/Uploads/201703/58cb980668f1d.jpg', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。');
INSERT INTO `mqu_article` VALUES ('33', '30', '3', 'admin', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直', '0', '/Uploads/201703/58cb9e1ddcd73.jpg', '0', '1', '1', '', '0', '0', '/company/show/33.html', '0', '1489737651', '1489739316', '', '3', '380*300', '', '/Uploads/201703/58cb980668f1d.jpg', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。');
INSERT INTO `mqu_article` VALUES ('34', '30', '3', 'admin', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直', '0', '/Uploads/201703/58cb9e1ddcd73.jpg', '0', '1', '1', '', '0', '0', '/company/show/34.html', '0', '1489737651', '1489739316', '', '3', '380*300', '', '/Uploads/201703/58cb980668f1d.jpg', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。');
INSERT INTO `mqu_article` VALUES ('35', '30', '3', 'admin', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直', '0', '/Uploads/201703/58cb9e1ddcd73.jpg', '0', '1', '1', '', '0', '0', '/company/show/35.html', '1', '1489737651', '1489739316', '', '3', '380*300', '', '/Uploads/201703/58cb980668f1d.jpg', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。');
INSERT INTO `mqu_article` VALUES ('36', '30', '3', 'admin', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '', '', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直', '0', '/Uploads/201703/58cb9e1ddcd73.jpg', '9', '1', '1', '', '0', '0', '/company/show/36.html', '94', '1489737651', '1489739316', '', '3', '380*300', '', '/Uploads/201703/58cb980668f1d.jpg', '是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。无人机实际上是无人驾驶飞行器的统称，从技术角度定义可以分为：无人直是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞行器。');

-- ----------------------------
-- Table structure for mqu_attachment
-- ----------------------------
DROP TABLE IF EXISTS `mqu_attachment`;
CREATE TABLE `mqu_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` varchar(80) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL DEFAULT '',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=320 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_attachment
-- ----------------------------
INSERT INTO `mqu_attachment` VALUES ('2', '230', '1', '7', 'lunbo2_03.jpg', '/Uploads/201609/57d76448c66e8.jpg', '126040', 'jpg', '1', '0', '1', '1473733704', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('53', '230', '1', '8', 'ban7_1.jpg', '/Uploads/201609/57e36c3433f9f.jpg', '228841', 'jpg', '1', '0', '1', '1474522164', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('52', '230', '1', '8', 'ban7_2.png', '/Uploads/201609/57e36b519277e.png', '8032', 'png', '1', '0', '1', '1474521937', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('55', '230', '1', '7', 'ban1_2.png', '/Uploads/201609/57e36c8db0c2f.png', '13445', 'png', '1', '0', '1', '1474522253', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('54', '230', '1', '7', 'ban1_1.jpg', '/Uploads/201609/57e36c833840f.jpg', '165260', 'jpg', '1', '0', '1', '1474522243', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('101', '231', '0', '12', 'review_img.png', '/Uploads/201610/57f9a3130c89b.png', '38214', 'png', '1', '0', '1', '1475978003', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('62', '231', '0', '4', 'ab01.jpg', '/Uploads/201609/57e3895c830fe.jpg', '9678', 'jpg', '1', '0', '1', '1474529628', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('195', '1', '43', '43', 'about4.jpg', '/Uploads/201610/580078bd397cb.jpg', '132939', 'jpg', '1', '0', '1', '1476425917', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('196', '5', '0', '0', '网站案例-郭明+妙丽（一部分.docx', '/Uploads/201610/580085597c0d2.docx', '23475', 'docx', '0', '0', '1', '1476429145', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('197', '13', '0', '0', 'pre_img.jpg', '/Uploads/201610/58008b9343348.jpg', '3863', 'jpg', '1', '1', '1', '1476430739', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('198', '13', '0', '0', 'pre_img.jpg', '/Uploads/201610/58008c2555d8b.jpg', '3863', 'jpg', '1', '1', '1', '1476430885', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('28', '4', '22', '1', '1.jpg', '/Uploads/201609/57dded6d3f329.jpg', '145449', 'jpg', '1', '0', '1', '1474162029', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('29', '4', '22', '1', '2.jpg', '/Uploads/201609/57dded6d5e730.jpg', '145744', 'jpg', '1', '0', '1', '1474162029', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('30', '4', '22', '1', '3.jpg', '/Uploads/201609/57dded6d6c1f4.jpg', '126230', 'jpg', '1', '0', '1', '1474162029', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('31', '4', '22', '1', '4.jpg', '/Uploads/201609/57dded6d7b80f.jpg', '158634', 'jpg', '1', '0', '1', '1474162029', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('32', '4', '22', '1', '5.jpg', '/Uploads/201609/57dded6d8b9e3.jpg', '116976', 'jpg', '1', '0', '1', '1474162029', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('33', '4', '22', '1', '6.jpg', '/Uploads/201609/57dded6d9c387.jpg', '147999', 'jpg', '1', '0', '1', '1474162029', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('191', '1', '43', '43', 'about_1.jpg', '/Uploads/201610/58006d2dbcc4b.jpg', '166902', 'jpg', '1', '0', '1', '1476422957', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('192', '1', '43', '43', 'about_2.jpg', '/Uploads/201610/58006fce4252c.jpg', '17102', 'jpg', '1', '0', '1', '1476423630', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('194', '1', '43', '43', 'about_3.jpg', '/Uploads/201610/580078b538279.jpg', '46119', 'jpg', '1', '0', '1', '1476425909', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('319', '230', '0', '0', 'logo1.png', '/Uploads/201703/58db4db7820f7.png', '4751', 'png', '1', '0', '3', '1490767287', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('58', '230', '1', '7', 'ban4_1.jpg', '/Uploads/201609/57e36d620db60.jpg', '243379', 'jpg', '1', '0', '1', '1474522466', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('140', '1', '49', '49', 'taimg.jpg', '/Uploads/201610/57fa32f13bcb9.jpg', '65965', 'jpg', '1', '0', '1', '1476014833', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('139', '1', '49', '49', 'taimg.jpg', '/Uploads/201610/57fa291467a3e.jpg', '65965', 'jpg', '1', '1', '1', '1476012308', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('138', '1', '49', '49', 'taimg.jpg', '/Uploads/201610/57fa16674364c.jpg', '65965', 'jpg', '1', '0', '1', '1476007527', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('133', '1', '49', '49', 'taimg.jpg', '/Uploads/201610/57fa164da5ab4.jpg', '65965', 'jpg', '1', '0', '1', '1476007501', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('134', '1', '49', '49', 'taimg.jpg', '/Uploads/201610/57fa1656bd3bc.jpg', '65965', 'jpg', '1', '0', '1', '1476007510', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('135', '1', '49', '49', 'taimg.jpg', '/Uploads/201610/57fa165c2d441.jpg', '65965', 'jpg', '1', '0', '1', '1476007516', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('136', '1', '49', '49', 'taimg.jpg', '/Uploads/201610/57fa1660bd210.jpg', '65965', 'jpg', '1', '0', '1', '1476007520', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('137', '1', '49', '49', 'taimg.jpg', '/Uploads/201610/57fa16645d79e.jpg', '65965', 'jpg', '1', '0', '1', '1476007524', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('188', '230', '0', '0', 'logo.png', '/Uploads/201610/57ff54b891c21.png', '10602', 'png', '1', '0', '1', '1476351160', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('215', '230', '1', '8', 'banner.jpg', '/Uploads/201611/582166024c206.jpg', '280708', 'jpg', '1', '0', '1', '1478583810', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('186', '230', '1', '7', 'banner4.jpg', '/Uploads/201610/57ff52f8e5984.jpg', '125332', 'jpg', '1', '0', '1', '1476350712', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('206', '4', '0', '0', 'ser_bg3.jpg', '/Uploads/201610/58046568b3e82.jpg', '75250', 'jpg', '1', '0', '1', '1476683112', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('211', '4', '49', '17', 'neiy-2_05.gif', '/Uploads/201610/580474847c0da.gif', '40243', 'gif', '1', '0', '1', '1476686980', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('210', '4', '49', '15', 'ser_bg6.jpg', '/Uploads/201610/58046ccc0e6c4.jpg', '167421', 'jpg', '1', '0', '1', '1476685004', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('209', '4', '49', '16', 'ser_bg7.jpg', '/Uploads/201610/58046cbe26278.jpg', '77185', 'jpg', '1', '0', '1', '1476684990', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('208', '4', '49', '17', 'ser_bg8.jpg', '/Uploads/201610/58046cb30a2ad.jpg', '49417', 'jpg', '1', '0', '1', '1476684979', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('185', '230', '1', '8', 'banner3.jpg', '/Uploads/201610/57ff52e1d5a5d.jpg', '505206', 'jpg', '1', '0', '1', '1476350689', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('169', '230', '1', '14', 'banner.jpg', '/Uploads/201610/57fd8fcb48d56.jpg', '215763', 'jpg', '1', '0', '1', '1476235211', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('205', '4', '49', '11', 'ser_bg2.jpg', '/Uploads/201610/5804655b8e5ea.jpg', '125885', 'jpg', '1', '0', '1', '1476683099', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('204', '4', '49', '10', 'ser_bg1.jpg', '/Uploads/201610/58045d4f45a77.jpg', '46125', 'jpg', '1', '0', '1', '1476681039', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('203', '4', '49', '10', 'ser_bg1.jpg', '/Uploads/201610/580449cda3c9c.jpg', '46125', 'jpg', '1', '0', '1', '1476676045', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('212', '4', '49', '14', 'ser_bg4.jpg', '/Uploads/201610/5804a01fb8b8f.jpg', '116251', 'jpg', '1', '0', '1', '1476698143', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('213', '4', '49', '10', 'ser_bg5.jpg', '/Uploads/201610/5804a05437540.jpg', '87652', 'jpg', '1', '0', '1', '1476698196', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('179', '12', '80', '4', 'video2.jpg', '/Uploads/201610/57fdf80582b79.jpg', '13052', 'jpg', '1', '1', '1', '1476261893', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('180', '12', '80', '3', 'video2.jpg', '/Uploads/201610/57fdf811c0a7e.jpg', '13052', 'jpg', '1', '1', '1', '1476261905', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('207', '4', '0', '0', 'ser_bg3.jpg', '/Uploads/201610/580469d0506b1.jpg', '75250', 'jpg', '1', '0', '1', '1476684240', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('234', '2', '40', '0', '11_12.jpg', '/Uploads/201703/58bd2eda0ba15.jpg', '6519', 'jpg', '1', '0', '3', '1488793306', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('235', '2', '41', '0', '11_15.jpg', '/Uploads/201703/58bd2ee74c1b4.jpg', '5007', 'jpg', '1', '0', '3', '1488793319', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('253', '3', '5', '63', '产品1.jpg', '/Uploads/201703/58ca584307f6b.jpg', '43404', 'jpg', '1', '0', '3', '1489655875', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('254', '3', '5', '63', '产品2.jpg', '/Uploads/201703/58ca586147222.jpg', '25445', 'jpg', '1', '1', '3', '1489655905', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('238', '230', '4', '23', '内页banner.png', '/Uploads/201703/58bd43a39797e.png', '150530', 'png', '1', '0', '3', '1488798627', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('239', '230', '4', '23', '软件下载_02.png', '/Uploads/201703/58bd43ab22553.png', '117926', 'png', '1', '0', '3', '1488798635', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('256', '3', '5', '62', '产品2.jpg', '/Uploads/201703/58ca5bd6e1972.jpg', '25445', 'jpg', '1', '1', '3', '1489656790', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('255', '3', '7', '71', '产品2.jpg', '/Uploads/201703/58ca5bc024e74.jpg', '25445', 'jpg', '1', '1', '3', '1489656768', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('243', '5', '38', '4', 'images.zip', '/Uploads/201703/58be861a5a3d0.zip', '49591', 'zip', '0', '0', '3', '1488881178', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('244', '5', '0', '0', 'images.zip', '/Uploads/201703/58c0f0cec0acb.zip', '49591', 'zip', '0', '0', '3', '1489039566', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('281', '5', '0', '0', 'down.jpg', '/Uploads/201703/58d08bad42337.jpg', '9175', 'jpg', '1', '1', '3', '1490062253', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('307', '230', '0', '0', 'barcode.jpg', '/Uploads/201703/58d237eb64563.jpg', '18586', 'jpg', '1', '0', '3', '1490171883', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('250', '230', '1', '19', '首页banner1.jpg', '/Uploads/201703/58c8ba4d474a0.jpg', '637576', 'jpg', '1', '0', '3', '1489549901', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('251', '230', '1', '18', '首页banner2.jpg', '/Uploads/201703/58c8ba666cb76.jpg', '556122', 'jpg', '1', '0', '3', '1489549926', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('252', '230', '1', '24', '首页banner3.jpg', '/Uploads/201703/58c8ba87cfd4d.jpg', '600713', 'jpg', '1', '0', '3', '1489549959', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('257', '3', '5', '60', '产品3.jpg', '/Uploads/201703/58ca5befbef6c.jpg', '31250', 'jpg', '1', '1', '3', '1489656815', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('258', '3', '5', '57', '产品4.jpg', '/Uploads/201703/58ca5c0956615.jpg', '13512', 'jpg', '1', '1', '3', '1489656841', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('259', '3', '5', '56', '产品5.jpg', '/Uploads/201703/58ca5c1edeeaf.jpg', '21399', 'jpg', '1', '1', '3', '1489656862', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('260', '3', '6', '58', '产品2.jpg', '/Uploads/201703/58ca5c3b3f733.jpg', '25445', 'jpg', '1', '1', '3', '1489656891', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('261', '3', '6', '55', '产品3.jpg', '/Uploads/201703/58ca5c43a3724.jpg', '31250', 'jpg', '1', '1', '3', '1489656899', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('262', '3', '6', '54', '产品4.jpg', '/Uploads/201703/58ca5c4c79be0.jpg', '13512', 'jpg', '1', '1', '3', '1489656908', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('263', '3', '6', '53', '产品5.jpg', '/Uploads/201703/58ca5c53786a8.jpg', '21399', 'jpg', '1', '1', '3', '1489656915', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('264', '3', '5', '61', '产品5.jpg', '/Uploads/201703/58ca5dbde3352.jpg', '21399', 'jpg', '1', '1', '3', '1489657277', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('265', '3', '5', '62', '产品3.jpg', '/Uploads/201703/58ca5de16f2f8.jpg', '31250', 'jpg', '1', '1', '3', '1489657313', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('266', '3', '5', '57', '产品2.jpg', '/Uploads/201703/58ca5e0ea40cc.jpg', '25445', 'jpg', '1', '1', '3', '1489657358', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('267', '3', '5', '60', '产品2.jpg', '/Uploads/201703/58ca5e48e4353.jpg', '25445', 'jpg', '1', '1', '3', '1489657416', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('268', '18', '40', '1', '方案1.jpg', '/Uploads/201703/58cb86261d731.jpg', '39636', 'jpg', '1', '1', '3', '1489733158', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('269', '18', '40', '4', '方案4.jpg', '/Uploads/201703/58cb86cb7fc81.jpg', '32147', 'jpg', '1', '1', '3', '1489733323', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('270', '18', '40', '3', '方案3.jpg', '/Uploads/201703/58cb870de1910.jpg', '35681', 'jpg', '1', '1', '3', '1489733389', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('271', '18', '40', '2', '方案2.jpg', '/Uploads/201703/58cb871c43cdf.jpg', '43791', 'jpg', '1', '1', '3', '1489733404', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('272', '2', '30', '29', '新闻1.jpg', '/Uploads/201703/58cb980668f1d.jpg', '24523', 'jpg', '1', '0', '3', '1489737734', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('273', '2', '30', '29', '图层 153.jpg', '/Uploads/201703/58cb9e1ddcd73.jpg', '16926', 'jpg', '1', '1', '3', '1489739293', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('274', '7', '0', '3', '华为.jpg', '/Uploads/201703/58cbac8587c0b.jpg', '6124', 'jpg', '1', '0', '3', '1489742981', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('275', '2', '30', '0', '新闻中心.jpg', '/Uploads/201703/58cf3892cd393.jpg', '288890', 'jpg', '1', '0', '3', '1489975442', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('276', '2', '31', '0', '新闻中心.jpg', '/Uploads/201703/58cf38a96c79c.jpg', '288890', 'jpg', '1', '0', '3', '1489975465', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('277', '18', '40', '0', '解决方案.jpg', '/Uploads/201703/58cfa65b5a54c.jpg', '265675', 'jpg', '1', '0', '3', '1490003547', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('278', '18', '41', '0', '解决方案.jpg', '/Uploads/201703/58cfa66a1add4.jpg', '265675', 'jpg', '1', '0', '3', '1490003562', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('279', '17', '23', '1', '成功案例.jpg', '/Uploads/201703/58cfb71ba7cad.jpg', '41488', 'jpg', '1', '1', '3', '1490007835', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('280', '17', '23', '0', '成功案例.jpg', '/Uploads/201703/58cfb9efdb633.jpg', '379732', 'jpg', '1', '0', '3', '1490008559', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('282', '5', '38', '4', 'down.jpg', '/Uploads/201703/58d08bead96ed.jpg', '8934', 'jpg', '1', '1', '3', '1490062314', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('283', '5', '52', '0', '服务与支持.jpg', '/Uploads/201703/58d09313c1057.jpg', '216423', 'jpg', '1', '0', '3', '1490064147', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('284', '1', '51', '0', '服务与支持.jpg', '/Uploads/201703/58d09326b9ce8.jpg', '216423', 'jpg', '1', '0', '3', '1490064166', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('285', '4', '25', '0', '关于鼎飞.jpg', '/Uploads/201703/58d0bd27de8a9.jpg', '352164', 'jpg', '1', '0', '3', '1490074919', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('286', '4', '25', '18', '资质.jpg', '/Uploads/201703/58d0c04e2990e.jpg', '50010', 'jpg', '1', '1', '3', '1490075726', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('287', '1', '26', '26', '组 5.jpg', '/Uploads/201703/58d0cde63f5ff.jpg', '54508', 'jpg', '1', '0', '3', '1490079206', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('288', '1', '26', '26', 'tupian2.jpg', '/Uploads/201703/58d0cea46c61e.jpg', '48567', 'jpg', '1', '0', '3', '1490079396', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('289', '1', '26', '26', '组 6.jpg', '/Uploads/201703/58d0d02520674.jpg', '41359', 'jpg', '1', '0', '3', '1490079781', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('290', '1', '26', '26', '组 7.jpg', '/Uploads/201703/58d0d02552bae.jpg', '60681', 'jpg', '1', '0', '3', '1490079781', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('291', '1', '26', '26', '组 8.jpg', '/Uploads/201703/58d0d0257e7b5.jpg', '48584', 'jpg', '1', '0', '3', '1490079781', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('292', '1', '26', '26', '组 9.jpg', '/Uploads/201703/58d0d025a097a.jpg', '37878', 'jpg', '1', '0', '3', '1490079781', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('293', '1', '26', '26', '组 10.jpg', '/Uploads/201703/58d0d025c7a1a.jpg', '52556', 'jpg', '1', '0', '3', '1490079781', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('294', '1', '26', '0', '关于鼎飞.jpg', '/Uploads/201703/58d0d6e047abc.jpg', '352164', 'jpg', '1', '0', '3', '1490081504', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('295', '1', '28', '0', '业务合作.jpg', '/Uploads/201703/58d0d70415474.jpg', '218033', 'jpg', '1', '0', '3', '1490081540', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('296', '1', '28', '28', '组 11.jpg', '/Uploads/201703/58d0dab5516c4.jpg', '22979', 'jpg', '1', '0', '3', '1490082485', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('297', '1', '28', '28', '组 11.jpg', '/Uploads/201703/58d0daff0711a.jpg', '35035', 'jpg', '1', '0', '3', '1490082559', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('298', '1', '28', '28', '组 12.jpg', '/Uploads/201703/58d0db126598b.jpg', '153177', 'jpg', '1', '0', '3', '1490082578', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('299', '1', '28', '28', '地图.jpg', '/Uploads/201703/58d0db2c33754.jpg', '69721', 'jpg', '1', '0', '3', '1490082604', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('300', '1', '24', '0', '关于鼎飞.jpg', '/Uploads/201703/58d0dfc9c35bd.jpg', '352164', 'jpg', '1', '0', '3', '1490083785', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('301', '1', '33', '0', '关于鼎飞.jpg', '/Uploads/201703/58d0dff33bb10.jpg', '352164', 'jpg', '1', '0', '3', '1490083827', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('302', '1', '27', '0', '飞行学院.jpg', '/Uploads/201703/58d0e030bc3c2.jpg', '448160', 'jpg', '1', '0', '3', '1490083888', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('303', '1', '27', '27', '组 13.jpg', '/Uploads/201703/58d0e34f893ca.jpg', '105878', 'jpg', '1', '0', '3', '1490084687', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('304', '1', '27', '27', '组 14.jpg', '/Uploads/201703/58d0e3a0ac594.jpg', '71997', 'jpg', '1', '0', '3', '1490084768', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('305', '1', '27', '27', '组 15.jpg', '/Uploads/201703/58d0e3eea6766.jpg', '119426', 'jpg', '1', '0', '3', '1490084846', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('306', '1', '27', '27', '组 16.jpg', '/Uploads/201703/58d0e3fce9583.jpg', '98992', 'jpg', '1', '0', '3', '1490084860', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('308', '3', '0', '0', '网站开发需求内容-销售人员必填！.doc', '/Uploads/201703/58d33c057280a.doc', '39936', 'doc', '0', '0', '3', '1490238469', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('309', '3', '7', '72', '单个产品详情banner大图.jpg', '/Uploads/201703/58d381c05e452.jpg', '217625', 'jpg', '1', '0', '3', '1490256320', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('310', '3', '5', '0', '产品中心.jpg', '/Uploads/201703/58d386e72c754.jpg', '303387', 'jpg', '1', '0', '3', '1490257639', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('311', '3', '6', '0', '产品中心.jpg', '/Uploads/201703/58d386f296035.jpg', '303387', 'jpg', '1', '0', '3', '1490257650', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('312', '3', '7', '0', '产品中心.jpg', '/Uploads/201703/58d386fcb0389.jpg', '303387', 'jpg', '1', '0', '3', '1490257660', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('313', '3', '7', '72', '无人机图片.jpg', '/Uploads/201703/58d49292733ef.jpg', '74192', 'jpg', '1', '0', '3', '1490326162', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('314', '3', '7', '72', '图片.jpg', '/Uploads/201703/58d4bc55a0d19.jpg', '186234', 'jpg', '1', '0', '3', '1490336853', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('315', '2', '0', '0', 'video.jpg', '/Uploads/201703/58d9cc3daa6ce.jpg', '57124', 'jpg', '1', '1', '3', '1490668605', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('316', '22', '0', '8', 'video.jpg', '/Uploads/201703/58d9cc4f305c8.jpg', '57124', 'jpg', '1', '1', '3', '1490668623', '127.0.0.1', '1');
INSERT INTO `mqu_attachment` VALUES ('317', '22', '0', '0', '成功案例.jpg', '/Uploads/201703/58d9cfd2c0512.jpg', '41488', 'jpg', '1', '0', '3', '1490669522', '127.0.0.1', '0');
INSERT INTO `mqu_attachment` VALUES ('318', '22', '0', '8', 'sj-video.Mp4', '/Uploads/201703/58d9d79b75e99.mp4', '38298797', 'mp4', '0', '0', '3', '1490671515', '127.0.0.1', '1');

-- ----------------------------
-- Table structure for mqu_block
-- ----------------------------
DROP TABLE IF EXISTS `mqu_block`;
CREATE TABLE `mqu_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pos` char(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `link` varchar(255) NOT NULL DEFAULT '',
  `image1` varchar(255) NOT NULL DEFAULT '',
  `image2` varchar(255) NOT NULL DEFAULT '',
  `file1` varchar(255) NOT NULL DEFAULT '',
  `file2` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_block
-- ----------------------------
INSERT INTO `mqu_block` VALUES ('39', 'stats_code', '统计代码', '3', '', '', '', '', '', '');
INSERT INTO `mqu_block` VALUES ('38', 'stats_code', '统计代码', '2', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for mqu_cart
-- ----------------------------
DROP TABLE IF EXISTS `mqu_cart`;
CREATE TABLE `mqu_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sessionid` char(32) NOT NULL DEFAULT '',
  `moduleid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_thumb` varchar(120) NOT NULL DEFAULT '',
  `product_name` varchar(120) NOT NULL DEFAULT '',
  `product_url` varchar(120) NOT NULL DEFAULT '',
  `product_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr` text NOT NULL,
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isgift` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sessionid` (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_cart
-- ----------------------------

-- ----------------------------
-- Table structure for mqu_category
-- ----------------------------
DROP TABLE IF EXISTS `mqu_category`;
CREATE TABLE `mqu_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `cssclass` varchar(30) DEFAULT NULL,
  `content` varchar(800) DEFAULT NULL,
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isfootermenu` tinyint(1) NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `image2` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlruleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `presentpoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `chargepoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `repeatchargedays` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_category
-- ----------------------------
INSERT INTO `mqu_category` VALUES ('4', '解决方案', '', 'solution', '', '', '0', '0', '', '0', '4,40,41', '1', '', '', '', '4', '0', '1', '1', '0', '', '', '1', '/for_police/', 'list2', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('3', '产品中心', '', '', '鼎飞航空集自主研发、生产、销售、培训及服务于一体，汇聚业内实力最强的研发精英队伍，自主研发了多款载重大、航时长、强度高与自重轻的无人机产品，达到了世界级领先水平，在军事、公安、消防、林业、海洋、测绘、交通等多个专业领域都得到了广泛应用。 \r\n', '', '0', '0', '', '0', '3,5,6,7', '1', '', '', '', '3', '0', '1', '1', '0', '', '', '1', '/uav', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('5', '无人机', 'uav', '', '', '/', '3', '3', 'Product', '0,3', '5', '0', '', '', '', '3', '0', '1', '0', '0', '/Uploads/201703/58d386e72c754.jpg', '', '0', '/uav/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('6', '平台系统', 'platform', '', '', '/', '3', '3', 'Product', '0,3', '6', '0', '', '', '', '4', '0', '1', '0', '0', '/Uploads/201703/58d386f296035.jpg', '', '0', '/platform/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('7', '部件配件', 'parts', '', '', '/', '3', '3', 'Product', '0,3', '7', '0', '', '', '', '5', '0', '1', '0', '0', '/Uploads/201703/58d386fcb0389.jpg', '', '0', '/parts/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('8', '服务与支持', '', null, null, '', '0', '0', '', '0', '8,51,52', '1', '', '', '', '5', '0', '1', '0', '0', '', '', '1', '/service/', 'list1', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('9', '关于鼎飞', 'aboutus', '', '', '', '0', '0', '', '0', '9,24,25,26,33', '1', '', '', '', '1', '0', '1', '1', '0', '', '', '1', '/about/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('105', '无人机', 'uav', null, null, '/', '103', '3', 'Product', '0,103', '105', '0', '', '', '', '3', '0', '1', '0', '0', '/Uploads/201703/58d386e72c754.jpg', '', '0', '/en/uav/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('106', '平台系统', 'platform', null, null, '/', '103', '3', 'Product', '0,103', '106', '0', '', '', '', '4', '0', '1', '0', '0', '/Uploads/201703/58d386f296035.jpg', '', '0', '/en/platform/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('104', '解决方案', '', '', '', '', '0', '0', '', '0', '104,140,141', '1', '', '', '', '4', '0', '1', '0', '0', '', '', '1', '/en/for_police/', 'list2', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('103', '产品中心', '', '', '', '', '0', '0', '', '0', '103,105,106,107', '1', '', '', '', '3', '0', '1', '0', '0', '', '', '1', '/en/uav/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('24', '公司简介', 'about', '', '', 'aboutus/', '9', '1', 'Page', '0,9', '24', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58d0dfc9c35bd.jpg', '', '0', '/about/', 'about', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('23', '成功案例', 'case', '', '', '', '0', '17', 'Project', '0', '23', '0', '', '', '', '8', '0', '1', '0', '0', '/Uploads/201703/58cfb9efdb633.jpg', '', '0', '/case/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('25', '公司资质', 'certificate', '', '', 'aboutus/', '9', '4', 'Picture', '0,9', '25', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58d0bd27de8a9.jpg', '', '0', '/certificate/', 'list', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('26', '研发生产', 'research', '', '', 'aboutus/', '9', '1', 'Page', '0,9', '26', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58d0d6e047abc.jpg', '', '0', '/research/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('27', '飞行学院', 'college', '', '', '', '0', '1', 'Page', '0', '27', '0', '', '', '', '7', '0', '1', '0', '0', '/Uploads/201703/58d0e030bc3c2.jpg', '', '0', '/college/', 'hezuo', 'hezuo', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('28', '业务合作', 'cooperation', '', '', '', '0', '1', 'Page', '0', '28', '0', '', '', '', '6', '0', '1', '0', '0', '/Uploads/201703/58d0d70415474.jpg', '', '0', '/cooperation/', 'hezuo', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('29', '新闻中心', 'news', '', '', '', '0', '0', '', '0', '29,30,31', '1', '', '', '', '2', '0', '1', '1', '0', '', '', '1', '/company/', '', '', '1', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('30', '公司新闻', 'company', '', '', 'news/', '29', '2', 'Article', '0,29', '30', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58cf3892cd393.jpg', '', '0', '/company/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('31', '行业新闻', 'industry', '', '', 'news/', '29', '2', 'Article', '0,29', '31', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58cf38a96c79c.jpg', '', '0', '/industry/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('32', '客户服务', 'service', null, null, 'footer/', '20', '0', '', '0,20', '32,34,35,36', '1', '', '', '', '0', '0', '1', '0', '0', '', '', '1', '', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('33', '联系我们', 'contactus', '', '', 'aboutus/', '9', '1', 'Page', '0,9', '33', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58d0dff33bb10.jpg', '', '0', '/contactus/', 'contact', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('34', '售后服务', 'after_sale', null, null, 'footer/service/', '32', '2', 'Article', '0,20,32', '34', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/after_sale/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('35', '技术支持', 'support', null, null, 'footer/service/', '32', '2', 'Article', '0,20,32', '35', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/support/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('36', '应用服务', 'services', null, null, 'footer/service/', '32', '1', 'Page', '0,20,32', '36', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/services/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('37', '人才招聘', 'jobs', null, null, 'footer/', '20', '1', 'Page', '0,20', '37', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/jobs/', '', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('38', '软件下载', 'download', '', '', 'footer/', '20', '5', 'Download', '0,20', '38', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/download/', 'list', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('39', '联系我们', 'contact', null, null, 'footer/', '20', '1', 'Page', '0,20', '39', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/contact/', 'contact', 'contact', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('40', '警用方案', 'for_police', '', '', '/', '4', '18', 'Solution', '0,4', '40', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58cfa65b5a54c.jpg', '', '0', '/for_police/', 'index', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('41', '消防方案', 'for_fire', '', '', '/', '4', '18', 'Solution', '0,4', '41', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58cfa66a1add4.jpg', '', '0', '/for_fire/', 'index', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('51', '服务政策', 'service', '', '', '/', '8', '1', 'Page', '0,8', '51', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58d09326b9ce8.jpg', '', '0', '/service/', 'index', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('52', '资源下载', 'support', '', '', '/', '8', '5', 'Download', '0,8', '52', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58d09313c1057.jpg', '', '0', '/support/', 'list', '', '0', '', '0', '3', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('123', '成功案例', 'case', null, null, '', '0', '17', 'Project', '0', '123', '0', '', '', '', '8', '0', '1', '0', '0', '/Uploads/201703/58cfb9efdb633.jpg', '', '0', '/en/case/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('125', '公司资质', 'certificate', null, null, 'aboutus/', '109', '4', 'Picture', '0,109', '125', '0', '', '', '', '2', '0', '1', '0', '0', '/Uploads/201703/58d0bd27de8a9.jpg', '', '0', '/en/certificate/', 'list', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('126', '研发生产', 'research', null, null, 'aboutus/', '109', '1', 'Page', '0,109', '126', '0', '', '', '', '3', '0', '1', '0', '0', '/Uploads/201703/58d0d6e047abc.jpg', '', '0', '/en/research/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('127', '飞行学院', 'college', null, null, '', '0', '1', 'Page', '0', '127', '0', '', '', '', '7', '0', '1', '0', '0', '/Uploads/201703/58d0e030bc3c2.jpg', '', '0', '/en/college/', 'hezuo', 'hezuo', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('128', '业务合作', 'cooperation', null, null, '', '0', '1', 'Page', '0', '128', '0', '', '', '', '6', '0', '1', '0', '0', '/Uploads/201703/58d0d70415474.jpg', '', '0', '/en/cooperation/', 'hezuo', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('129', '新闻中心', 'news', '', '', '', '0', '0', '', '0', '129,130,131', '1', '', '', '', '2', '0', '1', '0', '0', '', '', '1', '/en/company/', '', '', '1', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('130', '公司新闻', 'company', null, null, 'news/', '129', '2', 'Article', '0,129', '130', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58cf3892cd393.jpg', '', '0', '/en/company/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('131', '行业新闻', 'industry', null, null, 'news/', '129', '2', 'Article', '0,129', '131', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58cf38a96c79c.jpg', '', '0', '/en/industry/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('132', '客户服务', 'service', null, null, 'footer/', '120', '0', '', '0,20', '32,34,35,36', '1', '', '', '', '0', '0', '1', '0', '0', '', '', '1', '', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('133', '联系我们', 'contactus', null, null, 'aboutus/', '109', '1', 'Page', '0,109', '133', '0', '', '', '', '4', '0', '1', '0', '0', '/Uploads/201703/58d0dff33bb10.jpg', '', '0', '/en/contactus/', 'contact', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('134', '售后服务', 'after_sale', null, null, 'footer/service/', '132', '2', 'Article', '0,20,32', '34', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/after_sale/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('135', '技术支持', 'support', null, null, 'footer/service/', '132', '2', 'Article', '0,20,32', '35', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/support/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('136', '应用服务', 'services', null, null, 'footer/service/', '132', '1', 'Page', '0,20,32', '36', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/services/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('137', '人才招聘', 'jobs', null, null, 'footer/', '120', '1', 'Page', '0,20', '37', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/jobs/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('138', '软件下载', 'download', null, null, 'footer/', '120', '5', 'Download', '0,20', '38', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/download/', 'list', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('139', '联系我们', 'contact', null, null, 'footer/', '120', '1', 'Page', '0,20', '39', '0', '', '', '', '0', '0', '1', '0', '0', '', '', '0', '/contact/', 'contact', 'contact', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('140', '警用方案', 'for_police', null, null, '/', '104', '18', 'Solution', '0,104', '140', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58cfa65b5a54c.jpg', '', '0', '/en/for_police/', 'index', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('141', '消防方案', 'for_fire', null, null, '/', '104', '18', 'Solution', '0,104', '141', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58cfa66a1add4.jpg', '', '0', '/en/for_fire/', 'index', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('151', '服务政策', 'service', null, null, '/', '108', '1', 'Page', '0,108', '151', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58d09326b9ce8.jpg', '', '0', '/en/service/', 'index', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('152', '资源下载', 'support', null, null, '/', '108', '5', 'Download', '0,108', '152', '0', '', '', '', '0', '0', '1', '0', '0', '/Uploads/201703/58d09313c1057.jpg', '', '0', '/en/support/', 'list', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('107', '部件配件', 'parts', null, null, '/', '103', '3', 'Product', '0,103', '107', '0', '', '', '', '5', '0', '1', '0', '0', '/Uploads/201703/58d386fcb0389.jpg', '', '0', '/en/parts/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('108', '服务与支持', '', '', '', '', '0', '0', '', '0', '108,151,152', '1', '', '', '', '5', '0', '1', '0', '0', '', '', '1', '/en/service/', 'list1', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('109', '关于鼎飞', 'aboutus', '', '', '', '0', '0', '', '0', '109,124,125,126,133', '1', '', '', '', '1', '0', '1', '0', '0', '', '', '1', '/en/about/', '', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');
INSERT INTO `mqu_category` VALUES ('124', '公司简介', 'about', null, null, 'aboutus/', '109', '1', 'Page', '0,109', '124', '0', '', '', '', '1', '0', '1', '0', '0', '/Uploads/201703/58d0dfc9c35bd.jpg', '', '0', '/en/about/', 'about', '', '0', '', '0', '2', '4', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for mqu_config
-- ----------------------------
DROP TABLE IF EXISTS `mqu_config`;
CREATE TABLE `mqu_config` (
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `varname` (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_config
-- ----------------------------
INSERT INTO `mqu_config` VALUES ('site_name', '网站名称', '2', '中山中智光电照明欢迎你!', '1');
INSERT INTO `mqu_config` VALUES ('site_url', '网站网址', '2', 'http://www.gd.com/', '1');
INSERT INTO `mqu_config` VALUES ('logo', '网站LOGO', '2', '/Uploads/201610/57fd8a3dc2e74.png', '1');
INSERT INTO `mqu_config` VALUES ('site_email', '站点邮箱', '2', 'admin@qq.cn', '1');
INSERT INTO `mqu_config` VALUES ('seo_title', '网站标题', '2', '企业建站-企业网站-行业网站建设-门户网站建设', '1');
INSERT INTO `mqu_config` VALUES ('seo_keywords', '关键词', '2', '中山中智光电照明欢迎你!', '1');
INSERT INTO `mqu_config` VALUES ('seo_description', '网站简介', '2', '中山中智光电照明欢迎你!中山中智光电照明欢迎你!', '1');
INSERT INTO `mqu_config` VALUES ('mail_type', '邮件发送模式', '4', '1', '0');
INSERT INTO `mqu_config` VALUES ('mail_server', '邮件服务器', '4', 'smtp.qq.com', '0');
INSERT INTO `mqu_config` VALUES ('mail_port', '邮件发送端口', '4', '465', '0');
INSERT INTO `mqu_config` VALUES ('mail_from', '发件人地址', '4', '2851762177@qq.com', '0');
INSERT INTO `mqu_config` VALUES ('mail_auth', 'AUTH LOGIN验证', '4', '1', '0');
INSERT INTO `mqu_config` VALUES ('mail_ssl', 'SSL验证', '4', '1', '0');
INSERT INTO `mqu_config` VALUES ('mail_user', '验证用户名', '4', '2851762177@qq.com', '0');
INSERT INTO `mqu_config` VALUES ('mail_password', '验证密码', '4', 'hpdkithkprehdceh', '0');
INSERT INTO `mqu_config` VALUES ('attach_maxsize', '允许上传附件大小', '5', '52000000', '0');
INSERT INTO `mqu_config` VALUES ('attach_allowext', '允许上传附件类型', '5', 'jpg,jpeg,gif,png,doc,docx,xls,xlsx,ppt,pptx,rar,zip,swf,pdf,mp4', '0');
INSERT INTO `mqu_config` VALUES ('watermark_enable', '是否开启图片水印', '5', '0', '0');
INSERT INTO `mqu_config` VALUES ('watemard_text', '水印文字内容', '5', 'NUO', '0');
INSERT INTO `mqu_config` VALUES ('watemard_text_size', '文字大小', '5', '18', '0');
INSERT INTO `mqu_config` VALUES ('watemard_text_color', 'watemard_text_color', '5', '#FFFFFF', '0');
INSERT INTO `mqu_config` VALUES ('watemard_text_face', '字体', '5', 'elephant.ttf', '0');
INSERT INTO `mqu_config` VALUES ('watermark_minwidth', '图片最小宽度', '5', '300', '0');
INSERT INTO `mqu_config` VALUES ('watermark_minheight', '水印最小高度', '5', '300', '0');
INSERT INTO `mqu_config` VALUES ('watermark_img', '水印图片名称', '5', 'mark.png', '0');
INSERT INTO `mqu_config` VALUES ('watermark_pct', '水印透明度', '5', '80', '0');
INSERT INTO `mqu_config` VALUES ('watermark_quality', 'JPEG 水印质量', '5', '100', '0');
INSERT INTO `mqu_config` VALUES ('watermark_pospadding', '水印边距', '5', '10', '0');
INSERT INTO `mqu_config` VALUES ('watermark_pos', '水印位置', '5', '9', '0');
INSERT INTO `mqu_config` VALUES ('PAGE_LISTROWS', '列表分页数', '6', '15', '0');
INSERT INTO `mqu_config` VALUES ('URL_MODEL', 'URL访问模式', '6', '2', '0');
INSERT INTO `mqu_config` VALUES ('URL_PATHINFO_DEPR', '参数分割符', '6', '/', '0');
INSERT INTO `mqu_config` VALUES ('URL_HTML_SUFFIX', 'URL伪静态后缀', '6', '.html', '0');
INSERT INTO `mqu_config` VALUES ('TOKEN_ON', '令牌验证', '6', '0', '0');
INSERT INTO `mqu_config` VALUES ('TOKEN_NAME', '令牌表单字段', '6', '__hash__', '0');
INSERT INTO `mqu_config` VALUES ('TMPL_CACHE_ON', '模板编译缓存', '6', '0', '0');
INSERT INTO `mqu_config` VALUES ('TMPL_CACHE_TIME', '模板缓存有效期', '6', '-1', '0');
INSERT INTO `mqu_config` VALUES ('HTML_CACHE_ON', '静态缓存', '6', '0', '0');
INSERT INTO `mqu_config` VALUES ('HTML_CACHE_TIME', '缓存有效期', '6', '60', '0');
INSERT INTO `mqu_config` VALUES ('HTML_READ_TYPE', '缓存读取方式', '6', '0', '0');
INSERT INTO `mqu_config` VALUES ('HTML_FILE_SUFFIX', '静态文件后缀', '6', '.html', '0');
INSERT INTO `mqu_config` VALUES ('ADMIN_ACCESS', 'ADMIN_ACCESS', '6', 'ffb7e851ce6872a7a7b1295bdd50dfa0', '0');
INSERT INTO `mqu_config` VALUES ('DEFAULT_THEME', '默认模板', '6', 'Default', '0');
INSERT INTO `mqu_config` VALUES ('HOME_ISHTML', '首页生成html', '6', '0', '0');
INSERT INTO `mqu_config` VALUES ('URL_URLRULE', 'URL', '6', '{$catdir}/show/{$id}.html|{$catdir}/show/{$id}_{$page}.html:::{$catdir}/|{$catdir}/{$page}.html', '0');
INSERT INTO `mqu_config` VALUES ('ADMIN_DEFAULT_LANG', '默认语言', '6', 'zh-cn', '0');
INSERT INTO `mqu_config` VALUES ('DEFAULT_LANG', '默认语言', '6', 'cn', '0');
INSERT INTO `mqu_config` VALUES ('member_register', '允许新会员注册', '3', '0', '1');
INSERT INTO `mqu_config` VALUES ('member_emailcheck', '新会员注册需要邮件验证', '3', '0', '1');
INSERT INTO `mqu_config` VALUES ('member_registecheck', '新会员注册需要审核', '3', '1', '1');
INSERT INTO `mqu_config` VALUES ('member_login_verify', '注册登陆开启验证码', '3', '1', '1');
INSERT INTO `mqu_config` VALUES ('member_emailchecktpl', '邮件认证模板', '3', ' 欢迎您注册，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}', '1');
INSERT INTO `mqu_config` VALUES ('member_getpwdemaitpl', '密码找回邮件内容', '3', '尊敬的用户{username}，请点击进入<a href=\"{url}\">重置密码</a>,或者将网址复制到浏览器：{url}（链接3天内有效）。<br>感谢您对本站的支持。<br>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　{sitename}<br>此邮件为系统自动邮件，无需回复。', '1');
INSERT INTO `mqu_config` VALUES ('LAYOUT_ON', '布局模板', '6', '1', '0');
INSERT INTO `mqu_config` VALUES ('ADMIN_VERIFY', '后台登陆验证码', '6', '1', '0');
INSERT INTO `mqu_config` VALUES ('site_name', '网站名称', '2', '广州鼎飞航空科技有限公司', '2');
INSERT INTO `mqu_config` VALUES ('site_url', '网站网址', '2', 'http://dingfei.cc', '2');
INSERT INTO `mqu_config` VALUES ('logo', '网站LOGO', '2', '/Uploads/201703/58db4db7820f7.png', '2');
INSERT INTO `mqu_config` VALUES ('site_email', '站点邮箱', '2', 'dingfeihangkong@smartflycar.com', '2');
INSERT INTO `mqu_config` VALUES ('seo_title', '网站标题', '2', '广州鼎飞航空科技有限公司', '2');
INSERT INTO `mqu_config` VALUES ('seo_keywords', '关键词', '2', '广州鼎飞航空科技有限公司', '2');
INSERT INTO `mqu_config` VALUES ('seo_description', '网站简介', '2', '广州鼎飞航空科技有限公司', '2');
INSERT INTO `mqu_config` VALUES ('member_register', '允许新会员注册', '3', '1', '2');
INSERT INTO `mqu_config` VALUES ('member_emailcheck', '新会员注册需要邮件验证', '3', '0', '2');
INSERT INTO `mqu_config` VALUES ('member_registecheck', '新会员注册需要审核', '3', '1', '2');
INSERT INTO `mqu_config` VALUES ('member_login_verify', '注册登陆开启验证码', '3', '1', '2');
INSERT INTO `mqu_config` VALUES ('member_emailchecktpl', '邮件认证模板', '3', ' Welcome to register as yourphp user, you need to mail account authentication, click the following link authentication: {click}  r  n or copy the URL into your browser: {url}', '2');
INSERT INTO `mqu_config` VALUES ('member_getpwdemaitpl', '密码找回邮件内容', '3', 'Dear user {username}, please click <a href=\"{url}\"> Reset Password </ a>, or copy the URL into your browser: {url} (link 3 days valid). <br> Thank you for your support site. <br> 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　{sitename} <br> This message is automatically e-mail, no reply.', '2');
INSERT INTO `mqu_config` VALUES ('instagram', 'Instagram', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('facebook', 'Facebook', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('call', '电话', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('copyright', 'Copyright', '1', 'Copyright © 广州鼎飞航空科技有限公司  粤ICP备16081341号-1', '2');
INSERT INTO `mqu_config` VALUES ('address', 'address', '1', '广州开发区科学大道286号707室', '2');
INSERT INTO `mqu_config` VALUES ('google', 'google', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('twitter', 'twitter', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('twitter', 'twitter', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('YouTube', 'YouTube', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('facebook', 'facebook', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('site_name', '网站名称', '2', '广州鼎飞航空科技有限公司', '3');
INSERT INTO `mqu_config` VALUES ('site_url', '网站网址', '2', 'http://dingfei.cc', '3');
INSERT INTO `mqu_config` VALUES ('logo', '网站LOGO', '2', '/Uploads/201703/58db4db7820f7.png', '3');
INSERT INTO `mqu_config` VALUES ('site_email', '站点邮箱', '2', 'dingfeihangkong@smartflycar.com', '3');
INSERT INTO `mqu_config` VALUES ('seo_title', '网站标题', '2', '', '3');
INSERT INTO `mqu_config` VALUES ('seo_keywords', '关键词', '2', '', '3');
INSERT INTO `mqu_config` VALUES ('seo_description', '网站简介', '2', '', '3');
INSERT INTO `mqu_config` VALUES ('member_register', '允许新会员注册', '3', '1', '3');
INSERT INTO `mqu_config` VALUES ('member_emailcheck', '新会员注册需要邮件验证', '3', '0', '3');
INSERT INTO `mqu_config` VALUES ('member_registecheck', '新会员注册需要审核', '3', '1', '3');
INSERT INTO `mqu_config` VALUES ('member_login_verify', '注册登陆开启验证码', '3', '1', '3');
INSERT INTO `mqu_config` VALUES ('member_emailchecktpl', '邮件认证模板', '3', '', '3');
INSERT INTO `mqu_config` VALUES ('member_getpwdemaitpl', '密码找回邮件内容', '3', '', '3');
INSERT INTO `mqu_config` VALUES ('welcome', '欢迎语', '1', '欢迎来到我们的官方网站', '3');
INSERT INTO `mqu_config` VALUES ('welcome', '欢迎语', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('copyright', '版权信息', '1', 'Copyright © 广州鼎飞航空科技有限公司  粤ICP备16081341号-1', '3');
INSERT INTO `mqu_config` VALUES ('phone', '联系电话', '1', '020-82003840', '3');
INSERT INTO `mqu_config` VALUES ('fax', '传真', '1', '', '3');
INSERT INTO `mqu_config` VALUES ('email', '邮箱', '1', 'dingfeihangkong@smartflycar.com', '3');
INSERT INTO `mqu_config` VALUES ('phone', '联系电话', '1', '020-82003840', '2');
INSERT INTO `mqu_config` VALUES ('fax', '传真', '1', '', '2');
INSERT INTO `mqu_config` VALUES ('email', '邮箱', '1', 'dingfeihangkong@smartflycar.com', '2');
INSERT INTO `mqu_config` VALUES ('address', '地址', '1', '广州开发区科学大道286号707室', '3');
INSERT INTO `mqu_config` VALUES ('en_title', '网站标题英文', '1', 'Guangzhou DingFei Aviation Technology Co.,Ltd.', '3');
INSERT INTO `mqu_config` VALUES ('barcode', '二维码', '1', '/Uploads/201703/58d237eb64563.jpg', '3');
INSERT INTO `mqu_config` VALUES ('barcode', '二维码', '1', '/Uploads/201703/58d237eb64563.jpg', '2');

-- ----------------------------
-- Table structure for mqu_dbsource
-- ----------------------------
DROP TABLE IF EXISTS `mqu_dbsource`;
CREATE TABLE `mqu_dbsource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(20) NOT NULL DEFAULT '',
  `port` int(5) unsigned NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `dbname` varchar(50) NOT NULL DEFAULT '',
  `dbtablepre` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_dbsource
-- ----------------------------

-- ----------------------------
-- Table structure for mqu_download
-- ----------------------------
DROP TABLE IF EXISTS `mqu_download`;
CREATE TABLE `mqu_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `file` varchar(80) NOT NULL DEFAULT '',
  `ext` varchar(10) NOT NULL DEFAULT '',
  `size` varchar(10) NOT NULL DEFAULT '',
  `downs` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cc` varchar(255) NOT NULL DEFAULT '166*210',
  `summary` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_download
-- ----------------------------
INSERT INTO `mqu_download` VALUES ('4', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/4.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('26', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/26.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('25', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/25.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('24', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/24.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('23', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/23.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('22', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/22.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('27', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/27.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('28', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/28.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('29', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/29.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('30', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/30.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('31', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/31.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('32', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/32.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('33', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/33.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('34', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/34.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('35', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/35.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('36', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/36.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('37', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/37.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('38', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/38.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('39', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/39.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('40', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/40.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('41', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/41.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('42', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/42.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('43', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/43.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('44', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/44.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('45', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/45.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');
INSERT INTO `mqu_download` VALUES ('46', '52', '3', 'admin', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg', '', '', '4', '0', '0', '1', '0', '', '0', '0', '0', '1488879742', '1490062335', '/download/show/46.html', '/Uploads/201703/58be861a5a3d0.zip', 'zip', '', '0', '3', '166*210', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......');

-- ----------------------------
-- Table structure for mqu_feedback
-- ----------------------------
DROP TABLE IF EXISTS `mqu_feedback`;
CREATE TABLE `mqu_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for mqu_field
-- ----------------------------
DROP TABLE IF EXISTS `mqu_field`;
CREATE TABLE `mqu_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_field
-- ----------------------------
INSERT INTO `mqu_field` VALUES ('1', '1', 'title', '标题', '', '1', '3', '80', '', '标题必填3-80个字', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'0\',\n  \'size\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('2', '1', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('3', '1', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('4', '1', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'jpg,jpeg,gif,doc,rar,zip,xls\',\n)', '1', '', '1', '1', '1');
INSERT INTO `mqu_field` VALUES ('5', '2', 'catid', '栏目', '', '1', '1', '6', 'digits', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('6', '2', 'title', '标题', '', '1', '0', '0', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '1', '1', '1');
INSERT INTO `mqu_field` VALUES ('7', '2', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '2', '1', '1');
INSERT INTO `mqu_field` VALUES ('8', '2', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `mqu_field` VALUES ('9', '2', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'1\',\n  \'show_auto_thumb\' => \'1\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '9', '1', '1');
INSERT INTO `mqu_field` VALUES ('10', '2', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '20', '1', '1');
INSERT INTO `mqu_field` VALUES ('11', '2', 'copyfrom', '来源', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '7', '0', '1');
INSERT INTO `mqu_field` VALUES ('12', '2', 'fromlink', '来源网址', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '8', '0', '1');
INSERT INTO `mqu_field` VALUES ('13', '2', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '3,4', '20', '0', '1');
INSERT INTO `mqu_field` VALUES ('14', '2', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '3,4', '20', '1', '1');
INSERT INTO `mqu_field` VALUES ('15', '2', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '20', '1', '1');
INSERT INTO `mqu_field` VALUES ('16', '2', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '20', '1', '1');
INSERT INTO `mqu_field` VALUES ('17', '3', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('18', '3', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('19', '3', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('20', '3', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('21', '3', 'content', '产品介绍', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \'edittype\' => \'kindeditor\',\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'0\',\n  \'show_auto_thumb\' => \'0\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n  \'alowuploadlimit\' => \'\',\n)', '1', '', '2', '1', '1');
INSERT INTO `mqu_field` VALUES ('22', '3', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('31', '2', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '3,4', '20', '0', '0');
INSERT INTO `mqu_field` VALUES ('30', '3', 'xinghao', '型号', '', '0', '0', '30', '', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('25', '3', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '3,4', '96', '0', '1');
INSERT INTO `mqu_field` VALUES ('26', '3', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '3,4', '97', '1', '1');
INSERT INTO `mqu_field` VALUES ('27', '3', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '0', '1');
INSERT INTO `mqu_field` VALUES ('28', '3', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('29', '3', 'price', '价格', '', '0', '0', '0', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'2\',\n  \'default\' => \'0\',\n)', '1', '', '0', '0', '1');
INSERT INTO `mqu_field` VALUES ('34', '3', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '3,4', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('32', '2', 'readpoint', '阅读收费', '', '0', '0', '3', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '3,4', '20', '0', '0');
INSERT INTO `mqu_field` VALUES ('33', '2', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '20', '0', '0');
INSERT INTO `mqu_field` VALUES ('35', '3', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('36', '3', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('37', '4', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('38', '4', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('39', '4', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '0', '0', '1');
INSERT INTO `mqu_field` VALUES ('40', '4', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '0', '0', '1');
INSERT INTO `mqu_field` VALUES ('41', '4', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '0', '1');
INSERT INTO `mqu_field` VALUES ('42', '4', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('43', '4', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '3,4', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('44', '4', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('45', '4', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('46', '4', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '3,4', '96', '0', '1');
INSERT INTO `mqu_field` VALUES ('47', '4', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '3,4', '97', '0', '1');
INSERT INTO `mqu_field` VALUES ('48', '4', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '0', '1');
INSERT INTO `mqu_field` VALUES ('49', '4', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('50', '5', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('51', '5', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('52', '5', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '0', '0', '1');
INSERT INTO `mqu_field` VALUES ('53', '5', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '0', '0', '1');
INSERT INTO `mqu_field` VALUES ('54', '5', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '0', '1');
INSERT INTO `mqu_field` VALUES ('55', '5', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('56', '5', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '3,4', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('57', '5', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('58', '5', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('59', '5', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '3,4', '96', '0', '1');
INSERT INTO `mqu_field` VALUES ('60', '5', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '3,4', '97', '1', '1');
INSERT INTO `mqu_field` VALUES ('61', '5', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `mqu_field` VALUES ('62', '5', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('63', '3', 'pics', '图片', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \'default\' => \'\',\n  \'upload_maxnum\' => \'10\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'jpeg,jpg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'1\',\n  \'cc\' => \'500*500\',\n)', '1', '', '1', '0', '0');
INSERT INTO `mqu_field` VALUES ('64', '4', 'pics', '图组', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \'default\' => \'\',\n  \'upload_maxnum\' => \'20\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'jpeg,jpg,png,gif\',\n  \'watermark\' => \'0\',\n  \'more\' => \'1\',\n  \'cc\' => \'740*550\',\n)', '1', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('65', '5', 'file', '上传文件', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'zip,rar,doc,ppt,pdf,xlsx,docx,txt\',\n  \'more\' => \'1\',\n)', '1', '', '4', '1', '0');
INSERT INTO `mqu_field` VALUES ('66', '5', 'ext', '文档类型', '', '0', '0', '10', '', '', '', 'text', 'array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '0');
INSERT INTO `mqu_field` VALUES ('67', '5', 'size', '文档大小', '', '0', '0', '10', '', '', '', 'text', 'array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '0');
INSERT INTO `mqu_field` VALUES ('68', '5', 'downs', '下载次数', '', '0', '0', '0', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('69', '6', 'username', '姓名', '', '1', '2', '20', 'cn_username', '', '', 'text', 'array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '0');
INSERT INTO `mqu_field` VALUES ('70', '6', 'telephone', '电话', '', '0', '0', '0', 'tel', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '4', '1', '0');
INSERT INTO `mqu_field` VALUES ('71', '6', 'email', '邮箱', '', '1', '0', '50', 'email', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '0');
INSERT INTO `mqu_field` VALUES ('72', '6', 'content', '内容', '', '1', '4', '200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'5\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)', '1', '', '5', '1', '0');
INSERT INTO `mqu_field` VALUES ('81', '7', 'status', '状态', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('73', '6', 'ip', '提交IP', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '3,4', '6', '1', '0');
INSERT INTO `mqu_field` VALUES ('74', '6', 'title', '标题', '', '1', '4', '50', '', '', '', 'text', 'array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '3,4', '1', '1', '0');
INSERT INTO `mqu_field` VALUES ('80', '35', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('76', '6', 'createtime', '提交时间', '', '0', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '98', '1', '0');
INSERT INTO `mqu_field` VALUES ('79', '6', 'typeid', '反馈类别', '', '0', '0', '0', '', '', '', 'typeid', 'array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'4\',\n)', '1', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('78', '6', 'status', '审核状态', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'己审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'0\',\n)', '0', '3,4', '99', '1', '0');
INSERT INTO `mqu_field` VALUES ('82', '7', 'name', '网站名称', '', '1', '2', '50', '', '', '', 'text', 'array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '1', '1', '0');
INSERT INTO `mqu_field` VALUES ('83', '7', 'logo', '网站LOGO', '', '0', '0', '0', '', '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n)', '1', '', '2', '1', '0');
INSERT INTO `mqu_field` VALUES ('84', '7', 'siteurl', '网站地址', '', '1', '10', '150', 'url', '', '', 'text', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '0');
INSERT INTO `mqu_field` VALUES ('85', '7', 'typeid', '友情链接分类', '', '0', '0', '0', '', '', '', 'typeid', 'array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('86', '7', 'linktype', '链接类型', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'文字链接|1\r\nLOGO链接|2\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('87', '7', 'siteinfo', '站点简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'3\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '0');
INSERT INTO `mqu_field` VALUES ('88', '8', 'createtime', '提交时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('89', '8', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'0\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('90', '8', 'title', '标题', '', '0', '2', '50', '0', '', '', 'text', 'array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('91', '8', 'username', '姓名', '', '1', '2', '20', '0', '', '', 'text', 'array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('92', '8', 'telephone', '电话', '', '0', '0', '0', 'tel', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '0');
INSERT INTO `mqu_field` VALUES ('93', '8', 'email', '邮箱', '', '1', '0', '40', 'email', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '0', '0');
INSERT INTO `mqu_field` VALUES ('94', '8', 'content', '内容', '', '1', '2', '200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '0');
INSERT INTO `mqu_field` VALUES ('95', '8', 'reply_content', '回复', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)', '0', '3,4', '10', '0', '0');
INSERT INTO `mqu_field` VALUES ('96', '8', 'ip', 'IP', '', '0', '0', '15', '', '', '', 'text', 'array (\n  \'size\' => \'15\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '3,4', '90', '1', '0');
INSERT INTO `mqu_field` VALUES ('97', '9', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('98', '9', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('99', '9', 'name', '客服名称', '', '0', '2', '20', '', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('100', '9', 'type', '客服类型', '', '1', '1', '2', '0', '', '', 'select', 'array (\n  \'options\' => \'QQ|1\r\nMSN|2\r\n旺旺|3\r\n贸易通|6\r\n电话|4\r\n代码|5\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('101', '9', 'code', 'ID或代码', '', '0', '2', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)', '0', '', '10', '1', '0');
INSERT INTO `mqu_field` VALUES ('102', '9', 'skin', '风格样式', '', '0', '0', '3', '0', '', '', 'select', 'array (\n  \'options\' => \'无风格图标|0\r\nQQ风格1|q1\r\nQQ风格2|q2\r\nQQ风格3|q3\r\nQQ风格4|q4\r\nQQ风格5|q5\r\nQQ风格6|q6\r\nQQ风格7|q7\r\nMSN小图|m1\r\nMSN大图1|m2\r\nMSN大图2|m3\r\nMSN大图3|m4\r\n旺旺小图|w2\r\n旺旺大图|w1\r\n贸易通|al1\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('103', '3', 'cc', 'cc', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'360px*290px\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('105', '1', 'cc', 'cc', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'540*470\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('123', '2', 'cc', 'cc', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'380*300\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '20', '0', '0');
INSERT INTO `mqu_field` VALUES ('120', '1', 'my_pics', 'mypics', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \'default\' => \'\',\n  \'upload_maxnum\' => \'10\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n  \'cc\' => \'720*510\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('268', '3', 'brand', '品牌', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('269', '3', 'link', '购买链接', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('129', '8', 'country', '国家', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '0', '0');
INSERT INTO `mqu_field` VALUES ('217', '8', 'city', '城市', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '0', '0');
INSERT INTO `mqu_field` VALUES ('168', '8', 'Fax', '传真', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '2', '0', '0');
INSERT INTO `mqu_field` VALUES ('167', '8', 'company', '公司', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '0', '0');
INSERT INTO `mqu_field` VALUES ('169', '8', 'address', '地址', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '99', '0', '0');
INSERT INTO `mqu_field` VALUES ('172', '5', 'cc', 'cc', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'166*210\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('186', '1', 'profile', '简介', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'5\',\n  \'cols\' => \'40\',\n  \'default\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('197', '4', 'bg', '图片', '', '0', '0', '0', '0', '', '', 'image', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n  \'cc\' => \'\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('216', '8', 'last_name', '名字', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '1', '0', '0');
INSERT INTO `mqu_field` VALUES ('298', '3', 'advantage', '产品优势', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \'edittype\' => \'kindeditor\',\n  \'toolbar\' => \'basic\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'0\',\n  \'show_auto_thumb\' => \'0\',\n  \'showpage\' => \'0\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'0\',\n  \'alowuploadexts\' => \'\',\n  \'alowuploadlimit\' => \'\',\n)', '0', '', '3', '1', '0');
INSERT INTO `mqu_field` VALUES ('254', '17', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('255', '17', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('256', '17', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `mqu_field` VALUES ('257', '17', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `mqu_field` VALUES ('258', '17', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '1', '1');
INSERT INTO `mqu_field` VALUES ('259', '17', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('260', '17', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `mqu_field` VALUES ('261', '17', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `mqu_field` VALUES ('262', '17', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `mqu_field` VALUES ('263', '17', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '3,4', '96', '0', '1');
INSERT INTO `mqu_field` VALUES ('264', '17', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `mqu_field` VALUES ('265', '17', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `mqu_field` VALUES ('266', '17', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('267', '2', 'author', '作者', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '6', '0', '0');
INSERT INTO `mqu_field` VALUES ('270', '18', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('271', '18', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `mqu_field` VALUES ('272', '18', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `mqu_field` VALUES ('273', '18', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `mqu_field` VALUES ('274', '18', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '1', '1');
INSERT INTO `mqu_field` VALUES ('275', '18', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('276', '18', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `mqu_field` VALUES ('277', '18', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `mqu_field` VALUES ('278', '18', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `mqu_field` VALUES ('279', '18', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '3,4', '96', '0', '1');
INSERT INTO `mqu_field` VALUES ('280', '18', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `mqu_field` VALUES ('281', '18', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `mqu_field` VALUES ('282', '18', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('283', '3', 'pin_image', '首页置顶图', '', '0', '0', '0', '0', '', '', 'image', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'1\',\n  \'cc\' => \'598px*484px\',\n)', '1', '', '96', '1', '0');
INSERT INTO `mqu_field` VALUES ('284', '18', 'en_title', '英文小标题', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('285', '2', 'pin_image', '首页置顶图', '', '0', '0', '0', '0', '', '', 'image', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n  \'cc\' => \'\',\n)', '0', '', '5', '1', '0');
INSERT INTO `mqu_field` VALUES ('286', '2', 'summary', '摘要', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '0', '', '4', '1', '0');
INSERT INTO `mqu_field` VALUES ('287', '17', 'summary', '简介', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '0', '', '8', '1', '0');
INSERT INTO `mqu_field` VALUES ('288', '17', 'cc', '尺寸', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'370x250\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('289', '5', 'summary', '摘要', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'63\',\n  \'default\' => \'\',\n)', '0', '', '1', '1', '0');
INSERT INTO `mqu_field` VALUES ('290', '19', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('291', '19', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('292', '19', 'title', '办事处名称', '', '0', '0', '0', '0', '', '', 'title', 'array (\n  \'thumb\' => \'0\',\n  \'style\' => \'0\',\n  \'size\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('296', '19', 'address', '地址', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '0', '', '3', '1', '0');
INSERT INTO `mqu_field` VALUES ('294', '19', 'contact', '联系人', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '1', '1', '0');
INSERT INTO `mqu_field` VALUES ('295', '19', 'phone', '联系电话', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '2', '1', '0');
INSERT INTO `mqu_field` VALUES ('299', '3', 'parameter', '产品参数', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \'edittype\' => \'kindeditor\',\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'0\',\n  \'show_auto_thumb\' => \'0\',\n  \'showpage\' => \'0\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'0\',\n  \'alowuploadexts\' => \'\',\n  \'alowuploadlimit\' => \'\',\n)', '0', '', '4', '1', '0');
INSERT INTO `mqu_field` VALUES ('300', '3', 'composition', '系统组成', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \'edittype\' => \'kindeditor\',\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'0\',\n  \'show_auto_thumb\' => \'0\',\n  \'showpage\' => \'0\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'0\',\n  \'alowuploadexts\' => \'\',\n  \'alowuploadlimit\' => \'\',\n)', '0', '', '5', '1', '0');
INSERT INTO `mqu_field` VALUES ('302', '3', 'pro_banner', '产品Banner', '', '0', '0', '0', '0', '', '', 'image', 'array (\n  \'size\' => \'\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'1\',\n  \'cc\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('303', '3', 'summary', '摘要', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('309', '22', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('308', '22', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('310', '22', 'title', '标题', '', '1', '0', '0', '0', '', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'0\',\n  \'size\' => \'55\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('311', '22', 'link', '视频', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \'size\' => \'48\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'50\',\n  \'upload_allowext\' => \'mp4,jpg\',\n  \'more\' => \'1\',\n)', '0', '', '2', '1', '0');
INSERT INTO `mqu_field` VALUES ('312', '22', 'videocode', '第三方视频代码', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'5\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '0', '', '1', '0', '0');
INSERT INTO `mqu_field` VALUES ('313', '22', 'cc', '尺寸', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'\',\n  \'default\' => \'379px*213px\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('314', '23', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `mqu_field` VALUES ('315', '23', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `mqu_field` VALUES ('370', '23', 'title', '标题', '', '0', '0', '0', '0', '', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `mqu_field` VALUES ('317', '23', 'link', '下载文件', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'20\',\n  \'upload_allowext\' => \'zip,rar,doc,ppt,docx,pptx,xls,xlsx\',\n  \'more\' => \'1\',\n)', '0', '', '2', '1', '0');
INSERT INTO `mqu_field` VALUES ('318', '23', 'summary', '描述', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '0', '', '1', '1', '0');
INSERT INTO `mqu_field` VALUES ('319', '23', 'cc', '尺寸', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'20\',\n  \'default\' => \'137px*194px\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('320', '23', 'hits', '查看次数', '', '0', '0', '0', '0', '', '', 'number', 'array (\n  \'size\' => \'\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '0', '', '0', '0', '0');
INSERT INTO `mqu_field` VALUES ('321', '22', 'hits', '查看次数', '', '0', '0', '0', '0', '', '', 'number', 'array (\n  \'size\' => \'\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '0', '', '0', '0', '0');

-- ----------------------------
-- Table structure for mqu_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `mqu_guestbook`;
CREATE TABLE `mqu_guestbook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `reply_content` mediumtext NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `country` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `Fax` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_guestbook
-- ----------------------------
INSERT INTO `mqu_guestbook` VALUES ('17', '', '0', '0', '1489133315', 'asdf', '奈斯塔顶f', 'ad斯塔d', 's顶戴柘城地', '', '127.0.0.1', '0', '3', '', '', '', '', '', '');
INSERT INTO `mqu_guestbook` VALUES ('18', '', '0', '0', '1490686386', 'fasdffaf', 'FASDfa', '', 'adfasdsasdfasdfssd', '', '127.0.0.1', '0', '3', '', '', '', '', '', '');
INSERT INTO `mqu_guestbook` VALUES ('19', 'asdfas', '0', '0', '1490687174', 'sfasdfasdf', 'dfasdf', '', 'asdfas', '', '127.0.0.1', '0', '3', '', '', '', '', '', '');
INSERT INTO `mqu_guestbook` VALUES ('20', '', '0', '0', '1490687193', 'asdfasdfsdfa', 'sasdfasdf', '', 'asdfasdfasdf', '', '127.0.0.1', '0', '3', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for mqu_kefu
-- ----------------------------
DROP TABLE IF EXISTS `mqu_kefu`;
CREATE TABLE `mqu_kefu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `code` mediumtext NOT NULL,
  `skin` varchar(3) NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_kefu
-- ----------------------------
INSERT INTO `mqu_kefu` VALUES ('1', '1', '4', '1306807701', '咨询电话', '4', '0317-5022625', '0', '1');
INSERT INTO `mqu_kefu` VALUES ('2', '1', '3', '1306808886', 'QQ客服', '1', '2579766780', 'q3', '1');
INSERT INTO `mqu_kefu` VALUES ('3', '1', '0', '1306830001', '旺旺客服', '3', 'snliuxun', 'w1', '1');

-- ----------------------------
-- Table structure for mqu_lang
-- ----------------------------
DROP TABLE IF EXISTS `mqu_lang`;
CREATE TABLE `mqu_lang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `mark` varchar(30) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `path` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_lang
-- ----------------------------
INSERT INTO `mqu_lang` VALUES ('2', 'English', 'en', 'en.gif', '1', '', '', '0');
INSERT INTO `mqu_lang` VALUES ('3', '中文', 'cn', 'cn.gif', '1', '', '', '0');

-- ----------------------------
-- Table structure for mqu_link
-- ----------------------------
DROP TABLE IF EXISTS `mqu_link`;
CREATE TABLE `mqu_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(80) NOT NULL DEFAULT '',
  `siteurl` varchar(150) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `siteinfo` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_link
-- ----------------------------
INSERT INTO `mqu_link` VALUES ('3', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('4', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('5', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('6', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('1', '1', '0', '1489743094', '北京公安', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '2', '1', '北京公安', '3');
INSERT INTO `mqu_link` VALUES ('2', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('7', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('8', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('9', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('10', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('11', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('12', '1', '0', '1489743094', '华为', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '3', '2', '华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、终端和云计算等领域构筑了端到端的解决方案优势。', '3');
INSERT INTO `mqu_link` VALUES ('13', '1', '0', '1489743094', '天津公安', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '2', '1', '天津公安', '3');
INSERT INTO `mqu_link` VALUES ('14', '1', '0', '1489743094', '上海公安', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '2', '1', '上海公安', '3');
INSERT INTO `mqu_link` VALUES ('15', '1', '0', '1489743094', '广州公安', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '2', '1', '广州公安', '3');
INSERT INTO `mqu_link` VALUES ('16', '1', '0', '1489743094', '公安大学', '/Uploads/201703/58cbac8587c0b.jpg', 'http://www.huawei.com', '2', '1', '公安大学', '3');

-- ----------------------------
-- Table structure for mqu_log
-- ----------------------------
DROP TABLE IF EXISTS `mqu_log`;
CREATE TABLE `mqu_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_log
-- ----------------------------
INSERT INTO `mqu_log` VALUES ('1', '0', '0', 'admin', '登录成功', '127.0.0.1', '1473132163');
INSERT INTO `mqu_log` VALUES ('2', '0', '0', 'admin', '登录成功', '127.0.0.1', '1473140186');
INSERT INTO `mqu_log` VALUES ('3', '0', '0', 'admin', '登录成功', '127.0.0.1', '1473730212');
INSERT INTO `mqu_log` VALUES ('4', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1473733327');
INSERT INTO `mqu_log` VALUES ('5', '0', '0', 'admin', '登录成功', '127.0.0.1', '1473733333');
INSERT INTO `mqu_log` VALUES ('6', '0', '0', 'admin', '登录成功', '127.0.0.1', '1473815318');
INSERT INTO `mqu_log` VALUES ('7', '0', '0', 'admin', '登录成功', '127.0.0.1', '1474160328');
INSERT INTO `mqu_log` VALUES ('8', '0', '0', 'admin', '登录成功', '127.0.0.1', '1474248806');
INSERT INTO `mqu_log` VALUES ('9', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1474362803');
INSERT INTO `mqu_log` VALUES ('10', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1474362812');
INSERT INTO `mqu_log` VALUES ('11', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1474363068');
INSERT INTO `mqu_log` VALUES ('12', '1', '0', 'admin', '密码错误:123456', '127.0.0.1', '1474363079');
INSERT INTO `mqu_log` VALUES ('13', '0', '0', 'admin', '登录成功', '127.0.0.1', '1474363097');
INSERT INTO `mqu_log` VALUES ('14', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1474419770');
INSERT INTO `mqu_log` VALUES ('15', '0', '0', 'admin', '登录成功', '127.0.0.1', '1474419781');
INSERT INTO `mqu_log` VALUES ('16', '0', '0', 'admin', '登录成功', '127.0.0.1', '1474515845');
INSERT INTO `mqu_log` VALUES ('17', '0', '0', 'admin', '登录成功', '127.0.0.1', '1474593058');
INSERT INTO `mqu_log` VALUES ('18', '0', '0', 'admin', '登录成功', '127.0.0.1', '1474852449');
INSERT INTO `mqu_log` VALUES ('19', '1', '0', 'admin', '密码错误:111111', '127.0.0.1', '1475920141');
INSERT INTO `mqu_log` VALUES ('20', '1', '0', 'admin', '密码错误:111111', '127.0.0.1', '1475920154');
INSERT INTO `mqu_log` VALUES ('21', '0', '0', 'admin', '登录成功', '127.0.0.1', '1475920170');
INSERT INTO `mqu_log` VALUES ('22', '0', '0', 'admin', '登录成功', '127.0.0.1', '1475976378');
INSERT INTO `mqu_log` VALUES ('23', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476067906');
INSERT INTO `mqu_log` VALUES ('24', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476164196');
INSERT INTO `mqu_log` VALUES ('25', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476167023');
INSERT INTO `mqu_log` VALUES ('26', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476168876');
INSERT INTO `mqu_log` VALUES ('27', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476179918');
INSERT INTO `mqu_log` VALUES ('28', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476184550');
INSERT INTO `mqu_log` VALUES ('29', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476184952');
INSERT INTO `mqu_log` VALUES ('30', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476185625');
INSERT INTO `mqu_log` VALUES ('31', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476233612');
INSERT INTO `mqu_log` VALUES ('32', '1', '0', 'admin', '密码错误:adminb', '127.0.0.1', '1476235006');
INSERT INTO `mqu_log` VALUES ('33', '1', '0', 'admin', '密码错误:admjin', '127.0.0.1', '1476235013');
INSERT INTO `mqu_log` VALUES ('34', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476235020');
INSERT INTO `mqu_log` VALUES ('35', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476261548');
INSERT INTO `mqu_log` VALUES ('36', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476326466');
INSERT INTO `mqu_log` VALUES ('37', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476344950');
INSERT INTO `mqu_log` VALUES ('38', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476407010');
INSERT INTO `mqu_log` VALUES ('39', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476667092');
INSERT INTO `mqu_log` VALUES ('40', '0', '0', 'admin', '登录成功', '127.0.0.1', '1476756389');
INSERT INTO `mqu_log` VALUES ('41', '0', '0', 'admin', '登录成功', '127.0.0.1', '1478573339');
INSERT INTO `mqu_log` VALUES ('42', '0', '0', 'admin', '登录成功', '127.0.0.1', '1478654435');
INSERT INTO `mqu_log` VALUES ('43', '1', '0', 'admin', '密码错误:admin', '192.168.4.75', '1478679446');
INSERT INTO `mqu_log` VALUES ('44', '1', '0', 'admin', '密码错误:admin', '192.168.4.75', '1478679453');
INSERT INTO `mqu_log` VALUES ('45', '1', '0', 'admin', '密码错误:admin', '192.168.4.75', '1478679461');
INSERT INTO `mqu_log` VALUES ('46', '1', '0', 'admin', '密码错误:123456', '192.168.4.75', '1478679465');
INSERT INTO `mqu_log` VALUES ('47', '0', '0', 'admin', '登录成功', '192.168.4.75', '1478679481');
INSERT INTO `mqu_log` VALUES ('48', '1', '0', 'admin', '密码错误:admin', '192.168.4.75', '1478680049');
INSERT INTO `mqu_log` VALUES ('49', '0', '0', 'admin', '登录成功', '192.168.4.75', '1478680652');
INSERT INTO `mqu_log` VALUES ('50', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1481695862');
INSERT INTO `mqu_log` VALUES ('51', '0', '0', 'admin', '登录成功', '127.0.0.1', '1481696100');
INSERT INTO `mqu_log` VALUES ('52', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1481696436');
INSERT INTO `mqu_log` VALUES ('53', '0', '0', 'admin1', '登录成功', '127.0.0.1', '1481696446');
INSERT INTO `mqu_log` VALUES ('54', '0', '0', 'admin1', '登录成功', '127.0.0.1', '1481766685');
INSERT INTO `mqu_log` VALUES ('55', '0', '0', 'admin1', '登录成功', '127.0.0.1', '1481868077');
INSERT INTO `mqu_log` VALUES ('56', '0', '0', 'admin1', '登录成功', '127.0.0.1', '1481878002');
INSERT INTO `mqu_log` VALUES ('57', '0', '0', 'admin', '登录成功', '192.168.4.75', '1482977529');
INSERT INTO `mqu_log` VALUES ('58', '0', '0', 'admin', '登录成功', '127.0.0.1', '1488527052');
INSERT INTO `mqu_log` VALUES ('59', '0', '0', 'admin', '登录成功', '127.0.0.1', '1488765292');
INSERT INTO `mqu_log` VALUES ('60', '0', '0', 'admin', '登录成功', '127.0.0.1', '1488864426');
INSERT INTO `mqu_log` VALUES ('61', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489039062');
INSERT INTO `mqu_log` VALUES ('62', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489045700');
INSERT INTO `mqu_log` VALUES ('63', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489115382');
INSERT INTO `mqu_log` VALUES ('64', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489217258');
INSERT INTO `mqu_log` VALUES ('65', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489369087');
INSERT INTO `mqu_log` VALUES ('66', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489482652');
INSERT INTO `mqu_log` VALUES ('67', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489548851');
INSERT INTO `mqu_log` VALUES ('68', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489631780');
INSERT INTO `mqu_log` VALUES ('69', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489716813');
INSERT INTO `mqu_log` VALUES ('70', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489729014');
INSERT INTO `mqu_log` VALUES ('71', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489729094');
INSERT INTO `mqu_log` VALUES ('72', '0', '0', 'admin', '登录成功', '127.0.0.1', '1489973925');
INSERT INTO `mqu_log` VALUES ('73', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490060820');
INSERT INTO `mqu_log` VALUES ('74', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490147778');
INSERT INTO `mqu_log` VALUES ('75', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490232013');
INSERT INTO `mqu_log` VALUES ('76', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490233621');
INSERT INTO `mqu_log` VALUES ('77', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490320076');
INSERT INTO `mqu_log` VALUES ('78', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490325078');
INSERT INTO `mqu_log` VALUES ('79', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490578915');
INSERT INTO `mqu_log` VALUES ('80', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490581987');
INSERT INTO `mqu_log` VALUES ('81', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490664984');
INSERT INTO `mqu_log` VALUES ('82', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490669203');
INSERT INTO `mqu_log` VALUES ('83', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490751003');
INSERT INTO `mqu_log` VALUES ('84', '0', '0', 'admin', '登录成功', '127.0.0.1', '1490766508');

-- ----------------------------
-- Table structure for mqu_menu
-- ----------------------------
DROP TABLE IF EXISTS `mqu_menu`;
CREATE TABLE `mqu_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` char(20) NOT NULL DEFAULT '',
  `action` char(20) NOT NULL DEFAULT '',
  `data` char(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_menu
-- ----------------------------
INSERT INTO `mqu_menu` VALUES ('1', '0', 'Index', 'main', 'menuid=42', '1', '1', '0', '后台首页', '', '0');
INSERT INTO `mqu_menu` VALUES ('2', '0', 'Config', '', 'menuid=50', '1', '1', '0', '系统设置', '系统设置', '1');
INSERT INTO `mqu_menu` VALUES ('3', '0', 'Category', '', 'menuid=17', '1', '1', '0', '内容管理', '模型管理', '2');
INSERT INTO `mqu_menu` VALUES ('4', '0', 'Module', 'index', 'type=2&menuid=51', '1', '1', '0', '模块管理', '', '4');
INSERT INTO `mqu_menu` VALUES ('5', '0', 'User', '', 'menuid=9', '1', '1', '0', '会员管理', '', '90');
INSERT INTO `mqu_menu` VALUES ('6', '0', 'Createhtml', '', 'menuid=33', '1', '1', '0', '网站更新', '', '99');
INSERT INTO `mqu_menu` VALUES ('7', '0', 'Template', 'index', 'menuid=60', '1', '1', '0', '模板管理', '', '99');
INSERT INTO `mqu_menu` VALUES ('39', '2', 'Menu', '', '', '1', '1', '0', '后台管理菜单', '后台管理菜单', '11');
INSERT INTO `mqu_menu` VALUES ('15', '39', 'Menu', 'add', '', '1', '1', '0', '添加菜单', '', '0');
INSERT INTO `mqu_menu` VALUES ('50', '2', 'Config', '', '', '1', '1', '0', '站点配置', '', '0');
INSERT INTO `mqu_menu` VALUES ('8', '50', 'Config', 'sys', '', '1', '1', '0', '系统参数', '', '0');
INSERT INTO `mqu_menu` VALUES ('32', '50', 'Config', 'member', '', '1', '0', '0', '用户中心设置', '', '0');
INSERT INTO `mqu_menu` VALUES ('59', '50', 'Config', 'add', '', '1', '1', '0', '添加系统变量', '', '99');
INSERT INTO `mqu_menu` VALUES ('9', '5', 'User', '', '', '1', '1', '0', '会员资料管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('10', '9', 'User', 'add', '', '1', '1', '0', '添加会员', '', '0');
INSERT INTO `mqu_menu` VALUES ('11', '5', 'Role', '', '', '1', '1', '0', '会员组管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('12', '11', 'Role', 'add', '', '1', '1', '0', '添加会员组', '', '0');
INSERT INTO `mqu_menu` VALUES ('13', '5', 'Node', '', '', '1', '1', '0', '权限节点管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('14', '13', 'Node', 'add', '', '1', '1', '0', '添加权限节点', '', '0');
INSERT INTO `mqu_menu` VALUES ('16', '3', 'Module', '', '', '1', '1', '0', '模型管理', '', '99');
INSERT INTO `mqu_menu` VALUES ('17', '3', 'Category', '', '', '1', '1', '0', '栏目管理', '栏目管理', '1');
INSERT INTO `mqu_menu` VALUES ('18', '16', 'Module', 'add', '', '1', '1', '0', '添加模型', '', '0');
INSERT INTO `mqu_menu` VALUES ('19', '17', 'Category', 'add', '', '1', '1', '0', '添加栏目', '', '0');
INSERT INTO `mqu_menu` VALUES ('20', '3', 'Article', '', '', '1', '1', '0', '新闻模型', '', '2');
INSERT INTO `mqu_menu` VALUES ('21', '20', 'Article', 'add', '', '1', '1', '0', '添加新闻', '', '0');
INSERT INTO `mqu_menu` VALUES ('23', '3', 'Posid', '', '', '1', '1', '0', '推荐位管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('24', '23', 'Posid', 'add', '', '1', '1', '0', '添加推荐位', '', '0');
INSERT INTO `mqu_menu` VALUES ('25', '22', 'Product', 'add', '', '1', '1', '0', '添加产品', '', '0');
INSERT INTO `mqu_menu` VALUES ('26', '3', 'Picture', '', '', '1', '1', '0', '资质模型', '', '4');
INSERT INTO `mqu_menu` VALUES ('27', '3', 'Download', '', '', '1', '1', '0', '下载模型', '', '5');
INSERT INTO `mqu_menu` VALUES ('28', '2', 'Type', '', '', '1', '1', '0', '类别管理', '', '6');
INSERT INTO `mqu_menu` VALUES ('29', '50', 'Config', 'mail', '', '1', '1', '0', '系统邮箱', '', '0');
INSERT INTO `mqu_menu` VALUES ('30', '50', 'Config', 'attach', '', '1', '1', '0', '附件配置', '', '0');
INSERT INTO `mqu_menu` VALUES ('31', '17', 'Category', 'repair_cache', '', '1', '1', '0', '恢复栏目数据', '', '0');
INSERT INTO `mqu_menu` VALUES ('33', '6', 'Createhtml', 'index', '', '1', '0', '0', '更新首页', '', '0');
INSERT INTO `mqu_menu` VALUES ('34', '6', 'Createhtml', 'Createlist', '', '1', '0', '0', '更新列表页', '', '0');
INSERT INTO `mqu_menu` VALUES ('35', '6', 'Createhtml', 'Createshow', '', '1', '0', '0', '更新内容页', '', '0');
INSERT INTO `mqu_menu` VALUES ('36', '6', 'Createhtml', 'Updateurl', '', '1', '1', '0', '更新内容页url', '', '0');
INSERT INTO `mqu_menu` VALUES ('37', '26', 'Picture', 'add', '', '1', '1', '0', '添加资质', '', '0');
INSERT INTO `mqu_menu` VALUES ('38', '27', 'Download', 'add', '', '1', '1', '0', '添加文件', '', '0');
INSERT INTO `mqu_menu` VALUES ('40', '1', 'Index', 'password', '', '1', '1', '0', '修改密码', '', '2');
INSERT INTO `mqu_menu` VALUES ('41', '1', 'Index', 'profile', '', '1', '1', '0', '个人资料', '', '3');
INSERT INTO `mqu_menu` VALUES ('42', '1', 'Index', 'main', '', '1', '1', '0', '后台首页', '', '1');
INSERT INTO `mqu_menu` VALUES ('43', '17', 'Category', 'add', '&type=1', '1', '1', '0', '添加外部链接', '', '0');
INSERT INTO `mqu_menu` VALUES ('44', '2', 'Database', '', '', '1', '0', '0', '数据库管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('45', '44', 'Database', 'query', '', '1', '1', '0', '执行SQL语句', '', '0');
INSERT INTO `mqu_menu` VALUES ('46', '44', 'Database', 'recover', '', '1', '1', '0', '恢复数据库', '', '0');
INSERT INTO `mqu_menu` VALUES ('47', '1', 'Index', 'cache', 'menuid=47', '1', '1', '0', '更新缓存', '', '4');
INSERT INTO `mqu_menu` VALUES ('48', '51', 'Module', 'add', 'type=2', '1', '1', '0', '创建模块', '', '0');
INSERT INTO `mqu_menu` VALUES ('49', '3', 'Feedback', 'index', '', '1', '0', '0', '信息反馈', '信息反馈', '7');
INSERT INTO `mqu_menu` VALUES ('51', '4', 'Module', 'index', 'type=2', '1', '1', '0', '模块管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('52', '28', 'Type', 'add', '', '1', '1', '0', '添加类别', '', '0');
INSERT INTO `mqu_menu` VALUES ('53', '4', 'Link', 'index', '', '1', '1', '0', '友情链接', '', '0');
INSERT INTO `mqu_menu` VALUES ('54', '53', 'Link', 'add', '', '1', '1', '0', '添加链接', '', '0');
INSERT INTO `mqu_menu` VALUES ('55', '3', 'Guestbook', 'index', '', '1', '1', '0', '在线留言', '', '8');
INSERT INTO `mqu_menu` VALUES ('56', '4', 'Kefu', 'index', '', '1', '1', '0', '在线客服', '', '0');
INSERT INTO `mqu_menu` VALUES ('57', '56', 'Kefu', 'add', '', '1', '1', '0', '添加客服', '', '0');
INSERT INTO `mqu_menu` VALUES ('58', '4', 'Order', 'index', '', '1', '0', '0', '订单管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('60', '7', 'Template', 'index', '', '1', '1', '0', '模板管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('61', '60', 'Template', 'add', '', '1', '1', '0', '添加模板', '', '0');
INSERT INTO `mqu_menu` VALUES ('62', '60', 'Template', 'index', 'type=css', '1', '1', '0', 'CSS管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('63', '60', 'Template', 'index', 'type=js', '1', '1', '0', 'JS管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('64', '60', 'Template', 'images', '', '1', '1', '0', '媒体文件管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('65', '7', 'Theme', 'index', 'menuid=65', '1', '0', '0', '风格管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('66', '65', 'Theme', 'upload', '', '1', '1', '0', '上传风格', '', '0');
INSERT INTO `mqu_menu` VALUES ('67', '2', 'Urlrule', 'index', '', '1', '1', '0', 'URL规则', '', '0');
INSERT INTO `mqu_menu` VALUES ('68', '67', 'Urlrule', 'add', '', '1', '1', '0', '添加规则', '', '0');
INSERT INTO `mqu_menu` VALUES ('69', '2', 'Dbsource', 'index', '', '1', '0', '0', 'DB数据源', '', '0');
INSERT INTO `mqu_menu` VALUES ('70', '69', 'Dbsource', 'add', '', '1', '1', '0', '添加数据源', '', '0');
INSERT INTO `mqu_menu` VALUES ('71', '2', 'Lang', 'index', '', '1', '1', '0', '多语言管理', '语言管理', '0');
INSERT INTO `mqu_menu` VALUES ('72', '71', 'Lang', 'add', '', '1', '1', '0', '添加语言', '', '0');
INSERT INTO `mqu_menu` VALUES ('73', '71', 'Lang', 'param', '', '1', '1', '0', '设置语言包', '', '0');
INSERT INTO `mqu_menu` VALUES ('74', '3', 'Block', 'index', '', '1', '1', '0', '碎片管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('75', '74', 'Block', 'add', '', '1', '1', '0', '添加碎片', '', '0');
INSERT INTO `mqu_menu` VALUES ('76', '60', 'Template', 'config', '', '1', '1', '0', '模板参数配置', '', '0');
INSERT INTO `mqu_menu` VALUES ('77', '3', 'Slide', 'index', '', '1', '1', '0', '幻灯片管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('78', '77', 'Slide', 'add', '', '1', '1', '0', '添加幻灯片', '', '0');
INSERT INTO `mqu_menu` VALUES ('79', '4', 'Payment', 'index', '', '1', '0', '0', '在线支付', '', '0');
INSERT INTO `mqu_menu` VALUES ('80', '79', 'Shipping', '', '', '1', '1', '0', '配送方式', '', '0');
INSERT INTO `mqu_menu` VALUES ('81', '79', 'Shipping', 'add', 'isajax=1', '1', '1', '0', '添加配送方式', '', '0');
INSERT INTO `mqu_menu` VALUES ('82', '58', 'Order', 'orderlist', '', '1', '1', '0', '单据管理', '', '0');
INSERT INTO `mqu_menu` VALUES ('83', '1', 'Log', 'index', '', '1', '1', '0', '后台登陆日志', '', '83');
INSERT INTO `mqu_menu` VALUES ('84', '2', 'Upgrade', 'index', '', '1', '0', '0', '在线升级', '', '0');
INSERT INTO `mqu_menu` VALUES ('85', '84', 'Upgrade', 'checkfile', '', '1', '1', '0', '文件校检', '', '0');
INSERT INTO `mqu_menu` VALUES ('86', '6', 'Createhtml', 'createsitemap', '', '1', '1', '0', '生成网站地图', '', '0');
INSERT INTO `mqu_menu` VALUES ('87', '6', 'Createhtml', 'upload', 'moduleid=3', '1', '1', '0', '批量导入产品', '', '0');
INSERT INTO `mqu_menu` VALUES ('102', '3', 'Product', '', '', '1', '1', '0', '产品模型', '产品模型', '2');
INSERT INTO `mqu_menu` VALUES ('103', '3', 'Project', 'index', '', '1', '1', '0', '案例模型', '', '9');
INSERT INTO `mqu_menu` VALUES ('104', '103', 'Project', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `mqu_menu` VALUES ('105', '102', 'Product', 'add', '', '1', '1', '0', '添加产品', '', '0');
INSERT INTO `mqu_menu` VALUES ('106', '3', 'Solution', 'index', '', '1', '1', '0', '解决方案', '', '9');
INSERT INTO `mqu_menu` VALUES ('107', '106', 'Solution', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `mqu_menu` VALUES ('108', '4', 'Office', 'index', '', '1', '1', '0', '办事处', '', '9');
INSERT INTO `mqu_menu` VALUES ('109', '108', 'Office', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `mqu_menu` VALUES ('116', '3', 'Prodocs', 'index', '', '1', '0', '0', '产品文档', '', '9');
INSERT INTO `mqu_menu` VALUES ('115', '114', 'Provideo', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `mqu_menu` VALUES ('114', '3', 'Provideo', 'index', '', '1', '0', '0', '产品视频', '', '9');
INSERT INTO `mqu_menu` VALUES ('117', '116', 'Prodocs', 'add', '', '1', '1', '0', '添加信息', '', '9');

-- ----------------------------
-- Table structure for mqu_module
-- ----------------------------
DROP TABLE IF EXISTS `mqu_module`;
CREATE TABLE `mqu_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `parent_moduleid` int(10) DEFAULT NULL,
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_module
-- ----------------------------
INSERT INTO `mqu_module` VALUES ('1', '单页模型', 'Page', null, '单页模型', '1', '1', '0', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('2', '新闻模型', 'Article', null, '新闻文章', '1', '1', '1', 'id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,listorder,summary', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('3', '产品模型', 'Product', null, '产品展示', '1', '1', '1', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('4', '资质模型', 'Picture', null, '图片展示', '1', '1', '1', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('5', '下载模型', 'Download', null, '文件下载', '1', '1', '1', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('19', '办事处', 'Office', null, '', '2', '0', '0', '*', '', '0', '0', '', '0');
INSERT INTO `mqu_module` VALUES ('6', '信息反馈', 'Feedback', null, '信息反馈', '1', '0', '0', '*', '', '0', '1', '1,2,3,4', '0');
INSERT INTO `mqu_module` VALUES ('7', '友情链接', 'Link', null, '友情链接', '2', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('8', '在线留言', 'Guestbook', null, '在线留言', '1', '0', '0', '*', '', '0', '1', '1,2,3,4', '0');
INSERT INTO `mqu_module` VALUES ('9', '在线客服', 'Kefu', null, '在线客服', '2', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('17', '案例模型', 'Project', null, '案例模型', '1', '0', '1', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('18', '解决方案', 'Solution', null, '', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('23', '产品文档', 'Prodocs', '3', '产品下载子模型', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `mqu_module` VALUES ('22', '产品视频', 'Provideo', '3', '产品视频子模型', '1', '0', '0', '*', '', '0', '1', '', '0');

-- ----------------------------
-- Table structure for mqu_node
-- ----------------------------
DROP TABLE IF EXISTS `mqu_node`;
CREATE TABLE `mqu_node` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_node
-- ----------------------------
INSERT INTO `mqu_node` VALUES ('1', 'Admin', '后台管理', '1', '后台项目', '0', '0', '1', '0');
INSERT INTO `mqu_node` VALUES ('2', 'Index', '后台默认', '1', '', '0', '1', '2', '1');
INSERT INTO `mqu_node` VALUES ('3', 'Config', '站点配置', '1', '', '0', '1', '2', '2');
INSERT INTO `mqu_node` VALUES ('4', 'index', '站点配置', '1', '', '0', '3', '3', '2');
INSERT INTO `mqu_node` VALUES ('5', 'sys', '系统参数', '1', '', '0', '3', '3', '2');
INSERT INTO `mqu_node` VALUES ('6', 'member', '用户中心设置', '1', '', '0', '3', '3', '2');
INSERT INTO `mqu_node` VALUES ('7', 'add', '添加变量', '1', '', '0', '3', '3', '2');
INSERT INTO `mqu_node` VALUES ('8', 'Menu', '菜单管理', '1', '', '0', '1', '2', '2');
INSERT INTO `mqu_node` VALUES ('11', 'index', '默认动作', '1', '', '0', '2', '3', '1');
INSERT INTO `mqu_node` VALUES ('12', 'Public', '全局操作', '1', '', '0', '1', '2', '0');
INSERT INTO `mqu_node` VALUES ('13', 'index', '默认', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('14', 'add', '添加', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('15', 'edit', '编辑', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('16', 'insert', '插入', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('17', 'attach', '附件设置', '1', '', '0', '3', '3', '2');
INSERT INTO `mqu_node` VALUES ('18', 'mail', '系统邮箱', '1', '', '0', '3', '3', '2');
INSERT INTO `mqu_node` VALUES ('19', 'Posid', '推荐位', '1', '', '0', '1', '2', '2');
INSERT INTO `mqu_node` VALUES ('21', 'update', '更新', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('22', 'status', '状态', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('23', 'deleteall', '批量删除', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('24', 'delete', '删除', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('25', 'listorder', '排序', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('26', 'password', '修改密码', '1', '', '0', '2', '3', '1');
INSERT INTO `mqu_node` VALUES ('27', 'profile', '个人资料', '1', '', '0', '2', '3', '1');
INSERT INTO `mqu_node` VALUES ('28', 'cache', '更新缓存', '1', '', '0', '2', '3', '1');
INSERT INTO `mqu_node` VALUES ('30', 'main', '系统信息', '1', '', '0', '2', '3', '1');
INSERT INTO `mqu_node` VALUES ('40', 'Urlrule', 'URL规则', '1', '', '0', '1', '2', '2');
INSERT INTO `mqu_node` VALUES ('48', 'Dbsource', 'DB数据源', '1', '', '0', '1', '2', '2');
INSERT INTO `mqu_node` VALUES ('55', 'Type', '类别管理', '1', '', '0', '1', '2', '2');
INSERT INTO `mqu_node` VALUES ('65', 'Lang', '多语言管理', '1', '', '0', '1', '2', '2');
INSERT INTO `mqu_node` VALUES ('75', 'Database', '数据库管理', '1', '', '0', '1', '2', '2');
INSERT INTO `mqu_node` VALUES ('76', 'docommand', '优化操作', '1', '', '0', '75', '3', '2');
INSERT INTO `mqu_node` VALUES ('77', 'backup', '备份', '1', '', '0', '75', '3', '2');
INSERT INTO `mqu_node` VALUES ('78', 'recover', '恢复', '1', '', '0', '75', '3', '2');
INSERT INTO `mqu_node` VALUES ('79', 'query', 'sql查询', '1', '', '0', '75', '3', '2');
INSERT INTO `mqu_node` VALUES ('80', 'doquery', '运行sql', '1', '', '0', '75', '3', '2');
INSERT INTO `mqu_node` VALUES ('81', 'Category', '栏目管理', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('88', 'repair_cache', '修复栏目数据', '1', '', '0', '81', '3', '3');
INSERT INTO `mqu_node` VALUES ('90', 'Module', '模型管理', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('98', 'Field', '模型字段', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('107', 'Page', '单页模型', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('110', 'Article', '文章模型', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('111', 'Product', '产品模型', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('112', 'Picture', '图片模型', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('113', 'Download', '下载模型', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('114', 'Feedback', '信息反馈', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('115', 'Guestbook', '在线留言', '1', '', '0', '1', '2', '3');
INSERT INTO `mqu_node` VALUES ('116', 'Link', '友情链接', '1', '', '0', '1', '2', '4');
INSERT INTO `mqu_node` VALUES ('117', 'Kefu', '在线客服', '1', '', '0', '1', '2', '4');
INSERT INTO `mqu_node` VALUES ('118', 'Order', '订单管理', '1', '', '0', '1', '2', '4');
INSERT INTO `mqu_node` VALUES ('119', 'Payment', '在线支付', '1', '', '0', '1', '2', '4');
INSERT INTO `mqu_node` VALUES ('120', 'Shipping', '配送方式', '1', '', '0', '1', '2', '4');
INSERT INTO `mqu_node` VALUES ('121', 'User', '会员管理', '1', '', '0', '1', '2', '5');
INSERT INTO `mqu_node` VALUES ('122', 'Role', '会员组管理', '1', '', '0', '1', '2', '5');
INSERT INTO `mqu_node` VALUES ('123', 'Node', '节点管理', '1', '', '0', '1', '2', '5');
INSERT INTO `mqu_node` VALUES ('124', 'Access', '授权查询', '1', '', '0', '1', '2', '5');
INSERT INTO `mqu_node` VALUES ('125', 'Createhtml', '网站更新', '1', '', '0', '1', '2', '6');
INSERT INTO `mqu_node` VALUES ('126', 'Template', '模板管理', '1', '', '0', '1', '2', '7');
INSERT INTO `mqu_node` VALUES ('127', 'Theme', '模板管理', '1', '', '0', '1', '2', '7');
INSERT INTO `mqu_node` VALUES ('128', 'Block', '碎片管理', '1', '', '0', '1', '2', '7');
INSERT INTO `mqu_node` VALUES ('129', 'Slide', '幻灯片管理', '1', '', '0', '1', '2', '7');
INSERT INTO `mqu_node` VALUES ('130', 'show', '查看订单', '1', '', '0', '118', '3', '4');
INSERT INTO `mqu_node` VALUES ('131', 'index', '更新首页', '1', '', '0', '125', '3', '6');
INSERT INTO `mqu_node` VALUES ('132', 'docreateindex', '生成首页', '1', '', '0', '125', '3', '6');
INSERT INTO `mqu_node` VALUES ('133', 'createlist', '更新列表页', '1', '', '0', '125', '3', '6');
INSERT INTO `mqu_node` VALUES ('134', 'createshow', '更新内容页', '1', '', '0', '125', '3', '6');
INSERT INTO `mqu_node` VALUES ('135', 'updateurl', '更新url', '1', '', '0', '125', '3', '6');
INSERT INTO `mqu_node` VALUES ('136', 'doCreatelist', '生成列表页', '1', '', '0', '125', '3', '6');
INSERT INTO `mqu_node` VALUES ('137', 'doCreateshow', '生成内容页', '1', '', '0', '125', '3', '6');
INSERT INTO `mqu_node` VALUES ('138', 'doUpdateurl', '生成url', '1', '', '0', '125', '3', '6');
INSERT INTO `mqu_node` VALUES ('139', 'statusallok', '批量审核', '1', '', '0', '12', '3', '0');
INSERT INTO `mqu_node` VALUES ('140', 'images', '媒体文件', '1', '', '0', '126', '3', '7');
INSERT INTO `mqu_node` VALUES ('141', 'config', '模板参数', '1', '', '0', '126', '3', '7');
INSERT INTO `mqu_node` VALUES ('142', 'index', '列表', '1', '', '0', '127', '3', '7');
INSERT INTO `mqu_node` VALUES ('143', 'chose', '更换', '1', '', '0', '127', '3', '7');
INSERT INTO `mqu_node` VALUES ('144', 'upload', '上传风格', '1', '', '0', '127', '3', '7');
INSERT INTO `mqu_node` VALUES ('145', 'picmanage', '图片管理', '1', '', '0', '129', '3', '7');
INSERT INTO `mqu_node` VALUES ('146', 'addpic', '添加图片', '1', '', '0', '129', '3', '7');
INSERT INTO `mqu_node` VALUES ('147', 'editpic', '编辑图片', '1', '', '0', '129', '3', '7');
INSERT INTO `mqu_node` VALUES ('148', 'insertpic', '插入图片', '1', '', '0', '129', '3', '7');
INSERT INTO `mqu_node` VALUES ('149', 'updatepic', '更新图片', '1', '', '0', '129', '3', '7');
INSERT INTO `mqu_node` VALUES ('150', 'listorder', '图片排序', '1', '', '0', '129', '3', '7');
INSERT INTO `mqu_node` VALUES ('151', 'Attachment', '附件管理', '1', '', '0', '1', '2', '0');
INSERT INTO `mqu_node` VALUES ('152', 'index', '默认操作', '1', '', '0', '151', '3', '0');
INSERT INTO `mqu_node` VALUES ('153', 'upload', '上传文件', '1', '', '0', '151', '3', '0');
INSERT INTO `mqu_node` VALUES ('154', 'filelist', '浏览文件', '1', '', '0', '151', '3', '0');
INSERT INTO `mqu_node` VALUES ('155', 'delfile', '删除文件', '1', '', '0', '151', '3', '0');
INSERT INTO `mqu_node` VALUES ('156', 'cleanfile', '清理文件', '1', '', '0', '151', '3', '0');
INSERT INTO `mqu_node` VALUES ('158', 'testmail', '邮件测试', '1', '', '0', '3', '3', '2');
INSERT INTO `mqu_node` VALUES ('157', 'dosite', '保存配置', '1', '', '0', '3', '3', '2');

-- ----------------------------
-- Table structure for mqu_office
-- ----------------------------
DROP TABLE IF EXISTS `mqu_office`;
CREATE TABLE `mqu_office` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `address` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_office
-- ----------------------------
INSERT INTO `mqu_office` VALUES ('1', '1', '3', 'admin', '//show/1.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('2', '1', '3', 'admin', '//show/2.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('3', '1', '3', 'admin', '//show/3.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('4', '1', '3', 'admin', '//show/4.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('5', '1', '3', 'admin', '//show/5.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('6', '1', '3', 'admin', '//show/6.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('7', '1', '3', 'admin', '//show/7.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('8', '1', '3', 'admin', '//show/8.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('9', '1', '3', 'admin', '//show/9.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('10', '1', '3', 'admin', '//show/10.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('11', '1', '3', 'admin', '//show/11.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('12', '1', '3', 'admin', '//show/12.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('13', '1', '3', 'admin', '//show/13.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('14', '1', '3', 'admin', '//show/14.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('15', '1', '3', 'admin', '//show/15.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('16', '1', '3', 'admin', '//show/16.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('17', '1', '3', 'admin', '//show/17.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('18', '1', '3', 'admin', '//show/18.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('19', '1', '3', 'admin', '//show/19.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('20', '1', '3', 'admin', '//show/20.html', '0', '1490176200', '1490176236', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');
INSERT INTO `mqu_office` VALUES ('21', '1', '3', 'admin', '//show/21.html', '0', '1490176200', '1490176888', '3', '南京办事处', '', '', '刘经理', '025-51877719', '江苏省南京市秦淮区中山东路300号长发中心B座1501室');

-- ----------------------------
-- Table structure for mqu_online
-- ----------------------------
DROP TABLE IF EXISTS `mqu_online`;
CREATE TABLE `mqu_online` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL,
  `lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_online
-- ----------------------------
INSERT INTO `mqu_online` VALUES ('54d200d756b2af5dbe653af741fef9d6', '0', '', '127.0.0.1', '1490768242', '4');

-- ----------------------------
-- Table structure for mqu_order
-- ----------------------------
DROP TABLE IF EXISTS `mqu_order`;
CREATE TABLE `mqu_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` bigint(19) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_sn` varchar(100) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_code` varchar(120) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `invoice_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `accept_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `point` int(5) unsigned NOT NULL DEFAULT '0',
  `invoice` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `invoice_title` varchar(100) NOT NULL DEFAULT '',
  `postmessage` varchar(255) NOT NULL DEFAULT '',
  `note` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_order
-- ----------------------------

-- ----------------------------
-- Table structure for mqu_order_data
-- ----------------------------
DROP TABLE IF EXISTS `mqu_order_data`;
CREATE TABLE `mqu_order_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `moduleid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_thumb` varchar(120) NOT NULL DEFAULT '',
  `product_name` varchar(120) NOT NULL DEFAULT '',
  `product_url` varchar(120) NOT NULL DEFAULT '',
  `product_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr` text NOT NULL,
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isgift` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `userid` (`userid`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_order_data
-- ----------------------------

-- ----------------------------
-- Table structure for mqu_page
-- ----------------------------
DROP TABLE IF EXISTS `mqu_page`;
CREATE TABLE `mqu_page` (
  `id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(250) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cc` varchar(255) NOT NULL DEFAULT '540*470',
  `my_pics` mediumtext NOT NULL,
  `profile` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_page
-- ----------------------------
INSERT INTO `mqu_page` VALUES ('23', '关于我们', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('49', 'Factory equipment', '/Uploads/201610/57fa291467a3e.jpg', '', '', '<span style=\"color:#362C20;font-family:Arial;font-size:14px;white-space:normal;background-color:#FFFFFF;\">Zhongshan zohnson lighting co.,ltd is a high-tech manufacture which specializes in production and sales of LED tubes, led panel light, led high bay light, led floodlight and led street light.</span><br style=\"box-sizing:border-box;color:#362C20;font-family:Arial;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:border-box;color:#362C20;font-family:Arial;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#362C20;font-family:Arial;font-size:14px;white-space:normal;background-color:#FFFFFF;\">Staffed with hundreds employees, over 10 production lines, and more backup production capability in daughter factories, Zohnson is glad and able to meet almost all special requirements of different customers. Thus, Zohnson gains customers from all around the world and has established good corporations with many big and small lighting importors, contractors, distributors and wholesalors. ZOHNSON lighting Guangzhou Branch is loaced in Liwan District, Guangzhou City, which focuses on international sales and marketing.</span>', '', '0', 'zzzzzzzzzzzzzzzzzzzz', '/Uploads/201610/57fa164da5ab4.jpg|1LED Products 100% tested test results recored automatically by Computer 100% can be traced back:::/Uploads/201610/57fa1656bd3bc.jpg|2taimg.jpg:::/Uploads/201610/57fa165c2d441.jpg|3LED Products 100% tested test results recored automatically by Computer 100% can be traced back:::/Uploads/201610/57fa1660bd210.jpg|4taimg.jpg:::/Uploads/201610/57fa16645d79e.jpg|5LED Products 100% tested test results recored automatically by Computer 100% can be traced back:::/Uploads/201610/57fa16674364c.jpg|6LED Products 100% tested test results recored automatically by Computer 100% can be traced back:::/Uploads/201610/57fa32f13bcb9.jpg|7taimg.jpg', '');
INSERT INTO `mqu_page` VALUES ('72', '公司介绍', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('91', 'ABOUT US', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('92', 'PROJECT', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('95', 'ENCYCLOPEDIA', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('96', 'CONTACT', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('97', '9 IMPORTANT CASE', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('4', '3D打印应用解决方案', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('7', '复印机/耗材', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('8', '投资者关系', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('9', '关于我们', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('24', '公司简介标题', '', '', '', '&nbsp; &nbsp; &nbsp; 奥仕智能立足大OA市场、智能办公及教育领域，历经10多年的发展，从一家品质卓越的办公设备耗材生产销售品牌商，创新升级为3D打印产业与智能化办公及应用领域的领先企业。公司秉承“一流原料、精工制造、全程质控”的产品开发理念，自建专业生产线，创建了产品极端环境测试系统，企业通过ISO9000和ISO14000国际标准生产管理体系认证以及欧盟ROHS认证、CE认证。公司在激光打印机耗材产品项目上拥有5项实用新型专利、1项发明专利，在3D打印机产品项目上拥有3项实用新型专利。<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 奥仕智能打造出“新富士”、“富士樱（fusica）”两大业界知名品牌，拥有广泛的集团客户基础，在OA行业、教育系统和政府机构有较高的美誉度；富士樱是广东省、广州市、上海市、浙江省、湖南省、陕西省、辽宁省、深圳市、青岛市等省、市政府打印耗材定点采购的中标品牌。<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 奥仕智能业务涵盖四大板块：3D打印及智能办公产品；速印机及一体机耗材；激光打印机耗材；复印机耗材业务。在新兴的3D打印项目上，奥仕智能投入巨资建立3D打印研发体系，与著名高校共建3D打印研究院、3D教学实验基地，构建3D云打印平台，获得多项技术专利，在3D打印硬件设备的研发、制造生产以及商业应用等环节取得领先优势。<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 目前，公司已建立起覆盖全国各省的营销网络和不断增长的海外销售渠道，同时大力拓展电商网销渠道，业务取得快速增长。<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 奥仕智能以“创新、专注、共赢”的发展理念，整合产业链上下游资源，致力于构建一个3D打印与智能办公领域的领先型企业，实现让员工、合作伙伴、企业及社会的和谐共同发展。&nbsp;<br />', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('25', '组织架构', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('26', '研究生产', '', '', '', '<h2 style=\"text-align:center;\">\r\n	产学研结合 &nbsp;推进创新发展\r\n</h2>\r\n<p>\r\n	<span style=\"line-height:2;\">鼎飞航空与国家211工程重点学校哈尔滨工业大学、南京航空航天大学、华南理工大学等高校采取产学研合作，借助高校第三方深厚的研发实力，促进新产品研发，提升产品品质。</span><br />\r\n<span style=\"line-height:2;\"> 鼎飞航空研发团队不断有高校多名科研专家、国外知名品牌专家组成的研究团队充实进来，为鼎飞航空开拓视野、技术攻坚提供保证，也使鼎飞航空的研发实力、整体素质、综合实力得到极大的提升。</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d0cde63f5ff.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	与中国人民公安大学刑事科学技术学院合作研发\r\n</h2>\r\n<p>\r\n	<span style=\"line-height:2;\">2017年6月，鼎飞航空与中国人民公安大学刑事科学技术学院联合共建“犯罪现场三维重建与智能分析实验室”，共同研发公安行业警用无人机领域最为先进的无人机系统，并成立专家小组进行各种课题攻关和产品研发。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d0cea46c61e.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	鼎飞研发中心\r\n</h2>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">广州鼎飞航空科技有限公司作为一家以技术型生产与销售的高新技术企业，十分重视无人机核心技术的研发。通过高科技人才队伍的建设，深耕公安行业警用无人机领域，不断开发出引导市场需求和发展的新无人机产品。</span><br />\r\n<span style=\"line-height:2;\">目前，鼎飞航空已拥有一支在公共安全领域运营十多年的技术服务团队，包括无人机研发资深工程师、高科技材料研发工程师、装配技术工程师和专业无人机飞行员等，通过深度挖掘客户需求，努力将本公司的业务从需求主导型转变为先行开发型和先行提案型。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d0d02520674.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d0d02552bae.jpg\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	无人机的生产\r\n</h2>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">鼎飞航空自成立之初，便建立起一整套规范的产品生产管理体系，运用国际最前沿的无人机生产技术，以“专业、务实、严谨、认真”为生产理念，不断丰富产品结构，提升产品品</span><br />\r\n<span style=\"line-height:2;\">质，为公司成为专业的无人机系统方案提供商打好坚实的基础。</span><br />\r\n<span style=\"line-height:2;\">鼎飞航空将德国严谨的全套试验程序和试验设备请进了实验室，对飞机的生产工艺和制造技术精益求精，对飞机的各个零部件和整机进行各种严格测试，保证了无人机整机高可靠性，再配合量身定制的双余度飞控，将无人机可靠性提高到前所未有的高度，诠释了鼎飞对工业无人机的理念与执着。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d0d0257e7b5.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d0d025a097a.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d0d025c7a1a.jpg\" />\r\n</p>', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('27', '公司环境', '', '', '', '<h1 style=\"text-align:center;\">\r\n	飞行培训\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span> \r\n	<table style=\"width:80%;\" cellpadding=\"2\" cellspacing=\"0\" align=\"center\" border=\"0\" class=\"ke-zeroborder\" bordercolor=\"#000000\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"white-space:normal;\">广州鼎飞航空科技有限公司是集自主研发、生产、销售及培训服务于一体的现代化高科技企业。建立了一整套专业的无人驾驶航空器系统驾驶员培训体系，严格依据中国民用航空局《关于民用无人驾驶航空器系统驾驶员资质管理有关问题的通知》（民航发[2014]27号）及《民用无人驾驶航空器系统驾驶员管理暂行规定》（AC-61-FS-2013-20）等相关法规开展民用无人驾驶航空器系统培训。</span><br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n<br />\r\n</span> \r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	一 &nbsp;培训资质\r\n</h2>\r\n<p>\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><img src=\"/Uploads/201703/58d0e34f893ca.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	二 &nbsp;培训内容\r\n</h2>\r\n<p>\r\n	<span style=\"line-height:2;\"></span> \r\n</p>\r\n<h3 style=\"text-align:center;\">\r\n	理论培训\r\n</h3>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\"> \r\n	<table style=\"width:80%;\" cellpadding=\"2\" cellspacing=\"0\" align=\"center\" border=\"0\" class=\"ke-zeroborder\" bordercolor=\"#000000\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"text-align:center;\">\r\n					相关民航无人机法规、无人机概述与系统组成、无人机构造及主流布局形式、无人机飞行原理与性能、多旋翼植保机原理及性能、充电设备和电池的使用、无人机系统安全运行管理、无人机遥控装置设置、空域的飞行与申报、无人机操纵规范与紧急情况处理、系统程序检查、任务执行指挥、后期数据处理技术等课程。\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n<br />\r\n</span> \r\n</p>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d0e3a0ac594.jpg\" alt=\"\" /> \r\n</div>\r\n<span style=\"line-height:2;\"></span> \r\n<p>\r\n	<br />\r\n</p>\r\n<h3 style=\"text-align:center;\">\r\n	实操培训\r\n</h3>\r\n<p>\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\"> \r\n	<table style=\"width:80%;\" cellpadding=\"2\" cellspacing=\"0\" align=\"center\" border=\"0\" class=\"ke-zeroborder\" bordercolor=\"#000000\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"text-align:center;\">\r\n					模拟飞行、无人机组装调试实践、地面站航线规划应急链路通讯、起飞与降落训练、无人机维修与保养、无人机系统安全运行管理、应急处置练习、遥控器的调参方法、无人机的构造及作用等课程。\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n<br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"></span><span style=\"line-height:2;\"></span><img src=\"/Uploads/201703/58d0e3eea6766.jpg\" alt=\"\" style=\"text-align:center;\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	三 &nbsp;培训场地\r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><img src=\"/Uploads/201703/58d0e3fce9583.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\"></span> \r\n</p>', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('28', '业务合作', '', '', '', '<h2 style=\"text-align:center;\">\r\n	业务服务\r\n</h2>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span> \r\n	<table style=\"width:80%;\" cellpadding=\"2\" cellspacing=\"0\" border=\"0\" class=\"ke-zeroborder\" bordercolor=\"#000000\" align=\"center\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"text-align:center;white-space:normal;\"></span><span style=\"text-align:center;white-space:normal;\">我们在全国建立了超过25个技术服务中心，提供包括各类前期的技术咨询、方案设计、设备供货、方案建设和实操应用等服务，致力于为各个行业领域客户提供专业可靠的业务支持。</span><br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n<br />\r\n<br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><img src=\"/Uploads/201703/58d0daff0711a.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	租赁服务\r\n</h2>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"> \r\n	<table style=\"width:80%;\" cellpadding=\"2\" cellspacing=\"0\" align=\"center\" border=\"0\" class=\"ke-zeroborder\" bordercolor=\"#000000\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"text-align:center;white-space:normal;\">&nbsp;<span style=\"text-align:center;white-space:normal;\">我们提供机器租赁、飞手租赁、长期租赁等业务，客户可自由选择最适配的服务组合，以降低</span><span style=\"text-align:center;white-space:normal;\"></span><span style=\"text-align:center;white-space:normal;\">对无人机解决方案的一次性投入，有效节约企业的运营成本，提高抗风险能力。</span></span><br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n<br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><img src=\"/Uploads/201703/58d0db126598b.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	技术培训\r\n</h2>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\">\r\n	<table style=\"width:80%;\" cellpadding=\"2\" cellspacing=\"0\" align=\"center\" border=\"0\" class=\"ke-zeroborder\" bordercolor=\"#000000\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"text-align:center;white-space:normal;\">我们拥有一支完善的实战化培训团队，进行定期、定点、定员飞行培训，包括飞行理论学习、模拟飞行培训、真机实战等多维度培训内容，全面针对各个行业领域应用进行深度培训服务</span><span style=\"text-align:center;white-space:normal;\">。</span><br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"line-height:2;\"><img src=\"/Uploads/201703/58d0db2c33754.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('33', '集团采购', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('36', '应用服务', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('37', '人才招聘', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('38', '软件下载', '', '', '', '', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('39', '联系我们', '', '', '', '<p>\r\n	<span style=\"font-size:small;\"><br />\r\n</span> \r\n	<table style=\"width:100%;\" cellpadding=\"1\" cellspacing=\"10\" border=\"1\" bordercolor=\"#999999\">\r\n		<tbody>\r\n			<tr>\r\n				<td colspan=\"5\" style=\"text-align:center;height:40px;\">\r\n					<span style=\"font-size:18px;\">业务分区联系方式</span><span style=\"font-size:18px;\"></span><span style=\"font-size:18px;\"></span><br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"text-align:center;width:10%;height:40px;\">\r\n					<span style=\"font-size:18px;\">分区</span><span style=\"font-size:18px;\"></span><span style=\"font-size:18px;\"></span><br />\r\n				</td>\r\n				<td style=\"text-align:center;width:10%;\">\r\n					<span style=\"font-size:18px;\">负责人</span><span style=\"font-size:18px;\"></span><br />\r\n				</td>\r\n				<td style=\"text-align:center;width:50%;\">\r\n					<span style=\"font-size:18px;\">所辖省份</span><span style=\"font-size:18px;\"></span><br />\r\n				</td>\r\n				<td style=\"text-align:center;width:15%;\">\r\n					<span style=\"font-size:18px;\">电话</span><span style=\"font-size:18px;\"></span><br />\r\n				</td>\r\n				<td style=\"text-align:center;width:15%;\">\r\n					<span style=\"font-size:18px;\">手机</span><span style=\"font-size:18px;\"></span><br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"text-align:center;height:40px;\">\r\n					华东区\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					严飞\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					上海、江苏、安徽、浙江<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					020-66392190-304<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					13572113019<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"text-align:center;height:40px;\">\r\n					华北区<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					刘伟<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					北京、山东、山西、河北<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"text-align:center;white-space:normal;\">020-66392190-325</span><br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					13924235560<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"text-align:center;height:40px;\">\r\n					华南区<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					张斌<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					&nbsp;广东、海南、福建<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"text-align:center;white-space:normal;\">020-66392190-312</span><br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					13380035836<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"text-align:center;height:40px;\">\r\n					西南区<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					雷斌<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					四川、重庆、贵州、云南、广西、西藏&nbsp;<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					029-85512919\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					18092178860<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"text-align:center;height:40px;\">\r\n					华中区<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					张斌<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					湖南、湖北、河南、江西<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"text-align:center;white-space:normal;\">020-66392190-312</span><span style=\"text-align:center;white-space:normal;\"></span><br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					13380035836<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"text-align:center;height:40px;\">\r\n					东北区<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					刘伟<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					辽宁、吉林、黑龙江<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"text-align:center;white-space:normal;\">020-66392190-325</span><span style=\"text-align:center;white-space:normal;\"></span><br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					<span style=\"text-align:center;white-space:normal;\">13924235560</span><br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<table style=\"width:100%;\" cellpadding=\"1\" cellspacing=\"10\" align=\"center\" border=\"1\" bordercolor=\"#999999\">\r\n		<tbody>\r\n			<tr>\r\n				<td colspan=\"5\" style=\"height:40px;text-align:center;\">\r\n					<span style=\"font-size:18px;\">售后服务联系方式</span><br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"width:10%;height:40px;text-align:center;vertical-align:middle;\">\r\n					<span style=\"font-size:18px;\">服务项目</span><br />\r\n				</td>\r\n				<td style=\"text-align:center;width:10%;\">\r\n					<span style=\"font-size:18px;\">负责人</span><br />\r\n				</td>\r\n				<td style=\"text-align:center;width:50%;\">\r\n					<span style=\"font-size:18px;\">电话</span><br />\r\n				</td>\r\n				<td style=\"text-align:center;width:15%;\">\r\n					<span style=\"font-size:18px;\">传真</span><br />\r\n				</td>\r\n				<td style=\"text-align:center;width:15%;\">\r\n					<span style=\"font-size:18px;\">手机</span><br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"height:40px;text-align:center;\">\r\n					业务投诉<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					陈强\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					020-66392190-311<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					020-66392192<br />\r\n				</td>\r\n				<td style=\"text-align:center;\">\r\n					13609031700&nbsp;<br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>', '', '0', '540*470', '', '');
INSERT INTO `mqu_page` VALUES ('51', '服务政策', '', '', '', '<h2>\r\n	服务政策\r\n</h2>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">为了更好地服务客户，打造公司品牌，树立公司企业形象，我公司以“质量可靠、服务至上” 为原则向您郑重承诺：</span> \r\n</p>\r\n<h3>\r\n	一、产品质量承诺 ：\r\n</h3>\r\n<span style=\"line-height:2;\">1、无人机的制造和检测均有质量记录和检测资料； </span><br />\r\n<span style=\"line-height:2;\"> 2、无人机各项性能出厂前均检测合格后再装箱发货。 </span><br />\r\n<h3>\r\n	二、产品价格承诺：&nbsp;\r\n</h3>\r\n<span style=\"line-height:2;\">1、为了保证产品的高可靠性和先进性，无人机的生产材料均选用国际优质名牌产品；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> 2、在同等竞争条件下，我公司在不降低产品技术性能、更改产品部件为代价的基础上，以最优惠的价格提供给客户。&nbsp;</span><br />\r\n<h3>\r\n	三、交货期承诺： 　&nbsp;\r\n</h3>\r\n<span style=\"line-height:2;\">1、产品交货期：根据客户要求日期按时交付，若有特殊要求，我公司可定制化满足客户需求； 　&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> 2、产品交货时，我公司向客户提供完整产品设备清单及资料。 </span><br />\r\n<span style=\"line-height:2;\"> 3、产品质保期：本公司产品自验收之日起，质保期一年（锂电池质保6个月）</span><br />\r\n<h3>\r\n	四、售后服务承诺：&nbsp;\r\n</h3>\r\n<span style=\"line-height:2;\">1、服务理念：专业、务实、严谨、认真；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> 2、服务目标：打造工业级无人机第一品牌，提供客户满意服务！&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> 3、服务原则：&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; （a）在产品保修期内，非人为因素导致产品飞行意外所产生的损失，均由本公司免费维修及更换相同型号的零部件；因人为因素损坏导致产品飞行意外所产生的损失，</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;本公司免费维 &nbsp;修， 但无人机配件及设备价格需按本公司成本价计费；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; （b）在产品保修期外，因飞行意外导致摔机所产生的损失，本公司免费维修，但无人机配件及设备价格需按本公司成本价计费；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; （c）在客户使用过程中，如需要增加无人机配件及设备，本公司按照公司成本价计费；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> 4、服务效率：保修期内或保修期外如设备出现故障，供方在接到通知后，维修人员在72小时内可到达现场并开始维修，售后服务热线：020-82003840；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> 5、在保修期外我公司技术人员每年不少于三次回访调查用户使用情况；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> 6、我司声明的保修不包括下列情况：&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; （a）产品超过保修期；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; （b）产品因人为使用不当或未进行适当的维护保养，自然灾害（如雷电、地震、台风等）所致之故障或损坏；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; （c）产品因不适当的安装或不在本产品规定的环境中使用所致的故障或损坏；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; （d）在产品中安装、使用未经我司同意的搭载及软件；&nbsp;</span><br />\r\n<span style=\"line-height:2;\"> &nbsp; &nbsp; （e）产品由非指定的飞行服务人员维修、处理或更改。</span><br />', '', '0', '540*470', '', '');

-- ----------------------------
-- Table structure for mqu_payment
-- ----------------------------
DROP TABLE IF EXISTS `mqu_payment`;
CREATE TABLE `mqu_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_fee_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_config` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_payment
-- ----------------------------

-- ----------------------------
-- Table structure for mqu_picture
-- ----------------------------
DROP TABLE IF EXISTS `mqu_picture`;
CREATE TABLE `mqu_picture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(150) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `pics` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bg` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_picture
-- ----------------------------
INSERT INTO `mqu_picture` VALUES ('18', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/18.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('19', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/19.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('20', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/20.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('21', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/21.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('22', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/22.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('23', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/23.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('24', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/24.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('25', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/25.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('26', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/26.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('27', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/27.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('28', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/28.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('29', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/29.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('30', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/30.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('31', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/31.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('32', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/32.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('33', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/33.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('34', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/34.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('35', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/35.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('36', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/36.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('37', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/37.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('38', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/38.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('39', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/39.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('40', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/40.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('41', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/41.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('42', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/42.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('43', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/43.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('44', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/44.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('45', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/45.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('46', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/46.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('47', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/47.html', '', '0', '1', '0', '', '0', '0', '0', '1490075475', '1490075729', '', '3', '');
INSERT INTO `mqu_picture` VALUES ('48', '25', '3', 'admin', '鼎飞视频航拍软件证书', '', '/Uploads/201703/58d0c04e2990e.jpg', '', '', '', '/certificate/show/48.html', '', '0', '1', '0', '', '0', '0', '2', '1490075475', '1490075729', '', '3', '');

-- ----------------------------
-- Table structure for mqu_posid
-- ----------------------------
DROP TABLE IF EXISTS `mqu_posid`;
CREATE TABLE `mqu_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_posid
-- ----------------------------
INSERT INTO `mqu_posid` VALUES ('9', '首页新闻头条', '0');
INSERT INTO `mqu_posid` VALUES ('11', '首页_解决方案', '0');
INSERT INTO `mqu_posid` VALUES ('12', '首页_产品置顶', '0');

-- ----------------------------
-- Table structure for mqu_prodocs
-- ----------------------------
DROP TABLE IF EXISTS `mqu_prodocs`;
CREATE TABLE `mqu_prodocs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(80) NOT NULL DEFAULT '',
  `summary` mediumtext NOT NULL,
  `cc` varchar(255) NOT NULL DEFAULT '137px*194px',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_prodocs
-- ----------------------------
INSERT INTO `mqu_prodocs` VALUES ('1', '72', '1', '3', 'admin', '?g=Home&m=Prodocs&a=show&id=1', '0', '1490605417', '1490615533', '3', '/Uploads/201703/58be861a5a3d0.zip', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......', '137px*194px', '0', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg');
INSERT INTO `mqu_prodocs` VALUES ('3', '72', '1', '3', 'admin', '?g=Home&m=Prodocs&a=show&id=3', '0', '1490605417', '1490615530', '3', '/Uploads/201703/58be861a5a3d0.zip', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......', '137px*194px', '0', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg');
INSERT INTO `mqu_prodocs` VALUES ('4', '72', '1', '3', 'admin', '?g=Home&m=Prodocs&a=show&id=4', '0', '1490612063', '1490615526', '3', '/Uploads/201703/58be861a5a3d0.zip', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......', '137px*194px', '0', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg');
INSERT INTO `mqu_prodocs` VALUES ('5', '72', '1', '3', 'admin', '?g=Home&m=Prodocs&a=show&id=5', '0', '1490615048', '1490615523', '3', '/Uploads/201703/58be861a5a3d0.zip', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”，是利用无线电遥控设备和自备的程序控制装置操纵的不载人飞机 ......', '137px*194px', '4', '资源下载文件标题文件标题', '', '/Uploads/201703/58d08bead96ed.jpg');

-- ----------------------------
-- Table structure for mqu_product
-- ----------------------------
DROP TABLE IF EXISTS `mqu_product`;
CREATE TABLE `mqu_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(80) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `url` varchar(150) NOT NULL DEFAULT '',
  `xinghao` varchar(30) NOT NULL DEFAULT '',
  `pics` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cc` varchar(255) NOT NULL DEFAULT '360px*290px',
  `brand` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `pin_image` varchar(80) NOT NULL DEFAULT '',
  `advantage` text NOT NULL,
  `parameter` text NOT NULL,
  `composition` text NOT NULL,
  `pro_banner` varchar(80) NOT NULL DEFAULT '',
  `summary` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_product
-- ----------------------------
INSERT INTO `mqu_product` VALUES ('59', '6', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5dbde3352.jpg', '12', '1', '0', '', '0', '0', '1', '1488767259', '1489656695', '0.00', '/platform/show/59.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '/Uploads/201703/58ca584307f6b.jpg', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('53', '6', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5c1edeeaf.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1489656917', '0.00', '/platform/show/53.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('54', '6', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5e48e4353.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1489656910', '0.00', '/platform/show/54.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('55', '6', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5dbde3352.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1489656902', '0.00', '/platform/show/55.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('56', '5', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5c1edeeaf.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1489656865', '0.00', '/uav/show/56.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('57', '5', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5e0ea40cc.jpg', '0', '1', '0', '', '0', '0', '1', '1488767259', '1489657361', '0.00', '/uav/show/57.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('58', '6', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5c3b3f733.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1489656893', '0.00', '/platform/show/58.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('60', '5', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5e48e4353.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1489657418', '0.00', '/uav/show/60.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('61', '5', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5dbde3352.jpg', '0', '1', '0', '', '0', '0', '26', '1488767259', '1489657279', '0.00', '/uav/show/61.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('62', '5', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5de16f2f8.jpg', '0', '1', '0', '', '0', '0', '1', '1488767259', '1489657316', '0.00', '/uav/show/62.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('63', '5', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca586147222.jpg', '12', '1', '0', '', '0', '0', '17', '1488767259', '1489656677', '0.00', '/uav/show/63.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '/Uploads/201703/58ca584307f6b.jpg', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('67', '7', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5e0ea40cc.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1488779818', '0.00', '/copier/show/67.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('68', '7', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5e48e4353.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1488779812', '0.00', '/copier/show/68.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('69', '7', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5e48e4353.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1489654916', '0.00', '/parts/show/69.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('70', '7', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5dbde3352.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1488779796', '0.00', '/copier/show/70.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('71', '7', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5de16f2f8.jpg', '0', '1', '0', '', '0', '0', '1', '1488767259', '1489656771', '0.00', '/parts/show/71.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('72', '7', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5de16f2f8.jpg', '12', '1', '0', '', '0', '0', '155', '1488767259', '1490768013', '0.00', '/parts/show/72.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '/Uploads/201703/58ca584307f6b.jpg', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');
INSERT INTO `mqu_product` VALUES ('105', '6', '3', 'admin', '3D打印机-F2', '', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '0', '/Uploads/201703/58ca5dbde3352.jpg', '0', '1', '0', '', '0', '0', '0', '1488767259', '1489656902', '0.00', '/platform/show/105.html', 'F2', '/Uploads/201703/58bcc9980e1c8.jpg|产品中心--2_03.jpg:::/Uploads/201703/58bcc99831b57.png|产品中心--2_05.png', '3', '1/1', '自有品牌', '', '', '<h2 style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;font-weight:normal;\">DF-L600无人机</span> \r\n</h2>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">DF-L600无人机是全碳纤维一体糊制成型，具备强度大、重量轻、外形美观、机动性强、操控简便灵活、载荷能力强、运输方便快捷的特点。</span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201703/58d49292733ef.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">广泛应用于影视航拍、空中侦查、反恐、取证、地质勘测、遥感测绘、通信中继、环境保护、气象</span><span style=\"font-size:16px;\">探测、灾害监测、航测及公安消防等行业和领域</span><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/Uploads/201703/58d4bc55a0d19.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '<table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"10\" border=\"1\" bordercolor=\"#CCCCCC\" align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:17%;background-color:#009900;border-width:1px;border-style:solid;border-color:#009900;height:50px;text-align:center;vertical-align:middle;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">序号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品名称</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">产品型号</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">数量</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">单位</span> \r\n			</td>\r\n			<td style=\"width:17%;background-color:#009900;text-align:center;vertical-align:middle;border-width:1px;border-style:solid;border-color:#009900;height:50px;\">\r\n				<span style=\"color:#FFFFFF;font-size:16px;\">备注</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				六旋翼无人机<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-L600<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				台\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				2\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				螺旋桨<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				支\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				3\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				起落架<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				副\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				DF-RCMK<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				套\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				5\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				遥控器充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				个\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				6\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				动力电池<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				6S 8000mah<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				4\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				组\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				7\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				充电器<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				动力电池 &nbsp; DF-308A<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				8\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				随机工具<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				<span style=\"text-align:center;white-space:normal;\">套</span><br />\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:40px;text-align:center;vertical-align:middle;\">\r\n				9\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;height:40px;\">\r\n				产品说明书、合格证、保修卡<br />\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				/\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:center;vertical-align:middle;\">\r\n				份\r\n			</td>\r\n			<td style=\"height:40px;\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '/Uploads/201703/58d381c05e452.jpg', '作为一款工业级无人机，DF-S600采用6轴设计，更大程度的提高了多旋翼无人机的安全与可靠性，同时具备自动起降、自动定高、自动返航、极坐标 ......');

-- ----------------------------
-- Table structure for mqu_project
-- ----------------------------
DROP TABLE IF EXISTS `mqu_project`;
CREATE TABLE `mqu_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `summary` mediumtext NOT NULL,
  `cc` varchar(255) NOT NULL DEFAULT '370x250',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_project
-- ----------------------------
INSERT INTO `mqu_project` VALUES ('1', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/1.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('2', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/2.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('3', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/3.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('4', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/4.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('5', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/5.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('6', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/6.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('7', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/7.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('8', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/8.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('9', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/9.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('10', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/10.html', '0', '0', '1', '0', '', '0', '0', '0', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('11', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/11.html', '0', '0', '1', '0', '', '0', '0', '2', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');
INSERT INTO `mqu_project` VALUES ('12', '23', '3', 'admin', '黑龙江省刑事技术总队视频侦查技术分析', '', '/Uploads/201703/58cfb71ba7cad.jpg', '黑龙江省刑事技术总队视频侦查技术分析', '黑龙江省刑事技术总队视频侦查技术分析', '<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移&nbsp;\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>\r\n<p>\r\n	黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移\r\n</p>', '/case/show/12.html', '0', '0', '1', '0', '', '0', '0', '35', '1490007765', '1490007838', '3', '黑龙江省刑事技术总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移总队结合视频侦查技术、无人机视频采集与无线中继技术、视频侦查车移', '370x250');

-- ----------------------------
-- Table structure for mqu_provideo
-- ----------------------------
DROP TABLE IF EXISTS `mqu_provideo`;
CREATE TABLE `mqu_provideo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(80) NOT NULL DEFAULT '',
  `videocode` mediumtext NOT NULL,
  `cc` varchar(255) NOT NULL DEFAULT '379px*213px',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_provideo
-- ----------------------------
INSERT INTO `mqu_provideo` VALUES ('1', '72', '1', '3', 'admin', '//show/1.html', '0', '1490596648', '1490612232', '3', 'DF-L600无人机—演示视频', '', '/Uploads/201703/58d9cc4f305c8.jpg', 'http://player.youku.com/embed/XMjY2MDgzNjAxNg==', '', '379px*213px', '0');
INSERT INTO `mqu_provideo` VALUES ('2', '72', '1', '3', 'admin', '//show/2.html', '0', '1490596670', '1490612226', '3', 'DF-L600无人机—演示视频', '', '/Uploads/201703/58d9cc4f305c8.jpg', 'http://player.youku.com/embed/XMjY2MDgzNjAxNg==', '', '379px*213px', '0');
INSERT INTO `mqu_provideo` VALUES ('3', '72', '1', '3', 'admin', '//show/3.html', '0', '1490596730', '1490612252', '3', 'DF-L600无人机—演示视频', '', '/Uploads/201703/58d9cc4f305c8.jpg', 'http://player.youku.com/embed/XMjY2MDgzNjAxNg==', '', '379px*213px', '0');
INSERT INTO `mqu_provideo` VALUES ('4', '72', '1', '3', 'admin', '//show/4.html', '0', '1490596855', '1490612238', '3', 'DF-L600无人机—演示视频', '', '/Uploads/201703/58d9cc4f305c8.jpg', 'http://player.youku.com/embed/XMjY2MDgzNjAxNg==', '', '379px*213px', '0');
INSERT INTO `mqu_provideo` VALUES ('8', '72', '1', '3', 'admin', '?g=Home&m=Provideo&a=show&id=8', '0', '1490614348', '1490671613', '3', 'DF-L600无人机—演示视频', '', '/Uploads/201703/58d9cc4f305c8.jpg', 'http://player.youku.com/embed/XMjY2MDgzNjAxNg==', '', '379px*213px', '0');

-- ----------------------------
-- Table structure for mqu_role
-- ----------------------------
DROP TABLE IF EXISTS `mqu_role`;
CREATE TABLE `mqu_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maxpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxmessagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_role
-- ----------------------------
INSERT INTO `mqu_role` VALUES ('1', '超级管理员', '1', '超级管理员', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `mqu_role` VALUES ('2', '普通管理员', '1', '普通管理员', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `mqu_role` VALUES ('3', '注册用户', '1', '注册用户', '0', '0', '1', '0', '1', '1', '1', '0', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `mqu_role` VALUES ('4', '游客', '1', '游客', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `mqu_role` VALUES ('5', '邮件认证', '1', '邮件认证', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for mqu_role_user
-- ----------------------------
DROP TABLE IF EXISTS `mqu_role_user`;
CREATE TABLE `mqu_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_role_user
-- ----------------------------
INSERT INTO `mqu_role_user` VALUES ('1', '2');

-- ----------------------------
-- Table structure for mqu_shipping
-- ----------------------------
DROP TABLE IF EXISTS `mqu_shipping`;
CREATE TABLE `mqu_shipping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `first_weight` int(11) unsigned NOT NULL DEFAULT '0',
  `second_weight` int(11) unsigned NOT NULL DEFAULT '0',
  `first_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `second_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '99',
  `is_insure` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure_fee` int(11) unsigned NOT NULL DEFAULT '0',
  `insure_low_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for mqu_slide
-- ----------------------------
DROP TABLE IF EXISTS `mqu_slide`;
CREATE TABLE `mqu_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `flashfile` varchar(150) NOT NULL DEFAULT '',
  `xmlfile` varchar(150) NOT NULL DEFAULT '',
  `tpl` varchar(30) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_slide
-- ----------------------------
INSERT INTO `mqu_slide` VALUES ('1', '首页幻灯片', '', '', '1', '1920', '850', '0', '1', '1');
INSERT INTO `mqu_slide` VALUES ('3', '首页新闻动态轮播', '', '', '2', '550', '350', '0', '1', '0');
INSERT INTO `mqu_slide` VALUES ('4', '内页banner', '', '', '3', '1920', '300', '1', '1', '0');

-- ----------------------------
-- Table structure for mqu_slide_data
-- ----------------------------
DROP TABLE IF EXISTS `mqu_slide_data`;
CREATE TABLE `mqu_slide_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `small` varchar(150) NOT NULL DEFAULT '',
  `pic` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_slide_data
-- ----------------------------
INSERT INTO `mqu_slide_data` VALUES ('7', '1', 'banner2', '/Uploads/201703/58c8ba666cb76.jpg', '/Uploads/201703/58c8ba666cb76.jpg', '#', '', '', '0', '1', '2');
INSERT INTO `mqu_slide_data` VALUES ('8', '1', 'banner1', '/Uploads/201703/58c8ba4d474a0.jpg', '/Uploads/201703/58c8ba4d474a0.jpg', '#', '', '', '0', '1', '2');
INSERT INTO `mqu_slide_data` VALUES ('14', '1', 'led', '', '/Uploads/201610/57fd8fcb48d56.jpg', '/', 'led', '', '0', '1', '1');
INSERT INTO `mqu_slide_data` VALUES ('15', '1', 'led1', '', '/Uploads/201610/57fd8fcb48d56.jpg', '', '', '', '0', '1', '1');
INSERT INTO `mqu_slide_data` VALUES ('16', '1', 'led32', '', '/Uploads/201610/57fd8fcb48d56.jpg', '', '', '', '0', '1', '1');
INSERT INTO `mqu_slide_data` VALUES ('17', '1', 'led3', '', '/Uploads/201610/57fd8fcb48d56.jpg', '', '', '', '0', '1', '1');
INSERT INTO `mqu_slide_data` VALUES ('18', '1', 'banner1', '/Uploads/201703/58c8ba666cb76.jpg', '/Uploads/201703/58c8ba666cb76.jpg', '', '', '', '0', '1', '3');
INSERT INTO `mqu_slide_data` VALUES ('19', '1', 'banner2', '/Uploads/201703/58c8ba4d474a0.jpg', '/Uploads/201703/58c8ba4d474a0.jpg', '', '', '', '0', '1', '3');
INSERT INTO `mqu_slide_data` VALUES ('26', '4', 'Banner1', '/Uploads/201703/58bd43ab22553.png', '/Uploads/201703/58bd43ab22553.png', '#', '', '', '0', '1', '2');
INSERT INTO `mqu_slide_data` VALUES ('23', '4', 'Banner', '/Uploads/201703/58bd43ab22553.png', '/Uploads/201703/58bd43a39797e.png', '', '', '', '0', '1', '3');
INSERT INTO `mqu_slide_data` VALUES ('24', '1', 'banner3', '/Uploads/201703/58c8ba87cfd4d.jpg', '/Uploads/201703/58c8ba87cfd4d.jpg', '', '', '', '0', '1', '3');
INSERT INTO `mqu_slide_data` VALUES ('25', '1', 'banner3', '/Uploads/201703/58c8ba87cfd4d.jpg', '/Uploads/201703/58c8ba87cfd4d.jpg', '#', '', '', '0', '1', '2');

-- ----------------------------
-- Table structure for mqu_solution
-- ----------------------------
DROP TABLE IF EXISTS `mqu_solution`;
CREATE TABLE `mqu_solution` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `en_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_solution
-- ----------------------------
INSERT INTO `mqu_solution` VALUES ('1', '40', '3', 'admin', '日常巡逻', '', '/Uploads/201703/58cb86261d731.jpg', '', '', '日常巡逻日常巡逻日常巡逻日常巡逻日常巡逻日常巡逻日常巡逻安保监控安保监控安保监控', '/for_police/show/1.html', '0', '11', '1', '0', '', '0', '0', '0', '1489733132', '1489733214', '3', 'Daily patrol');
INSERT INTO `mqu_solution` VALUES ('2', '40', '3', 'admin', '安保监控', '', '/Uploads/201703/58cb871c43cdf.jpg', 'Security monitoring', 'Security monitoring', 'Security monitoringSecurity monitoringSecurity monitoring', '/for_police/show/2.html', '0', '11', '1', '0', '', '0', '0', '0', '1489733241', '1489733408', '3', 'Security monitoring');
INSERT INTO `mqu_solution` VALUES ('3', '40', '3', 'admin', '反恐防暴', '', '/Uploads/201703/58cb870de1910.jpg', 'Anti terrorist riot', 'Anti terrorist riot', 'Anti terrorist riotAnti terrorist riotAnti terrorist riot', '/for_police/show/3.html', '0', '11', '1', '0', '', '0', '0', '1', '1489733275', '1489733394', '3', 'Anti terrorist riot');
INSERT INTO `mqu_solution` VALUES ('4', '40', '3', 'admin', '三维建模', '', '/Uploads/201703/58cb86cb7fc81.jpg', '3D modeling 3D modeling', '3D modeling 3D modeling ', '3D modeling&nbsp;3D modeling&nbsp;', '/for_police/show/4.html', '0', '11', '1', '0', '', '0', '0', '9', '1489733303', '1489733368', '3', '3D modeling');
INSERT INTO `mqu_solution` VALUES ('5', '41', '3', 'admin', '三维建模', '', '/Uploads/201703/58cb86cb7fc81.jpg', '3D modeling 3D modeling', '3D modeling 3D modeling ', '3D modeling&nbsp;3D modeling&nbsp;', '/for_fire/show/5.html', '0', '11', '1', '0', '', '0', '0', '13', '1489733303', '1489733457', '3', '3D modeling');
INSERT INTO `mqu_solution` VALUES ('6', '41', '3', 'admin', '反恐防暴', '', '/Uploads/201703/58cb870de1910.jpg', 'Anti terrorist riot', 'Anti terrorist riot', 'Anti terrorist riotAnti terrorist riotAnti terrorist riot', '/for_fire/show/6.html', '0', '11', '1', '0', '', '0', '0', '0', '1489733275', '1489733451', '3', 'Anti terrorist riot');
INSERT INTO `mqu_solution` VALUES ('7', '41', '3', 'admin', '安保监控', '', '/Uploads/201703/58cb871c43cdf.jpg', 'Security monitoring', 'Security monitoring', 'Security monitoringSecurity monitoringSecurity monitoring', '/for_fire/show/7.html', '0', '11', '1', '0', '', '0', '0', '0', '1489733241', '1489733444', '3', 'Security monitoring');
INSERT INTO `mqu_solution` VALUES ('8', '41', '3', 'admin', '日常巡逻', '', '/Uploads/201703/58cb86261d731.jpg', '', '', '日常巡逻日常巡逻日常巡逻日常巡逻日常巡逻日常巡逻日常巡逻安保监控安保监控安保监控', '/for_fire/show/8.html', '0', '11', '1', '0', '', '0', '0', '0', '1489733132', '1489733438', '3', 'Daily patrol');

-- ----------------------------
-- Table structure for mqu_tags
-- ----------------------------
DROP TABLE IF EXISTS `mqu_tags`;
CREATE TABLE `mqu_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL DEFAULT '',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` varchar(30) NOT NULL DEFAULT '',
  `num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`moduleid`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_tags
-- ----------------------------
INSERT INTO `mqu_tags` VALUES ('8', 'paper bag handles', 'paperbaghandles', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('2', 'Iron wire paper rope', 'ronwirepaperrope', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('3', '213123', '213123', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('18', 'News Headline text test News Headline text test News Headline text test', 'ewseadlinetexttestewseadlinetexttestewseadlinetexttest', '2', 'Article', '1', '2');
INSERT INTO `mqu_tags` VALUES ('5', 'Export Volume of Cable Products Will Increase Continuously!', 'xportolumeofableroductsillncreaseontinuously', '2', 'Article', '1', '2');
INSERT INTO `mqu_tags` VALUES ('13', 'KEFID 150-200tph dolomite production line in Riyadh Saudi Arabia', '150200tphdolomiteproductionlineiniyadhaudirabia', '11', 'Case', '1', '2');
INSERT INTO `mqu_tags` VALUES ('9', 'Pipes And Tubes', 'ipesndubes', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('10', 'multi-strands paper rope', 'multistrandspaperrope', '3', 'Product', '2', '2');
INSERT INTO `mqu_tags` VALUES ('17', 'Supermarket in Germany', 'upermarketinermany', '4', 'Picture', '1', '2');
INSERT INTO `mqu_tags` VALUES ('19', 'Obals RS-003 adjustable led downlight Installation Tutorial', 'bals003adjustableleddownlightnstallationutorial', '12', 'Video', '1', '2');
INSERT INTO `mqu_tags` VALUES ('14', 'production line in Riyadh Saudi Arabia', 'productionlineiniyadhaudirabia', '4', 'Picture', '1', '2');
INSERT INTO `mqu_tags` VALUES ('20', '2015 ZOHNSON Catalogues', '2015atalogues', '5', 'Download', '1', '2');
INSERT INTO `mqu_tags` VALUES ('23', '动态新闻', 'dongtaixinwen', '2', 'Article', '1', '1');
INSERT INTO `mqu_tags` VALUES ('22', '公司新闻', 'gongsixinwen', '2', 'Article', '1', '1');
INSERT INTO `mqu_tags` VALUES ('24', '在德国超市', 'zaideguochaoshi', '4', 'Picture', '1', '1');
INSERT INTO `mqu_tags` VALUES ('25', '2015 - zohnson -目录', '2015zohnsonmulu', '5', 'Download', '1', '1');
INSERT INTO `mqu_tags` VALUES ('26', 'obal rs - 003可调led筒灯安装教程', 'obalrs003kediaoledtongdenganzhuangjiaocheng', '12', 'Video', '1', '1');
INSERT INTO `mqu_tags` VALUES ('27', 'LED Street light', 'treetlight', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('28', 'LED Panel downlight', 'aneldownlight', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('29', 'LED Flood light', 'loodlight', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('40', 'FCL Sea Freight', 'eareight', '4', 'Picture', '1', '2');
INSERT INTO `mqu_tags` VALUES ('34', 'Meet Egoal at Breakbulk Americas 2016', 'eetgoalatreakbulkmericas2016', '2', 'Article', '1', '2');
INSERT INTO `mqu_tags` VALUES ('43', '中国', 'zhongguo', '16', 'Quanqiu', '1', '2');
INSERT INTO `mqu_tags` VALUES ('36', 'Purchasing &amp; QC', 'urchasingamp', '4', 'Picture', '1', '2');
INSERT INTO `mqu_tags` VALUES ('42', 'Exchange Rate', 'xchangeate', '4', 'Picture', '1', '2');
INSERT INTO `mqu_tags` VALUES ('44', 'freight query', 'freightquery', '4', 'Picture', '1', '2');
INSERT INTO `mqu_tags` VALUES ('46', 'Cangshan D Series 59120 German Steel Forged Chefs Knife', 'angshaneries59120ermanteelorgedhefsnife', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('47', ' 8-Inch', '8nch', '3', 'Product', '1', '2');
INSERT INTO `mqu_tags` VALUES ('48', '3D modeling 3D modeling', '3modeling3modeling', '18', 'Solution', '1', '3');
INSERT INTO `mqu_tags` VALUES ('49', 'Anti terrorist riot', 'ntiterroristriot', '18', 'Solution', '1', '3');
INSERT INTO `mqu_tags` VALUES ('50', 'Security monitoring', 'ecuritymonitoring', '18', 'Solution', '1', '3');
INSERT INTO `mqu_tags` VALUES ('51', '无人驾驶飞机简称“无人机”，英文缩写为“UAV”', 'wurenjiashifeijijianchengwurenjiyingwensuoxiewei', '2', 'Article', '1', '3');
INSERT INTO `mqu_tags` VALUES ('52', '黑龙江省刑事技术总队视频侦查技术分析', 'heilongjiangshengxingshijishuzongduishipinzhenchajishufenxi', '17', 'Project', '1', '3');

-- ----------------------------
-- Table structure for mqu_tags_data
-- ----------------------------
DROP TABLE IF EXISTS `mqu_tags_data`;
CREATE TABLE `mqu_tags_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`tagid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_tags_data
-- ----------------------------
INSERT INTO `mqu_tags_data` VALUES ('1', '52', '0');
INSERT INTO `mqu_tags_data` VALUES ('2', '50', '0');
INSERT INTO `mqu_tags_data` VALUES ('22', '3', '0');
INSERT INTO `mqu_tags_data` VALUES ('18', '8', '0');
INSERT INTO `mqu_tags_data` VALUES ('25', '9', '0');
INSERT INTO `mqu_tags_data` VALUES ('26', '10', '0');
INSERT INTO `mqu_tags_data` VALUES ('4', '48', '0');
INSERT INTO `mqu_tags_data` VALUES ('13', '10', '0');
INSERT INTO `mqu_tags_data` VALUES ('7', '15', '0');
INSERT INTO `mqu_tags_data` VALUES ('28', '16', '0');
INSERT INTO `mqu_tags_data` VALUES ('9', '18', '0');
INSERT INTO `mqu_tags_data` VALUES ('10', '39', '0');
INSERT INTO `mqu_tags_data` VALUES ('11', '36', '0');
INSERT INTO `mqu_tags_data` VALUES ('30', '16', '0');
INSERT INTO `mqu_tags_data` VALUES ('31', '16', '0');
INSERT INTO `mqu_tags_data` VALUES ('3', '49', '0');
INSERT INTO `mqu_tags_data` VALUES ('35', '27', '0');
INSERT INTO `mqu_tags_data` VALUES ('34', '28', '0');
INSERT INTO `mqu_tags_data` VALUES ('29', '51', '0');
INSERT INTO `mqu_tags_data` VALUES ('14', '44', '0');
INSERT INTO `mqu_tags_data` VALUES ('15', '40', '0');
INSERT INTO `mqu_tags_data` VALUES ('16', '41', '0');
INSERT INTO `mqu_tags_data` VALUES ('17', '42', '0');
INSERT INTO `mqu_tags_data` VALUES ('37', '45', '0');
INSERT INTO `mqu_tags_data` VALUES ('38', '46', '0');
INSERT INTO `mqu_tags_data` VALUES ('38', '47', '0');

-- ----------------------------
-- Table structure for mqu_type
-- ----------------------------
DROP TABLE IF EXISTS `mqu_type`;
CREATE TABLE `mqu_type` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_type
-- ----------------------------
INSERT INTO `mqu_type` VALUES ('1', '友情链接', '0', '友情链接分类', '1', '0', '1');
INSERT INTO `mqu_type` VALUES ('3', '合作伙伴', '1', '合作伙伴', '1', '1', '1');
INSERT INTO `mqu_type` VALUES ('2', '友情链接', '1', '友情链接', '1', '0', '1');
INSERT INTO `mqu_type` VALUES ('4', '反馈类别', '0', '信息反馈类别', '1', '0', '4');
INSERT INTO `mqu_type` VALUES ('5', '产品购买', '4', '产品购买', '1', '0', '4');
INSERT INTO `mqu_type` VALUES ('6', '商务合作', '4', '商务合作', '1', '0', '4');
INSERT INTO `mqu_type` VALUES ('7', '其他反馈', '4', '其他反馈', '1', '0', '4');
INSERT INTO `mqu_type` VALUES ('8', '办事处', '0', '办事处', '1', '0', '8');

-- ----------------------------
-- Table structure for mqu_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `mqu_urlrule`;
CREATE TABLE `mqu_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showurlrule` varchar(255) NOT NULL DEFAULT '',
  `showexample` varchar(255) NOT NULL DEFAULT '',
  `listurlrule` varchar(255) NOT NULL DEFAULT '',
  `listexample` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_urlrule
-- ----------------------------
INSERT INTO `mqu_urlrule` VALUES ('1', '0', '{$catdir}/show/{$id}.html|{$catdir}/show/{$id}_{$page}.html', 'news/show/1.html|news/show/1_1.html', '{$catdir}/|{$catdir}/{$page}.html', 'news/|news/1.html', '0');
INSERT INTO `mqu_urlrule` VALUES ('2', '0', 'show-{$catid}-{$id}.html|show-{$catid}-{$id}-{$page}.html', 'show-1-1.html|show-1-1-1.html', 'list-{$catid}.html|list-{$catid}-{$page}.html', 'list-1.html|list-1-1.html', '0');
INSERT INTO `mqu_urlrule` VALUES ('3', '0', '{$module}/show/{$id}.html|{$module}/show/{$id}-{$page}.html', 'Article/show/1.html|Article/show/1-1.html', '{$module}/list/{$catid}.html|{$module}/list/{$catid}-{$page}.html', 'Article/list/1.html|Article/list/1-1.html', '0');
INSERT INTO `mqu_urlrule` VALUES ('4', '1', '{$parentdir}{$catdir}/show_{$id}.html|{$parentdir}{$catdir}/show_{$id}_{$page}.html', 'news/show_1.html|news/show_1_1.html', '{$parentdir}{$catdir}/|{$parentdir}{$catdir}/{$page}.html', 'news/|news/1.html', '0');

-- ----------------------------
-- Table structure for mqu_user
-- ----------------------------
DROP TABLE IF EXISTS `mqu_user`;
CREATE TABLE `mqu_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(50) NOT NULL DEFAULT '',
  `answer` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `web_url` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `last_logintime` int(11) unsigned NOT NULL DEFAULT '0',
  `reg_ip` char(15) NOT NULL DEFAULT '',
  `last_ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_user
-- ----------------------------
INSERT INTO `mqu_user` VALUES ('2', '1', 'admin1', '028f7d148d43fc78c45a337ff78abfba7dfb90ee', '617868016@qq.com', '', '', '', '1', '', '', '', '', '', '4', '1481696281', '0', '1481878002', '127.0.0.1', '127.0.0.1', '1', '0.00', '0', '');
INSERT INTO `mqu_user` VALUES ('3', '1', 'admin', '75b3817a97962e6a952d9624a2429e6971ec5831', '1@qq.com', '', '', '', '1', '', '', '', '', '', '32', '1481696281', '0', '1490766508', '127.0.0.1', '127.0.0.1', '1', '0.00', '0', '');

-- ----------------------------
-- Table structure for mqu_user_address
-- ----------------------------
DROP TABLE IF EXISTS `mqu_user_address`;
CREATE TABLE `mqu_user_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mqu_user_address
-- ----------------------------
