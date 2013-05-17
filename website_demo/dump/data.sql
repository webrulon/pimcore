-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pimcore
-- ------------------------------------------------------
-- Server version	5.1.49-3-log

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
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `filename` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  `customSettings` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_fullpath` (`path`,`filename`),
  KEY `parentId` (`parentId`),
  KEY `filename` (`filename`),
  KEY `path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,0,'folder','','/',NULL,1368522989,1368522989,1,1,NULL),(3,1,'folder','portal-sujets','/',NULL,1368530371,1368632469,2,2,'a:0:{}'),(4,3,'image','slide-01.jpg','/portal-sujets/','image/jpeg',1368530684,1368632469,2,2,'a:3:{s:10:\"imageWidth\";i:1500;s:11:\"imageHeight\";i:550;s:25:\"imageDimensionsCalculated\";b:1;}'),(5,3,'image','slide-02.jpg','/portal-sujets/','image/jpeg',1368530764,1368632469,2,2,'a:3:{s:10:\"imageWidth\";i:1500;s:11:\"imageHeight\";i:550;s:25:\"imageDimensionsCalculated\";b:1;}'),(6,3,'image','slide-03.jpg','/portal-sujets/','image/jpeg',1368530764,1368632469,2,2,'a:3:{s:10:\"imageWidth\";i:1500;s:11:\"imageHeight\";i:550;s:25:\"imageDimensionsCalculated\";b:1;}'),(7,1,'folder','examples','/',NULL,1368531816,1368632468,2,2,'a:0:{}'),(17,7,'folder','panama','/examples/',NULL,1368532826,1368632468,2,2,'a:0:{}'),(18,17,'image','img_0117.jpg','/examples/panama/','image/jpeg',1368532831,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(19,17,'image','img_0201.jpg','/examples/panama/','image/jpeg',1368532832,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(20,17,'image','img_0089.jpg','/examples/panama/','image/jpeg',1368532833,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(21,17,'image','img_0037.jpg','/examples/panama/','image/jpeg',1368532834,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(22,17,'image','img_0399.jpg','/examples/panama/','image/jpeg',1368532836,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(23,17,'image','img_0411.jpg','/examples/panama/','image/jpeg',1368532837,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(24,17,'image','img_0410.jpg','/examples/panama/','image/jpeg',1368532838,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(25,17,'image','img_0160.jpg','/examples/panama/','image/jpeg',1368532839,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(26,1,'folder','videos','/',NULL,1368542684,1368632471,2,2,'a:0:{}'),(27,26,'video','home-trailer-english.mp4','/videos/','video/mp4',1368542794,1368632471,2,2,'a:1:{s:10:\"thumbnails\";a:2:{s:12:\"featurerette\";a:2:{s:6:\"status\";s:8:\"finished\";s:7:\"formats\";a:2:{s:3:\"mp4\";s:43:\"/website/var/tmp/video_27__featurerette.mp4\";s:4:\"webm\";s:44:\"/website/var/tmp/video_27__featurerette.webm\";}}s:7:\"content\";a:2:{s:6:\"status\";s:8:\"finished\";s:7:\"formats\";a:2:{s:3:\"mp4\";s:38:\"/website/var/tmp/video_27__content.mp4\";s:4:\"webm\";s:39:\"/website/var/tmp/video_27__content.webm\";}}}}'),(29,1,'folder','documents','/',NULL,1368548619,1368632467,2,2,'a:0:{}'),(34,1,'folder','screenshots','/',NULL,1368560793,1368632470,2,2,'a:0:{}'),(35,34,'image','glossary.png','/screenshots/','image/png',1368560809,1368632470,2,2,'a:3:{s:10:\"imageWidth\";i:908;s:11:\"imageHeight\";i:267;s:25:\"imageDimensionsCalculated\";b:1;}'),(36,29,'document','documentation.pdf','/documents/','application/pdf',1368562442,1368632467,2,2,'a:0:{}'),(37,7,'folder','italy','/examples/',NULL,1368596763,1368632468,2,2,'a:0:{}'),(38,37,'image','dsc04346.jpg','/examples/italy/','image/jpeg',1368596767,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(39,37,'image','dsc04344.jpg','/examples/italy/','image/jpeg',1368596768,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(40,37,'image','dsc04462.jpg','/examples/italy/','image/jpeg',1368596769,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(41,37,'image','dsc04399.jpg','/examples/italy/','image/jpeg',1368596770,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2000;s:11:\"imageHeight\";i:1500;s:25:\"imageDimensionsCalculated\";b:1;}'),(42,7,'folder','south-africa','/examples/',NULL,1368596785,1368632468,2,2,'a:0:{}'),(43,42,'image','img_1414.jpg','/examples/south-africa/','image/jpeg',1368596789,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(44,42,'image','img_2133.jpg','/examples/south-africa/','image/jpeg',1368596791,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(45,42,'image','img_2240.jpg','/examples/south-africa/','image/jpeg',1368596793,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(46,42,'image','img_1752.jpg','/examples/south-africa/','image/jpeg',1368596795,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(47,42,'image','img_1739.jpg','/examples/south-africa/','image/jpeg',1368596798,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(48,42,'image','img_0391.jpg','/examples/south-africa/','image/jpeg',1368596800,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:3872;s:11:\"imageHeight\";i:2332;s:25:\"imageDimensionsCalculated\";b:1;}'),(49,42,'image','img_2155.jpg','/examples/south-africa/','image/jpeg',1368596801,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(50,42,'image','img_1544.jpg','/examples/south-africa/','image/jpeg',1368596804,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(51,42,'image','img_1842.jpg','/examples/south-africa/','image/jpeg',1368596806,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(52,42,'image','img_1920.jpg','/examples/south-africa/','image/jpeg',1368596808,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:4000;s:11:\"imageHeight\";i:3000;s:25:\"imageDimensionsCalculated\";b:1;}'),(53,42,'image','img_0322.jpg','/examples/south-africa/','image/jpeg',1368596810,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:7264;s:11:\"imageHeight\";i:2386;s:25:\"imageDimensionsCalculated\";b:1;}'),(54,7,'folder','singapore','/examples/',NULL,1368596871,1368632468,2,2,'a:0:{}'),(55,54,'image','dsc03778.jpg','/examples/singapore/','image/jpeg',1368597116,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2592;s:11:\"imageHeight\";i:1944;s:25:\"imageDimensionsCalculated\";b:1;}'),(56,54,'image','dsc03807.jpg','/examples/singapore/','image/jpeg',1368597117,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2592;s:11:\"imageHeight\";i:1944;s:25:\"imageDimensionsCalculated\";b:1;}'),(57,54,'image','dsc03835.jpg','/examples/singapore/','image/jpeg',1368597119,1368632468,2,2,'a:3:{s:10:\"imageWidth\";i:2592;s:11:\"imageHeight\";i:1944;s:25:\"imageDimensionsCalculated\";b:1;}'),(59,34,'image','thumbnail-configuration.png','/screenshots/','image/png',1368606782,1368632470,2,2,'a:3:{s:10:\"imageWidth\";i:809;s:11:\"imageHeight\";i:865;s:25:\"imageDimensionsCalculated\";b:1;}'),(60,34,'image','website-translations.png','/screenshots/','image/png',1368608949,1368632470,2,2,'a:3:{s:10:\"imageWidth\";i:925;s:11:\"imageHeight\";i:554;s:25:\"imageDimensionsCalculated\";b:1;}'),(61,34,'image','properties-1.png','/screenshots/','image/png',1368616805,1368632470,2,2,'a:3:{s:10:\"imageWidth\";i:1025;s:11:\"imageHeight\";i:272;s:25:\"imageDimensionsCalculated\";b:1;}'),(62,34,'image','properties-2.png','/screenshots/','image/png',1368616805,1368632470,2,2,'a:3:{s:10:\"imageWidth\";i:1017;s:11:\"imageHeight\";i:329;s:25:\"imageDimensionsCalculated\";b:1;}'),(63,34,'image','properties-3.png','/screenshots/','image/png',1368616847,1368632470,2,2,'a:3:{s:10:\"imageWidth\";i:1017;s:11:\"imageHeight\";i:316;s:25:\"imageDimensionsCalculated\";b:1;}'),(64,34,'image','tag-snippet-management.png','/screenshots/','image/png',1368617634,1368632470,2,2,'a:3:{s:10:\"imageWidth\";i:1063;s:11:\"imageHeight\";i:872;s:25:\"imageDimensionsCalculated\";b:1;}'),(65,34,'image','objects-forms.png','/screenshots/','image/png',1368623266,1368632470,2,2,'a:3:{s:10:\"imageWidth\";i:308;s:11:\"imageHeight\";i:265;s:25:\"imageDimensionsCalculated\";b:1;}');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_tags`
--

DROP TABLE IF EXISTS `cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_tags` (
  `id` varchar(165) NOT NULL DEFAULT '',
  `tag` varchar(165) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`tag`),
  KEY `id` (`id`),
  KEY `tag` (`tag`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  `allowInherit` tinyint(1) unsigned DEFAULT '0',
  `allowVariants` tinyint(1) unsigned DEFAULT '0',
  `parentClass` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `propertyVisibility` text,
  `showVariants` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (2,'news','',1368613289,1368616960,2,2,0,0,'','','/%title_n%o_id','a:2:{s:4:\"grid\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}s:6:\"search\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}}',0),(3,'inquiry','',1368620413,1368622807,2,2,0,0,'','','','a:2:{s:4:\"grid\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}s:6:\"search\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}}',0),(4,'person','',1368620452,1368621909,2,2,0,0,'','','','a:2:{s:4:\"grid\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}s:6:\"search\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}}',0);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_analysis`
--

DROP TABLE IF EXISTS `content_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_analysis` (
  `id` varchar(44) NOT NULL DEFAULT '',
  `host` varchar(255) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `url` varchar(2000) NOT NULL DEFAULT '',
  `type` enum('document','route') DEFAULT NULL,
  `typeReference` int(11) DEFAULT NULL,
  `facebookShares` int(11) DEFAULT NULL,
  `googlePlusOne` int(11) DEFAULT NULL,
  `links` int(5) DEFAULT NULL,
  `linksExternal` int(5) DEFAULT NULL,
  `h1` int(3) DEFAULT NULL,
  `h2` int(3) DEFAULT NULL,
  `h3` int(3) DEFAULT NULL,
  `h4` int(3) DEFAULT NULL,
  `h5` int(3) DEFAULT NULL,
  `h6` int(3) DEFAULT NULL,
  `h1Text` varchar(1000) DEFAULT NULL,
  `imgWithoutAlt` int(3) DEFAULT NULL,
  `imgWithAlt` int(3) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `urlLength` int(4) DEFAULT NULL,
  `urlParameters` int(2) DEFAULT NULL,
  `microdata` int(3) DEFAULT NULL,
  `opengraph` int(3) DEFAULT NULL,
  `twitter` int(3) DEFAULT NULL,
  `robotsTxtBlocked` tinyint(1) DEFAULT NULL,
  `robotsMetaBlocked` tinyint(1) DEFAULT NULL,
  `lastUpdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `host` (`host`),
  KEY `lastUpdate` (`lastUpdate`),
  KEY `site` (`site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_analysis`
--

LOCK TABLES `content_analysis` WRITE;
/*!40000 ALTER TABLE `content_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_index`
--

DROP TABLE IF EXISTS `content_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_index` (
  `id` varchar(44) NOT NULL DEFAULT '',
  `site` int(11) DEFAULT NULL,
  `url` varchar(2000) NOT NULL DEFAULT '',
  `content` longtext,
  `type` enum('document','route') DEFAULT NULL,
  `typeReference` int(11) DEFAULT NULL,
  `lastUpdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdate` (`lastUpdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_index`
--

LOCK TABLES `content_index` WRITE;
/*!40000 ALTER TABLE `content_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependencies`
--

DROP TABLE IF EXISTS `dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependencies` (
  `sourcetype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `sourceid` int(11) unsigned NOT NULL DEFAULT '0',
  `targettype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `targetid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sourcetype`,`sourceid`,`targetid`,`targettype`),
  KEY `sourceid` (`sourceid`),
  KEY `targetid` (`targetid`),
  KEY `sourcetype` (`sourcetype`),
  KEY `targettype` (`targettype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependencies`
--

LOCK TABLES `dependencies` WRITE;
/*!40000 ALTER TABLE `dependencies` DISABLE KEYS */;
INSERT INTO `dependencies` VALUES ('document',1,'asset',4),('document',1,'document',5),('document',1,'asset',5),('document',1,'document',6),('document',1,'asset',6),('document',1,'document',15),('document',1,'document',16),('document',1,'document',17),('document',1,'asset',18),('document',1,'asset',19),('document',1,'asset',21),('document',1,'asset',27),('document',3,'document',7),('document',3,'document',18),('document',3,'document',19),('document',3,'document',20),('document',3,'document',21),('document',3,'asset',22),('document',3,'document',24),('document',3,'document',25),('document',3,'document',26),('document',3,'document',27),('document',3,'document',28),('document',3,'document',29),('document',3,'asset',39),('document',3,'asset',40),('document',3,'asset',41),('document',3,'asset',44),('document',3,'asset',45),('document',3,'asset',46),('document',3,'asset',47),('document',3,'asset',50),('document',3,'asset',55),('document',3,'asset',56),('document',3,'asset',57),('document',4,'document',1),('document',4,'document',5),('document',4,'document',15),('document',4,'document',16),('document',4,'document',17),('document',4,'asset',22),('document',4,'asset',24),('document',7,'asset',27),('document',9,'document',5),('document',15,'document',1),('document',15,'document',3),('document',15,'asset',23),('document',16,'document',1),('document',16,'document',5),('document',16,'asset',22),('document',17,'document',1),('document',17,'document',6),('document',17,'asset',24),('document',18,'asset',36),('document',19,'asset',17),('document',19,'asset',43),('document',19,'asset',46),('document',19,'asset',47),('document',19,'asset',48),('document',19,'asset',50),('document',19,'asset',51),('document',19,'asset',52),('document',20,'asset',35),('document',21,'asset',53),('document',21,'asset',59),('document',22,'asset',60),('document',24,'asset',27),('document',24,'asset',44),('document',24,'asset',48),('document',24,'asset',49),('document',24,'asset',51),('document',24,'asset',52),('document',24,'asset',53),('document',25,'document',15),('document',25,'document',19),('document',25,'document',20),('document',25,'document',21),('document',25,'asset',27),('document',25,'asset',44),('document',25,'asset',45),('document',25,'asset',47),('document',25,'asset',51),('document',25,'asset',54),('document',27,'document',3),('document',28,'document',3),('document',28,'asset',61),('document',28,'asset',62),('document',28,'asset',63),('document',29,'document',3),('document',29,'asset',64),('document',30,'document',5),('document',30,'asset',53),('document',31,'document',5),('document',31,'document',30),('document',32,'document',3),('document',33,'document',3),('document',33,'document',5),('document',34,'document',5),('document',35,'document',5),('document',35,'asset',51),('document',35,'asset',53),('document',36,'document',5),('document',37,'document',5),('document',37,'document',38),('document',38,'document',5),('object',3,'asset',43),('object',3,'asset',49),('object',3,'asset',52),('object',4,'asset',51),('object',6,'asset',25),('object',7,'asset',18),('object',8,'asset',20),('object',9,'asset',21),('object',29,'object',28),('object',31,'object',30);
/*!40000 ALTER TABLE `dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` enum('page','link','snippet','folder','hardlink','email') DEFAULT NULL,
  `key` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `index` int(11) unsigned DEFAULT '0',
  `published` tinyint(1) unsigned DEFAULT '1',
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_fullpath` (`path`,`key`),
  KEY `parentId` (`parentId`),
  KEY `key` (`key`),
  KEY `path` (`path`),
  KEY `published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,0,'page','','/',999999,1,1368522989,1368689696,1,2),(3,1,'page','basic-examples','/',2,1,1368523212,1368626600,2,2),(4,1,'page','introduction','/',0,1,1368523285,1368689817,2,2),(5,1,'page','advanced-examples','/',3,1,1368523389,1368620091,2,2),(6,1,'page','experiments','/',4,1,1368523410,1368626334,2,2),(7,3,'page','html5-video','/basic-examples/',1,1,1368525394,1368545013,2,2),(9,5,'page','creating-objects-using-forms','/advanced-examples/',1,1,1368525933,1368624176,2,2),(10,1,'folder','shared','/',5,1,1368527956,1368527956,2,2),(11,10,'folder','includes','/shared/',1,1,1368527961,1368527961,2,2),(12,11,'snippet','footer','/shared/includes/',1,1,1368527967,1368529693,2,2),(13,10,'folder','teasers','/shared/',2,1,1368531657,1368531657,2,2),(14,13,'folder','standard','/shared/teasers/',1,1,1368531665,1368531665,2,2),(15,14,'snippet','basic-examples','/shared/teasers/standard/',1,1,1368531692,1368687491,2,2),(16,14,'snippet','advanced-examples','/shared/teasers/standard/',2,1,1368534298,1368688809,2,2),(17,14,'snippet','experiments','/shared/teasers/standard/',3,1,1368534344,1368688977,2,2),(18,3,'page','pdf-viewer','/basic-examples/',2,1,1368548449,1368562801,2,0),(19,3,'page','galleries','/basic-examples/',3,1,1368549805,1368597503,2,2),(20,3,'page','glossary','/basic-examples/',4,1,1368559903,1368561466,2,2),(21,3,'page','thumbnails','/basic-examples/',5,1,1368602443,1368606841,2,2),(22,3,'page','website-translations','/basic-examples/',6,1,1368607207,1368609001,2,2),(23,22,'page','german-translation','/basic-examples/website-translations/',6,1,1368608357,1368608866,2,2),(24,3,'page','content-page','/basic-examples/',0,1,1368609059,1368611682,2,2),(25,3,'page','editable-roundup','/basic-examples/',7,1,1368609569,1368610457,2,2),(26,3,'page','form','/basic-examples/',8,1,1368610663,1368610681,2,2),(27,3,'page','news','/basic-examples/',9,1,1368613137,1368614363,2,2),(28,3,'page','properties','/basic-examples/',10,1,1368615986,1368616909,2,2),(29,3,'page','tag-and-snippet-management','/basic-examples/',11,1,1368617118,1368617704,2,2),(30,5,'page','content-inheritance','/advanced-examples/',2,1,1368623726,1368623853,2,2),(31,30,'page','content-inheritance','/advanced-examples/content-inheritance/',2,1,1368623866,1368624030,2,2),(32,3,'link','pimcore.org','/basic-examples/',12,1,1368626404,1368626437,2,2),(33,34,'hardlink','basic-examples','/advanced-examples/hard-link/',0,1,1368626461,1368626800,2,2),(34,5,'page','hard-link','/advanced-examples/',4,1,1368626655,1368626835,2,2),(35,5,'page','image-with-hotspots-and-markers','/advanced-examples/',5,1,1368626888,1368629331,2,2),(36,5,'page','search','/advanced-examples/',6,1,1368629524,1368630250,2,2),(37,5,'page','contact-form','/advanced-examples/',7,1,1368630444,1368631569,2,2),(38,37,'email','email','/advanced-examples/contact-form/',1,1,1368631410,1368632025,2,2);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_doctypes`
--

DROP TABLE IF EXISTS `documents_doctypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_doctypes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` enum('page','snippet','email') DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_doctypes`
--

LOCK TABLES `documents_doctypes` WRITE;
/*!40000 ALTER TABLE `documents_doctypes` DISABLE KEYS */;
INSERT INTO `documents_doctypes` VALUES (1,'Content-Page','','content','default','','page',0),(2,'Standard-Teaser','','','','/snippets/standard-teaser.php','snippet',0);
/*!40000 ALTER TABLE `documents_doctypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_elements`
--

DROP TABLE IF EXISTS `documents_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_elements` (
  `documentId` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`documentId`,`name`),
  KEY `documentId` (`documentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_elements`
--

LOCK TABLES `documents_elements` WRITE;
/*!40000 ALTER TABLE `documents_elements` DISABLE KEYS */;
INSERT INTO `documents_elements` VALUES (1,'authorcontent3','input','Albert Einstein'),(1,'blockcontent1','block','a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}'),(1,'carouselSlides','select','3'),(1,'cHeadline_0','input','Ready to get impressed?'),(1,'cHeadline_1','input','It\'ll blow your mind.'),(1,'cHeadline_2','input','Oh yeah, it\'s that good'),(1,'cImage_0','image','a:9:{s:2:\"id\";i:4;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(1,'cImage_1','image','a:9:{s:2:\"id\";i:5;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(1,'cImage_2','image','a:9:{s:2:\"id\";i:6;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(1,'cLink_0','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:18:\"/advanced-examples\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:5;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(1,'cLink_1','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:18:\"/advanced-examples\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:5;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(1,'cLink_2','link','a:15:{s:4:\"text\";s:9:\"Checkmate\";s:4:\"path\";s:12:\"/experiments\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:6;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(1,'content','areablock','a:3:{i:0;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:19:\"standard-teaser-row\";}i:1;a:2:{s:3:\"key\";s:1:\"3\";s:4:\"type\";s:10:\"blockquote\";}i:2;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:10:\"featurette\";}}'),(1,'contentcontent_blockcontent11_1','wysiwyg','<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>\n'),(1,'contentcontent_blockcontent11_2','wysiwyg','<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n'),(1,'contentcontent_blockcontent11_3','wysiwyg','<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n'),(1,'cText_0','textarea','Check out our examples and dive into the next generation of digital data management.'),(1,'cText_1','textarea','See for yourself.'),(1,'cText_2','textarea','See for yourself'),(1,'headlinecontent_blockcontent11_1','input','Lorem ipsum.'),(1,'headlinecontent_blockcontent11_2','input','Oh yeah, it\'s that good.'),(1,'headlinecontent_blockcontent11_3','input','And lastly, this one.'),(1,'imagecontent_blockcontent11_1','image','a:9:{s:2:\"id\";i:21;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(1,'imagecontent_blockcontent11_2','image','a:9:{s:2:\"id\";i:18;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(1,'imagecontent_blockcontent11_3','image','a:9:{s:2:\"id\";i:19;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(1,'imagePositioncontent_blockcontent11_1','select',''),(1,'imagePositioncontent_blockcontent11_2','select','left'),(1,'imagePositioncontent_blockcontent11_3','select',NULL),(1,'multiselect','multiselect','a:0:{}'),(1,'myCheckbox','checkbox',''),(1,'myDate','date',NULL),(1,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(1,'myImageBlock','block','a:0:{}'),(1,'myInput','input',''),(1,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(1,'myMultihref','multihref','a:0:{}'),(1,'myNumber','numeric',''),(1,'mySelect','select',NULL),(1,'myTextarea','textarea',''),(1,'myWysiwyg','wysiwyg',''),(1,'postitioncontent_blockcontent11_1','select',NULL),(1,'postitioncontent_blockcontent11_2','select','left'),(1,'postitioncontent_blockcontent11_3','select',NULL),(1,'quotecontent3','input','We can\'t solve problems by using the same kind of thinking we used when we created them.'),(1,'sublinecontent_blockcontent11_1','input','Cum sociis.'),(1,'sublinecontent_blockcontent11_2','input','See for yourself.'),(1,'sublinecontent_blockcontent11_3','input','Checkmate.'),(1,'teaser_0content2','snippet','15'),(1,'teaser_1content2','snippet','16'),(1,'teaser_2content2','snippet','17'),(1,'typecontent_blockcontent11_1','select',NULL),(1,'typecontent_blockcontent11_2','select','video'),(1,'typecontent_blockcontent11_3','select',NULL),(1,'type_0content2','select',NULL),(1,'type_1content2','select',NULL),(1,'type_2content2','select',NULL),(1,'videocontent_blockcontent11_2','video','a:5:{s:2:\"id\";i:27;s:4:\"type\";s:5:\"asset\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"poster\";N;}'),(3,'circle1content1','checkbox',''),(3,'circle1content2','checkbox','1'),(3,'circle1content3','checkbox','1'),(3,'circle1content4','checkbox',''),(3,'circle2content1','checkbox',''),(3,'circle2content2','checkbox','1'),(3,'circle2content3','checkbox','1'),(3,'circle2content4','checkbox',''),(3,'circle3content1','checkbox',''),(3,'circle3content2','checkbox','1'),(3,'circle3content3','checkbox','1'),(3,'circle3content4','checkbox',''),(3,'content','areablock','a:4:{i:0;a:2:{s:3:\"key\";s:1:\"3\";s:4:\"type\";s:19:\"standard-teaser-row\";}i:1;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:19:\"standard-teaser-row\";}i:2;a:2:{s:3:\"key\";s:1:\"4\";s:4:\"type\";s:19:\"standard-teaser-row\";}i:3;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:19:\"standard-teaser-row\";}}'),(3,'headDescription','input',''),(3,'headline','input','Basic Examples'),(3,'headline1content1','input','HTML5 Video'),(3,'headline1content2','input','Glossary'),(3,'headline1content3','input','Simple Content'),(3,'headline1content4','input','News'),(3,'headline2content1','input','PDF Viewer'),(3,'headline2content2','input','Thumbnails'),(3,'headline2content3','input','Round-Up'),(3,'headline2content4','input','Properties'),(3,'headline3content1','input','Galleries'),(3,'headline3content2','input','Website Translations'),(3,'headline3content3','input','Simple Form'),(3,'headline3content4','input','Tag Manager'),(3,'headTitle','input',''),(3,'image1content1','image','a:9:{s:2:\"id\";i:41;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image1content2','image','a:9:{s:2:\"id\";i:55;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image1content3','image','a:9:{s:2:\"id\";i:50;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image1content4','image','a:9:{s:2:\"id\";i:47;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image2content1','image','a:9:{s:2:\"id\";i:39;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image2content2','image','a:9:{s:2:\"id\";i:56;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image2content3','image','a:9:{s:2:\"id\";i:45;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image2content4','image','a:9:{s:2:\"id\";i:46;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image3content1','image','a:9:{s:2:\"id\";i:40;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image3content2','image','a:9:{s:2:\"id\";i:57;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image3content3','image','a:9:{s:2:\"id\";i:44;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'image3content4','image','a:9:{s:2:\"id\";i:22;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(3,'link1content1','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:27:\"/basic-examples/html5-video\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:7;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link1content2','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:24:\"/basic-examples/glossary\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:20;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link1content3','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:28:\"/basic-examples/content-page\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:24;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link1content4','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:20:\"/basic-examples/news\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:27;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link2content1','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:26:\"/basic-examples/pdf-viewer\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:18;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link2content2','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:26:\"/basic-examples/thumbnails\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:21;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link2content3','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:32:\"/basic-examples/editable-roundup\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:25;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link2content4','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:26:\"/basic-examples/properties\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:28;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link3content1','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:25:\"/basic-examples/galleries\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:19;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link3content2','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(3,'link3content3','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:20:\"/basic-examples/form\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:26;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'link3content4','link','a:15:{s:4:\"text\";s:13:\"See in Action\";s:4:\"path\";s:42:\"/basic-examples/tag-and-snippet-management\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:29;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(3,'text1content1','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text1content2','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text1content3','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text1content4','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text2content1','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text2content2','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text2content3','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text2content4','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text3content1','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text3content2','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text3content3','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'text3content4','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(3,'type_0content1','select','direct'),(3,'type_0content2','select','direct'),(3,'type_0content3','select','direct'),(3,'type_0content4','select','direct'),(3,'type_1content1','select','direct'),(3,'type_1content2','select','direct'),(3,'type_1content3','select','direct'),(3,'type_1content4','select','direct'),(3,'type_2content1','select','direct'),(3,'type_2content2','select','direct'),(3,'type_2content3','select','direct'),(3,'type_2content4','select','direct'),(4,'blockcontent2','block','a:1:{i:0;s:1:\"1\";}'),(4,'circle2content1','checkbox',''),(4,'content','areablock','a:3:{i:0;a:2:{s:3:\"key\";s:1:\"3\";s:4:\"type\";s:7:\"wysiwyg\";}i:1;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:19:\"standard-teaser-row\";}i:2;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:10:\"featurette\";}}'),(4,'contentcontent3','wysiwyg','<p>Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. <a href=\"/basic-examples\">Etiam rhoncus</a>.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</li>\n	<li>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.</li>\n	<li>Maecenas nec odio et ante tincidunt tempus.</li>\n	<li><a href=\"/basic-examples\">Donec vitae sapien ut libero venenatis faucibus.</a></li>\n	<li>Nullam quis ante.</li>\n	<li>Etiam sit amet orci eget eros <a href=\"/advanced-examples\">faucibus </a>tincidunt.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform <a href=\"/experiments\">grammatica</a>, pronunciation e plu sommun paroles.</p>\n\n<p>&nbsp;</p>\n\n<ol>\n	<li>It va esser tam simplic quam Occidental in fact, it va esser Occidental.</li>\n	<li>A un Angleso it va semblar un simplificat Angles, quam un skeptic <a href=\"/introduction\">Cambridge </a>amico dit me que Occidental es.</li>\n	<li>Li Europan lingues es membres del sam familie.</li>\n	<li>Lor separat existentie es un myth.</li>\n	<li>Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</li>\n	<li>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules.</li>\n</ol>\n\n<p>&nbsp;</p>\n'),(4,'contentcontent_blockcontent22_1','wysiwyg','<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\n'),(4,'headDescription','input','Overview of the project and how to get started with a simple template.'),(4,'headline','input','Introduction'),(4,'headline2content1','input',''),(4,'headlinecontent1','input','Nullam quis ante'),(4,'headlinecontent3','input','Maecenas tempus, tellus eget condimentum rhoncu'),(4,'headlinecontent_blockcontent22_1','input','Ullamcorper Scelerisque '),(4,'headTitle','input','Getting started'),(4,'image2content1','image','a:9:{s:2:\"id\";N;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(4,'imagecontent1','image','a:9:{s:2:\"id\";i:22;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(4,'imagecontent_blockcontent22_1','image','a:9:{s:2:\"id\";i:24;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(4,'imagePositioncontent_blockcontent22_1','select',NULL),(4,'leadcontent3','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),(4,'link2content1','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(4,'linkcontent1','link','a:14:{s:4:\"text\";s:12:\"Etiam rhoncu\";s:4:\"path\";s:18:\"/advanced-examples\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:5;s:12:\"internalType\";s:8:\"document\";}'),(4,'postitioncontent_blockcontent22_1','select',NULL),(4,'sublinecontent_blockcontent22_1','input',''),(4,'teaser_0content1','snippet','15'),(4,'teaser_1content1','snippet','16'),(4,'teaser_2content1','snippet','17'),(4,'text2content1','wysiwyg',''),(4,'textcontent1','wysiwyg','<p>Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>\n'),(4,'typecontent_blockcontent22_1','select',NULL),(4,'type_0content1','select',''),(4,'type_1content1','select','snippet'),(4,'type_2content1','select','snippet'),(5,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(5,'contentcontent1','wysiwyg','<p>The following list is generated automatically. See controller/action to see how it\'s done.&nbsp;</p>\n'),(5,'headDescription','input',''),(5,'headline','input','Advanced Examples'),(5,'headlinecontent1','input',''),(5,'headTitle','input',''),(5,'leadcontent1','wysiwyg',''),(6,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(6,'contentcontent1','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.</p>\n\n<p>&nbsp;</p>\n\n<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.</p>\n\n<p>&nbsp;</p>\n\n<p>Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n'),(6,'headDescription','input',''),(6,'headline','input','Experiments'),(6,'headlinecontent1','input','This space is reserved for your individual experiments & tests. '),(6,'headTitle','input',''),(6,'leadcontent1','wysiwyg',''),(7,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:5:\"video\";}}'),(7,'headDescription','input',''),(7,'headline','input','HTML5 Video is just as simple as that ....'),(7,'headlinecontent1','input',''),(7,'headTitle','input',''),(7,'leadcontent1','wysiwyg','<p>Just drop an video from your assets, the video will be automatically converted to the different HTML5 formats and to the correct size.&nbsp;</p>\n'),(7,'videocontent1','video','a:5:{s:2:\"id\";i:27;s:4:\"type\";s:5:\"asset\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"poster\";N;}'),(9,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(9,'contentcontent1','wysiwyg','<p>&nbsp;</p>\n\n<p>In this example we dynamically create objects out of the data submitted via the form.</p>\n\n<p>The you can use the same approach to create objects using a <strong>commandline script</strong>, or wherever you need it.</p>\n\n<p>After submitting the form you\'ll find the data in \"Objects\" <em>/crm</em> and <em>/inquiries</em>.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"/demo-website/screenshots/objects-forms.png\" style=\"width:308px\" /></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<h2><strong>And here\'s the form:&nbsp;</strong></h2>\n'),(9,'errorMessage','input','Please fill all fields and accept the terms of use. '),(9,'headDescription','input',''),(9,'headline','input','Creating Objects & Assets with a Form'),(9,'headlinecontent1','input',''),(9,'headTitle','input',''),(9,'leadcontent1','wysiwyg',''),(12,'linklinks1','link','a:11:{s:4:\"text\";s:11:\"pimcore.org\";s:4:\"path\";s:23:\"http://www.pimcore.org/\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(12,'linklinks2','link','a:11:{s:4:\"text\";s:13:\"Documentation\";s:4:\"path\";s:28:\"http://www.pimcore.org/wiki/\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(12,'linklinks3','link','a:11:{s:4:\"text\";s:11:\"Bug Tracker\";s:4:\"path\";s:30:\"http://www.pimcore.org/issues/\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(12,'links','block','a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}'),(12,'multiselect','multiselect','a:0:{}'),(12,'myCheckbox','checkbox',''),(12,'myDate','date',NULL),(12,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(12,'myImageBlock','block','a:0:{}'),(12,'myInput','input',''),(12,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(12,'myMultihref','multihref','a:0:{}'),(12,'myNumber','numeric',''),(12,'mySelect','select',NULL),(12,'myTextarea','textarea',''),(12,'myWysiwyg','wysiwyg',''),(12,'text','wysiwyg','<p>Designed and built with all the love in the world by&nbsp;<a href=\"http://twitter.com/mdo\" target=\"_blank\">@mdo</a>&nbsp;and&nbsp;<a href=\"http://twitter.com/fat\" target=\"_blank\">@fat</a>.</p>\n\n<p>Code licensed under&nbsp;<a href=\"http://www.apache.org/licenses/LICENSE-2.0\" target=\"_blank\">Apache License v2.0</a>,&nbsp;<a href=\"http://glyphicons.com/\">Glyphicons Free</a>&nbsp;licensed under&nbsp;<a href=\"http://creativecommons.org/licenses/by/3.0/\">CC BY 3.0</a>.</p>\n\n<p><strong>© Templates pimcore.org licensed under BSD License</strong></p>\n'),(15,'circle','checkbox',''),(15,'headline','input','Full Responsive'),(15,'image','image','a:9:{s:2:\"id\";i:23;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(15,'link','link','a:15:{s:4:\"text\";s:11:\"Lorem ipsum\";s:4:\"path\";s:15:\"/basic-examples\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:3;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(15,'text','wysiwyg','<p>This demo is based on Bootstrap, the most popular, intuitive, and powerful front-end framework.</p>\n'),(16,'circle','checkbox',''),(16,'headline','input','Drag & Drop Interface'),(16,'image','image','a:9:{s:2:\"id\";i:22;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(16,'link','link','a:15:{s:4:\"text\";s:12:\"Etiam rhoncu\";s:4:\"path\";s:18:\"/advanced-examples\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:5;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(16,'text','wysiwyg','<p>Content is created by simply dragging &amp; dropping blocks, that can&nbsp;be editited in-place and wysiwyg.&nbsp;</p>\n'),(17,'circle','checkbox',''),(17,'headline','input','HTML5 omnipresent'),(17,'image','image','a:9:{s:2:\"id\";i:24;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(17,'link','link','a:15:{s:4:\"text\";s:14:\"Quisque rutrum\";s:4:\"path\";s:12:\"/experiments\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:6;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(17,'text','wysiwyg','<p>Drag &amp; drop upload directly&nbsp;into the asset tree, automatic html5 video transcoding, and much more ...</p>\n'),(18,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:3:\"pdf\";}}'),(18,'headDescription','input',''),(18,'headline','input','Isn\'t that amazing?'),(18,'headlinecontent1','input',''),(18,'headTitle','input',''),(18,'leadcontent1','wysiwyg','<p>Just drop a PDF, et voilá ...&nbsp;</p>\n'),(18,'pdfcontent1','pdf','a:2:{s:2:\"id\";i:36;s:8:\"hotspots\";a:0:{}}'),(19,'content','areablock','a:2:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:14:\"gallery-folder\";}i:1;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:21:\"gallery-single-images\";}}'),(19,'gallerycontent1','renderlet','a:3:{s:2:\"id\";i:17;s:4:\"type\";s:5:\"asset\";s:7:\"subtype\";s:6:\"folder\";}'),(19,'gallerycontent2','block','a:7:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";}'),(19,'headDescription','input',''),(19,'headline','input','Creating custom galleries is very simple'),(19,'headlinecontent1','input','Autogenerated Gallery (using Renderlet)'),(19,'headlinecontent2','input','Custom assembled Gallery'),(19,'headTitle','input',''),(19,'imagecontent_gallerycontent22_1','image','a:9:{s:2:\"id\";i:48;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(19,'imagecontent_gallerycontent22_2','image','a:9:{s:2:\"id\";i:43;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(19,'imagecontent_gallerycontent22_3','image','a:9:{s:2:\"id\";i:50;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(19,'imagecontent_gallerycontent22_4','image','a:9:{s:2:\"id\";i:47;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(19,'imagecontent_gallerycontent22_5','image','a:9:{s:2:\"id\";i:46;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(19,'imagecontent_gallerycontent22_6','image','a:9:{s:2:\"id\";i:51;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(19,'imagecontent_gallerycontent22_7','image','a:9:{s:2:\"id\";i:52;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(19,'leadcontent1','wysiwyg','<p>Drag an asset folder on the following drop area, and the \"renderlet\" will create automatically a gallery out of the images in the folder.</p>\n'),(19,'leadcontent2','wysiwyg',''),(20,'content','areablock','a:2:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}i:1;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:5:\"image\";}}'),(20,'contentcontent1','wysiwyg','<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n\n<p>&nbsp;</p>\n\n<p>Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.</p>\n\n<p>&nbsp;</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n'),(20,'headDescription','input',''),(20,'headline','input','The Glossary ...'),(20,'headlinecontent1','input',''),(20,'headlinecontent2','input',''),(20,'headTitle','input',''),(20,'imagecontent2','image','a:9:{s:2:\"id\";i:35;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(20,'leadcontent1','wysiwyg','<p>... makes it very simple to automatically link keywords, abbreviation and acronyms. This is not only perfect for SEO but also makes it super easy to navigate in the content.&nbsp;</p>\n'),(20,'leadcontent2','wysiwyg','<p>&nbsp;</p>\n\n<p>... this is how it looks in the admin interface.</p>\n'),(21,'content','areablock','a:2:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}i:1;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:5:\"image\";}}'),(21,'contentcontent1','wysiwyg',''),(21,'content_bottom','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:5:\"image\";}}'),(21,'headDescription','input',''),(21,'headline','input','Incredible Possibilities'),(21,'headlinecontent1','input',''),(21,'headlinecontent2','input','This is the original image'),(21,'headlinecontent_bottom1','input','This is how it looks in the admin interface ... '),(21,'headTitle','input',''),(21,'image','image','a:9:{s:2:\"id\";N;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'imagecontent2','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'imagecontent_bottom1','image','a:9:{s:2:\"id\";i:59;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img1','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img10','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img11','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img12','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img2','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img3','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img4','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img5','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img6','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img7','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img8','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'img9','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(21,'leadcontent1','wysiwyg',''),(21,'leadcontent2','wysiwyg',''),(21,'leadcontent_bottom1','wysiwyg',''),(21,'multiselect','multiselect','a:0:{}'),(21,'myCheckbox','checkbox',''),(21,'myDate','date',NULL),(21,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(21,'myImageBlock','block','a:0:{}'),(21,'myInput','input',''),(21,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(21,'myMultihref','multihref','a:0:{}'),(21,'myNumber','numeric',''),(21,'mySelect','select',NULL),(21,'myTextarea','textarea',''),(21,'myWysiwyg','wysiwyg',''),(22,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(22,'contentBottom','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:5:\"image\";}}'),(22,'contentcontent1','wysiwyg','<p>&nbsp;</p>\n\n<p><a href=\"/basic-examples/website-translations/german-translation\">Please visit this page to see the German translation of this page.</a></p>\n\n<p>&nbsp;</p>\n\n<p>Following some examples:&nbsp;</p>\n\n<p>&nbsp;</p>\n'),(22,'headDescription','input',''),(22,'headline','input','Website Translations'),(22,'headlinecontent1','input',''),(22,'headlinecontentBottom1','input',''),(22,'headTitle','input',''),(22,'imagecontentBottom1','image','a:9:{s:2:\"id\";i:60;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(22,'leadcontent1','wysiwyg','<p>Common used terms across the website can be translated centrally, hassle-free and comfortable.&nbsp;</p>\n'),(22,'leadcontentBottom1','wysiwyg','<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>This is how it looks in the admin interface ...&nbsp;</p>\n'),(22,'multiselect','multiselect','a:0:{}'),(22,'myCheckbox','checkbox',''),(22,'myDate','date',NULL),(22,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(22,'myImageBlock','block','a:0:{}'),(22,'myInput','input',''),(22,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(22,'myMultihref','multihref','a:0:{}'),(22,'myNumber','numeric',''),(22,'mySelect','select',NULL),(22,'myTextarea','textarea',''),(22,'myWysiwyg','wysiwyg',''),(23,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(23,'contentBottom','areablock','a:0:{}'),(23,'contentcontent1','wysiwyg','<p>Folgend ein paar Beispiele:&nbsp;</p>\n'),(23,'headDescription','input',''),(23,'headline','input','Website Übersetzungen'),(23,'headlinecontent1','input',''),(23,'headTitle','input',''),(23,'leadcontent1','wysiwyg','<p>Häufig genutzte Begriffe auf der gesamten Website können komfortabel, zentral und einfach übersetzt werden.</p>\n'),(23,'multiselect','multiselect','a:0:{}'),(23,'myCheckbox','checkbox',''),(23,'myDate','date',NULL),(23,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(23,'myImageBlock','block','a:0:{}'),(23,'myInput','input',''),(23,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(23,'myMultihref','multihref','a:0:{}'),(23,'myNumber','numeric',''),(23,'mySelect','select',NULL),(23,'myTextarea','textarea',''),(23,'myWysiwyg','wysiwyg',''),(24,'authorcontent5','input','Albert Einstein'),(24,'blockcontent1','block','a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}'),(24,'content','areablock','a:5:{i:0;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:21:\"gallery-single-images\";}i:1;a:2:{s:3:\"key\";s:1:\"3\";s:4:\"type\";s:7:\"wysiwyg\";}i:2;a:2:{s:3:\"key\";s:1:\"5\";s:4:\"type\";s:10:\"blockquote\";}i:3;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:10:\"featurette\";}i:4;a:2:{s:3:\"key\";s:1:\"4\";s:4:\"type\";s:5:\"image\";}}'),(24,'contentcontent3','wysiwyg','<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</li>\n	<li>Phasellus viverra nulla ut metus varius laoreet.</li>\n	<li>Quisque rutrum. Aenean imperdiet.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Etiam ultricies nisi vel augue. Curabitur <a href=\"/basic-examples/galleries\">ullamcorper </a>ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\n'),(24,'contentcontent_blockcontent11_1','wysiwyg','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n'),(24,'contentcontent_blockcontent11_2','wysiwyg','<p>Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>\n'),(24,'gallerycontent2','block','a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}'),(24,'headDescription','input',''),(24,'headline','input','This is just a simple Content-Page ...'),(24,'headlinecontent2','input','Where some Content-Blocks are mixed together. '),(24,'headlinecontent3','input','Nulla consequat massa quis enim'),(24,'headlinecontent4','input',''),(24,'headlinecontent_blockcontent11_1','input','Lorem ipsum.'),(24,'headlinecontent_blockcontent11_2','input','Etiam ultricies.'),(24,'headTitle','input',''),(24,'imagecontent4','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(24,'imagecontent_blockcontent11_1','image','a:9:{s:2:\"id\";i:48;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(24,'imagecontent_gallerycontent22_1','image','a:9:{s:2:\"id\";i:51;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(24,'imagecontent_gallerycontent22_2','image','a:9:{s:2:\"id\";i:52;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(24,'imagecontent_gallerycontent22_3','image','a:9:{s:2:\"id\";i:44;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(24,'imagecontent_gallerycontent22_4','image','a:9:{s:2:\"id\";i:49;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(24,'leadcontent2','wysiwyg','<p>African Animals</p>\n'),(24,'leadcontent3','wysiwyg','<p>Donec pede justo, fringilla vel, aliquet nec</p>\n'),(24,'leadcontent4','wysiwyg',''),(24,'postitioncontent_blockcontent11_1','select',NULL),(24,'postitioncontent_blockcontent11_2','select','left'),(24,'quotecontent5','input','We can\'t solve problems by using the same kind of thinking we used when we created them.'),(24,'sublinecontent_blockcontent11_1','input','Dolor sit amet.'),(24,'sublinecontent_blockcontent11_2','input','Nam eget dui.'),(24,'typecontent_blockcontent11_1','select',''),(24,'typecontent_blockcontent11_2','select','video'),(24,'videocontent_blockcontent11_2','video','a:5:{s:2:\"id\";i:27;s:4:\"type\";s:5:\"asset\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"poster\";i:49;}'),(25,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(25,'contentcontent1','wysiwyg',''),(25,'headDescription','input',''),(25,'headline','input','This is an overview of all available \"editables\" (except area/areablock/block)'),(25,'headlinecontent1','input','Please view this page in the editmode (admin interface)!'),(25,'headTitle','input',''),(25,'leadcontent1','wysiwyg','<p>... nothing to see here ;-)&nbsp;</p>\n'),(25,'multiselect','multiselect','a:0:{}'),(25,'myCheckbox','checkbox','1'),(25,'myDate','date','1368662400'),(25,'myHref','href','a:3:{s:2:\"id\";i:21;s:4:\"type\";s:8:\"document\";s:7:\"subtype\";s:4:\"page\";}'),(25,'myImage','image','a:9:{s:2:\"id\";i:47;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(25,'myImageBlock','block','a:0:{}'),(25,'myInput','input','Some Text'),(25,'myLink','link','a:15:{s:4:\"text\";s:7:\"My Link\";s:4:\"path\";s:25:\"/basic-examples/galleries\";s:6:\"target\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:8:\"internal\";b:1;s:10:\"internalId\";i:19;s:12:\"internalType\";s:8:\"document\";s:4:\"type\";s:8:\"internal\";}'),(25,'myMultiHref','multihref','a:6:{i:0;a:4:{s:2:\"id\";i:20;s:4:\"path\";s:24:\"/basic-examples/glossary\";s:4:\"type\";s:8:\"document\";s:7:\"subtype\";s:4:\"page\";}i:1;a:4:{s:2:\"id\";i:21;s:4:\"path\";s:26:\"/basic-examples/thumbnails\";s:4:\"type\";s:8:\"document\";s:7:\"subtype\";s:4:\"page\";}i:2;a:4:{s:2:\"id\";i:25;s:4:\"path\";s:32:\"/basic-examples/editable-roundup\";s:4:\"type\";s:8:\"document\";s:7:\"subtype\";s:4:\"page\";}i:3;a:4:{s:2:\"id\";i:51;s:4:\"path\";s:48:\"/demo-website/examples/south-africa/img_1842.jpg\";s:4:\"type\";s:5:\"asset\";s:7:\"subtype\";s:5:\"image\";}i:4;a:4:{s:2:\"id\";i:44;s:4:\"path\";s:48:\"/demo-website/examples/south-africa/img_2133.jpg\";s:4:\"type\";s:5:\"asset\";s:7:\"subtype\";s:5:\"image\";}i:5;a:4:{s:2:\"id\";i:45;s:4:\"path\";s:48:\"/demo-website/examples/south-africa/img_2240.jpg\";s:4:\"type\";s:5:\"asset\";s:7:\"subtype\";s:5:\"image\";}}'),(25,'myMultiselect','multiselect','a:2:{i:0;s:6:\"value2\";i:1;s:6:\"value4\";}'),(25,'myNumber','numeric',''),(25,'myNumeric','numeric','123'),(25,'myRenderlet','renderlet','a:3:{s:2:\"id\";i:54;s:4:\"type\";s:5:\"asset\";s:7:\"subtype\";s:6:\"folder\";}'),(25,'mySelect','select','option2'),(25,'mySnippet','snippet','15'),(25,'myTextarea','textarea','Some Text'),(25,'myVideo','video','a:5:{s:2:\"id\";i:27;s:4:\"type\";s:5:\"asset\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"poster\";N;}'),(25,'myWysiwyg','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.</p>\n\n<p>&nbsp;</p>\n\n<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\n\n<p>&nbsp;</p>\n\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n'),(25,'tableName','table','a:2:{i:0;a:3:{i:0;s:7:\"Value 1\";i:1;s:7:\"Value 2\";i:2;s:7:\"Value 3\";}i:1;a:3:{i:0;s:4:\"this\";i:1;s:2:\"is\";i:2;s:4:\"test\";}}'),(26,'multiselect','multiselect','a:0:{}'),(26,'myCheckbox','checkbox',''),(26,'myDate','date',NULL),(26,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(26,'myImageBlock','block','a:0:{}'),(26,'myInput','input',''),(26,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(26,'myMultihref','multihref','a:0:{}'),(26,'myNumber','numeric',''),(26,'mySelect','select',NULL),(26,'myTextarea','textarea',''),(26,'myWysiwyg','wysiwyg',''),(27,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(27,'contentcontent1','wysiwyg',''),(27,'headDescription','input',''),(27,'headline','input','News'),(27,'headlinecontent1','input',''),(27,'headTitle','input',''),(27,'leadcontent1','wysiwyg','<p>Any kind of structured data is stored in \"Objects\".&nbsp;</p>\n'),(27,'multiselect','multiselect','a:0:{}'),(27,'myCheckbox','checkbox',''),(27,'myDate','date',NULL),(27,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(27,'myImageBlock','block','a:0:{}'),(27,'myInput','input',''),(27,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(27,'myMultihref','multihref','a:0:{}'),(27,'myNumber','numeric',''),(27,'mySelect','select',NULL),(27,'myTextarea','textarea',''),(27,'myWysiwyg','wysiwyg',''),(28,'content','areablock','a:4:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}i:1;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:5:\"image\";}i:2;a:2:{s:3:\"key\";s:1:\"3\";s:4:\"type\";s:5:\"image\";}i:3;a:2:{s:3:\"key\";s:1:\"4\";s:4:\"type\";s:5:\"image\";}}'),(28,'contentcontent1','wysiwyg','<p>On this page we use \"Properties\" to hide the navigation on the left and to change the color of the header to blue.&nbsp;</p>\n\n<p>Properties are very useful to control the behavior or to store meta data of documents, assets and objects. And the best: they are inheritable.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>On the following screens you can see how this is done in this example.</p>\n'),(28,'headDescription','input',''),(28,'headline','input','Properties'),(28,'headlinecontent1','input',''),(28,'headlinecontent2','input',''),(28,'headlinecontent3','input',''),(28,'headlinecontent4','input',''),(28,'headTitle','input',''),(28,'imagecontent2','image','a:9:{s:2:\"id\";i:61;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(28,'imagecontent3','image','a:9:{s:2:\"id\";i:62;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(28,'imagecontent4','image','a:9:{s:2:\"id\";i:63;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(28,'leadcontent1','wysiwyg',''),(28,'leadcontent2','wysiwyg',''),(28,'leadcontent3','wysiwyg',''),(28,'leadcontent4','wysiwyg',''),(29,'content','areablock','a:2:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}i:1;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:5:\"image\";}}'),(29,'contentcontent1','wysiwyg','<p>This page demonstrates how to use the \"Tag &amp; Snippet Management\" to inject codes into the HTML source code. This functionality can be used to easily integrate tracking codes, conversion codes, social plugins and whatever that needs to go into the HTML.</p>\n\n<p>&nbsp;</p>\n\n<p>The functionality is similar to this products:&nbsp;</p>\n\n<p><a href=\"http://www.google.com/tagmanager/\">http://www.google.com/tagmanager/</a>&nbsp;</p>\n\n<p><a href=\"http://www.searchdiscovery.com/satellite/\">http://www.searchdiscovery.com/satellite/&nbsp;</a></p>\n\n<p><a href=\"http://www.tagcommander.com/en/\">http://www.tagcommander.com/en/</a></p>\n\n<p>&nbsp;</p>\n\n<p>In our example we use it to integrate a facebook social plugin.</p>\n'),(29,'headDescription','input',''),(29,'headline','input','Tag & Snippet Management'),(29,'headlinecontent1','input','... gives all the freedom back to the marketing dept.'),(29,'headlinecontent2','input',''),(29,'headTitle','input',''),(29,'imagecontent2','image','a:9:{s:2:\"id\";i:64;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(29,'leadcontent1','wysiwyg',''),(29,'leadcontent2','wysiwyg',''),(30,'content','areablock','a:3:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}i:1;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:5:\"image\";}i:2;a:2:{s:3:\"key\";s:1:\"3\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(30,'contentcontent1','wysiwyg','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.&nbsp;</p>\n'),(30,'contentcontent3','wysiwyg','<p>Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n'),(30,'headDescription','input',''),(30,'headline','input','Content Inheritance'),(30,'headlinecontent1','input','First Headline'),(30,'headlinecontent2','input',''),(30,'headlinecontent3','input','Second Headline'),(30,'headTitle','input',''),(30,'imagecontent2','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(30,'leadcontent1','wysiwyg','<p>This is the Master Document</p>\n'),(30,'leadcontent2','wysiwyg',''),(30,'leadcontent3','wysiwyg',''),(31,'content','areablock','a:3:{i:0;a:2:{s:3:\"key\";s:1:\"3\";s:4:\"type\";s:7:\"wysiwyg\";}i:1;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:5:\"image\";}i:2;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(31,'headline','input','Content Inheritance (Slave)'),(31,'leadcontent1','wysiwyg','<p>This is the Slave Document</p>\n'),(34,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(34,'contentcontent1','wysiwyg','<p>This page has a hardlink as child (see navigation on the left).&nbsp;</p>\n\n<p>This hardlink points to \"<a href=\"/basic-examples\">Basic Examples</a>\", so the whole content of /basic-examples is available in /advaned-examples/hardlink/basic-examples.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Want to know more about hardlinks?&nbsp;</p>\n\n<ul>\n	<li><a href=\"http://en.wikipedia.org/wiki/Hard_link\">http://en.wikipedia.org/wiki/Hard_link</a></li>\n	<li>see also:&nbsp;<a href=\"http://en.wikipedia.org/wiki/Symbolic_link\">http://en.wikipedia.org/wiki/Symbolic_link</a>&nbsp;</li>\n</ul>\n\n<p>&nbsp;</p>\n'),(34,'headDescription','input',''),(34,'headline','input','Hard Link Example'),(34,'headlinecontent1','input',''),(34,'headTitle','input',''),(34,'leadcontent1','wysiwyg',''),(35,'content','areablock','a:2:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:20:\"image-hotspot-marker\";}i:1;a:2:{s:3:\"key\";s:1:\"2\";s:4:\"type\";s:20:\"image-hotspot-marker\";}}'),(35,'headDescription','input',''),(35,'headline','input','Image with Hotspots & Markers'),(35,'headTitle','input',''),(35,'imagecontent1','image','a:9:{s:2:\"id\";i:53;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:4:{i:0;a:3:{s:3:\"top\";d:35.220125786163521;s:4:\"left\";d:82.098765432098759;s:4:\"data\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"title\";s:5:\"value\";s:27:\"Table Mountain Peak Station\";s:4:\"type\";s:9:\"textfield\";}}}i:1;a:3:{s:3:\"top\";d:67.924528301886795;s:4:\"left\";d:9.0534979423868318;s:4:\"data\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"title\";s:5:\"value\";s:16:\"Victoria Harbour\";s:4:\"type\";s:9:\"textfield\";}}}i:2;a:3:{s:3:\"top\";d:57.232704402515722;s:4:\"left\";d:45.267489711934154;s:4:\"data\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"title\";s:5:\"value\";s:12:\"District Six\";s:4:\"type\";s:9:\"textfield\";}}}i:3;a:3:{s:3:\"top\";d:45.911949685534594;s:4:\"left\";d:98.971193415637856;s:4:\"data\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"title\";s:5:\"value\";s:11:\"Lion\'s Head\";s:4:\"type\";s:9:\"textfield\";}}}}}'),(35,'imagecontent2','image','a:9:{s:2:\"id\";i:51;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:3:{i:0;a:5:{s:3:\"top\";d:0.54794520547945003;s:4:\"left\";d:20.370370370370001;s:5:\"width\";d:22.016460905350002;s:6:\"height\";d:21.917808219177999;s:4:\"data\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"title\";s:5:\"value\";s:3:\"Ear\";s:4:\"type\";s:9:\"textfield\";}}}i:1;a:5:{s:3:\"top\";d:59.178082191781002;s:4:\"left\";d:8.8477366255144005;s:5:\"width\";d:33.127572016461002;s:6:\"height\";d:40.273972602740002;s:4:\"data\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"title\";s:5:\"value\";s:5:\"Claws\";s:4:\"type\";s:9:\"textfield\";}}}i:2;a:5:{s:3:\"top\";d:25.205479452054998;s:4:\"left\";d:11.934156378600999;s:5:\"width\";d:16.460905349794;s:6:\"height\";d:18.356164383562;s:4:\"data\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"title\";s:5:\"value\";s:3:\"Eye\";s:4:\"type\";s:9:\"textfield\";}}}}s:6:\"marker\";a:0:{}}'),(36,'content','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:7:\"wysiwyg\";}}'),(36,'contentcontent1','wysiwyg','<p>&nbsp;</p>\n\n<p>The search is using the contents from&nbsp;pimcore.org.&nbsp;<strong>TIP</strong>: Search for \"web\".&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n'),(36,'headDescription','input',''),(36,'headline','input','Search'),(36,'headlinecontent1','input',''),(36,'headTitle','input',''),(36,'leadcontent1','wysiwyg',''),(36,'multiselect','multiselect','a:0:{}'),(36,'myCheckbox','checkbox',''),(36,'myDate','date',NULL),(36,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(36,'myImageBlock','block','a:0:{}'),(36,'myInput','input',''),(36,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(36,'myMultihref','multihref','a:0:{}'),(36,'myNumber','numeric',''),(36,'mySelect','select',NULL),(36,'myTextarea','textarea',''),(36,'myWysiwyg','wysiwyg',''),(37,'content','areablock','a:0:{}'),(37,'headDescription','input',''),(37,'headline','input','Contact Form'),(37,'headTitle','input',''),(37,'multiselect','multiselect','a:0:{}'),(37,'myCheckbox','checkbox',''),(37,'myDate','date',NULL),(37,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(37,'myImageBlock','block','a:0:{}'),(37,'myInput','input',''),(37,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(37,'myMultihref','multihref','a:0:{}'),(37,'myNumber','numeric',''),(37,'mySelect','select',NULL),(37,'myTextarea','textarea',''),(37,'myWysiwyg','wysiwyg',''),(38,'content','wysiwyg','<p><strong>Gender</strong>: %Text(gender);&nbsp;</p>\n\n<p><strong>Firstname</strong>: %Text(firstname);<br />\n<strong>Lastname</strong>: %Text(lastname);<br />\n<strong>E-Mail</strong>: %Text(email);&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Message</strong>:<br />\n%Text(message);&nbsp;</p>\n\n<p>&nbsp;</p>\n'),(38,'headline','input','You\'ve got a new E-Mail!'),(38,'multiselect','multiselect','a:0:{}'),(38,'myCheckbox','checkbox',''),(38,'myDate','date',NULL),(38,'myHref','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(38,'myImageBlock','block','a:0:{}'),(38,'myInput','input',''),(38,'myLink','link','a:10:{s:4:\"type\";s:8:\"internal\";s:4:\"path\";s:0:\"\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(38,'myMultihref','multihref','a:0:{}'),(38,'myNumber','numeric',''),(38,'mySelect','select',NULL),(38,'myTextarea','textarea',''),(38,'myWysiwyg','wysiwyg','');
/*!40000 ALTER TABLE `documents_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_email`
--

DROP TABLE IF EXISTS `documents_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_email` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_email`
--

LOCK TABLES `documents_email` WRITE;
/*!40000 ALTER TABLE `documents_email` DISABLE KEYS */;
INSERT INTO `documents_email` VALUES (38,'','default','default','/advanced/email.php','bernhard.rusch@elements.at','webserver@pimcore.org','','','Contact Form');
/*!40000 ALTER TABLE `documents_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_hardlink`
--

DROP TABLE IF EXISTS `documents_hardlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_hardlink` (
  `id` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `propertiesFromSource` tinyint(1) DEFAULT NULL,
  `childsFromSource` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_hardlink`
--

LOCK TABLES `documents_hardlink` WRITE;
/*!40000 ALTER TABLE `documents_hardlink` DISABLE KEYS */;
INSERT INTO `documents_hardlink` VALUES (33,3,1,1);
/*!40000 ALTER TABLE `documents_hardlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_link`
--

DROP TABLE IF EXISTS `documents_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_link` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `internalType` enum('document','asset') DEFAULT NULL,
  `internal` int(11) unsigned DEFAULT NULL,
  `direct` varchar(1000) DEFAULT NULL,
  `linktype` enum('direct','internal') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_link`
--

LOCK TABLES `documents_link` WRITE;
/*!40000 ALTER TABLE `documents_link` DISABLE KEYS */;
INSERT INTO `documents_link` VALUES (32,NULL,NULL,'http://www.pimcore.org/','direct');
/*!40000 ALTER TABLE `documents_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_page`
--

DROP TABLE IF EXISTS `documents_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_page` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `metaData` text,
  `prettyUrl` varchar(255) DEFAULT NULL,
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  `css` longtext,
  PRIMARY KEY (`id`),
  KEY `prettyUrl` (`prettyUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_page`
--

LOCK TABLES `documents_page` WRITE;
/*!40000 ALTER TABLE `documents_page` DISABLE KEYS */;
INSERT INTO `documents_page` VALUES (1,'','content','portal','','','','','a:0:{}','',NULL,NULL),(3,'','content','default','','','','','a:0:{}','',NULL,''),(4,'','content','default','','','','','a:0:{}','',NULL,''),(5,'','advanced','index','','','','','a:0:{}','',NULL,''),(6,'','content','default','','','','','a:0:{}','',NULL,''),(7,'','content','default','','','','','a:0:{}','',NULL,''),(9,'','advanced','object-form','','','','','a:0:{}','',NULL,''),(18,'','content','default','','','','','a:0:{}','',NULL,''),(19,'','content','default','','','','','a:0:{}','',NULL,''),(20,'','content','default','','','','','a:0:{}','',NULL,''),(21,'','content','thumbnails',NULL,'','','','a:0:{}','',NULL,''),(22,'','content','website-translations',NULL,'','','','a:0:{}','',NULL,''),(23,'','content','website-translations',NULL,'','','','a:0:{}','',NULL,''),(24,'','content','default','','','','','a:0:{}','',NULL,''),(25,'','content','editable-roundup',NULL,'','','','a:0:{}','',NULL,''),(26,'','content','simple-form',NULL,'','','','a:0:{}','',NULL,''),(27,'','news','index',NULL,'','','','a:0:{}','',NULL,''),(28,'','content','default','','','','','a:0:{}','',NULL,''),(29,'','content','default','','','','','a:0:{}','',NULL,''),(30,'','content','default','','','','','a:0:{}','',NULL,''),(31,'','content','default','','','','','a:0:{}','',30,''),(34,'','content','default','','','','','a:0:{}','',NULL,''),(35,'','content','default','','','','','a:0:{}','',NULL,''),(36,'','advanced','search',NULL,'','','','a:0:{}','',NULL,''),(37,'','advanced','contact-form',NULL,'','','','a:0:{}','',NULL,'');
/*!40000 ALTER TABLE `documents_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_snippet`
--

DROP TABLE IF EXISTS `documents_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_snippet` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_snippet`
--

LOCK TABLES `documents_snippet` WRITE;
/*!40000 ALTER TABLE `documents_snippet` DISABLE KEYS */;
INSERT INTO `documents_snippet` VALUES (12,'','default','default','/includes/footer.php',NULL),(15,'','default','default','/snippets/standard-teaser.php',NULL),(16,'','default','default','/snippets/standard-teaser.php',NULL),(17,'','default','default','/snippets/standard-teaser.php',NULL);
/*!40000 ALTER TABLE `documents_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edit_lock`
--

DROP TABLE IF EXISTS `edit_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edit_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `sessionId` varchar(255) DEFAULT NULL,
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `cidtype` (`cid`,`ctype`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_lock`
--

LOCK TABLES `edit_lock` WRITE;
/*!40000 ALTER TABLE `edit_lock` DISABLE KEYS */;
INSERT INTO `edit_lock` VALUES (21,8,'document',2,'8vrcajba9ipjl93ahd1s0c0k7p1t6aa8',1368525882);
/*!40000 ALTER TABLE `edit_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documentId` int(11) DEFAULT NULL,
  `requestUri` varchar(255) DEFAULT NULL,
  `params` text,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `sentDate` bigint(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glossary`
--

DROP TABLE IF EXISTS `glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glossary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(10) DEFAULT NULL,
  `casesensitive` tinyint(1) DEFAULT NULL,
  `exactmatch` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `acronym` varchar(255) DEFAULT NULL,
  `site` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `language` (`language`),
  KEY `site` (`site`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glossary`
--

LOCK TABLES `glossary` WRITE;
/*!40000 ALTER TABLE `glossary` DISABLE KEYS */;
INSERT INTO `glossary` VALUES (1,'en',0,1,'occidental','7',NULL,NULL,0),(2,'en',0,1,'vocabular','20',NULL,NULL,0),(3,'en',0,1,'resultant','5',NULL,NULL,0),(4,'en',0,1,'familie','18',NULL,NULL,0),(5,'en',0,1,'omnicos','19',NULL,NULL,0),(6,'en',0,1,'coalesce',NULL,'coalesce',NULL,0),(7,'en',0,1,'grammatica',NULL,NULL,'grammatica',0);
/*!40000 ALTER TABLE `glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `http_error_log`
--

DROP TABLE IF EXISTS `http_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `http_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) DEFAULT NULL,
  `code` int(3) DEFAULT NULL,
  `parametersGet` longtext,
  `parametersPost` longtext,
  `cookies` longtext,
  `serverVars` longtext,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `path` (`path`(255)),
  KEY `code` (`code`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `http_error_log`
--

LOCK TABLES `http_error_log` WRITE;
/*!40000 ALTER TABLE `http_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `http_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyvalue_groups`
--

DROP TABLE IF EXISTS `keyvalue_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyvalue_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyvalue_groups`
--

LOCK TABLES `keyvalue_groups` WRITE;
/*!40000 ALTER TABLE `keyvalue_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyvalue_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyvalue_keys`
--

DROP TABLE IF EXISTS `keyvalue_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyvalue_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` enum('bool','number','select','text') DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `possiblevalues` text,
  `group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  CONSTRAINT `keyvalue_keys_ibfk_1` FOREIGN KEY (`group`) REFERENCES `keyvalue_groups` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyvalue_keys`
--

LOCK TABLES `keyvalue_keys` WRITE;
/*!40000 ALTER TABLE `keyvalue_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyvalue_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locks` (
  `id` varchar(150) NOT NULL DEFAULT '',
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `ctype` enum('asset','document','object') DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes_data`
--

DROP TABLE IF EXISTS `notes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` enum('text','date','document','asset','object','bool') DEFAULT NULL,
  `data` text,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes_data`
--

LOCK TABLES `notes_data` WRITE;
/*!40000 ALTER TABLE `notes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `object_2`
--

DROP TABLE IF EXISTS `object_2`;
/*!50001 DROP VIEW IF EXISTS `object_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_2` (
  `oo_id` int(11),
  `oo_classId` int(11),
  `oo_className` varchar(255),
  `date` bigint(20),
  `title` varchar(255),
  `shortText` longtext,
  `text` longtext,
  `image_1` int(11),
  `image_2` int(11),
  `image_3` int(11),
  `o_id` int(11) unsigned,
  `o_parentId` int(11) unsigned,
  `o_type` enum('object','folder','variant'),
  `o_key` varchar(255),
  `o_path` varchar(255),
  `o_index` int(11) unsigned,
  `o_published` tinyint(1) unsigned,
  `o_creationDate` bigint(20) unsigned,
  `o_modificationDate` bigint(20) unsigned,
  `o_userOwner` int(11) unsigned,
  `o_userModification` int(11) unsigned,
  `o_classId` int(11) unsigned,
  `o_className` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `object_3`
--

DROP TABLE IF EXISTS `object_3`;
/*!50001 DROP VIEW IF EXISTS `object_3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_3` (
  `oo_id` int(11),
  `oo_classId` int(11),
  `oo_className` varchar(255),
  `person__id` int(11),
  `person__type` enum('document','asset','object'),
  `date` bigint(20),
  `message` longtext,
  `terms` tinyint(1),
  `o_id` int(11) unsigned,
  `o_parentId` int(11) unsigned,
  `o_type` enum('object','folder','variant'),
  `o_key` varchar(255),
  `o_path` varchar(255),
  `o_index` int(11) unsigned,
  `o_published` tinyint(1) unsigned,
  `o_creationDate` bigint(20) unsigned,
  `o_modificationDate` bigint(20) unsigned,
  `o_userOwner` int(11) unsigned,
  `o_userModification` int(11) unsigned,
  `o_classId` int(11) unsigned,
  `o_className` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `object_4`
--

DROP TABLE IF EXISTS `object_4`;
/*!50001 DROP VIEW IF EXISTS `object_4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_4` (
  `oo_id` int(11),
  `oo_classId` int(11),
  `oo_className` varchar(255),
  `gender` varchar(255),
  `firstname` varchar(255),
  `lastname` varchar(255),
  `email` varchar(255),
  `newsletterActive` tinyint(1),
  `newsletterConfirmed` tinyint(1),
  `dateRegister` bigint(20),
  `o_id` int(11) unsigned,
  `o_parentId` int(11) unsigned,
  `o_type` enum('object','folder','variant'),
  `o_key` varchar(255),
  `o_path` varchar(255),
  `o_index` int(11) unsigned,
  `o_published` tinyint(1) unsigned,
  `o_creationDate` bigint(20) unsigned,
  `o_modificationDate` bigint(20) unsigned,
  `o_userOwner` int(11) unsigned,
  `o_userModification` int(11) unsigned,
  `o_classId` int(11) unsigned,
  `o_className` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `object_query_2`
--

DROP TABLE IF EXISTS `object_query_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_query_2` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '2',
  `oo_className` varchar(255) DEFAULT 'news',
  `date` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `shortText` longtext,
  `text` longtext,
  `image_1` int(11) DEFAULT NULL,
  `image_2` int(11) DEFAULT NULL,
  `image_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_2`
--

LOCK TABLES `object_query_2` WRITE;
/*!40000 ALTER TABLE `object_query_2` DISABLE KEYS */;
INSERT INTO `object_query_2` VALUES (3,2,'news',1374147900,'Lorem ipsum dolor sit amet','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.','Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam <a href=\"/basic-examples/content-page\">ultricies </a>nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget <a href=\"/basic-examples/editable-roundup\">condimentum </a>rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. ',49,43,52),(4,2,'news',1369761300,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ',51,NULL,NULL),(5,2,'news',1370037600,'Nam eget dui','Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ',NULL,NULL,NULL),(6,2,'news',1354558500,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ',25,NULL,NULL),(7,2,'news',1360606500,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ',18,NULL,NULL),(8,2,'news',1360001700,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ',20,NULL,NULL),(9,2,'news',1352830500,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ',21,NULL,NULL);
/*!40000 ALTER TABLE `object_query_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_3`
--

DROP TABLE IF EXISTS `object_query_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_query_3` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '3',
  `oo_className` varchar(255) DEFAULT 'inquiry',
  `person__id` int(11) DEFAULT NULL,
  `person__type` enum('document','asset','object') DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `message` longtext,
  `terms` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_3`
--

LOCK TABLES `object_query_3` WRITE;
/*!40000 ALTER TABLE `object_query_3` DISABLE KEYS */;
INSERT INTO `object_query_3` VALUES (29,3,'inquiry',28,'object',1368630902,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',1),(31,3,'inquiry',30,'object',1368630916,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',1);
/*!40000 ALTER TABLE `object_query_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_4`
--

DROP TABLE IF EXISTS `object_query_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_query_4` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '4',
  `oo_className` varchar(255) DEFAULT 'persons',
  `gender` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `newsletterActive` tinyint(1) DEFAULT NULL,
  `newsletterConfirmed` tinyint(1) DEFAULT NULL,
  `dateRegister` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_4`
--

LOCK TABLES `object_query_4` WRITE;
/*!40000 ALTER TABLE `object_query_4` DISABLE KEYS */;
INSERT INTO `object_query_4` VALUES (28,4,'persons','male','John','Doe','john@doe.com',NULL,NULL,1368630902),(30,4,'persons','female','Jane','Doe','jane@doe.com',NULL,NULL,1368630916);
/*!40000 ALTER TABLE `object_query_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_2`
--

DROP TABLE IF EXISTS `object_relations_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_relations_2` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`src_id`,`dest_id`,`ownertype`,`ownername`,`fieldname`,`type`,`position`),
  KEY `index` (`index`),
  KEY `src_id` (`src_id`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_2`
--

LOCK TABLES `object_relations_2` WRITE;
/*!40000 ALTER TABLE `object_relations_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_3`
--

DROP TABLE IF EXISTS `object_relations_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_relations_3` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`src_id`,`dest_id`,`ownertype`,`ownername`,`fieldname`,`type`,`position`),
  KEY `index` (`index`),
  KEY `src_id` (`src_id`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_3`
--

LOCK TABLES `object_relations_3` WRITE;
/*!40000 ALTER TABLE `object_relations_3` DISABLE KEYS */;
INSERT INTO `object_relations_3` VALUES (29,28,'object','person',0,'object','','0'),(31,30,'object','person',0,'object','','0');
/*!40000 ALTER TABLE `object_relations_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_4`
--

DROP TABLE IF EXISTS `object_relations_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_relations_4` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`src_id`,`dest_id`,`ownertype`,`ownername`,`fieldname`,`type`,`position`),
  KEY `index` (`index`),
  KEY `src_id` (`src_id`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_4`
--

LOCK TABLES `object_relations_4` WRITE;
/*!40000 ALTER TABLE `object_relations_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_2`
--

DROP TABLE IF EXISTS `object_store_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_store_2` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `date` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `shortText` longtext,
  `text` longtext,
  `image_1` int(11) DEFAULT NULL,
  `image_2` int(11) DEFAULT NULL,
  `image_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_2`
--

LOCK TABLES `object_store_2` WRITE;
/*!40000 ALTER TABLE `object_store_2` DISABLE KEYS */;
INSERT INTO `object_store_2` VALUES (3,1374147900,'Lorem ipsum dolor sit amet','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.','<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam <a href=\"/basic-examples/content-page\">ultricies </a>nisi vel augue.</p>\n\n<p>Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget <a href=\"/basic-examples/editable-roundup\">condimentum </a>rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\n',49,43,52),(4,1369761300,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','<p>Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n',51,NULL,NULL),(5,1370037600,'Nam eget dui','Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.','<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n',NULL,NULL,NULL),(6,1354558500,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','<p>Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n',25,NULL,NULL),(7,1360606500,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','<p>Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n',18,NULL,NULL),(8,1360001700,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','<p>Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n',20,NULL,NULL),(9,1352830500,'In enim justo','Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. ','<p>Nam eget dui. Etiam rhoncus. <a href=\"/basic-examples/pdf-viewer\">Maecenas </a>tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed <a href=\"/basic-examples/thumbnails\">fringilla </a>mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n',21,NULL,NULL);
/*!40000 ALTER TABLE `object_store_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_3`
--

DROP TABLE IF EXISTS `object_store_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_store_3` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `date` bigint(20) DEFAULT NULL,
  `message` longtext,
  `terms` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_3`
--

LOCK TABLES `object_store_3` WRITE;
/*!40000 ALTER TABLE `object_store_3` DISABLE KEYS */;
INSERT INTO `object_store_3` VALUES (29,1368630902,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',1),(31,1368630916,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',1);
/*!40000 ALTER TABLE `object_store_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_4`
--

DROP TABLE IF EXISTS `object_store_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_store_4` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `gender` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `newsletterActive` tinyint(1) DEFAULT NULL,
  `newsletterConfirmed` tinyint(1) DEFAULT NULL,
  `dateRegister` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_4`
--

LOCK TABLES `object_store_4` WRITE;
/*!40000 ALTER TABLE `object_store_4` DISABLE KEYS */;
INSERT INTO `object_store_4` VALUES (28,'male','John','Doe','john@doe.com',NULL,NULL,1368630902),(30,'female','Jane','Doe','jane@doe.com',NULL,NULL,1368630916);
/*!40000 ALTER TABLE `object_store_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `o_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `o_parentId` int(11) unsigned DEFAULT NULL,
  `o_type` enum('object','folder','variant') DEFAULT NULL,
  `o_key` varchar(255) DEFAULT '',
  `o_path` varchar(255) DEFAULT NULL,
  `o_index` int(11) unsigned DEFAULT '0',
  `o_published` tinyint(1) unsigned DEFAULT '1',
  `o_creationDate` bigint(20) unsigned DEFAULT NULL,
  `o_modificationDate` bigint(20) unsigned DEFAULT NULL,
  `o_userOwner` int(11) unsigned DEFAULT NULL,
  `o_userModification` int(11) unsigned DEFAULT NULL,
  `o_classId` int(11) unsigned DEFAULT NULL,
  `o_className` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  UNIQUE KEY `unique_fullpath` (`o_path`,`o_key`),
  KEY `key` (`o_key`),
  KEY `path` (`o_path`),
  KEY `published` (`o_published`),
  KEY `parentId` (`o_parentId`),
  KEY `type` (`o_type`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,0,'folder','','/',999999,1,1368522989,1368522989,1,1,NULL,NULL),(2,1,'folder','news','/',NULL,1,1368613451,1368613451,2,2,NULL,NULL),(3,2,'object','lorem-ipsum','/news/',0,1,1368613483,1368614073,2,2,2,'news'),(4,2,'object','in-enim-justo','/news/',0,1,1368613645,1368613690,2,2,2,'news'),(5,2,'object','nam-eget-dui','/news/',0,1,1368613700,1368614036,2,2,2,'news'),(6,2,'object','in-enim-justo_2','/news/',0,1,1368615188,1368615389,2,2,2,'news'),(7,2,'object','in-enim-justo_3','/news/',0,1,1368615191,1368615267,2,2,2,'news'),(8,2,'object','in-enim-justo_4','/news/',0,1,1368615194,1368615264,2,2,2,'news'),(9,2,'object','in-enim-justo_5','/news/',0,1,1368615197,1368615261,2,2,2,'news'),(10,1,'folder','crm','/',NULL,1,1368620607,1368620607,2,2,NULL,NULL),(11,1,'folder','inquiries','/',NULL,1,1368620624,1368620624,2,2,NULL,NULL),(28,10,'object','john-doe.com','/crm/',NULL,1,1368630902,1368630902,NULL,NULL,4,'person'),(29,11,'object','may-15-2013-5-15-02-pm~john-doe.com','/inquiries/',NULL,1,1368630902,1368630902,NULL,NULL,3,'inquiry'),(30,10,'object','jane-doe.com','/crm/',NULL,1,1368630916,1368630916,NULL,NULL,4,'person'),(31,11,'object','may-15-2013-5-15-16-pm~jane-doe.com','/inquiries/',NULL,1,1368630916,1368630916,NULL,NULL,3,'inquiry');
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `cpath` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` enum('text','date','document','asset','object','bool','select') DEFAULT NULL,
  `data` text,
  `inheritable` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`cid`,`ctype`,`name`),
  KEY `cpath` (`cpath`),
  KEY `inheritable` (`inheritable`),
  KEY `ctype` (`ctype`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'document','/','language','text','en',1),(1,'document','/','leftNavStartNode','document','1',1),(1,'document','/','navigation_name','text','Home',0),(3,'document','/basic-examples','navigation_name','text','Basic Examples',0),(4,'document','/introduction','navigation_name','text','Introduction',0),(5,'document','/advanced-examples','leftNavStartNode','document','5',1),(5,'document','/advanced-examples','navigation_name','text','Advanced Examples',0),(6,'document','/experiments','navigation_name','text','Experiments',0),(7,'document','/basic-examples/html5-video','navigation_name','text','HTML5 Video',0),(9,'document','/advanced-examples/creating-objects-using-forms','navigation_name','text','Creating Objects with a Form',0),(18,'document','/basic-examples/pdf-viewer','navigation_name','text','PDF Viewer',0),(19,'document','/basic-examples/galleries','navigation_name','text','Galleries',0),(20,'document','/basic-examples/glossary','navigation_name','text','Glossary',0),(21,'document','/basic-examples/thumbnails','navigation_name','text','Thumbnails',0),(22,'document','/basic-examples/website-translations','navigation_name','text','Website Translations',0),(23,'document','/basic-examples/website-translations/german-translation','language','text','de',1),(23,'document','/basic-examples/website-translations/german-translation','navigation_name','text','Deutsche Übersetzung',0),(24,'document','/basic-examples/content-page','navigation_name','text','Content Page',0),(25,'document','/basic-examples/editable-roundup','navigation_name','text','Editable Round-Up',0),(26,'document','/basic-examples/form','navigation_name','text','Simple Form',0),(27,'document','/basic-examples/news','navigation_name','text','News',0),(28,'document','/basic-examples/properties','headerColor','select','blue',1),(28,'document','/basic-examples/properties','leftNavHide','bool','1',0),(28,'document','/basic-examples/properties','navigation_name','text','Properties',0),(29,'document','/basic-examples/tag-and-snippet-management','navigation_name','text','Tag & Snippet Management',0),(30,'document','/advanced-examples/content-inheritance','navigation_name','text','Content Inheritance',0),(31,'document','/advanced-examples/content-inheritance/content-inheritance','navigation_name','text','Slave Document',0),(32,'document','/basic-examples/pimcore.org','navigation_name','text','External Link',0),(32,'document','/basic-examples/pimcore.org','navigation_target','text','_blank',0),(33,'document','/advanced-examples/hard-link/basic-examples','leftNavStartNode','document','5',1),(34,'document','/advanced-examples/hard-link','navigation_name','text','Hard Link',0),(35,'document','/advanced-examples/image-with-hotspots-and-markers','navigation_name','text','Image with Hotspots',0),(36,'document','/advanced-examples/search','navigation_name','text','Search',0),(36,'asset','/documents/documentation.pdf','document_page_count','text','39',0),(37,'document','/advanced-examples/contact-form','email','document','38',1),(37,'document','/advanced-examples/contact-form','navigation_name','text','Contact Form',0);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties_predefined`
--

DROP TABLE IF EXISTS `properties_predefined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties_predefined` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `description` text,
  `key` varchar(255) DEFAULT NULL,
  `type` enum('text','document','asset','bool','select','object') DEFAULT NULL,
  `data` text,
  `config` text,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `inheritable` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `id` (`id`),
  KEY `key` (`key`),
  KEY `type` (`type`),
  KEY `ctype` (`ctype`),
  KEY `inheritable` (`inheritable`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties_predefined`
--

LOCK TABLES `properties_predefined` WRITE;
/*!40000 ALTER TABLE `properties_predefined` DISABLE KEYS */;
INSERT INTO `properties_predefined` VALUES (1,'Left Navigation Start Node','Where the tree of the left navigation should start','leftNavStartNode','document','',NULL,'document',1),(2,'Hide Left Navigation','','leftNavHide','bool','true','','document',0),(3,'Header Color','','headerColor','select',NULL,'orange,blue,green','document',1);
/*!40000 ALTER TABLE `properties_predefined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recyclebin`
--

DROP TABLE IF EXISTS `recyclebin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recyclebin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(20) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `amount` int(3) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `deletedby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recyclebin`
--

LOCK TABLES `recyclebin` WRITE;
/*!40000 ALTER TABLE `recyclebin` DISABLE KEYS */;
/*!40000 ALTER TABLE `recyclebin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL,
  `sourceEntireUrl` tinyint(1) DEFAULT NULL,
  `sourceSite` int(11) DEFAULT NULL,
  `passThroughParameters` tinyint(1) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `targetSite` int(11) DEFAULT NULL,
  `statusCode` varchar(3) DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `expiry` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanitycheck`
--

DROP TABLE IF EXISTS `sanitycheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanitycheck` (
  `id` int(11) unsigned NOT NULL,
  `type` enum('document','asset','object') NOT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanitycheck`
--

LOCK TABLES `sanitycheck` WRITE;
/*!40000 ALTER TABLE `sanitycheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanitycheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_tasks`
--

DROP TABLE IF EXISTS `schedule_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `date` bigint(20) unsigned DEFAULT NULL,
  `action` enum('publish','unpublish','delete','publish-version') DEFAULT NULL,
  `version` bigint(20) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_tasks`
--

LOCK TABLES `schedule_tasks` WRITE;
/*!40000 ALTER TABLE `schedule_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_backend_data`
--

DROP TABLE IF EXISTS `search_backend_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_backend_data` (
  `id` int(11) NOT NULL,
  `fullpath` varchar(510) DEFAULT NULL,
  `maintype` varchar(8) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `published` bigint(20) DEFAULT NULL,
  `creationDate` bigint(20) DEFAULT NULL,
  `modificationDate` bigint(20) DEFAULT NULL,
  `userOwner` int(11) DEFAULT NULL,
  `userModification` int(11) DEFAULT NULL,
  `data` longtext,
  `properties` text,
  PRIMARY KEY (`id`,`maintype`),
  KEY `id` (`id`),
  KEY `fullpath` (`fullpath`(333)),
  KEY `maintype` (`maintype`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `published` (`published`),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `properties` (`properties`),
  FULLTEXT KEY `fulltext` (`data`,`properties`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_backend_data`
--

LOCK TABLES `search_backend_data` WRITE;
/*!40000 ALTER TABLE `search_backend_data` DISABLE KEYS */;
INSERT INTO `search_backend_data` VALUES (5,'/advanced-examples','document','page','page',1,1368523389,1368620091,2,2,'ID: 5  \nPath: /advanced-examples  \n The following list is generated automatically. See controller/action to see how it\'s done.&nbsp; Advanced Examples Advanced Examples ','Advanced Examples '),(3,'/basic-examples','document','page','page',1,1368523212,1368626600,2,2,'ID: 3  \nPath: /basic-examples  \n 1 1 1 1 1 1 Basic Examples HTML5 Video Glossary Simple Content News PDF Viewer Thumbnails Round-Up Properties Galleries Website Translations Simple Form Tag Manager See in Action See in Action See in Action See in Action See in Action See in Action See in Action See in Action See in Action See in Action See in Action Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. direct direct direct direct direct direct direct direct direct direct direct direct Basic Examples ','Basic Examples '),(4,'/introduction','document','page','page',1,1368523285,1368689817,2,2,'ID: 4  \nPath: /introduction  \n Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. &nbsp; Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. &nbsp; Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. &nbsp; It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. &nbsp; Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Overview of the project and how to get started with a simple template. Introduction Nullam quis ante Maecenas tempus, tellus eget condimentum rhoncu Ullamcorper Scelerisque Getting started Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Etiam rhoncu Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. snippet snippet Introduction ','Introduction '),(6,'/experiments','document','page','page',1,1368523410,1368626334,2,2,'ID: 6  \nPath: /experiments  \n Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. &nbsp; Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. &nbsp; Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, Experiments This space is reserved for your individual experiments &amp; tests. Experiments ','Experiments '),(1,'/','document','page','page',1,1368522989,1368689696,1,2,'ID: 1  \nPath: /  \nAlbert Einstein 3 Ready to get impressed? It\'ll blow your mind. Oh yeah, it\'s that good See in Action See in Action Checkmate In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. Check out our examples and dive into the next generation of digital data management. See for yourself. See for yourself Lorem ipsum. Oh yeah, it\'s that good. And lastly, this one. left left We can\'t solve problems by using the same kind of thinking we used when we created them. Cum sociis. See for yourself. Checkmate. video a.pimcore_video_flowplayer { display:block; text-align:center; } #video_51948c20e2d94 .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_51948c20e2d94 = array_merge_recursive({\"dummy\":true},{\"clip\":{\"url\":\"\\/videos\\/home-trailer-english.mp4\"}}); flowplayer(\"video_51948c20e2d94\", { src: \"/pimcore/static/js/lib/flowplayer/flowplayer.swf\", width: \"100%\", height: \"300\" },player_config_video_51948c20e2d94); Home ','Home en '),(7,'/basic-examples/html5-video','document','page','page',1,1368525394,1368545013,2,2,'ID: 7  \nPath: /basic-examples/html5-video  \n HTML5 Video is just as simple as that .... Just drop an video from your assets, the video will be automatically converted to the different HTML5 formats and to the correct size.&nbsp; a.pimcore_video_flowplayer { display:block; text-align:center; } #video_519256f5bec42 .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_519256f5bec42 = array_merge_recursive({\"dummy\":true},{\"clip\":{\"url\":\"\\/demo-website\\/videos\\/home-trailer-english.mp4\"}}); flowplayer(\"video_519256f5bec42\", { src: \"/pimcore/static/js/lib/flowplayer/flowplayer.swf\", width: \"100%\", height: \"300\" },player_config_video_519256f5bec42); HTML5 Video ','HTML5 Video '),(9,'/advanced-examples/creating-objects-using-forms','document','page','page',1,1368525933,1368624176,2,2,'ID: 9  \nPath: /advanced-examples/creating-objects-using-forms  \n &nbsp; In this example we dynamically create objects out of the data submitted via the form. The you can use the same approach to create objects using a commandline script, or wherever you need it. After submitting the form you\'ll find the data in \"Objects\" /crm and /inquiries.&nbsp; &nbsp; &nbsp; And here\'s the form:&nbsp; Please fill all fields and accept the terms of use. Creating Objects &amp; Assets with a Form Creating Objects with a Form ','Creating Objects with a Form '),(10,'/shared','document','folder','folder',1,1368527956,1368527956,2,2,'ID: 10  \nPath: /shared  \nshared','en '),(11,'/shared/includes','document','folder','folder',1,1368527961,1368527961,2,2,'ID: 11  \nPath: /shared/includes  \nincludes','en '),(12,'/shared/includes/footer','document','snippet','snippet',1,1368527967,1368529693,2,2,'ID: 12  \nPath: /shared/includes/footer  \n Designed and built with all the love in the world by&nbsp;@mdo&nbsp;and&nbsp;@fat. Code licensed under&nbsp;Apache License v2.0,&nbsp;Glyphicons Free&nbsp;licensed under&nbsp;CC BY 3.0. © Templates pimcore.org licensed under BSD License pimcore.org Documentation Bug Tracker ',''),(3,'/portal-sujets','asset','folder','folder',1,1368530371,1368632469,2,2,'ID: 3  \nPath: /portal-sujets  \nportal-sujets',''),(4,'/demo-website/portal-sujets/slide-01.jpg','asset','image','image',1,1368530684,1368530684,2,2,'ID: 4  \nPath: /demo-website/portal-sujets/slide-01.jpg  \nslide-01.jpg',''),(5,'/demo-website/portal-sujets/slide-02.jpg','asset','image','image',1,1368530764,1368530764,2,2,'ID: 5  \nPath: /demo-website/portal-sujets/slide-02.jpg  \nslide-02.jpg',''),(6,'/demo-website/portal-sujets/slide-03.jpg','asset','image','image',1,1368530764,1368530764,2,2,'ID: 6  \nPath: /demo-website/portal-sujets/slide-03.jpg  \nslide-03.jpg',''),(13,'/shared/teasers','document','folder','folder',1,1368531657,1368531657,2,2,'ID: 13  \nPath: /shared/teasers  \nteasers','en '),(14,'/shared/teasers/standard','document','folder','folder',1,1368531665,1368531665,2,2,'ID: 14  \nPath: /shared/teasers/standard  \nstandard','en '),(15,'/shared/teasers/standard/basic-examples','document','snippet','snippet',1,1368531692,1368687491,2,2,'ID: 15  \nPath: /shared/teasers/standard/basic-examples  \nFull Responsive Lorem ipsum This demo is based on Bootstrap, the most popular, intuitive, and powerful front-end framework. ',''),(7,'/examples','asset','folder','folder',1,1368531816,1368632468,2,2,'ID: 7  \nPath: /examples  \nexamples',''),(17,'/demo-website/examples/panama','asset','folder','folder',1,1368532826,1368532826,2,2,'ID: 17  \nPath: /demo-website/examples/panama  \npanama',''),(18,'/demo-website/examples/panama/img_0117.jpg','asset','image','image',1,1368532831,1368532831,2,2,'ID: 18  \nPath: /demo-website/examples/panama/img_0117.jpg  \nimg_0117.jpg',''),(19,'/demo-website/examples/panama/img_0201.jpg','asset','image','image',1,1368532832,1368532832,2,2,'ID: 19  \nPath: /demo-website/examples/panama/img_0201.jpg  \nimg_0201.jpg',''),(20,'/demo-website/examples/panama/img_0089.jpg','asset','image','image',1,1368532833,1368532833,2,2,'ID: 20  \nPath: /demo-website/examples/panama/img_0089.jpg  \nimg_0089.jpg',''),(21,'/demo-website/examples/panama/img_0037.jpg','asset','image','image',1,1368532834,1368532834,2,2,'ID: 21  \nPath: /demo-website/examples/panama/img_0037.jpg  \nimg_0037.jpg',''),(22,'/demo-website/examples/panama/img_0399.jpg','asset','image','image',1,1368532836,1368532836,2,2,'ID: 22  \nPath: /demo-website/examples/panama/img_0399.jpg  \nimg_0399.jpg',''),(23,'/demo-website/examples/panama/img_0411.jpg','asset','image','image',1,1368532837,1368532837,2,2,'ID: 23  \nPath: /demo-website/examples/panama/img_0411.jpg  \nimg_0411.jpg',''),(24,'/demo-website/examples/panama/img_0410.jpg','asset','image','image',1,1368532838,1368532838,2,2,'ID: 24  \nPath: /demo-website/examples/panama/img_0410.jpg  \nimg_0410.jpg',''),(25,'/demo-website/examples/panama/img_0160.jpg','asset','image','image',1,1368532839,1368532839,2,2,'ID: 25  \nPath: /demo-website/examples/panama/img_0160.jpg  \nimg_0160.jpg',''),(16,'/shared/teasers/standard/advanced-examples','document','snippet','snippet',1,1368534298,1368688809,2,2,'ID: 16  \nPath: /shared/teasers/standard/advanced-examples  \n Drag &amp; Drop Interface Etiam rhoncu Content is created by simply dragging &amp; dropping blocks, that can&nbsp;be editited in-place and wysiwyg.&nbsp; ',''),(17,'/shared/teasers/standard/experiments','document','snippet','snippet',1,1368534344,1368688977,2,2,'ID: 17  \nPath: /shared/teasers/standard/experiments  \nHTML5 omnipresent Quisque rutrum Drag &amp; drop upload directly&nbsp;into the asset tree, automatic html5 video transcoding, and much more ... ',''),(26,'/videos','asset','folder','folder',1,1368542684,1368632471,2,2,'ID: 26  \nPath: /videos  \nvideos',''),(27,'/demo-website/videos/home-trailer-english.mp4','asset','video','video',1,1368542794,1368545345,2,2,'ID: 27  \nPath: /demo-website/videos/home-trailer-english.mp4  \nhome-trailer-english.mp4',''),(20,'/basic-examples/glossary','document','page','page',1,1368559903,1368561466,2,2,'ID: 20  \nPath: /basic-examples/glossary  \n Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. &nbsp; Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. &nbsp; Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. The Glossary ... ... makes it very simple to automatically link keywords, abbreviation and acronyms. This is not only perfect for SEO but also makes it super easy to navigate in the content.&nbsp; &nbsp; ... this is how it looks in the admin interface. Glossary ','Glossary '),(18,'/basic-examples/pdf-viewer','document','page','page',1,1368548449,1368562801,2,0,'ID: 18  \nPath: /basic-examples/pdf-viewer  \n Isn\'t that amazing? Just drop a PDF, et voilá ...&nbsp; + &#x21e9; x var pimcore_pdf_pdfcontent1 = new pimcore.pdf({ id: \"pimcore-pdf-51929c71c7795\", data: {\"pages\":[{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-1.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-1.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-2.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-2.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-3.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-3.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-4.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-4.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-5.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-5.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-6.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-6.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-7.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-7.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-8.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-8.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-9.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-9.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-10.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-10.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-11.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-11.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-12.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-12.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-13.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-13.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-14.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-14.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-15.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-15.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-16.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-16.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-17.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-17.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-18.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-18.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-19.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-19.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-20.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-20.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-21.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-21.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-22.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-22.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-23.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-23.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-24.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-24.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-25.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-25.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-26.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-26.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-27.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-27.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-28.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-28.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-29.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-29.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-30.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-30.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-31.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-31.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-32.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-32.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-33.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-33.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-34.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-34.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-35.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-35.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-36.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-36.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-37.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-37.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-38.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-38.pjpeg\"},{\"thumbnail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-39.pjpeg\",\"detail\":\"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-39.pjpeg\"}],\"pdf\":\"\\/demo-website\\/documents\\/documentation.pdf\"} }); PDF Viewer ','PDF Viewer '),(29,'/documents','asset','folder','folder',1,1368548619,1368632467,2,2,'ID: 29  \nPath: /documents  \ndocuments',''),(36,'/demo-website/documents/documentation.pdf','asset','document','document',1,1368562442,1368562442,2,2,'ID: 36  \nPath: /demo-website/documents/documentation.pdf  \ndocumentation.pdf','39 '),(37,'/demo-website/examples/italy','asset','folder','folder',1,1368596763,1368596917,2,2,'ID: 37  \nPath: /demo-website/examples/italy  \nitaly',''),(38,'/demo-website/examples/venice/dsc04346.jpg','asset','image','image',1,1368596767,1368596767,2,2,'ID: 38  \nPath: /demo-website/examples/venice/dsc04346.jpg  \ndsc04346.jpg',''),(39,'/demo-website/examples/venice/dsc04344.jpg','asset','image','image',1,1368596768,1368596768,2,2,'ID: 39  \nPath: /demo-website/examples/venice/dsc04344.jpg  \ndsc04344.jpg',''),(40,'/demo-website/examples/venice/dsc04462.jpg','asset','image','image',1,1368596769,1368596769,2,2,'ID: 40  \nPath: /demo-website/examples/venice/dsc04462.jpg  \ndsc04462.jpg',''),(41,'/demo-website/examples/venice/dsc04399.jpg','asset','image','image',1,1368596770,1368596770,2,2,'ID: 41  \nPath: /demo-website/examples/venice/dsc04399.jpg  \ndsc04399.jpg',''),(42,'/demo-website/examples/south-africa','asset','folder','folder',1,1368596785,1368596785,2,2,'ID: 42  \nPath: /demo-website/examples/south-africa  \nsouth-africa',''),(43,'/demo-website/examples/south-africa/img_1414.jpg','asset','image','image',1,1368596789,1368596789,2,2,'ID: 43  \nPath: /demo-website/examples/south-africa/img_1414.jpg  \nimg_1414.jpg',''),(44,'/demo-website/examples/south-africa/img_2133.jpg','asset','image','image',1,1368596791,1368596791,2,2,'ID: 44  \nPath: /demo-website/examples/south-africa/img_2133.jpg  \nimg_2133.jpg',''),(45,'/demo-website/examples/south-africa/img_2240.jpg','asset','image','image',1,1368596793,1368596793,2,2,'ID: 45  \nPath: /demo-website/examples/south-africa/img_2240.jpg  \nimg_2240.jpg',''),(46,'/demo-website/examples/south-africa/img_1752.jpg','asset','image','image',1,1368596795,1368596795,2,2,'ID: 46  \nPath: /demo-website/examples/south-africa/img_1752.jpg  \nimg_1752.jpg',''),(47,'/demo-website/examples/south-africa/img_1739.jpg','asset','image','image',1,1368596798,1368596798,2,2,'ID: 47  \nPath: /demo-website/examples/south-africa/img_1739.jpg  \nimg_1739.jpg',''),(48,'/demo-website/examples/south-africa/img_0391.jpg','asset','image','image',1,1368596800,1368596800,2,2,'ID: 48  \nPath: /demo-website/examples/south-africa/img_0391.jpg  \nimg_0391.jpg',''),(49,'/demo-website/examples/south-africa/img_2155.jpg','asset','image','image',1,1368596801,1368596802,2,2,'ID: 49  \nPath: /demo-website/examples/south-africa/img_2155.jpg  \nimg_2155.jpg',''),(50,'/demo-website/examples/south-africa/img_1544.jpg','asset','image','image',1,1368596804,1368596804,2,2,'ID: 50  \nPath: /demo-website/examples/south-africa/img_1544.jpg  \nimg_1544.jpg',''),(51,'/demo-website/examples/south-africa/img_1842.jpg','asset','image','image',1,1368596806,1368596806,2,2,'ID: 51  \nPath: /demo-website/examples/south-africa/img_1842.jpg  \nimg_1842.jpg',''),(52,'/demo-website/examples/south-africa/img_1920.jpg','asset','image','image',1,1368596808,1368596808,2,2,'ID: 52  \nPath: /demo-website/examples/south-africa/img_1920.jpg  \nimg_1920.jpg',''),(53,'/demo-website/examples/south-africa/img_0322.jpg','asset','image','image',1,1368596810,1368596810,2,2,'ID: 53  \nPath: /demo-website/examples/south-africa/img_0322.jpg  \nimg_0322.jpg',''),(54,'/demo-website/examples/singapore','asset','folder','folder',1,1368596871,1368596871,2,2,'ID: 54  \nPath: /demo-website/examples/singapore  \nsingapore',''),(55,'/demo-website/examples/singapore/dsc03778.jpg','asset','image','image',1,1368597116,1368597116,2,2,'ID: 55  \nPath: /demo-website/examples/singapore/dsc03778.jpg  \ndsc03778.jpg',''),(56,'/demo-website/examples/singapore/dsc03807.jpg','asset','image','image',1,1368597117,1368597118,2,2,'ID: 56  \nPath: /demo-website/examples/singapore/dsc03807.jpg  \ndsc03807.jpg',''),(57,'/demo-website/examples/singapore/dsc03835.jpg','asset','image','image',1,1368597119,1368597119,2,2,'ID: 57  \nPath: /demo-website/examples/singapore/dsc03835.jpg  \ndsc03835.jpg',''),(21,'/basic-examples/thumbnails','document','page','page',1,1368602443,1368606841,2,2,'ID: 21  \nPath: /basic-examples/thumbnails  \n Incredible Possibilities This is the original image This is how it looks in the admin interface ... Thumbnails ','Thumbnails '),(59,'/demo-website/screenshots/thumbnail-configuration.png','asset','image','image',1,1368606782,1368606783,2,2,'ID: 59  \nPath: /demo-website/screenshots/thumbnail-configuration.png  \nthumbnail-configuration.png',''),(22,'/basic-examples/website-translations','document','page','page',1,1368607207,1368609001,2,2,'ID: 22  \nPath: /basic-examples/website-translations  \n &nbsp; Please visit this page to see the German translation of this page. &nbsp; Following some examples:&nbsp; &nbsp; Website Translations Common used terms across the website can be translated centrally, hassle-free and comfortable.&nbsp; &nbsp; &nbsp; This is how it looks in the admin interface ...&nbsp; Website Translations ','Website Translations '),(23,'/basic-examples/website-translations/german-translation','document','page','page',1,1368608357,1368608866,2,2,'ID: 23  \nPath: /basic-examples/website-translations/german-translation  \n Folgend ein paar Beispiele:&nbsp; Website Übersetzungen Häufig genutzte Begriffe auf der gesamten Website können komfortabel, zentral und einfach übersetzt werden. Deutsche Übersetzung ','Deutsche Übersetzung de '),(60,'/demo-website/screenshots/website-translations.png','asset','image','image',1,1368608949,1368608949,2,2,'ID: 60  \nPath: /demo-website/screenshots/website-translations.png  \nwebsite-translations.png',''),(24,'/basic-examples/content-page','document','page','page',1,1368609059,1368611682,2,2,'ID: 24  \nPath: /basic-examples/content-page  \nAlbert Einstein Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. &nbsp; Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. &nbsp; Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. This is just a simple Content-Page ... Where some Content-Blocks are mixed together. Nulla consequat massa quis enim Lorem ipsum. Etiam ultricies. African Animals Donec pede justo, fringilla vel, aliquet nec left We can\'t solve problems by using the same kind of thinking we used when we created them. Dolor sit amet. Nam eget dui. video a.pimcore_video_flowplayer { display:block; text-align:center; } #video_51935b6301d62 .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_51935b6301d62 = array_merge_recursive({\"dummy\":true},{\"clip\":{\"url\":\"\\/demo-website\\/videos\\/home-trailer-english.mp4\"}}); flowplayer(\"video_51935b6301d62\", { src: \"/pimcore/static/js/lib/flowplayer/flowplayer.swf\", width: \"100%\", height: \"300\" },player_config_video_51935b6301d62); Content Page ','Content Page '),(25,'/basic-examples/editable-roundup','document','page','page',1,1368609569,1368610457,2,2,'ID: 25  \nPath: /basic-examples/editable-roundup  \n This is an overview of all available &quot;editables&quot; (except area/areablock/block) Please view this page in the editmode (admin interface)! ... nothing to see here ;-)&nbsp; 1 May 16, 2013 2:00:00 AM /basic-examples/thumbnails Some Text My Link document: /basic-examples/glossarydocument: /basic-examples/thumbnailsdocument: /basic-examples/editable-roundupasset: /demo-website/examples/south-africa/img_1842.jpgasset: /demo-website/examples/south-africa/img_2133.jpgasset: /demo-website/examples/south-africa/img_2240.jpg value2,value4 123 option2 Some Text a.pimcore_video_flowplayer { display:block; text-align:center; } #video_5193569a0dcec .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_5193569a0dcec = array_merge_recursive({\"dummy\":true},{\"clip\":{\"url\":\"\\/demo-website\\/videos\\/home-trailer-english.mp4\"}}); flowplayer(\"video_5193569a0dcec\", { src: \"/pimcore/static/js/lib/flowplayer/flowplayer.swf\", width: \"100%\", height: \"300\" },player_config_video_5193569a0dcec); Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. &nbsp; Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. &nbsp; Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, Value 1Value 2Value 3thisistest Editable Round-Up ','Editable Round-Up '),(26,'/basic-examples/form','document','page','page',1,1368610663,1368610681,2,2,'ID: 26  \nPath: /basic-examples/form  \n Simple Form ','Simple Form '),(27,'/basic-examples/news','document','page','page',1,1368613137,1368614363,2,2,'ID: 27  \nPath: /basic-examples/news  \n News Any kind of structured data is stored in \"Objects\".&nbsp; News ','News '),(2,'/news','object','folder','folder',1,1368613451,1368613451,2,2,'ID: 2  \nPath: /news  \nnews',''),(3,'/news/lorem-ipsum','object','object','news',1,1368613483,1368614073,2,2,'ID: 3  \nPath: /news/lorem-ipsum  \nJul 18, 2013 1:45:00 PM Lorem ipsum dolor sit amet Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. /demo-website/examples/south-africa/img_2155.jpg /demo-website/examples/south-africa/img_1414.jpg /demo-website/examples/south-africa/img_1920.jpg ',''),(4,'/news/in-enim-justo','object','object','news',1,1368613645,1368613690,2,2,'ID: 4  \nPath: /news/in-enim-justo  \nMay 28, 2013 7:15:00 PM In enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, /demo-website/examples/south-africa/img_1842.jpg ',''),(5,'/news/nam-eget-dui','object','object','news',1,1368613700,1368614036,2,2,'ID: 5  \nPath: /news/nam-eget-dui  \nJun 1, 2013 12:00:00 AM Nam eget dui Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ',''),(6,'/news/in-enim-justo_2','object','object','news',1,1368615188,1368615389,2,2,'ID: 6  \nPath: /news/in-enim-justo_2  \nDec 3, 2012 7:15:00 PM In enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, /demo-website/examples/panama/img_0160.jpg ',''),(7,'/news/in-enim-justo_3','object','object','news',1,1368615191,1368615267,2,2,'ID: 7  \nPath: /news/in-enim-justo_3  \nFeb 11, 2013 7:15:00 PM In enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, /demo-website/examples/panama/img_0117.jpg ',''),(8,'/news/in-enim-justo_4','object','object','news',1,1368615194,1368615264,2,2,'ID: 8  \nPath: /news/in-enim-justo_4  \nFeb 4, 2013 7:15:00 PM In enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, /demo-website/examples/panama/img_0089.jpg ',''),(9,'/news/in-enim-justo_5','object','object','news',1,1368615197,1368615261,2,2,'ID: 9  \nPath: /news/in-enim-justo_5  \nNov 13, 2012 7:15:00 PM In enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, /demo-website/examples/panama/img_0037.jpg ',''),(28,'/basic-examples/properties','document','page','page',1,1368615986,1368616909,2,2,'ID: 28  \nPath: /basic-examples/properties  \n On this page we use \"Properties\" to hide the navigation on the left and to change the color of the header to blue.&nbsp; Properties are very useful to control the behavior or to store meta data of documents, assets and objects. And the best: they are inheritable.&nbsp; &nbsp; On the following screens you can see how this is done in this example. Properties Properties ','Properties '),(61,'/demo-website/screenshots/properties-1.png','asset','image','image',1,1368616805,1368616805,2,2,'ID: 61  \nPath: /demo-website/screenshots/properties-1.png  \nproperties-1.png',''),(62,'/demo-website/screenshots/properties-2.png','asset','image','image',1,1368616805,1368616805,2,2,'ID: 62  \nPath: /demo-website/screenshots/properties-2.png  \nproperties-2.png',''),(63,'/demo-website/screenshots/properties-3.png','asset','image','image',1,1368616847,1368616847,2,2,'ID: 63  \nPath: /demo-website/screenshots/properties-3.png  \nproperties-3.png',''),(29,'/basic-examples/tag-and-snippet-management','document','page','page',1,1368617118,1368617704,2,2,'ID: 29  \nPath: /basic-examples/tag-and-snippet-management  \n This page demonstrates how to use the \"Tag &amp; Snippet Management\" to inject codes into the HTML source code. This functionality can be used to easily integrate tracking codes, conversion codes, social plugins and whatever that needs to go into the HTML. &nbsp; The functionality is similar to this products:&nbsp; http://www.google.com/tagmanager/&nbsp; http://www.searchdiscovery.com/satellite/&nbsp; http://www.tagcommander.com/en/ &nbsp; In our example we use it to integrate a facebook social plugin. Tag &amp; Snippet Management ... gives all the freedom back to the marketing dept. Tag & Snippet Management ','Tag & Snippet Management '),(64,'/demo-website/screenshots/tag-snippet-management.png','asset','image','image',1,1368617634,1368617634,2,2,'ID: 64  \nPath: /demo-website/screenshots/tag-snippet-management.png  \ntag-snippet-management.png',''),(10,'/crm','object','folder','folder',1,1368620607,1368620607,2,2,'ID: 10  \nPath: /crm  \ncrm',''),(11,'/inquiries','object','folder','folder',1,1368620624,1368620624,2,2,'ID: 11  \nPath: /inquiries  \ninquiries',''),(36,'/advanced-examples/search','document','page','page',1,1368629524,1368630250,2,2,'ID: 36  \nPath: /advanced-examples/search  \n Search &nbsp; The search is using the contents from&nbsp;pimcore.org.&nbsp;TIP: Search for \"web\".&nbsp; &nbsp; &nbsp; Search ','Search '),(37,'/advanced-examples/contact-form','document','page','page',1,1368630444,1368631569,2,2,'ID: 37  \nPath: /advanced-examples/contact-form  \n Contact Form Contact Form ','Contact Form '),(65,'/demo-website/screenshots/objects-forms.png','asset','image','image',1,1368623266,1368623266,2,2,'ID: 65  \nPath: /demo-website/screenshots/objects-forms.png  \nobjects-forms.png',''),(30,'/crm/jane-doe.com','object','object','person',1,1368630916,1368630916,NULL,NULL,'ID: 30  \nPath: /crm/jane-doe.com  \nfemale Jane Doe jane@doe.com May 15, 2013 5:15:16 PM ',''),(31,'/inquiries/may-15-2013-5-15-16-pm~jane-doe.com','object','object','inquiry',1,1368630916,1368630916,NULL,NULL,'ID: 31  \nPath: /inquiries/may-15-2013-5-15-16-pm~jane-doe.com  \nMay 15, 2013 5:15:16 PM object:/crm/jane-doe.com Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 1 ',''),(30,'/advanced-examples/content-inheritance','document','page','page',1,1368623726,1368623853,2,2,'ID: 30  \nPath: /advanced-examples/content-inheritance  \n Content Inheritance First Headline This is the Master Document Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.&nbsp; Second Headline Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, Content Inheritance ','Content Inheritance '),(31,'/advanced-examples/content-inheritance/content-inheritance','document','page','page',1,1368623866,1368624030,2,2,'ID: 31  \nPath: /advanced-examples/content-inheritance/content-inheritance  \n Content Inheritance (Slave) This is the Slave Document Slave Document ','Slave Document '),(28,'/crm/john-doe.com','object','object','person',1,1368630902,1368630902,NULL,NULL,'ID: 28  \nPath: /crm/john-doe.com  \nmale John Doe john@doe.com May 15, 2013 5:15:02 PM ',''),(29,'/inquiries/may-15-2013-5-15-02-pm~john-doe.com','object','object','inquiry',1,1368630902,1368630902,NULL,NULL,'ID: 29  \nPath: /inquiries/may-15-2013-5-15-02-pm~john-doe.com  \nMay 15, 2013 5:15:02 PM object:/crm/john-doe.com Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 1 ',''),(32,'/basic-examples/pimcore.org','document','link','link',1,1368626404,1368626437,2,2,'ID: 32  \nPath: /basic-examples/pimcore.org  \nExternal Link http://www.pimcore.org/','en External Link _blank '),(33,'/advanced-examples/hardlink/basic-examples','document','hardlink','hardlink',0,1368626461,1368626659,2,2,'ID: 33  \nPath: /advanced-examples/hardlink/basic-examples  \n','en Basic Examples '),(34,'/advanced-examples/hard-link','document','page','page',1,1368626655,1368626835,2,2,'ID: 34  \nPath: /advanced-examples/hard-link  \n This page has a hardlink as child (see navigation on the left).&nbsp; This hardlink points to \"Basic Examples\", so the whole content of /basic-examples is available in /advaned-examples/hardlink/basic-examples.&nbsp; &nbsp; Want to know more about hardlinks?&nbsp; http://en.wikipedia.org/wiki/Hard_link see also:&nbsp;http://en.wikipedia.org/wiki/Symbolic_link&nbsp; &nbsp; Hard Link Example Hard Link ','Hard Link '),(35,'/advanced-examples/image-with-hotspots-and-markers','document','page','page',1,1368626888,1368629331,2,2,'ID: 35  \nPath: /advanced-examples/image-with-hotspots-and-markers  \n Image with Hotspots &amp; Markers Image with Hotspots ','Image with Hotspots '),(38,'/advanced-examples/contact-form/email','document','email','email',1,1368631410,1368632025,2,2,'ID: 38  \nPath: /advanced-examples/contact-form/email  \nGender: %Text(gender);&nbsp; Firstname: %Text(firstname); Lastname: %Text(lastname); E-Mail: %Text(email);&nbsp; &nbsp; Message: %Text(message);&nbsp; &nbsp; You\'ve got a new E-Mail! ',''),(19,'/basic-examples/galleries','document','page','page',1,1368549805,1368597503,2,2,'ID: 19  \nPath: /basic-examples/galleries  \n Creating custom galleries is very simple Autogenerated Gallery (using Renderlet) Custom assembled Gallery Drag an asset folder on the following drop area, and the \"renderlet\" will create automatically a gallery out of the images in the folder. Galleries ','Galleries '),(34,'/screenshots','asset','folder','folder',1,1368560793,1368632470,2,2,'ID: 34  \nPath: /screenshots  \nscreenshots',''),(35,'/demo-website/screenshots/glossary.png','asset','image','image',1,1368560809,1368560809,2,2,'ID: 35  \nPath: /demo-website/screenshots/glossary.png  \nglossary.png','');
/*!40000 ALTER TABLE `search_backend_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domains` text,
  `rootId` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rootId` (`rootId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staticroutes`
--

DROP TABLE IF EXISTS `staticroutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staticroutes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pattern` varchar(255) DEFAULT NULL,
  `reverse` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `variables` varchar(255) DEFAULT NULL,
  `defaults` varchar(255) DEFAULT NULL,
  `siteId` int(11) DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staticroutes`
--

LOCK TABLES `staticroutes` WRITE;
/*!40000 ALTER TABLE `staticroutes` DISABLE KEYS */;
INSERT INTO `staticroutes` VALUES (1,'news','/(.*)_n([\\d]+)/','%prefix/%text_n%id','','news','detail','text,id','',NULL,1);
/*!40000 ALTER TABLE `staticroutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting`
--

DROP TABLE IF EXISTS `targeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `targeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `conditions` longtext,
  `actions` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting`
--

LOCK TABLES `targeting` WRITE;
/*!40000 ALTER TABLE `targeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_events`
--

DROP TABLE IF EXISTS `tracking_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `timestamp` bigint(20) unsigned DEFAULT NULL,
  `year` int(5) unsigned DEFAULT NULL,
  `month` int(2) unsigned DEFAULT NULL,
  `day` int(2) unsigned DEFAULT NULL,
  `dayOfWeek` int(1) unsigned DEFAULT NULL,
  `dayOfYear` int(3) unsigned DEFAULT NULL,
  `weekOfYear` int(2) unsigned DEFAULT NULL,
  `hour` int(2) unsigned DEFAULT NULL,
  `minute` int(2) unsigned DEFAULT NULL,
  `second` int(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `year` (`year`),
  KEY `month` (`month`),
  KEY `day` (`day`),
  KEY `dayOfWeek` (`dayOfWeek`),
  KEY `dayOfYear` (`dayOfYear`),
  KEY `weekOfYear` (`weekOfYear`),
  KEY `hour` (`hour`),
  KEY `minute` (`minute`),
  KEY `second` (`second`),
  KEY `category` (`category`),
  KEY `action` (`action`),
  KEY `label` (`label`),
  KEY `data` (`data`)
) ENGINE=InnoDB AUTO_INCREMENT=9487 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_events`
--

LOCK TABLES `tracking_events` WRITE;
/*!40000 ALTER TABLE `tracking_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracking_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_admin`
--

DROP TABLE IF EXISTS `translations_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations_admin` (
  `key` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `date` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations_admin`
--

LOCK TABLES `translations_admin` WRITE;
/*!40000 ALTER TABLE `translations_admin` DISABLE KEYS */;
INSERT INTO `translations_admin` VALUES ('blockquote','de','',1368611528),('blockquote','en','',1368611528),('content-page','en','',1368523214),('date','en','',1368613497),('dateregister','en','',1368621929),('email','en','',1368621928),('featurette ','de','',1368608412),('featurette ','en','',1368608412),('female','en','',1368621928),('firstname','en','',1368621928),('gallery (folder)','de','',1368608412),('gallery (folder)','en','',1368608412),('gallery (single)','de','',1368608412),('gallery (single)','en','',1368608412),('gender','en','',1368621928),('header color','en','',1368616347),('hide left navigation','en','',1368616017),('image','de','',1368608412),('image','en','',1368608412),('image hotspot','de','',1368627186),('image hotspot','en','',1368627186),('image hotspot & marker','de','',1368627476),('image hotspot & marker','en','',1368627476),('inquiry','en','',1368620428),('lastname','en','',1368621928),('left navigation start node','en','',1368612685),('male','en','',1368621928),('message','en','',1368622768),('news','en','',1368613317),('newsletter active','en','',1368621928),('newsletter confirmed','en','',1368621928),('pdf','de','',1368608412),('pdf','en','',1368608412),('person','en','',1368621928),('persons','en','',1368620458),('short text','en','',1368613497),('standard teaser','de','',1368608412),('standard teaser','en','',1368608412),('standard-teaser','en','',1368531641),('terms of use','en','',1368622768),('text','en','',1368613497),('title','en','',1368613497),('unittest','en','',1368561373),('video','de','',1368608412),('video','en','',1368608412),('wysiwyg','de','',1368608412),('wysiwyg','en','',1368608412);
/*!40000 ALTER TABLE `translations_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_website`
--

DROP TABLE IF EXISTS `translations_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations_website` (
  `key` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `date` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations_website`
--

LOCK TABLES `translations_website` WRITE;
/*!40000 ALTER TABLE `translations_website` DISABLE KEYS */;
INSERT INTO `translations_website` VALUES ('\'%value%\' is not a valid email address in the basic format local-part@hostname','de','',1368631595),('\'%value%\' is not a valid email address in the basic format local-part@hostname','en','',1368631595),('check me out','de','',1368610820),('check me out','en','',1368610820),('combined 1','en','',1368606496),('combined 2','en','',1368606637),('combined 3','en','',1368606637),('contain','en','',1368603255),('contain &amp; overlay','en','',1368605819),('cover','en','',1368602697),('dimensions','en','',1368604632),('download','de','Herunterladen',1368608523),('download','en','',1368608523),('download compiled','de','Herunterladen (kompiliert)',1368608505),('download compiled','en','',1368608505),('download now (%s)','de','',1368619727),('download now (%s)','en','',1368619727),('download source','de','Herunterladen (Quellen)',1368608508),('download source','en','',1368608508),('e-mail','de','',1368610820),('e-mail','en','',1368610820),('fastest way to get started: get the compiled and minified versions of our css, js, and images. no docs or original source files.','de','Der schnellste Weg um loszulegen: Lade die kompilierten und reduzierten Versionen unserer CSS, JS und Grafiken. Keine Dokumentation oder Quelldateien.',1368608611),('fastest way to get started: get the compiled and minified versions of our css, js, and images. no docs or original source files.','en','',1368608611),('firstname','de','',1368610819),('firstname','en','',1368610819),('frame','en','',1368603255),('gender','de','',1368622092),('gender','en','',1368622092),('get the original files for all css and javascript, along with a local copy of the docs by downloading the latest version directly from github.','de','Lade die originalen  CSS und Javascript Dateien zusammen mit einer lokalen Kopie der Dokumentation von github.com',1368608698),('get the original files for all css and javascript, along with a local copy of the docs by downloading the latest version directly from github.','en','',1368608698),('grayscale','en','',1368606077),('i accept the terms of use','de','',1368620808),('i accept the terms of use','en','',1368620808),('lastname','de','',1368610820),('lastname','en','',1368610820),('mask','en','',1368606259),('message','de','',1368620708),('message','en','',1368620708),('newsletter','de','',1368620340),('newsletter','en','',1368620340),('original dimensions of the image','en','',1368604779),('overlay','en','',1368605562),('resize','en','',1368603801),('rotate','en','',1368603255),('rounded corners','en','',1368605936),('scale by height','en','',1368603959),('scale by width','en','',1368603959),('search','de','',1368629830),('search','en','',1368629830),('sepia','en','',1368606075),('submit','de','',1368610820),('submit','en','',1368610820),('thank you very much','de','',1368611300),('thank you very much','en','',1368611300),('total %s','de','',1368619656),('total %s','en','',1368619656),('total: %s','de','',1368619663),('total: %s','en','',1368619663);
/*!40000 ALTER TABLE `translations_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tree_locks`
--

DROP TABLE IF EXISTS `tree_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tree_locks` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` enum('asset','document','object') NOT NULL DEFAULT 'asset',
  `locked` enum('self','propagate') DEFAULT NULL,
  PRIMARY KEY (`id`,`type`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `locked` (`locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tree_locks`
--

LOCK TABLES `tree_locks` WRITE;
/*!40000 ALTER TABLE `tree_locks` DISABLE KEYS */;
INSERT INTO `tree_locks` VALUES (12,'document','self');
/*!40000 ALTER TABLE `tree_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` enum('user','userfolder','role','rolefolder') NOT NULL DEFAULT 'user',
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `admin` tinyint(1) unsigned DEFAULT '0',
  `active` tinyint(1) unsigned DEFAULT '1',
  `permissions` varchar(1000) DEFAULT NULL,
  `roles` varchar(1000) DEFAULT NULL,
  `welcomescreen` tinyint(1) DEFAULT NULL,
  `closeWarning` tinyint(1) DEFAULT NULL,
  `memorizeTabs` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name` (`type`,`name`),
  KEY `parentId` (`parentId`),
  KEY `name` (`name`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,0,'user','system',NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL),(2,0,'user','admin','7f4ca4d63c375ea4bfa1bda6f39101b0','','','','en',1,1,'assets,backup,bounce_mail_inbox,classes,clear_cache,clear_temp_files,documents,document_style_editor,document_types,glossary,http_errors,newsletter,notes_events,objects,plugins,predefined_properties,qr_codes,recyclebin,redirects,reports,robots.txt,routes,seemode,seo_document_editor,system_settings,tag_snippet_management,targeting,thumbnails,translations,website_settings','',1,1,1),(3,0,'user','webservice','037db32506b8582cfc438da250da68d3','','','','en',1,1,'assets,backup,bounce_mail_inbox,classes,clear_cache,clear_temp_files,documents,document_style_editor,document_types,glossary,http_errors,newsletter,notes_events,objects,plugins,predefined_properties,qr_codes,recyclebin,redirects,reports,robots.txt,routes,seemode,seo_document_editor,system_settings,tag_snippet_management,targeting,thumbnails,translations,website_settings','',1,1,1),(4,0,'user','rest','c4d1c32f83639573c734219b5793486a','','','','en',1,1,'assets,backup,bounce_mail_inbox,classes,clear_cache,clear_temp_files,documents,document_style_editor,document_types,glossary,http_errors,newsletter,notes_events,objects,plugins,predefined_properties,qr_codes,recyclebin,redirects,reports,robots.txt,routes,seemode,seo_document_editor,system_settings,tag_snippet_management,targeting,thumbnails,translations,website_settings','',1,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permission_definitions`
--

DROP TABLE IF EXISTS `users_permission_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permission_definitions` (
  `key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permission_definitions`
--

LOCK TABLES `users_permission_definitions` WRITE;
/*!40000 ALTER TABLE `users_permission_definitions` DISABLE KEYS */;
INSERT INTO `users_permission_definitions` VALUES ('assets'),('backup'),('bounce_mail_inbox'),('classes'),('clear_cache'),('clear_temp_files'),('documents'),('document_style_editor'),('document_types'),('glossary'),('http_errors'),('newsletter'),('notes_events'),('objects'),('plugins'),('predefined_properties'),('qr_codes'),('recyclebin'),('redirects'),('reports'),('robots.txt'),('routes'),('seemode'),('seo_document_editor'),('system_settings'),('tag_snippet_management'),('targeting'),('thumbnails'),('translations'),('website_settings');
/*!40000 ALTER TABLE `users_permission_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_asset`
--

DROP TABLE IF EXISTS `users_workspaces_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_workspaces_asset` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0',
  `rename` tinyint(1) DEFAULT '0',
  `create` tinyint(1) DEFAULT '0',
  `settings` tinyint(1) DEFAULT '0',
  `versions` tinyint(1) DEFAULT '0',
  `properties` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_asset`
--

LOCK TABLES `users_workspaces_asset` WRITE;
/*!40000 ALTER TABLE `users_workspaces_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_document`
--

DROP TABLE IF EXISTS `users_workspaces_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_workspaces_document` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) unsigned DEFAULT '0',
  `view` tinyint(1) unsigned DEFAULT '0',
  `save` tinyint(1) unsigned DEFAULT '0',
  `publish` tinyint(1) unsigned DEFAULT '0',
  `unpublish` tinyint(1) unsigned DEFAULT '0',
  `delete` tinyint(1) unsigned DEFAULT '0',
  `rename` tinyint(1) unsigned DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT '0',
  `settings` tinyint(1) unsigned DEFAULT '0',
  `versions` tinyint(1) unsigned DEFAULT '0',
  `properties` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_document`
--

LOCK TABLES `users_workspaces_document` WRITE;
/*!40000 ALTER TABLE `users_workspaces_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_object`
--

DROP TABLE IF EXISTS `users_workspaces_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_workspaces_object` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) unsigned DEFAULT '0',
  `view` tinyint(1) unsigned DEFAULT '0',
  `save` tinyint(1) unsigned DEFAULT '0',
  `publish` tinyint(1) unsigned DEFAULT '0',
  `unpublish` tinyint(1) unsigned DEFAULT '0',
  `delete` tinyint(1) unsigned DEFAULT '0',
  `rename` tinyint(1) unsigned DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT '0',
  `settings` tinyint(1) unsigned DEFAULT '0',
  `versions` tinyint(1) unsigned DEFAULT '0',
  `properties` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_object`
--

LOCK TABLES `users_workspaces_object` WRITE;
/*!40000 ALTER TABLE `users_workspaces_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int(11) unsigned DEFAULT NULL,
  `note` text,
  `date` bigint(1) unsigned DEFAULT NULL,
  `public` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `serialized` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,15,'document',2,NULL,1368687491,0,1),(2,16,'document',2,NULL,1368688782,0,1),(3,16,'document',2,NULL,1368688795,0,1),(4,16,'document',2,NULL,1368688809,0,1),(5,17,'document',2,NULL,1368688977,0,1),(6,1,'document',2,NULL,1368689696,0,1),(7,4,'document',2,NULL,1368689817,0,1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `object_2`
--

/*!50001 DROP TABLE IF EXISTS `object_2`*/;
/*!50001 DROP VIEW IF EXISTS `object_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */

/*!50001 VIEW `object_2` AS select `object_query_2`.`oo_id` AS `oo_id`,`object_query_2`.`oo_classId` AS `oo_classId`,`object_query_2`.`oo_className` AS `oo_className`,`object_query_2`.`date` AS `date`,`object_query_2`.`title` AS `title`,`object_query_2`.`shortText` AS `shortText`,`object_query_2`.`text` AS `text`,`object_query_2`.`image_1` AS `image_1`,`object_query_2`.`image_2` AS `image_2`,`object_query_2`.`image_3` AS `image_3`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_2` join `objects` on((`objects`.`o_id` = `object_query_2`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_3`
--

/*!50001 DROP TABLE IF EXISTS `object_3`*/;
/*!50001 DROP VIEW IF EXISTS `object_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */

/*!50001 VIEW `object_3` AS select `object_query_3`.`oo_id` AS `oo_id`,`object_query_3`.`oo_classId` AS `oo_classId`,`object_query_3`.`oo_className` AS `oo_className`,`object_query_3`.`person__id` AS `person__id`,`object_query_3`.`person__type` AS `person__type`,`object_query_3`.`date` AS `date`,`object_query_3`.`message` AS `message`,`object_query_3`.`terms` AS `terms`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_3` join `objects` on((`objects`.`o_id` = `object_query_3`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_4`
--

/*!50001 DROP TABLE IF EXISTS `object_4`*/;
/*!50001 DROP VIEW IF EXISTS `object_4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */

/*!50001 VIEW `object_4` AS select `object_query_4`.`oo_id` AS `oo_id`,`object_query_4`.`oo_classId` AS `oo_classId`,`object_query_4`.`oo_className` AS `oo_className`,`object_query_4`.`gender` AS `gender`,`object_query_4`.`firstname` AS `firstname`,`object_query_4`.`lastname` AS `lastname`,`object_query_4`.`email` AS `email`,`object_query_4`.`newsletterActive` AS `newsletterActive`,`object_query_4`.`newsletterConfirmed` AS `newsletterConfirmed`,`object_query_4`.`dateRegister` AS `dateRegister`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_4` join `objects` on((`objects`.`o_id` = `object_query_4`.`oo_id`))) */;
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

-- Dump completed on 2013-05-16  9:46:54
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           