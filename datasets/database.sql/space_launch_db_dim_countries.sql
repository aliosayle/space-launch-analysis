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
-- Table structure for table `dim_countries`
--

DROP TABLE IF EXISTS `dim_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_countries` (
  `country_id` int NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_countries`
--

LOCK TABLES `dim_countries` WRITE;
/*!40000 ALTER TABLE `dim_countries` DISABLE KEYS */;
INSERT INTO `dim_countries` VALUES (1,'Afghanistan'),(2,'Åland Islands'),(3,'Albania'),(4,'Algeria'),(5,'American Samoa'),(6,'Andorra'),(7,'Angola'),(8,'Anguilla'),(9,'Antarctica'),(10,'Antigua & Barbuda'),(11,'Argentina'),(12,'Armenia'),(13,'Aruba'),(14,'Australia'),(15,'Austria'),(16,'Azerbaijan'),(17,'Bahamas'),(18,'Bahrain'),(19,'Bangladesh'),(20,'Barbados'),(21,'Belarus'),(22,'Belgium'),(23,'Belize'),(24,'Benin'),(25,'Bermuda'),(26,'Bhutan'),(27,'Bolivia'),(28,'Bosnia & Herzegovina'),(29,'Botswana'),(30,'Bouvet Island'),(31,'Brazil'),(32,'British Indian Ocean Territory'),(33,'British Virgin Islands'),(34,'Brunei'),(35,'Bulgaria'),(36,'Burkina Faso'),(37,'Burundi'),(38,'Cambodia'),(39,'Cameroon'),(40,'Canada'),(41,'Cape Verde'),(42,'Caribbean Netherlands'),(43,'Cayman Islands'),(44,'Central African Republic'),(45,'Chad'),(46,'Chile'),(47,'China'),(48,'Christmas Island'),(49,'Cocos (Keeling) Islands'),(50,'Colombia'),(51,'Comoros'),(52,'Congo - Brazzaville'),(53,'Congo - Kinshasa'),(54,'Cook Islands'),(55,'Costa Rica'),(56,'Côte d’Ivoire'),(57,'Croatia'),(58,'Cuba'),(59,'Curaçao'),(60,'Cyprus'),(61,'Czechia'),(62,'Denmark'),(63,'Djibouti'),(64,'Dominica'),(65,'Dominican Republic'),(66,'Ecuador'),(67,'Egypt'),(68,'El Salvador'),(69,'Equatorial Guinea'),(70,'Eritrea'),(71,'Estonia'),(72,'Eswatini'),(73,'Ethiopia'),(74,'Falkland Islands'),(75,'Faroe Islands'),(76,'Fiji'),(77,'Finland'),(78,'France'),(79,'French Guiana'),(80,'French Polynesia'),(81,'French Southern Territories'),(82,'Gabon'),(83,'Gambia'),(84,'Georgia'),(85,'Germany'),(86,'Ghana'),(87,'Gibraltar'),(88,'Greece'),(89,'Greenland'),(90,'Grenada'),(91,'Guadeloupe'),(92,'Guam'),(93,'Guatemala'),(94,'Guernsey'),(95,'Guinea'),(96,'Guinea-Bissau'),(97,'Guyana'),(98,'Haiti'),(99,'Heard & McDonald Islands'),(100,'Honduras'),(101,'Hong Kong SAR China'),(102,'Hungary'),(103,'Iceland'),(104,'India'),(105,'Indonesia'),(106,'Iran'),(107,'Iraq'),(108,'Ireland'),(109,'Isle of Man'),(110,'Israel'),(111,'Italy'),(112,'Jamaica'),(113,'Japan'),(114,'Jersey'),(115,'Jordan'),(116,'Kazakhstan'),(117,'Kenya'),(118,'Kiribati'),(119,'Kuwait'),(120,'Kyrgyzstan'),(121,'Laos'),(122,'Latvia'),(123,'Lebanon'),(124,'Lesotho'),(125,'Liberia'),(126,'Libya'),(127,'Liechtenstein'),(128,'Lithuania'),(129,'Luxembourg'),(130,'Macao SAR China'),(131,'Madagascar'),(132,'Malawi'),(133,'Malaysia'),(134,'Maldives'),(135,'Mali'),(136,'Malta'),(137,'Marshall Islands'),(138,'Martinique'),(139,'Mauritania'),(140,'Mauritius'),(141,'Mayotte'),(142,'Mexico'),(143,'Micronesia'),(144,'Moldova'),(145,'Monaco'),(146,'Mongolia'),(147,'Montenegro'),(148,'Montserrat'),(149,'Morocco'),(150,'Mozambique'),(151,'Myanmar (Burma)'),(152,'Namibia'),(153,'Nauru'),(154,'Nepal'),(155,'Netherlands'),(156,'New Caledonia'),(157,'New Zealand'),(158,'Nicaragua'),(159,'Niger'),(160,'Nigeria'),(161,'Niue'),(162,'Norfolk Island'),(163,'North Korea'),(164,'North Macedonia'),(165,'Northern Mariana Islands'),(166,'Norway'),(167,'Oman'),(168,'Pakistan'),(169,'Palau'),(170,'Palestinian Territories'),(171,'Panama'),(172,'Papua New Guinea'),(173,'Paraguay'),(174,'Peru'),(175,'Philippines'),(176,'Pitcairn Islands'),(177,'Poland'),(178,'Portugal'),(179,'Puerto Rico'),(180,'Qatar'),(181,'Réunion'),(182,'Romania'),(183,'Russia'),(184,'Rwanda'),(185,'Samoa'),(186,'San Marino'),(187,'São Tomé & Príncipe'),(188,'Saudi Arabia'),(189,'Senegal'),(190,'Serbia'),(191,'Seychelles'),(192,'Sierra Leone'),(193,'Singapore'),(194,'Sint Maarten'),(195,'Slovakia'),(196,'Slovenia'),(197,'Solomon Islands'),(198,'Somalia'),(199,'South Africa'),(200,'South Georgia & South Sandwich Islands'),(201,'South Korea'),(202,'South Sudan'),(203,'Spain'),(204,'Sri Lanka'),(205,'St. Barthélemy'),(206,'St. Helena'),(207,'St. Kitts & Nevis'),(208,'St. Lucia'),(209,'St. Martin'),(210,'St. Pierre & Miquelon'),(211,'St. Vincent & Grenadines'),(212,'Sudan'),(213,'Suriname'),(214,'Svalbard & Jan Mayen'),(215,'Sweden'),(216,'Switzerland'),(217,'Syria'),(218,'Taiwan'),(219,'Tajikistan'),(220,'Tanzania'),(221,'Thailand'),(222,'Timor-Leste'),(223,'Togo'),(224,'Tokelau'),(225,'Tonga'),(226,'Trinidad & Tobago'),(227,'Tunisia'),(228,'Turkey'),(229,'Turkmenistan'),(230,'Turks & Caicos Islands'),(231,'Tuvalu'),(232,'U.S. Outlying Islands'),(233,'U.S. Virgin Islands'),(234,'Uganda'),(235,'Ukraine'),(236,'United Arab Emirates'),(237,'United Kingdom'),(238,'United States'),(239,'Uruguay'),(240,'Uzbekistan'),(241,'Vanuatu'),(242,'Vatican City'),(243,'Venezuela'),(244,'Vietnam'),(245,'Wallis & Futuna'),(246,'Western Sahara'),(247,'Yemen'),(248,'Zambia'),(249,'Zimbabwe');
/*!40000 ALTER TABLE `dim_countries` ENABLE KEYS */;
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
