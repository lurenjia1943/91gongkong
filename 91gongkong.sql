/*
 Navicat Premium Data Transfer

 Source Server         : 47.106.224.12_3306
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : 47.106.224.12:3306
 Source Schema         : 91gongkong

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 19/12/2018 20:16:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `poster` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editorValue` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (16, '20181202/de66e51cf01dd32ddbb440c1b3aee383.jpg', '习近平', '<p>888888888888888888888888888</p>', '2018-12-02');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `poster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `editorValue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '20181215/2a028644f26f2019013c17326aaa61b3.png', '西门子全科班推荐西门子全科班', '<table width=\"750\" class=\"table table-bordered\"><colgroup><col width=\"101\"/><col width=\"213\"/><col width=\"750\"/><col width=\"186\"/></colgroup><tbody><tr class=\"firstRow\"><td class=\"et2\" colspan=\"4\" rowspan=\"2\" width=\"699\" style=\"font-size: 28pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">S7-200&nbsp;SMART&nbsp;11月线下课表</span></td></tr><tr></tr><tr><td class=\"et3\" width=\"60\" style=\"font-size: 20pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">序号</span></td><td class=\"et3\" width=\"127\" style=\"font-size: 20pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">日期</span></td><td class=\"et3\" width=\"450\" style=\"font-size: 20pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">主要内容</span></td><td class=\"et3\" width=\"111\" style=\"font-size: 20pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">1</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/11/22</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">硬件基础、PLC基础、软件操作、位逻辑指令</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期四</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">2</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/11/23</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">定时器、比较</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期五</span></td></tr><tr><td class=\"et9\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et10\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et11\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et12\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">3</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/11/26</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">计数器、数学运算指令、传送指令</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期一</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">4</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/11/27</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">转换指令、时钟指令、移位指令</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期二</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">5</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/11/28</span></td><td class=\"et13\" width=\"450\" style=\"color: rgb(255, 0, 0); font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">FOR循环、指针（难）</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期三</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">6</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/11/29</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">子程序</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期四</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">7</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/11/30</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">子程序</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期五</span></td></tr><tr><td class=\"et9\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et10\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et11\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et12\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">8</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/3</span></td><td class=\"et13\" width=\"450\" style=\"color: rgb(255, 0, 0); font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">中断（难）</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期一</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">9</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/4</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">触摸屏</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期二</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">10</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/5</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">触摸屏</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期三</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">11</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/6</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">触摸屏</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期四</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">12</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/7</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">模拟量\\PID</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期五</span></td></tr><tr><td class=\"et9\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et10\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et11\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et12\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">13</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/10</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">通信基础、以太网通信、Modbus&nbsp;RTU通信</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期一</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">14</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/11</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">变频器面板控制、模拟量调速、多段速控制、Modbus通信控制</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期二</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">15</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/12</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">200&nbsp;SMART&nbsp;Modbus通信控制两台V20变频器、高速计数器</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期三</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">16</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/13</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">轴的组态、轴的控制指令、面板控制轴、步进基础</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期四</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">17</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/14</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">案例：步进电机自动正反转&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>案例：单轴多点控制</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期五</span></td></tr><tr><td class=\"et9\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et10\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et11\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td><td class=\"et12\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0); background: rgb(217, 217, 217);\"><br/></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">18</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/17</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">松下A6伺服简介、伺服位置控制接线和参数设置<br/>案例：画方</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期一</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">19</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/18</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">案例：XY轴多点定位<br/>伺服速度控制模式和力矩控制模式讲解</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期二</span></td></tr><tr><td class=\"et5\" width=\"60\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">20</span></td><td class=\"et6\" width=\"127\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">208/12/19</span></td><td class=\"et7\" width=\"450\" style=\"font-size: 16pt; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">结课</span></td><td class=\"et8\" width=\"111\" style=\"font-size: 16pt; text-align: center; vertical-align: middle; white-space: normal; border-width: 0.5pt; border-color: rgb(0, 0, 0);\"><span style=\"font-family: 楷体, 楷体_GB2312, SimKai; font-size: 20px;\">星期三</span></td></tr></tbody></table><p><br/></p>', '2018-08-08');
INSERT INTO `course` VALUES (2, '20181215/2a028644f26f2019013c17326aaa61b3.png', '西门子200smart', '<table><tbody><tr class=\"firstRow\"><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr></tbody></table><p><br/></p>', '2018-08-08');
INSERT INTO `course` VALUES (3, '20181215/2a028644f26f2019013c17326aaa61b3.png', '西门子全科班', '<p><strong><span style=\"font-family:宋体\">讲师介绍：</span></strong></p><p>91<span style=\"font-family:宋体\">工控培训讲师均具有多年项目背景及培训经验，对教学内容烂熟于心。</span></p><p><strong><span style=\"font-family:宋体\">高老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px;text-indent:0\"><span style=\"font-family: 宋体\">多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。对于西门子S7-200SMART有的专业的教学经验，授课调理清晰严谨。课堂氛围生动幽默，很好的把实践和理论相结合教学。是我们91工控培训极具代表性的讲师。</span></p><p style=\"text-align:center\"><strong>&nbsp;</strong></p><p><strong><span style=\"font-family:宋体\">董老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px;text-indent:0\"><span style=\"font-family: 宋体\">毕业后一直从事大型自动化项目工作，精通中大型自动化控制系统，有着独立负责大型项目系统设计和调试经验，熟悉西门子各个系列的PLC程序编程、调试、通讯组态。是91工控培训西门子S7-300/400 WINCC博途1200的专家讲师，在专业培训方面有着丰富的实战经验。</span></p><p><strong><span style=\"font-family:宋体\">适合对象：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">初学者，没有任何基础，从零开始学。</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">大学生：没有工作经验，学校学过皮毛，大学时光充实自己。</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">毕业生：应聘碰壁，技术不高，想系统学习，蜕变大神。</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">工作者：电工，设备维护，电气自动化行业从业者。</span></p><p>&nbsp;</p><p><strong><span style=\"font-family:宋体\">课程特点：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">教学案例精心挑选，贴合实际应用。每个知识点课后布置随堂练习作业，人手一套设备强化训练，迅速掌握知识点，</span>30%<span style=\"font-family:宋体\">理论</span>+70%<span style=\"font-family:宋体\">实操。</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">通过各种案例培养学员的逻辑思维能力和解决问题的动手能力，快速掌握</span>PLC<span style=\"font-family:宋体\">编程思维。</span></p><p><strong><span style=\"font-family:宋体\">学习方式：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings;color:red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><strong><span style=\"font-family:宋体;color:red\">一人一机实操培训，边学边练。配套教材上面有案例和练习，并且提供全套视频回放复习和预习。</span></strong></p><p><strong><span style=\"font-family:宋体\">学习时间：</span> </strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">《西门子</span>S7-200SMART<span style=\"font-family:宋体\">综合班》</span>+<span style=\"font-family:宋体\">《威纶通触摸屏组态班》</span>==30<span style=\"font-family:宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">《西门子</span>S7-300<span style=\"font-family:宋体\">专家班》</span>+<span style=\"font-family:宋体\">《</span>WINCC<span style=\"font-family:宋体\">上位机组态专家班》</span>==30<span style=\"font-family:宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">《博途</span>S7-1200<span style=\"font-family:宋体\">精英班》</span>==15<span style=\"font-family:宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">共</span>75<span style=\"font-family:宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings;color:red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><strong><span style=\"font-family:宋体;color:red\">没有时间限制，学会，学熟练为止。</span></strong></p><p><strong><span style=\"font-family:宋体\">学费：</span></strong>7500<span style=\"font-family:宋体\">元（不含税）</span> <span style=\"font-family: 宋体\">提前预约赠送价值</span>4500<span style=\"font-family:宋体\">元博途</span>S7-1200<span style=\"font-family:宋体\">精英班</span></p><p><span style=\"font-family:宋体\">无其他任何费用。赠送内部教材，软件及各种资料还有全套内部教学视频。</span></p><p><strong><span style=\"font-family:宋体\">上课时间：</span></strong></p><p><span style=\"font-family:宋体\">周一到周五</span> &nbsp;<span style=\"font-family:宋体\">早上：</span>9:00-12:00&nbsp; <span style=\"font-family:宋体\">下午：</span>14:00-17:30 &nbsp;<span style=\"font-family:宋体\">晚自习：</span>19:00-21:00</p><p><strong><span style=\"font-family:宋体\">服务保障：</span></strong></p><p><span style=\"font-family:宋体\">三天不满意可申请退学费，报名所学课程一期没学会，可以免费到学会为止。</span></p><p><strong><span style=\"font-family:宋体\">就业前景：</span></strong></p><p><span style=\"font-family:宋体\">毕业学员月薪资均在</span>6K<span style=\"font-family:宋体\">起步，转正均</span>8K<span style=\"font-family:宋体\">起。</span></p><p><span style=\"font-family:宋体\">从事岗位：电气工程师，</span>PLC<span style=\"font-family:宋体\">程序开发</span>/<span style=\"font-family:宋体\">设计，售后服务。</span></p><p>&nbsp;</p><p><span style=\"font-family:宋体\">教材：</span></p><p></p><p><br/></p><p>200SMART<span style=\"font-family: 宋体\">，</span>1200<span style=\"font-family:宋体\">三轴实验设备：</span></p><p><br/></p><p>200SMART<span style=\"font-family: 宋体\">实验设备：</span>PLC<span style=\"font-family:宋体\">，模块，触摸屏，变频器，伺服，步进。</span></p><p></p><p>&nbsp;</p><p>&nbsp;</p><p>1200<span style=\"font-family:宋体\">实验设备：</span>PLC<span style=\"font-family:宋体\">，模拟量模块，变频器，伺服步进。</span></p><p></p><p>300<span style=\"font-family:宋体\">实验设备：</span></p><p>315-2DP CPU<span style=\"font-family: 宋体\">，数字量模块，模拟量模块，通信模块，第三方模块。</span></p><p></p>', '2018-08-08');

-- ----------------------------
-- Table structure for index1
-- ----------------------------
DROP TABLE IF EXISTS `index1`;
CREATE TABLE `index1`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index1
-- ----------------------------
INSERT INTO `index1` VALUES (1, '2019年3月5日 西门子全科班 名额已不多 火热报名中...');

-- ----------------------------
-- Table structure for index2
-- ----------------------------
DROP TABLE IF EXISTS `index2`;
CREATE TABLE `index2`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logopath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index2
-- ----------------------------
INSERT INTO `index2` VALUES (1, '20181120/99f4feee0a35c389da5f6d3e4300c24d.jpg');

-- ----------------------------
-- Table structure for index3
-- ----------------------------
DROP TABLE IF EXISTS `index3`;
CREATE TABLE `index3`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banner2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banner3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banner4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index3
-- ----------------------------
INSERT INTO `index3` VALUES (1, '20181126/84306797fe1b987e334a88bf4e66eeb2.jpg', '20181126/1e1f6858159259b70c9c30ae530f7a1c.jpg', '20181126/9b2e337ee4adce8636669dcda2912464.jpg', '20181126/4d277a426b0325eb5e179d3df619e81b.jpg');

-- ----------------------------
-- Table structure for index4
-- ----------------------------
DROP TABLE IF EXISTS `index4`;
CREATE TABLE `index4`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classname_zh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classname_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index4
-- ----------------------------
INSERT INTO `index4` VALUES (1, '西门子全科班---强烈推荐！！！', 'SIEMENS whole class', '<p>初学者，没有任何基础</p><p>大学生：没有工作经验，应聘碰壁</p><p>技术不高，想系统学习蜕变大神。</p>', '2018-11-20');
INSERT INTO `index4` VALUES (2, '西门子S7-200SMART综合班', 'SIEMENS S7-200SMART comprehensive class', '<p>初学者，没有任何基础</p><p>大学生：没有工作经验，应聘碰壁</p><p>技术不高，想系统学习蜕变大神。</p>', '2018-11-20');
INSERT INTO `index4` VALUES (3, '西门子S7-300 PLC专家班', 'SIEMENS S7-300 PLC programming expert class', '<p>初学者，没有任何基础</p><p>大学生：没有工作经验，应聘碰壁</p><p>技术不高，想系统学习蜕变大神。</p>', '2018-11-20');
INSERT INTO `index4` VALUES (4, '博途TIA S7-1200 PLC精英班', 'TIA S7-1200 PLC programming elite class', '<p>初学者，没有任何基础</p><p>大学生：没有工作经验，应聘碰壁</p><p>技术不高，想系统学习蜕变大神。</p>', '2018-11-20');

-- ----------------------------
-- Table structure for index5
-- ----------------------------
DROP TABLE IF EXISTS `index5`;
CREATE TABLE `index5`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index5
-- ----------------------------
INSERT INTO `index5` VALUES (1, '20181215/90d3e13c13a60bf6d1cc1f24f99f4145.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。');
INSERT INTO `index5` VALUES (2, '20181215/81da1a09139e0d3787bdcf2dd4c4e5a8.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。');
INSERT INTO `index5` VALUES (3, '20181215/b195dd9a9654f363631eaa5e7467bffc.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。');
INSERT INTO `index5` VALUES (4, '20181215/302f90168d08f326ccce4c177b2e16d5.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。');
INSERT INTO `index5` VALUES (5, '20181215/04c033405cfb0465265d6daab061e886.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。');

-- ----------------------------
-- Table structure for index6
-- ----------------------------
DROP TABLE IF EXISTS `index6`;
CREATE TABLE `index6`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wages` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 714 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index6
-- ----------------------------
INSERT INTO `index6` VALUES (1, '张三1', '博士1', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (2, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (3, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (4, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (5, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (10, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (7, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (11, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (712, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (8, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (9, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (71, '张三', '博士', '清洁工', '清洁公司', '3000');
INSERT INTO `index6` VALUES (713, '吴攀', '博士后', '清洁工', '清洁工总公司', '15000');

-- ----------------------------
-- Table structure for index61
-- ----------------------------
DROP TABLE IF EXISTS `index61`;
CREATE TABLE `index61`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `beizhu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index61
-- ----------------------------
INSERT INTO `index61` VALUES (1, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (2, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (4, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (5, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (6, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (7, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (8, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (9, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (10, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (11, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL);
INSERT INTO `index61` VALUES (12, '20181219/6a15c0a1ad1c7ca9bca7eb70d4ee6de1.jpg', '实验', '2018-12-19', NULL);

-- ----------------------------
-- Table structure for index7
-- ----------------------------
DROP TABLE IF EXISTS `index7`;
CREATE TABLE `index7`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index7
-- ----------------------------
INSERT INTO `index7` VALUES (1, '91工控在北上广深太原西安签署80多家互联网合作企业,将定期向91工控提供用人需求并合作技术交流。91工控也定时到合作单位进行市场调研强化课程与企业需求的结合', '20181124/da9c2625dc490ec3dbaf0b8c60933366.png');

-- ----------------------------
-- Table structure for index8
-- ----------------------------
DROP TABLE IF EXISTS `index8`;
CREATE TABLE `index8`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index8
-- ----------------------------
INSERT INTO `index8` VALUES (1, '湖北省武汉市洪山区光谷大道国际企业中心', '鄂ICP备17021960号-1', '20181129/945cb99cc328758450a8e7b595882548.jpg');

-- ----------------------------
-- Table structure for webinfo
-- ----------------------------
DROP TABLE IF EXISTS `webinfo`;
CREATE TABLE `webinfo`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webkeywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webinfo
-- ----------------------------
INSERT INTO `webinfo` VALUES (1, '91工控网', '91,81,71', '8888888888');

SET FOREIGN_KEY_CHECKS = 1;
