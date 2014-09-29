-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 09 月 29 日 16:46
-- 服务器版本: 5.1.69-log
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `yiidemo`
--

-- --------------------------------------------------------

--
-- 表的结构 `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `user_id` smallint(6) NOT NULL COMMENT '作者ID',
  `username` varchar(16) NOT NULL COMMENT '作者名称',
  `date_created` datetime NOT NULL COMMENT '创建时间',
  `date_updated` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文章表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `post`
--

INSERT INTO `post` (`post_id`, `subject`, `content`, `user_id`, `username`, `date_created`, `date_updated`) VALUES
(1, '新总裁张亚勤亮相！介绍百度主要发展方向', '北京时间9月28日消息，百度新总裁张亚勤于当地时间9月27日出席美国硅谷高创会，并发表演讲。这是其离开微软接任百度总裁以来第一次参加公开活动。\r\n', 1, 'Hans', '2014-10-01 00:00:00', '2014-10-01 00:00:00'),
(2, '谷歌放出Android Auto开发文档 揭示更多UI、第三方应用细节', 'Android Auto是谷歌专为汽车所设计的系统，原本计划于2014年推出。直到如今，Android Auto也没有正式发布，所以它的一些细节至今仍不得知。然而在今天，谷歌刚刚在developer.android.com上发布了Android Auto开发文档，这份文档详细介绍了谷歌Android Auto车载平台。\r\n', 1, 'Hans', '2014-10-01 00:00:00', '2014-10-01 00:00:00'),
(3, '黯然离华，Adobe失利的真正原因何在？', '9月24日，Adobe发布官方声明称，Adobe在中国今后将以市场拓展业务为主，因此决定撤销并关闭在中国的研发分公司。研发分公司将在12月底停止运营。Adobe将保留在上海、北京、广州、深圳、香港、台湾销售业务。', 1, 'Hans', '2014-10-01 00:00:00', '2014-10-01 00:00:00'),
(5, '张亚勤透露，现在百度很多的投资项目都放在研发上面', '据悉，在主题为“互联网的物理化”演讲上，张亚勤介绍了百度大脑、百度眼镜、百度筷搜、百度无人汽车、百度机器人、百度直达号等内容，业内人士猜测，这些业务将是张亚勤发展百度的主要方向。\r\n\r\n张亚勤透露，现在百度很多的投资项目都放在研发上面。', 1, 'Hans', '2014-10-01 00:00:00', '2014-10-01 00:00:00'),
(4, '欢迎使用测试demo', '欢迎使用测试demo\r\n这是测试内容', 1, 'Hans', '2014-10-01 00:00:00', '2014-10-01 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL COMMENT '用户名',
  `email` varchar(32) NOT NULL COMMENT '电子邮箱',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `date_created` datetime NOT NULL COMMENT '创建时间',
  `date_last_login` datetime NOT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
