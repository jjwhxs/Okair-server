-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: okair
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Temporary view structure for view `allassets`
--

DROP TABLE IF EXISTS `allassets`;
/*!50001 DROP VIEW IF EXISTS `allassets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `allassets` AS SELECT 
 1 AS `id`,
 1 AS `assetsCode`,
 1 AS `assetsType`,
 1 AS `nameCn`,
 1 AS `comment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `alltranslist`
--

DROP TABLE IF EXISTS `alltranslist`;
/*!50001 DROP VIEW IF EXISTS `alltranslist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `alltranslist` AS SELECT 
 1 AS `id`,
 1 AS `assetsid`,
 1 AS `assetstype`,
 1 AS `batchno`,
 1 AS `transtype`,
 1 AS `count`,
 1 AS `price`,
 1 AS `handleremp`,
 1 AS `handlerEmpName`,
 1 AS `instocktime`,
 1 AS `targetemp`,
 1 AS `targetEmpName`,
 1 AS `comment`,
 1 AS `createtime`,
 1 AS `createuser`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `assets_car`
--

DROP TABLE IF EXISTS `assets_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_car` (
  `id` varchar(40) NOT NULL,
  `assetsCode` varchar(32) NOT NULL,
  `assetsType` int(11) NOT NULL,
  `nameCn` varchar(45) DEFAULT ' ',
  `engineInfo` varchar(64) NOT NULL DEFAULT ' ',
  `carBrand` varchar(45) NOT NULL DEFAULT ' ',
  `carModel` varchar(45) NOT NULL DEFAULT ' ',
  `powerType` varchar(16) DEFAULT ' ' COMMENT '动力类型',
  `sitCount` int(11) DEFAULT '0',
  `autoTrans` tinyint(4) DEFAULT '1',
  `comment` text,
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` varchar(45) DEFAULT ' ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_car`
--

LOCK TABLES `assets_car` WRITE;
/*!40000 ALTER TABLE `assets_car` DISABLE KEYS */;
INSERT INTO `assets_car` VALUES ('1c382f50-3944-4cec-9fc7-2b7715a5918b','CAR020103-000005',11,'路虎','SEF252','路虎','极光','-1',5,1,'','2017-08-11 08:36:30',' '),('1e4a018e-3175-45ff-a675-98528395b932','CAR020301-000008',13,'大板车','DS7585','奔驰','FT-Y','18',20,0,'大班车','2017-08-11 07:31:11',' '),('2431283d-deeb-447b-9a2b-956d3b221378','CAR020103-000010',11,'去去去','1456151','凄凄切切','凄凄切切','18',5,1,'','2017-08-12 06:17:51',' '),('33473c4b-6ff9-4146-b0ce-44d3bb41a07b','CAR020203-000011',12,'什么 啊','123','那你看','那你看','16',5,1,'','2017-08-12 09:04:32',' '),('546523e2-e1e8-4d35-88a9-7671aca6a551','CAR020202-000003',12,'大牵引','SDSA45852','红旗','冲锋','16',2,0,'','2017-08-11 08:29:02',' '),('7007cc8f-62c1-464a-b8cf-59ff039d0b72','CAR020103-000008',11,'SUV','DS5241','路虎','揽胜','18',5,0,'','2017-08-11 08:45:55',' '),('b9b0d626-698d-4695-a5c6-126ae94a8555','CAR020204-000007',12,'灭火车','WDF8546','奔驰','救火员','16',2,0,'','2017-08-11 08:42:21',' '),('b9be6355-d3c6-440a-8a29-58cca88a548f','CAR020202-000012',12,'test','test','test','test','15',5,1,'test','2017-08-13 07:24:31',' '),('c93ea3f8-bce8-48de-9978-5277dc145f86','CAR020302-000009',13,'抢我','AAA2525','抢我','抢我','16',5,0,'AAA','2017-08-12 06:14:52',' '),('e25fe510-8c5e-4375-866c-5bb6e7a3781e','CAR020202-000004',12,'大牵引车','SED4585','东方','赫赫','16',3,0,'','2017-08-11 08:32:00',' '),('f011ffd7-4983-4b99-8c3f-abd41b878a91','CAR020102-000006',11,'夏利','SDS525','现代','跃进','15',5,0,'','2017-08-11 08:38:36',' '),('f5e1ebe3-ab8b-4bdc-994c-cddd1f764df1','CAR020101-000001',11,'领导用车','DD238474736262534','奥迪','A6L','15',5,1,NULL,'2016-01-10 08:12:08',' '),('f5e1ebe3-ab8b-4bdc-994c-cddd1f764df2','CAR020101-000002',11,'部门经理用车','DE22384858843','本田','雅阁','15',5,1,NULL,'2016-01-10 08:12:08',' ');
/*!40000 ALTER TABLE `assets_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_finance`
--

DROP TABLE IF EXISTS `assets_finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_finance` (
  `id` varchar(40) NOT NULL,
  `assetsCode` varchar(32) NOT NULL COMMENT '资产编码',
  `assetsType` int(11) NOT NULL COMMENT '资产类型',
  `nameCn` varchar(45) NOT NULL DEFAULT ' ' COMMENT '名称',
  `unitAmount` decimal(10,2) DEFAULT '0.00' COMMENT '单位金额',
  `financeType` varchar(45) DEFAULT ' ' COMMENT '金融资产类型',
  `organization` varchar(45) DEFAULT ' ' COMMENT '托管机构',
  `cycle` int(11) DEFAULT '0' COMMENT '托管周期（单位：月）',
  `autoCycle` int(11) DEFAULT '1' COMMENT '自动续期，1：自动，0：不自动',
  `refBankNo` varchar(45) DEFAULT ' ' COMMENT '关联银行账号',
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` varchar(45) DEFAULT ' ' COMMENT '创建用户',
  `comment` text COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_finance`
--

LOCK TABLES `assets_finance` WRITE;
/*!40000 ALTER TABLE `assets_finance` DISABLE KEYS */;
INSERT INTO `assets_finance` VALUES ('3ea47311-dfa8-484d-8457-a18affd214a1','FIN040102-000001',63,'公司流动资金',1000000.00,'20','建设银行',1,1,'622500389344483','2016-01-10 08:15:04',' ',NULL),('3ea47311-dfa8-484d-8457-a18affd214a2','FIN040102-000002',63,'子公司流动资产',100000.00,'20','交通银行',1,0,'6883737474838','2016-01-10 08:15:04',' ',NULL);
/*!40000 ALTER TABLE `assets_finance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_normal`
--

DROP TABLE IF EXISTS `assets_normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_normal` (
  `id` varchar(40) NOT NULL,
  `assetsCode` varchar(32) NOT NULL,
  `assetsType` int(11) NOT NULL,
  `nameCn` varchar(45) DEFAULT ' ',
  `normalBrand` varchar(45) DEFAULT ' ' COMMENT '资产品牌',
  `normalModel` varchar(45) DEFAULT ' ' COMMENT '资产型号',
  `packageType` int(11) DEFAULT '0' COMMENT '包装类型',
  `supplier` varchar(45) DEFAULT ' ' COMMENT '供货商',
  `supplierTel` varchar(45) DEFAULT ' ' COMMENT '供货商电话',
  `consumptive` tinyint(4) DEFAULT '0' COMMENT '是否为耗材',
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` varchar(45) DEFAULT ' ',
  `comment` varchar(45) DEFAULT NULL COMMENT '资产说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_normal`
--

LOCK TABLES `assets_normal` WRITE;
/*!40000 ALTER TABLE `assets_normal` DISABLE KEYS */;
INSERT INTO `assets_normal` VALUES ('1f6c1cb1-0eeb-4b6a-83b4-33f26efbbbd3','NOR010102-000006',21,'HP打印机','惠普','A4打印机',14,'京东','1233',0,'2017-11-27 09:19:29',' ','联网打印'),('212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001',26,'办公椅','宜家','DM-22123',13,'宜家北京','22383837',1,NULL,NULL,'测试信息录入'),('3c9b3a49-2ac3-4d5d-99e4-85de2e455cfb','NOR010502-000004',37,'HP笔记本电脑','佳能','i5 8G 256SSD',14,'京东','123',0,'2017-11-27 09:13:05',' ','好电脑'),('3ea47311-dfa8-484d-8457-a18affd214a0','NOR010502-000003',37,'教师用电脑','联想','Thinkpad E431',13,'联想中国','233432423',0,'2016-01-07 17:45:50',NULL,'快要淘汰了'),('6a07a98b-0f29-4852-9bf8-72fa584f09c8','NOR010102-000002',21,'HP激光打印','HP','DE33384',13,'HP中国','01023384848',0,'2016-01-07 17:42:02',NULL,''),('d1ba7bfb-1d16-4ae5-bb85-8c74c5166b7e','NOR010501-000007',36,'SVN服务器','群晖','218j',14,'京东','23333323',0,'2017-11-28 08:34:19',' ',''),('dca0a9e6-bbf5-46ef-a796-e12240533028','NOR010502-000005',37,'联想E470c','联想ThinkPad','E470c i5 14寸 8G 500G',14,'京东','1233',0,'2017-11-27 09:15:50',' ','也不错');
/*!40000 ALTER TABLE `assets_normal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_permanent`
--

DROP TABLE IF EXISTS `assets_permanent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_permanent` (
  `id` varchar(40) NOT NULL,
  `assetsCode` varchar(32) NOT NULL,
  `assetsType` int(11) NOT NULL,
  `city` varchar(45) DEFAULT ' ' COMMENT '所在城市',
  `address` varchar(128) DEFAULT ' ' COMMENT '具体地址',
  `scale` int(11) DEFAULT '0' COMMENT '出资比例',
  `util` varchar(8) DEFAULT ' ' COMMENT '购置单位',
  `area` decimal(10,2) DEFAULT '0.00' COMMENT '面积',
  `equityType` int(11) DEFAULT '0' COMMENT '房屋类型',
  `nameCn` varchar(45) DEFAULT ' ' COMMENT '资产名称',
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` varchar(45) DEFAULT ' ',
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_permanent`
--

LOCK TABLES `assets_permanent` WRITE;
/*!40000 ALTER TABLE `assets_permanent` DISABLE KEYS */;
INSERT INTO `assets_permanent` VALUES ('6a07a98b-0f29-4852-9bf8-72fa584f09c1','PER030102-000001',52,'2','南开区华苑小区',100,'总公司',100.00,23,'职工宿舍','2016-01-10 08:19:05',' ',NULL),('6a07a98b-0f29-4852-9bf8-72fa584f09c2','PER030102-000002',52,'2','西青区时代奥城',80,'分公司',80.00,23,'领导宿舍','2016-01-10 08:19:05',' ',NULL);
/*!40000 ALTER TABLE `assets_permanent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetstrans`
--

DROP TABLE IF EXISTS `assetstrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetstrans` (
  `id` varchar(40) NOT NULL,
  `assetsId` varchar(40) NOT NULL,
  `batchNo` varchar(45) NOT NULL,
  `transType` varchar(8) NOT NULL DEFAULT '1' COMMENT '资产流转方向，1：入库、2：出库、3：报废\\出售、4：转移',
  `count` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '数量',
  `price` decimal(12,2) DEFAULT '0.00' COMMENT '单价',
  `handlerEmp` varchar(45) DEFAULT ' ',
  `instockTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `targetEmp` varchar(45) DEFAULT ' ' COMMENT '接手员工',
  `comment` varchar(45) DEFAULT ' ',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` varchar(45) DEFAULT ' ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetstrans`
--

LOCK TABLES `assetstrans` WRITE;
/*!40000 ALTER TABLE `assetstrans` DISABLE KEYS */;
INSERT INTO `assetstrans` VALUES ('00e81b8d-076d-4cbb-b6fa-c0ca184d4bd2','1c382f50-3944-4cec-9fc7-2b7715a5918b','CAR020103-000005-1502757244837','4',1.00,10000.00,'5','2017-08-14 16:00:00','8','','2017-08-15 00:35:43',' '),('06f2fb5f-100a-4d83-8c1f-bb45350e2629','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451756047952','1',9.00,75.00,'11','2016-01-02 16:00:00',NULL,'','2016-01-02 17:34:07',NULL),('09dbf196-61a0-4e66-ab84-deaa828352b2','1c382f50-3944-4cec-9fc7-2b7715a5918b','CAR020103-000005-1502757244837','2',3.00,10000.00,'1','2017-08-14 16:00:00','2','','2017-08-15 00:34:23',' '),('46d93cee-ea58-4077-a4c3-f76a1ca8545c','e25fe510-8c5e-4375-866c-5bb6e7a3781e','CAR020202-000004-1502757850034','4',1.00,50000.00,'6','2017-08-14 16:00:00','4','','2017-08-15 00:45:17',' '),('4cca5f39-69b9-4e12-9ad0-842dddb6c5af','3ea47311-dfa8-484d-8457-a18affd214a0','NOR010502-000003-1452188787399','1',10.00,4899.00,'10','2016-01-07 16:00:00',NULL,'','2016-01-07 17:46:27',NULL),('64f1354d-316b-4d07-a39a-89f257b73249','1f6c1cb1-0eeb-4b6a-83b4-33f26efbbbd3','NOR010102-000006-1512144624328','1',2.00,4980.00,' ','2017-12-01 16:10:24',' ','','2017-12-01 16:10:24',' '),('6ca84140-44a9-4ec9-9986-dde43cf609ce','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451754124317','2',3.00,70.00,'10','2016-01-06 16:00:00','2','','2016-01-07 03:11:09',NULL),('78106761-f91a-45b2-8cbb-aa7eb2ff86e9','3c9b3a49-2ac3-4d5d-99e4-85de2e455cfb','NOR010502-000004-1512145300831','1',10.00,2000.00,' ','2017-12-01 16:21:40',' ','','2017-12-01 16:21:40',' '),('871d3305-4c8d-4959-9f62-a7f2402390f2','1c382f50-3944-4cec-9fc7-2b7715a5918b','CAR020103-000005-1502757244837','2',3.00,10000.00,'1','2017-08-14 16:00:00','5','','2017-08-15 00:34:44',' '),('87f4c9ab-42a8-49c8-a89b-cac2b8a1301d','1c382f50-3944-4cec-9fc7-2b7715a5918b','CAR020103-000005-1502757244837','4',1.00,10000.00,'5','2017-08-14 16:00:00','12','','2017-08-15 00:37:18',' '),('a03345a9-4cbe-42db-8346-220b9ba6315c','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451754124317','4',1.00,70.00,'2','2016-12-28 16:00:00','3','','2016-12-29 07:41:59',NULL),('b3dccc6d-1f75-409b-b7a9-31d757c1bf40','1c382f50-3944-4cec-9fc7-2b7715a5918b','CAR020103-000005-1502757244837','1',10.00,10000.00,'1','2017-08-14 16:00:00',' ','','2017-08-15 00:34:04',' '),('ba50d5a6-40d5-4fad-8ec9-5d4bc452cbd2','e25fe510-8c5e-4375-866c-5bb6e7a3781e','CAR020202-000004-1502757850034','2',3.00,50000.00,'7','2017-08-14 16:00:00','6','','2017-08-15 00:44:56',' '),('bcbe7b1d-5016-4594-b701-03e453bc365e','3ea47311-dfa8-484d-8457-a18affd214a0','NOR010502-000003-1482997201881','1',10.00,4900.00,'10','2016-12-28 16:00:00',NULL,'','2016-12-29 07:40:01',NULL),('c9b0c18e-2cd0-4c06-a903-cd310bd4062a','e25fe510-8c5e-4375-866c-5bb6e7a3781e','CAR020202-000004-1502757850034','1',15.00,50000.00,'7','2017-08-14 16:00:00',' ','','2017-08-15 00:44:10',' '),('cb633070-c52b-430e-8b08-b7e1a8f65b30','e25fe510-8c5e-4375-866c-5bb6e7a3781e','CAR020202-000004-1502757850034','4',1.00,50000.00,'10','2017-08-14 16:00:00','7','','2017-08-15 00:55:09',' '),('d46b324c-0acc-4f95-a7d5-c67bf735e616','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451754124317','2',2.00,70.00,'10','2016-01-06 16:00:00','1','222','2016-01-07 03:12:33',NULL),('d4cf94fc-b39a-4367-9697-d85f00dfd83f','3ea47311-dfa8-484d-8457-a18affd214a0','NOR010502-000003-1483000431710','1',5.00,4900.00,'10','2016-12-28 16:00:00',NULL,'','2016-12-29 08:33:51',NULL),('d6fc1074-9261-488e-82bb-9d4f088746df','6a07a98b-0f29-4852-9bf8-72fa584f09c8','NOR010102-000002-1452353456339','1',15.00,1980.00,'11','2016-01-08 16:00:00',NULL,'','2016-01-09 15:30:56',NULL),('d76726bf-00c7-4d67-9e2f-3c7bb7b62d02','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451831236261','2',9.00,100.00,'11','2016-01-07 16:00:00','5','','2016-01-07 16:12:28',NULL),('e06f1bcb-9d14-41ce-ae76-255a7379f90c','3ea47311-dfa8-484d-8457-a18affd214a0','NOR010502-000003-1452188787399','2',1.00,4899.00,'10','2017-01-09 16:00:00','5','','2017-01-10 06:55:44',NULL),('e438070c-aabc-49f6-b5f7-b7b88fb13221','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451831236261','4',1.00,100.00,'5','2017-08-14 16:00:00','1','','2017-08-15 01:25:48',NULL),('ee62d29e-b795-43d2-84d9-b20277a6f810','e25fe510-8c5e-4375-866c-5bb6e7a3781e','CAR020202-000004-1502757850034','2',6.00,50000.00,'7','2017-08-14 16:00:00','10','','2017-08-15 00:44:31',' '),('f442df9f-83a6-4e07-b83c-d50c18e1eff7','3ea47311-dfa8-484d-8457-a18affd214a0','NOR010502-000003-1452188787399','2',1.00,4899.00,'10','2016-12-28 16:00:00','3','','2016-12-29 07:41:00',NULL),('f5e1ebe3-ab8b-4bdc-994c-cddd1f764dfe','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451754124317','1',10.00,70.00,'10','2016-01-02 16:00:00',NULL,NULL,NULL,NULL),('f8ba34fe-ba9d-4e92-ac0d-a46322f16bb8','3ea47311-dfa8-484d-8457-a18affd214a0','NOR010502-000003-1452188787399','4',1.00,4899.00,'5','2017-08-14 16:00:00','4','','2017-08-15 01:26:06',NULL),('f9d04b0c-dcfd-4aec-b52a-9840246b5044','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451754124317','4',2.00,70.00,'10','2016-01-07 16:00:00','4','','2016-01-07 16:58:02',NULL),('fadc6ffa-a221-452b-ab31-ad9e123db43c','212ee9df-c755-44ba-9bb2-a5d3a61b3ec0','NOR010203-000001-1451831236261','1',9.00,100.00,'11','2016-01-02 16:00:00',NULL,'测试','2016-01-03 14:27:16',NULL);
/*!40000 ALTER TABLE `assetstrans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `nameCn` varchar(45) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'01',NULL,'普通资产',NULL),(2,'02',NULL,'车辆',NULL),(3,'03',NULL,'不动产',NULL),(4,'04',NULL,'金融资产',NULL),(5,'0101',1,'办公设备',NULL),(6,'0102',1,'家具',NULL),(7,'0103',1,'办公耗材',NULL),(8,'0104',1,'测量仪器',NULL),(9,'0105',1,'电脑',NULL),(10,'0106',1,'卫生洁具',NULL),(11,'0201',2,'普通车辆',NULL),(12,'0202',2,'工程车辆',NULL),(13,'0203',2,'通勤班车',NULL),(14,'0301',3,'住宅',NULL),(15,'0302',3,'办公',NULL),(16,'0303',3,'仓储',NULL),(17,'0401',4,'银行',NULL),(18,'0402',4,'金融投资',NULL),(19,'0403',4,'借贷',NULL),(20,'010101',5,'复印机',NULL),(21,'010102',5,'打印机',NULL),(22,'010103',5,'碎纸机',NULL),(23,'010104',5,'传真机',NULL),(24,'010201',6,'老板桌',NULL),(25,'010202',6,'老板椅',NULL),(26,'010203',6,'办公椅',NULL),(27,'010204',6,'办公桌',NULL),(28,'010205',6,'会议桌',NULL),(29,'010206',6,'白板',NULL),(30,'010301',7,'水笔（黑）',NULL),(31,'010302',7,'打印纸',NULL),(32,'010303',7,'硒鼓',NULL),(33,'010304',7,'记事本',NULL),(34,'010401',8,'激光测距仪',NULL),(35,'010402',8,'声波测距仪',NULL),(36,'010501',9,'台式机',NULL),(37,'010502',9,'笔记本电脑',NULL),(38,'010601',10,'吸尘器',NULL),(39,'010602',10,'其他清扫设备',NULL),(40,'020101',11,'三厢轿车',NULL),(41,'020102',11,'两厢轿车',NULL),(42,'020103',11,'SUV车辆',NULL),(43,'020201',12,'皮卡',NULL),(44,'020202',12,'牵引车',NULL),(45,'020203',12,'载重车辆',NULL),(46,'020204',12,'特种灭火车',NULL),(47,'020301',13,'MPV',NULL),(48,'020302',13,'17座轻型客车',NULL),(49,'020303',13,'中型客车',NULL),(50,'020304',13,'大型客车',NULL),(51,'030101',14,'洋房',NULL),(52,'030102',14,'高层',NULL),(53,'030103',14,'独栋别墅',NULL),(54,'030104',14,'Loft',NULL),(55,'030201',15,'写字间',NULL),(56,'030202',15,'办公楼',NULL),(57,'030203',15,'商住两用',NULL),(58,'030301',16,'维修车间',NULL),(59,'030302',16,'露天堆场',NULL),(60,'030303',16,'低温冷藏',NULL),(61,'030304',16,'封闭式仓库',NULL),(62,'040101',17,'活期存款',NULL),(63,'040102',17,'定期存款',NULL),(64,'040103',17,'理财产品',NULL),(65,'040104',17,'协议存款',NULL),(66,'040201',18,'债券',NULL),(67,'040202',18,'股票',NULL),(68,'040203',18,'基金',NULL),(69,'040301',19,'短期债权',NULL),(70,'040302',19,'长期债权',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `categoryparent`
--

DROP TABLE IF EXISTS `categoryparent`;
/*!50001 DROP VIEW IF EXISTS `categoryparent`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `categoryparent` AS SELECT 
 1 AS `parentId`,
 1 AS `nameCn`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `checkinlist`
--

DROP TABLE IF EXISTS `checkinlist`;
/*!50001 DROP VIEW IF EXISTS `checkinlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `checkinlist` AS SELECT 
 1 AS `id`,
 1 AS `assetsid`,
 1 AS `assetsNameCn`,
 1 AS `assetsCode`,
 1 AS `assetstype`,
 1 AS `batchno`,
 1 AS `transtype`,
 1 AS `count`,
 1 AS `currentAmount`,
 1 AS `price`,
 1 AS `handleremp`,
 1 AS `handlerEmpName`,
 1 AS `instocktime`,
 1 AS `targetemp`,
 1 AS `targetEmpName`,
 1 AS `comment`,
 1 AS `createtime`,
 1 AS `createuser`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `checkoutlist`
--

DROP TABLE IF EXISTS `checkoutlist`;
/*!50001 DROP VIEW IF EXISTS `checkoutlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `checkoutlist` AS SELECT 
 1 AS `id`,
 1 AS `assetsid`,
 1 AS `assetsNameCn`,
 1 AS `assetsCode`,
 1 AS `assetstype`,
 1 AS `batchno`,
 1 AS `transtype`,
 1 AS `currentAmount`,
 1 AS `count`,
 1 AS `price`,
 1 AS `handleremp`,
 1 AS `handlerEmpName`,
 1 AS `instocktime`,
 1 AS `targetemp`,
 1 AS `targetEmpName`,
 1 AS `comment`,
 1 AS `createtime`,
 1 AS `createuser`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `destroylist`
--

DROP TABLE IF EXISTS `destroylist`;
/*!50001 DROP VIEW IF EXISTS `destroylist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `destroylist` AS SELECT 
 1 AS `id`,
 1 AS `assetsid`,
 1 AS `assetstype`,
 1 AS `batchno`,
 1 AS `transtype`,
 1 AS `count`,
 1 AS `price`,
 1 AS `handleremp`,
 1 AS `handlerEmpName`,
 1 AS `instocktime`,
 1 AS `targetemp`,
 1 AS `targetEmpName`,
 1 AS `comment`,
 1 AS `createtime`,
 1 AS `createuser`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dicttype`
--

DROP TABLE IF EXISTS `dicttype`;
/*!50001 DROP VIEW IF EXISTS `dicttype`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dicttype` AS SELECT 
 1 AS `typeCode`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `empdept`
--

DROP TABLE IF EXISTS `empdept`;
/*!50001 DROP VIEW IF EXISTS `empdept`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `empdept` AS SELECT 
 1 AS `dept`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empNo` varchar(45) NOT NULL,
  `namecn` varchar(45) NOT NULL,
  `reportTo` int(11) DEFAULT NULL,
  `dept` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'BD0010001','刘青',NULL,'北京开发部'),(2,'BD0010002','王海川',1,'北京开发部'),(3,'BD0020003','楚风韩',NULL,'北京人力资源部'),(4,'BD0010004','王光伟',1,'北京开发部'),(5,'BD0030005','曲苗',NULL,'北京财务部'),(6,'BD0010006','君迪',1,'北京开发部'),(7,'TD0010001','田武圣',NULL,'天津开发部'),(8,'TD0010002','王川',7,'天津开发部'),(9,'TD0010003','刘青',7,'天津开发部'),(10,'TD0020004','林晓',NULL,'天津行政事业部'),(11,'BD0040007','王枭',NULL,'北京行政事业部'),(12,'TD0030005','吴光明',NULL,'天津财务部');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `shiftlist`
--

DROP TABLE IF EXISTS `shiftlist`;
/*!50001 DROP VIEW IF EXISTS `shiftlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `shiftlist` AS SELECT 
 1 AS `id`,
 1 AS `assetsid`,
 1 AS `assetstype`,
 1 AS `batchno`,
 1 AS `transtype`,
 1 AS `count`,
 1 AS `price`,
 1 AS `handleremp`,
 1 AS `handlerEmpName`,
 1 AS `instocktime`,
 1 AS `targetemp`,
 1 AS `targetEmpName`,
 1 AS `comment`,
 1 AS `createtime`,
 1 AS `createuser`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sysdictvalue`
--

DROP TABLE IF EXISTS `sysdictvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysdictvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeCode` varchar(16) NOT NULL,
  `value` varchar(45) NOT NULL,
  `display` varchar(45) NOT NULL,
  `desc` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysdictvalue`
--

LOCK TABLES `sysdictvalue` WRITE;
/*!40000 ALTER TABLE `sysdictvalue` DISABLE KEYS */;
INSERT INTO `sysdictvalue` VALUES (1,'city','01','北京',NULL),(2,'city','02','上海',NULL),(3,'city','03','天津',NULL),(4,'city','04','成都',NULL),(5,'city','05','广州',NULL),(6,'packageType','01','桶',NULL),(7,'packageType','02','瓶',NULL),(8,'packageType','03','箱',NULL),(9,'packageType','04','袋',NULL),(10,'packageType','05','盒',NULL),(11,'packageType','06','罐',NULL),(12,'packageType','07','散装',NULL),(13,'packageType','08','套',NULL),(14,'packageType','09','台',NULL),(15,'powerType','01','汽油',NULL),(16,'powerType','02','柴油',NULL),(17,'powerType','03','纯电',NULL),(18,'powerType','04','混动',NULL),(19,'financeType','01','股票',NULL),(20,'financeType','02','定期',NULL),(21,'financeType','03','债券',NULL),(22,'financeType','04','理财',NULL),(23,'equityType','01','私有',NULL),(24,'equityType','02','公产',NULL),(25,'equityType','03','企业产',NULL);
/*!40000 ALTER TABLE `sysdictvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysuser`
--

DROP TABLE IF EXISTS `sysuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `nickName` varchar(45) DEFAULT NULL,
  `role` varchar(16) NOT NULL DEFAULT 'admin',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysuser`
--

LOCK TABLES `sysuser` WRITE;
/*!40000 ALTER TABLE `sysuser` DISABLE KEYS */;
INSERT INTO `sysuser` VALUES (1,'admin','ZwsUcorZkCrsujLiL6T2vQ==','系统管理员','系统管理','2015-12-23 08:09:30'),(2,'normal','ZwsUcorZkCrsujLiL6T2vQ==','普通资产管理员','普通资产','2015-12-23 08:11:18'),(3,'permanent','ZwsUcorZkCrsujLiL6T2vQ==','固定资产管理员','固定资产','2015-12-23 08:11:18'),(4,'car','ZwsUcorZkCrsujLiL6T2vQ==','车辆管理','车辆资产','2015-12-23 08:11:19'),(5,'finance','ZwsUcorZkCrsujLiL6T2vQ==','财务总监','财务资产','2015-12-23 08:11:19');
/*!40000 ALTER TABLE `sysuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sysuserrole`
--

DROP TABLE IF EXISTS `sysuserrole`;
/*!50001 DROP VIEW IF EXISTS `sysuserrole`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `sysuserrole` AS SELECT 
 1 AS `role`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `allassets`
--

/*!50001 DROP VIEW IF EXISTS `allassets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allassets` AS select `assets_normal`.`id` AS `id`,`assets_normal`.`assetsCode` AS `assetsCode`,`assets_normal`.`assetsType` AS `assetsType`,`assets_normal`.`nameCn` AS `nameCn`,`assets_normal`.`comment` AS `comment` from `assets_normal` union select `assets_car`.`id` AS `id`,`assets_car`.`assetsCode` AS `assetsCode`,`assets_car`.`assetsType` AS `assetsType`,`assets_car`.`nameCn` AS `nameCn`,`assets_car`.`comment` AS `comment` from `assets_car` union select `assets_finance`.`id` AS `id`,`assets_finance`.`assetsCode` AS `assetsCode`,`assets_finance`.`assetsType` AS `assetsType`,`assets_finance`.`nameCn` AS `nameCn`,`assets_finance`.`comment` AS `comment` from `assets_finance` union select `assets_permanent`.`id` AS `id`,`assets_permanent`.`assetsCode` AS `assetsCode`,`assets_permanent`.`assetsType` AS `assetsType`,`assets_permanent`.`nameCn` AS `nameCn`,`assets_permanent`.`comment` AS `comment` from `assets_permanent` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alltranslist`
--

/*!50001 DROP VIEW IF EXISTS `alltranslist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alltranslist` AS select `assetstrans`.`id` AS `id`,`assetstrans`.`assetsId` AS `assetsid`,(select `allassets`.`assetsType` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetstype`,`assetstrans`.`batchNo` AS `batchno`,`assetstrans`.`transType` AS `transtype`,`assetstrans`.`count` AS `count`,`assetstrans`.`price` AS `price`,`assetstrans`.`handlerEmp` AS `handleremp`,ifnull((select `employee`.`namecn` from `employee` where (`assetstrans`.`handlerEmp` = `employee`.`id`)),'') AS `handlerEmpName`,`assetstrans`.`instockTime` AS `instocktime`,ifnull(`assetstrans`.`targetEmp`,-(1)) AS `targetemp`,ifnull((select `employee`.`namecn` from `employee` where (`assetstrans`.`targetEmp` = `employee`.`id`)),'') AS `targetEmpName`,ifnull(`assetstrans`.`comment`,'') AS `comment`,ifnull(`assetstrans`.`createTime`,now()) AS `createtime`,ifnull(`assetstrans`.`createUser`,'') AS `createuser` from `assetstrans` order by `assetstrans`.`createTime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `categoryparent`
--

/*!50001 DROP VIEW IF EXISTS `categoryparent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `categoryparent` AS select distinct `c1`.`parentId` AS `parentId`,(select `c2`.`nameCn` from `category` `c2` where (`c2`.`id` = `c1`.`parentId`)) AS `nameCn` from `category` `c1` where (`c1`.`parentId` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `checkinlist`
--

/*!50001 DROP VIEW IF EXISTS `checkinlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `checkinlist` AS select `assetstrans`.`id` AS `id`,`assetstrans`.`assetsId` AS `assetsid`,(select `allassets`.`nameCn` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetsNameCn`,(select `allassets`.`assetsCode` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetsCode`,(select `allassets`.`assetsType` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetstype`,`assetstrans`.`batchNo` AS `batchno`,`assetstrans`.`transType` AS `transtype`,`assetstrans`.`count` AS `count`,(`assetstrans`.`count` - ifnull((select sum(`alltranslist`.`count`) from `alltranslist` where ((`alltranslist`.`batchno` = `assetstrans`.`batchNo`) and (`alltranslist`.`transtype` = 2)) group by `alltranslist`.`batchno`),0)) AS `currentAmount`,`assetstrans`.`price` AS `price`,ifnull(`assetstrans`.`handlerEmp`,'') AS `handleremp`,ifnull((select `employee`.`namecn` from `employee` where (`assetstrans`.`handlerEmp` = `employee`.`id`)),'') AS `handlerEmpName`,ifnull(`assetstrans`.`instockTime`,now()) AS `instocktime`,ifnull(`assetstrans`.`targetEmp`,'') AS `targetemp`,ifnull((select `employee`.`namecn` from `employee` where (`assetstrans`.`targetEmp` = `employee`.`id`)),'') AS `targetEmpName`,ifnull(`assetstrans`.`comment`,'') AS `comment`,ifnull(`assetstrans`.`createTime`,now()) AS `createtime`,ifnull(`assetstrans`.`createUser`,'') AS `createuser` from `assetstrans` where (`assetstrans`.`transType` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `checkoutlist`
--

/*!50001 DROP VIEW IF EXISTS `checkoutlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `checkoutlist` AS select `assetstrans`.`id` AS `id`,`assetstrans`.`assetsId` AS `assetsid`,(select `allassets`.`nameCn` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetsNameCn`,(select `allassets`.`assetsCode` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetsCode`,(select `allassets`.`assetsType` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetstype`,`assetstrans`.`batchNo` AS `batchno`,`assetstrans`.`transType` AS `transtype`,(`assetstrans`.`count` - ifnull((select sum(`alltranslist`.`count`) from `alltranslist` where ((`alltranslist`.`batchno` = `assetstrans`.`batchNo`) and ((`alltranslist`.`transtype` = 3) or (`alltranslist`.`transtype` = 4))) group by `alltranslist`.`batchno`),0)) AS `currentAmount`,`assetstrans`.`count` AS `count`,`assetstrans`.`price` AS `price`,`assetstrans`.`handlerEmp` AS `handleremp`,ifnull((select `employee`.`namecn` from `employee` where (`assetstrans`.`handlerEmp` = `employee`.`id`)),'') AS `handlerEmpName`,`assetstrans`.`instockTime` AS `instocktime`,`assetstrans`.`targetEmp` AS `targetemp`,ifnull((select `employee`.`namecn` from `employee` where (`assetstrans`.`targetEmp` = `employee`.`id`)),'') AS `targetEmpName`,ifnull(`assetstrans`.`comment`,'') AS `comment`,ifnull(`assetstrans`.`createTime`,now()) AS `createtime`,ifnull(`assetstrans`.`createUser`,'') AS `createuser` from `assetstrans` where (`assetstrans`.`transType` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `destroylist`
--

/*!50001 DROP VIEW IF EXISTS `destroylist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `destroylist` AS select `assetstrans`.`id` AS `id`,`assetstrans`.`assetsId` AS `assetsid`,(select `allassets`.`assetsType` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetstype`,`assetstrans`.`batchNo` AS `batchno`,`assetstrans`.`transType` AS `transtype`,`assetstrans`.`count` AS `count`,`assetstrans`.`price` AS `price`,`assetstrans`.`handlerEmp` AS `handleremp`,(select `employee`.`namecn` from `employee` where (`assetstrans`.`handlerEmp` = `employee`.`id`)) AS `handlerEmpName`,`assetstrans`.`instockTime` AS `instocktime`,`assetstrans`.`targetEmp` AS `targetemp`,(select `employee`.`namecn` from `employee` where (`assetstrans`.`targetEmp` = `employee`.`id`)) AS `targetEmpName`,`assetstrans`.`comment` AS `comment`,`assetstrans`.`createTime` AS `createtime`,`assetstrans`.`createUser` AS `createuser` from `assetstrans` where (`assetstrans`.`transType` = 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dicttype`
--

/*!50001 DROP VIEW IF EXISTS `dicttype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dicttype` AS select distinct `sysdictvalue`.`typeCode` AS `typeCode` from `sysdictvalue` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empdept`
--

/*!50001 DROP VIEW IF EXISTS `empdept`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empdept` AS select distinct `employee`.`dept` AS `dept` from `employee` order by `employee`.`dept` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shiftlist`
--

/*!50001 DROP VIEW IF EXISTS `shiftlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shiftlist` AS select `assetstrans`.`id` AS `id`,`assetstrans`.`assetsId` AS `assetsid`,(select `allassets`.`assetsType` from `allassets` where (`allassets`.`id` = `assetstrans`.`assetsId`)) AS `assetstype`,`assetstrans`.`batchNo` AS `batchno`,`assetstrans`.`transType` AS `transtype`,`assetstrans`.`count` AS `count`,`assetstrans`.`price` AS `price`,`assetstrans`.`handlerEmp` AS `handleremp`,(select `employee`.`namecn` from `employee` where (`assetstrans`.`handlerEmp` = `employee`.`id`)) AS `handlerEmpName`,`assetstrans`.`instockTime` AS `instocktime`,`assetstrans`.`targetEmp` AS `targetemp`,(select `employee`.`namecn` from `employee` where (`assetstrans`.`targetEmp` = `employee`.`id`)) AS `targetEmpName`,`assetstrans`.`comment` AS `comment`,`assetstrans`.`createTime` AS `createtime`,`assetstrans`.`createUser` AS `createuser` from `assetstrans` where (`assetstrans`.`transType` = 4) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sysuserrole`
--

/*!50001 DROP VIEW IF EXISTS `sysuserrole`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sysuserrole` AS select distinct `sysuser`.`role` AS `role` from `sysuser` order by `sysuser`.`role` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-07 17:02:41
