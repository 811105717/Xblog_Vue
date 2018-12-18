/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : xblog

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 18/12/2018 20:45:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for x_blog
-- ----------------------------
DROP TABLE IF EXISTS `x_blog`;
CREATE TABLE `x_blog`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blogtittle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blogmain` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tagid` int(20) DEFAULT NULL,
  `upcount` int(255) NOT NULL DEFAULT 0,
  `downcount` int(255) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `w_id`(`userid`) USING BTREE,
  INDEX `w_tag`(`tagid`) USING BTREE,
  CONSTRAINT `w_id` FOREIGN KEY (`userid`) REFERENCES `x_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `w_tag` FOREIGN KEY (`tagid`) REFERENCES `x_tag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_blog
-- ----------------------------
INSERT INTO `x_blog` VALUES (1, 1, 'test', '<h1>sdfdsf</h1><p>a啊哈哈哈哈哈这是一个测试 ，所以要写的特别长。用来保证这段文章会自动换行！！</p><p><span style=\"font-size: 12px;\"></span>f这里就是会换行得了！！ 的身份ds</p>', '2018-12-01/22:36:02', 4, 16, 6);
INSERT INTO `x_blog` VALUES (2, 1, 'sdfljsdlfksdfadgfdhdfg', '<h1>sdfsadgjals;vkladfjg</h1><p>sdflhasdljkfdas</p><p>\\</p><p><span style=\"font-size: 32px;\">gdfsgsdfgfdgsf</span></p>', '2018-11-22/17:25:26', 5, 2, 3);
INSERT INTO `x_blog` VALUES (3, 1, 'sdfljsdlfksdfadgfdhdfg', '<p>sdgdfgdfgsdfgdfgd</p><h1>fdglkjdfg</h1><p>sdgkhfjdg</p><p><br/></p>', '2018-11-22/17:26:00', 2, 5, 2);
INSERT INTO `x_blog` VALUES (4, 1, 'testagain', '<p><span style=\"text-decoration:line-through;\">dgdfgdfsgfdg</span>dfg</p><p>dfgfdgdfgfdgfgfd</p>', '2018-11-22/17:31:42', 1, 11, 4);
INSERT INTO `x_blog` VALUES (6, 4, '这是一个测试文章  ', '<h1 style=\"text-align: center;\">这是第一条博客呀</h1><p>阿三发射点犯得上的风格但是你立刻的那款你的看法功能空间电脑架空的法国你觉得发给你<img src=\"http://a.tbcdn.cn/sys/wangwang/smiley/48x48/1.gif\" _src=\"http://a.tbcdn.cn/sys/wangwang/smiley/48x48/1.gif\"/></p>', '2018-11-22/20:24:44', 2, 4, 2);
INSERT INTO `x_blog` VALUES (8, 6, '这个是用来进行测试的一篇小文章', '<p>测试tag和&nbsp; &lt;a href=&quot;<a href=\"http://\">www.rba1213.top</a>&quot; &gt;xss攻击&lt;/a&gt;</p>', '2018-11-25/10:25:20', 4, 1, 2);
INSERT INTO `x_blog` VALUES (13, 2, 'test transition', '<p>这是一个用来测试事务的 ！！</p>', '2018-11-27/09:35:55', 7, 3, 0);
INSERT INTO `x_blog` VALUES (19, 9, '现在全部都好使啦 ', '哪里都没有问题啦', '2018-12-8:00:00:00', 4, 2, 1);
INSERT INTO `x_blog` VALUES (20, 1, '士大夫豆腐干', '啊实打实的', '2018-12-8:00:00:00', 3, 2, 1);
INSERT INTO `x_blog` VALUES (29, 1, '这里是测试服务器上是否好使', '测试测试测试', '2018-12-8:00:00:00', 1, 1, 0);
INSERT INTO `x_blog` VALUES (30, 11, '新用户第一帖', '测试第一贴', '2018-12-8:00:00:00', 4, 2, 0);
INSERT INTO `x_blog` VALUES (31, 1, 'Nginx服务器介绍', 'Nginx (engine x) 是一个高性能的HTTP和反向代理服务，也是一个IMAP/POP3/SMTP服务。Nginx是由伊戈尔·赛索耶夫为俄罗斯访问量第二的Rambler.ru站点（俄文：Рамблер）开发的，第一个公开版本0.1.0发布于2004年10月4日。\n其将源代码以类BSD许可证的形式发布，因它的稳定性、丰富的功能集、示例配置文件和低系统资源的消耗而闻名。2011年6月1日，nginx 1.0.4发布。\nNginx是一款轻量级的Web 服务器/反向代理服务器及电子邮件（IMAP/POP3）代理服务器，并在一个BSD-like 协议下发行。其特点是占有内存少，并发能力强，事实上nginx的并发能力确实在同类型的网页服务器中表现较好，中国大陆使用nginx网站用户有：百度、京东、新浪、网易、腾讯、淘宝等。', '2018-12-8:00:00:00', 4, 11, 0);

