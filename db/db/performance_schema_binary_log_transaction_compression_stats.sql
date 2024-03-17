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
-- Table structure for table `binary_log_transaction_compression_stats`
--

DROP TABLE IF EXISTS `binary_log_transaction_compression_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binary_log_transaction_compression_stats` (
  `LOG_TYPE` enum('BINARY','RELAY') NOT NULL COMMENT 'The log type to which the transactions were written.',
  `COMPRESSION_TYPE` varchar(64) NOT NULL COMMENT 'The transaction compression algorithm used.',
  `TRANSACTION_COUNTER` bigint unsigned NOT NULL COMMENT 'Number of transactions written to the log',
  `COMPRESSED_BYTES_COUNTER` bigint unsigned NOT NULL COMMENT 'The total number of bytes compressed.',
  `UNCOMPRESSED_BYTES_COUNTER` bigint unsigned NOT NULL COMMENT 'The total number of bytes uncompressed.',
  `COMPRESSION_PERCENTAGE` smallint NOT NULL COMMENT 'The compression ratio as a percentage.',
  `FIRST_TRANSACTION_ID` text COMMENT 'The first transaction written.',
  `FIRST_TRANSACTION_COMPRESSED_BYTES` bigint unsigned NOT NULL COMMENT 'First transaction written compressed bytes.',
  `FIRST_TRANSACTION_UNCOMPRESSED_BYTES` bigint unsigned NOT NULL COMMENT 'First transaction written uncompressed bytes.',
  `FIRST_TRANSACTION_TIMESTAMP` timestamp(6) NULL DEFAULT NULL COMMENT 'When the first transaction was written.',
  `LAST_TRANSACTION_ID` text COMMENT 'The last transaction written.',
  `LAST_TRANSACTION_COMPRESSED_BYTES` bigint unsigned NOT NULL COMMENT 'Last transaction written compressed bytes.',
  `LAST_TRANSACTION_UNCOMPRESSED_BYTES` bigint unsigned NOT NULL COMMENT 'Last transaction written uncompressed bytes.',
  `LAST_TRANSACTION_TIMESTAMP` timestamp(6) NULL DEFAULT NULL COMMENT 'When the last transaction was written.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binary_log_transaction_compression_stats`
--

LOCK TABLES `binary_log_transaction_compression_stats` WRITE;
/*!40000 ALTER TABLE `binary_log_transaction_compression_stats` DISABLE KEYS */;
INSERT INTO `binary_log_transaction_compression_stats` VALUES ('BINARY','NONE',2388,1097278,1097278,0,'ANONYMOUS',113,113,'2023-10-06 04:56:06.980895','ANONYMOUS',473,473,'2024-03-17 03:17:39.329862');
/*!40000 ALTER TABLE `binary_log_transaction_compression_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:27
