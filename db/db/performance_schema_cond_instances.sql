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
-- Table structure for table `cond_instances`
--

DROP TABLE IF EXISTS `cond_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cond_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint unsigned NOT NULL,
  PRIMARY KEY (`OBJECT_INSTANCE_BEGIN`),
  KEY `NAME` (`NAME`)
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cond_instances`
--

LOCK TABLES `cond_instances` WRITE;
/*!40000 ALTER TABLE `cond_instances` DISABLE KEYS */;
INSERT INTO `cond_instances` VALUES ('wait/synch/cond/sql/COND_manager',140699084772848),('wait/synch/cond/sql/COND_server_started',140699084188432),('wait/synch/cond/sql/COND_compress_gtid_table',140699084188448),('wait/synch/cond/sql/COND_handler_count',140699084192208),('wait/synch/cond/sql/MYSQL_BIN_LOG::update_cond',140699084807288),('wait/synch/cond/sql/MYSQL_BIN_LOG::prep_xids_cond',140699084809792),('wait/synch/cond/sql/MYSQL_BIN_LOG::COND_done',140699084810296),('wait/synch/cond/sql/MYSQL_BIN_LOG::COND_done',140699084810312),('wait/synch/cond/sql/MYSQL_BIN_LOG::COND_flush_queue',140699084810280),('wait/synch/cond/sql/MYSQL_BIN_LOG::COND_wait_for_group_turn',140699084810568),('wait/synch/cond/sql/COND_thread_cache',140699084192696),('wait/synch/cond/sql/COND_flush_thread_cache',140699084192712),('wait/synch/cond/sql/COND_connection_count',140699084192568),('wait/synch/cond/sql/COND_thd_list',2208330122840),('wait/synch/cond/sql/COND_thd_list',2208330122856),('wait/synch/cond/sql/COND_thd_list',2208330122872),('wait/synch/cond/sql/COND_thd_list',2208330122888),('wait/synch/cond/sql/COND_thd_list',2208330122904),('wait/synch/cond/sql/COND_thd_list',2208330122920),('wait/synch/cond/sql/COND_thd_list',2208330122936),('wait/synch/cond/sql/COND_thd_list',2208330122952),('wait/synch/cond/sql/COND_open',140699084771192),('wait/synch/cond/myisam/keycache_thread_var::suspend',140699085009152),('wait/synch/cond/sql/Source_info::data_cond',2208367008224),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208365746848),('wait/synch/cond/sql/COND_thr_lock',2208365751368),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208365758112),('wait/synch/cond/innodb/commit_cond',140699084883496),('wait/synch/cond/innodb/resume_encryption_cond',140699084883672),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208369104880),('wait/synch/cond/sql/COND_thr_lock',2208369109400),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208369116144),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208369117184),('wait/synch/cond/sql/COND_thr_lock',2208369121704),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208369128448),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208369623024),('wait/synch/cond/sql/COND_thr_lock',2208369627544),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208369634288),('wait/synch/cond/sql/Source_info::start_cond',2208367008240),('wait/synch/cond/sql/Source_info::stop_cond',2208367008256),('wait/synch/cond/sql/Source_info::sleep_cond',2208367008272),('wait/synch/cond/sql/Source_info::rotate_cond',2208367010200),('wait/synch/cond/sql/Relay_log_info::data_cond',2208367339296),('wait/synch/cond/sql/Relay_log_info::start_cond',2208367339312),('wait/synch/cond/sql/Relay_log_info::stop_cond',2208367339328),('wait/synch/cond/sql/Relay_log_info::sleep_cond',2208367339344),('wait/synch/cond/sql/Relay_log_info::log_space_cond',2208367345592),('wait/synch/cond/sql/Relay_log_info::pending_jobs_cond',2208367347184),('wait/synch/cond/sql/Relay_log_info::mta_gaq_cond',2208367339816),('wait/synch/cond/sql/MYSQL_RELAY_LOG::update_cond',2208367341008),('wait/synch/cond/sql/COND_queue_state',2208366990784),('wait/synch/cond/sql/Event_scheduler::COND_state',2208329869840),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208367362192),('wait/synch/cond/sql/COND_thr_lock',2208367366712),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208367373456),('wait/synch/cond/mysqlx/scheduler_dynamic_worker_pending',2208400540808),('wait/synch/cond/mysqlx/scheduler_dynamic_thread_exit',2208400540872),('wait/synch/cond/mysqlx/socket_acceptors_sync',2208113706440),('wait/synch/cond/mysqlx/broker_context_sync',2208367637464),('wait/synch/cond/mysqlx/scheduler_dynamic_worker_pending',2208400541320),('wait/synch/cond/mysqlx/scheduler_dynamic_thread_exit',2208400541384),('wait/synch/cond/mysqlx/server_state_sync',2208399366336),('wait/synch/cond/mysqlx/listener_tcp_sync',2208368813168),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208367349888),('wait/synch/cond/sql/COND_thr_lock',2208367354408),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208367361152),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208366770944),('wait/synch/cond/sql/COND_thr_lock',2208366775464),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208366782208),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208366783248),('wait/synch/cond/sql/COND_thr_lock',2208366787768),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208366794512),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208366795552),('wait/synch/cond/sql/COND_thr_lock',2208366800072),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208366806816),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208366807856),('wait/synch/cond/sql/COND_thr_lock',2208366812376),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208366819120),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208366820160),('wait/synch/cond/sql/COND_thr_lock',2208366824680),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208366831424),('wait/synch/cond/sql/Source_IO_monitor::run_cond',2208367103464),('wait/synch/cond/sql/Gtid_state',2208707782768),('wait/synch/cond/sql/Gtid_state',2208398442960),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208371286304),('wait/synch/cond/sql/COND_thr_lock',2208371290824),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208371297568),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208371323216),('wait/synch/cond/sql/COND_thr_lock',2208371327736),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208371334480),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208371274000),('wait/synch/cond/sql/COND_thr_lock',2208371278520),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208371285264),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208371347824),('wait/synch/cond/sql/COND_thr_lock',2208371352344),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208371359088),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208371335520),('wait/synch/cond/sql/COND_thr_lock',2208371340040),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208371346784),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208371261696),('wait/synch/cond/sql/COND_thr_lock',2208371266216),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208371272960),('wait/synch/cond/sql/MDL_context::COND_wait_status',2208371372432),('wait/synch/cond/sql/COND_thr_lock',2208371376952),('wait/synch/cond/sql/THD::COND_group_replication_connection_cond_var',2208371383696);
/*!40000 ALTER TABLE `cond_instances` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:25