-- ----------------------------
-- Table structure for x_common
-- ----------------------------
DROP TABLE IF EXISTS `x_common`;
CREATE TABLE `x_common`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `blogid` int(20) DEFAULT NULL,
  `common` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` int(25) DEFAULT NULL,
  `date` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `upcount` int(255) NOT NULL DEFAULT 0,
  `downcount` int(255) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blogid`(`blogid`) USING BTREE,
  INDEX `uid`(`userid`) USING BTREE,
  CONSTRAINT `blogid` FOREIGN KEY (`blogid`) REFERENCES `x_blog` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `uid` FOREIGN KEY (`userid`) REFERENCES `x_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_common
-- ----------------------------
INSERT INTO `x_common` VALUES (1, 1, '这是一条测试评论', 1, '2018-11-22/19:54:07', 4, 4);
INSERT INTO `x_common` VALUES (2, 1, 'zhe是第二条测试评论', 3, '22/19:54:59', 7, 2);
INSERT INTO `x_common` VALUES (3, 6, '测试评论呀 ', 1, '2018-11-24/14:52:56', 1, 1);
INSERT INTO `x_common` VALUES (4, 6, '<a href=\"www.rbx1213.top\">测试XSS</a>', 1, '2018-11-24/14:53:33', 1, 0);
INSERT INTO `x_common` VALUES (5, 6, '&lt;a href=&quot;www.rbx1213.top&quot;&gt;再次测试XSS&lt;/a&gt;', 1, '2018-11-24/14:54:55', 0, 1);
INSERT INTO `x_common` VALUES (6, 6, '测试 final！', 1, '2018-11-24/14:56:16', 1, 0);
INSERT INTO `x_common` VALUES (7, 6, '士大夫地方的', 1, '2018-11-24/15:21:26', 0, 0);
INSERT INTO `x_common` VALUES (8, 1, '双方的', 1, '2018-11-24/15:30:48', 1, 0);
INSERT INTO `x_common` VALUES (9, 8, '测试评论是否存在 &lt;a href=&quot;www.rbx1213.top&quot;&gt; XSS攻击&lt;/a&gt;', 6, '2018-11-25/10:26:04', 8, 5);
INSERT INTO `x_common` VALUES (10, 2, 'test', 1, '2018-11-25/11:23:23', 1, 1);
INSERT INTO `x_common` VALUES (15, 13, '成功了！', 2, '2018-11-27/09:36:06', 0, 1);
INSERT INTO `x_common` VALUES (16, 2, 'd', 1, '2018-11-28/14:49:15', 0, 0);
INSERT INTO `x_common` VALUES (17, 1, '测试一下评论VUE', 1, NULL, 0, 0);
INSERT INTO `x_common` VALUES (18, 3, '测试一下评论', 1, NULL, 0, 0);
INSERT INTO `x_common` VALUES (19, 4, 'sdfsd', 1, NULL, 0, 0);
INSERT INTO `x_common` VALUES (22, 19, '评论也好使！！', 9, NULL, 0, 0);
INSERT INTO `x_common` VALUES (23, 19, '再评论还是好使', 9, NULL, 0, 0);
INSERT INTO `x_common` VALUES (24, 19, '真好', 1, NULL, 0, 0);
INSERT INTO `x_common` VALUES (25, 20, 'dfgdf', 1, NULL, 0, 0);
INSERT INTO `x_common` VALUES (26, 4, '啊哈哈哈哈', 1, NULL, 0, 0);
INSERT INTO `x_common` VALUES (27, 4, '牛逼', 1, NULL, 0, 0);
INSERT INTO `x_common` VALUES (29, 29, '我想评论应该也好使', 1, NULL, 0, 0);
INSERT INTO `x_common` VALUES (30, 30, '测试新用户第一评论', 11, NULL, 0, 0);
INSERT INTO `x_common` VALUES (31, 6, '测试xss攻击成功', 11, NULL, 0, 0);
INSERT INTO `x_common` VALUES (32, 31, '写的可真好', 1, NULL, 1, 0);
INSERT INTO `x_common` VALUES (34, 13, '还不错', 1, '2018-12-18/13:56:53', 0, 0);

-- ----------------------------
-- Table structure for x_message
-- ----------------------------
DROP TABLE IF EXISTS `x_message`;
CREATE TABLE `x_message`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `mess` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(20) DEFAULT NULL,
  `blogid` int(20) DEFAULT NULL,
  `isread` int(2) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `f1`(`uid`) USING BTREE,
  INDEX `f2`(`blogid`) USING BTREE,
  CONSTRAINT `f1` FOREIGN KEY (`uid`) REFERENCES `x_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `f2` FOREIGN KEY (`blogid`) REFERENCES `x_blog` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_message
