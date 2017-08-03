# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 139.196.125.22 (MySQL 5.6.35-log)
# Database: ping
# Generation Time: 2017-08-03 01:55:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table t_authassignment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_authassignment`;

CREATE TABLE `t_authassignment` (
  `itemname` varchar(64) COLLATE utf8_bin NOT NULL,
  `userid` varchar(64) COLLATE utf8_bin NOT NULL,
  `bizrule` text COLLATE utf8_bin,
  `data` text COLLATE utf8_bin,
  PRIMARY KEY (`itemname`,`userid`),
  CONSTRAINT `t_authassignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `t_authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `t_authassignment` WRITE;
/*!40000 ALTER TABLE `t_authassignment` DISABLE KEYS */;

INSERT INTO `t_authassignment` (`itemname`, `userid`, `bizrule`, `data`)
VALUES
	(X'41757468656E74696361746564',X'32',NULL,X'4E3B'),
	(X'41757468656E74696361746564',X'33',NULL,X'4E3B'),
	(X'41757468656E74696361746564',X'34',NULL,X'4E3B'),
	(X'41757468656E74696361746564',X'35',NULL,X'4E3B'),
	(X'61646D696E',X'31',NULL,X'4E3B');

/*!40000 ALTER TABLE `t_authassignment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_authitem
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_authitem`;

CREATE TABLE `t_authitem` (
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_bin,
  `bizrule` text COLLATE utf8_bin,
  `data` text COLLATE utf8_bin,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `t_authitem` WRITE;
/*!40000 ALTER TABLE `t_authitem` DISABLE KEYS */;

INSERT INTO `t_authitem` (`name`, `type`, `description`, `bizrule`, `data`)
VALUES
	(X'41757468656E74696361746564',2,X'E799BBE5BD95E794A8E688B7',NULL,X'4E3B'),
	(X'4572726F722E2A',1,NULL,NULL,X'4E3B'),
	(X'4775657374',2,NULL,NULL,X'4E3B'),
	(X'496E6465782E496E646578',0,X'E68EA7E588B6E58FB0',NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E2A',1,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E437265617465',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E44656C657465',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E4578706F7274',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E496D706F7274',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E496E646578',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E50726576696577',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E537567676573744368616E6E656C',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E557064617465',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E566961',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E466565646261636B2E56696577',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E4F666665722E2A',1,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E4F666665722E44656C657465',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E4F666665722E456E747279',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E4F666665722E4578706F7274',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E4F666665722E496E646578',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E4F666665722E557064617465',0,NULL,NULL,X'4E3B'),
	(X'496E746572766965772E4F666665722E56696577',0,NULL,NULL,X'4E3B'),
	(X'53657474696E672E53797374656D757365722E2A',1,NULL,NULL,X'4E3B'),
	(X'53657474696E672E53797374656D757365722E437265617465',0,NULL,NULL,X'4E3B'),
	(X'53657474696E672E53797374656D757365722E44656C657465',0,NULL,NULL,X'4E3B'),
	(X'53657474696E672E53797374656D757365722E496E646578',0,NULL,NULL,X'4E3B'),
	(X'53657474696E672E53797374656D757365722E557064617465',0,NULL,NULL,X'4E3B'),
	(X'61646D696E',2,NULL,NULL,X'4E3B');

/*!40000 ALTER TABLE `t_authitem` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_authitemchild
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_authitemchild`;

CREATE TABLE `t_authitemchild` (
  `parent` varchar(64) COLLATE utf8_bin NOT NULL,
  `child` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `t_authitemchild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `t_authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_authitemchild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `t_authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `t_authitemchild` WRITE;
/*!40000 ALTER TABLE `t_authitemchild` DISABLE KEYS */;

INSERT INTO `t_authitemchild` (`parent`, `child`)
VALUES
	(X'41757468656E74696361746564',X'496E6465782E496E646578'),
	(X'41757468656E74696361746564',X'496E746572766965772E466565646261636B2E2A'),
	(X'53657474696E672E53797374656D757365722E2A',X'496E746572766965772E466565646261636B2E2A'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E437265617465'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E44656C657465'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E4578706F7274'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E496D706F7274'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E496E646578'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E50726576696577'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E557064617465'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E566961'),
	(X'496E746572766965772E466565646261636B2E2A',X'496E746572766965772E466565646261636B2E56696577'),
	(X'41757468656E74696361746564',X'496E746572766965772E4F666665722E2A'),
	(X'496E746572766965772E4F666665722E2A',X'496E746572766965772E4F666665722E44656C657465'),
	(X'496E746572766965772E4F666665722E2A',X'496E746572766965772E4F666665722E456E747279'),
	(X'496E746572766965772E4F666665722E2A',X'496E746572766965772E4F666665722E4578706F7274'),
	(X'496E746572766965772E4F666665722E2A',X'496E746572766965772E4F666665722E496E646578'),
	(X'496E746572766965772E4F666665722E2A',X'496E746572766965772E4F666665722E557064617465'),
	(X'496E746572766965772E4F666665722E2A',X'496E746572766965772E4F666665722E56696577'),
	(X'41757468656E74696361746564',X'53657474696E672E53797374656D757365722E2A'),
	(X'53657474696E672E53797374656D757365722E2A',X'53657474696E672E53797374656D757365722E496E646578');

/*!40000 ALTER TABLE `t_authitemchild` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_feedback
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_feedback`;

CREATE TABLE `t_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recruiter` varchar(30) NOT NULL DEFAULT '' COMMENT 'Recruiter',
  `invitation` date NOT NULL COMMENT '邀约日期',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(20) DEFAULT '' COMMENT '手机',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `graduateInstitutions` varchar(100) DEFAULT '' COMMENT '毕业院校',
  `education` varchar(100) DEFAULT '' COMMENT '学历',
  `major` varchar(20) DEFAULT NULL COMMENT '专业',
  `graduationTime` varchar(100) DEFAULT '' COMMENT '毕业时间',
  `experience` varchar(200) DEFAULT '' COMMENT '相关工作经验',
  `famousExperience` varchar(200) DEFAULT '' COMMENT '名企经验',
  `channel` varchar(200) DEFAULT '' COMMENT '渠道',
  `jobCandidates` varchar(100) DEFAULT '' COMMENT '应聘岗位',
  `product` varchar(100) DEFAULT '' COMMENT '产品线',
  `solicitationRecord` mediumtext COMMENT '邀约记录',
  `interviewDate` date DEFAULT NULL COMMENT '面试日期',
  `interviewTime` varchar(100) DEFAULT '' COMMENT '面试时间',
  `isInterview` varchar(100) DEFAULT '' COMMENT '是否参加面试',
  `interviewer` varchar(200) DEFAULT '' COMMENT '面试官',
  `skill` varchar(200) DEFAULT '' COMMENT '技能点',
  `interviewEvaluation` mediumtext COMMENT '面试评价',
  `interviewResults` varchar(100) DEFAULT '' COMMENT '面试结果',
  `isAccept` varchar(255) DEFAULT NULL COMMENT '是否接受Offer',
  `entryDate` date DEFAULT NULL COMMENT '入职日期',
  `isEntry` varchar(10) DEFAULT NULL COMMENT '是否入职',
  `confirmationDate` date DEFAULT NULL COMMENT '转正日期',
  `isConfirmation` varchar(10) DEFAULT NULL COMMENT '是否转正',
  `departureDate` date DEFAULT NULL COMMENT '离职日期',
  `beforeSalary` varchar(10) DEFAULT NULL COMMENT '上一家薪资',
  `salary` varchar(10) DEFAULT NULL COMMENT '欧店云薪资',
  `remark` mediumtext COMMENT '备注',
  `modifeTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDel` enum('Y','N') DEFAULT 'N',
  `resume` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `t_feedback` WRITE;
/*!40000 ALTER TABLE `t_feedback` DISABLE KEYS */;

INSERT INTO `t_feedback` (`id`, `recruiter`, `invitation`, `name`, `phone`, `email`, `graduateInstitutions`, `education`, `major`, `graduationTime`, `experience`, `famousExperience`, `channel`, `jobCandidates`, `product`, `solicitationRecord`, `interviewDate`, `interviewTime`, `isInterview`, `interviewer`, `skill`, `interviewEvaluation`, `interviewResults`, `isAccept`, `entryDate`, `isEntry`, `confirmationDate`, `isConfirmation`, `departureDate`, `beforeSalary`, `salary`, `remark`, `modifeTime`, `isDel`, `resume`)
VALUES
	(1,'demo','2017-05-08','潘培','185****9612','4749****32@qq.com','河南工程学院','大专','服装设计','2008年','3年','否','BOSS直聘','产品经理','','','2017-05-09','14:30','否','刘博','','经验比较浅，对于自己做过的产品数据也不清晰，不合适','未通过','',NULL,'',NULL,'',NULL,'','','','2017-08-03 09:58:37','N',NULL);

/*!40000 ALTER TABLE `t_feedback` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_rights
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_rights`;

CREATE TABLE `t_rights` (
  `itemname` varchar(64) COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`),
  CONSTRAINT `t_rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `t_authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table t_system_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_system_user`;

CREATE TABLE `t_system_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `password` char(32) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `realname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '真实姓名',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '用户状态',
  `modifeTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDel` enum('Y','N') COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统用户表';

LOCK TABLES `t_system_user` WRITE;
/*!40000 ALTER TABLE `t_system_user` DISABLE KEYS */;

INSERT INTO `t_system_user` (`id`, `username`, `password`, `realname`, `add_time`, `status`, `modifeTime`, `isDel`)
VALUES
	(1,X'61646D696E',X'6264613533303161336437646230383630646463646333306163633236303336',X'E8B685E7BAA7E7AEA1E79086E59198','2015-10-17 20:28:27',0,'2017-05-19 10:48:07',X'4E'),
	(2,X'64656D6F',X'6665303163653261376662616338666166616564376339383261303465323239',X'E6BC94E7A4BAE794A8E688B7','2015-10-19 14:56:03',NULL,'2017-05-26 16:32:17',X'4E');

/*!40000 ALTER TABLE `t_system_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_update_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_update_log`;

CREATE TABLE `t_update_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `beforeDate` mediumtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '修改前数据',
  `afterDate` mediumtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '修改后数据',
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `addTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `remark` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='修改日志表';

LOCK TABLES `t_update_log` WRITE;
/*!40000 ALTER TABLE `t_update_log` DISABLE KEYS */;

INSERT INTO `t_update_log` (`id`, `beforeDate`, `afterDate`, `userName`, `addTime`, `remark`)
VALUES
	(1,NULL,X'31',X'64656D6F','2017-07-05 16:54:40',X'E7A1AEE8AEA4E58F82E58AA0E99DA2E8AF95'),
	(2,NULL,X'31',X'64656D6F','2017-07-17 23:47:51',X'E588A0E999A4E794A8E688B7');

/*!40000 ALTER TABLE `t_update_log` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
