-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: projects
-- ------------------------------------------------------
-- Server version	10.3.27-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_text` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `action` varchar(300) DEFAULT NULL,
  `units` varchar(10) DEFAULT NULL,
  `sensor_type` varchar(30) DEFAULT NULL,
  `time_secs` bigint(20) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (25,NULL,'29','2021-06-06 08:39:04',NULL,'C\r','temperature',1622968742,'greenhouse'),(26,NULL,'27','2021-06-06 08:39:05',NULL,'C\r','temperature',1622968744,'conservatory'),(28,NULL,'26','2021-06-06 14:01:15',NULL,'C\r','temperature',1622988074,'greenhouse'),(30,NULL,'26','2021-06-06 14:31:19',NULL,'C\r','temperature',1622989878,'conservatory'),(32,NULL,'28','2021-06-06 15:31:15',NULL,'C\r','temperature',1622993474,'greenhouse'),(33,NULL,'24','2021-06-06 16:48:19',NULL,'C\r','temperature',1622998097,'conservatory'),(34,NULL,'24','2021-06-06 18:01:11',NULL,'C\r','temperature',1623002470,'greenhouse'),(35,NULL,'27','2021-06-06 18:31:25',NULL,'C\r','temperature',1623004283,'conservatory'),(36,NULL,'26','2021-06-07 08:01:21',NULL,'C\r','temperature',1623052880,'greenhouse'),(37,NULL,'34','2021-06-07 08:31:22',NULL,'C\r','temperature',1623054681,'greenhouse'),(38,NULL,'28','2021-06-07 08:31:23',NULL,'C\r','temperature',1623054682,'conservatory'),(39,NULL,'35','2021-06-07 09:31:11',NULL,'C\r','temperature',1623058270,'greenhouse'),(40,NULL,'34','2021-06-07 10:01:11',NULL,'C\r','temperature',1623060069,'greenhouse'),(41,NULL,'34','2021-06-07 10:31:11',NULL,'C\r','temperature',1623061869,'greenhouse'),(42,NULL,'37','2021-06-07 11:31:17',NULL,'C\r','temperature',1623065476,'greenhouse'),(43,NULL,'38','2021-06-07 12:01:10',NULL,'C\r','temperature',1623067269,'greenhouse'),(44,NULL,'37','2021-06-07 13:01:11',NULL,'C\r','temperature',1623070870,'greenhouse'),(45,NULL,'35','2021-06-07 13:31:17',NULL,'C\r','temperature',1623072676,'greenhouse'),(46,NULL,'29','2021-06-07 14:01:14',NULL,'C\r','temperature',1623074473,'greenhouse'),(47,NULL,'28','2021-06-07 18:01:19',NULL,'C\r','temperature',1623088877,'greenhouse'),(48,NULL,'26','2021-06-08 09:31:43',NULL,'C\r','temperature',1623144702,'greenhouse'),(49,NULL,'26','2021-06-08 10:01:23',NULL,'C\r','temperature',1623146481,'greenhouse'),(50,NULL,'25','2021-06-08 12:31:22',NULL,'C\r','temperature',1623155480,'conservatory'),(51,NULL,'24','2021-06-09 12:01:16',NULL,'C\r','temperature',1623240075,'greenhouse'),(52,NULL,'24','2021-06-09 12:31:13',NULL,'C\r','temperature',1623241871,'greenhouse'),(53,NULL,'25','2021-06-09 15:01:58',NULL,'C\r','temperature',1623250917,'greenhouse'),(54,NULL,'26','2021-06-09 15:31:50',NULL,'C\r','temperature',1623252709,'greenhouse'),(55,NULL,'27','2021-06-09 15:31:51',NULL,'C\r','temperature',1623252710,'conservatory'),(56,NULL,'28','2021-06-09 16:01:15',NULL,'C\r','temperature',1623254473,'greenhouse'),(57,NULL,'28','2021-06-09 16:31:16',NULL,'C\r','temperature',1623256274,'greenhouse'),(58,NULL,'24','2021-06-10 07:31:11',NULL,'C\r','temperature',1623310270,'greenhouse'),(59,NULL,'25','2021-06-10 10:31:36',NULL,'C\r','temperature',1623321095,'conservatory'),(60,NULL,'25','2021-06-10 12:01:15',NULL,'C\r','temperature',1623326474,'greenhouse'),(61,NULL,'29','2021-06-10 12:31:19',NULL,'C\r','temperature',1623328278,'greenhouse'),(62,NULL,'29','2021-06-10 12:31:21',NULL,'C\r','temperature',1623328279,'conservatory'),(63,NULL,'28','2021-06-10 13:01:21',NULL,'C\r','temperature',1623330079,'greenhouse'),(64,NULL,'29','2021-06-10 13:01:22',NULL,'C\r','temperature',1623330081,'conservatory'),(65,NULL,'27','2021-06-10 14:31:11',NULL,'C\r','temperature',1623335470,'greenhouse'),(66,NULL,'24','2021-06-10 16:31:18',NULL,'C\r','temperature',1623342677,'greenhouse'),(67,NULL,'26','2021-06-10 17:01:29',NULL,'C\r','temperature',1623344487,'greenhouse'),(68,NULL,'27','2021-06-10 17:31:33',NULL,'C\r','temperature',1623346291,'greenhouse'),(69,NULL,'26','2021-06-10 17:31:34',NULL,'C\r','temperature',1623346293,'conservatory'),(70,NULL,'25','2021-06-11 08:01:15',NULL,'C\r','temperature',1623398474,'greenhouse'),(71,NULL,'25','2021-06-11 09:31:13',NULL,'C\r','temperature',1623403872,'greenhouse'),(72,NULL,'24','2021-06-11 10:31:19',NULL,'C\r','temperature',1623407477,'greenhouse'),(73,NULL,'27','2021-06-11 11:01:13',NULL,'C\r','temperature',1623409271,'greenhouse'),(74,NULL,'28','2021-06-11 13:01:36',NULL,'C\r','temperature',1623416494,'greenhouse'),(75,NULL,'27','2021-06-11 13:31:16',NULL,'C\r','temperature',1623418274,'greenhouse'),(76,NULL,'28','2021-06-11 14:31:19',NULL,'C\r','temperature',1623421878,'greenhouse'),(77,NULL,'28','2021-06-11 15:01:09',NULL,'C\r','temperature',1623423668,'greenhouse'),(78,NULL,'26','2021-06-11 16:01:11',NULL,'C\r','temperature',1623427269,'greenhouse'),(79,NULL,'24','2021-06-11 16:31:16',NULL,'C\r','temperature',1623429075,'conservatory'),(80,NULL,'27','2021-06-11 17:01:12',NULL,'C\r','temperature',1623430871,'greenhouse'),(81,NULL,'30','2021-06-11 17:31:22',NULL,'C\r','temperature',1623432681,'greenhouse'),(82,NULL,'28','2021-06-11 17:31:23',NULL,'C\r','temperature',1623432682,'conservatory'),(83,NULL,'24','2021-06-12 09:31:19',NULL,'C\r','temperature',1623490277,'conservatory'),(84,NULL,'27','2021-06-12 10:02:15',NULL,'C\r','temperature',1623492134,'greenhouse'),(85,NULL,'29','2021-06-12 10:31:26',NULL,'C\r','temperature',1623493884,'greenhouse'),(86,NULL,'28','2021-06-12 11:01:15',NULL,'C\r','temperature',1623495673,'greenhouse'),(87,NULL,'30','2021-06-12 11:31:37',NULL,'C\r','temperature',1623497495,'greenhouse'),(88,NULL,'30','2021-06-12 12:01:11',NULL,'C\r','temperature',1623499269,'greenhouse'),(89,NULL,'29','2021-06-12 12:31:09',NULL,'C\r','temperature',1623501068,'greenhouse'),(90,NULL,'26','2021-06-12 13:01:14',NULL,'C\r','temperature',1623502873,'greenhouse'),(91,NULL,'25','2021-06-12 13:31:11',NULL,'C\r','temperature',1623504670,'greenhouse'),(92,NULL,'27','2021-06-12 14:01:17',NULL,'C\r','temperature',1623506476,'greenhouse'),(93,NULL,'27','2021-06-12 14:31:10',NULL,'C\r','temperature',1623508269,'greenhouse'),(94,NULL,'25','2021-06-12 15:01:10',NULL,'C\r','temperature',1623510069,'greenhouse'),(95,NULL,'24','2021-06-12 16:01:12',NULL,'C\r','temperature',1623513671,'greenhouse'),(96,NULL,'26','2021-06-12 16:31:10',NULL,'C\r','temperature',1623515469,'greenhouse'),(97,NULL,'26','2021-06-12 17:01:18',NULL,'C\r','temperature',1623517276,'conservatory'),(98,NULL,'24','2021-06-13 10:31:11',NULL,'C\r','temperature',1623580270,'greenhouse'),(99,NULL,'28','2021-06-13 11:31:17',NULL,'C\r','temperature',1623583876,'greenhouse'),(100,NULL,'28','2021-06-13 12:01:18',NULL,'C\r','temperature',1623585676,'greenhouse'),(101,NULL,'31','2021-06-13 12:31:09',NULL,'C\r','temperature',1623587468,'greenhouse'),(102,NULL,'31','2021-06-13 13:01:12',NULL,'C\r','temperature',1623589271,'greenhouse'),(103,NULL,'26','2021-06-14 06:31:18',NULL,'C\r','temperature',1623652277,'greenhouse'),(104,NULL,'24','2021-06-14 07:01:10',NULL,'C\r','temperature',1623654069,'greenhouse'),(105,NULL,'25','2021-06-14 07:31:10',NULL,'C\r','temperature',1623655869,'greenhouse'),(106,NULL,'24','2021-06-14 10:01:12',NULL,'C\r','temperature',1623664870,'greenhouse'),(107,NULL,'25','2021-06-14 10:31:19',NULL,'C\r','temperature',1623666677,'conservatory'),(108,NULL,'25','2021-06-14 13:01:13',NULL,'C\r','temperature',1623675671,'greenhouse'),(109,NULL,'24','2021-06-14 13:31:11',NULL,'C\r','temperature',1623677469,'greenhouse'),(110,NULL,'24','2021-06-14 14:01:24',NULL,'C\r','temperature',1623679282,'greenhouse'),(111,NULL,'27','2021-06-14 14:01:25',NULL,'C\r','temperature',1623679284,'conservatory'),(112,NULL,'26','2021-06-14 14:31:10',NULL,'C\r','temperature',1623681069,'greenhouse'),(113,NULL,'25','2021-06-14 15:01:26',NULL,'C\r','temperature',1623682884,'conservatory'),(114,NULL,'26','2021-06-15 10:01:19',NULL,'C\r','temperature',1623751278,'conservatory'),(115,NULL,'25','2021-06-15 11:31:17',NULL,'C\r','temperature',1623756676,'greenhouse'),(116,NULL,'24','2021-06-15 14:01:40',NULL,'C\r','temperature',1623765698,'conservatory'),(117,NULL,'24','2021-06-15 15:01:27',NULL,'C\r','temperature',1623769286,'greenhouse'),(118,NULL,'27','2021-06-15 15:31:27',NULL,'C\r','temperature',1623771086,'greenhouse'),(119,NULL,'26','2021-06-15 16:01:25',NULL,'C\r','temperature',1623772883,'greenhouse'),(120,NULL,'25','2021-06-15 16:31:25',NULL,'C\r','temperature',1623774684,'greenhouse'),(121,NULL,'26','2021-06-16 10:01:19',NULL,'C\r','temperature',1623837677,'conservatory'),(122,NULL,'26','2021-06-16 10:31:18',NULL,'C\r','temperature',1623839476,'conservatory'),(123,NULL,'30','2021-06-16 12:01:24',NULL,'C\r','temperature',1623844882,'conservatory'),(124,NULL,'24','2021-06-16 12:31:39',NULL,'C\r','temperature',1623846698,'greenhouse'),(125,NULL,'35','2021-06-16 12:31:41',NULL,'C\r','temperature',1623846699,'conservatory'),(126,NULL,'28','2021-06-16 15:31:37',NULL,'C\r','temperature',1623857478,'conservatory'),(127,NULL,'29','2021-06-17 06:31:17',NULL,'C\r','temperature',1623911476,'conservatory'),(128,NULL,'25','2021-06-17 07:01:10',NULL,'C\r','temperature',1623913268,'greenhouse'),(129,NULL,'27','2021-06-17 07:31:12',NULL,'C\r','temperature',1623915070,'greenhouse'),(130,NULL,'27','2021-06-17 08:01:15',NULL,'C\r','temperature',1623916872,'greenhouse'),(131,NULL,'28','2021-06-17 08:31:39',NULL,'C\r','temperature',1623918697,'greenhouse'),(132,NULL,'30','2021-06-17 09:31:14',NULL,'C\r','temperature',1623922272,'greenhouse'),(133,NULL,'29','2021-06-17 10:01:13',NULL,'C\r','temperature',1623924071,'greenhouse'),(134,NULL,'28','2021-06-17 10:31:20',NULL,'C\r','temperature',1623925879,'greenhouse'),(135,NULL,'27','2021-06-17 11:01:23',NULL,'C\r','temperature',1623927682,'greenhouse'),(136,NULL,'31','2021-06-17 11:01:25',NULL,'C\r','temperature',1623927683,'conservatory'),(137,NULL,'29','2021-06-17 11:31:17',NULL,'C\r','temperature',1623929475,'conservatory'),(138,NULL,'27','2021-06-17 13:01:22',NULL,'C\r','temperature',1623934881,'conservatory'),(139,NULL,'27','2021-06-17 14:01:23',NULL,'C\r','temperature',1623938481,'conservatory'),(140,NULL,'24','2021-06-17 14:31:13',NULL,'C\r','temperature',1623940272,'greenhouse'),(141,NULL,'27','2021-06-17 15:01:20',NULL,'C\r','temperature',1623942079,'greenhouse'),(142,NULL,'25','2021-06-17 17:01:19',NULL,'C\r','temperature',1623949278,'conservatory'),(143,NULL,'24','2021-06-18 11:31:16',NULL,'C\r','temperature',1624015874,'greenhouse'),(144,NULL,'24','2021-06-18 12:31:21',NULL,'C\r','temperature',1624019479,'greenhouse'),(145,NULL,'29','2021-06-18 12:31:22',NULL,'C\r','temperature',1624019481,'conservatory'),(146,NULL,'26','2021-06-18 13:01:19',NULL,'C\r','temperature',1624021278,'greenhouse'),(147,NULL,'30','2021-06-18 13:01:21',NULL,'C\r','temperature',1624021279,'conservatory'),(148,NULL,'27','2021-06-18 13:31:29',NULL,'C\r','temperature',1624023088,'greenhouse');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_assets_users`
--

DROP TABLE IF EXISTS `am_assets_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_assets_users` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_assets_users`
--

LOCK TABLES `am_assets_users` WRITE;
/*!40000 ALTER TABLE `am_assets_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_assets_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_categories`
--

DROP TABLE IF EXISTS `am_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_categories` (
  `id` mediumint(9) NOT NULL DEFAULT 0,
  `cat_name` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_categories`
--

