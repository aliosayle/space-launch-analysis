-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: space_launch_db
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_organisations`
--

DROP TABLE IF EXISTS `dim_organisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_organisations` (
  `organisation_id` int NOT NULL,
  `organisation` varchar(255) DEFAULT NULL,
  `isprivate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`organisation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_organisations`
--

LOCK TABLES `dim_organisations` WRITE;
/*!40000 ALTER TABLE `dim_organisations` DISABLE KEYS */;
INSERT INTO `dim_organisations` VALUES (1,'SpaceX',1),(2,'CASC',0),(3,'Roscosmos',0),(4,'ULA',1),(5,'JAXA',0),(6,'Northrop',1),(7,'ExPace',0),(8,'IAI',0),(9,'Rocket Lab',1),(10,'Virgin Orbit',1),(11,'VKS RF',0),(12,'MHI',0),(13,'IRGC',0),(14,'Arianespace',0),(15,'ISA',0),(16,'Blue Origin',1),(17,'ISRO',0),(18,'Exos',1),(19,'ILS',1),(20,'i-Space',1),(21,'OneSpace',1),(22,'Landspace',1),(23,'Eurockot',0),(24,'Land Launch',0),(25,'CASIC',0),(26,'KCST',0),(27,'Sandia',0),(28,'Kosmotras',0),(29,'Khrunichev',0),(30,'Sea Launch',0),(31,'KARI',0),(32,'ESA',0),(33,'NASA',0),(34,'Boeing',1),(35,'ISAS',0),(36,'SRC',0),(37,'MITT',0),(38,'Lockheed',1),(39,'AEB',0),(40,'Starsem',0),(41,'RVSN USSR',0),(42,'EER',0),(43,'General Dynamics',1),(44,'Martin Marietta',1),(45,'Yuzhmash',0),(46,'Douglas',1),(47,'ASI',0),(48,'US Air Force',0),(49,'CNES',0),(50,'CECLES',0),(51,'RAE',0),(52,'UT',0),(53,'OKB-586',0),(54,'AMBA',0),(55,'Arm??e de l\'Air',0),(56,'US Navy',0);
/*!40000 ALTER TABLE `dim_organisations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-08 21:01:24
