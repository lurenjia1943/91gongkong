-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2019-01-06 21:41:10
-- 服务器版本： 5.5.60-log
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `91gongkong`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(10) UNSIGNED NOT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `editorValue` text,
  `time` varchar(255) DEFAULT NULL,
  `text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `poster`, `title`, `editorValue`, `time`, `text`) VALUES
(21, '20190104/deda4fcd79b7842507198a03ea8e4d71.png', '西门子S7-200SMART PLC编程案例要求及程序示例', '<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">位逻辑案例例题</span></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">1．一台设备的启保停控制程序：启动按钮I0.0，停止按钮I0.1，输出线圈Q0.0。</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/93860bf963fe4166b3258297834fe378\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">2．单按钮启停控制： I0.0按钮单独来控制Q0.0的启动和停止，按下I0.0按钮接通Q0.0并保持；再次按下I0.0断开Q0.0。</span></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">1）使用常开、常闭、线圈等做单按钮启停</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/d6876d3b886f4983ab168f89d1c150f7\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">2）利用置位优先触发器做单按钮启停</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/f4fac8f75b21412a9ea80b24d47636e7\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">3）利用复位优先触发器做单按钮启停</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/fafd785b87e048fea145e846aebe1dd6\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">3.两地控制同一个设备的启停：两地均有启动按钮和停止按钮，均可以单独启动和停止设备。A地点的启动按钮I0.0，停止按钮I0.1；B地点的启动按钮I0.2，停止按钮I0.3，输出线圈Q0.0。</span></p><p><img src=\"http://p3.pstatp.com/large/pgc-image/6a875ad23bdc47039d4daadcac07dc28\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">4.两地控制同一个设备的启停：两地均有启动按钮和停止按钮，两地同时按下启动按钮，设备才能启动，两地任意一方按下停止按钮停止设备。 A地点的启动按钮I0.0，停止按钮I0.1；B地点的启动按钮I0.2，停止按钮I0.3，输出线圈Q0.0。</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/112dbb7391234525bdb6c825fbaec506\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">5.四台电机顺序启动逆序停止:每按一次启动按钮启动一台电机，每按一次停止按钮，停掉最后启动的那台电机，按下紧急停止按钮，停止所有的电机，I0.0为启动按钮，I0.1为停止按钮，I0.2为紧急停止按钮Q0.0----Q0.3为电机控制的输出点。</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/9e84b5d95b564ac4a12f33b6b60558f3\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/119dd21e37ee44db916dc01353cc630c\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p><img src=\"http://p9.pstatp.com/large/pgc-image/0237f13ae96146f2a9fa568fc06e2e6f\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">定时器例题</span></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">1. 一台电机，有一个启动按钮I0.0，一个停止按钮I0.1。要求按下启动按钮时电机运行，按下停止按钮后延时4S电机停止。</span></p><p><img src=\"http://p3.pstatp.com/large/pgc-image/08158160ff7248939137af114d04fafc\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">2. 一台电机，有一个启动按钮I0.0，一个停止按钮I0.1。要求按下启动按钮后延时3S电机运行，按下停止按钮后延时2S电机停止。</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/d3af0466d8cc4851896942fb2e62619f\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p><img src=\"http://p3.pstatp.com/large/pgc-image/d82827acb93b49578ca14f03d2a056f5\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">3. 使用定时器控制Q0.0和Q0.1。当按下启动按钮时Q0.0亮，1秒后Q0.0灭，同时Q0.1亮，再过2秒后Q0.1灭。以此循环，直到按下停止按钮，Q0.0和Q0.1全灭。</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/921fb22b72b4414cb28d3f6eddc1b229\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p><img src=\"http://p3.pstatp.com/large/pgc-image/75ebe0b89db746babd9ef5ca32a460cc\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">计数器例题</span></p><p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">1. 一个电机，按下启动电机运行，按下停止第三次的时候延时4S电机停车。</span></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/2e8bed3232a04bb0928bcec39774403b\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p><img src=\"http://p3.pstatp.com/large/pgc-image/01460631155b434e904acf28484c6192\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p class=\"ql-align-justify\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-weight: 700;\">2. 有一台机床运行500小时后需更换某个易损零件或换机油等，这时维护提醒指示灯点亮，我们需要先停止电机然后进行维护，完成后按下复位按钮，维护提醒指示灯灭 ，维护时间重新开始计时。</span></p><p><img src=\"http://p3.pstatp.com/large/pgc-image/13c0aa4d7a53498fb1064c053005a8fe\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/40486df1e37e48f3a0097609a752a568\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p class=\"pgc-img-caption\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center; font-size: 12px; color: rgb(119, 119, 119); line-height: 16px;\"><br/></p><p><img src=\"http://p1.pstatp.com/large/pgc-image/a7c0878b3cdb4be88f7790c720d181ec\" alt=\"PLC编程案例要求和程序示例「基础扫盲」\"/></p><p><br/></p>', '2019-01-04', NULL),
(20, '20181229/703910d343b418a4972df6a524a2d913.png', '这是学员的一个项目', '<p>这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目这是学员的一个项目</p>', '2018-12-29', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `editorValue` text,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`id`, `poster`, `title`, `editorValue`, `time`) VALUES
(1, '20190105/f6cc8bbb4c38a7cb6b7f9504c06ea134.jpg', '西门子S7系列精英班', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-size: 24px;\">全科班包括：西门子S7-200SMART 综合班、西门子S7-300PLC综合班、变频器、伺服步进、触摸屏，WINCC上位机</span></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51); font-size: 24px;\">师资团队</span>：都有着多年工控行业从业经验，工程和教学都非常有经验，每节课有大量专门设计的应用案例，学员练习后老师会重点讲解，并传授其多年总结的编程技巧和编程理念，使您毕业后就已经具备了一定的编程经验，能够轻松应对工作中出现的一些问题。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51); font-size: 24px;\">课程简介：</span>从基础开始，由浅入深，循序渐进，手把手教您一步一步学习西门子S7-200</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">SMART、S7-300以及S7-1200的硬件、接线、进制、数据类型、寻址、地址分配方法、PLC工作原理、编程软件、基本指令应用、功能指令、高速输入输出应用，PID闭环控制，变频器控制，编码器应用，步进定位控制系统、伺服定位控制系统，通信数据采集，PLC与PLC通信，PLC与其它智能设备通信，上位机HMI程序设计和编程等内容。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">学习过程中，我们提供人手一套的设备，您可以理论知识和实操练习相结合，使得您从零基础成长为一名专业的PLC从业人员。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51); font-size: 24px;\">开班日期：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-size: 14px;\">每月开班。</span></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-size: 24px; color: rgb(229, 51, 51);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box;\">上课时间</span></span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51); font-size: 24px;\">：</span>上午9:00-12：00 &nbsp;下午2：00-5：30</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51); font-size: 24px;\">培训时间：</span>60天</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51); font-size: 24px;\">培训对象：</span>从事电工，设备维护，电气自动化，电气维护想提升自己的朋友</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">初中、中专、高中、大专、本科及所有想提升自我掌握一门专业技能的朋友</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51); font-size: 24px;\">我们的承诺：</span>三天不满意无理由退学费，报名所学课程一期没学会，可以免费到学会为止。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(229, 51, 51); font-size: 24px;\">培训费用：</span>6500元（不含税）无任何其他隐形培训费用</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-size: 24px; color: rgb(229, 51, 51);\">设备：</span>人手一套设备（PLC，变频器，电机，触摸屏，伺服，步进）</p><p><br/></p>', '2019-01-05'),
(2, '20190105/844f8c7491c79c58d02b23be443e16ab.jpg', '西门子全科班', '<table><tbody><tr class=\"firstRow\"><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr><tr><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td><td width=\"104\" valign=\"top\"><br/></td></tr></tbody></table><p><br/></p>', '2019-01-05'),
(3, '20190105/56833274b4312de4fc0aa1900b5e5296.jpg', '西门子S7-200 SMART 综合班', '<p><strong><span style=\"font-family:宋体\">讲师介绍：</span></strong></p><p>91<span style=\"font-family:宋体\">工控培训讲师均具有多年项目背景及培训经验，对教学内容烂熟于心。</span></p><p><strong><span style=\"font-family:宋体\">高老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px;text-indent:0\"><span style=\"font-family: 宋体\">多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。对于西门子S7-200SMART有的专业的教学经验，授课调理清晰严谨。课堂氛围生动幽默，很好的把实践和理论相结合教学。是我们91工控培训极具代表性的讲师。</span></p><p style=\"text-align:center\"><strong>&nbsp;</strong></p><p><strong><span style=\"font-family:宋体\">董老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px;text-indent:0\"><span style=\"font-family: 宋体\">毕业后一直从事大型自动化项目工作，精通中大型自动化控制系统，有着独立负责大型项目系统设计和调试经验，熟悉西门子各个系列的PLC程序编程、调试、通讯组态。是91工控培训西门子S7-300/400 WINCC博途1200的专家讲师，在专业培训方面有着丰富的实战经验。</span></p><p><strong><span style=\"font-family:宋体\">适合对象：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">初学者，没有任何基础，从零开始学。</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">大学生：没有工作经验，学校学过皮毛，大学时光充实自己。</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">毕业生：应聘碰壁，技术不高，想系统学习，蜕变大神。</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">工作者：电工，设备维护，电气自动化行业从业者。</span></p><p>&nbsp;</p><p><strong><span style=\"font-family:宋体\">课程特点：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">教学案例精心挑选，贴合实际应用。每个知识点课后布置随堂练习作业，人手一套设备强化训练，迅速掌握知识点，</span>30%<span style=\"font-family:宋体\">理论</span>+70%<span style=\"font-family:宋体\">实操。</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">通过各种案例培养学员的逻辑思维能力和解决问题的动手能力，快速掌握</span>PLC<span style=\"font-family:宋体\">编程思维。</span></p><p><strong><span style=\"font-family:宋体\">学习方式：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings;color:red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><strong><span style=\"font-family:宋体;color:red\">一人一机实操培训，边学边练。配套教材上面有案例和练习，并且提供全套视频回放复习和预习。</span></strong></p><p><strong><span style=\"font-family:宋体\">学习时间：</span> </strong></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">《西门子</span>S7-200SMART<span style=\"font-family:宋体\">综合班》</span>+<span style=\"font-family:宋体\">《威纶通触摸屏组态班》</span>==30<span style=\"font-family:宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">《西门子</span>S7-300<span style=\"font-family:宋体\">专家班》</span>+<span style=\"font-family:宋体\">《</span>WINCC<span style=\"font-family:宋体\">上位机组态专家班》</span>==30<span style=\"font-family:宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">《博途</span>S7-1200<span style=\"font-family:宋体\">精英班》</span>==15<span style=\"font-family:宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">共</span>75<span style=\"font-family:宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left:28px\"><span style=\"font-family:Wingdings;color:red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><strong><span style=\"font-family:宋体;color:red\">没有时间限制，学会，学熟练为止。</span></strong></p><p><strong><span style=\"font-family:宋体\">学费：</span></strong>7500<span style=\"font-family:宋体\">元（不含税）</span> <span style=\"font-family: 宋体\">提前预约赠送价值</span>4500<span style=\"font-family:宋体\">元博途</span>S7-1200<span style=\"font-family:宋体\">精英班</span></p><p><span style=\"font-family:宋体\">无其他任何费用。赠送内部教材，软件及各种资料还有全套内部教学视频。</span></p><p><strong><span style=\"font-family:宋体\">上课时间：</span></strong></p><p><span style=\"font-family:宋体\">周一到周五</span> &nbsp;<span style=\"font-family:宋体\">早上：</span>9:00-12:00&nbsp; <span style=\"font-family:宋体\">下午：</span>14:00-17:30 &nbsp;<span style=\"font-family:宋体\">晚自习：</span>19:00-21:00</p><p><strong><span style=\"font-family:宋体\">服务保障：</span></strong></p><p><span style=\"font-family:宋体\">三天不满意可申请退学费，报名所学课程一期没学会，可以免费到学会为止。</span></p><p><strong><span style=\"font-family:宋体\">就业前景：</span></strong></p><p><span style=\"font-family:宋体\">毕业学员月薪资均在</span>6K<span style=\"font-family:宋体\">起步，转正均</span>8K<span style=\"font-family:宋体\">起。</span></p><p><span style=\"font-family:宋体\">从事岗位：电气工程师，</span>PLC<span style=\"font-family:宋体\">程序开发</span>/<span style=\"font-family:宋体\">设计，售后服务。</span></p><p>&nbsp;</p><p><span style=\"font-family:宋体\">教材：</span></p><p><br/></p><p><br/></p><p>200SMART<span style=\"font-family: 宋体\">，</span>1200<span style=\"font-family:宋体\">三轴实验设备：</span></p><p><br/></p><p>200SMART<span style=\"font-family: 宋体\">实验设备：</span>PLC<span style=\"font-family:宋体\">，模块，触摸屏，变频器，伺服，步进。</span></p><p><br/></p><p>&nbsp;</p><p>&nbsp;</p><p>1200<span style=\"font-family:宋体\">实验设备：</span>PLC<span style=\"font-family:宋体\">，模拟量模块，变频器，伺服步进。</span></p><p><br/></p><p>300<span style=\"font-family:宋体\">实验设备：</span></p><p>315-2DP CPU<span style=\"font-family: 宋体\">，数字量模块，模拟量模块，通信模块，第三方模块。</span></p><p><br/></p>', '2019-01-05'),
(4, '20190105/3039ae2e2f3b059022c3f823b2b5f304.jpg', '西门子S7-300专家班', '<p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">讲师介绍：</span></strong></p><p style=\"white-space: normal\">91<span style=\"font-family: 宋体\">工控培训讲师均具有多年项目背景及培训经验，对教学内容烂熟于心。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">高老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: 宋体\">多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。对于西门子S7-200SMART有的专业的教学经验，授课调理清晰严谨。课堂氛围生动幽默，很好的把实践和理论相结合教学。是我们91工控培训极具代表性的讲师。</span></p><p style=\"white-space: normal;text-align: center\"><strong>&nbsp;</strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">董老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: 宋体\">毕业后一直从事大型自动化项目工作，精通中大型自动化控制系统，有着独立负责大型项目系统设计和调试经验，熟悉西门子各个系列的PLC程序编程、调试、通讯组态。是91工控培训西门子S7-300/400 WINCC博途1200的专家讲师，在专业培训方面有着丰富的实战经验。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">适合对象：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">初学者，没有任何基础，从零开始学。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">大学生：没有工作经验，学校学过皮毛，大学时光充实自己。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">毕业生：应聘碰壁，技术不高，想系统学习，蜕变大神。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">工作者：电工，设备维护，电气自动化行业从业者。</span></p><p style=\"white-space: normal\">&nbsp;</p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">课程特点：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">教学案例精心挑选，贴合实际应用。每个知识点课后布置随堂练习作业，人手一套设备强化训练，迅速掌握知识点，</span>30%<span style=\"font-family: 宋体\">理论</span>+70%<span style=\"font-family: 宋体\">实操。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">通过各种案例培养学员的逻辑思维能力和解决问题的动手能力，快速掌握</span>PLC<span style=\"font-family: 宋体\">编程思维。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学习方式：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings;color: red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><strong><span style=\"font-family: 宋体;color: red\">一人一机实操培训，边学边练。配套教材上面有案例和练习，并且提供全套视频回放复习和预习。</span></strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学习时间：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《西门子</span>S7-200SMART<span style=\"font-family: 宋体\">综合班》</span>+<span style=\"font-family: 宋体\">《威纶通触摸屏组态班》</span>==30<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《西门子</span>S7-300<span style=\"font-family: 宋体\">专家班》</span>+<span style=\"font-family: 宋体\">《</span>WINCC<span style=\"font-family: 宋体\">上位机组态专家班》</span>==30<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《博途</span>S7-1200<span style=\"font-family: 宋体\">精英班》</span>==15<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">共</span>75<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings;color: red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><strong><span style=\"font-family: 宋体;color: red\">没有时间限制，学会，学熟练为止。</span></strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学费：</span></strong>7500<span style=\"font-family: 宋体\">元（不含税）</span>&nbsp;<span style=\"font-family: 宋体\">提前预约赠送价值</span>4500<span style=\"font-family: 宋体\">元博途</span>S7-1200<span style=\"font-family: 宋体\">精英班</span></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">无其他任何费用。赠送内部教材，软件及各种资料还有全套内部教学视频。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">上课时间：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">周一到周五</span>&nbsp;&nbsp;<span style=\"font-family: 宋体\">早上：</span>9:00-12:00&nbsp;&nbsp;<span style=\"font-family: 宋体\">下午：</span>14:00-17:30 &nbsp;<span style=\"font-family: 宋体\">晚自习：</span>19:00-21:00</p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">服务保障：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">三天不满意可申请退学费，报名所学课程一期没学会，可以免费到学会为止。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">就业前景：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">毕业学员月薪资均在</span>6K<span style=\"font-family: 宋体\">起步，转正均</span>8K<span style=\"font-family: 宋体\">起。</span></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">从事岗位：电气工程师，</span>PLC<span style=\"font-family: 宋体\">程序开发</span>/<span style=\"font-family: 宋体\">设计，售后服务。</span></p><p><br/></p>', '2019-01-05'),
(5, '20190105/5480ddceaf47a9bbb0b6ace3c63dd6f6.jpg', '博途TIA S7-1200精英班', '<p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">讲师介绍：</span></strong></p><p style=\"white-space: normal\">91<span style=\"font-family: 宋体\">工控培训讲师均具有多年项目背景及培训经验，对教学内容烂熟于心。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">高老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: 宋体\">多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。对于西门子S7-200SMART有的专业的教学经验，授课调理清晰严谨。课堂氛围生动幽默，很好的把实践和理论相结合教学。是我们91工控培训极具代表性的讲师。</span></p><p style=\"white-space: normal;text-align: center\"><strong>&nbsp;</strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">董老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: 宋体\">毕业后一直从事大型自动化项目工作，精通中大型自动化控制系统，有着独立负责大型项目系统设计和调试经验，熟悉西门子各个系列的PLC程序编程、调试、通讯组态。是91工控培训西门子S7-300/400 WINCC博途1200的专家讲师，在专业培训方面有着丰富的实战经验。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">适合对象：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">初学者，没有任何基础，从零开始学。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">大学生：没有工作经验，学校学过皮毛，大学时光充实自己。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">毕业生：应聘碰壁，技术不高，想系统学习，蜕变大神。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">工作者：电工，设备维护，电气自动化行业从业者。</span></p><p style=\"white-space: normal\">&nbsp;</p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">课程特点：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">教学案例精心挑选，贴合实际应用。每个知识点课后布置随堂练习作业，人手一套设备强化训练，迅速掌握知识点，</span>30%<span style=\"font-family: 宋体\">理论</span>+70%<span style=\"font-family: 宋体\">实操。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">通过各种案例培养学员的逻辑思维能力和解决问题的动手能力，快速掌握</span>PLC<span style=\"font-family: 宋体\">编程思维。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学习方式：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings;color: red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><strong><span style=\"font-family: 宋体;color: red\">一人一机实操培训，边学边练。配套教材上面有案例和练习，并且提供全套视频回放复习和预习。</span></strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学习时间：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《西门子</span>S7-200SMART<span style=\"font-family: 宋体\">综合班》</span>+<span style=\"font-family: 宋体\">《威纶通触摸屏组态班》</span>==30<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《西门子</span>S7-300<span style=\"font-family: 宋体\">专家班》</span>+<span style=\"font-family: 宋体\">《</span>WINCC<span style=\"font-family: 宋体\">上位机组态专家班》</span>==30<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《博途</span>S7-1200<span style=\"font-family: 宋体\">精英班》</span>==15<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">共</span>75<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings;color: red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><strong><span style=\"font-family: 宋体;color: red\">没有时间限制，学会，学熟练为止。</span></strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学费：</span></strong>7500<span style=\"font-family: 宋体\">元（不含税）</span>&nbsp;<span style=\"font-family: 宋体\">提前预约赠送价值</span>4500<span style=\"font-family: 宋体\">元博途</span>S7-1200<span style=\"font-family: 宋体\">精英班</span></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">无其他任何费用。赠送内部教材，软件及各种资料还有全套内部教学视频。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">上课时间：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">周一到周五</span>&nbsp;&nbsp;<span style=\"font-family: 宋体\">早上：</span>9:00-12:00&nbsp;&nbsp;<span style=\"font-family: 宋体\">下午：</span>14:00-17:30 &nbsp;<span style=\"font-family: 宋体\">晚自习：</span>19:00-21:00</p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">服务保障：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">三天不满意可申请退学费，报名所学课程一期没学会，可以免费到学会为止。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">就业前景：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">毕业学员月薪资均在</span>6K<span style=\"font-family: 宋体\">起步，转正均</span>8K<span style=\"font-family: 宋体\">起。</span></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">从事岗位：电气工程师，</span>PLC<span style=\"font-family: 宋体\">程序开发</span>/<span style=\"font-family: 宋体\">设计，售后服务。</span></p><p><br/></p>', '2019-01-05'),
(6, '20190105/40dc4ee949b9c49bc3c100e2cbcd69fb.jpg', '威纶通触摸屏组态班', '<p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">讲师介绍：</span></strong></p><p style=\"white-space: normal\">91<span style=\"font-family: 宋体\">工控培训讲师均具有多年项目背景及培训经验，对教学内容烂熟于心。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">高老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: 宋体\">多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。对于西门子S7-200SMART有的专业的教学经验，授课调理清晰严谨。课堂氛围生动幽默，很好的把实践和理论相结合教学。是我们91工控培训极具代表性的讲师。</span></p><p style=\"white-space: normal;text-align: center\"><strong>&nbsp;</strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">董老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: 宋体\">毕业后一直从事大型自动化项目工作，精通中大型自动化控制系统，有着独立负责大型项目系统设计和调试经验，熟悉西门子各个系列的PLC程序编程、调试、通讯组态。是91工控培训西门子S7-300/400 WINCC博途1200的专家讲师，在专业培训方面有着丰富的实战经验。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">适合对象：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">初学者，没有任何基础，从零开始学。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">大学生：没有工作经验，学校学过皮毛，大学时光充实自己。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">毕业生：应聘碰壁，技术不高，想系统学习，蜕变大神。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">工作者：电工，设备维护，电气自动化行业从业者。</span></p><p style=\"white-space: normal\">&nbsp;</p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">课程特点：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">教学案例精心挑选，贴合实际应用。每个知识点课后布置随堂练习作业，人手一套设备强化训练，迅速掌握知识点，</span>30%<span style=\"font-family: 宋体\">理论</span>+70%<span style=\"font-family: 宋体\">实操。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">通过各种案例培养学员的逻辑思维能力和解决问题的动手能力，快速掌握</span>PLC<span style=\"font-family: 宋体\">编程思维。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学习方式：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings;color: red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><strong><span style=\"font-family: 宋体;color: red\">一人一机实操培训，边学边练。配套教材上面有案例和练习，并且提供全套视频回放复习和预习。</span></strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学习时间：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《西门子</span>S7-200SMART<span style=\"font-family: 宋体\">综合班》</span>+<span style=\"font-family: 宋体\">《威纶通触摸屏组态班》</span>==30<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《西门子</span>S7-300<span style=\"font-family: 宋体\">专家班》</span>+<span style=\"font-family: 宋体\">《</span>WINCC<span style=\"font-family: 宋体\">上位机组态专家班》</span>==30<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《博途</span>S7-1200<span style=\"font-family: 宋体\">精英班》</span>==15<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">共</span>75<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings;color: red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><strong><span style=\"font-family: 宋体;color: red\">没有时间限制，学会，学熟练为止。</span></strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学费：</span></strong>7500<span style=\"font-family: 宋体\">元（不含税）</span>&nbsp;<span style=\"font-family: 宋体\">提前预约赠送价值</span>4500<span style=\"font-family: 宋体\">元博途</span>S7-1200<span style=\"font-family: 宋体\">精英班</span></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">无其他任何费用。赠送内部教材，软件及各种资料还有全套内部教学视频。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">上课时间：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">周一到周五</span>&nbsp;&nbsp;<span style=\"font-family: 宋体\">早上：</span>9:00-12:00&nbsp;&nbsp;<span style=\"font-family: 宋体\">下午：</span>14:00-17:30 &nbsp;<span style=\"font-family: 宋体\">晚自习：</span>19:00-21:00</p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">服务保障：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">三天不满意可申请退学费，报名所学课程一期没学会，可以免费到学会为止。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">就业前景：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">毕业学员月薪资均在</span>6K<span style=\"font-family: 宋体\">起步，转正均</span>8K<span style=\"font-family: 宋体\">起。</span></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">从事岗位：电气工程师，</span>PLC<span style=\"font-family: 宋体\">程序开发</span>/<span style=\"font-family: 宋体\">设计，售后服务。</span></p><p><br/></p>', '2019-01-05'),
(7, '20190105/83640b951686a4f9e4b2cd8b867f0253.jpg', 'WINCC上位机组态班', '<p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">讲师介绍：</span></strong></p><p style=\"white-space: normal\">91<span style=\"font-family: 宋体\">工控培训讲师均具有多年项目背景及培训经验，对教学内容烂熟于心。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">高老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: 宋体\">多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。对于西门子S7-200SMART有的专业的教学经验，授课调理清晰严谨。课堂氛围生动幽默，很好的把实践和理论相结合教学。是我们91工控培训极具代表性的讲师。</span></p><p style=\"white-space: normal;text-align: center\"><strong>&nbsp;</strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">董老师：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: 宋体\">毕业后一直从事大型自动化项目工作，精通中大型自动化控制系统，有着独立负责大型项目系统设计和调试经验，熟悉西门子各个系列的PLC程序编程、调试、通讯组态。是91工控培训西门子S7-300/400 WINCC博途1200的专家讲师，在专业培训方面有着丰富的实战经验。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">适合对象：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">初学者，没有任何基础，从零开始学。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">大学生：没有工作经验，学校学过皮毛，大学时光充实自己。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">毕业生：应聘碰壁，技术不高，想系统学习，蜕变大神。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">工作者：电工，设备维护，电气自动化行业从业者。</span></p><p style=\"white-space: normal\">&nbsp;</p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">课程特点：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">教学案例精心挑选，贴合实际应用。每个知识点课后布置随堂练习作业，人手一套设备强化训练，迅速掌握知识点，</span>30%<span style=\"font-family: 宋体\">理论</span>+70%<span style=\"font-family: 宋体\">实操。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">通过各种案例培养学员的逻辑思维能力和解决问题的动手能力，快速掌握</span>PLC<span style=\"font-family: 宋体\">编程思维。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学习方式：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings;color: red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><strong><span style=\"font-family: 宋体;color: red\">一人一机实操培训，边学边练。配套教材上面有案例和练习，并且提供全套视频回放复习和预习。</span></strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学习时间：</span></strong></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《西门子</span>S7-200SMART<span style=\"font-family: 宋体\">综合班》</span>+<span style=\"font-family: 宋体\">《威纶通触摸屏组态班》</span>==30<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《西门子</span>S7-300<span style=\"font-family: 宋体\">专家班》</span>+<span style=\"font-family: 宋体\">《</span>WINCC<span style=\"font-family: 宋体\">上位机组态专家班》</span>==30<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">《博途</span>S7-1200<span style=\"font-family: 宋体\">精英班》</span>==15<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体\">共</span>75<span style=\"font-family: 宋体\">天</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 28px;white-space: normal\"><span style=\"font-family: Wingdings;color: red\">l<span style=\"font-variant-numeric: normal;font-variant-east-asian: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;\">&nbsp;&nbsp;</span></span><strong><span style=\"font-family: 宋体;color: red\">没有时间限制，学会，学熟练为止。</span></strong></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">学费：</span></strong>7500<span style=\"font-family: 宋体\">元（不含税）</span>&nbsp;<span style=\"font-family: 宋体\">提前预约赠送价值</span>4500<span style=\"font-family: 宋体\">元博途</span>S7-1200<span style=\"font-family: 宋体\">精英班</span></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">无其他任何费用。赠送内部教材，软件及各种资料还有全套内部教学视频。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">上课时间：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">周一到周五</span>&nbsp;&nbsp;<span style=\"font-family: 宋体\">早上：</span>9:00-12:00&nbsp;&nbsp;<span style=\"font-family: 宋体\">下午：</span>14:00-17:30 &nbsp;<span style=\"font-family: 宋体\">晚自习：</span>19:00-21:00</p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">服务保障：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">三天不满意可申请退学费，报名所学课程一期没学会，可以免费到学会为止。</span></p><p style=\"white-space: normal\"><strong><span style=\"font-family: 宋体\">就业前景：</span></strong></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">毕业学员月薪资均在</span>6K<span style=\"font-family: 宋体\">起步，转正均</span>8K<span style=\"font-family: 宋体\">起。</span></p><p style=\"white-space: normal\"><span style=\"font-family: 宋体\">从事岗位：电气工程师，</span>PLC<span style=\"font-family: 宋体\">程序开发</span>/<span style=\"font-family: 宋体\">设计，售后服务。</span></p><p><br/></p>', '2019-01-05');

-- --------------------------------------------------------

--
-- 表的结构 `index1`
--

CREATE TABLE `index1` (
  `id` int(10) UNSIGNED NOT NULL,
  `desc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `index1`
