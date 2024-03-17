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
-- Table structure for table `objects_summary_global_by_type`
--

DROP TABLE IF EXISTS `objects_summary_global_by_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objects_summary_global_by_type` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint unsigned NOT NULL,
  UNIQUE KEY `OBJECT` (`OBJECT_TYPE`,`OBJECT_SCHEMA`,`OBJECT_NAME`)
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects_summary_global_by_type`
--

LOCK TABLES `objects_summary_global_by_type` WRITE;
/*!40000 ALTER TABLE `objects_summary_global_by_type` DISABLE KEYS */;
INSERT INTO `objects_summary_global_by_type` VALUES ('TABLE','mysql','dd_properties',0,0,0,0,0),('TABLE','mysql','schemata',0,0,0,0,0),('TABLE','mysql','tablespace_files',0,0,0,0,0),('TABLE','mysql','tablespaces',0,0,0,0,0),('TABLE','mysql','check_constraints',0,0,0,0,0),('TABLE','mysql','column_type_elements',0,0,0,0,0),('TABLE','mysql','columns',0,0,0,0,0),('TABLE','mysql','foreign_key_column_usage',0,0,0,0,0),('TABLE','mysql','foreign_keys',0,0,0,0,0),('TABLE','mysql','index_column_usage',0,0,0,0,0),('TABLE','mysql','index_partitions',0,0,0,0,0),('TABLE','mysql','indexes',0,0,0,0,0),('TABLE','mysql','table_partition_values',0,0,0,0,0),('TABLE','mysql','table_partitions',0,0,0,0,0),('TABLE','mysql','tables',0,0,0,0,0),('TABLE','mysql','triggers',0,0,0,0,0),('TABLE','mysql','view_routine_usage',0,0,0,0,0),('TABLE','mysql','view_table_usage',0,0,0,0,0),('TABLE','mysql','collations',0,0,0,0,0),('TABLE','mysql','character_sets',0,0,0,0,0),('TABLE','mysql','plugin',0,0,0,0,0),('TABLE','mysql','server_cost',0,0,0,0,0),('TABLE','mysql','engine_cost',0,0,0,0,0),('TABLE','mysql','resource_groups',0,0,0,0,0),('TABLE','mysql','gtid_executed',0,0,0,0,0),('TABLE','mysql','index_stats',0,0,0,0,0),('TABLE','mysql','table_stats',0,0,0,0,0),('TABLE','mysql','component',0,0,0,0,0),('TABLE','mysql','user',0,0,0,0,0),('TABLE','mysql','db',0,0,0,0,0),('TABLE','mysql','tables_priv',0,0,0,0,0),('TABLE','mysql','columns_priv',0,0,0,0,0),('TABLE','mysql','procs_priv',0,0,0,0,0),('TABLE','mysql','proxies_priv',0,0,0,0,0),('TABLE','mysql','role_edges',0,0,0,0,0),('TABLE','mysql','default_roles',0,0,0,0,0),('TABLE','mysql','global_grants',0,0,0,0,0),('TABLE','mysql','password_history',0,0,0,0,0),('TABLE','mysql','time_zone_leap_second',0,0,0,0,0),('TABLE','mysql','time_zone_name',0,0,0,0,0),('TABLE','mysql','time_zone',0,0,0,0,0),('TABLE','mysql','time_zone_transition_type',0,0,0,0,0),('TABLE','mysql','time_zone_transition',0,0,0,0,0),('TABLE','mysql','servers',0,0,0,0,0),('TABLE','mysql','func',0,0,0,0,0),('TABLE','mysql','slave_master_info',0,0,0,0,0),('TABLE','mysql','slave_relay_log_info',0,0,0,0,0),('TABLE','mysql','slave_worker_info',0,0,0,0,0),('TABLE','mysql','events',0,0,0,0,0),('TABLE','mysql','catalogs',0,0,0,0,0),('TABLE','mysql','column_statistics',0,0,0,0,0),('TABLE','mysql','parameter_type_elements',0,0,0,0,0),('TABLE','mysql','parameters',0,0,0,0,0),('TABLE','mysql','routines',0,0,0,0,0),('TABLE','betlock','django_migrations',75559,343438155600,1152800,4545200,4879870400),('TABLE','betlock','django_content_type',4804,116829894400,62400,24319200,2045451600),('TABLE','betlock','auth_group',20,1104315600,996800,55215600,472682400),('TABLE','betlock','auth_group_permissions',0,0,0,0,0),('TABLE','betlock','auth_user_groups',2,1592000,219200,796000,1372800),('TABLE','betlock','auth_user_user_permissions',4,37383200,108800,9345600,30144000),('TABLE','betlock','django_admin_log',4138,205596883200,950400,49684800,9519524000),('TABLE','betlock','auth_permission',2809,40454593200,643200,14401600,3451036800),('TABLE','betlock','auth_user',278,23212502000,290400,83498000,2371460000),('TABLE','betlock','django_session',20597,2036167564800,775200,98857200,8285012800),('TABLE','betlock','bet_bet',2005,82174988000,828000,40984800,1740156000),('TABLE','betlock','account_user',13172,838913210000,359200,63688800,22010782400),('TABLE','betlock','blog_blog',8178,301583908800,1035200,36877200,4357715200),('TABLE','betlock','payment_withdraw',213,1866969200,1296800,8764800,401699200),('TABLE','betlock','game_game_winner',0,0,0,0,0),('TABLE','betlock','game_game',404,30535072800,1067200,75581600,3896528000),('TABLE','performance_schema','session_variables',0,0,0,0,0),('TABLE','performance_schema','session_status',0,0,0,0,0),('TABLE','performance_schema','global_status',0,0,0,0,0),('TABLE','performance_schema','events_transactions_history_long',0,0,0,0,0),('TABLE','performance_schema','keyring_component_status',0,0,0,0,0),('TABLE','performance_schema','replication_applier_filters',0,0,0,0,0),('TABLE','performance_schema','events_stages_history_long',0,0,0,0,0),('TABLE','performance_schema','setup_objects',0,0,0,0,0),('TABLE','performance_schema','user_defined_functions',0,0,0,0,0),('TABLE','performance_schema','threads',0,0,0,0,0),('TABLE','performance_schema','events_waits_summary_global_by_event_name',0,0,0,0,0),('TABLE','performance_schema','memory_summary_global_by_event_name',0,0,0,0,0),('TABLE','performance_schema','keyring_keys',0,0,0,0,0),('TABLE','performance_schema','users',0,0,0,0,0),('TABLE','performance_schema','events_transactions_summary_by_account_by_event_name',0,0,0,0,0),('TABLE','performance_schema','events_errors_summary_global_by_error',0,0,0,0,0),('TABLE','performance_schema','innodb_redo_log_files',0,0,0,0,0),('TABLE','performance_schema','events_statements_summary_by_thread_by_event_name',0,0,0,0,0),('TABLE','performance_schema','events_waits_summary_by_account_by_event_name',0,0,0,0,0),('TABLE','performance_schema','events_statements_summary_by_digest',0,0,0,0,0),('TABLE','performance_schema','replication_applier_status_by_coordinator',0,0,0,0,0),('TABLE','performance_schema','global_variables',0,0,0,0,0),('TABLE','performance_schema','metadata_locks',0,0,0,0,0),('TABLE','performance_schema','events_stages_summary_by_user_by_event_name',0,0,0,0,0),('TABLE','performance_schema','replication_connection_status',0,0,0,0,0),('TABLE','performance_schema','socket_summary_by_instance',0,0,0,0,0),('TABLE','performance_schema','events_statements_summary_by_program',0,0,0,0,0),('TABLE','performance_schema','hosts',0,0,0,0,0),('TABLE','performance_schema','events_errors_summary_by_account_by_error',0,0,0,0,0),('TABLE','performance_schema','events_waits_history_long',0,0,0,0,0),('TABLE','performance_schema','memory_summary_by_account_by_event_name',0,0,0,0,0),('TABLE','performance_schema','events_waits_summary_by_host_by_event_name',0,0,0,0,0),('TABLE','performance_schema','status_by_account',0,0,0,0,0),('TABLE','performance_schema','processlist',0,0,0,0,0),('TABLE','performance_schema','events_transactions_summary_by_thread_by_event_name',0,0,0,0,0),('TABLE','performance_schema','setup_instruments',0,0,0,0,0),('TABLE','performance_schema','error_log',0,0,0,0,0),('TABLE','performance_schema','accounts',0,0,0,0,0),('TABLE','performance_schema','events_errors_summary_by_thread_by_error',0,0,0,0,0),('TABLE','performance_schema','events_waits_current',0,0,0,0,0),('TABLE','performance_schema','session_connect_attrs',0,0,0,0,0),('TABLE','performance_schema','memory_summary_by_user_by_event_name',0,0,0,0,0),('TABLE','performance_schema','rwlock_instances',0,0,0,0,0),('TABLE','performance_schema','events_statements_summary_by_account_by_event_name',0,0,0,0,0),('TABLE','performance_schema','events_statements_histogram_global',0,0,0,0,0),('TABLE','performance_schema','data_locks',0,0,0,0,0),('TABLE','performance_schema','events_errors_summary_by_host_by_error',0,0,0,0,0),('TABLE','performance_schema','events_statements_history',0,0,0,0,0),('TABLE','performance_schema','objects_summary_global_by_type',0,0,0,0,0);
/*!40000 ALTER TABLE `objects_summary_global_by_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:19
