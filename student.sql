/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.10
Source Server Version : 50716
Source Host           : 192.168.10.10:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-03-15 18:18:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', 'fsf');
INSERT INTO `classes` VALUES ('2', '示范点');
INSERT INTO `classes` VALUES ('3', '32');
INSERT INTO `classes` VALUES ('4', '犯得上');
INSERT INTO `classes` VALUES ('5', '萨达s跟');
INSERT INTO `classes` VALUES ('7', '信工142');
INSERT INTO `classes` VALUES ('8', '信工143');
INSERT INTO `classes` VALUES ('9', '三大殿');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coursename` varchar(255) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'sad', '1');
INSERT INTO `course` VALUES ('2', 'fgh', '8');
INSERT INTO `course` VALUES ('3', '撒旦范甘迪', '1');
INSERT INTO `course` VALUES ('4', '三大', '12');
INSERT INTO `course` VALUES ('5', '23', '3');
INSERT INTO `course` VALUES ('6', '为', '3');
INSERT INTO `course` VALUES ('7', 'AS阿萨', '2');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cid` int(10) unsigned zerofill DEFAULT NULL,
  `sid` int(10) unsigned zerofill DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `statues` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'ds', '0000000001', '0010141456', '2', '123456', '0000000000');
INSERT INTO `student` VALUES ('2', '规范化风格', '0000000046', '0010141455', 'fhf大概豆腐干', '123456', '0010141455');
INSERT INTO `student` VALUES ('4', '大幅度', '0000000005', '0000001024', '啊实打实的', '123456', '0000001024');
INSERT INTO `student` VALUES ('8', '大幅实打实的', '0000000512', '0000000132', '啊实我去饿', '123456', '0000000000');
INSERT INTO `student` VALUES ('12', '4546', '0000000078', '0000000455', 'dad阿德撒旦', 'qaz', '0000000045');
INSERT INTO `student` VALUES ('13', '4fhgfhg6', '0000000078', '0000000454', 'dad阿德撒旦', 'qaz', '0000000000');
INSERT INTO `student` VALUES ('14', '4fhgfhg6', '0000000078', '0000000452', 'dad阿德撒旦', 'qaz2', '0000000045');
INSERT INTO `student` VALUES ('15', '4fhgfhg6', '0000000078', '0000000045', 'dad阿德撒旦', 'qaz1', '0000000000');
INSERT INTO `student` VALUES ('16', '驱蚊器', '0000000045', '0023123123', '请问我去饿', '123', '0000000000');
INSERT INTO `student` VALUES ('17', '额企鹅', '0000000213', '0003123123', '大苏打阿斯顿', '123131321', '0000000000');

-- ----------------------------
-- Table structure for StudentSelectCourse
-- ----------------------------
DROP TABLE IF EXISTS `StudentSelectCourse`;
CREATE TABLE `StudentSelectCourse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of StudentSelectCourse
-- ----------------------------
INSERT INTO `StudentSelectCourse` VALUES ('1', '1', '1', '21');
INSERT INTO `StudentSelectCourse` VALUES ('2', '1', '2', '1');
INSERT INTO `StudentSelectCourse` VALUES ('3', '2', '3', '14');
INSERT INTO `StudentSelectCourse` VALUES ('4', '1', '12', '1');
INSERT INTO `StudentSelectCourse` VALUES ('5', '121014444', '5', '999');
INSERT INTO `StudentSelectCourse` VALUES ('6', '1', '6', '1');
INSERT INTO `StudentSelectCourse` VALUES ('7', '13', '6', '13');
INSERT INTO `StudentSelectCourse` VALUES ('8', '2', '1', '1');
INSERT INTO `StudentSelectCourse` VALUES ('9', '10141456', '5', '801');
INSERT INTO `StudentSelectCourse` VALUES ('10', '10141', '5', '80');
INSERT INTO `StudentSelectCourse` VALUES ('11', '10141456', '5', '80');
INSERT INTO `StudentSelectCourse` VALUES ('12', '10141456', '5', '80');
INSERT INTO `StudentSelectCourse` VALUES ('13', '10141456', '5', '80');
INSERT INTO `StudentSelectCourse` VALUES ('14', '10141456', '5', '80');
INSERT INTO `StudentSelectCourse` VALUES ('15', '3123123', '21', '32');
