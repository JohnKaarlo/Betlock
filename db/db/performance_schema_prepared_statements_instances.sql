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
-- Table structure for table `prepared_statements_instances`
--

DROP TABLE IF EXISTS `prepared_statements_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepared_statements_instances` (
  `OBJECT_INSTANCE_BEGIN` bigint unsigned NOT NULL,
  `STATEMENT_ID` bigint unsigned NOT NULL,
  `STATEMENT_NAME` varchar(64) DEFAULT NULL,
  `SQL_TEXT` longtext NOT NULL,
  `OWNER_THREAD_ID` bigint unsigned NOT NULL,
  `OWNER_EVENT_ID` bigint unsigned NOT NULL,
  `OWNER_OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') DEFAULT NULL,
  `OWNER_OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OWNER_OBJECT_NAME` varchar(64) DEFAULT NULL,
  `EXECUTION_ENGINE` enum('PRIMARY','SECONDARY') DEFAULT NULL,
  `TIMER_PREPARE` bigint unsigned NOT NULL,
  `COUNT_REPREPARE` bigint unsigned NOT NULL,
  `COUNT_EXECUTE` bigint unsigned NOT NULL,
  `SUM_TIMER_EXECUTE` bigint unsigned NOT NULL,
  `MIN_TIMER_EXECUTE` bigint unsigned NOT NULL,
  `AVG_TIMER_EXECUTE` bigint unsigned NOT NULL,
  `MAX_TIMER_EXECUTE` bigint unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint unsigned NOT NULL,
  `SUM_ERRORS` bigint unsigned NOT NULL,
  `SUM_WARNINGS` bigint unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint unsigned NOT NULL,
  `SUM_CPU_TIME` bigint unsigned NOT NULL,
  `MAX_CONTROLLED_MEMORY` bigint unsigned NOT NULL,
  `MAX_TOTAL_MEMORY` bigint unsigned NOT NULL,
  `COUNT_SECONDARY` bigint unsigned NOT NULL,
  PRIMARY KEY (`OBJECT_INSTANCE_BEGIN`),
  UNIQUE KEY `OWNER_THREAD_ID` (`OWNER_THREAD_ID`,`OWNER_EVENT_ID`),
  KEY `STATEMENT_ID` (`STATEMENT_ID`),
  KEY `STATEMENT_NAME` (`STATEMENT_NAME`),
  KEY `OWNER_OBJECT_TYPE` (`OWNER_OBJECT_TYPE`,`OWNER_OBJECT_SCHEMA`,`OWNER_OBJECT_NAME`)
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepared_statements_instances`
--

LOCK TABLES `prepared_statements_instances` WRITE;
/*!40000 ALTER TABLE `prepared_statements_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `prepared_statements_instances` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:22