LOCK TABLES `am_categories` WRITE;
/*!40000 ALTER TABLE `am_categories` DISABLE KEYS */;
INSERT INTO `am_categories` VALUES (1,'vegetables'),(5,'seeds'),(6,'test'),(7,'test'),(8,'test2'),(9,'test2');
/*!40000 ALTER TABLE `am_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_employee`
--

DROP TABLE IF EXISTS `am_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_employee` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `emp_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `emp_pass` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_employee`
--

LOCK TABLES `am_employee` WRITE;
/*!40000 ALTER TABLE `am_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_markers`
--

DROP TABLE IF EXISTS `am_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET latin1 NOT NULL,
  `address` varchar(80) CHARACTER SET latin1 NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_markers`
--

LOCK TABLES `am_markers` WRITE;
/*!40000 ALTER TABLE `am_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_products`
--

DROP TABLE IF EXISTS `am_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_products` (
  `id` mediumint(9) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `quantity` int(255) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` datetime NOT NULL,
  `categories` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_products`
--

LOCK TABLES `am_products` WRITE;
/*!40000 ALTER TABLE `am_products` DISABLE KEYS */;
INSERT INTO `am_products` VALUES (10,'sunflower','        \r\n    ',300,'20201109052714.','2020-11-09 05:27:14',5,'being used by admin','1'),(11,'onion','        \r\n    ',300,'20201109184937.','2020-11-09 18:49:37',5,'AVAILABLE',''),(12,'onion','        \r\n    ',12,'20201110094937.','2020-11-10 09:49:37',1,'AVAILABLE',''),(13,'artichoke','        \r\n    ',12,'20201110115831.','2020-11-10 11:58:31',1,'AVAILABLE',''),(14,'onion','        \r\n    ',300,'20201111095604.','2020-11-11 09:56:04',5,'AVAILABLE','admin'),(15,'onion','        \r\n    ',300,'20201111095604.','2020-11-11 09:56:04',5,'AVAILABLE','admin');
/*!40000 ALTER TABLE `am_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projects`
--

DROP TABLE IF EXISTS `am_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projects` (
  `id` int(6) unsigned NOT NULL DEFAULT 0,
  `description` varchar(200) DEFAULT NULL,
  `owner` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) DEFAULT 'OPEN',
  `duedate` datetime DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `timediff` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projects`
--

LOCK TABLES `am_projects` WRITE;
/*!40000 ALTER TABLE `am_projects` DISABLE KEYS */;
INSERT INTO `am_projects` VALUES (18,'test','test','2020-11-15 09:57:56','OPEN',NULL,NULL,NULL,NULL),(19,'another project','test','2020-11-16 09:29:16','OPEN',NULL,NULL,NULL,NULL),(20,'test3','test','2020-11-16 09:46:22','OPEN',NULL,NULL,NULL,NULL),(21,'test3','test','2020-11-16 09:46:22','OPEN',NULL,NULL,NULL,NULL),(22,'test4','test','2020-11-16 09:47:04','OPEN',NULL,NULL,NULL,NULL),(23,'test4','test','2020-11-16 09:47:04','OPEN',NULL,NULL,NULL,NULL),(24,'test5','test','2020-11-16 09:53:41','OPEN',NULL,NULL,NULL,NULL),(25,'test5','test','2020-11-16 09:53:41','OPEN',NULL,NULL,NULL,NULL),(26,'test6','test','2020-11-16 09:54:29','OPEN',NULL,NULL,NULL,NULL),(27,'test6','test','2020-11-16 09:54:29','OPEN',NULL,NULL,NULL,NULL),(28,'aa project','test','2020-11-16 09:59:47','OPEN',NULL,NULL,NULL,NULL),(29,'aa project','test','2020-11-16 09:59:47','OPEN',NULL,NULL,NULL,NULL),(30,'test67','test','2020-11-16 10:03:45','OPEN',NULL,NULL,NULL,NULL),(31,'test67','test','2020-11-16 10:03:45','OPEN',NULL,NULL,NULL,NULL),(32,'test35','test','2020-11-16 10:09:44','OPEN',NULL,NULL,NULL,NULL),(33,'test35','test','2020-11-16 10:09:44','OPEN',NULL,NULL,NULL,NULL),(34,'https://www.botanihub.com/assets/tc_assets_management/a_project.php','test','2020-11-16 10:18:46','OPEN',NULL,NULL,NULL,NULL),(35,'https://www.botanihub.com/assets/tc_assets_management/a_project.php','test','2020-11-16 10:18:46','OPEN',NULL,NULL,NULL,NULL),(36,'https://www.botanihub.com/assets/tc_assets_management/a_project.php','aftercaptcha','2020-11-16 10:50:11','OPEN',NULL,NULL,NULL,NULL),(37,'https://www.botanihub.com/assets/tc_assets_management/a_project.php','aftercaptcha','2020-11-16 10:50:11','OPEN',NULL,NULL,NULL,NULL),(38,'this is a test','test','2020-11-16 10:51:48','OPEN',NULL,NULL,NULL,NULL),(39,'this is a test','test','2020-11-16 10:51:48','OPEN',NULL,NULL,NULL,NULL),(40,'another project','test','2020-11-17 12:21:05','OPEN',NULL,NULL,NULL,NULL),(41,'another project','test','2020-11-17 12:22:20','OPEN',NULL,NULL,NULL,NULL),(42,'time_diff1','test','2020-11-17 12:37:17','OPEN',NULL,NULL,NULL,NULL),(43,'time_diff1','test','2020-11-17 12:37:17','OPEN',NULL,NULL,NULL,NULL),(44,'time_diff3','test','2020-11-17 12:38:47','OPEN',NULL,NULL,NULL,NULL),(45,'time_diff3','test','2020-11-17 12:38:47','OPEN',NULL,NULL,NULL,NULL),(46,'test2222bb','test','2020-11-17 12:40:30','OPEN',NULL,NULL,NULL,NULL),(47,'test2222bb','test','2020-11-17 12:40:30','OPEN',NULL,NULL,NULL,NULL),(48,'test2222bbbbbbb','test','2020-11-17 12:40:57','OPEN',NULL,NULL,NULL,NULL),(49,'test2222bbbbbbb','test','2020-11-17 12:40:58','OPEN',NULL,NULL,NULL,NULL),(50,'time_diff1','test','2020-11-17 12:41:19','OPEN',NULL,NULL,NULL,NULL),(51,'time_diff1','test','2020-11-17 12:41:19','OPEN',NULL,NULL,NULL,NULL),(52,'post1','test','2020-11-17 13:03:12','OPEN',NULL,NULL,NULL,NULL),(53,'post1','test','2020-11-17 13:03:12','OPEN',NULL,NULL,NULL,NULL),(54,'post2','test','2020-11-17 13:08:40','OPEN',NULL,NULL,NULL,NULL),(55,'post2','test','2020-11-17 13:08:40','OPEN',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `am_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_status`
--

DROP TABLE IF EXISTS `am_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_status` (
  `id` mediumint(9) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_status`
--

LOCK TABLES `am_status` WRITE;
/*!40000 ALTER TABLE `am_status` DISABLE KEYS */;
INSERT INTO `am_status` VALUES (1,1,1,'admin','2020-11-05 16:55:41'),(2,0,1,'status1','2020-11-06 15:28:55'),(3,1,1,'status2','2020-11-06 15:29:25'),(4,1,10,'admin','2020-11-09 19:13:55'),(5,0,10,'test','2020-11-09 19:14:29'),(6,1,10,'admin','2020-11-10 12:00:09');
/*!40000 ALTER TABLE `am_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_users`
--

DROP TABLE IF EXISTS `am_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `userid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `role` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_users`
--

LOCK TABLES `am_users` WRITE;
/*!40000 ALTER TABLE `am_users` DISABLE KEYS */;
INSERT INTO `am_users` VALUES (1,'admin','çh›JŽ\Zñt·ÛUS',1),(0,'test','TES589',2),(0,'test1',',\rð9êß¹_ÓÖÜêiB',0),(0,'user6@example.com','…Cp¶½üƒCbðÈ­\n€:',0);
/*!40000 ALTER TABLE `am_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_sensor_data`
--

DROP TABLE IF EXISTS `bak_sensor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_sensor_data` (
  `id` int(6) unsigned NOT NULL DEFAULT 0,
  `sensor_id` int(11) DEFAULT NULL,
  `sensor_value` float DEFAULT 9999.9,
  `notes` varchar(200) DEFAULT NULL,
  `reg_date` datetime DEFAULT current_timestamp(),
  `event_acknowledged` tinyint(1) DEFAULT 0,
  `event_triggered` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_sensor_data`
--

LOCK TABLES `bak_sensor_data` WRITE;
/*!40000 ALTER TABLE `bak_sensor_data` DISABLE KEYS */;
INSERT INTO `bak_sensor_data` VALUES (847,1,3,NULL,'2020-11-25 20:42:10',1,1),(848,2,3,NULL,'2020-11-25 20:45:12',1,1),(849,3,8,NULL,'2020-11-25 20:47:10',0,0),(850,4,8,NULL,'2020-11-25 20:49:10',0,0),(851,5,6,NULL,'2020-11-25 20:50:38',0,0),(852,6,5,NULL,'2020-11-25 20:51:06',0,0),(853,1,3,NULL,'2020-11-25 20:52:29',1,1),(854,5,6,NULL,'2020-11-25 20:59:12',0,0),(855,6,5,NULL,'2020-11-25 20:59:40',0,0),(856,1,3,NULL,'2020-11-25 21:12:31',0,1),(857,2,3,NULL,'2020-11-25 21:15:29',0,1),(858,5,6,NULL,'2020-11-25 21:19:46',0,0),(859,6,5,NULL,'2020-11-25 21:20:14',0,0),(860,1,3,NULL,'2020-11-25 21:52:30',0,1),(861,2,3,NULL,'2020-11-25 21:55:29',0,1),(862,3,7,NULL,'2020-11-25 21:57:28',0,0),(863,5,6,NULL,'2020-11-25 22:00:21',0,0),(864,6,4,NULL,'2020-11-25 22:00:49',0,0),(865,1,4,NULL,'2020-11-25 22:12:30',0,0),(866,2,4,NULL,'2020-11-25 22:15:29',0,0),(867,5,6,NULL,'2020-11-25 22:19:47',0,0),(868,6,4,NULL,'2020-11-25 22:20:15',0,0),(869,1,4,NULL,'2020-11-25 22:52:30',0,0),(870,5,5,NULL,'2020-11-25 22:59:13',0,0),(871,6,2,NULL,'2020-11-25 22:59:40',0,0),(872,1,3,NULL,'2020-11-25 23:12:30',0,1),(873,2,3,NULL,'2020-11-25 23:15:28',0,1),(874,3,7,NULL,'2020-11-25 23:17:27',0,0),(875,4,7,NULL,'2020-11-25 23:19:26',0,0),(876,5,5,NULL,'2020-11-25 23:20:54',0,0),(877,6,4,NULL,'2020-11-25 23:21:21',0,0),(878,1,3,NULL,'2020-11-25 23:52:30',0,1),(879,2,3,NULL,'2020-11-25 23:55:29',0,1),(880,3,7,NULL,'2020-11-25 23:57:28',0,0),(881,4,7,NULL,'2020-11-25 23:59:27',0,0),(882,5,5,NULL,'2020-11-26 00:00:54',0,0),(883,6,2,NULL,'2020-11-26 00:01:23',0,0),(884,1,3,NULL,'2020-11-26 00:12:31',0,1),(885,2,3,NULL,'2020-11-26 00:15:30',0,1),(886,4,7,NULL,'2020-11-26 00:18:54',0,0),(887,5,5,NULL,'2020-11-26 00:20:22',0,0),(888,6,2,NULL,'2020-11-26 00:20:50',0,0),(889,1,3,NULL,'2020-11-26 00:52:31',0,1),(890,4,7,NULL,'2020-11-26 00:58:20',0,0),(891,5,5,NULL,'2020-11-26 00:59:47',0,0),(892,6,4,NULL,'2020-11-26 01:00:15',0,0),(893,1,3,NULL,'2020-11-26 01:12:29',0,1),(894,3,7,NULL,'2020-11-26 01:16:53',0,0),(895,4,7,NULL,'2020-11-26 01:18:52',0,0),(896,5,5,NULL,'2020-11-26 01:20:20',0,0),(897,6,4,NULL,'2020-11-26 01:20:48',0,0),(898,1,3,NULL,'2020-11-26 01:52:30',0,1),(899,2,3,NULL,'2020-11-26 01:55:29',0,1),(900,3,7,NULL,'2020-11-26 01:57:29',0,0),(901,4,7,NULL,'2020-11-26 01:59:28',0,0),(902,5,4,NULL,'2020-11-26 02:00:55',0,0),(903,6,4,NULL,'2020-11-26 02:01:23',0,0),(904,1,4,NULL,'2020-11-26 02:12:30',0,0),(905,5,4,NULL,'2020-11-26 02:19:14',0,0),(906,6,3,NULL,'2020-11-26 02:19:41',0,0),(907,1,3,NULL,'2020-11-26 02:52:31',0,1),(908,3,7,NULL,'2020-11-26 02:56:54',0,0),(909,4,7,NULL,'2020-11-26 02:58:51',0,0),(910,5,4,NULL,'2020-11-26 03:00:20',0,0),(911,6,2,NULL,'2020-11-26 03:00:47',0,0),(912,1,3,NULL,'2020-11-26 03:12:30',0,1),(913,2,3,NULL,'2020-11-26 03:15:29',0,1),(914,3,7,NULL,'2020-11-26 03:17:28',0,0),(915,4,7,NULL,'2020-11-26 03:19:27',0,0),(916,5,4,NULL,'2020-11-26 03:20:54',0,0),(917,6,3,NULL,'2020-11-26 03:21:22',0,0),(918,1,3,NULL,'2020-11-26 03:52:29',0,1),(919,2,3,NULL,'2020-11-26 03:55:29',0,1),(920,3,6,NULL,'2020-11-26 03:57:27',0,0),(921,4,6,NULL,'2020-11-26 03:59:24',0,0),(922,5,4,NULL,'2020-11-26 04:00:52',0,0),(923,6,4,NULL,'2020-11-26 04:01:20',0,0),(924,1,2,NULL,'2020-11-26 04:12:31',0,1),(925,2,2,NULL,'2020-11-26 04:15:29',0,1),(926,3,6,NULL,'2020-11-26 04:17:28',0,0),(927,4,6,NULL,'2020-11-26 04:19:27',0,0),(928,5,4,NULL,'2020-11-26 04:20:54',0,0),(929,6,3,NULL,'2020-11-26 04:21:22',0,0),(930,1,2,NULL,'2020-11-26 04:52:30',0,1),(931,4,6,NULL,'2020-11-26 04:58:17',0,0),(932,5,5,NULL,'2020-11-26 04:59:45',0,0),(933,6,4,NULL,'2020-11-26 05:00:13',0,0),(934,1,3,NULL,'2020-11-26 05:12:29',0,1),(935,3,6,NULL,'2020-11-26 05:16:54',0,0),(936,4,6,NULL,'2020-11-26 05:18:51',0,0),(937,5,5,NULL,'2020-11-26 05:20:19',0,0),(938,6,5,NULL,'2020-11-26 05:20:46',0,0),(939,1,3,NULL,'2020-11-26 05:52:30',0,1),(940,2,3,NULL,'2020-11-26 05:55:29',0,1),(941,3,6,NULL,'2020-11-26 05:57:28',0,0),(942,5,5,NULL,'2020-11-26 06:00:20',0,0),(943,6,4,NULL,'2020-11-26 06:00:48',0,0),(944,1,4,NULL,'2020-11-26 06:12:30',0,0),(945,2,4,NULL,'2020-11-26 06:15:28',0,0),(946,3,6,NULL,'2020-11-26 06:17:28',0,0),(947,4,6,NULL,'2020-11-26 06:19:27',0,0),(948,5,5,NULL,'2020-11-26 06:20:54',0,0),(949,6,3,NULL,'2020-11-26 06:21:22',0,0),(950,1,4,NULL,'2020-11-26 06:52:31',0,0),(951,2,4,NULL,'2020-11-26 06:55:29',0,0),(952,4,6,NULL,'2020-11-26 06:58:53',0,0),(953,5,5,NULL,'2020-11-26 07:00:21',0,0),(954,6,4,NULL,'2020-11-26 07:00:54',0,0),(955,1,4,NULL,'2020-11-26 07:12:30',0,0),(956,3,7,NULL,'2020-11-26 07:16:56',0,0),(957,5,5,NULL,'2020-11-26 07:19:50',0,0),(958,6,3,NULL,'2020-11-26 07:20:18',0,0),(959,1,5,NULL,'2020-11-26 07:52:31',0,0),(960,5,4,NULL,'2020-11-26 07:59:13',0,0),(961,6,5,NULL,'2020-11-26 07:59:41',0,0),(962,1,5,NULL,'2020-11-26 08:12:29',0,0),(963,3,7,NULL,'2020-11-26 08:16:53',0,0),(964,4,7,NULL,'2020-11-26 08:18:52',0,0),(965,5,4,NULL,'2020-11-26 08:20:19',0,0),(966,6,8,NULL,'2020-11-26 08:20:47',0,0),(967,1,5,NULL,'2020-11-26 08:52:29',0,0),(968,2,5,NULL,'2020-11-26 08:55:28',0,0),(969,4,7,NULL,'2020-11-26 08:58:53',0,0),(970,5,4,NULL,'2020-11-26 09:00:22',0,0),(971,6,4,NULL,'2020-11-26 09:00:51',0,0),(972,1,5,NULL,'2020-11-26 09:12:31',0,0),(973,5,4,NULL,'2020-11-26 09:19:13',0,0),(974,6,4,NULL,'2020-11-26 09:19:40',0,0),(975,1,7,NULL,'2020-11-26 09:52:31',0,0),(976,4,9,NULL,'2020-11-26 09:58:20',0,0),(977,5,5,NULL,'2020-11-26 09:59:48',0,0),(978,6,3,NULL,'2020-11-26 10:00:15',0,0),(979,1,8,NULL,'2020-11-26 10:12:29',0,0),(980,5,5,NULL,'2020-11-26 10:19:13',0,0),(981,6,3,NULL,'2020-11-26 10:19:41',0,0),(982,1,9,NULL,'2020-11-26 10:52:30',0,0),(983,5,6,NULL,'2020-11-26 10:59:16',0,0),(984,6,3,NULL,'2020-11-26 10:59:44',0,0),(985,1,10,NULL,'2020-11-26 11:12:30',0,0),(986,2,10,NULL,'2020-11-26 11:15:29',0,0),(987,5,6,NULL,'2020-11-26 11:19:47',0,0),(988,6,5,NULL,'2020-11-26 11:20:15',0,0),(989,1,12,NULL,'2020-11-26 11:52:32',0,0),(990,3,11,NULL,'2020-11-26 11:56:55',0,0),(991,5,7,NULL,'2020-11-26 11:59:48',0,0),(992,6,4,NULL,'2020-11-26 12:00:18',0,0),(993,1,12,NULL,'2020-11-26 12:12:30',0,0),(994,4,12,NULL,'2020-11-26 12:18:19',0,0),(995,5,7,NULL,'2020-11-26 12:19:47',0,0),(996,6,3,NULL,'2020-11-26 12:20:15',0,0),(997,1,12,NULL,'2020-11-26 12:52:31',0,0),(998,4,12,NULL,'2020-11-26 12:58:22',0,0),(999,5,8,NULL,'2020-11-26 12:59:50',0,0),(1000,6,3,NULL,'2020-11-26 13:00:18',0,0),(1001,1,12,NULL,'2020-11-26 13:12:31',0,0),(1002,5,8,NULL,'2020-11-26 13:19:15',0,0),(1003,6,4,NULL,'2020-11-26 13:19:43',0,0),(1004,1,11,NULL,'2020-11-26 13:52:31',0,0),(1005,5,8,NULL,'2020-11-26 13:59:16',0,0),(1006,6,4,NULL,'2020-11-26 13:59:44',0,0),(1007,1,11,NULL,'2020-11-26 14:12:30',0,0),(1008,2,11,NULL,'2020-11-26 14:15:29',0,0),(1009,4,11,NULL,'2020-11-26 14:18:55',0,0),(1010,5,8,NULL,'2020-11-26 14:20:22',0,0),(1011,6,5,NULL,'2020-11-26 14:20:50',0,0),(1012,1,10,NULL,'2020-11-26 14:52:32',0,0),(1013,3,11,NULL,'2020-11-26 14:56:56',0,0),(1014,5,8,NULL,'2020-11-26 14:59:48',0,0),(1015,6,5,NULL,'2020-11-26 15:00:18',0,0),(1016,1,10,NULL,'2020-11-26 15:12:30',0,0),(1017,5,8,NULL,'2020-11-26 15:19:14',0,0),(1018,6,5,NULL,'2020-11-26 15:19:42',0,0),(1019,1,8,NULL,'2020-11-26 15:52:33',0,0),(1020,3,9,NULL,'2020-11-26 15:56:58',0,0),(1021,5,8,NULL,'2020-11-26 15:59:51',0,0),(1022,6,5,NULL,'2020-11-26 16:00:19',0,0),(1023,1,8,NULL,'2020-11-26 16:12:32',0,0),(1024,2,8,NULL,'2020-11-26 16:15:30',0,0),(1025,5,8,NULL,'2020-11-26 16:19:49',0,0),(1026,6,5,NULL,'2020-11-26 16:20:17',0,0),(1027,1,7,NULL,'2020-11-26 16:52:32',0,0),(1028,4,9,NULL,'2020-11-26 16:58:23',0,0),(1029,5,7,NULL,'2020-11-26 16:59:50',0,0),(1030,6,5,NULL,'2020-11-26 17:00:18',0,0),(1031,1,7,NULL,'2020-11-26 17:12:30',0,0),(1032,3,8,NULL,'2020-11-26 17:16:54',0,0),(1033,4,8,NULL,'2020-11-26 17:18:53',0,0),(1034,5,7,NULL,'2020-11-26 17:20:21',0,0),(1035,6,5,NULL,'2020-11-26 17:20:49',0,0),(1036,1,6,NULL,'2020-11-26 17:52:31',0,0),(1037,2,6,NULL,'2020-11-26 17:55:30',0,0),(1038,3,9,NULL,'2020-11-26 17:57:29',0,0),(1039,5,7,NULL,'2020-11-26 18:00:23',0,0),(1040,6,4,NULL,'2020-11-26 18:00:50',0,0),(1041,1,6,NULL,'2020-11-26 18:12:32',0,0),(1042,4,10,NULL,'2020-11-26 18:18:21',0,0),(1043,5,7,NULL,'2020-11-26 18:19:48',0,0),(1044,6,6,NULL,'2020-11-26 18:20:16',0,0),(1045,1,6,NULL,'2020-11-26 18:52:30',0,0),(1046,5,7,NULL,'2020-11-26 18:59:13',0,0),(1047,6,5,NULL,'2020-11-26 18:59:41',0,0),(1048,1,6,NULL,'2020-11-26 19:12:33',0,0),(1049,3,12,NULL,'2020-11-26 19:16:58',0,0),(1050,5,7,NULL,'2020-11-26 19:19:50',0,0),(1051,6,4,NULL,'2020-11-26 19:20:18',0,0),(1052,1,6,NULL,'2020-11-26 19:52:31',0,0),(1053,3,12,NULL,'2020-11-26 19:56:54',0,0),(1054,5,7,NULL,'2020-11-26 19:59:51',0,0),(1055,6,3,NULL,'2020-11-26 20:00:18',0,0),(1056,1,6,NULL,'2020-11-26 20:12:29',0,0),(1057,5,7,NULL,'2020-11-26 20:19:13',0,0),(1058,6,3,NULL,'2020-11-26 20:19:41',0,0),(1059,1,6,NULL,'2020-11-26 20:52:31',0,0),(1060,5,7,NULL,'2020-11-26 20:59:17',0,0),(1061,6,3,NULL,'2020-11-26 20:59:44',0,0),(1062,1,6,NULL,'2020-11-26 21:12:30',0,0),(1063,2,6,NULL,'2020-11-26 21:15:29',0,0),(1064,3,13,NULL,'2020-11-26 21:17:28',0,0),(1065,5,7,NULL,'2020-11-26 21:20:21',0,0),(1066,6,1,NULL,'2020-11-26 21:20:49',0,0),(1067,1,6,NULL,'2020-11-26 21:52:32',0,0),(1068,2,6,NULL,'2020-11-26 21:55:30',0,0),(1069,3,12,NULL,'2020-11-26 21:57:29',0,0),(1070,4,12,NULL,'2020-11-26 21:59:28',0,0),(1071,5,6,NULL,'2020-11-26 22:00:56',0,0),(1072,6,1,NULL,'2020-11-26 22:01:24',0,0),(1073,1,6,NULL,'2020-11-26 22:12:30',0,0),(1074,5,6,NULL,'2020-11-26 22:19:13',0,0),(1075,6,5,NULL,'2020-11-26 22:19:41',0,0),(1076,1,6,NULL,'2020-11-26 22:52:30',0,0),(1077,3,10,NULL,'2020-11-26 22:56:54',0,0),(1078,5,6,NULL,'2020-11-26 22:59:47',0,0),(1079,6,4,NULL,'2020-11-26 23:00:15',0,0),(1080,1,6,NULL,'2020-11-26 23:12:31',0,0),(1081,4,10,NULL,'2020-11-26 23:18:20',0,0),(1082,5,6,NULL,'2020-11-26 23:19:48',0,0),(1083,6,4,NULL,'2020-11-26 23:20:16',0,0),(1084,1,6,NULL,'2020-11-26 23:52:31',0,0),(1085,4,9,NULL,'2020-11-26 23:58:21',0,0),(1086,5,6,NULL,'2020-11-26 23:59:48',0,0),(1087,6,5,NULL,'2020-11-27 00:00:17',0,0),(1088,1,6,NULL,'2020-11-27 00:12:31',0,0),(1089,5,6,NULL,'2020-11-27 00:19:13',0,0),(1090,6,4,NULL,'2020-11-27 00:19:41',0,0),(1091,1,6,NULL,'2020-11-27 00:52:32',0,0),(1092,5,6,NULL,'2020-11-27 00:59:19',0,0),(1093,6,6,NULL,'2020-11-27 00:59:46',0,0),(1094,1,5,NULL,'2020-11-27 01:12:30',0,0),(1095,2,5,NULL,'2020-11-27 01:15:29',0,0),(1096,3,8,NULL,'2020-11-27 01:17:28',0,0),(1097,5,6,NULL,'2020-11-27 01:20:21',0,0),(1098,6,6,NULL,'2020-11-27 01:20:49',0,0),(1099,1,5,NULL,'2020-11-27 01:52:30',0,0),(1100,3,8,NULL,'2020-11-27 01:56:53',0,0),(1101,4,8,NULL,'2020-11-27 01:58:52',0,0),(1102,5,6,NULL,'2020-11-27 02:00:20',0,0),(1103,6,5,NULL,'2020-11-27 02:00:48',0,0),(1104,1,5,NULL,'2020-11-27 02:12:29',0,0),(1105,5,5,NULL,'2020-11-27 02:19:12',0,0),(1106,6,5,NULL,'2020-11-27 02:19:40',0,0),(1107,1,4,NULL,'2020-11-27 02:52:32',0,0),(1108,3,7,NULL,'2020-11-27 02:56:57',0,0),(1109,4,8,NULL,'2020-11-27 02:58:56',0,0),(1110,5,5,NULL,'2020-11-27 03:00:25',0,0),(1111,6,4,NULL,'2020-11-27 03:00:53',0,0),(1112,1,4,NULL,'2020-11-27 03:12:30',0,0),(1113,4,7,NULL,'2020-11-27 03:18:20',0,0),(1114,5,5,NULL,'2020-11-27 03:19:47',0,0),(1115,6,4,NULL,'2020-11-27 03:20:15',0,0),(1116,1,4,NULL,'2020-11-27 03:52:30',0,0),(1117,2,4,NULL,'2020-11-27 03:55:28',0,0),(1118,5,5,NULL,'2020-11-27 03:59:45',0,0),(1119,6,4,NULL,'2020-11-27 04:00:13',0,0),(1120,1,5,NULL,'2020-11-27 04:12:32',0,0),(1121,4,7,NULL,'2020-11-27 04:18:24',0,0),(1122,5,5,NULL,'2020-11-27 04:19:51',0,0),(1123,6,4,NULL,'2020-11-27 04:20:19',0,0),(1124,1,5,NULL,'2020-11-27 04:52:30',0,0),(1125,2,5,NULL,'2020-11-27 04:55:29',0,0),(1126,3,7,NULL,'2020-11-27 04:57:28',0,0),(1127,5,5,NULL,'2020-11-27 05:00:20',0,0),(1128,6,1,NULL,'2020-11-27 05:00:48',0,0),(1129,1,5,NULL,'2020-11-27 05:12:29',0,0),(1130,3,7,NULL,'2020-11-27 05:16:53',0,0),(1131,4,7,NULL,'2020-11-27 05:18:52',0,0),(1132,5,5,NULL,'2020-11-27 05:20:20',0,0),(1133,6,1,NULL,'2020-11-27 05:20:47',0,0),(1134,1,4,NULL,'2020-11-27 05:52:31',0,0),(1135,2,4,NULL,'2020-11-27 05:55:29',0,0),(1136,4,7,NULL,'2020-11-27 05:58:52',0,0),(1137,5,5,NULL,'2020-11-27 06:00:20',0,0),(1138,6,1,NULL,'2020-11-27 06:00:48',0,0),(1139,1,4,NULL,'2020-11-27 06:12:29',0,0),(1140,3,7,NULL,'2020-11-27 06:16:55',0,0),(1141,4,7,NULL,'2020-11-27 06:18:54',0,0),(1142,5,5,NULL,'2020-11-27 06:20:21',0,0),(1143,6,1,NULL,'2020-11-27 06:20:53',0,0),(1144,1,5,NULL,'2020-11-27 06:52:31',0,0),(1145,2,5,NULL,'2020-11-27 06:55:29',0,0),(1146,5,4,NULL,'2020-11-27 06:59:48',0,0),(1147,6,5,NULL,'2020-11-27 07:00:17',0,0),(1148,1,4,NULL,'2020-11-27 07:12:30',0,0),(1149,3,7,NULL,'2020-11-27 07:16:53',0,0),(1150,4,7,NULL,'2020-11-27 07:18:52',0,0),(1151,5,4,NULL,'2020-11-27 07:20:21',0,0),(1152,6,4,NULL,'2020-11-27 07:20:49',0,0),(1153,1,3,NULL,'2020-11-27 07:52:32',0,1),(1154,4,7,NULL,'2020-11-27 07:58:21',0,0),(1155,5,5,NULL,'2020-11-27 07:59:48',0,0),(1156,6,4,NULL,'2020-11-27 08:00:16',0,0),(1157,1,3,NULL,'2020-11-27 08:12:30',0,1),(1158,2,3,NULL,'2020-11-27 08:15:29',0,1),(1159,3,6,NULL,'2020-11-27 08:17:28',0,0),(1160,5,5,NULL,'2020-11-27 08:20:21',0,0),(1161,6,5,NULL,'2020-11-27 08:20:48',0,0),(1162,1,2,NULL,'2020-11-27 08:52:30',0,1),(1163,2,2,NULL,'2020-11-27 08:55:29',0,1),(1164,3,6,NULL,'2020-11-27 08:57:27',0,0),(1165,5,5,NULL,'2020-11-27 09:00:22',0,0),(1166,6,4,NULL,'2020-11-27 09:00:50',0,0),(1167,1,2,NULL,'2020-11-27 09:12:29',0,1),(1168,3,6,NULL,'2020-11-27 09:17:04',0,0),(1169,4,6,NULL,'2020-11-27 09:19:02',0,0),(1170,5,5,NULL,'2020-11-27 09:20:30',0,0),(1171,6,4,NULL,'2020-11-27 09:20:58',0,0),(1172,1,3,NULL,'2020-11-27 09:52:31',0,1),(1173,5,6,NULL,'2020-11-27 09:59:22',0,0),(1174,6,3,NULL,'2020-11-27 09:59:50',0,0),(1175,1,4,NULL,'2020-11-27 10:12:31',0,0),(1176,2,4,NULL,'2020-11-27 10:15:30',0,0),(1177,3,7,NULL,'2020-11-27 10:17:29',0,0),(1178,4,7,NULL,'2020-11-27 10:19:29',0,0),(1179,5,6,NULL,'2020-11-27 10:20:56',0,0),(1180,6,3,NULL,'2020-11-27 10:21:25',0,0),(1181,1,6,NULL,'2020-11-27 10:52:30',0,0),(1182,2,6,NULL,'2020-11-27 10:55:30',0,0),(1183,5,7,NULL,'2020-11-27 10:59:49',0,0),(1184,6,3,NULL,'2020-11-27 11:00:17',0,0),(1185,1,8,NULL,'2020-11-27 11:12:30',0,0),(1186,5,7,NULL,'2020-11-27 11:19:13',0,0),(1187,6,3,NULL,'2020-11-27 11:19:41',0,0),(1188,1,8,NULL,'2020-11-27 11:52:31',0,0),(1189,5,7,NULL,'2020-11-27 11:59:13',0,0),(1190,6,2,NULL,'2020-11-27 11:59:41',0,0),(1191,1,9,NULL,'2020-11-27 12:12:31',0,0),(1192,2,9,NULL,'2020-11-27 12:15:31',0,0),(1193,4,15,NULL,'2020-11-27 12:18:54',0,0),(1194,5,7,NULL,'2020-11-27 12:20:21',0,0),(1195,6,2,NULL,'2020-11-27 12:20:48',0,0),(1196,1,10,NULL,'2020-11-27 12:52:31',0,0),(1197,3,13,NULL,'2020-11-27 12:56:57',0,0),(1198,4,14,NULL,'2020-11-27 12:58:55',0,0),(1199,5,8,NULL,'2020-11-27 13:00:23',0,0),(1200,6,6,NULL,'2020-11-27 13:00:51',0,0),(1201,1,10,NULL,'2020-11-27 13:12:31',0,0),(1202,3,12,NULL,'2020-11-27 13:16:57',0,0),(1203,5,8,NULL,'2020-11-27 13:19:49',0,0),(1204,6,6,NULL,'2020-11-27 13:20:17',0,0),(1205,1,10,NULL,'2020-11-27 13:52:30',0,0),(1206,3,11,NULL,'2020-11-27 13:56:55',0,0),(1207,4,11,NULL,'2020-11-27 13:58:55',0,0),(1208,5,7,NULL,'2020-11-27 14:00:22',0,0),(1209,6,5,NULL,'2020-11-27 14:00:51',0,0),(1210,1,10,NULL,'2020-11-27 14:12:29',0,0),(1211,2,10,NULL,'2020-11-27 14:15:28',0,0),(1212,4,12,NULL,'2020-11-27 14:18:51',0,0),(1213,5,7,NULL,'2020-11-27 14:20:19',0,0),(1214,6,5,NULL,'2020-11-27 14:20:46',0,0),(1215,1,10,NULL,'2020-11-27 14:52:30',0,0),(1216,3,13,NULL,'2020-11-27 14:56:54',0,0),(1217,4,13,NULL,'2020-11-27 14:58:53',0,0),(1218,5,7,NULL,'2020-11-27 15:00:24',0,0),(1219,6,4,NULL,'2020-11-27 15:01:00',0,0),(1220,1,9,NULL,'2020-11-27 15:12:31',0,0),(1221,4,13,NULL,'2020-11-27 15:18:20',0,0),(1222,5,7,NULL,'2020-11-27 15:19:47',0,0),(1223,6,3,NULL,'2020-11-27 15:20:15',0,0),(1224,1,7,NULL,'2020-11-27 15:52:30',0,0),(1225,3,11,NULL,'2020-11-27 15:56:54',0,0),(1226,4,11,NULL,'2020-11-27 15:58:52',0,0),(1227,5,7,NULL,'2020-11-27 16:00:19',0,0),(1228,6,3,NULL,'2020-11-27 16:00:47',0,0),(1229,1,6,NULL,'2020-11-27 16:12:30',0,0),(1230,3,11,NULL,'2020-11-27 16:16:55',0,0),(1231,4,11,NULL,'2020-11-27 16:18:54',0,0),(1232,5,7,NULL,'2020-11-27 16:20:21',0,0),(1233,6,3,NULL,'2020-11-27 16:20:49',0,0),(1234,1,6,NULL,'2020-11-27 16:52:30',0,0),(1235,2,6,NULL,'2020-11-27 16:55:30',0,0),(1236,3,12,NULL,'2020-11-27 16:57:28',0,0),(1237,5,6,NULL,'2020-11-27 17:00:21',0,0),(1238,6,3,NULL,'2020-11-27 17:00:49',0,0),(1239,1,6,NULL,'2020-11-27 17:12:29',0,0),(1240,2,6,NULL,'2020-11-27 17:15:28',0,0),(1241,4,12,NULL,'2020-11-27 17:18:51',0,0),(1242,5,6,NULL,'2020-11-27 17:20:18',0,0),(1243,6,3,NULL,'2020-11-27 17:20:47',0,0),(1244,1,5,NULL,'2020-11-27 17:52:30',0,0),(1245,5,6,NULL,'2020-11-27 17:59:12',0,0),(1246,6,3,NULL,'2020-11-27 17:59:40',0,0),(1247,1,5,NULL,'2020-11-27 18:12:30',0,0),(1248,3,11,NULL,'2020-11-27 18:16:54',0,0),(1249,5,6,NULL,'2020-11-27 18:19:48',0,0),(1250,6,3,NULL,'2020-11-27 18:20:15',0,0),(1251,1,5,NULL,'2020-11-27 18:52:29',0,0),(1252,2,5,NULL,'2020-11-27 18:55:28',0,0),(1253,5,6,NULL,'2020-11-27 18:59:46',0,0),(1254,6,4,NULL,'2020-11-27 19:00:15',0,0),(1255,1,5,NULL,'2020-11-27 19:12:30',0,0),(1256,2,5,NULL,'2020-11-27 19:15:28',0,0),(1257,4,13,NULL,'2020-11-27 19:18:53',0,0),(1258,5,6,NULL,'2020-11-27 19:20:21',0,0),(1259,6,3,NULL,'2020-11-27 19:20:49',0,0),(1260,1,4,NULL,'2020-11-27 19:52:30',0,0),(1261,2,4,NULL,'2020-11-27 19:55:29',0,0),(1262,3,12,NULL,'2020-11-27 19:57:28',0,0),(1263,4,12,NULL,'2020-11-27 19:59:27',0,0),(1264,5,5,NULL,'2020-11-27 20:00:54',0,0),(1265,6,2,NULL,'2020-11-27 20:01:22',0,0),(1266,1,4,NULL,'2020-11-27 20:12:30',0,0),(1267,2,4,NULL,'2020-11-27 20:15:28',0,0),(1268,3,11,NULL,'2020-11-27 20:17:27',0,0),(1269,5,5,NULL,'2020-11-27 20:20:20',0,0),(1270,6,6,NULL,'2020-11-27 20:20:47',0,0),(1271,1,5,NULL,'2020-11-27 20:52:30',0,0),(1272,2,5,NULL,'2020-11-27 20:55:29',0,0),(1273,3,10,NULL,'2020-11-27 20:57:29',0,0),(1274,4,10,NULL,'2020-11-27 20:59:27',0,0),(1275,5,4,NULL,'2020-11-27 21:00:54',0,0),(1276,6,1,NULL,'2020-11-27 21:01:21',0,0),(1277,1,5,NULL,'2020-11-27 21:12:30',0,0),(1278,5,4,NULL,'2020-11-27 21:19:16',0,0),(1279,6,2,NULL,'2020-11-27 21:19:44',0,0),(1280,1,5,NULL,'2020-11-27 21:52:31',0,0),(1281,2,5,NULL,'2020-11-27 21:55:32',0,0),(1282,3,9,NULL,'2020-11-27 21:57:30',0,0),(1283,4,9,NULL,'2020-11-27 21:59:30',0,0),(1284,5,4,NULL,'2020-11-27 22:00:57',0,0),(1285,6,4,NULL,'2020-11-27 22:01:25',0,0),(1286,1,5,NULL,'2020-11-27 22:12:31',0,0),(1287,2,5,NULL,'2020-11-27 22:15:30',0,0),(1288,4,9,NULL,'2020-11-27 22:18:55',0,0),(1289,5,4,NULL,'2020-11-27 22:20:23',0,0),(1290,6,2,NULL,'2020-11-27 22:20:50',0,0),(1291,1,5,NULL,'2020-11-27 22:52:30',0,0),(1292,2,5,NULL,'2020-11-27 22:55:28',0,0),(1293,4,8,NULL,'2020-11-27 22:58:52',0,0),(1294,5,4,NULL,'2020-11-27 23:00:20',0,0),(1295,6,2,NULL,'2020-11-27 23:00:48',0,0),(1296,1,5,NULL,'2020-11-27 23:12:29',0,0),(1297,3,8,NULL,'2020-11-27 23:16:53',0,0),(1298,5,4,NULL,'2020-11-27 23:19:46',0,0),(1299,6,2,NULL,'2020-11-27 23:20:14',0,0),(1300,1,5,NULL,'2020-11-27 23:52:47',0,0),(1301,2,5,NULL,'2020-11-27 23:55:46',0,0),(1302,3,8,NULL,'2020-11-27 23:57:46',0,0),(1303,4,8,NULL,'2020-11-27 23:59:44',0,0),(1304,5,5,NULL,'2020-11-28 00:01:12',0,0),(1305,6,14,NULL,'2020-11-28 00:01:40',0,0),(1306,1,5,NULL,'2020-11-28 00:12:30',0,0),(1307,3,8,NULL,'2020-11-28 00:16:53',0,0),(1308,5,5,NULL,'2020-11-28 00:19:46',0,0),(1309,6,16,NULL,'2020-11-28 00:20:14',0,0),(1310,1,6,NULL,'2020-11-28 00:52:31',0,0),(1311,2,5,NULL,'2020-11-28 00:55:29',0,0),(1312,3,8,NULL,'2020-11-28 00:57:28',0,0),(1313,4,8,NULL,'2020-11-28 00:59:28',0,0),(1314,5,5,NULL,'2020-11-28 01:00:55',0,0),(1315,6,2,NULL,'2020-11-28 01:01:24',0,0),(1316,1,6,NULL,'2020-11-28 01:12:31',0,0),(1317,2,5,NULL,'2020-11-28 01:15:31',0,0),(1318,3,8,NULL,'2020-11-28 01:17:30',0,0),(1319,4,8,NULL,'2020-11-28 01:19:29',0,0),(1320,5,5,NULL,'2020-11-28 01:20:57',0,0),(1321,6,2,NULL,'2020-11-28 01:21:25',0,0),(1322,1,5,NULL,'2020-11-28 01:52:30',0,0),(1323,2,5,NULL,'2020-11-28 01:55:29',0,0),(1324,3,8,NULL,'2020-11-28 01:57:27',0,0),(1325,5,5,NULL,'2020-11-28 02:00:18',0,0),(1326,6,2,NULL,'2020-11-28 02:00:46',0,0),(1327,1,4,NULL,'2020-11-28 02:12:29',0,0),(1328,3,7,NULL,'2020-11-28 02:16:53',0,0),(1329,4,8,NULL,'2020-11-28 02:18:52',0,0),(1330,5,5,NULL,'2020-11-28 02:20:20',0,0),(1331,6,2,NULL,'2020-11-28 02:20:47',0,0),(1332,1,4,NULL,'2020-11-28 02:52:30',0,0),(1333,3,7,NULL,'2020-11-28 02:56:53',0,0),(1334,4,7,NULL,'2020-11-28 02:58:51',0,0),(1335,5,5,NULL,'2020-11-28 03:00:20',0,0),(1336,6,4,NULL,'2020-11-28 03:00:47',0,0),(1337,1,4,NULL,'2020-11-28 03:12:30',0,0),(1338,3,7,NULL,'2020-11-28 03:16:53',0,0),(1339,5,5,NULL,'2020-11-28 03:19:45',0,0),(1340,6,4,NULL,'2020-11-28 03:20:12',0,0),(1341,1,4,NULL,'2020-11-28 03:52:30',0,0),(1342,2,4,NULL,'2020-11-28 03:55:29',0,0),(1343,4,7,NULL,'2020-11-28 03:58:52',0,0),(1344,5,3,NULL,'2020-11-28 04:00:19',0,0),(1345,6,5,NULL,'2020-11-28 04:00:47',0,0),(1346,1,4,NULL,'2020-11-28 04:12:30',0,0),(1347,2,4,NULL,'2020-11-28 04:15:28',0,0),(1348,3,6,NULL,'2020-11-28 04:17:26',0,0),(1349,5,3,NULL,'2020-11-28 04:20:17',0,0),(1350,6,4,NULL,'2020-11-28 04:20:46',0,0),(1351,1,4,NULL,'2020-11-28 04:52:31',0,0),(1352,4,6,NULL,'2020-11-28 04:58:20',0,0),(1353,5,2,NULL,'2020-11-28 04:59:47',0,0),(1354,6,2,NULL,'2020-11-28 05:00:15',0,0),(1355,1,4,NULL,'2020-11-28 05:12:30',0,0),(1356,2,4,NULL,'2020-11-28 05:15:29',0,0),(1357,5,2,NULL,'2020-11-28 05:19:49',0,0),(1358,6,3,NULL,'2020-11-28 05:20:16',0,0),(1359,1,5,NULL,'2020-11-28 05:52:30',0,0),(1360,2,4,NULL,'2020-11-28 05:55:29',0,0),(1361,3,7,NULL,'2020-11-28 05:57:29',0,0),(1362,5,1,NULL,'2020-11-28 06:00:23',0,0),(1363,6,5,NULL,'2020-11-28 06:00:50',0,0),(1364,1,5,NULL,'2020-11-28 06:12:29',0,0),(1365,2,5,NULL,'2020-11-28 06:15:28',0,0),(1366,3,7,NULL,'2020-11-28 06:17:26',0,0),(1367,4,7,NULL,'2020-11-28 06:19:24',0,0),(1368,5,1,NULL,'2020-11-28 06:20:51',0,0),(1369,6,4,NULL,'2020-11-28 06:21:19',0,0),(1370,1,5,NULL,'2020-11-28 06:52:30',0,0),(1371,3,7,NULL,'2020-11-28 06:56:56',0,0),(1372,4,7,NULL,'2020-11-28 06:58:53',0,0),(1373,5,1,NULL,'2020-11-28 07:00:22',0,0),(1374,6,4,NULL,'2020-11-28 07:00:55',0,0),(1375,1,4,NULL,'2020-11-28 07:12:30',0,0),(1376,2,4,NULL,'2020-11-28 07:15:27',0,0),(1377,4,7,NULL,'2020-11-28 07:18:51',0,0),(1378,5,1,NULL,'2020-11-28 07:20:19',0,0),(1379,6,5,NULL,'2020-11-28 07:20:47',0,0),(1380,1,5,NULL,'2020-11-28 07:52:31',0,0),(1381,5,2,NULL,'2020-11-28 07:59:14',0,0),(1382,6,6,NULL,'2020-11-28 07:59:41',0,0),(1383,1,5,NULL,'2020-11-28 08:12:31',0,0),(1384,2,5,NULL,'2020-11-28 08:15:30',0,0),(1385,3,7,NULL,'2020-11-28 08:17:29',0,0),(1386,4,7,NULL,'2020-11-28 08:19:28',0,0),(1387,5,2,NULL,'2020-11-28 08:20:56',0,0),(1388,6,4,NULL,'2020-11-28 08:21:24',0,0),(1389,1,6,NULL,'2020-11-28 08:52:31',0,0),(1390,3,7,NULL,'2020-11-28 08:56:54',0,0),(1391,4,7,NULL,'2020-11-28 08:58:53',0,0),(1392,5,2,NULL,'2020-11-28 09:00:22',0,0),(1393,6,3,NULL,'2020-11-28 09:00:49',0,0),(1394,1,6,NULL,'2020-11-28 09:12:29',0,0),(1395,2,6,NULL,'2020-11-28 09:15:28',0,0),(1396,3,7,NULL,'2020-11-28 09:17:26',0,0),(1397,5,2,NULL,'2020-11-28 09:20:18',0,0),(1398,6,2,NULL,'2020-11-28 09:20:46',0,0),(1399,1,8,NULL,'2020-11-28 09:52:30',0,0),(1400,5,4,NULL,'2020-11-28 09:59:15',0,0),(1401,6,1,NULL,'2020-11-28 09:59:43',0,0),(1402,1,8,NULL,'2020-11-28 10:12:30',0,0),(1403,4,8,NULL,'2020-11-28 10:18:21',0,0),(1404,5,4,NULL,'2020-11-28 10:19:48',0,0),(1405,6,5,NULL,'2020-11-28 10:20:16',0,0),(1406,1,9,NULL,'2020-11-28 10:52:30',0,0),(1407,2,8,NULL,'2020-11-28 10:55:29',0,0),(1408,3,9,NULL,'2020-11-28 10:57:28',0,0),(1409,5,4,NULL,'2020-11-28 11:00:22',0,0),(1410,6,5,NULL,'2020-11-28 11:00:50',0,0),(1411,1,9,NULL,'2020-11-28 11:12:30',0,0),(1412,2,9,NULL,'2020-11-28 11:15:30',0,0),(1413,5,6,NULL,'2020-11-28 11:19:47',0,0),(1414,6,5,NULL,'2020-11-28 11:20:15',0,0),(1415,1,9,NULL,'2020-11-28 11:52:31',0,0),(1416,2,9,NULL,'2020-11-28 11:55:30',0,0),(1417,3,9,NULL,'2020-11-28 11:57:30',0,0),(1418,5,7,NULL,'2020-11-28 12:00:26',0,0),(1419,6,5,NULL,'2020-11-28 12:01:03',0,0),(1420,1,10,NULL,'2020-11-28 12:12:31',0,0),(1421,5,7,NULL,'2020-11-28 12:19:14',0,0),(1422,6,5,NULL,'2020-11-28 12:19:42',0,0),(1423,1,11,NULL,'2020-11-28 12:52:31',0,0),(1424,5,8,NULL,'2020-11-28 12:59:16',0,0),(1425,6,4,NULL,'2020-11-28 12:59:44',0,0),(1426,1,11,NULL,'2020-11-28 13:12:30',0,0),(1427,4,11,NULL,'2020-11-28 13:18:18',0,0),(1428,5,8,NULL,'2020-11-28 13:19:46',0,0),(1429,6,4,NULL,'2020-11-28 13:20:14',0,0),(1430,1,11,NULL,'2020-11-28 13:52:31',0,0),(1431,5,8,NULL,'2020-11-28 13:59:14',0,0),(1432,6,8,NULL,'2020-11-28 13:59:42',0,0),(1433,1,11,NULL,'2020-11-28 14:12:31',0,0),(1434,2,10,NULL,'2020-11-28 14:15:29',0,0),(1435,5,8,NULL,'2020-11-28 14:19:46',0,0),(1436,6,4,NULL,'2020-11-28 14:20:14',0,0),(1437,1,10,NULL,'2020-11-28 14:52:31',0,0),(1438,3,10,NULL,'2020-11-28 14:56:56',0,0),(1439,4,10,NULL,'2020-11-28 14:58:55',0,0),(1440,5,8,NULL,'2020-11-28 15:00:25',0,0),(1441,6,5,NULL,'2020-11-28 15:01:02',0,0),(1442,1,9,NULL,'2020-11-28 15:12:30',0,0),(1443,5,8,NULL,'2020-11-28 15:19:11',0,0),(1444,6,4,NULL,'2020-11-28 15:19:39',0,0),(1445,1,9,NULL,'2020-11-28 15:52:30',0,0),(1446,5,8,NULL,'2020-11-28 15:59:14',0,0),(1447,6,5,NULL,'2020-11-28 15:59:42',0,0),(1448,1,9,NULL,'2020-11-28 16:12:30',0,0),(1449,3,9,NULL,'2020-11-28 16:16:53',0,0),(1450,4,9,NULL,'2020-11-28 16:18:52',0,0),(1451,5,8,NULL,'2020-11-28 16:20:19',0,0),(1452,6,4,NULL,'2020-11-28 16:20:47',0,0);
/*!40000 ALTER TABLE `bak_sensor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) DEFAULT NULL,
  `owner` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) DEFAULT 'OPEN',
  `duedate` datetime DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `email_enc` blob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_monitor`
--

DROP TABLE IF EXISTS `comments_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_monitor` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `recent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_monitor`
--

LOCK TABLES `comments_monitor` WRITE;
/*!40000 ALTER TABLE `comments_monitor` DISABLE KEYS */;
INSERT INTO `comments_monitor` VALUES (1,45);
/*!40000 ALTER TABLE `comments_monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `id` int(6) unsigned NOT NULL DEFAULT 0,
  `description` varchar(200) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_text` varchar(30) NOT NULL,
  `ipaddress` varchar(30) DEFAULT NULL,
  `latest_value` float DEFAULT NULL,
  `last_seen` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (0,'beaglebone','\r\n  has old version of sensor app as main web page - not needed./dev/sda1 enabled as usb. see project 243 for placing web files outside web root - see tasks  1080,1090 ','2021-05-21 10:23:05','beaglebone','192.168.8.134',NULL,1621591593),(0,'chip',NULL,'2021-05-23 11:13:22','chip','192.168.8.132',NULL,1621768383),(0,'chipserver','upgraded to latest software\r\n sudo nano /etc/apt/sources.list - changed\r\nthen\r\n sudo apt update\r\n sudo apt upgrade\r\n sudo apt install apt-transport-https\r\n','2021-05-23 11:27:26','chipserver','192.168.8.136',NULL,1621712800),(0,'pi92c5',NULL,'2021-05-16 06:22:05','pi92c5','192.168.8.110',NULL,1621146108),(0,'pigooglespeech','This seems to have an old version of Pi Radio with volume button but volume slider also works, and versions of google speech api \r\n  ','2021-05-21 08:49:48','pigooglespeech','192.168.8.116',NULL,1621583182),(0,'pigooglespeech2','\r\n  Has microphone attached and does voice recognition and speech to text, no Mysql, Apache etc ','2021-05-21 09:57:22','pigooglespeech2','192.168.8.115',NULL,1621578734),(0,'pimqtt',NULL,'2021-05-11 02:35:33','pimqtt','192.168.8.111',NULL,1620700516),(0,'piradio3','\r\n  Appears to have the latest version of Pi Radio on it','2021-05-21 19:52:11','piradio3','192.168.8.135',NULL,1621626671),(0,'Witty_hall_PIR_SK',NULL,'2021-05-18 07:56:36','sonoff_12345','192.168.8.131',NULL,1621324578),(0,'Compost_heap_2',NULL,'2021-05-16 13:23:10','tasmota_03C5D2','192.168.8.102',NULL,1621171372),(0,'Tasmota_Spare',NULL,'2021-05-20 08:31:00','tasmota_03CA1D','192.168.8.123',NULL,1621499439),(0,'Tasmota_PIR_demo',NULL,'2021-05-21 07:00:29','tasmota_03CBD6','192.168.8.122',NULL,1621580411),(0,'tasmota_38F9D3-6611',NULL,'2021-05-22 12:59:32','tasmota_38F9D3','192.168.8.127',NULL,1621688354),(0,'tasmota_38FFE2-8162',NULL,'2021-05-09 12:50:13','tasmota_38FFE2','192.168.8.128',NULL,1620564595),(0,'Tasmota_smartlight_bedroom',' this is a test','2021-05-21 08:43:44','tasmota_4C562C','192.168.8.119',NULL,1620564165),(0,'tasmota_4C5AA3-6819',NULL,'2021-05-20 08:33:42','tasmota_4C5AA3','192.168.8.113',NULL,1621499605),(0,'tasmota_4C6FAE-4014',NULL,'2021-05-12 01:59:00','tasmota_4C6FAE','192.168.8.130',NULL,1620784707),(0,'Greenhouse_and_compost_Tasmota',NULL,'2021-05-15 09:37:23','tasmota_4C7759','192.168.8.114',NULL,1621071425),(0,'tasmota_5D4D8B-3467',NULL,'2021-05-09 12:48:18','tasmota_5D4D8B','192.168.8.124',NULL,1620564480),(0,'tasmota_5E5469-5225',NULL,'2021-05-09 12:44:22','tasmota_5E5469','192.168.8.112',NULL,1620564245);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `github`
--

DROP TABLE IF EXISTS `github`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `github` (
  `id` int(6) unsigned NOT NULL DEFAULT 0,
  `description` varchar(200) DEFAULT NULL,
  `owner` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) DEFAULT 'OPEN',
  `duedate` datetime DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `github`
--

LOCK TABLES `github` WRITE;
/*!40000 ALTER TABLE `github` DISABLE KEYS */;
INSERT INTO `github` VALUES (0,'Basic installation of Tasmoto on ESP12 devices such as Witty Cloud','','2021-02-16 21:11:52','OPEN',NULL,NULL,NULL,'https://github.com/scanos/Tasmoto'),(0,'How to control multiple ESP devices through a single web page','','2021-02-16 21:12:01','OPEN',NULL,NULL,NULL,'https://github.com/scanos/Xmas-Lights-Control-Centre'),(0,'Use bash scripts to manipulate Openweather Data','','2021-02-16 21:13:18','OPEN',NULL,NULL,NULL,'https://github.com/scanos/monitor_sensors_ow'),(0,'Send and receive sms messages through a witty ESP-01 module','','2021-02-16 21:14:29','OPEN',NULL,NULL,NULL,'https://github.com/scanos/witty_gsm'),(0,'PHP script framework to store rainfall from Open Weather for advising on garden watering regime.','','2021-02-16 21:18:10','OPEN',NULL,NULL,NULL,'https://github.com/scanos/openW_rainfall');
/*!40000 ALTER TABLE `github` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `greenhouse_heating_test`
--

DROP TABLE IF EXISTS `greenhouse_heating_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `greenhouse_heating_test` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `greenhouse1` float NOT NULL,
  `greenhouse2` float NOT NULL,
  `conservatory` float NOT NULL,
  `outsideweather` float NOT NULL,
  `weather` varchar(30) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `microgreen` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=939 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `greenhouse_heating_test`
--

LOCK TABLES `greenhouse_heating_test` WRITE;
/*!40000 ALTER TABLE `greenhouse_heating_test` DISABLE KEYS */;
INSERT INTO `greenhouse_heating_test` VALUES (1,0,11,12,10.7,'Rain','used 2 sensors greenhouse due to unreliability','2020-11-01 18:49:20',NULL),(2,0,11,13,10.69,'Rain','','2020-11-01 18:49:35',NULL),(3,0,11,0,10.69,'Rain','need new batteries for sensors','2020-11-01 18:50:01',NULL),(4,0,11,0,10.38,'Drizzle',NULL,'2020-11-01 18:13:29',NULL),(5,0,0,15,10.38,'Rain',NULL,'2020-11-01 19:13:29',NULL),(6,0,10,13,9.81,'Rain',NULL,'2020-11-01 20:13:39',NULL),(7,0,8,0,8.54,'Rain',NULL,'2020-11-01 21:13:28',NULL),(8,0,0,12,7.85,'Rain',NULL,'2020-11-01 22:13:29',NULL),(9,0,0,0,7.85,'Rain',NULL,'2020-11-01 23:10:19',NULL),(10,0,0,11,7.85,'Rain',NULL,'2020-11-01 23:13:30',NULL),(11,0,7,11,7.85,'Rain',NULL,'2020-11-01 23:16:43',NULL),(12,7,7,11,7.85,'Rain',NULL,'2020-11-01 23:20:46',NULL),(13,7,7,0,7.85,'Clouds',NULL,'2020-11-01 23:53:28',NULL),(14,7,0,0,7.85,'Clouds',NULL,'2020-11-02 00:13:22',NULL),(15,7,0,10,7.85,'Clouds',NULL,'2020-11-02 00:53:28',NULL),(16,7,0,0,7.85,'Rain',NULL,'2020-11-02 01:13:23',NULL),(17,7,0,10,7.15,'Rain',NULL,'2020-11-02 01:53:32',NULL),(18,7,7,0,7.15,'Rain',NULL,'2020-11-02 02:13:29',NULL),(19,7,0,9,7.15,'Clouds',NULL,'2020-11-02 02:53:28',NULL),(20,7,0,9,7.15,'Rain',NULL,'2020-11-02 03:13:28',NULL),(21,7,0,0,7.34,'Clouds',NULL,'2020-11-02 03:53:23',NULL),(22,7,0,9,7.34,'Clouds',NULL,'2020-11-02 04:13:29',NULL),(23,6,6,9,7.34,'Clouds',NULL,'2020-11-02 04:53:36',NULL),(24,6,0,0,7.34,'Clouds',NULL,'2020-11-02 05:13:21',NULL),(25,6,6,0,7.34,'Clouds',NULL,'2020-11-02 05:53:30',NULL),(26,6,0,8,7.34,'Clouds',NULL,'2020-11-02 06:13:30',NULL),(27,5,0,0,7.34,'Clouds',NULL,'2020-11-02 06:53:21',NULL),(28,6,0,0,7.34,'Clouds',NULL,'2020-11-02 07:13:23',NULL),(29,7,0,0,7.54,'Clouds',NULL,'2020-11-02 07:53:21',NULL),(30,7,0,9,7.53,'Clouds',NULL,'2020-11-02 08:13:28',NULL),(31,9,8,0,8.04,'Clouds',NULL,'2020-11-02 08:53:28',NULL),(32,10,10,10,7.85,'Clouds',NULL,'2020-11-02 09:13:37',NULL),(33,11,11,0,8.04,'Clouds',NULL,'2020-11-02 09:53:29',NULL),(34,12,12,18,8.22,'Clouds',NULL,'2020-11-02 10:13:34',NULL),(35,12,0,18,8.61,'Rain',NULL,'2020-11-02 10:53:30',NULL),(36,0,12,0,8.61,'Rain',NULL,'2020-11-02 11:13:30',NULL),(37,14,13,20,9.3,'Clouds',NULL,'2020-11-02 11:53:35',NULL),(38,15,14,18,9.3,'Rain',NULL,'2020-11-02 12:13:37',NULL),(39,17,0,17,8.8,'Clouds',NULL,'2020-11-02 12:53:29',NULL),(40,15,16,0,8.79,'Rain','heater on in conservatory','2020-11-02 14:34:24',NULL),(41,11,11,0,8.23,'Clouds',NULL,'2020-11-02 13:53:30',NULL),(42,13,13,16,8.6,'Rain',NULL,'2020-11-02 14:13:36',NULL),(43,13,0,16,8.8,'Clouds',NULL,'2020-11-02 14:53:29',NULL),(44,11,12,15,8.98,'Rain',NULL,'2020-11-02 15:13:36',NULL),(45,8,0,13,8.73,'Clouds',NULL,'2020-11-02 15:53:30',NULL),(46,7,8,12,8.35,'Rain',NULL,'2020-11-02 16:13:37',NULL),(47,7,0,0,8.04,'Clouds',NULL,'2020-11-02 16:53:21',NULL),(48,7,7,11,8.04,'Rain',NULL,'2020-11-02 17:13:37',NULL),(49,7,0,0,7.66,'Rain',NULL,'2020-11-02 17:53:28',NULL),(50,6,6,0,7.47,'Rain',NULL,'2020-11-02 18:13:29',NULL),(51,6,6,12,6.27,'Rain',NULL,'2020-11-02 18:53:35',NULL),(52,6,0,0,6.26,'Rain',NULL,'2020-11-02 19:13:23',NULL),(53,5,0,0,6.27,'Clouds',NULL,'2020-11-02 19:53:21',NULL),(54,5,0,10,6.26,'Clouds',NULL,'2020-11-02 20:13:30',NULL),(55,5,0,12,6.27,'Clouds',NULL,'2020-11-02 20:53:28',NULL),(56,5,0,0,6.26,'Rain',NULL,'2020-11-02 21:13:22',NULL),(57,4,0,0,5.89,'Clouds',NULL,'2020-11-02 21:53:22',NULL),(58,4,4,9,5.89,'Rain',NULL,'2020-11-02 22:13:37',NULL),(59,3,3,8,5.19,'Clouds',NULL,'2020-11-02 22:53:37',NULL),(60,3,0,8,5.19,'Rain',NULL,'2020-11-02 23:13:30',NULL),(61,3,3,8,4.81,'Clouds',NULL,'2020-11-02 23:53:37',NULL),(62,3,3,7,4.81,'Clouds',NULL,'2020-11-03 00:13:36',NULL),(63,3,3,7,4.3,'Clear',NULL,'2020-11-03 00:53:37',NULL),(64,3,3,7,4.11,'Clear',NULL,'2020-11-03 01:13:35',NULL),(65,3,0,7,3.73,'Clear',NULL,'2020-11-03 01:53:30',NULL),(66,3,3,7,3.74,'Clear',NULL,'2020-11-03 02:13:35',NULL),(67,3,3,7,3.73,'Clear',NULL,'2020-11-03 02:53:38',NULL),(68,4,0,0,3.74,'Clear',NULL,'2020-11-03 03:13:22',NULL),(69,4,4,7,4.11,'Clear',NULL,'2020-11-03 03:53:37',NULL),(70,4,0,0,4.3,'Clear',NULL,'2020-11-03 04:13:22',NULL),(71,4,4,7,4.3,'Clear',NULL,'2020-11-03 04:53:38',NULL),(72,3,3,7,4.3,'Clear',NULL,'2020-11-03 05:13:35',NULL),(73,3,3,6,4.62,'Clear',NULL,'2020-11-03 05:53:38',NULL),(74,3,3,0,4.43,'Clear',NULL,'2020-11-03 06:13:29',NULL),(75,2,2,0,4.24,'Clouds',NULL,'2020-11-03 06:53:29',NULL),(76,2,2,0,4.24,'Clouds',NULL,'2020-11-03 07:13:30',NULL),(77,3,3,6,3.92,'Clouds',NULL,'2020-11-03 07:53:36',NULL),(78,3,3,6,4.11,'Clouds',NULL,'2020-11-03 08:13:37',NULL),(79,5,4,8,5.07,'Clouds',NULL,'2020-11-03 08:53:38',NULL),(80,5,5,10,5.44,'Clouds',NULL,'2020-11-03 09:13:37',NULL),(81,7,0,11,6.35,'Clouds',NULL,'2020-11-03 09:53:29',NULL),(82,8,0,12,6.63,'Clouds',NULL,'2020-11-03 10:13:28',NULL),(83,11,0,0,7.72,'Clear',NULL,'2020-11-03 10:53:21',NULL),(84,15,0,13,7.72,'Clear',NULL,'2020-11-03 11:13:30',NULL),(85,23,21,12,8.23,'Clouds','heater on for 15 min in the conserv','2020-11-03 11:55:45',12),(86,21,23,13,8.23,'Clouds',NULL,'2020-11-03 11:54:09',13),(87,22,24,15,8.46,'Clouds','some sun','2020-11-03 12:17:49',14),(88,13,0,0,9.05,'Clouds',NULL,'2020-11-03 12:53:53',16),(89,12,0,17,9.55,'Clouds',NULL,'2020-11-03 13:14:01',17),(90,10,11,14,9.49,'Clouds',NULL,'2020-11-03 13:54:09',15),(91,10,10,13,9.49,'Clouds',NULL,'2020-11-03 14:14:09',14),(92,10,0,12,9.3,'Clouds',NULL,'2020-11-03 14:53:53',0),(93,9,9,12,9.11,'Rain',NULL,'2020-11-03 15:10:26',13),(94,9,9,12,9.11,'Rain',NULL,'2020-11-03 15:13:59',0),(95,7,0,0,8.35,'Clear',NULL,'2020-11-03 15:53:49',0),(96,7,7,0,8.36,'Clear',NULL,'2020-11-03 16:13:55',0),(97,5,0,0,7.09,'Clear',NULL,'2020-11-03 16:53:46',0),(98,4,0,10,6.91,'Clear',NULL,'2020-11-03 17:14:03',11),(99,4,4,0,6.01,'Clear',NULL,'2020-11-03 17:54:00',11),(100,4,4,11,5.84,'Clear',NULL,'2020-11-03 18:14:01',0),(101,3,3,10,5.32,'Clear',NULL,'2020-11-03 18:54:10',11),(102,3,3,0,5.51,'Clear',NULL,'2020-11-03 19:14:00',11),(103,3,3,10,5.32,'Clear',NULL,'2020-11-03 19:54:07',11),(104,3,3,10,5.51,'Clear',NULL,'2020-11-03 20:14:10',11),(105,3,0,9,5.7,'Clear',NULL,'2020-11-03 20:54:00',10),(106,3,3,9,5.7,'Clear',NULL,'2020-11-03 21:14:08',10),(107,3,0,10,5.51,'Clear',NULL,'2020-11-03 21:54:04',10),(108,3,0,10,5.7,'Clear',NULL,'2020-11-03 22:14:01',10),(109,3,3,0,5.32,'Clear',NULL,'2020-11-03 22:54:01',10),(110,3,3,8,5.51,'Clear',NULL,'2020-11-03 23:14:13',9),(111,3,3,0,5.13,'Clear',NULL,'2020-11-03 23:53:59',9),(112,3,0,8,5.13,'Clear',NULL,'2020-11-04 00:14:01',9),(113,3,0,0,4.81,'Clouds',NULL,'2020-11-04 00:53:46',0),(114,3,0,0,4.82,'Clouds',NULL,'2020-11-04 01:13:47',0),(115,3,3,7,5.19,'Clouds',NULL,'2020-11-04 01:54:02',0),(116,3,0,7,5.19,'Clouds',NULL,'2020-11-04 02:14:01',8),(117,2,0,7,5.19,'Clouds',NULL,'2020-11-04 02:54:01',8),(118,3,0,0,5.01,'Clouds',NULL,'2020-11-04 03:13:47',0),(119,3,3,0,5,'Clouds',NULL,'2020-11-04 03:53:54',0),(120,2,2,7,5,'Clouds',NULL,'2020-11-04 04:14:10',7),(121,2,0,0,5.07,'Clouds',NULL,'2020-11-04 04:53:47',0),(122,2,2,0,5.06,'Clouds',NULL,'2020-11-04 05:13:54',0),(123,3,3,0,5.77,'Clouds',NULL,'2020-11-04 05:54:00',7),(124,4,4,7,5.96,'Clouds',NULL,'2020-11-04 06:14:09',7),(125,4,0,0,6.27,'Clear',NULL,'2020-11-04 06:53:54',8),(126,4,0,7,6.27,'Clear',NULL,'2020-11-04 07:13:54',0),(127,4,0,7,6.58,'Clear',NULL,'2020-11-04 07:53:53',0),(128,4,0,7,6.59,'Clear',NULL,'2020-11-04 08:13:56',0),(129,5,5,0,7.34,'Clear',NULL,'2020-11-04 08:53:55',0),(130,6,0,8,7.34,'Clear',NULL,'2020-11-04 09:14:02',9),(131,7,0,11,8.23,'Clear',NULL,'2020-11-04 09:54:03',12),(132,8,8,0,8.42,'Clear',NULL,'2020-11-04 10:14:03',14),(133,11,11,11,8.8,'Clouds',NULL,'2020-11-04 10:53:59',0),(134,19,18,11,8.98,'Clouds',NULL,'2020-11-04 11:14:02',0),(135,23,24,0,9.3,'Clouds',NULL,'2020-11-04 11:54:01',16),(136,19,0,13,9.68,'Clear',NULL,'2020-11-04 12:13:55',0),(137,15,15,15,9.69,'Clear',NULL,'2020-11-04 12:54:07',18),(138,15,0,15,9.49,'Clear',NULL,'2020-11-04 13:13:54',0),(139,13,0,0,8.92,'Clear',NULL,'2020-11-04 13:53:54',16),(140,14,0,0,9.31,'Clear',NULL,'2020-11-04 14:13:49',0),(141,13,0,13,9.24,'Clouds',NULL,'2020-11-04 14:54:01',15),(142,11,0,12,9.43,'Clouds',NULL,'2020-11-04 15:13:54',0),(143,11,11,12,9.11,'Clouds',NULL,'2020-11-04 15:54:01',0),(144,9,0,11,8.93,'Clouds',NULL,'2020-11-04 16:14:01',13),(145,8,8,10,8.94,'Clouds',NULL,'2020-11-04 16:54:01',0),(146,8,0,0,8.74,'Clouds',NULL,'2020-11-04 17:13:49',0),(147,7,0,10,8.54,'Clouds',NULL,'2020-11-04 17:54:02',11),(148,7,0,11,8.54,'Clouds',NULL,'2020-11-04 18:13:54',0),(149,7,7,11,8.04,'Clouds',NULL,'2020-11-04 18:54:10',13),(150,6,6,11,8.04,'Clouds',NULL,'2020-11-04 19:14:01',0),(151,6,0,10,7.66,'Clouds',NULL,'2020-11-04 19:53:52',0),(152,5,0,9,7.47,'Clouds',NULL,'2020-11-04 20:14:00',11),(153,4,0,10,6.4,'Clouds',NULL,'2020-11-04 20:53:57',0),(154,4,0,0,6.59,'Clouds',NULL,'2020-11-04 21:13:49',0),(155,3,3,0,6.27,'Clouds',NULL,'2020-11-04 21:53:54',0),(156,4,4,0,6.64,'Clouds',NULL,'2020-11-04 22:14:02',11),(157,5,5,0,7.16,'Clouds',NULL,'2020-11-04 22:53:59',10),(158,5,0,8,7.16,'Clouds',NULL,'2020-11-04 23:14:00',10),(159,6,0,0,7.34,'Clouds',NULL,'2020-11-04 23:53:55',10),(160,6,6,8,7.34,'Clouds',NULL,'2020-11-05 00:14:07',10),(161,6,6,0,7.54,'Clouds',NULL,'2020-11-05 00:53:54',0),(162,7,6,9,7.34,'Clouds',NULL,'2020-11-05 01:14:02',0),(163,7,0,9,7.66,'Clouds',NULL,'2020-11-05 01:53:53',0),(164,7,0,0,7.66,'Clouds',NULL,'2020-11-05 02:13:53',10),(165,7,0,0,7.66,'Clouds',NULL,'2020-11-05 02:53:46',0),(166,7,0,0,7.85,'Clouds',NULL,'2020-11-05 03:13:54',10),(167,7,0,0,7.85,'Clouds',NULL,'2020-11-05 03:53:47',0),(168,7,0,0,8.04,'Clouds',NULL,'2020-11-05 04:13:54',10),(169,7,7,0,8.04,'Clouds',NULL,'2020-11-05 04:54:01',10),(170,7,0,9,8.04,'Clouds',NULL,'2020-11-05 05:13:53',0),(171,7,0,9,8.04,'Clouds',NULL,'2020-11-05 05:54:02',10),(172,8,0,0,8.04,'Clouds',NULL,'2020-11-05 06:13:54',10),(173,8,8,0,8.04,'Clouds',NULL,'2020-11-05 06:53:55',0),(174,8,0,0,8.04,'Clouds',NULL,'2020-11-05 07:13:54',10),(175,8,8,0,8.23,'Clouds',NULL,'2020-11-05 07:53:55',0),(176,9,0,0,8.22,'Clouds',NULL,'2020-11-05 08:13:47',0),(177,10,0,0,8.92,'Clouds',NULL,'2020-11-05 08:53:48',0),(178,11,0,0,8.93,'Clouds',NULL,'2020-11-05 09:13:47',0),(179,13,12,0,9.5,'Clouds',NULL,'2020-11-05 09:53:56',0),(180,13,13,11,9.5,'Clouds',NULL,'2020-11-05 10:08:34',13),(181,13,13,11,9.5,'Clouds',NULL,'2020-11-05 10:12:11',13),(182,13,0,11,9.49,'Clouds',NULL,'2020-11-05 10:14:22',13),(183,15,0,12,10.57,'Clouds',NULL,'2020-11-05 10:54:14',0),(184,17,16,12,10.76,'Clouds',NULL,'2020-11-05 11:14:29',15),(185,27,0,13,11.65,'Clouds',NULL,'2020-11-05 11:54:23',16),(186,25,26,13,11.83,'Clouds',NULL,'2020-11-05 12:14:34',16),(187,20,21,0,12.03,'Clear',NULL,'2020-11-05 12:54:13',0),(188,18,18,15,12.02,'Clear',NULL,'2020-11-05 13:14:21',0),(189,14,0,14,12.34,'Clouds',NULL,'2020-11-05 13:54:22',17),(190,13,0,14,12.34,'Clouds',NULL,'2020-11-05 14:14:21',17),(191,14,0,15,12.03,'Clouds',NULL,'2020-11-05 14:54:13',0),(192,14,0,15,11.64,'Clouds',NULL,'2020-11-05 15:14:14',0),(193,13,0,0,11.27,'Clouds',NULL,'2020-11-05 15:54:15',17),(194,12,12,14,11.08,'Clouds',NULL,'2020-11-05 16:14:25',0),(195,11,0,0,10.7,'Clouds',NULL,'2020-11-05 16:54:17',15),(196,11,0,0,10.51,'Clouds',NULL,'2020-11-05 17:14:08',0),(197,10,10,12,10,'Clouds',NULL,'2020-11-05 17:54:22',0),(198,10,10,12,10,'Clouds',NULL,'2020-11-05 18:14:21',0),(199,10,10,11,9.42,'Clouds',NULL,'2020-11-05 18:54:26',0),(200,10,10,0,9.24,'Clouds',NULL,'2020-11-05 19:14:14',0),(201,9,0,11,8.1,'Clouds',NULL,'2020-11-05 19:54:20',11),(202,9,9,0,8.09,'Clouds',NULL,'2020-11-05 20:14:23',11),(203,9,9,0,7.72,'Clouds',NULL,'2020-11-05 20:54:17',0),(204,9,0,11,7.71,'Clouds',NULL,'2020-11-05 21:14:14',0),(205,9,0,11,7.6,'Fog',NULL,'2020-11-05 21:54:23',11),(206,9,0,11,7.4,'Fog',NULL,'2020-11-05 22:14:14',0),(207,9,0,11,8.04,'Clouds',NULL,'2020-11-05 22:54:21',11),(208,9,0,0,8.23,'Clouds',NULL,'2020-11-05 23:14:13',11),(209,9,0,0,8.23,'Mist',NULL,'2020-11-05 23:54:10',0),(210,9,0,0,8.23,'Mist',NULL,'2020-11-06 00:14:18',11),(211,9,0,0,8.92,'Mist',NULL,'2020-11-06 00:54:15',11),(212,9,0,0,8.93,'Mist',NULL,'2020-11-06 01:14:06',0),(213,9,0,10,8.92,'Mist',NULL,'2020-11-06 01:54:12',0),(214,9,0,0,9.11,'Mist',NULL,'2020-11-06 02:14:10',0),(215,9,0,10,9.3,'Mist',NULL,'2020-11-06 02:54:14',0),(216,9,9,0,9.3,'Mist',NULL,'2020-11-06 03:14:16',0),(217,9,9,10,9.3,'Mist',NULL,'2020-11-06 03:54:21',0),(218,9,9,0,9.3,'Mist',NULL,'2020-11-06 04:14:15',0),(219,9,0,0,9.3,'Mist',NULL,'2020-11-06 04:54:11',0),(220,9,0,0,9.3,'Mist',NULL,'2020-11-06 05:14:07',0),(221,9,0,0,9.3,'Clouds',NULL,'2020-11-06 05:54:06',0),(222,9,0,0,9.3,'Clouds',NULL,'2020-11-06 06:14:15',10),(223,9,0,0,9.3,'Mist',NULL,'2020-11-06 06:54:15',10),(224,9,9,0,9.3,'Mist',NULL,'2020-11-06 07:14:13',0),(225,9,9,0,9.49,'Drizzle',NULL,'2020-11-06 07:54:17',0),(226,9,0,0,9.49,'Drizzle',NULL,'2020-11-06 08:14:07',0),(227,10,10,0,9.49,'Clouds',NULL,'2020-11-06 08:54:22',11),(228,10,0,0,9.49,'Clouds',NULL,'2020-11-06 09:14:06',0),(229,10,0,0,9.49,'Mist',NULL,'2020-11-06 09:54:08',0),(230,13,12,15,9.68,'Mist',NULL,'2020-11-06 10:14:25',0),(231,18,17,0,10.19,'Drizzle',NULL,'2020-11-06 10:54:14',0),(232,21,20,14,10.57,'Drizzle',NULL,'2020-11-06 11:14:28',16),(233,20,20,14,10.77,'Clouds',NULL,'2020-11-06 11:54:23',0),(234,20,21,14,11.35,'Clouds',NULL,'2020-11-06 12:14:20',0),(235,19,0,0,11.06,'Clouds',NULL,'2020-11-06 12:54:15',14),(236,17,18,0,11.06,'Clouds',NULL,'2020-11-06 13:14:15',0),(237,13,0,0,10.58,'Clouds',NULL,'2020-11-06 13:54:09',0),(238,12,0,0,10.94,'Clouds',NULL,'2020-11-06 14:14:08',0),(239,11,11,0,10.88,'Clouds',NULL,'2020-11-06 14:54:20',15),(240,11,0,13,10.69,'Clouds',NULL,'2020-11-06 15:14:14',0),(241,10,10,12,9.81,'Clouds',NULL,'2020-11-06 15:54:21',0),(242,9,9,11,9.62,'Clouds',NULL,'2020-11-06 16:14:28',12),(243,8,0,0,8.54,'Clear',NULL,'2020-11-06 16:54:08',0),(244,7,0,0,8.36,'Clear',NULL,'2020-11-06 17:14:07',0),(245,7,0,0,7.15,'Clear',NULL,'2020-11-06 17:54:14',10),(246,7,7,10,6.96,'Clear',NULL,'2020-11-06 18:14:23',0),(247,7,7,0,6.77,'Clear',NULL,'2020-11-06 18:54:20',10),(248,7,0,0,6.58,'Clear',NULL,'2020-11-06 19:14:07',0),(249,7,7,9,5.66,'Haze',NULL,'2020-11-06 19:54:28',9),(250,7,7,0,5.86,'Haze',NULL,'2020-11-06 20:14:22',9),(251,7,7,9,5.66,'Clear',NULL,'2020-11-06 20:54:28',9),(252,7,7,9,5.86,'Clear',NULL,'2020-11-06 21:14:29',9),(253,7,0,9,4.66,'Mist',NULL,'2020-11-06 21:54:21',9),(254,7,7,0,4.86,'Mist',NULL,'2020-11-06 22:14:24',9),(255,7,7,9,4.96,'Fog',NULL,'2020-11-06 22:54:20',0),(256,7,7,9,4.96,'Fog',NULL,'2020-11-06 23:14:22',0),(257,7,7,0,3.53,'Mist',NULL,'2020-11-06 23:54:23',9),(258,7,0,9,3.52,'Mist',NULL,'2020-11-07 00:14:23',9),(259,7,7,0,3.66,'Mist',NULL,'2020-11-07 00:54:20',9),(260,7,0,0,3.66,'Mist',NULL,'2020-11-07 01:14:15',9),(261,7,0,8,2,'Mist',NULL,'2020-11-07 01:54:23',9),(262,7,0,0,2,'Mist',NULL,'2020-11-07 02:14:13',9),(263,6,0,8,2.53,'Mist',NULL,'2020-11-07 02:54:21',9),(264,6,6,8,2.53,'Mist',NULL,'2020-11-07 03:14:29',8),(265,6,6,8,3.93,'Fog',NULL,'2020-11-07 03:54:21',0),(266,6,0,8,3.93,'Fog',NULL,'2020-11-07 04:14:21',8),(267,6,6,8,2.93,'Mist',NULL,'2020-11-07 04:57:57',8),(268,6,6,8,2.93,'Mist',NULL,'2020-11-07 05:14:30',8),(269,5,0,0,3.47,'Mist',NULL,'2020-11-07 05:54:17',8),(270,4,4,7,3.47,'Mist',NULL,'2020-11-07 06:14:28',8),(271,4,0,0,4.21,'Mist',NULL,'2020-11-07 06:54:09',0),(272,4,0,7,4.41,'Mist',NULL,'2020-11-07 07:14:21',7),(273,4,4,0,4.25,'Mist',NULL,'2020-11-07 07:54:15',0),(274,4,4,0,4.26,'Mist',NULL,'2020-11-07 08:14:16',0),(275,6,5,0,5.07,'Fog',NULL,'2020-11-07 08:54:16',0),(276,8,7,8,5.46,'Fog',NULL,'2020-11-07 09:14:23',0),(277,10,10,10,7.51,'Mist',NULL,'2020-11-07 09:54:28',11),(278,11,0,0,7.78,'Mist',NULL,'2020-11-07 10:14:07',0),(279,19,0,0,10.38,'Clouds',NULL,'2020-11-07 10:54:07',0),(280,21,20,0,10.56,'Clouds',NULL,'2020-11-07 11:14:14',0),(281,22,0,14,10,'Clouds',NULL,'2020-11-07 11:54:12',0),(282,21,21,0,10,'Clouds',NULL,'2020-11-07 12:14:13',0),(283,15,16,0,10.48,'Clear',NULL,'2020-11-07 12:54:22',14),(284,16,16,13,11.07,'Clear',NULL,'2020-11-07 13:14:24',0),(285,16,0,0,10.19,'Clear',NULL,'2020-11-07 13:54:10',0),(286,15,0,0,10.19,'Clear',NULL,'2020-11-07 14:14:07',0),(287,12,0,0,10,'Clouds',NULL,'2020-11-07 14:54:10',0),(288,12,0,0,10,'Clouds',NULL,'2020-11-07 15:14:11',0),(289,11,0,0,9.49,'Clouds',NULL,'2020-11-07 15:54:08',0),(290,10,0,11,9.3,'Clouds',NULL,'2020-11-07 16:14:15',0),(291,9,9,0,9.11,'Clouds',NULL,'2020-11-07 16:54:17',0),(292,8,8,0,9.11,'Clouds',NULL,'2020-11-07 17:14:15',0),(293,8,0,0,9.11,'Clouds',NULL,'2020-11-07 17:54:10',0),(294,8,0,0,9.11,'Clouds',NULL,'2020-11-07 18:14:08',0),(295,9,0,12,9.11,'Rain',NULL,'2020-11-07 18:54:14',0),(296,9,9,0,9.3,'Rain',NULL,'2020-11-07 19:14:15',0),(297,9,9,0,9.49,'Clouds',NULL,'2020-11-07 19:54:14',0),(298,9,9,0,9.49,'Clouds',NULL,'2020-11-07 20:14:17',0),(299,9,9,0,9.49,'Clouds',NULL,'2020-11-07 20:54:14',0),(300,9,9,0,9.49,'Clouds',NULL,'2020-11-07 21:14:24',15),(301,9,0,13,9.49,'Clouds',NULL,'2020-11-07 21:54:17',0),(302,9,0,12,9.49,'Clouds',NULL,'2020-11-07 22:14:17',0),(303,8,0,12,9.49,'Clouds',NULL,'2020-11-07 22:54:22',0),(304,9,0,0,9.49,'Clouds',NULL,'2020-11-07 23:14:13',11),(305,9,9,11,9.69,'Clouds',NULL,'2020-11-07 23:54:30',11),(306,9,9,11,9.68,'Clouds',NULL,'2020-11-08 00:14:28',11),(307,9,0,11,10.19,'Clouds',NULL,'2020-11-08 00:54:24',11),(308,10,0,0,10.38,'Clouds',NULL,'2020-11-08 01:14:13',11),(309,10,10,0,10.38,'Clouds',NULL,'2020-11-08 01:54:16',0),(310,10,10,0,10.38,'Clouds',NULL,'2020-11-08 02:14:20',11),(311,10,0,0,10.38,'Clouds',NULL,'2020-11-08 02:54:14',11),(312,10,0,11,10.38,'Clouds',NULL,'2020-11-08 03:14:16',0),(313,10,0,11,10.76,'Clouds',NULL,'2020-11-08 03:54:20',11),(314,10,0,11,10.76,'Clouds',NULL,'2020-11-08 04:14:21',11),(315,10,0,11,11.27,'Clouds',NULL,'2020-11-08 04:54:15',0),(316,10,0,0,11.26,'Clouds',NULL,'2020-11-08 05:14:07',0),(317,10,10,0,11.27,'Haze',NULL,'2020-11-08 05:54:14',0),(318,10,0,11,11.26,'Haze',NULL,'2020-11-08 06:14:15',0),(319,10,0,11,11.27,'Rain',NULL,'2020-11-08 06:54:15',0),(320,10,10,0,11.26,'Rain',NULL,'2020-11-08 07:14:21',11),(321,10,10,0,11.27,'Rain Drizzle',NULL,'2020-11-08 07:54:21',11),(322,10,10,11,11.07,'Rain Drizzle',NULL,'2020-11-08 08:14:23',0),(323,11,11,11,11.08,'Clouds',NULL,'2020-11-08 08:54:31',11),(324,11,0,11,11.07,'Clouds',NULL,'2020-11-08 09:14:21',11),(325,11,0,0,11.08,'Clouds',NULL,'2020-11-08 09:54:14',12),(326,11,0,11,11.07,'Clouds',NULL,'2020-11-08 10:14:22',12),(327,13,0,0,11.27,'Clouds',NULL,'2020-11-08 10:54:08',0),(328,13,13,16,11.26,'Clouds',NULL,'2020-11-08 11:14:21',0),(329,13,0,0,11.46,'Mist',NULL,'2020-11-08 11:54:16',19),(330,13,13,15,11.84,'Mist',NULL,'2020-11-08 12:14:22',0),(331,13,0,0,12.15,'Mist',NULL,'2020-11-08 12:54:07',0),(332,13,0,0,12.15,'Mist',NULL,'2020-11-08 13:14:15',18),(333,14,0,16,12.84,'Drizzle',NULL,'2020-11-08 13:54:21',18),(334,14,14,16,12.84,'Drizzle',NULL,'2020-11-08 14:14:29',18),(335,13,13,0,12.84,'Clouds',NULL,'2020-11-08 14:54:15',0),(336,13,0,0,12.65,'Clouds',NULL,'2020-11-08 15:14:07',0),(337,12,0,0,12.65,'Clouds',NULL,'2020-11-08 15:54:05',0),(338,12,12,0,12.47,'Clouds',NULL,'2020-11-08 16:14:16',0),(339,12,12,0,12.47,'Clouds',NULL,'2020-11-08 16:54:16',0),(340,12,0,0,12.47,'Clouds',NULL,'2020-11-08 17:14:07',0),(341,11,0,0,12.34,'Clouds',NULL,'2020-11-08 17:54:05',0),(342,11,0,0,12.15,'Clouds',NULL,'2020-11-08 18:14:15',13),(343,11,0,0,11.96,'Clouds',NULL,'2020-11-08 18:54:06',0),(344,11,11,0,11.96,'Clouds',NULL,'2020-11-08 19:16:27',0),(345,11,0,0,11.58,'Clouds',NULL,'2020-11-08 19:54:08',0),(346,11,0,0,11.77,'Clouds',NULL,'2020-11-08 20:14:06',0),(347,11,0,0,11.77,'Clouds',NULL,'2020-11-08 20:54:08',0),(348,11,11,12,11.78,'Clouds',NULL,'2020-11-08 21:14:28',12),(349,11,10,0,11.96,'Clouds',NULL,'2020-11-08 21:54:14',0),(350,11,10,0,11.96,'Clouds',NULL,'2020-11-08 22:14:16',0),(351,11,0,0,11.77,'Clouds',NULL,'2020-11-08 22:54:10',0),(352,11,11,0,11.78,'Clouds',NULL,'2020-11-08 23:14:15',0),(353,11,0,0,11.08,'Clouds',NULL,'2020-11-08 23:54:15',12),(354,11,0,0,11.07,'Clouds',NULL,'2020-11-09 00:14:08',0),(355,11,0,0,10.77,'Clouds',NULL,'2020-11-09 00:54:13',12),(356,11,11,0,10.57,'Clouds',NULL,'2020-11-09 01:14:22',12),(357,11,0,0,11.08,'Clouds',NULL,'2020-11-09 01:54:06',0),(358,11,0,0,11.27,'Clouds',NULL,'2020-11-09 02:14:15',12),(359,11,0,0,11.96,'Clouds',NULL,'2020-11-09 02:54:06',0),(360,11,11,12,11.96,'Clouds',NULL,'2020-11-09 03:14:28',12),(361,11,0,0,11.96,'Clouds',NULL,'2020-11-09 03:54:15',12),(362,11,0,12,11.96,'Clouds',NULL,'2020-11-09 04:14:14',0),(363,11,0,0,11.96,'Clouds',NULL,'2020-11-09 04:54:09',0),(364,11,0,12,11.96,'Clouds',NULL,'2020-11-09 05:14:22',12),(365,11,0,12,11.65,'Mist',NULL,'2020-11-09 05:54:20',12),(366,11,11,12,11.64,'Mist',NULL,'2020-11-09 06:14:28',11),(367,11,11,12,11.46,'Clouds',NULL,'2020-11-09 06:54:30',11),(368,11,0,0,11.46,'Clouds',NULL,'2020-11-09 07:14:07',0),(369,11,11,12,11.65,'Clouds',NULL,'2020-11-09 07:54:27',11),(370,11,11,12,11.64,'Clouds',NULL,'2020-11-09 08:14:31',11),(371,12,0,12,11.45,'Clouds',NULL,'2020-11-09 08:54:21',12),(372,13,0,0,11.45,'Clouds',NULL,'2020-11-09 09:14:11',0),(373,14,0,0,11.65,'Drizzle',NULL,'2020-11-09 09:54:09',0),(374,15,0,0,11.64,'Drizzle',NULL,'2020-11-09 10:14:06',0),(375,15,0,0,11.96,'Clouds',NULL,'2020-11-09 10:54:06',0),(376,15,0,0,12.34,'Clouds',NULL,'2020-11-09 11:14:08',0),(377,15,15,24,12.34,'Clouds',NULL,'2020-11-09 11:54:30',24),(378,16,15,22,12.52,'Clouds',NULL,'2020-11-09 12:14:28',23),(379,15,0,0,12.84,'Clouds',NULL,'2020-11-09 12:54:14',18),(380,15,0,0,12.84,'Clouds',NULL,'2020-11-09 13:14:08',0),(381,14,0,0,12.66,'Clouds',NULL,'2020-11-09 13:54:15',16),(382,14,0,0,12.66,'Clouds',NULL,'2020-11-09 14:14:15',17),(383,14,0,0,12.34,'Clouds',NULL,'2020-11-09 14:54:17',18),(384,14,14,0,12.34,'Clouds',NULL,'2020-11-09 15:14:22',18),(385,13,13,17,12.34,'Clouds',NULL,'2020-11-09 15:54:28',18),(386,13,0,0,12.34,'Clouds',NULL,'2020-11-09 16:14:07',0),(387,12,12,17,12.15,'Clouds',NULL,'2020-11-09 16:54:20',0),(388,12,12,17,12.15,'Clouds',NULL,'2020-11-09 17:14:29',17),(389,12,0,16,12.15,'Clouds',NULL,'2020-11-09 17:54:22',17),(390,12,0,16,12.15,'Clouds',NULL,'2020-11-09 18:14:22',16),(391,12,0,0,12.15,'Clouds',NULL,'2020-11-09 18:54:06',0),(392,12,0,0,12.15,'Clouds',NULL,'2020-11-09 19:14:09',0),(393,11,0,0,12.15,'Clouds',NULL,'2020-11-09 19:54:14',13),(394,11,0,0,12.15,'Clouds',NULL,'2020-11-09 20:14:14',13),(395,11,11,0,12.15,'Mist',NULL,'2020-11-09 20:54:16',0),(396,11,11,13,12.15,'Mist',NULL,'2020-11-09 21:14:31',13),(397,12,11,0,11.96,'Clouds',NULL,'2020-11-09 21:54:22',13),(398,12,0,0,11.96,'Clouds',NULL,'2020-11-09 22:14:06',0),(399,12,0,13,12.15,'Clouds',NULL,'2020-11-09 22:54:22',13),(400,12,0,13,11.96,'Clouds',NULL,'2020-11-09 23:14:20',13),(401,12,11,13,11.96,'Clouds',NULL,'2020-11-09 23:54:20',0),(402,12,11,13,11.96,'Clouds',NULL,'2020-11-10 00:14:23',0),(403,11,11,0,12.34,'Clear',NULL,'2020-11-10 00:54:21',12),(404,11,0,12,12.34,'Clear',NULL,'2020-11-10 01:14:14',0),(405,11,11,0,12.34,'Mist',NULL,'2020-11-10 01:54:24',12),(406,11,0,12,12.34,'Mist',NULL,'2020-11-10 02:14:22',12),(407,11,11,12,12.15,'Mist',NULL,'2020-11-10 02:54:28',12),(408,11,0,12,12.15,'Mist',NULL,'2020-11-10 03:14:21',12),(409,11,0,0,12.15,'Mist',NULL,'2020-11-10 03:54:16',12),(410,10,0,12,11.96,'Mist',NULL,'2020-11-10 04:14:17',0),(411,9,0,11,11.96,'Mist',NULL,'2020-11-10 04:54:15',0),(412,9,0,11,11.96,'Mist',NULL,'2020-11-10 05:14:21',11),(413,10,0,11,11.96,'Mist',NULL,'2020-11-10 05:54:19',11),(414,11,0,11,11.77,'Mist',NULL,'2020-11-10 06:14:21',11),(415,11,0,12,11.45,'Clouds',NULL,'2020-11-10 06:54:20',12),(416,11,11,12,11.64,'Clouds',NULL,'2020-11-10 07:14:21',0),(417,11,0,12,11.45,'Clouds',NULL,'2020-11-10 07:54:14',0),(418,11,0,0,11.26,'Clouds',NULL,'2020-11-10 08:14:10',0),(419,12,11,12,11.77,'Clouds',NULL,'2020-11-10 08:54:29',12),(420,12,0,0,11.96,'Clouds',NULL,'2020-11-10 09:14:07',0),(421,14,0,0,11.77,'Clouds',NULL,'2020-11-10 09:54:09',0),(422,14,0,14,11.96,'Rain',NULL,'2020-11-10 10:14:22',15),(423,14,14,0,11.96,'Clouds',NULL,'2020-11-10 10:54:13',0),(424,15,0,20,11.77,'Rain',NULL,'2020-11-10 11:14:20',19),(425,17,17,0,12.15,'Clouds',NULL,'2020-11-10 11:54:15',0),(426,16,16,17,12.15,'Clouds',NULL,'2020-11-10 12:14:21',0),(427,16,0,0,12.15,'Clouds',NULL,'2020-11-10 12:54:10',0),(428,16,0,18,12.15,'Clouds',NULL,'2020-11-10 13:14:21',18),(429,16,16,19,12.15,'Clouds',NULL,'2020-11-10 13:54:21',0),(430,15,0,18,12.53,'Clouds',NULL,'2020-11-10 14:14:20',18),(431,14,0,0,11.96,'Clouds',NULL,'2020-11-10 14:54:06',0),(432,13,0,0,11.96,'Clouds',NULL,'2020-11-10 15:14:07',0),(433,12,12,0,11.58,'Clouds',NULL,'2020-11-10 15:54:25',14),(434,11,11,14,11.58,'Clouds',NULL,'2020-11-10 16:14:29',14),(435,11,0,15,11.08,'Clouds',NULL,'2020-11-10 16:54:12',0),(436,10,0,0,10.89,'Clouds',NULL,'2020-11-10 17:14:13',15),(437,10,0,14,10.51,'Clouds',NULL,'2020-11-10 17:54:12',0),(438,10,0,0,10.5,'Clouds',NULL,'2020-11-10 18:14:15',14),(439,10,0,0,10.19,'Clouds',NULL,'2020-11-10 18:54:09',0),(440,10,10,0,10.38,'Clouds',NULL,'2020-11-10 19:14:24',15),(441,10,0,14,10.7,'Clouds',NULL,'2020-11-10 19:54:23',14),(442,10,0,13,10.7,'Clouds',NULL,'2020-11-10 20:14:22',14),(443,10,10,0,11.08,'Clouds',NULL,'2020-11-10 20:54:22',13),(444,11,0,13,11.08,'Clouds',NULL,'2020-11-10 21:14:22',13),(445,11,0,12,11.08,'Clouds',NULL,'2020-11-10 21:54:25',12),(446,11,10,0,11.07,'Clouds',NULL,'2020-11-10 22:14:22',12),(447,10,10,0,11.27,'Clouds',NULL,'2020-11-10 22:54:14',0),(448,11,10,12,11.26,'Clouds',NULL,'2020-11-10 23:14:31',12),(449,11,11,12,11.77,'Clouds',NULL,'2020-11-10 23:54:27',12),(450,11,11,12,11.78,'Clouds',NULL,'2020-11-11 00:14:23',0),(451,11,11,0,11.77,'Rain',NULL,'2020-11-11 00:54:13',0),(452,11,11,12,11.78,'Rain',NULL,'2020-11-11 01:14:30',12),(453,11,0,12,11.77,'Rain',NULL,'2020-11-11 01:54:21',12),(454,11,11,12,11.78,'Rain',NULL,'2020-11-11 02:14:21',0),(455,11,11,12,11.96,'Rain',NULL,'2020-11-11 02:54:28',12),(456,11,0,12,11.96,'Rain',NULL,'2020-11-11 03:14:20',12),(457,11,0,0,12.15,'Rain',NULL,'2020-11-11 03:54:16',12),(458,11,0,12,12.34,'Rain',NULL,'2020-11-11 04:14:24',12),(459,11,11,12,12.34,'Rain',NULL,'2020-11-11 04:54:30',12),(460,11,11,12,12.34,'Rain',NULL,'2020-11-11 05:14:22',0),(461,11,11,12,12.66,'Rain',NULL,'2020-11-11 05:54:21',0),(462,11,11,12,12.66,'Rain',NULL,'2020-11-11 06:14:28',12),(463,11,11,12,12.66,'Rain',NULL,'2020-11-11 06:54:23',0),(464,11,11,0,12.66,'Rain',NULL,'2020-11-11 07:14:16',0),(465,11,11,12,12.66,'Rain',NULL,'2020-11-11 07:54:24',0),(466,11,0,12,12.66,'Clouds',NULL,'2020-11-11 08:14:14',0),(467,11,0,0,12.66,'Clouds',NULL,'2020-11-11 08:54:07',0),(468,12,0,0,12.66,'Rain',NULL,'2020-11-11 09:14:11',0),(469,12,0,14,12.66,'Clouds',NULL,'2020-11-11 09:54:22',14),(470,13,13,0,13.04,'Rain',NULL,'2020-11-11 10:14:21',14),(471,13,0,13,12.84,'Clouds',NULL,'2020-11-11 10:54:20',14),(472,13,13,0,12.84,'Rain',NULL,'2020-11-11 11:14:21',13),(473,13,0,0,12.66,'Rain',NULL,'2020-11-11 11:54:17',15),(474,13,0,0,12.84,'Rain',NULL,'2020-11-11 12:14:17',16),(475,13,0,0,12.66,'Clouds',NULL,'2020-11-11 12:54:14',16),(476,13,0,0,12.66,'Clouds',NULL,'2020-11-11 13:14:06',0),(477,13,13,0,12.66,'Clouds',NULL,'2020-11-11 13:54:13',0),(478,13,0,14,12.66,'Clouds',NULL,'2020-11-11 14:14:16',0),(479,12,0,0,12.66,'Rain',NULL,'2020-11-11 14:54:08',0),(480,12,0,13,12.66,'Rain',NULL,'2020-11-11 15:14:22',13),(481,12,12,13,12.66,'Rain',NULL,'2020-11-11 15:54:23',0),(482,12,12,13,12.66,'Rain',NULL,'2020-11-11 16:14:30',13),(483,11,11,12,11.96,'Rain',NULL,'2020-11-11 16:54:20',0),(484,11,0,0,12.15,'Rain',NULL,'2020-11-11 17:14:08',0),(485,11,0,12,11.96,'Rain',NULL,'2020-11-11 17:54:21',12),(486,11,11,12,11.96,'Rain',NULL,'2020-11-11 18:14:28',12),(487,11,0,12,11.96,'Rain',NULL,'2020-11-11 18:54:20',12),(488,11,11,12,11.96,'Rain',NULL,'2020-11-11 19:14:22',0),(489,11,11,0,11.96,'Rain',NULL,'2020-11-11 19:54:20',12),(490,11,11,12,11.58,'Rain',NULL,'2020-11-11 20:14:28',12),(491,11,11,12,11.39,'Rain',NULL,'2020-11-11 20:54:27',12),(492,11,0,12,11.19,'Rain',NULL,'2020-11-11 21:14:20',12),(493,10,10,0,10.5,'Clouds',NULL,'2020-11-11 21:54:23',11),(494,10,9,11,10.5,'Clouds',NULL,'2020-11-11 22:14:28',11),(495,8,8,11,10.19,'Clouds',NULL,'2020-11-11 22:54:29',11),(496,8,0,0,10,'Rain',NULL,'2020-11-11 23:14:13',11),(497,9,0,11,10,'Clouds',NULL,'2020-11-11 23:54:20',11),(498,9,9,0,9.62,'Clouds',NULL,'2020-11-12 00:14:21',11),(499,8,0,10,8.92,'Clouds',NULL,'2020-11-12 00:54:18',0),(500,8,0,0,8.93,'Clouds',NULL,'2020-11-12 01:14:15',10),(501,7,0,10,8.54,'Clouds',NULL,'2020-11-12 01:54:22',10),(502,7,7,0,8.54,'Clouds',NULL,'2020-11-12 02:14:23',10),(503,6,6,9,7.85,'Clouds',NULL,'2020-11-12 02:54:24',0),(504,6,6,0,7.85,'Clouds',NULL,'2020-11-12 03:14:22',9),(505,5,0,0,7.66,'Clouds',NULL,'2020-11-12 03:54:13',9),(506,5,5,0,7.66,'Clouds',NULL,'2020-11-12 04:14:14',0),(507,5,5,0,7.15,'Clouds',NULL,'2020-11-12 04:54:24',8),(508,5,5,0,6.96,'Clouds',NULL,'2020-11-12 05:14:22',8),(509,5,5,8,6.96,'Clouds',NULL,'2020-11-12 05:54:20',0),(510,5,5,0,6.96,'Clouds',NULL,'2020-11-12 06:14:20',8),(511,5,5,0,6.27,'Clouds',NULL,'2020-11-12 06:54:17',0),(512,5,0,8,6.26,'Clouds',NULL,'2020-11-12 07:14:22',8),(513,6,6,0,6.27,'Clouds',NULL,'2020-11-12 07:54:20',10),(514,6,0,10,6.26,'Clouds',NULL,'2020-11-12 08:14:22',10),(515,8,7,0,6.96,'Clouds',NULL,'2020-11-12 08:54:22',10),(516,9,8,0,7.34,'Clouds',NULL,'2020-11-12 09:14:15',0),(517,10,10,11,8.04,'Clouds',NULL,'2020-11-12 09:54:30',11),(518,11,11,12,8.22,'Clouds',NULL,'2020-11-12 10:14:29',12),(519,13,0,0,9.68,'Clouds',NULL,'2020-11-12 10:54:12',13),(520,16,15,0,9.52,'Clouds',NULL,'2020-11-12 11:14:21',13),(521,17,0,13,10.29,'Clouds',NULL,'2020-11-12 11:54:12',0),(522,17,0,0,10.29,'Clouds',NULL,'2020-11-12 12:14:14',13),(523,15,0,14,11.06,'Clouds',NULL,'2020-11-12 12:54:20',14),(524,14,14,0,11.06,'Clouds',NULL,'2020-11-12 13:14:21',14),(525,13,13,14,11.27,'Clouds',NULL,'2020-11-12 13:54:29',14),(526,13,0,0,11.08,'Clouds',NULL,'2020-11-12 14:14:06',0),(527,12,12,13,11.08,'Clouds',NULL,'2020-11-12 14:54:21',0),(528,12,0,13,11.08,'Clouds',NULL,'2020-11-12 15:14:22',13),(529,12,0,12,11.08,'Clouds',NULL,'2020-11-12 15:54:23',12),(530,11,0,12,11.07,'Clouds',NULL,'2020-11-12 16:14:21',12),(531,11,11,11,11.27,'Clouds',NULL,'2020-11-12 16:54:27',11),(532,11,0,11,11.26,'Clouds',NULL,'2020-11-12 17:14:21',11),(533,11,0,11,11.58,'Clouds',NULL,'2020-11-12 17:54:13',0),(534,10,10,11,11.58,'Clouds',NULL,'2020-11-12 18:14:29',11),(535,11,0,11,11.46,'Clouds',NULL,'2020-11-12 18:54:16',0),(536,11,11,11,11.46,'Clouds',NULL,'2020-11-12 19:14:28',11),(537,11,0,11,11.96,'Clouds',NULL,'2020-11-12 19:54:22',11),(538,11,11,0,11.96,'Clouds',NULL,'2020-11-12 20:14:24',11),(539,11,0,11,11.65,'Clouds',NULL,'2020-11-12 20:54:22',11),(540,11,0,0,11.65,'Clouds',NULL,'2020-11-12 21:14:13',11),(541,11,0,0,11.96,'Clouds',NULL,'2020-11-12 21:54:13',11),(542,11,0,11,11.96,'Clouds',NULL,'2020-11-12 22:14:22',11),(543,11,11,0,11.77,'Clouds',NULL,'2020-11-12 22:54:13',0),(544,11,11,0,11.77,'Rain',NULL,'2020-11-12 23:14:20',11),(545,11,11,0,10.89,'Rain',NULL,'2020-11-12 23:54:24',11),(546,11,11,11,10.89,'Rain',NULL,'2020-11-13 00:14:21',0),(547,10,0,11,9.62,'Rain',NULL,'2020-11-13 00:54:22',11),(548,9,9,11,9.43,'Rain',NULL,'2020-11-13 01:14:29',11),(549,9,9,10,8.54,'Rain',NULL,'2020-11-13 01:54:28',10),(550,8,0,0,8.54,'Rain',NULL,'2020-11-13 02:14:15',10),(551,8,0,10,7.85,'Clouds',NULL,'2020-11-13 02:54:13',0),(552,7,7,9,7.66,'Rain',NULL,'2020-11-13 03:14:28',9),(553,7,7,9,7.66,'Clouds',NULL,'2020-11-13 03:54:23',0),(554,7,7,9,7.47,'Clouds',NULL,'2020-11-13 04:14:29',9),(555,6,6,9,6.96,'Clouds',NULL,'2020-11-13 04:54:30',9),(556,6,6,8,6.78,'Clouds',NULL,'2020-11-13 05:14:32',8),(557,5,5,8,6.77,'Clouds',NULL,'2020-11-13 05:54:23',0),(558,5,5,8,6.39,'Clouds',NULL,'2020-11-13 06:14:25',0),(559,5,5,0,6.08,'Clear',NULL,'2020-11-13 06:54:20',7),(560,5,5,7,6.07,'Clear',NULL,'2020-11-13 07:14:29',7),(561,5,5,7,6.08,'Clear',NULL,'2020-11-13 07:54:28',7),(562,5,5,0,6.07,'Clear',NULL,'2020-11-13 08:14:21',7),(563,7,7,9,6.08,'Clear',NULL,'2020-11-13 08:54:29',9),(564,8,8,0,6.26,'Clear',NULL,'2020-11-13 09:14:20',10),(565,10,9,0,6.27,'Clouds',NULL,'2020-11-13 09:54:21',13),(566,10,0,13,6.83,'Clouds',NULL,'2020-11-13 10:14:23',13),(567,11,11,13,8.1,'Clouds',NULL,'2020-11-13 10:54:29',14),(568,14,13,0,7.7,'Clouds',NULL,'2020-11-13 11:14:20',13),(569,15,15,11,8.99,'Clouds',NULL,'2020-11-13 11:54:28',11),(570,15,14,11,9.18,'Clouds',NULL,'2020-11-13 12:14:31',11),(571,11,11,0,9.87,'Clear',NULL,'2020-11-13 12:54:22',19),(572,11,0,0,9.49,'Clear',NULL,'2020-11-13 13:14:08',0),(573,10,0,0,9.3,'Clouds',NULL,'2020-11-13 13:54:12',18),(574,11,0,0,9.11,'Clouds',NULL,'2020-11-13 14:14:07',0),(575,11,10,14,9.11,'Clouds',NULL,'2020-11-13 14:54:25',0),(576,10,10,0,9.11,'Clouds',NULL,'2020-11-13 15:14:23',14),(577,9,9,12,8.92,'Clouds',NULL,'2020-11-13 15:54:22',0),(578,8,8,0,8.92,'Clouds',NULL,'2020-11-13 16:14:23',12),(579,8,0,11,8.73,'Clouds',NULL,'2020-11-13 16:54:22',11),(580,8,8,10,8.54,'Clouds',NULL,'2020-11-13 17:14:28',10),(581,8,7,10,8.04,'Clouds',NULL,'2020-11-13 17:54:22',0),(582,8,0,0,8.04,'Clouds',NULL,'2020-11-13 18:14:14',10),(583,8,8,9,8.04,'Clouds',NULL,'2020-11-13 18:54:28',9),(584,8,8,9,8.04,'Clouds',NULL,'2020-11-13 19:14:29',9),(585,8,8,11,8.36,'Clouds',NULL,'2020-11-13 19:54:29',11),(586,8,8,12,8.37,'Clouds',NULL,'2020-11-13 20:14:31',12),(587,8,8,11,8.36,'Clouds',NULL,'2020-11-13 20:54:29',12),(588,8,8,0,8.65,'Clouds',NULL,'2020-11-13 21:14:22',11),(589,8,0,10,8.92,'Clouds',NULL,'2020-11-13 21:54:20',10),(590,9,0,0,8.92,'Clouds',NULL,'2020-11-13 22:14:15',10),(591,9,0,10,9.11,'Clouds',NULL,'2020-11-13 22:54:23',10),(592,9,8,10,9.11,'Clouds',NULL,'2020-11-13 23:14:27',10),(593,8,8,10,8.92,'Clouds',NULL,'2020-11-13 23:54:27',10),(594,8,8,10,8.93,'Clouds',NULL,'2020-11-14 00:14:27',10),(595,9,8,0,8.73,'Rain',NULL,'2020-11-14 00:54:22',10),(596,9,8,0,8.73,'Rain',NULL,'2020-11-14 01:14:21',10),(597,9,8,10,8.92,'Rain',NULL,'2020-11-14 01:54:26',10),(598,9,0,10,8.93,'Clouds',NULL,'2020-11-14 02:14:14',0),(599,9,8,0,8.92,'Rain',NULL,'2020-11-14 02:54:21',10),(600,9,9,10,8.92,'Rain',NULL,'2020-11-14 03:14:28',10),(601,9,9,10,8.92,'Clouds',NULL,'2020-11-14 03:54:29',10),(602,9,9,10,8.92,'Rain',NULL,'2020-11-14 04:14:22',0),(603,9,9,10,9.11,'Rain',NULL,'2020-11-14 04:54:29',10),(604,9,9,10,9.3,'Rain',NULL,'2020-11-14 05:14:28',10),(605,9,9,10,9.3,'Rain',NULL,'2020-11-14 05:54:27',10),(606,9,9,10,9.11,'Rain',NULL,'2020-11-14 06:14:21',0),(607,9,0,10,9.11,'Rain',NULL,'2020-11-14 06:54:23',10),(608,9,0,10,9.11,'Rain',NULL,'2020-11-14 07:14:13',0),(609,9,9,10,9.3,'Clouds',NULL,'2020-11-14 07:54:23',0),(610,9,0,10,9.3,'Rain',NULL,'2020-11-14 08:14:21',10),(611,10,10,10,9.69,'Clouds',NULL,'2020-11-14 08:54:31',10),(612,10,10,0,9.68,'Clouds',NULL,'2020-11-14 09:14:15',0),(613,11,11,0,10.19,'Clouds',NULL,'2020-11-14 09:54:13',0),(614,11,0,16,10.19,'Rain',NULL,'2020-11-14 10:14:21',15),(615,12,11,13,10.89,'Clouds',NULL,'2020-11-14 10:54:21',0),(616,12,12,13,10.89,'Rain',NULL,'2020-11-14 11:14:29',13),(617,13,13,0,11.27,'Clouds',NULL,'2020-11-14 11:54:14',0),(618,14,13,0,11.46,'Rain',NULL,'2020-11-14 12:14:22',14),(619,13,0,13,11.96,'Clouds',NULL,'2020-11-14 12:54:21',14),(620,13,0,13,11.96,'Rain',NULL,'2020-11-14 13:14:23',13),(621,12,12,12,11.58,'Rain',NULL,'2020-11-14 13:54:29',12),(622,13,12,12,11.58,'Rain',NULL,'2020-11-14 14:14:22',0),(623,12,12,12,11.77,'Rain',NULL,'2020-11-14 14:54:27',12),(624,12,0,13,11.96,'Rain',NULL,'2020-11-14 15:14:15',0),(625,12,0,15,11.96,'Clouds',NULL,'2020-11-14 15:54:22',15),(626,12,12,15,11.96,'Rain',NULL,'2020-11-14 16:14:22',0),(627,11,10,15,11.96,'Clouds',NULL,'2020-11-14 16:54:29',15),(628,11,10,0,11.96,'Clouds',NULL,'2020-11-14 17:14:15',0),(629,11,10,13,11.58,'Clouds',NULL,'2020-11-14 17:54:29',13),(630,10,0,13,11.39,'Clouds',NULL,'2020-11-14 18:14:23',13),(631,11,0,0,10.89,'Clouds',NULL,'2020-11-14 18:54:15',12),(632,11,0,12,10.89,'Rain',NULL,'2020-11-14 19:14:21',12),(633,10,0,0,10.89,'Clouds',NULL,'2020-11-14 19:54:13',12),(634,10,0,11,10.89,'Rain',NULL,'2020-11-14 20:14:24',11),(635,10,10,0,10.7,'Rain',NULL,'2020-11-14 20:54:22',11),(636,10,10,0,10.51,'Rain',NULL,'2020-11-14 21:14:23',11),(637,10,10,0,10.19,'Clouds',NULL,'2020-11-14 21:54:19',11),(638,10,10,11,10.19,'Clouds',NULL,'2020-11-14 22:14:31',11),(639,10,10,0,10,'Clouds',NULL,'2020-11-14 22:54:14',0),(640,10,10,11,10,'Clouds',NULL,'2020-11-14 23:14:23',0),(641,9,9,11,10,'Clouds',NULL,'2020-11-14 23:54:29',11),(642,9,9,0,10,'Clouds',NULL,'2020-11-15 00:14:20',11),(643,10,0,0,9.81,'Clouds',NULL,'2020-11-15 00:54:05',0),(644,9,9,0,9.81,'Clouds',NULL,'2020-11-15 01:14:14',0),(645,9,9,0,10,'Clouds',NULL,'2020-11-15 01:54:22',10),(646,10,0,10,10,'Clouds',NULL,'2020-11-15 02:14:20',10),(647,10,0,11,10.7,'Clouds',NULL,'2020-11-15 02:54:21',11),(648,10,0,0,10.5,'Clouds',NULL,'2020-11-15 03:14:13',11),(649,9,0,10,10.38,'Clouds',NULL,'2020-11-15 03:54:23',10),(650,9,9,0,10.38,'Rain',NULL,'2020-11-15 04:14:20',10),(651,10,10,0,10.51,'Clouds',NULL,'2020-11-15 04:54:23',10),(652,10,10,10,10.51,'Rain',NULL,'2020-11-15 05:14:28',10),(653,9,0,10,10,'Clouds',NULL,'2020-11-15 05:54:13',0),(654,10,9,10,10,'Rain',NULL,'2020-11-15 06:14:28',10),(655,9,9,0,10,'Rain',NULL,'2020-11-15 06:54:22',10),(656,9,0,10,10,'Rain',NULL,'2020-11-15 07:14:21',10),(657,9,9,10,10,'Rain',NULL,'2020-11-15 07:54:19',0),(658,9,9,10,10,'Rain',NULL,'2020-11-15 08:14:21',0),(659,9,9,12,9.81,'Clouds',NULL,'2020-11-15 08:54:21',0),(660,9,9,16,9.62,'Rain',NULL,'2020-11-15 09:14:30',15),(661,9,9,0,9.3,'Rain',NULL,'2020-11-15 09:54:20',13),(662,9,9,0,9.11,'Rain',NULL,'2020-11-15 10:14:16',0),(663,8,8,11,8.04,'Rain',NULL,'2020-11-15 10:54:28',11),(664,8,8,0,8.04,'Rain',NULL,'2020-11-15 11:14:21',13),(665,7,7,0,7.84,'Rain',NULL,'2020-11-15 11:54:15',0),(666,7,0,0,7.84,'Rain',NULL,'2020-11-15 12:14:13',13),(667,8,8,14,7.34,'Drizzle Rain',NULL,'2020-11-15 12:54:28',15),(668,7,7,0,7.53,'Rain Drizzle',NULL,'2020-11-15 13:14:22',14),(669,7,0,0,8.04,'Rain',NULL,'2020-11-15 13:54:12',13),(670,8,0,0,8.23,'Rain',NULL,'2020-11-15 14:14:14',13),(671,8,0,13,9.11,'Rain',NULL,'2020-11-15 14:54:21',14),(672,8,0,0,9.11,'Rain',NULL,'2020-11-15 15:14:10',0),(673,8,8,0,9.11,'Rain',NULL,'2020-11-15 15:54:23',14),(674,8,0,0,9.3,'Rain',NULL,'2020-11-15 16:14:07',0),(675,8,8,19,9.43,'Clouds',NULL,'2020-11-15 16:54:21',0),(676,8,8,17,9.43,'Rain',NULL,'2020-11-15 17:14:29',18),(677,7,7,15,9.11,'Clouds',NULL,'2020-11-15 17:54:24',0),(678,7,7,0,9.11,'Clouds',NULL,'2020-11-15 18:14:22',14),(679,7,7,0,9.24,'Clear',NULL,'2020-11-15 18:54:19',12),(680,7,7,0,9.24,'Clear',NULL,'2020-11-15 19:14:22',12),(681,7,6,11,8.92,'Clear',NULL,'2020-11-15 19:54:30',11),(682,7,7,0,8.92,'Clear',NULL,'2020-11-15 20:14:13',0),(683,7,7,10,9.3,'Clear',NULL,'2020-11-15 20:54:23',0),(684,8,0,0,9.3,'Clear',NULL,'2020-11-15 21:14:14',10),(685,8,0,0,10,'Clear',NULL,'2020-11-15 21:54:12',10),(686,8,0,0,10.19,'Clear',NULL,'2020-11-15 22:14:07',0),(687,8,8,10,10,'Clouds',NULL,'2020-11-15 22:54:31',10),(688,8,0,0,10,'Clouds',NULL,'2020-11-15 23:14:14',10),(689,8,0,10,10.19,'Clouds',NULL,'2020-11-15 23:54:21',10),(690,8,8,10,10.19,'Clouds',NULL,'2020-11-16 00:14:31',10),(691,9,9,0,10.31,'Rain',NULL,'2020-11-16 00:54:21',10),(692,9,9,10,10.51,'Clouds',NULL,'2020-11-16 01:14:28',10),(693,9,9,10,10,'Clouds',NULL,'2020-11-16 01:54:28',10),(694,9,0,10,10,'Clouds',NULL,'2020-11-16 02:14:20',10),(695,8,8,10,9.62,'Clouds',NULL,'2020-11-16 02:54:26',10),(696,8,8,10,9.24,'Clouds',NULL,'2020-11-16 03:14:21',0),(697,8,8,0,8.54,'Clouds',NULL,'2020-11-16 03:54:20',10),(698,7,0,10,8.54,'Clouds',NULL,'2020-11-16 04:14:14',0),(699,6,0,9,8.04,'Clouds',NULL,'2020-11-16 04:54:19',9),(700,6,6,9,8.04,'Clouds',NULL,'2020-11-16 05:14:28',9),(701,7,6,9,8.23,'Clouds',NULL,'2020-11-16 05:54:26',9),(702,7,0,9,8.04,'Clouds',NULL,'2020-11-16 06:14:22',9),(703,6,6,0,7.34,'Clouds',NULL,'2020-11-16 06:54:19',9),(704,6,6,0,7.34,'Clouds',NULL,'2020-11-16 07:14:23',9),(705,6,0,10,7.34,'Clouds',NULL,'2020-11-16 07:54:21',9),(706,6,6,0,7.34,'Clouds',NULL,'2020-11-16 08:14:24',13),(707,7,7,0,7.15,'Clouds',NULL,'2020-11-16 08:54:24',11),(708,8,7,10,7.15,'Clouds',NULL,'2020-11-16 09:14:28',11),(709,9,9,11,7.34,'Clouds',NULL,'2020-11-16 09:54:30',11),(710,10,0,11,7.72,'Clouds',NULL,'2020-11-16 10:14:20',11),(711,11,11,12,8.42,'Clouds',NULL,'2020-11-16 10:54:30',12),(712,12,0,12,8.41,'Clouds',NULL,'2020-11-16 11:14:20',13),(713,12,12,13,8.8,'Clouds',NULL,'2020-11-16 11:54:28',13),(714,11,0,13,8.61,'Clouds',NULL,'2020-11-16 12:14:13',0),(715,11,0,13,9.11,'Clouds',NULL,'2020-11-16 12:54:17',0),(716,11,0,12,9.11,'Clouds',NULL,'2020-11-16 13:14:23',12),(717,10,10,12,8.92,'Clouds',NULL,'2020-11-16 13:54:30',12),(718,10,0,0,8.93,'Rain',NULL,'2020-11-16 14:14:14',12),(719,10,10,0,9.11,'Clouds',NULL,'2020-11-16 14:54:21',12),(720,10,10,13,9.11,'Rain',NULL,'2020-11-16 15:14:32',13),(721,10,0,13,9.3,'Clouds',NULL,'2020-11-16 15:54:20',14),(722,10,10,13,9.49,'Rain',NULL,'2020-11-16 16:14:29',13),(723,10,10,12,10.19,'Clouds',NULL,'2020-11-16 16:54:28',12),(724,10,10,11,10.19,'Clouds',NULL,'2020-11-16 17:14:21',0),(725,10,0,0,10.69,'Clouds',NULL,'2020-11-16 17:54:13',12),(726,10,10,13,10.69,'Clouds',NULL,'2020-11-16 18:14:32',13),(727,10,0,14,11.08,'Rain',NULL,'2020-11-16 18:54:21',14),(728,11,10,14,11.08,'Rain',NULL,'2020-11-16 19:14:30',15),(729,11,11,0,11.77,'Clouds',NULL,'2020-11-16 19:54:22',14),(730,11,11,13,12.15,'Clouds',NULL,'2020-11-16 20:14:29',13),(731,11,11,12,12.85,'Rain',NULL,'2020-11-16 20:54:30',12),(732,11,11,12,12.85,'Rain',NULL,'2020-11-16 21:14:27',12),(733,12,11,0,13.04,'Clouds',NULL,'2020-11-16 21:54:21',12),(734,12,11,0,13.23,'Rain',NULL,'2020-11-16 22:14:22',12),(735,12,0,0,13.23,'Clouds',NULL,'2020-11-16 22:54:16',12),(736,12,11,12,13.22,'Clouds',NULL,'2020-11-16 23:14:28',12),(737,12,11,12,13.23,'Clouds',NULL,'2020-11-16 23:54:30',12),(738,12,11,0,13.22,'Clouds',NULL,'2020-11-17 00:14:21',12),(739,12,12,0,13.54,'Clouds',NULL,'2020-11-17 00:54:20',12),(740,12,11,12,13.54,'Clouds',NULL,'2020-11-17 01:14:32',12),(741,12,12,12,13.23,'Clouds',NULL,'2020-11-17 01:54:30',12),(742,12,12,0,13.22,'Clouds',NULL,'2020-11-17 02:14:24',12),(743,12,12,12,13.42,'Clouds',NULL,'2020-11-17 02:54:29',12),(744,12,0,12,13.22,'Clouds',NULL,'2020-11-17 03:14:23',12),(745,12,11,0,13.23,'Clouds',NULL,'2020-11-17 03:54:24',12),(746,12,11,0,13.22,'Clouds',NULL,'2020-11-17 04:14:22',12),(747,12,11,12,13.23,'Clouds',NULL,'2020-11-17 04:54:29',12),(748,12,0,0,13.23,'Clouds',NULL,'2020-11-17 05:14:15',12),(749,11,11,12,13.22,'Clouds',NULL,'2020-11-17 05:54:27',12),(750,11,0,12,13.22,'Clouds',NULL,'2020-11-17 06:14:13',0),(751,11,0,12,13.55,'Clouds',NULL,'2020-11-17 06:54:14',0),(752,11,0,0,13.56,'Clouds',NULL,'2020-11-17 07:14:06',0),(753,11,11,12,13.47,'Clouds',NULL,'2020-11-17 07:54:28',12),(754,11,0,0,13.46,'Clouds',NULL,'2020-11-17 08:14:13',12),(755,12,12,12,13.94,'Clouds',NULL,'2020-11-17 08:54:21',0),(756,13,12,13,13.94,'Clouds',NULL,'2020-11-17 09:14:21',0),(757,14,0,13,13.94,'Clouds',NULL,'2020-11-17 09:54:15',0),(758,14,14,14,14.23,'Clouds',NULL,'2020-11-17 10:14:21',0),(759,15,14,0,14.23,'Clouds',NULL,'2020-11-17 10:54:20',14),(760,15,14,15,14.23,'Clouds',NULL,'2020-11-17 11:14:21',0),(761,16,15,16,14.23,'Clouds',NULL,'2020-11-17 11:54:31',16),(762,16,15,16,14.23,'Clouds',NULL,'2020-11-17 12:14:28',16),(763,15,15,17,14.52,'Clouds',NULL,'2020-11-17 12:54:29',18),(764,15,15,18,14.52,'Clouds',NULL,'2020-11-17 13:14:28',18),(765,16,0,0,15,'Clouds',NULL,'2020-11-17 13:54:15',19),(766,15,15,18,15.29,'Clouds',NULL,'2020-11-17 14:14:27',19),(767,15,15,17,14.71,'Clouds',NULL,'2020-11-17 14:54:31',17),(768,15,14,16,14.71,'Clouds',NULL,'2020-11-17 15:14:29',16),(769,14,0,15,14.71,'Clouds',NULL,'2020-11-17 15:54:12',0),(770,13,13,15,14.71,'Clouds',NULL,'2020-11-17 16:14:31',15),(771,13,13,0,14.9,'Clouds',NULL,'2020-11-17 16:54:22',14),(772,12,12,0,14.89,'Clouds',NULL,'2020-11-17 17:14:21',14),(773,12,12,0,14.43,'Clouds',NULL,'2020-11-17 17:54:21',15),(774,12,0,16,14.42,'Clouds',NULL,'2020-11-17 18:14:21',16),(775,12,12,16,14.42,'Clouds',NULL,'2020-11-17 18:54:27',16),(776,12,12,0,14.12,'Clouds',NULL,'2020-11-17 19:14:21',16),(777,12,12,15,14.13,'Clouds',NULL,'2020-11-17 19:54:28',15),(778,12,12,14,14.14,'Clouds',NULL,'2020-11-17 20:14:24',0),(779,12,12,14,13.92,'Clouds',NULL,'2020-11-17 20:54:27',14),(780,12,12,13,13.92,'Clouds',NULL,'2020-11-17 21:14:28',13),(781,12,0,13,13.73,'Clouds',NULL,'2020-11-17 21:54:21',13),(782,12,12,13,13.73,'Clouds',NULL,'2020-11-17 22:14:28',13),(783,12,11,13,13.35,'Clouds',NULL,'2020-11-17 22:54:28',13),(784,12,11,13,13.35,'Clouds',NULL,'2020-11-17 23:14:27',13),(785,12,11,13,13.16,'Clouds',NULL,'2020-11-17 23:54:28',13),(786,12,11,13,13.16,'Clouds',NULL,'2020-11-18 00:14:31',13),(787,12,11,0,13.35,'Clouds',NULL,'2020-11-18 00:54:22',13),(788,12,11,0,13.16,'Clouds',NULL,'2020-11-18 01:14:23',13),(789,12,0,13,12.84,'Clouds',NULL,'2020-11-18 01:54:13',0),(790,12,11,12,12.84,'Clouds',NULL,'2020-11-18 02:14:30',12),(791,12,11,12,13.03,'Clouds',NULL,'2020-11-18 02:54:20',0),(792,12,0,0,13.03,'Clouds',NULL,'2020-11-18 03:14:15',12),(793,12,12,0,12.84,'Clouds',NULL,'2020-11-18 03:54:13',0),(794,12,12,12,12.84,'Clouds',NULL,'2020-11-18 04:14:22',0),(795,12,12,12,12.84,'Rain',NULL,'2020-11-18 04:54:29',12),(796,12,12,12,12.84,'Clouds',NULL,'2020-11-18 05:14:30',12),(797,12,12,12,12.84,'Rain',NULL,'2020-11-18 05:54:31',12),(798,12,12,12,13.03,'Rain',NULL,'2020-11-18 06:14:32',12),(799,12,12,12,13.23,'Clouds',NULL,'2020-11-18 06:54:21',0),(800,12,0,0,13.04,'Clouds',NULL,'2020-11-18 07:14:14',12),(801,12,12,12,13.04,'Clouds',NULL,'2020-11-18 07:54:27',12),(802,12,0,0,13.03,'Clouds',NULL,'2020-11-18 08:14:14',12),(803,12,0,0,11.71,'Rain Drizzle',NULL,'2020-11-18 08:54:13',13),(804,12,12,13,11.52,'Rain Drizzle',NULL,'2020-11-18 09:14:27',13),(805,11,0,12,10.5,'Rain',NULL,'2020-11-18 09:54:24',12),(806,11,11,12,9.71,'Rain',NULL,'2020-11-18 10:14:25',0),(807,10,0,12,9.71,'Clouds',NULL,'2020-11-18 10:54:20',12),(808,10,10,0,9.71,'Rain',NULL,'2020-11-18 11:14:22',12),(809,12,12,0,8.94,'Clouds',NULL,'2020-11-18 11:54:24',13),(810,12,12,13,9.23,'Clouds',NULL,'2020-11-18 12:14:29',13),(811,13,13,14,9.71,'Clouds',NULL,'2020-11-18 12:54:20',0),(812,14,14,0,9.71,'Clouds',NULL,'2020-11-18 13:14:22',15),(813,11,11,14,8.94,'Clear',NULL,'2020-11-18 13:54:28',14),(814,10,0,13,8.94,'Clear',NULL,'2020-11-18 14:14:25',14),(815,10,10,16,8.94,'Clear',NULL,'2020-11-18 14:54:30',15),(816,10,10,17,8.94,'Rain',NULL,'2020-11-18 15:14:28',17),(817,9,9,13,8.17,'Clear',NULL,'2020-11-18 15:54:29',14),(818,8,0,12,7.89,'Clear',NULL,'2020-11-18 16:14:24',12),(819,7,7,0,7.88,'Clouds',NULL,'2020-11-18 16:54:20',11),(820,6,0,0,7.89,'Clouds',NULL,'2020-11-18 17:14:14',10),(821,7,0,10,7.88,'Clouds',NULL,'2020-11-18 17:54:19',10),(822,6,6,9,7.88,'Clouds',NULL,'2020-11-18 18:14:29',9),(823,7,0,9,7.88,'Rain',NULL,'2020-11-18 18:54:21',9),(824,7,0,9,8.17,'Clear',NULL,'2020-11-18 19:14:20',9),(825,7,7,9,7.88,'Clouds',NULL,'2020-11-18 19:54:28',9),(826,8,0,10,7.88,'Rain',NULL,'2020-11-18 20:14:20',9),(827,7,0,9,7.88,'Rain',NULL,'2020-11-18 20:54:24',9),(828,7,7,9,8.04,'Clouds',NULL,'2020-11-18 21:14:28',9),(829,6,0,9,8.23,'Clouds',NULL,'2020-11-18 21:54:21',9),(830,6,6,9,8.22,'Clouds',NULL,'2020-11-18 22:14:30',9),(831,6,0,9,8.04,'Clouds',NULL,'2020-11-18 22:54:21',9),(832,6,0,0,8.04,'Clouds',NULL,'2020-11-18 23:14:06',0),(833,7,7,9,8.04,'Clouds',NULL,'2020-11-18 23:54:22',0),(834,7,7,9,8.22,'Clouds',NULL,'2020-11-19 00:14:31',9),(835,7,0,9,8.23,'Clouds',NULL,'2020-11-19 00:54:23',9),(836,7,7,9,8.22,'Clouds',NULL,'2020-11-19 01:14:20',0),(837,7,7,9,8.55,'Clouds',NULL,'2020-11-19 01:54:20',0),(838,7,7,0,8.55,'Clouds',NULL,'2020-11-19 02:14:22',9),(839,7,7,0,8.02,'Clouds',NULL,'2020-11-19 02:54:23',9),(840,7,7,9,7.88,'Clouds',NULL,'2020-11-19 03:14:33',9),(841,7,0,9,8.17,'Clouds',NULL,'2020-11-19 03:54:20',9),(842,7,0,0,8.17,'Clouds',NULL,'2020-11-19 04:14:06',0),(843,6,6,8,7.12,'Clouds',NULL,'2020-11-19 04:54:30',8),(844,6,6,8,7.4,'Clouds',NULL,'2020-11-19 05:14:29',8),(845,6,6,8,7.12,'Clouds',NULL,'2020-11-19 05:54:30',8),(846,5,5,0,6.83,'Clouds',NULL,'2020-11-19 06:14:21',8),(847,5,0,8,5.77,'Clouds',NULL,'2020-11-19 06:54:20',8),(848,5,5,7,5.77,'Clouds',NULL,'2020-11-19 07:14:22',0),(849,4,4,0,5.29,'Clouds',NULL,'2020-11-19 07:54:15',0),(850,3,3,7,5.29,'Clouds',NULL,'2020-11-19 08:14:27',7),(851,4,4,0,4.62,'Clouds',NULL,'2020-11-19 08:54:21',7),(852,5,0,0,4.81,'Clouds',NULL,'2020-11-19 09:14:15',9),(853,6,5,0,5.29,'Clouds',NULL,'2020-11-19 09:54:13',0),(854,6,6,0,5.58,'Clouds',NULL,'2020-11-19 10:14:25',11),(855,8,0,0,7.41,'Clear',NULL,'2020-11-19 10:54:13',15),(856,10,0,0,6.64,'Clear',NULL,'2020-11-19 11:14:17',13),(857,13,13,10,6.83,'Clear',NULL,'2020-11-19 11:54:28',11),(858,12,0,10,7.12,'Clear',NULL,'2020-11-19 12:14:16',0),(859,12,0,11,7.72,'Clouds',NULL,'2020-11-19 12:54:25',11),(860,11,11,11,7.71,'Clouds',NULL,'2020-11-19 13:14:29',11),(861,12,12,0,7.53,'Clear',NULL,'2020-11-19 13:54:22',12),(862,11,0,12,7.91,'Clear',NULL,'2020-11-19 14:14:14',0),(863,10,10,11,6.96,'Clouds',NULL,'2020-11-19 14:54:30',11),(864,9,0,0,6.96,'Clouds',NULL,'2020-11-19 15:14:14',11),(865,7,8,9,6.77,'Clouds',NULL,'2020-11-19 15:54:29',10),(866,6,7,9,6.39,'Clouds',NULL,'2020-11-19 16:14:29',9),(867,5,0,8,5.89,'Clouds',NULL,'2020-11-19 16:54:21',8),(868,5,5,8,5.7,'Clouds',NULL,'2020-11-19 17:14:21',0),(869,5,0,7,5.7,'Clouds',NULL,'2020-11-19 17:54:12',0),(870,5,0,7,5.7,'Clouds',NULL,'2020-11-19 18:14:17',0),(871,5,5,13,5.7,'Clouds',NULL,'2020-11-19 18:54:28',11),(872,4,4,13,5.51,'Clouds',NULL,'2020-11-19 19:14:32',13),(873,4,4,0,5,'Clouds',NULL,'2020-11-19 19:54:20',11),(874,4,0,0,4.81,'Clouds',NULL,'2020-11-19 20:14:17',10),(875,4,4,0,4.62,'Clouds',NULL,'2020-11-19 20:54:23',9),(876,4,0,0,4.81,'Clouds',NULL,'2020-11-19 21:14:16',8),(877,4,0,7,4.82,'Clouds',NULL,'2020-11-19 21:54:14',0),(878,5,5,7,4.62,'Clouds',NULL,'2020-11-19 22:14:29',7),(879,5,5,8,5,'Clouds',NULL,'2020-11-19 22:54:22',0),(880,6,0,0,5.19,'Clouds',NULL,'2020-11-19 23:14:16',8),(881,6,0,8,5.76,'Clouds',NULL,'2020-11-19 23:54:15',0),(882,6,0,0,5.57,'Clouds',NULL,'2020-11-20 00:14:15',8),(883,7,0,0,5.75,'Clouds',NULL,'2020-11-20 00:54:12',8),(884,7,7,0,5.94,'Rain',NULL,'2020-11-20 01:14:21',8),(885,7,7,8,5.95,'Drizzle',NULL,'2020-11-20 01:54:29',8),(886,7,7,0,5.86,'Drizzle',NULL,'2020-11-20 02:14:14',0),(887,7,0,8,7.12,'Drizzle',NULL,'2020-11-20 02:54:19',8),(888,7,7,0,7.11,'Drizzle',NULL,'2020-11-20 03:14:20',8),(889,7,7,8,7.12,'Clouds',NULL,'2020-11-20 03:54:29',8),(890,7,0,8,7.11,'Clouds',NULL,'2020-11-20 04:14:22',8),(891,8,7,8,7.59,'Clouds',NULL,'2020-11-20 04:54:28',8),(892,8,0,8,7.88,'Clouds',NULL,'2020-11-20 05:14:20',8),(893,8,0,0,7.88,'Clouds',NULL,'2020-11-20 05:54:12',9),(894,8,0,9,8.17,'Rain',NULL,'2020-11-20 06:14:24',9),(895,8,0,9,8.47,'Rain',NULL,'2020-11-20 06:54:24',9),(896,8,8,9,8.46,'Rain',NULL,'2020-11-20 07:14:22',0),(897,8,0,0,8.92,'Rain',NULL,'2020-11-20 07:54:07',0),(898,8,0,9,9.11,'Rain',NULL,'2020-11-20 08:14:22',9),(899,9,9,0,9.3,'Rain',NULL,'2020-11-20 08:54:22',9),(900,9,9,0,9.3,'Rain',NULL,'2020-11-20 09:14:21',9),(901,10,10,0,10,'Rain',NULL,'2020-11-20 09:54:21',10),(902,10,10,11,10,'Rain',NULL,'2020-11-20 10:14:30',11),(903,11,11,17,10.38,'Rain',NULL,'2020-11-20 10:54:24',0),(904,12,11,0,10.38,'Rain',NULL,'2020-11-20 11:14:24',19),(905,12,11,0,11.27,'Clouds',NULL,'2020-11-20 11:54:21',16),(906,12,12,0,11.26,'Clouds',NULL,'2020-11-20 12:14:24',15),(907,12,0,0,11.96,'Clouds',NULL,'2020-11-20 12:54:16',18),(908,12,0,0,12.15,'Clouds',NULL,'2020-11-20 13:14:15',18),(909,12,12,15,12.15,'Clouds',NULL,'2020-11-20 13:54:29',15),(910,13,12,0,12.15,'Clouds',NULL,'2020-11-20 14:14:21',15),(911,12,0,14,12.66,'Clouds',NULL,'2020-11-20 14:54:20',14),(912,12,12,13,12.46,'Clouds',NULL,'2020-11-20 15:14:28',13),(913,12,11,0,12.15,'Clouds',NULL,'2020-11-20 15:54:18',0),(914,11,11,0,12.15,'Clouds',NULL,'2020-11-20 16:14:23',12),(915,11,11,0,12.15,'Clouds',NULL,'2020-11-20 16:54:22',12),(916,11,11,12,12.15,'Clouds',NULL,'2020-11-20 17:14:31',12),(917,11,11,12,11.77,'Clouds',NULL,'2020-11-20 17:54:30',12),(918,11,0,0,11.77,'Clouds',NULL,'2020-11-20 18:14:06',0),(919,11,10,11,11.77,'Clouds',NULL,'2020-11-20 18:54:24',0),(920,10,10,11,11.78,'Clouds',NULL,'2020-11-20 19:14:29',11),(921,10,10,0,11.77,'Clouds',NULL,'2020-11-20 19:54:22',11),(922,10,10,0,11.77,'Clouds',NULL,'2020-11-20 20:14:23',11),(923,10,10,11,11.77,'Clouds',NULL,'2020-11-20 20:54:20',0),(924,10,10,0,11.77,'Clouds',NULL,'2020-11-20 21:14:20',11),(925,10,10,0,11.77,'Clouds',NULL,'2020-11-20 21:54:19',11),(926,10,10,11,11.77,'Clouds',NULL,'2020-11-20 22:14:21',0),(927,10,10,11,11.77,'Clouds',NULL,'2020-11-20 22:54:30',11),(928,10,10,0,11.77,'Clouds',NULL,'2020-11-20 23:14:14',0),(929,10,10,0,11.77,'Clouds',NULL,'2020-11-20 23:54:20',11),(930,10,10,11,11.78,'Clouds',NULL,'2020-11-21 00:14:27',11),(931,10,10,11,11.27,'Clouds',NULL,'2020-11-21 00:54:28',11),(932,10,0,0,11.26,'Clouds',NULL,'2020-11-21 01:14:14',11),(933,10,10,0,11.25,'Clouds',NULL,'2020-11-21 01:54:22',11),(934,10,10,0,11.25,'Clouds',NULL,'2020-11-21 02:14:19',11),(935,10,0,0,11.27,'Clouds',NULL,'2020-11-21 02:54:06',0),(936,10,10,0,11.08,'Rain',NULL,'2020-11-21 03:14:22',10),(937,10,0,0,11.08,'Clouds',NULL,'2020-11-21 03:54:13',10),(938,10,10,11,10.7,'Rain',NULL,'2020-11-21 04:14:31',11);
/*!40000 ALTER TABLE `greenhouse_heating_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `duedate` datetime DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (22,'images/09-10-2020_10:28:19am_4_.jpg',4,'2020-10-09 15:19:19',NULL,'had to clear old cauliflower and weeds',NULL),(23,'images/09-10-2020_11:24:52am_4_.jpg',4,'2020-10-09 15:27:09',NULL,'Use double hoe to remove deep weeds',NULL),(24,'images/09-10-2020_12:18:58pm_4_.jpg',4,'2020-10-09 15:27:19',NULL,'Rotivate',NULL),(25,'images/09-10-2020_12:28:52pm_4_.jpg',4,'2020-10-09 15:27:43',NULL,'Measure area of bed',NULL),(26,'images/09-10-2020_12:41:04pm_4_.jpg',4,'2020-10-09 15:28:19',NULL,'Select seeds Radish Turnip Spinach',NULL),(27,'images/09-10-2020_12:54:15pm_4_.jpg',4,'2020-10-09 15:28:40',NULL,'Design planting scheme',NULL),(28,'images/09-10-2020_01:12:22pm_4_.jpg',4,'2020-10-09 15:22:33',NULL,'add compost',NULL),(29,'images/09-10-2020_01:36:43pm_4_.jpg',4,'2020-10-09 15:29:06',NULL,'Sow seeds',NULL),(30,'images/09-10-2020_02:00:49pm_4_.jpg',4,'2020-10-09 14:01:06',NULL,NULL,NULL),(35,'images/10-10-2020_04:43:29pm_2_.jpg',2,'2020-10-13 16:40:27',NULL,'building the wall - dig foundations',NULL),(36,'images/10-10-2020_04:49:26pm_6_.jpg',6,'2020-10-10 16:49:41',NULL,NULL,NULL),(37,'images/10-10-2020_04:49:50pm_6_.jpg',6,'2020-10-10 16:50:07',NULL,NULL,NULL),(38,'images/11-10-2020_10:30:02am_2_.jpg',2,'2020-10-13 16:41:06',NULL,'dig the wall - 1st layer of stones',NULL),(39,'images/11-10-2020_01:50:06pm_2_.jpg',2,'2020-10-13 16:42:19',NULL,'Building the wall - finish brick work',NULL),(40,'images/11-10-2020_05:47:39pm_2_.jpg',2,'2020-10-13 16:42:44',NULL,'Clear the ground of ivy and weeds',NULL),(41,'images/11-10-2020_05:48:14pm_2_.jpg',2,'2020-10-13 16:43:05',NULL,'Rotivate',NULL),(42,'images/11-10-2020_05:48:52pm_2_.jpg',2,'2020-10-13 16:43:20',NULL,'Level ground',NULL),(43,'images/12-10-2020_10:11:34am_8_.jpg',8,'2020-10-12 10:11:51',NULL,NULL,NULL),(44,'images/12-10-2020_10:22:00am_8_.jpg',8,'2020-10-12 10:22:10',NULL,NULL,NULL),(45,'images/17-10-2020_07:57:00pm_7_.jpg',7,'2020-10-17 20:33:11',NULL,'Surface burn the wood in contact with soil',NULL),(46,'images/24-10-2020_05:45:22pm_12_.jpg',12,'2020-10-24 17:46:24',NULL,NULL,NULL),(47,'images/24-10-2020_05:46:41pm_12_.jpg',12,'2020-10-24 17:47:09',NULL,NULL,NULL),(48,'images/24-10-2020_05:47:15pm_12_.jpg',12,'2020-10-24 17:47:49',NULL,NULL,NULL),(49,'images/24-10-2020_05:47:57pm_12_.jpg',12,'2020-10-24 17:48:28',NULL,NULL,NULL),(63,'images/26-10-2020_01:33:14pm_13_.jpg',13,'2020-10-26 13:33:27',NULL,NULL,NULL),(64,'images/28-10-2020_07:38:29am_14_.jpg',14,'2020-10-28 07:38:40',NULL,NULL,NULL),(65,'images/28-10-2020_04:54:49pm_15_.jpg',15,'2020-10-28 16:55:24',NULL,'Added wood ash',NULL),(75,'images/31-10-2020_04:27:18pm_16_.jpg',16,'2020-10-31 16:54:56',NULL,'+ to led to C, E to -',NULL),(79,'images/02-11-2020_03:17:31pm_17_.jpg',17,'2020-11-02 15:18:23',NULL,NULL,NULL),(80,'images/02-11-2020_03:19:27pm_17_.jpg',17,'2020-11-02 15:20:03',NULL,NULL,NULL),(81,'images/02-11-2020_07:25:48pm_17_.jpg',17,'2020-11-02 19:26:48',NULL,'https://github.com/tasmota/tasmotizer/releases  if having problems flashing sonoff use this',NULL),(82,'images/03-11-2020_07:06:24pm_14_.jpg',14,'2020-11-03 19:06:35',NULL,NULL,NULL),(84,'images/11-11-2020_01:28:11pm_1_.jpg',1,'2020-11-11 13:29:21',NULL,'Ph Meter for Soil',NULL),(96,'images/11-01-2021_07:51:28pm_20_.jpg',20,'2021-01-11 19:52:12',NULL,'https://www.youtube.com/watch?v=gxpHDUHcBMk&amp;feature=youtu.be',NULL),(97,'images/19-01-2021_08:11:34pm_21_.jpg',21,'2021-01-19 20:22:50',NULL,'for arduino ino see https://github.com/scanos/sensor_control/blob/master/attiny_mic_2.ino',NULL),(100,'images/19-01-2021_08:15:53pm_21_.jpg',21,'2021-01-19 20:17:59',NULL,'5v supply pot 5v mid pb2 gd via 10k  to gd attiny - this works',NULL),(103,'images/19-01-2021_09:48:51pm_5_.jpg',5,'2021-01-19 23:03:39',NULL,NULL,NULL),(107,'images/17-02-2021_02:13:16pm_22_.jpg',22,'2021-02-17 14:13:26',NULL,NULL,NULL),(108,'images/17-02-2021_02:13:33pm_22_.jpg',22,'2021-02-17 14:13:46',NULL,NULL,NULL),(109,'images/17-02-2021_02:14:02pm_22_.jpg',22,'2021-02-17 14:14:13',NULL,NULL,NULL),(110,'images/17-02-2021_02:18:18pm_22_.jpg',22,'2021-02-17 14:18:29',NULL,NULL,NULL);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) DEFAULT 'OPEN',
  `duedate` datetime DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (2,'barrio coffee area','julia','2020-10-07 19:12:21','OPEN',NULL,NULL,NULL),(8,'Transfer files pi to google cl','Seamus','2020-10-12 10:11:23','OPEN',NULL,NULL,NULL),(10,'Flashing LED Lights','seamus','2020-10-20 13:30:22','OPEN',NULL,NULL,NULL),(12,'Barrio cafe 3','Seamus ','2020-10-24 17:45:00','OPEN',NULL,NULL,NULL),(13,'Garlic in greenhouse','Seamus ','2020-10-25 11:46:05','OPEN',NULL,NULL,NULL),(14,'espcam','seamus','2020-10-28 07:36:50','OPEN',NULL,NULL,NULL),(16,'Attiny85 opening bc548 ','Seamus ','2020-10-31 16:27:06','OPEN',NULL,NULL,NULL),(17,'Sonoff sr04','Seamus ','2020-11-02 15:17:19','OPEN',NULL,NULL,NULL),(18,'Plant growth sensor','Seamus ','2020-12-05 19:57:16','OPEN',NULL,NULL,NULL),(19,'sd card on esp','sk','2021-01-11 19:48:40','OPEN',NULL,NULL,NULL),(20,'sd card play on esp32','sk','2021-01-11 19:51:14','OPEN',NULL,NULL,NULL),(21,'adc on attiny85 for mics etc','sk','2021-01-19 20:09:07','OPEN',NULL,NULL,NULL),(22,'ConnectMyPlace Image Gallery','','2021-02-17 14:09:11','OPEN',NULL,NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rainfall`
--

DROP TABLE IF EXISTS `rainfall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rainfall` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rainfall` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rainfall`
--

LOCK TABLES `rainfall` WRITE;
/*!40000 ALTER TABLE `rainfall` DISABLE KEYS */;
INSERT INTO `rainfall` VALUES (5,'portaferry',0,0,'2020-10-12 21:12:43',3.2),(6,'portaferry',0,0,'2020-10-13 23:00:32',0.24),(7,'portaferry',0,0,'2020-10-18 23:00:33',0.13),(8,'portaferry',0,0,'2020-10-19 02:00:30',0.87),(9,'portaferry',0,0,'2020-10-19 11:00:50',0.36),(10,'portaferry',0,0,'2020-10-19 14:00:34',1.54),(11,'portaferry',0,0,'2020-10-19 17:00:33',1.15),(12,'portaferry',0,0,'2020-10-19 20:00:29',2.37),(13,'portaferry',0,0,'2020-10-19 23:00:29',1.15),(14,'portaferry',0,0,'2020-10-20 02:00:37',0.56),(15,'portaferry',0,0,'2020-10-20 11:00:37',0.24),(16,'portaferry',0,0,'2020-10-23 02:00:32',1),(17,'portaferry',0,0,'2020-10-23 05:00:31',3.16),(18,'portaferry',0,0,'2020-10-24 05:00:30',1.78),(19,'portaferry',0,0,'2020-10-27 06:00:34',0.24),(20,'portaferry',0,0,'2020-10-27 12:00:46',4.21),(21,'portaferry',0,0,'2020-10-28 15:00:39',2.73),(22,'portaferry',0,0,'2020-10-28 18:00:30',0.24),(23,'portaferry',0,0,'2020-10-29 06:00:29',1.78),(24,'portaferry',0,0,'2020-10-29 09:00:38',2.05),(25,'portaferry',0,0,'2020-10-29 12:00:37',0.42),(26,'portaferry',0,0,'2020-10-31 00:00:30',1.78),(27,'portaferry',0,0,'2020-10-31 09:00:31',0.24),(28,'portaferry',0,0,'2020-11-01 03:00:31',0.49),(29,'portaferry',0,0,'2020-11-01 15:00:35',1),(30,'portaferry',0,0,'2020-11-02 18:00:28',1.15),(31,'',0,0,'2020-11-10 22:48:58',0),(32,'portaferry',0,0,'2020-11-11 03:00:32',4.21),(33,'portaferry',0,0,'2020-11-11 06:00:40',1.78),(34,'portaferry',0,0,'2020-11-11 12:00:41',1.78),(35,'portaferry',0,0,'2020-11-11 15:00:35',1),(36,'portaferry',0,0,'2020-11-11 18:00:30',4.86),(37,'portaferry',0,0,'2020-11-11 21:00:44',8.65),(38,'portaferry',0,0,'2020-11-13 00:00:40',0.75),(39,'portaferry',0,0,'2020-11-14 00:00:29',0.24),(40,'portaferry',0,0,'2020-11-14 06:00:28',0.42),(41,'portaferry',0,0,'2020-11-14 21:00:29',0.24),(42,'portaferry',0,0,'2020-11-15 12:00:37',2.05),(43,'portaferry',0,0,'2020-11-15 15:00:37',0.75),(44,'portaferry',0,0,'2020-11-18 09:00:32',0.27),(45,'portaferry',0,0,'2020-11-18 21:00:41',3.16),(46,'portaferry',0,0,'2020-11-20 09:00:29',1.15),(47,'portaferry',0,0,'2020-11-24 18:00:28',2.37),(48,'portaferry',0,0,'2020-11-24 21:00:50',0.75),(49,'portaferry',0,0,'2020-12-03 03:00:49',1.78),(50,'portaferry',0,0,'2020-12-09 18:00:28',0.42),(51,'portaferry',0,0,'2020-12-11 03:00:28',1.54),(52,'portaferry',0,0,'2020-12-13 03:00:29',1),(53,'portaferry',0,0,'2020-12-13 06:00:51',0.65),(54,'portaferry',0,0,'2020-12-13 12:00:47',23.68),(55,'portaferry',0,0,'2020-12-14 00:00:27',0.12),(56,'portaferry',0,0,'2020-12-14 03:00:39',0.32),(57,'portaferry',0,0,'2020-12-16 03:00:28',1.78),(58,'portaferry',0,0,'2020-12-16 12:00:41',0.24),(59,'portaferry',0,0,'2020-12-16 15:00:37',0.37),(60,'portaferry',0,0,'2020-12-17 21:00:32',0.42),(61,'portaferry',0,0,'2020-12-18 00:00:27',0.27),(62,'portaferry',0,0,'2020-12-18 09:00:28',4.21),(63,'portaferry',0,0,'2020-12-18 21:00:27',1.63),(64,'portaferry',0,0,'2020-12-19 18:00:50',1.43),(65,'portaferry',0,0,'2020-12-21 09:00:49',0.24),(66,'portaferry',0,0,'2020-12-21 12:00:32',0.24),(67,'portaferry',0,0,'2020-12-23 03:00:49',0.4);
/*!40000 ALTER TABLE `rainfall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_data`
--

DROP TABLE IF EXISTS `sensor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_data` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `sensor_id` int(11) DEFAULT NULL,
  `sensor_value` float DEFAULT 9999.9,
  `notes` varchar(200) DEFAULT NULL,
  `reg_date` datetime DEFAULT current_timestamp(),
  `event_acknowledged` tinyint(1) DEFAULT 0,
  `event_triggered` tinyint(1) DEFAULT 0,
  `id_text` varchar(30) DEFAULT NULL,
  `sensor_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10587 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_data`
--

LOCK TABLES `sensor_data` WRITE;
/*!40000 ALTER TABLE `sensor_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensors`
--

DROP TABLE IF EXISTS `sensors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensors` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(200) DEFAULT NULL,
  `lower_warning_limit` float NOT NULL,
  `higher_warning_limit` float NOT NULL,
  `lower_action_limit` float NOT NULL,
  `higher_action_limit` float NOT NULL,
  `source_device` varchar(200) DEFAULT NULL,
  `source_api` varchar(200) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `UOM` varchar(20) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_text` varchar(30) DEFAULT NULL,
  `ipaddress` varchar(30) DEFAULT NULL,
  `latest_value` float DEFAULT NULL,
  `Isalarm` int(11) DEFAULT 0,
  `last_seen` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensors`
--

LOCK TABLES `sensors` WRITE;
/*!40000 ALTER TABLE `sensors` DISABLE KEYS */;
INSERT INTO `sensors` VALUES (28,'Tasmota_Greenhouse',0,0,10,19,NULL,NULL,NULL,'C','2021-05-13 13:50:47','tasmota_03CA1DDS18B20','192.168.8.123',14.9,NULL,NULL),(31,'Compost 3 2nd May 2021',0,0,5,30,NULL,NULL,NULL,'','2021-05-14 16:53:12','tasmota_4C7759DS18B20-1','192.168.8.114',6.9,0,NULL),(47,'Greenhouse',0,0,10,19,NULL,NULL,NULL,'C','2021-05-14 02:47:44','tasmota_4C7759DS18B20-2','192.168.8.114',8.1,1,NULL),(48,'greenhouse_compost_bin',0,0,0,0,NULL,NULL,NULL,'C','2021-05-16 20:50:02','tasmota_4C5AA3DS18B20',NULL,17.8,1,1621198184),(49,'Compost Heap 2 - side of house',0,0,20,40,NULL,NULL,NULL,'','2021-05-15 16:47:42','tasmota_03C5D2DS18B20',NULL,31.4,1,NULL),(50,NULL,0,0,0,0,NULL,NULL,NULL,NULL,'2021-05-15 12:10:51','sonoff_12345PIR',NULL,NULL,0,NULL),(51,NULL,0,0,0,0,NULL,NULL,NULL,NULL,'2021-05-22 12:59:12','tasmota_38F9D3DS18B20',NULL,9.6,1,1621688334),(52,'Door PIR Sensor',0,0,-99,99,NULL,NULL,NULL,'','2021-05-21 06:37:06','tasmota_03CBD6PIR',NULL,1,0,1621579009);
/*!40000 ALTER TABLE `sensors` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`seamus`@`localhost`*/ /*!50003 TRIGGER `test_alarm` BEFORE UPDATE ON `sensors` 
FOR EACH ROW
BEGIN
    IF (new.latest_value > old.higher_action_limit OR new.latest_value < old.lower_action_limit) THEN
        SET new.Isalarm = TRUE;
        INSERT INTO alerts(id_text,value)
        VALUES(old.id_text,new.latest_value);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(6) unsigned NOT NULL DEFAULT 0,
  `description` varchar(200) DEFAULT NULL,
  `owner` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) DEFAULT 'OPEN',
  `duedate` datetime DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (0,'Web Development','','2021-02-17 11:21:13','OPEN',NULL,NULL,NULL,NULL,'Apache, PHP, Python, Node, Js, Jquery, NGinX'),(0,'IOT','','2021-02-17 11:22:17','OPEN',NULL,NULL,NULL,NULL,'Raspberry Pi, Microchip, ATTiny, Tasmota, ESP32'),(0,'Technical Strategy','','2021-02-17 11:22:55','OPEN',NULL,NULL,NULL,NULL,'Cloud, ISO27001, ITIL'),(0,'Cloud Services','','2021-02-17 11:23:32','OPEN',NULL,NULL,NULL,NULL,'AWS, Google');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_sensors`
--

DROP TABLE IF EXISTS `summary_sensors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `summary_sensors` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `sdate` datetime DEFAULT NULL,
  `scount` int(6) DEFAULT NULL,
  `smax` int(6) DEFAULT NULL,
  `smin` int(6) DEFAULT NULL,
  `savg` float NOT NULL,
  `sensor_id` int(11) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `event_triggered` tinyint(1) DEFAULT 0,
  `id_text` varchar(30) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_sensors`
--

LOCK TABLES `summary_sensors` WRITE;
/*!40000 ALTER TABLE `summary_sensors` DISABLE KEYS */;
INSERT INTO `summary_sensors` VALUES (285,'2021-05-03 00:00:00',4,15,14,14.2,NULL,NULL,0,'tasmota_03CA1DDS18B20','Tasmota_Greenhouse'),(286,'2021-05-03 00:00:00',7,9,4,6.4,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(287,'2021-05-03 00:00:00',8,21,7,10,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(294,'2021-05-05 00:00:00',21,8,2,5.2,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(295,'2021-05-05 00:00:00',21,27,3,12.1,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(297,'2021-05-06 00:00:00',34,8,0,5.3,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(298,'2021-05-06 00:00:00',32,26,2,16.5,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(300,'2021-05-07 00:00:00',58,12,3,6.9,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(301,'2021-05-07 00:00:00',56,24,5,12.2,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(303,'2021-05-08 00:00:00',67,13,5,7.7,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(304,'2021-05-08 00:00:00',67,23,7,11.9,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(306,'2021-05-09 00:00:00',96,11,10,10.6,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(307,'2021-05-09 00:00:00',94,27,10,18.2,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(309,'2021-05-10 00:00:00',196,12,10,11.3,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(310,'2021-05-10 00:00:00',193,27,10,18.6,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(312,'2021-05-11 00:00:00',105,13,8,10.3,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(313,'2021-05-11 00:00:00',103,23,8,14.2,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(315,'2021-05-12 00:00:00',304,15,6,10.5,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(316,'2021-05-12 00:00:00',303,27,6,14.5,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(318,'2021-05-13 00:00:00',23,38,26,35.7,NULL,NULL,0,'tasmota_03C5D2DS18B20',NULL),(319,'2021-05-13 00:00:00',134,23,17,18.7,NULL,NULL,0,'tasmota_4C5AA3DS18B20','test_solar_conservatory'),(320,'2021-05-13 00:00:00',153,15,5,10.6,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(321,'2021-05-13 00:00:00',153,35,5,14.4,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(325,'2021-05-14 00:00:00',79,37,35,36.3,NULL,NULL,0,'tasmota_03C5D2DS18B20','Compost Heap 2 - side of house'),(326,'2021-05-14 00:00:00',239,20,11,16,NULL,NULL,0,'tasmota_4C5AA3DS18B20','greenhouse_compost_bin'),(327,'2021-05-14 00:00:00',10,7,4,5.6,NULL,NULL,0,'tasmota_4C7759DS18B20-1','Compost 3 2nd May 2021'),(328,'2021-05-14 00:00:00',10,8,7,7.4,NULL,NULL,0,'tasmota_4C7759DS18B20-2','Greenhouse'),(332,'2021-05-15 00:00:00',30,35,31,33.6,NULL,NULL,0,'tasmota_03C5D2DS18B20','Compost Heap 2 - side of house'),(333,'2021-05-15 00:00:00',18,25,24,24.5,NULL,NULL,0,'tasmota_38F9D3DS18B20',NULL),(335,'2021-05-16 00:00:00',37,13,11,11.8,NULL,NULL,0,'tasmota_38F9D3DS18B20',NULL),(336,'2021-05-16 00:00:00',7,21,18,18.5,NULL,NULL,0,'tasmota_4C5AA3DS18B20','greenhouse_compost_bin'),(338,'2021-05-17 00:00:00',28,13,10,12.6,NULL,NULL,0,'tasmota_38F9D3DS18B20',NULL),(339,'2021-05-18 00:00:00',25,1,1,1,NULL,NULL,0,'tasmota_03CBD6PIR','Door PIR Sensor'),(340,'2021-05-18 00:00:00',63,16,12,14.8,NULL,NULL,0,'tasmota_38F9D3DS18B20',NULL),(342,'2021-05-19 00:00:00',41,1,1,1,NULL,NULL,0,'tasmota_03CBD6PIR','Door PIR Sensor'),(343,'2021-05-19 00:00:00',211,16,12,14.1,NULL,NULL,0,'tasmota_38F9D3DS18B20',NULL),(345,'2021-05-20 00:00:00',53,1,1,1,NULL,NULL,0,'tasmota_03CBD6PIR','Door PIR Sensor'),(346,'2021-05-21 00:00:00',1,1,1,1,NULL,NULL,0,'tasmota_03CBD6PIR','Door PIR Sensor'),(347,'2021-05-21 00:00:00',85,10,9,9.6,NULL,NULL,0,'tasmota_38F9D3DS18B20',NULL),(349,'2021-05-22 00:00:00',28,10,6,6.5,NULL,NULL,0,'tasmota_38F9D3DS18B20',NULL);
/*!40000 ALTER TABLE `summary_sensors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `responsible` varchar(255) DEFAULT NULL,
  `action` varchar(2000) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `duedate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Value1_Value2_ConstraintKey` (`description`,`reg_date`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` VALUES (164,'Remove tiles from kitchen buy paint and decorate the walls','sk','Tiles removed ','2021-06-18 11:51:01',1,0,NULL),(166,'procure telescopic stairs and remove stairwell','sk','waiting for Ernie might try ourselves or joiner\r\n','2021-06-18 12:25:51',0,500,'2021-06-30'),(168,'Buy new cooker','sk','getting one from Dessie\r\n','2021-06-18 12:38:34',0,100,'2021-06-30'),(170,'change garage doors','sk','tiltadoor newtownards 540 without remediation 100 to 300 re frame\r\n','2021-06-18 12:38:51',0,700,'2021-07-29'),(172,'transport M Large wood and furniture white van man','sk','quote ..2743 180 pounds or self drive\r\n\r\n','2021-06-18 12:39:15',0,500,'2021-07-07'),(174,'remove kitchen panels to install cooker','js',NULL,'2021-06-18 09:18:49',0,NULL,NULL),(176,'remove trees back hedge','jk','chris will do mid july','2021-06-18 10:59:17',0,500,'2021-07-15'),(178,'Estate Agent House Sale','sk','From: Peter Kettle <pkettle@irishtimes.com> To: Seamus Kane <seamuskane@aim.com> Sent: Wed, Jun 9, 2021 12:18 pm Subject: RE: Sale of bungalow Portaferry County Down  Hi Seamus,     Its 3 line for 4 days that is €89.10 Yes you can include a url.','2021-06-18 11:53:27',0,0,NULL),(180,'service boiler and tidy up plumbing','sk',NULL,'2021-06-18 11:48:50',0,0,NULL),(182,'furniture removal loft','sk',NULL,'2021-06-18 11:49:24',0,0,NULL);
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-18 15:10:51
