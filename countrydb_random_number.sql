

-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: countrydb
-- ------------------------------------------------------
-- Server version	8.0.12
Create database if not exists countrydb;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `random_number`
--

DROP TABLE IF EXISTS `random_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `random_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dice1` varchar(45) DEFAULT NULL,
  `dice2` varchar(45) DEFAULT NULL,
  `dice3` varchar(45) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `random_number`
--

LOCK TABLES `random_number` WRITE;
/*!40000 ALTER TABLE `random_number` DISABLE KEYS */;
INSERT INTO `random_number` VALUES (1,NULL,NULL,NULL,'2018-09-01 00:00:00'),(2,NULL,NULL,NULL,'2018-09-01 00:00:00'),(3,NULL,NULL,NULL,'2018-09-01 00:00:00'),(4,NULL,NULL,NULL,'2018-09-01 00:00:00'),(5,'4','2','3','2018-09-04 16:24:39'),(6,'1','4','1','2018-09-04 16:24:41'),(7,'3','4','2','2018-09-04 16:46:37'),(8,'5','4','4','2018-09-04 16:46:38'),(9,'5','3','6','2018-09-04 16:47:29'),(10,'2','2','1','2018-09-04 17:30:27'),(11,'5','3','2','2018-09-04 17:30:30'),(12,'5','4','4','2018-09-04 17:30:30'),(13,'2','3','2','2018-09-04 17:30:30'),(14,'2','2','4','2018-09-04 17:30:31'),(15,'4','4','5','2018-09-04 17:30:42'),(16,'4','1','1','2018-09-04 17:30:42'),(17,'6','4','5','2018-09-04 17:30:42'),(18,'1','3','6','2018-09-04 17:30:42'),(19,'5','1','4','2018-09-04 17:30:42'),(20,'6','5','5','2018-09-04 17:30:43'),(21,'1','5','3','2018-09-04 17:30:44'),(22,'3','2','3','2018-09-04 17:30:44'),(23,'5','4','3','2018-09-04 17:30:45'),(24,'6','2','1','2018-09-04 17:34:10'),(25,'1','4','1','2018-09-04 17:34:12'),(26,'2','2','4','2018-09-04 17:34:12'),(27,'3','2','3','2018-09-04 17:34:12'),(28,'5','1','6','2018-09-04 17:34:13'),(29,'4','6','6','2018-09-04 17:34:13'),(30,'3','1','1','2018-09-04 17:36:32'),(31,'5','5','5','2018-09-04 17:36:34'),(32,'4','2','3','2018-09-04 17:36:35'),(33,'1','2','5','2018-09-04 17:38:55'),(34,'1','2','3','2018-09-04 17:38:56'),(35,'4','3','6','2018-09-04 17:38:56'),(36,'4','4','5','2018-09-04 17:38:57'),(37,'6','1','1','2018-09-04 17:38:57'),(38,'3','6','3','2018-09-04 17:38:57'),(39,'5','2','2','2018-09-04 17:38:57'),(40,'4','5','2','2018-09-04 17:38:58'),(41,'4','2','6','2018-09-04 17:38:58'),(42,'6','1','2','2018-09-04 17:42:44'),(43,'6','1','1','2018-09-04 17:42:45'),(44,'1','5','6','2018-09-04 17:42:46'),(45,'3','5','3','2018-09-04 17:42:46'),(46,'1','4','2','2018-09-04 17:42:46'),(47,'3','5','4','2018-09-04 17:42:46'),(48,'6','6','2','2018-09-04 17:42:51'),(49,'1','6','5','2018-09-04 17:50:55'),(50,'1','3','1','2018-09-04 17:50:56'),(51,'5','1','3','2018-09-04 17:50:57'),(52,'3','4','3','2018-09-04 17:53:01'),(53,'5','2','2','2018-09-05 10:33:17'),(54,'5','2','4','2018-09-05 10:33:18'),(55,'2','4','5','2018-09-05 10:33:19'),(56,'1','6','3','2018-09-05 10:33:19');
/*!40000 ALTER TABLE `random_number` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-05 10:54:45
