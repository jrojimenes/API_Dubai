CREATE DATABASE  IF NOT EXISTS `dubaiuni_dbpedidos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `dubaiuni_dbpedidos`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dubaiuni_dbpedidos
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `camisa_pantalon`
--

DROP TABLE IF EXISTS `camisa_pantalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `camisa_pantalon` (
  `talla_camisa` double DEFAULT NULL,
  `talla_pantalon` int(11) DEFAULT NULL,
  `talla_camisa_comercial` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camisa_pantalon`
--

LOCK TABLES `camisa_pantalon` WRITE;
/*!40000 ALTER TABLE `camisa_pantalon` DISABLE KEYS */;
INSERT INTO `camisa_pantalon` VALUES (14,28,36),(14.5,28,37),(15,28,38),(19,42,48),(18.5,42,47),(18,42,46),(18.5,40,47),(18,40,46),(17.5,40,44),(18,38,46),(17.5,38,44),(17,38,43),(17.5,36,44),(17,36,43),(16.5,36,42),(17,34,43),(16.5,34,42),(16,34,40),(16.5,32,42),(16,32,40),(15.5,32,39),(14.5,30,37),(15,30,38),(15.5,30,39),(18.5,44,47),(19,44,48),(19.5,44,49),(19,46,48),(19.5,46,49),(20,46,50),(19.5,48,49),(20,48,50),(20.5,48,52),(20,50,50),(20.5,50,52),(21,50,53);
/*!40000 ALTER TABLE `camisa_pantalon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-10  0:59:08
