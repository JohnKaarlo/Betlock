CREATE DATABASE  IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mysql`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mysql
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
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('mysql.infoschema','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.infoschema','localhost','FIREWALL_EXEMPT','N'),('mysql.infoschema','localhost','SYSTEM_USER','N'),('mysql.session','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.session','localhost','AUTHENTICATION_POLICY_ADMIN','N'),('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','FIREWALL_EXEMPT','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('mysql.sys','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.sys','localhost','FIREWALL_EXEMPT','N'),('mysql.sys','localhost','SYSTEM_USER','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ABORT_EXEMPT','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','FIREWALL_EXEMPT','Y'),('root','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('root','localhost','FLUSH_STATUS','Y'),('root','localhost','FLUSH_TABLES','Y'),('root','localhost','FLUSH_USER_RESOURCES','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','GROUP_REPLICATION_STREAM','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','PASSWORDLESS_USER_ADMIN','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','TELEMETRY_LOG_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:46
