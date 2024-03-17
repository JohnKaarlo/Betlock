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
-- Table structure for table `replication_applier_configuration`
--

DROP TABLE IF EXISTS `replication_applier_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_applier_configuration` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `DESIRED_DELAY` int NOT NULL,
  `PRIVILEGE_CHECKS_USER` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'User name for the security context of the applier.',
  `REQUIRE_ROW_FORMAT` enum('YES','NO') NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `REQUIRE_TABLE_PRIMARY_KEY_CHECK` enum('STREAM','ON','OFF','GENERATE') NOT NULL COMMENT 'Indicates what is the channel policy regarding tables without primary keys on create and alter table queries',
  `ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS_TYPE` enum('OFF','LOCAL','UUID') NOT NULL COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS_VALUE` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions',
  PRIMARY KEY (`CHANNEL_NAME`)
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_applier_configuration`
--

LOCK TABLES `replication_applier_configuration` WRITE;
/*!40000 ALTER TABLE `replication_applier_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_applier_configuration` ENABLE KEYS */;
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
