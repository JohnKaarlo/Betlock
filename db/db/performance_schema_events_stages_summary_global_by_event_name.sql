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
-- Table structure for table `events_stages_summary_global_by_event_name`
--

DROP TABLE IF EXISTS `events_stages_summary_global_by_event_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_stages_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint unsigned NOT NULL,
  PRIMARY KEY (`EVENT_NAME`)
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_stages_summary_global_by_event_name`
--

LOCK TABLES `events_stages_summary_global_by_event_name` WRITE;
/*!40000 ALTER TABLE `events_stages_summary_global_by_event_name` DISABLE KEYS */;
INSERT INTO `events_stages_summary_global_by_event_name` VALUES ('stage/sql/After create',0,0,0,0,0),('stage/sql/preparing for alter table',0,0,0,0,0),('stage/sql/altering table',0,0,0,0,0),('stage/sql/committing alter table to storage engine',0,0,0,0,0),('stage/sql/Changing replication source',0,0,0,0,0),('stage/sql/Checking source version',0,0,0,0,0),('stage/sql/checking permissions',0,0,0,0,0),('stage/sql/cleaning up',0,0,0,0,0),('stage/sql/closing tables',0,0,0,0,0),('stage/sql/Compressing gtid_executed table',0,0,0,0,0),('stage/sql/Connecting to source',0,0,0,0,0),('stage/sql/converting HEAP to ondisk',0,0,0,0,0),('stage/sql/copy to tmp table',37,4509300000,31200000,121800000,596000000),('stage/sql/creating table',0,0,0,0,0),('stage/sql/Creating tmp table',0,0,0,0,0),('stage/sql/deleting from main table',0,0,0,0,0),('stage/sql/deleting from reference tables',0,0,0,0,0),('stage/sql/discard_or_import_tablespace',0,0,0,0,0),('stage/sql/end',0,0,0,0,0),('stage/sql/executing',0,0,0,0,0),('stage/sql/Execution of init_command',0,0,0,0,0),('stage/sql/explaining',0,0,0,0,0),('stage/sql/Finished reading one binlog; switching to next binlog',0,0,0,0,0),('stage/sql/Flushing relay log and source info repository.',0,0,0,0,0),('stage/sql/Flushing relay-log info file.',0,0,0,0,0),('stage/sql/freeing items',0,0,0,0,0),('stage/sql/FULLTEXT initialization',0,0,0,0,0),('stage/sql/init',0,0,0,0,0),('stage/sql/Killing replica',0,0,0,0,0),('stage/sql/logging slow query',0,0,0,0,0),('stage/sql/Making temporary file (append) before replaying LOAD DATA INFILE',0,0,0,0,0),('stage/sql/manage keys',0,0,0,0,0),('stage/sql/Source has sent all binlog to replica; waiting for more updates',0,0,0,0,0),('stage/sql/Opening tables',0,0,0,0,0),('stage/sql/optimizing',0,0,0,0,0),('stage/sql/preparing',0,0,0,0,0),('stage/sql/Purging old relay logs',0,0,0,0,0),('stage/sql/query end',0,0,0,0,0),('stage/sql/Queueing source event to the relay log',0,0,0,0,0),('stage/sql/Reading event from the relay log',0,0,0,0,0),('stage/sql/Registering replica on source',0,0,0,0,0),('stage/sql/removing tmp table',0,0,0,0,0),('stage/sql/rename',0,0,0,0,0),('stage/sql/rename result table',0,0,0,0,0),('stage/sql/Requesting binlog dump',0,0,0,0,0),('stage/sql/Searching rows for update',0,0,0,0,0),('stage/sql/Sending binlog event to replica',0,0,0,0,0),('stage/sql/setup',0,0,0,0,0),('stage/sql/Replica has read all relay log; waiting for more updates',0,0,0,0,0),('stage/sql/Reconnecting after a failed binlog dump request',0,0,0,0,0),('stage/sql/Reconnecting after a failed source event read',0,0,0,0,0),('stage/sql/Reconnecting after a failed registration on source',0,0,0,0,0),('stage/sql/Waiting for an event from Coordinator',0,0,0,0,0),('stage/sql/Waiting for replica workers to process their queues',0,0,0,0,0),('stage/sql/Waiting for Replica Worker queue',0,0,0,0,0),('stage/sql/Waiting to reconnect after a failed binlog dump request',0,0,0,0,0),('stage/sql/Waiting to reconnect after a failed source event read',0,0,0,0,0),('stage/sql/Waiting to reconnect after a failed registration on source',0,0,0,0,0),('stage/sql/Waiting for Replica Workers to free pending events',0,0,0,0,0),('stage/sql/Waiting for Replica Worker to release partition',0,0,0,0,0),('stage/sql/Waiting for workers to exit',0,0,0,0,0),('stage/sql/Applying batch of row changes (write)',0,0,0,0,0),('stage/sql/Applying batch of row changes (update)',0,0,0,0,0),('stage/sql/Applying batch of row changes (delete)',0,0,0,0,0),('stage/sql/Waiting until SOURCE_DELAY seconds after source executed event',0,0,0,0,0),('stage/sql/statistics',0,0,0,0,0),('stage/sql/System lock',0,0,0,0,0),('stage/sql/update',0,0,0,0,0),('stage/sql/updating',0,0,0,0,0),('stage/sql/updating main table',0,0,0,0,0),('stage/sql/updating reference tables',0,0,0,0,0),('stage/sql/User sleep',0,0,0,0,0),('stage/sql/verifying table',0,0,0,0,0),('stage/sql/Waiting for GTID to be committed',0,0,0,0,0),('stage/sql/waiting for handler commit',0,0,0,0,0),('stage/sql/Waiting for source to send event',0,0,0,0,0),('stage/sql/Waiting for source update',0,0,0,0,0),('stage/sql/Waiting for the replica SQL thread to free relay log space',0,0,0,0,0),('stage/sql/Waiting for replica mutex on exit',0,0,0,0,0),('stage/sql/Waiting for replica thread to start',0,0,0,0,0),('stage/sql/Waiting for table flush',0,0,0,0,0),('stage/sql/Waiting for the next event in relay log',0,0,0,0,0),('stage/sql/Waiting for the replica SQL thread to advance position',0,0,0,0,0),('stage/sql/Waiting to finalize termination',0,0,0,0,0),('stage/sql/Waiting for preceding transaction to commit',0,0,0,0,0),('stage/sql/Waiting for dependent transaction to commit',0,0,0,0,0),('stage/sql/Suspending',0,0,0,0,0),('stage/sql/starting',0,0,0,0,0),('stage/sql/Waiting for no channel reference.',0,0,0,0,0),('stage/sql/Executing hook on transaction begin.',0,0,0,0,0),('stage/sql/Waiting for disk space',0,0,0,0,0),('stage/sql/Compressing transaction changes.',0,0,0,0,0),('stage/sql/Decompressing transaction changes.',0,0,0,0,0),('stage/sql/Fetching source member details from connected source',0,0,0,0,0),('stage/sql/Updating fetched source member details on receiver',0,0,0,0,0),('stage/sql/Wait before trying to fetch next membership changes from source',0,0,0,0,0),('stage/sql/Connection delegated to Group Replication',0,0,0,0,0),('stage/sql/Waiting for Binlog Group Commit ticket',0,0,0,0,0),('stage/mysys/Waiting for table level lock',0,0,0,0,0),('stage/sql/Waiting on empty queue',0,0,0,0,0),('stage/sql/Waiting for next activation',0,0,0,0,0),('stage/sql/Waiting for the scheduler to stop',0,0,0,0,0),('stage/sql/Waiting for global read lock',0,0,0,0,0),('stage/sql/Waiting for backup lock',0,0,0,0,0),('stage/sql/Waiting for tablespace metadata lock',0,0,0,0,0),('stage/sql/Waiting for schema metadata lock',0,0,0,0,0),('stage/sql/Waiting for table metadata lock',0,0,0,0,0),('stage/sql/Waiting for stored function metadata lock',0,0,0,0,0),('stage/sql/Waiting for stored procedure metadata lock',0,0,0,0,0),('stage/sql/Waiting for trigger metadata lock',0,0,0,0,0),('stage/sql/Waiting for event metadata lock',0,0,0,0,0),('stage/sql/Waiting for commit lock',0,0,0,0,0),('stage/sql/User lock',0,0,0,0,0),('stage/sql/Waiting for locking service lock',0,0,0,0,0),('stage/sql/Waiting for spatial reference system lock',0,0,0,0,0),('stage/sql/Waiting for acl cache lock',0,0,0,0,0),('stage/sql/Waiting for column statistics lock',0,0,0,0,0),('stage/sql/Waiting for resource groups metadata lock',0,0,0,0,0),('stage/sql/Waiting for foreign key metadata lock',0,0,0,0,0),('stage/sql/Waiting for check constraint metadata lock',0,0,0,0,0),('stage/innodb/alter table (end)',77,112903200000,400000,1466200000,18032800000),('stage/innodb/alter table (flush)',0,0,0,0,0),('stage/innodb/alter table (insert)',38,4755300000,100000,125100000,1154800000),('stage/innodb/alter table (log apply index)',24,19662200000,6000000,819200000,9564100000),('stage/innodb/alter table (log apply table)',14,324592800000,225300000,23185200000,152847600000),('stage/innodb/alter table (merge sort)',44,3968200000,0,90100000,2776000000),('stage/innodb/alter table (read PK and internal sort)',58,110963600000,100000,1913100000,28713600000),('stage/innodb/alter tablespace (encryption)',0,0,0,0,0),('stage/innodb/buffer pool load',1,1030700000,1030700000,1030700000,1030700000),('stage/innodb/clone (file copy)',0,0,0,0,0),('stage/innodb/clone (redo copy)',0,0,0,0,0),('stage/innodb/clone (page copy)',0,0,0,0,0);
/*!40000 ALTER TABLE `events_stages_summary_global_by_event_name` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:21
