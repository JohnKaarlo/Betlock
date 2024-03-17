CREATE DATABASE  IF NOT EXISTS `betlock` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `betlock`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: betlock
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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-17 05:34:21.647972'),(2,'auth','0001_initial','2023-10-17 05:34:22.602653'),(3,'admin','0001_initial','2023-10-17 05:34:22.870843'),(4,'admin','0002_logentry_remove_auto_add','2023-10-17 05:34:22.907836'),(5,'admin','0003_logentry_add_action_flag_choices','2023-10-17 05:34:22.924134'),(6,'contenttypes','0002_remove_content_type_name','2023-10-17 05:34:23.107223'),(7,'auth','0002_alter_permission_name_max_length','2023-10-17 05:34:23.208838'),(8,'auth','0003_alter_user_email_max_length','2023-10-17 05:34:23.290410'),(9,'auth','0004_alter_user_username_opts','2023-10-17 05:34:23.324465'),(10,'auth','0005_alter_user_last_login_null','2023-10-17 05:34:23.428054'),(11,'auth','0006_require_contenttypes_0002','2023-10-17 05:34:23.447507'),(12,'auth','0007_alter_validators_add_error_messages','2023-10-17 05:34:23.479733'),(13,'auth','0008_alter_user_username_max_length','2023-10-17 05:34:23.597311'),(14,'auth','0009_alter_user_last_name_max_length','2023-10-17 05:34:23.736812'),(15,'auth','0010_alter_group_name_max_length','2023-10-17 05:34:23.807659'),(16,'auth','0011_update_proxy_permissions','2023-10-17 05:34:23.840566'),(17,'auth','0012_alter_user_first_name_max_length','2023-10-17 05:34:23.939876'),(18,'personal','0001_initial','2023-10-17 05:34:23.973929'),(19,'personal','0002_organizer','2023-10-17 05:34:24.003562'),(20,'personal','0003_alter_organizer_table_alter_user_table','2023-10-17 05:34:24.044769'),(21,'personal','0004_alter_organizer_table_alter_user_table','2023-10-17 05:34:24.082969'),(22,'personal','0005_delete_organizer_delete_user','2023-10-17 05:34:24.112823'),(23,'sessions','0001_initial','2023-10-17 05:34:24.161850'),(24,'personal','0006_initial','2023-10-17 05:52:13.261074'),(25,'personal','0007_organizer','2023-10-18 04:39:28.128084'),(26,'personal','0008_rename_email_organizer_org_email_and_more','2023-10-18 05:14:18.089218'),(27,'personal','0009_organizer_is_active_user_is_active','2023-10-18 05:45:14.196687'),(28,'personal','0010_remove_organizer_is_active_remove_user_is_active','2023-10-18 06:16:22.797369'),(29,'personal','0011_delete_organizer_delete_user','2023-10-19 05:59:49.464272'),(30,'account','0001_initial','2023-10-20 06:54:01.612485'),(31,'account','0002_delete_user','2023-10-20 06:54:01.644236'),(32,'account','0003_initial','2023-10-20 06:55:42.180346'),(33,'account','0004_user_is_organizer','2023-10-20 07:36:31.197382'),(34,'game','0001_initial','2023-11-17 01:29:28.314599'),(35,'game','0002_game_is_local','2023-11-17 15:06:38.278745'),(36,'bet','0001_initial','2023-11-22 07:04:11.824243'),(37,'game','0003_game_date_created_game_status','2023-11-22 07:04:11.921115'),(38,'game','0004_rename_status_game_posted','2023-11-22 07:06:26.483689'),(39,'game','0005_game_date','2023-11-22 07:07:58.044012'),(40,'game','0006_remove_game_posted','2023-11-22 07:08:59.148547'),(41,'bet','0002_bet_bettor','2023-11-22 07:51:58.059728'),(42,'bet','0003_bet_game','2023-11-22 07:54:09.968132'),(43,'game','0007_game_organizer','2023-11-22 07:57:57.337328'),(44,'blog','0001_initial','2023-11-22 08:03:21.573899'),(45,'game','0008_game_slug','2023-11-26 01:12:21.999751'),(46,'game','0009_alter_game_slug','2023-11-26 01:16:52.071594'),(47,'game','0010_alter_game_date','2023-11-29 07:10:51.730862'),(48,'game','0011_game_is_done','2023-11-29 07:21:08.209664'),(49,'game','0012_game_winner','2023-11-29 07:36:45.756739'),(50,'game','0013_alter_game_winner','2023-11-29 07:39:02.434347'),(51,'game','0014_alter_game_winner','2023-11-29 07:40:14.173534'),(52,'bet','0004_alter_bet_team','2023-12-02 04:07:38.755288'),(53,'bet','0005_alter_bet_team','2023-12-02 04:08:41.447653'),(54,'bet','0006_alter_bet_team','2023-12-02 04:11:08.581431'),(55,'game','0015_alter_game_winner','2023-12-03 16:55:58.283442'),(56,'game','0016_alter_game_winner','2023-12-03 16:59:24.693033'),(57,'bet','0007_bet_status','2023-12-07 04:18:14.906032'),(58,'bet','0008_alter_bet_date','2023-12-07 08:47:04.549451'),(59,'bet','0009_alter_bet_status','2023-12-08 08:05:12.911256'),(60,'bet','0010_alter_bet_status','2023-12-08 08:26:20.150732'),(61,'bet','0011_alter_bet_amount','2023-12-08 17:27:26.616812'),(62,'account','0005_alter_user_wallet','2023-12-08 17:29:19.086657'),(63,'game','0017_game_logo_a_game_logo_b','2023-12-15 05:48:25.858278'),(64,'game','0018_alter_game_logo_a_alter_game_logo_b','2023-12-15 05:54:08.187553'),(65,'blog','0002_blog_image','2023-12-20 04:02:42.342089'),(66,'blog','0003_blog_slug','2023-12-20 04:23:05.893685'),(67,'blog','0004_blog_related_to','2023-12-21 14:09:05.665338'),(68,'payment','0001_initial','2024-01-02 03:28:09.627780'),(69,'account','0006_user_on_hold','2024-01-21 16:23:06.528649'),(70,'blog','0005_alter_blog_image','2024-01-26 04:01:30.371033'),(71,'blog','0006_alter_blog_image','2024-01-27 06:17:42.974610'),(72,'blog','0007_alter_blog_author','2024-01-31 11:43:41.847612'),(73,'blog','0008_alter_blog_author_alter_blog_related_to','2024-01-31 11:45:27.876991'),(74,'blog','0009_alter_blog_content','2024-02-01 14:27:03.056670'),(75,'payment','0002_withdraw_email','2024-02-09 07:37:42.824939'),(76,'game','0019_game_series_type','2024-03-09 08:15:52.744941'),(77,'game','0020_game_winner_game_game_winner','2024-03-09 08:26:20.184404'),(78,'account','0007_alter_user_username','2024-03-11 10:21:45.758002'),(79,'account','0008_alter_user_username','2024-03-11 10:32:52.361834'),(80,'account','0009_alter_user_username','2024-03-11 10:55:53.873731'),(81,'payment','0003_alter_withdraw_email','2024-03-14 07:33:12.132366');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:18:54
