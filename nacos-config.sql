-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: nacos_config
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config_info`
--

DROP TABLE IF EXISTS `config_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `c_use` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `effect` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `c_schema` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfo_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info`
--

LOCK TABLES `config_info` WRITE;
/*!40000 ALTER TABLE `config_info` DISABLE KEYS */;
INSERT INTO `config_info` VALUES (1,'gateway-config','DEFAULT_GROUP','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        },\n        {\n            \"filters\": [],\n            \"id\": \"product-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/product/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-product\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','a0fda957cea7915a095835b04e079e71','2020-04-23 04:47:14','2020-04-23 22:17:46',NULL,'0:0:0:0:0:0:0:1','','','gateway配置','null','null','json','null');
/*!40000 ALTER TABLE `config_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_aggr`
--

DROP TABLE IF EXISTS `config_info_aggr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_info_aggr` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`,`group_id`,`tenant_id`,`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='增加租户字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_aggr`
--

LOCK TABLES `config_info_aggr` WRITE;
/*!40000 ALTER TABLE `config_info_aggr` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_aggr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_beta`
--

DROP TABLE IF EXISTS `config_info_beta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_info_beta` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfobeta_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_beta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_beta`
--

LOCK TABLES `config_info_beta` WRITE;
/*!40000 ALTER TABLE `config_info_beta` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_beta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_tag`
--

DROP TABLE IF EXISTS `config_info_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_info_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfotag_datagrouptenanttag` (`data_id`,`group_id`,`tenant_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_tag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_tag`
--

LOCK TABLES `config_info_tag` WRITE;
/*!40000 ALTER TABLE `config_info_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_tags_relation`
--

DROP TABLE IF EXISTS `config_tags_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_tags_relation` (
  `id` bigint NOT NULL COMMENT 'id',
  `tag_name` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `uk_configtagrelation_configidtag` (`id`,`tag_name`,`tag_type`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_tag_relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_tags_relation`
--

LOCK TABLES `config_tags_relation` WRITE;
/*!40000 ALTER TABLE `config_tags_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_tags_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_capacity`
--

DROP TABLE IF EXISTS `group_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_capacity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='集群、各Group容量信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_capacity`
--

LOCK TABLES `group_capacity` WRITE;
/*!40000 ALTER TABLE `group_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `his_config_info`
--

DROP TABLE IF EXISTS `his_config_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `his_config_info` (
  `id` bigint unsigned NOT NULL,
  `nid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
  `src_user` text COLLATE utf8_bin,
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `op_type` char(10) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`),
  KEY `idx_gmt_create` (`gmt_create`),
  KEY `idx_gmt_modified` (`gmt_modified`),
  KEY `idx_did` (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多租户改造';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `his_config_info`
--

LOCK TABLES `his_config_info` WRITE;
/*!40000 ALTER TABLE `his_config_info` DISABLE KEYS */;
INSERT INTO `his_config_info` VALUES (0,1,'gateway-config','DEFAULT_GROUP','','{\n    \"refreshGatewayRoute\":false,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/meteor1993\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}','ef3e8b95d8f4a71b1e439821bda77023','2010-05-05 00:00:00','2020-04-23 04:47:14',NULL,'0:0:0:0:0:0:0:1','I',''),(1,2,'gateway-config','DEFAULT_GROUP','','{\n    \"refreshGatewayRoute\":false,\n    \"routeList\":[\n        {\n            \"id\":\"github_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/meteor1993\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}','ef3e8b95d8f4a71b1e439821bda77023','2010-05-05 00:00:00','2020-04-23 04:50:03',NULL,'0:0:0:0:0:0:0:1','U',''),(1,3,'gateway-config','DEFAULT_GROUP','','{\n    \"refreshGatewayRoute\":false,\n    \"routeList\":[\n        {\n            \"id\":\"product_route\",\n            \"predicates\":[\n                {\n                    \"name\":\"Path\",\n                    \"args\":{\n                        \"_genkey_0\":\"/product/get_name\"\n                    }\n                }\n            ],\n            \"filters\":[\n\n            ],\n            \"uri\":\"https://github.com\",\n            \"order\":0\n        }\n    ]\n}','99cf5a9f2fb5157f1e0c28fecf6386c4','2010-05-05 00:00:00','2020-04-23 04:51:17',NULL,'0:0:0:0:0:0:0:1','U',''),(1,4,'gateway-config','DEFAULT_GROUP','','{\n\"filters\": [],\n\"id\": \"user_route\",\n\"order\": 0,\n\"predicates\": [{\n    \"args\": {\n        \"pattern\": \"/user\"\n    },\n    \"name\": \"Path\"\n}],\n\"uri\": \"http://www.baidu.com\"\n}','9b56b58795fb52dbbf83473961895398','2010-05-05 00:00:00','2020-04-23 04:51:42',NULL,'0:0:0:0:0:0:0:1','U',''),(1,5,'gateway-config','DEFAULT_GROUP','','{\n    \"filters\": [],\n    \"id\": \"user_route\",\n    \"order\": 0,\n    \"predicates\": [\n        {\n            \"args\": {\n                \"pattern\": \"/user\"\n            },\n            \"name\": \"Path\"\n        }\n    ],\n    \"uri\": \"http://www.baidu.com\"\n}','a9bfbe525eb1ab22fd88ed5df9b9a4c9','2010-05-05 00:00:00','2020-04-23 04:58:44',NULL,'0:0:0:0:0:0:0:1','U',''),(1,6,'gateway-config','DEFAULT_GROUP','','[\n    {\n        \"id\": \"user_route\",\n        \"predicates\": [\n            {\n                \"name\": \"Path\",\n                \"args\": {\n                    \"pattern\": \"/user/**\"\n                }\n            }\n        ],\n        \"uri\": \"https://www.csdn.net/\",\n        \"filters\": []\n    },\n    {\n        \"id\": \"product_route\",\n        \"predicates\": [\n            {\n                \"name\": \"Path\",\n                \"args\": {\n                    \"pattern\": \"/product/**\"\n                }\n            }\n        ],\n        \"uri\": \"http://github.com/\",\n        \"filters\": []\n    }\n]','668c2d8e28cfa87b321f25533b9f37a7','2010-05-05 00:00:00','2020-04-23 05:02:37',NULL,'0:0:0:0:0:0:0:1','U',''),(1,7,'gateway-config','DEFAULT_GROUP','','[\n    {\n        \"id\": \"user_route\",\n        \"predicates\": [\n            {\n                \"name\": \"Path\",\n                \"args\": {\n                    \"pattern\": \"/user/**\"\n                }\n            }\n        ],\n        \"uri\": \"https://www.csdn.net/\",\n        \"filters\": []\n    },\n    {\n        \"id\": \"product_route\",\n        \"predicates\": [\n            {\n                \"name\": \"Path\",\n                \"args\": {\n                    \"pattern\": \"/product/**\"\n                }\n            }\n        ],\n        \"uri\": \"http://github.com/\",\n        \"filters\": []\n    }\n]','668c2d8e28cfa87b321f25533b9f37a7','2010-05-05 00:00:00','2020-04-23 05:03:28',NULL,'0:0:0:0:0:0:0:1','U',''),(1,8,'gateway-config','DEFAULT_GROUP','','{\n\"filters\": [],\n\"id\": \"user_route\",\n\"order\": 0,\n\"predicates\": [{\n    \"args\": {\n        \"pattern\": \"/user\"\n    },\n    \"name\": \"Path\"\n}],\n\"uri\": \"http://www.baidu.com\"\n}','9b56b58795fb52dbbf83473961895398','2010-05-05 00:00:00','2020-04-23 08:04:17',NULL,'0:0:0:0:0:0:0:1','U',''),(1,9,'gateway-config','DEFAULT_GROUP','','{\n\"filters\": [],\n\"id\": \"user_route\",\n\"order\": 0,\n\"predicates\": [{\n    \"args\": {\n        \"pattern\": \"/user\"\n    },\n    \"name\": \"Path\"\n}],\n\"uri\": \"http://www.baidu.com\"\n}','9b56b58795fb52dbbf83473961895398','2010-05-05 00:00:00','2020-04-23 08:11:38',NULL,'0:0:0:0:0:0:0:1','U',''),(1,10,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','9379f46c3df22b084923d67bda33a7b2','2010-05-05 00:00:00','2020-04-23 08:14:12',NULL,'0:0:0:0:0:0:0:1','U',''),(1,11,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','9379f46c3df22b084923d67bda33a7b2','2010-05-05 00:00:00','2020-04-23 08:18:51',NULL,'0:0:0:0:0:0:0:1','U',''),(1,12,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','9379f46c3df22b084923d67bda33a7b2','2010-05-05 00:00:00','2020-04-23 08:19:02',NULL,'0:0:0:0:0:0:0:1','U',''),(1,13,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','9379f46c3df22b084923d67bda33a7b2','2010-05-05 00:00:00','2020-04-23 08:19:13',NULL,'0:0:0:0:0:0:0:1','U',''),(1,14,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.aliyun.cosm/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','ebcf6bbfa9518ebcfefa318990b08850','2010-05-05 00:00:00','2020-04-23 08:20:07',NULL,'0:0:0:0:0:0:0:1','U',''),(1,15,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','9379f46c3df22b084923d67bda33a7b2','2010-05-05 00:00:00','2020-04-23 08:21:04',NULL,'0:0:0:0:0:0:0:1','U',''),(1,16,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.aliyun.com\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','07af7b40b336667eda6b0d47db8625a1','2010-05-05 00:00:00','2020-04-23 08:21:30',NULL,'0:0:0:0:0:0:0:1','U',''),(1,17,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.aliyun.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.aliyun.com\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','07af7b40b336667eda6b0d47db8625a1','2010-05-05 00:00:00','2020-04-23 08:21:45',NULL,'0:0:0:0:0:0:0:1','U',''),(1,18,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.asdasdasdasd.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.dsadasdasd.com\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','f978537d6b53000de5af15b151723edd','2010-05-05 00:00:00','2020-04-23 08:22:01',NULL,'0:0:0:0:0:0:0:1','U',''),(1,19,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.asdasdasdasd.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.dsadasdasd.com\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','f978537d6b53000de5af15b151723edd','2010-05-05 00:00:00','2020-04-23 08:22:12',NULL,'0:0:0:0:0:0:0:1','U',''),(1,20,'gateway-config','DEFAULT_GROUP','','[\n    {\n       \"id\": \"aliyun_route\",\"uri\":\"https://www.asdasdasdasd.com/\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product/**\"},\"name\":\"Path\"}]\n    },\n    {\n       \"id\": \"aliyun_route1\",\"uri\":\"https://www.asdsd.com\",\"order\": 0,\n       \"filters\": [],\n       \"predicates\": \n       [{\"args\": {\"pattern\":\"/product1/**\"},\"name\":\"Path\"}]\n    }\n]\n','2b94da9a7be56c33b5c39e366509039e','2010-05-05 00:00:00','2020-04-23 08:23:44',NULL,'0:0:0:0:0:0:0:1','U',''),(1,21,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.baidu.com\"\n	}','d1f99c9cf2c532c438b095592b8625d5','2010-05-05 00:00:00','2020-04-23 08:24:09',NULL,'0:0:0:0:0:0:0:1','U',''),(1,22,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsdsd.com\"\n	}','944c144bb923776e2389ba5a16ca030b','2010-05-05 00:00:00','2020-04-23 08:27:56',NULL,'0:0:0:0:0:0:0:1','U',''),(1,23,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsdsdsddsd.com\"\n	}','bccdbe8374750d2b900a14bb5972992d','2010-05-05 00:00:00','2020-04-23 08:28:19',NULL,'0:0:0:0:0:0:0:1','U',''),(1,24,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsdsdsddsd.com\"\n	}','bccdbe8374750d2b900a14bb5972992d','2010-05-05 00:00:00','2020-04-23 08:28:29',NULL,'0:0:0:0:0:0:0:1','U',''),(1,25,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sddsd.com\"\n	}','9f25854cc419f4b5c4b41e193dd546d9','2010-05-05 00:00:00','2020-04-23 08:28:58',NULL,'0:0:0:0:0:0:0:1','U',''),(1,26,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsd.com\"\n	}','a5fec407995298c03d9c64bb1fc9aaa1','2010-05-05 00:00:00','2020-04-23 08:29:07',NULL,'0:0:0:0:0:0:0:1','U',''),(1,27,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsd.com\"\n	}','a5fec407995298c03d9c64bb1fc9aaa1','2010-05-05 00:00:00','2020-04-23 08:29:23',NULL,'0:0:0:0:0:0:0:1','U',''),(1,28,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsdsdsdsdsdsd.com\"\n	}','0de90afcb43d0d3c25a5ecd8afa2fd33','2010-05-05 00:00:00','2020-04-23 08:32:42',NULL,'0:0:0:0:0:0:0:1','U',''),(1,29,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.dsdsdsdsdsdsdsd.com\"\n	}','6c64420db0c1f9a2b13fa8f75d4fc361','2010-05-05 00:00:00','2020-04-23 08:33:09',NULL,'0:0:0:0:0:0:0:1','U',''),(1,30,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsdsd.com\"\n	}','944c144bb923776e2389ba5a16ca030b','2010-05-05 00:00:00','2020-04-23 08:34:35',NULL,'0:0:0:0:0:0:0:1','U',''),(1,31,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsdsd.com\",\n	\"refreshGatewayRoute\":\"true\"\n	}','99596b74eae5fba3587102e3a8f654ce','2010-05-05 00:00:00','2020-04-23 08:34:57',NULL,'0:0:0:0:0:0:0:1','U',''),(1,32,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.sdsdsd.com\",\n	\"refreshGatewayRoute\":\"true\"\n	}','99596b74eae5fba3587102e3a8f654ce','2010-05-05 00:00:00','2020-04-23 08:35:07',NULL,'0:0:0:0:0:0:0:1','U',''),(1,33,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.zxcxzczxc.com\",\n	\"refreshGatewayRoute\":\"true\"\n	}','999d73df8c89b7b96c98330a37c7758b','2010-05-05 00:00:00','2020-04-23 08:37:27',NULL,'0:0:0:0:0:0:0:1','U',''),(1,34,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/user\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.zxcxzczxc.com\",\n	\"refreshGatewayRoute\":\"true\"\n	}','999d73df8c89b7b96c98330a37c7758b','2010-05-05 00:00:00','2020-04-23 08:37:40',NULL,'0:0:0:0:0:0:0:1','U',''),(1,35,'gateway-config','DEFAULT_GROUP','','{\n	\"filters\": [],\n	\"id\": \"user_route\",\n	\"order\": 0,\n	\"predicates\": [{\n	    \"args\": {\n	        \"pattern\": \"/sdsdsd\"\n	    },\n	    \"name\": \"Path\"\n	}],\n	\"uri\": \"http://www.zxcxzczxc.com\",\n	\"refreshGatewayRoute\":\"true\"\n	}','c2dd78559dd53ec29c6c5a1c064d2f46','2010-05-05 00:00:00','2020-04-23 08:39:45',NULL,'0:0:0:0:0:0:0:1','U',''),(1,36,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user_route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"http://www.baidu.com\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','68a5c4c98c6bf8bd2bba4895deddecfe','2010-05-05 00:00:00','2020-04-23 08:44:24',NULL,'0:0:0:0:0:0:0:1','U',''),(1,37,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user_route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','9113089abf6dd34c977fff98ee0c30ed','2010-05-05 00:00:00','2020-04-23 08:50:51',NULL,'0:0:0:0:0:0:0:1','U',''),(1,38,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','b475d733b4fdebacc6abb67235ebb7c5','2010-05-05 00:00:00','2020-04-23 08:52:19',NULL,'0:0:0:0:0:0:0:1','U',''),(1,39,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\",\n                        \"pattern\": \"/simple4h-user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','04ce8a67075450067fe6ad2dcb5534a0','2010-05-05 00:00:00','2020-04-23 08:54:44',NULL,'0:0:0:0:0:0:0:1','U',''),(1,40,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\",\n                        \"pattern2\": \"/simple4h-user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','23ebad3ee738e90997590d882f016e82','2010-05-05 00:00:00','2020-04-23 08:55:34',NULL,'0:0:0:0:0:0:0:1','U',''),(1,41,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\",\n                        \"pattern2\": \"/simple4h-usera/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','da99b16744fca4cbcb08782a366cb6cc','2010-05-05 00:00:00','2020-04-23 08:56:49',NULL,'0:0:0:0:0:0:0:1','U',''),(1,42,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\",\n                        \"pattern2\": \"/simple4h-user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','23ebad3ee738e90997590d882f016e82','2010-05-05 00:00:00','2020-04-23 08:57:15',NULL,'0:0:0:0:0:0:0:1','U',''),(1,43,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\",\n                        \"pattern2\": \"/simple4h-user啊啊大大大/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','628d7e207b034fe55b61adaf3e0552cb','2010-05-05 00:00:00','2020-04-23 08:57:32',NULL,'0:0:0:0:0:0:0:1','U',''),(1,44,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','ec2226f2d2547b071e99bd9e521b8dab','2010-05-05 00:00:00','2020-04-23 08:57:53',NULL,'0:0:0:0:0:0:0:1','U',''),(1,45,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\",\n                        \"pattern2\": \"/simple4h-user啊啊大大大/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','628d7e207b034fe55b61adaf3e0552cb','2010-05-05 00:00:00','2020-04-23 09:00:54',NULL,'0:0:0:0:0:0:0:1','U',''),(1,46,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"simple4h-user\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\",\n                        \"pattern2\": \"/simple4h-user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','23ebad3ee738e90997590d882f016e82','2010-05-05 00:00:00','2020-04-23 09:02:02',NULL,'0:0:0:0:0:0:0:1','U',''),(1,47,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\",\n                        \"pattern2\": \"/simple4h-user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','045123673069d5c521f0609c642b17f6','2010-05-05 00:00:00','2020-04-23 09:02:21',NULL,'0:0:0:0:0:0:0:1','U',''),(1,48,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern1\": \"/user/*\",\n                        \"pattern2\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','26eca07f28b9ad757f62708dd06e8104','2010-05-05 00:00:00','2020-04-23 09:05:03',NULL,'0:0:0:0:0:0:0:1','U',''),(1,49,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path1\"\n                },\n                {\n                    \"args\": {\n                        \"pattern1\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path2\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','b11acf1d721cd0bf9027af7c55bcbe0a','2010-05-05 00:00:00','2020-04-23 09:05:20',NULL,'0:0:0:0:0:0:0:1','U',''),(1,50,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path1\"\n                },\n                {\n                    \"args\": {\n                        \"pattern1\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path2\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','b11acf1d721cd0bf9027af7c55bcbe0a','2010-05-05 00:00:00','2020-04-23 09:05:29',NULL,'0:0:0:0:0:0:0:1','U',''),(1,51,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path1\"\n                },\n                {\n                    \"args\": {\n                        \"pattern1\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path22\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','e8a5c68dac148483c261919adf74d867','2010-05-05 00:00:00','2020-04-23 09:05:43',NULL,'0:0:0:0:0:0:0:1','U',''),(1,52,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"pattern1\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','31bdb202f75bbd2435b9d1a0fb892c81','2010-05-05 00:00:00','2020-04-23 09:05:49',NULL,'0:0:0:0:0:0:0:1','U',''),(1,53,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"pattern1\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','31bdb202f75bbd2435b9d1a0fb892c81','2010-05-05 00:00:00','2020-04-23 09:05:56',NULL,'0:0:0:0:0:0:0:1','U',''),(1,54,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"pattern1\": \"/simple4sh/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','951b3fa5530a1d12da25aa1dabd14670','2010-05-05 00:00:00','2020-04-23 09:06:20',NULL,'0:0:0:0:0:0:0:1','U',''),(1,55,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"pattern1\": \"/simple4sh1/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','21a586c6e2e8ac12f18aa46d4678ad78','2010-05-05 00:00:00','2020-04-23 09:06:45',NULL,'0:0:0:0:0:0:0:1','U',''),(1,56,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Patha\"\n                },\n                {\n                    \"args\": {\n                        \"pattern1\": \"/simple4sh1/*\"\n                    },\n                    \"name\": \"Pathc\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','79cc83045cb551f1f1e45a79bb07d93a','2010-05-05 00:00:00','2020-04-23 09:07:58',NULL,'0:0:0:0:0:0:0:1','U',''),(1,57,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Patha\"\n                },\n                {\n                    \"args\": {\n                        \"pattern\": \"/simple4sh1/*\"\n                    },\n                    \"name\": \"Pathc\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','bfa66bcf9dfe8a2e41f318d427ccaf65','2010-05-05 00:00:00','2020-04-23 09:08:11',NULL,'0:0:0:0:0:0:0:1','U',''),(1,58,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"pattern\": \"/simple4sh1/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','188677a4e349bd5c99f63bbe150f94ca','2010-05-05 00:00:00','2020-04-23 09:09:42',NULL,'0:0:0:0:0:0:0:1','U',''),(1,59,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"pattern\": \"/simple4sh1/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','188677a4e349bd5c99f63bbe150f94ca','2010-05-05 00:00:00','2020-04-23 09:09:54',NULL,'0:0:0:0:0:0:0:1','U',''),(1,60,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"pattern\": \"/simple4/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','92dde513018770608d9476b0855c0cd9','2010-05-05 00:00:00','2020-04-23 09:10:19',NULL,'0:0:0:0:0:0:0:1','U',''),(1,61,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"patternasdasd\": \"/simple4/*\"\n                    },\n                    \"name\": \"Pathasdasddasdsad\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','5ec9a70578381d38f3d5d61d3b1d9965','2010-05-05 00:00:00','2020-04-23 09:11:22',NULL,'0:0:0:0:0:0:0:1','U',''),(1,62,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*,/simple4h\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','ac2d999a349c4b35a066f18699e76238','2010-05-05 00:00:00','2020-04-23 09:11:32',NULL,'0:0:0:0:0:0:0:1','U',''),(1,63,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*, /simple42h\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','6a8aee2355ccfa8d8b03c3fca665b5e8','2010-05-05 00:00:00','2020-04-23 09:12:13',NULL,'0:0:0:0:0:0:0:1','U',''),(1,64,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','200036b86b4fcbcd1970e6886d9e5dde','2010-05-05 00:00:00','2020-04-23 09:13:00',NULL,'0:0:0:0:0:0:0:1','U',''),(1,65,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','200036b86b4fcbcd1970e6886d9e5dde','2010-05-05 00:00:00','2020-04-23 09:13:21',NULL,'0:0:0:0:0:0:0:1','U',''),(1,66,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user2/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','ec9ae0ade29e288e0f029174b3c49958','2010-05-05 00:00:00','2020-04-23 09:13:28',NULL,'0:0:0:0:0:0:0:1','U',''),(1,67,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','200036b86b4fcbcd1970e6886d9e5dde','2010-05-05 00:00:00','2020-04-23 09:13:57',NULL,'0:0:0:0:0:0:0:1','U',''),(1,68,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                                {\n                    \"args\": {\n                        \"pattern\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','dbddeca95419f2d62ff8fa5b7bb38632','2010-05-05 00:00:00','2020-04-23 09:14:27',NULL,'0:0:0:0:0:0:0:1','U',''),(1,69,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                {\n                    \"args\": {\n                        \"pattern\": \"/simple4h22/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','0d5669c5e0846d6515d55770592bb54b','2010-05-05 00:00:00','2020-04-23 09:14:58',NULL,'0:0:0:0:0:0:0:1','U',''),(1,70,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*,/simple4h/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','dbe8ea30d16a62171e51789a30ec40ad','2010-05-05 00:00:00','2020-04-23 09:15:42',NULL,'0:0:0:0:0:0:0:1','U',''),(1,71,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','200036b86b4fcbcd1970e6886d9e5dde','2010-05-05 00:00:00','2020-04-23 09:19:16',NULL,'0:0:0:0:0:0:0:1','U',''),(1,72,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','b34992a2abd0878840b231e34af1170a','2010-05-05 00:00:00','2020-04-23 09:19:35',NULL,'0:0:0:0:0:0:0:1','U',''),(1,73,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                },\n                                {\n                    \"args\": {\n                        \"pattern\": \"/123/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','162fc575e1773c7408db0d679685196b','2010-05-05 00:00:00','2020-04-23 09:21:29',NULL,'0:0:0:0:0:0:0:1','U',''),(1,74,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route-1\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        },\n        {\n            \"filters\": [],\n            \"id\": \"user-route-2\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','6b0948cf20bb305c2d7db15b4fa53964','2010-05-05 00:00:00','2020-04-23 09:22:41',NULL,'0:0:0:0:0:0:0:1','U',''),(1,75,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route-1\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        },\n        {\n            \"filters\": [],\n            \"id\": \"user-route-2\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/simple4h/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','6b0948cf20bb305c2d7db15b4fa53964','2010-05-05 00:00:00','2020-04-23 09:26:57',NULL,'0:0:0:0:0:0:0:1','U',''),(1,76,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route-1\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','8c1b40da52984ded4c150aee2cdb0753','2010-05-05 00:00:00','2020-04-23 22:13:23',NULL,'0:0:0:0:0:0:0:1','U',''),(1,77,'gateway-config','DEFAULT_GROUP','','{\n    \"routeList\": [\n        {\n            \"filters\": [],\n            \"id\": \"user-route\",\n            \"order\": 0,\n            \"predicates\": [\n                {\n                    \"args\": {\n                        \"pattern\": \"/user/*\"\n                    },\n                    \"name\": \"Path\"\n                }\n            ],\n            \"uri\": \"lb://simple4h-user\"\n        }\n    ],\n    \"refreshGatewayRoute\": \"true\"\n}','200036b86b4fcbcd1970e6886d9e5dde','2010-05-05 00:00:00','2020-04-23 22:17:46',NULL,'0:0:0:0:0:0:0:1','U','');
/*!40000 ALTER TABLE `his_config_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('nacos','ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_capacity`
--

DROP TABLE IF EXISTS `tenant_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_capacity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数',
  `max_aggr_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='租户容量信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_capacity`
--

LOCK TABLES `tenant_capacity` WRITE;
/*!40000 ALTER TABLE `tenant_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_info`
--

DROP TABLE IF EXISTS `tenant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_info_kptenantid` (`kp`,`tenant_id`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='tenant_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_info`
--

LOCK TABLES `tenant_info` WRITE;
/*!40000 ALTER TABLE `tenant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('nacos','$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24 14:44:06
