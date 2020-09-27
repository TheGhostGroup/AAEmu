-- CREATE DATABASE  IF NOT EXISTS `aaemu_game` /*!40100 DEFAULT CHARACTER SET latin1 */;
-- USE `aaemu_game`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: aaemu_game
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cash_shop_item`
--

DROP TABLE IF EXISTS `cash_shop_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_shop_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'shop_id',
  `uniq_id` int(10) unsigned DEFAULT '0' COMMENT '唯一ID',
  `cash_name` varchar(255) NOT NULL COMMENT '出售名称',
  `main_tab` tinyint(3) unsigned DEFAULT '1' COMMENT '主分类1-6',
  `sub_tab` tinyint(3) unsigned DEFAULT '1' COMMENT '子分类1-7',
  `level_min` tinyint(3) unsigned DEFAULT '0' COMMENT '等级限制',
  `level_max` tinyint(3) unsigned DEFAULT '0' COMMENT '等级限制',
  `item_template_id` int(10) unsigned DEFAULT '0' COMMENT '物品模板id',
  `is_sell` tinyint(1) unsigned DEFAULT '0' COMMENT '是否出售',
  `is_hidden` tinyint(1) unsigned DEFAULT '0' COMMENT '是否隐藏',
  `limit_type` tinyint(3) unsigned DEFAULT '0',
  `buy_count` smallint(5) unsigned DEFAULT '0',
  `buy_type` tinyint(3) unsigned DEFAULT '0',
  `buy_id` int(10) unsigned DEFAULT '0',
  `start_date` datetime DEFAULT '0001-01-01 00:00:00' COMMENT '出售开始',
  `end_date` datetime DEFAULT '0001-01-01 00:00:00' COMMENT '出售截止',
  `type` tinyint(3) unsigned DEFAULT '0' COMMENT '货币类型',
  `price` int(10) unsigned DEFAULT '0' COMMENT '价格',
  `remain` int(10) unsigned DEFAULT '0' COMMENT '剩余数量',
  `bonus_type` int(10) unsigned DEFAULT '0' COMMENT '赠送类型',
  `bouns_count` int(10) unsigned DEFAULT '0' COMMENT '赠送数量',
  `cmd_ui` tinyint(1) unsigned DEFAULT '0' COMMENT '是否限制一人一次',
  `item_count` int(10) unsigned DEFAULT '1' COMMENT '捆绑数量',
  `select_type` tinyint(3) unsigned DEFAULT '0',
  `default_flag` tinyint(3) unsigned DEFAULT '0',
  `event_type` tinyint(3) unsigned DEFAULT '0' COMMENT '活动类型',
  `event_date` datetime DEFAULT '0001-01-01 00:00:00' COMMENT '活动时间',
  `dis_price` int(10) unsigned DEFAULT '0' COMMENT '当前售价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20100054 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='此表来自于代码中的字段并去除重复字段生成。字段名称和内容以代码为准。';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_item`
--

LOCK TABLES `cash_shop_item` WRITE;
/*!40000 ALTER TABLE `cash_shop_item` DISABLE KEYS */;
INSERT INTO `cash_shop_item` VALUES 
(20100011,20100011,'1-1',1,1,0,0,29176,0,0,0,0,0,0,'2019-05-01 14:10:08','2055-06-16 14:10:12',0,874,85,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100012,20100012,'1-2',1,2,0,0,29177,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100013,20100013,'1-3',1,3,0,0,29178,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100014,20100014,'1-4',1,4,0,0,29179,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100015,20100015,'1-5',1,5,0,0,29180,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100016,20100016,'1-6',1,6,0,0,29181,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100017,20100017,'1-7',1,7,0,0,29182,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100018,20100018,'2-1',2,1,0,0,29183,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100019,20100019,'2-1',2,1,0,0,29184,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100020,20100020,'2-2',2,2,0,0,29185,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100021,20100021,'2-3',2,3,0,0,29186,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100022,20100022,'2-4',2,4,0,0,29187,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100023,20100023,'2-5',2,5,0,0,29188,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100024,20100024,'2-6',2,6,0,0,29189,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100025,20100025,'2-7',2,7,0,0,29190,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100026,20100026,'3-1',3,1,0,0,29191,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100027,20100027,'3-2',3,2,0,0,29192,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100028,20100028,'3-3',3,3,0,0,29193,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100029,20100029,'3-4',3,4,0,0,29194,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100030,20100030,'3-5',3,5,0,0,29195,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100031,20100031,'3-6',3,6,0,0,29196,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100032,20100032,'3-7',3,7,0,0,29197,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100033,20100033,'4-1',4,1,0,0,29198,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100034,20100034,'4-2',4,2,0,0,29199,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100035,20100035,'4-3',4,3,0,0,29200,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100036,20100036,'4-4',4,4,0,0,29201,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100037,20100037,'4-6',4,5,0,0,29202,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100038,20100038,'4-6',4,6,0,0,29203,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100039,20100039,'4-7',4,7,0,0,29204,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100040,20100040,'5-1',5,1,0,0,29205,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100041,20100041,'5-2',5,2,0,0,29206,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100042,20100042,'5-3',5,3,0,0,29207,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100043,20100043,'5-4',5,4,0,0,29208,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100044,20100044,'5-5',5,5,0,0,29209,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100045,20100045,'5-6',5,6,0,0,29210,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100046,20100046,'5-7',5,7,0,0,29211,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100047,20100047,'6-1',6,1,0,0,29212,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100048,20100048,'6-2',6,2,0,0,29213,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100049,20100049,'6-3',6,3,0,0,29214,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100050,20100050,'6-4',6,4,0,0,29215,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100051,20100051,'6-5',6,5,0,0,29216,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100052,20100052,'6-6',6,6,0,0,29217,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0),
(20100053,20100053,'6-7',6,7,0,0,29218,0,0,0,0,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,0,0,0,0,0,0,0,0,0,'0001-01-01 00:00:00',0)
;
/*!40000 ALTER TABLE `cash_shop_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aaemu_game'
--

--
-- Dumping routines for database 'aaemu_game'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-07 19:26:13