--

INSERT INTO `index1` (`id`, `desc`) VALUES
(1, '2019年2月20日 西门子全科班 名额已不多 火热报名中...');

-- --------------------------------------------------------

--
-- 表的结构 `index2`
--

CREATE TABLE `index2` (
  `id` int(10) UNSIGNED NOT NULL,
  `logopath` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `index2`
--

INSERT INTO `index2` (`id`, `logopath`) VALUES
(1, '20190104/c977e765856798511293526808ea426b.jpg'),
(2, '20190106/7638a7735ee734054fbf823d8b98bf2f.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `index3`
--

CREATE TABLE `index3` (
  `id` int(11) UNSIGNED NOT NULL,
  `banner1` varchar(255) DEFAULT NULL,
  `banner2` varchar(255) DEFAULT NULL,
  `banner3` varchar(255) DEFAULT NULL,
  `banner4` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `index3`
--

INSERT INTO `index3` (`id`, `banner1`, `banner2`, `banner3`, `banner4`) VALUES
(1, '20181126/84306797fe1b987e334a88bf4e66eeb2.jpg', '20181126/1e1f6858159259b70c9c30ae530f7a1c.jpg', '20181126/9b2e337ee4adce8636669dcda2912464.jpg', '20181126/4d277a426b0325eb5e179d3df619e81b.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `index4`
--

CREATE TABLE `index4` (
  `id` int(10) UNSIGNED NOT NULL,
  `classname_zh` varchar(255) DEFAULT NULL,
  `classname_en` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `endtime` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `index4`
--

INSERT INTO `index4` (`id`, `classname_zh`, `classname_en`, `desc`, `endtime`) VALUES
(1, '西门子全科班---强烈推荐！！！', 'SIEMENS whole class', '<p>初学者，没有任何基础</p><p>大学生：没有工作经验，应聘碰壁</p><p>技术不高，想系统学习蜕变大神。</p>', '2019-2-20'),
(2, '西门子S7-200SMART综合班', 'SIEMENS S7-200SMART comprehensive class', '<p>初学者，没有任何基础</p><p>大学生：没有工作经验，应聘碰壁</p><p>技术不高，想系统学习蜕变大神。</p>', '2019-2-20'),
(3, '西门子S7-300 PLC专家班', 'SIEMENS S7-300 PLC programming expert class', '<p>初学者，没有任何基础</p><p>大学生：没有工作经验，应聘碰壁</p><p>技术不高，想系统学习蜕变大神。</p>', '2019-2-20'),
(4, '博途TIA S7-1200 PLC精英班', 'TIA S7-1200 PLC programming elite class', '<p>初学者，没有任何基础</p><p>大学生：没有工作经验，应聘碰壁</p><p>技术不高，想系统学习蜕变大神。</p>', '2019-2-20');

-- --------------------------------------------------------

--
-- 表的结构 `index5`
--

CREATE TABLE `index5` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `index5`
--

INSERT INTO `index5` (`id`, `img`, `name`, `desc`) VALUES
(1, '20181215/90d3e13c13a60bf6d1cc1f24f99f4145.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。'),
(2, '20181215/81da1a09139e0d3787bdcf2dd4c4e5a8.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。'),
(3, '20181215/b195dd9a9654f363631eaa5e7467bffc.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。'),
(4, '20181215/302f90168d08f326ccce4c177b2e16d5.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。'),
(5, '20181215/04c033405cfb0465265d6daab061e886.jpg', '高老师', '多年从事自动化相关培训，有着丰富项目背景，精通西门子系列工控产品，有着独立完成各种小、中、大型的项目经验，特别是精通西门子S7-200系列、西门子1200系列的系统设计。');

-- --------------------------------------------------------

--
-- 表的结构 `index6`
--

CREATE TABLE `index6` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `business` varchar(255) DEFAULT NULL,
  `wages` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `index6`
--

INSERT INTO `index6` (`id`, `name`, `education`, `job`, `business`, `wages`) VALUES
(1, '张三1', '博士1', '清洁工', '清洁公司', '3000'),
(2, '张三', '博士', '清洁工', '清洁公司', '3000'),
(3, '张三', '博士', '清洁工', '清洁公司', '3000'),
(4, '张三', '博士', '清洁工', '清洁公司', '3000'),
(5, '张三', '博士', '清洁工', '清洁公司', '3000'),
(10, '张三', '博士', '清洁工', '清洁公司', '3000'),
(7, '张三', '博士', '清洁工', '清洁公司', '3000'),
(11, '张三', '博士', '清洁工', '清洁公司', '3000'),
(712, '张三', '博士', '清洁工', '清洁公司', '3000'),
(8, '张三', '博士', '清洁工', '清洁公司', '3000'),
(9, '张三', '博士', '清洁工', '清洁公司', '3000'),
(71, '张三', '博士', '清洁工', '清洁公司', '3000'),
(713, '吴攀', '博士后', '清洁工', '清洁工总公司', '15000');

-- --------------------------------------------------------

--
-- 表的结构 `index7`
--

CREATE TABLE `index7` (
  `id` int(10) UNSIGNED NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `index7`
--

INSERT INTO `index7` (`id`, `desc`, `img`) VALUES
(1, '91工控在北上广深太原西安签署80多家互联网合作企业,将定期向91工控提供用人需求并合作技术交流。91工控也定时到合作单位进行市场调研强化课程与企业需求的结合', '20190101/2a4c58d7fde2f7656f09ce4a8c21e998.png');

-- --------------------------------------------------------

--
-- 表的结构 `index8`
--

CREATE TABLE `index8` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `beian` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `index8`
--

INSERT INTO `index8` (`id`, `address`, `beian`, `img`) VALUES
(1, '湖北省武汉市洪山区光谷大道光谷总部国际9栋10楼', '鄂ICP备17021960号-1', '20190101/30e97d75be70b7b953ef6bf1220acf24.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `index61`
--

CREATE TABLE `index61` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `index61`
--

INSERT INTO `index61` (`id`, `img`, `beizhu`, `time`, `images`) VALUES
(11, '20181218/1cd40dcef499c8a53ca76542a4afa3e3.jpg', '实验', '2018-12-18', NULL),
(13, '20190102/edfc7bbc507f64edf74e68fe93deccea.jpg', '展会', '2019-01-02', NULL),
(14, '20190102/6473202133499ce5a464081d837ccade.jpg', '上课1', '2019-01-02', NULL),
(15, '20190102/d92cb092e23a80cb2141d7e6ad7bad1b.jpg', '上课2', '2019-01-02', NULL),
(16, '20190102/131f8260782c8ea96a384efe64e6058b.jpg', '上课3', '2019-01-02', NULL),
(17, '20190102/2608941d9b95cfbbf34c1dce2c3aca9e.jpg', '沙龙', '2019-01-02', NULL),
(18, '20190102/9755d5754b9e3b0b322f2e3a5304552a.jpg', '学员结业', '2019-01-02', NULL),
(19, '20190102/7b476bb6ae67d1555e076a12fee4a010.jpg', '展会2', '2019-01-02', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `webinfo`
--

CREATE TABLE `webinfo` (
  `id` int(10) UNSIGNED NOT NULL,
  `webtitle` varchar(255) DEFAULT NULL,
  `webkeywords` varchar(255) DEFAULT NULL,
  `webdesc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `webinfo`
--

INSERT INTO `webinfo` (`id`, `webtitle`, `webkeywords`, `webdesc`) VALUES
(1, '91工控培训官网-专注PLC培训自动化，做靠谱的教育，培养优秀的工程师。', '91工控,91工控培训,PLC,PLC培训,PLC编程,PLC编程入门,PLC视频,PLC教程,PLC教学,电工培训,PLC教程视频,PLC编程手册,PLC编程软件,在线PLC培训,视频PLC培训, 远程PLC培训,西门子PLC培训,三菱PLC,自动化培训,工控技术,自动化技术,', '91工控培训专注PLC编程，PLC培训，工业机器人培训，西门子PLC，S7-200SMART，博途V14V15，S7-1200，西门子300，S7-300PLC，触摸屏，变频器，伺服，步进，上位机，WINCC组态，专业的专家团队，多年授课经验。做靠谱的教育，培养优秀的工程师。\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index1`
--
ALTER TABLE `index1`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index2`
--
ALTER TABLE `index2`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index3`
--
ALTER TABLE `index3`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index4`
--
ALTER TABLE `index4`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index5`
--
ALTER TABLE `index5`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index6`
--
ALTER TABLE `index6`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index7`
--
ALTER TABLE `index7`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index8`
--
ALTER TABLE `index8`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `index61`
--
ALTER TABLE `index61`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `webinfo`
--
ALTER TABLE `webinfo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `index1`
--
ALTER TABLE `index1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `index2`
--
ALTER TABLE `index2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `index3`
--
ALTER TABLE `index3`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `index4`
--
ALTER TABLE `index4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `index5`
--
ALTER TABLE `index5`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `index6`
--
ALTER TABLE `index6`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=714;

--
-- 使用表AUTO_INCREMENT `index7`
--
ALTER TABLE `index7`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `index8`
--
ALTER TABLE `index8`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `index61`
--
ALTER TABLE `index61`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `webinfo`
--
ALTER TABLE `webinfo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
