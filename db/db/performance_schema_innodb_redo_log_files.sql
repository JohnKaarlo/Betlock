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
-- Table structure for table `innodb_redo_log_files`
--

DROP TABLE IF EXISTS `innodb_redo_log_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `innodb_redo_log_files` (
  `FILE_ID` bigint NOT NULL COMMENT 'Id of the file.',
  `FILE_NAME` varchar(2000) NOT NULL COMMENT 'Path to the file.',
  `START_LSN` bigint NOT NULL COMMENT 'LSN of the first block in the file.',
  `END_LSN` bigint NOT NULL COMMENT 'LSN after the last block in the file.',
  `SIZE_IN_BYTES` bigint NOT NULL COMMENT 'Size of the file (in bytes).',
  `IS_FULL` tinyint NOT NULL COMMENT '1 iff file has no free space inside.',
  `CONSUMER_LEVEL` int NOT NULL COMMENT 'All redo log consumers registered on smaller levels than this value, have already consumed this file.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_redo_log_files`
--

LOCK TABLES `innodb_redo_log_files` WRITE;
/*!40000 ALTER TABLE `innodb_redo_log_files` DISABLE KEYS */;
INSERT INTO `innodb_redo_log_files` VALUES (9,'.\\#innodb_redo\\#ib_redo9',29480960,32755712,3276800,1,0),(10,'.\\#innodb_redo\\#ib_redo10',32755712,36030464,3276800,1,0),(11,'.\\#innodb_redo\\#ib_redo11',36030464,39305216,3276800,1,0),(12,'.\\#innodb_redo\\#ib_redo12',39305216,42579968,3276800,0,0);
/*!40000 ALTER TABLE `innodb_redo_log_files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:09
