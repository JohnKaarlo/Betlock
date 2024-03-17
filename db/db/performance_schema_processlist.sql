CREATE DATABASE  IF NOT EXISTS `performance_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `performance_schema`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: performance_schema
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processlist` (
  `ID` bigint unsigned NOT NULL,
  `USER` varchar(32) DEFAULT NULL,
  `HOST` varchar(261) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `DB` varchar(64) DEFAULT NULL,
  `COMMAND` varchar(16) DEFAULT NULL,
  `TIME` bigint DEFAULT NULL,
  `STATE` varchar(64) DEFAULT NULL,
  `INFO` longtext,
  `EXECUTION_ENGINE` enum('PRIMARY','SECONDARY') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processlist`
--

LOCK TABLES `processlist` WRITE;
/*!40000 ALTER TABLE `processlist` DISABLE KEYS */;
INSERT INTO `processlist` VALUES (10341,'root','localhost:56116','performance_schema','Query',0,'executing','SELECT /*!40001 SQL_NO_CACHE */ * FROM `processlist`','PRIMARY'),(5,'event_scheduler','localhost',NULL,'Daemon',14088077,'Waiting on empty queue',NULL,'PRIMARY'),(10222,'root','localhost:55453',NULL,'Sleep',462,'',NULL,'PRIMARY'),(10223,'root','localhost:55454',NULL,'Sleep',462,'',NULL,'PRIMARY'),(10225,'root','localhost:55779',NULL,'Sleep',536,'',NULL,'PRIMARY'),(10226,'root','localhost:55780',NULL,'Sleep',536,'',NULL,'PRIMARY'),(10227,'root','localhost:55800',NULL,'Sleep',76,'',NULL,'PRIMARY'),(10228,'root','localhost:55801',NULL,'Sleep',2,'',NULL,'PRIMARY');
/*!40000 ALTER TABLE `processlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:15
