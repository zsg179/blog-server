/*
Navicat MySQL Data Transfer

Source Server         : docker
Source Server Version : 80020
Source Host           : 120.25.207.108:3306
Source Database       : blogdb

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-08-16 22:54:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '博文ID',
  `user_id` bigint NOT NULL COMMENT '发表用户ID',
  `tag_id` bigint DEFAULT NULL COMMENT '分类id',
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博文标题',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '摘要',
  `img` varchar(255) DEFAULT NULL COMMENT '博客封面图片地址',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博文内容',
  `views` bigint NOT NULL DEFAULT '0' COMMENT '浏览量',
  `comments` bigint NOT NULL DEFAULT '0' COMMENT '评论总数',
  `likes` bigint DEFAULT '0' COMMENT '点赞量',
  `status` tinyint(1) DEFAULT '1' COMMENT '博客状态 1：正常，-1：已删除',
  `is_carousel` tinyint(1) DEFAULT '-1' COMMENT '是否为轮播图 1：是  -1：不是',
  `is_recommend` tinyint(1) DEFAULT '-1' COMMENT '是否为推荐文章 1：是 -1 ：不是',
  `created` datetime DEFAULT NULL COMMENT '发表时间',
  `updated` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('2', '1', '1', 'jquery遍历方法nextUntil() 和 prevUntil()', 'jquery遍历方法 nextUntil() 和 prevUntil()', './static/article2.jpg', 'jquery遍历方法 nextUntil() 和 prevUntil()', '10', '20', '20', '1', '1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('3', '1', '2', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article3.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '1000', '20', '20', '1', '1', '1', '2020-07-31 16:30:39', '2020-07-31 17:47:35');
INSERT INTO `article` VALUES ('4', '1', '2', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article4.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10000', '20', '20', '1', '1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('5', '1', '2', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('6', '1', '3', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('7', '1', '3', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('8', '1', '4', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('9', '1', '5', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('10', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('11', '1', '6', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('12', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('13', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('14', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('15', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('16', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `tag_name` varchar(50) DEFAULT NULL COMMENT '分类名',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '前端', '2020-08-09 15:53:43');
INSERT INTO `tag` VALUES ('2', 'java', '2020-08-09 15:54:22');
INSERT INTO `tag` VALUES ('3', '心情随想', '2020-08-09 15:54:34');
INSERT INTO `tag` VALUES ('4', '其他', '2020-08-09 15:54:43');
INSERT INTO `tag` VALUES ('5', '归档', '2020-08-09 15:54:51');
INSERT INTO `tag` VALUES ('6', '留言', '2020-08-09 15:54:59');
INSERT INTO `tag` VALUES ('7', '关于', '2020-08-09 15:55:05');

-- ----------------------------
-- Table structure for zj_comments
-- ----------------------------
DROP TABLE IF EXISTS `zj_comments`;
CREATE TABLE `zj_comments` (
  `comment_id` bigint NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `user_id` bigint NOT NULL COMMENT '发表用户ID',
  `article_id` bigint NOT NULL COMMENT '评论博文ID',
  `comment_like_count` bigint NOT NULL COMMENT '点赞数',
  `comment_date` datetime DEFAULT NULL COMMENT '评论日期',
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `parent_comment_id` bigint NOT NULL COMMENT '父评论ID',
  PRIMARY KEY (`comment_id`) USING BTREE,
  KEY `article_id` (`article_id`) USING BTREE,
  KEY `comment_date` (`comment_date`) USING BTREE,
  KEY `parent_comment_id` (`parent_comment_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zj_comments
-- ----------------------------

-- ----------------------------
-- Table structure for zj_labels
-- ----------------------------
DROP TABLE IF EXISTS `zj_labels`;
CREATE TABLE `zj_labels` (
  `label_id` bigint NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `label_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名称',
  `label_alias` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签别名',
  `label_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签描述',
  PRIMARY KEY (`label_id`) USING BTREE,
  KEY `label_name` (`label_name`) USING BTREE,
  KEY `label_alias` (`label_alias`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zj_labels
-- ----------------------------

-- ----------------------------
-- Table structure for zj_set_artitle_label
-- ----------------------------
DROP TABLE IF EXISTS `zj_set_artitle_label`;
CREATE TABLE `zj_set_artitle_label` (
  `article_id` bigint NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `label_id` bigint NOT NULL,
  PRIMARY KEY (`article_id`) USING BTREE,
  KEY `label_id` (`label_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zj_set_artitle_label
-- ----------------------------

-- ----------------------------
-- Table structure for zj_set_artitle_sort
-- ----------------------------
DROP TABLE IF EXISTS `zj_set_artitle_sort`;
CREATE TABLE `zj_set_artitle_sort` (
  `article_id` bigint NOT NULL COMMENT '文章ID',
  `sort_id` bigint NOT NULL COMMENT '分类ID',
  PRIMARY KEY (`article_id`,`sort_id`) USING BTREE,
  KEY `sort_id` (`sort_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zj_set_artitle_sort
-- ----------------------------

-- ----------------------------
-- Table structure for zj_sorts
-- ----------------------------
DROP TABLE IF EXISTS `zj_sorts`;
CREATE TABLE `zj_sorts` (
  `sort_id` bigint NOT NULL COMMENT '分类ID',
  `sort_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `sort_alias` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类别名',
  `sort_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类描述',
  `parent_sort_id` bigint NOT NULL COMMENT '父分类ID',
  PRIMARY KEY (`sort_id`) USING BTREE,
  KEY `sort_name` (`sort_name`) USING BTREE,
  KEY `sort_alias` (`sort_alias`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zj_sorts
-- ----------------------------

-- ----------------------------
-- Table structure for zj_user_friends
-- ----------------------------
DROP TABLE IF EXISTS `zj_user_friends`;
CREATE TABLE `zj_user_friends` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '标识ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `user_friends_id` bigint NOT NULL COMMENT '好友ID',
  `user_note` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '好友备注',
  `user_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '好友状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zj_user_friends
-- ----------------------------

-- ----------------------------
-- Table structure for zj_users
-- ----------------------------
DROP TABLE IF EXISTS `zj_users`;
CREATE TABLE `zj_users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户IP',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `user_password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `user_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户邮箱',
  `user_profile_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户头像',
  `user_registration_time` datetime DEFAULT NULL COMMENT '注册时间',
  `user_birthday` date DEFAULT NULL COMMENT '用户生日',
  `user_age` tinyint DEFAULT NULL COMMENT '用户年龄',
  `user_telephone_number` int NOT NULL COMMENT '用户手机号',
  `user_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `user_name` (`user_name`) USING BTREE,
  KEY `user_nickname` (`user_nickname`) USING BTREE,
  KEY `user_email` (`user_email`) USING BTREE,
  KEY `user_telephone_number` (`user_telephone_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zj_users
-- ----------------------------