-- ----------------------------
INSERT INTO `x_message` VALUES (14, '有人赞了你的评论！！！', 6, 8, 1);
INSERT INTO `x_message` VALUES (15, '有人赞了你的评论！！！', 6, 8, 1);
INSERT INTO `x_message` VALUES (16, '有人踩了你的博文！快看看吧！！', 6, 8, 1);
INSERT INTO `x_message` VALUES (17, '您的博文收到了一个赞！', 6, 8, 0);
INSERT INTO `x_message` VALUES (18, '有人踩了你的博文！快看看吧！！', 1, 2, 1);
INSERT INTO `x_message` VALUES (19, '您收到了新的评论！', 1, 2, 1);
INSERT INTO `x_message` VALUES (20, '有人赞了你的评论！！！', 1, 2, 0);
INSERT INTO `x_message` VALUES (33, '您的博文收到了一个赞！', 2, 13, 1);
INSERT INTO `x_message` VALUES (34, '您收到了新的评论！', 2, 13, 0);
INSERT INTO `x_message` VALUES (35, '有人踩了你的评论！', 2, 13, 0);
INSERT INTO `x_message` VALUES (36, '您的博文收到了一个赞！', 1, 2, 0);
INSERT INTO `x_message` VALUES (37, '有人踩了你的评论！', 1, 2, 0);
INSERT INTO `x_message` VALUES (38, '您收到了新的评论！', 1, 2, 0);
INSERT INTO `x_message` VALUES (39, '您的博文收到了一个赞！', 1, 31, 0);
INSERT INTO `x_message` VALUES (40, '有人赞了你的评论！！！', 1, 31, 0);
INSERT INTO `x_message` VALUES (41, '您的博文收到了一个赞！', 2, 13, 0);
INSERT INTO `x_message` VALUES (42, '您收到了新的评论！', 2, 13, 0);

-- ----------------------------
-- Table structure for x_pic
-- ----------------------------
DROP TABLE IF EXISTS `x_pic`;
CREATE TABLE `x_pic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk`(`uid`) USING BTREE,
  CONSTRAINT `fk` FOREIGN KEY (`uid`) REFERENCES `x_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_pic
-- ----------------------------
INSERT INTO `x_pic` VALUES (1, 1, '8a1e395d-1f00-45a0-a293-3cabf5727f0c.jpg');

-- ----------------------------
-- Table structure for x_tag
-- ----------------------------
DROP TABLE IF EXISTS `x_tag`;
CREATE TABLE `x_tag`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_tag
-- ----------------------------
INSERT INTO `x_tag` VALUES (1, '随笔');
INSERT INTO `x_tag` VALUES (2, '科学');
INSERT INTO `x_tag` VALUES (3, '新闻');
INSERT INTO `x_tag` VALUES (4, '计算机');
INSERT INTO `x_tag` VALUES (5, '互联网');
INSERT INTO `x_tag` VALUES (6, '编程语言');
INSERT INTO `x_tag` VALUES (7, '八卦');

-- ----------------------------
-- Table structure for x_user
-- ----------------------------
DROP TABLE IF EXISTS `x_user`;
CREATE TABLE `x_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `registerdate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_user
-- ----------------------------
INSERT INTO `x_user` VALUES (1, 'xiaobai', '123456', '2018-11-20-10:17:22', '811105717@qq.com', '大连', '121314', '男');
INSERT INTO `x_user` VALUES (2, 'admin', '123456', '2018-11-20-10:17:22', 'baijinfeng16@nou.com.cn', '大连', '22222', '男');
INSERT INTO `x_user` VALUES (3, 'xiaobai_test', '123456', '2018-11-20/:15:23:29', '23423@qq.com', '辽宁大连', '2334324', '男');
INSERT INTO `x_user` VALUES (4, 'df', 'sdf', '2018-11-20/:15:44:25', 'sdfsd@qq.com', 'sf', '3243', '男');
INSERT INTO `x_user` VALUES (5, 'test', '123456', '2018-11-20/:16:06:28', '23432@qq.com', '辽宁大连', '23234', '男');
INSERT INTO `x_user` VALUES (6, '搜索', '123456', '2018-11-22/:13:12:15', '12151@qq.com', 'sdfdfd大使馆反对', '23423423', '男');
INSERT INTO `x_user` VALUES (7, 'testheader', '123', '2018-11-22/:15:22:00', 'fff@qq.com', 'sdfsdf', '23423', '男');
INSERT INTO `x_user` VALUES (8, 'testheadertwice', '123', '2018-11-22/:15:24:23', '4444@qq.com', 'sdfdsfs', '342342342', '男');
INSERT INTO `x_user` VALUES (9, 'testvue', '123456', NULL, '34234fdsfsd', '1234562222', NULL, NULL);
INSERT INTO `x_user` VALUES (10, 'testvue2', '123456', NULL, NULL, '123456', NULL, NULL);
INSERT INTO `x_user` VALUES (11, 'testserver', '123', NULL, NULL, '123', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
