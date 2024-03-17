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
-- Table structure for table `error_log`
--

DROP TABLE IF EXISTS `error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_log` (
  `LOGGED` timestamp(6) NOT NULL,
  `THREAD_ID` bigint unsigned DEFAULT NULL,
  `PRIO` enum('System','Error','Warning','Note') NOT NULL,
  `ERROR_CODE` varchar(10) DEFAULT NULL,
  `SUBSYSTEM` varchar(7) DEFAULT NULL,
  `DATA` text NOT NULL,
  PRIMARY KEY (`LOGGED`),
  KEY `THREAD_ID` (`THREAD_ID`),
  KEY `PRIO` (`PRIO`),
  KEY `ERROR_CODE` (`ERROR_CODE`),
  KEY `SUBSYSTEM` (`SUBSYSTEM`)
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_log`
--

LOCK TABLES `error_log` WRITE;
/*!40000 ALTER TABLE `error_log` DISABLE KEYS */;
INSERT INTO `error_log` VALUES ('2023-10-06 04:25:21.398558',0,'System','MY-010116','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe (mysqld 8.0.34) starting as process 15800'),('2023-10-06 04:25:21.481583',1,'System','MY-013576','InnoDB','InnoDB initialization has started.'),('2023-10-06 04:25:22.051822',1,'System','MY-013577','InnoDB','InnoDB initialization has ended.'),('2023-10-06 04:25:22.992255',0,'Warning','MY-010068','Server','CA certificate ca.pem is self signed.'),('2023-10-06 04:25:22.996955',0,'System','MY-013602','Server','Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.'),('2023-10-06 04:25:23.120841',0,'System','MY-011323','Server','X Plugin ready for connections. Bind-address: \'::\' port: 33060'),('2023-10-06 04:25:23.121087',0,'System','MY-010931','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: ready for connections. Version: \'8.0.34\'  socket: \'\'  port: 3306  MySQL Community Server - GPL.'),('2023-10-06 04:26:52.683706',20,'System','MY-013172','Server','Received SHUTDOWN from user root. Shutting down mysqld (Version: 8.0.34).'),('2023-10-06 04:26:52.685649',0,'System','MY-013105','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: Normal shutdown.'),('2023-10-06 04:26:53.460701',0,'System','MY-010910','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: Shutdown complete (mysqld 8.0.34)  MySQL Community Server - GPL.'),('2023-10-06 04:26:55.065728',0,'System','MY-010116','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe (mysqld 8.0.34) starting as process 11064'),('2023-10-06 04:26:55.103679',1,'System','MY-013576','InnoDB','InnoDB initialization has started.'),('2023-10-06 04:26:55.704271',1,'System','MY-013577','InnoDB','InnoDB initialization has ended.'),('2023-10-06 04:26:56.528040',0,'Warning','MY-010068','Server','CA certificate ca.pem is self signed.'),('2023-10-06 04:26:56.530011',0,'System','MY-013602','Server','Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.'),('2023-10-06 04:26:56.611517',0,'System','MY-011323','Server','X Plugin ready for connections. Bind-address: \'::\' port: 33060'),('2023-10-06 04:26:56.612425',0,'System','MY-010931','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: ready for connections. Version: \'8.0.34\'  socket: \'\'  port: 3306  MySQL Community Server - GPL.'),('2023-10-06 04:37:47.898615',0,'System','MY-010116','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe (mysqld 8.0.34) starting as process 5664'),('2023-10-06 04:37:48.036198',1,'System','MY-013576','InnoDB','InnoDB initialization has started.'),('2023-10-06 04:37:49.663769',1,'System','MY-013577','InnoDB','InnoDB initialization has ended.'),('2023-10-06 04:37:51.221696',0,'System','MY-010229','Server','Starting XA crash recovery...'),('2023-10-06 04:37:51.231744',0,'System','MY-010232','Server','XA crash recovery finished.'),('2023-10-06 04:37:51.787180',0,'Warning','MY-010068','Server','CA certificate ca.pem is self signed.'),('2023-10-06 04:37:51.788357',0,'System','MY-013602','Server','Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.'),('2023-10-06 04:37:51.909844',0,'System','MY-011323','Server','X Plugin ready for connections. Bind-address: \'::\' port: 33060'),('2023-10-06 04:37:51.910058',0,'System','MY-010931','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: ready for connections. Version: \'8.0.34\'  socket: \'\'  port: 3306  MySQL Community Server - GPL.'),('2023-10-06 04:38:58.640560',0,'System','MY-013105','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: Normal shutdown.'),('2023-10-06 04:38:59.373531',0,'System','MY-010910','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: Shutdown complete (mysqld 8.0.34)  MySQL Community Server - GPL.'),('2023-10-06 04:39:29.143584',0,'System','MY-010116','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe (mysqld 8.0.34) starting as process 5384'),('2023-10-06 04:39:29.321387',1,'System','MY-013576','InnoDB','InnoDB initialization has started.'),('2023-10-06 04:39:30.879469',1,'System','MY-013577','InnoDB','InnoDB initialization has ended.'),('2023-10-06 04:39:32.524245',0,'Warning','MY-010068','Server','CA certificate ca.pem is self signed.'),('2023-10-06 04:39:32.525511',0,'System','MY-013602','Server','Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.'),('2023-10-06 04:39:32.665625',0,'System','MY-011323','Server','X Plugin ready for connections. Bind-address: \'::\' port: 33060'),('2023-10-06 04:39:32.665946',0,'System','MY-010931','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: ready for connections. Version: \'8.0.34\'  socket: \'\'  port: 3306  MySQL Community Server - GPL.'),('2023-10-06 04:40:26.370903',0,'System','MY-013105','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: Normal shutdown.'),('2023-10-06 04:40:27.616277',0,'System','MY-010910','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: Shutdown complete (mysqld 8.0.34)  MySQL Community Server - GPL.'),('2023-10-06 04:40:55.456654',0,'System','MY-010116','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe (mysqld 8.0.34) starting as process 5528'),('2023-10-06 04:40:55.649125',1,'System','MY-013576','InnoDB','InnoDB initialization has started.'),('2023-10-06 04:40:57.070903',1,'System','MY-013577','InnoDB','InnoDB initialization has ended.'),('2023-10-06 04:40:58.422917',0,'Warning','MY-010068','Server','CA certificate ca.pem is self signed.'),('2023-10-06 04:40:58.424252',0,'System','MY-013602','Server','Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.'),('2023-10-06 04:40:58.582135',0,'System','MY-011323','Server','X Plugin ready for connections. Bind-address: \'::\' port: 33060'),('2023-10-06 04:40:58.582356',0,'System','MY-010931','Server','C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqld.exe: ready for connections. Version: \'8.0.34\'  socket: \'\'  port: 3306  MySQL Community Server - GPL.'),('2023-10-17 05:07:54.804774',192,'Warning','MY-013360','Server','Plugin sha256_password reported: \'\'sha256_password\' is deprecated and will be removed in a future release. Please use caching_sha2_password instead\''),('2024-03-17 06:02:06.056594',10310,'Warning','MY-013712','Server','No suitable \'keyring_component_metadata_query\' service implementation found to fulfill the request.');
/*!40000 ALTER TABLE `error_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:16
