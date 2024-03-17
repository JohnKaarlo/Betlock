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
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('betlock','account_user','2024-03-11 10:53:34',6,1,3),('betlock','auth_group','2023-10-17 05:34:21',0,1,1),('betlock','auth_group_permissions','2023-10-17 05:34:22',0,1,2),('betlock','auth_permission','2024-03-09 08:26:40',56,1,1),('betlock','auth_user','2023-10-18 06:51:26',2,1,1),('betlock','auth_user_groups','2023-10-17 05:34:22',0,1,2),('betlock','auth_user_user_permissions','2023-10-17 05:34:22',0,1,2),('betlock','bet_bet','2023-12-17 06:58:53',1,1,2),('betlock','blog_blog','2024-02-01 15:04:55',6,1,3),('betlock','django_admin_log','2024-02-01 14:42:11',138,1,2),('betlock','django_content_type','2024-03-09 08:26:20',14,1,1),('betlock','django_migrations','2024-01-31 11:45:27',73,1,0),('betlock','django_session','2024-03-17 03:17:39',31,1,1),('betlock','game_game','2024-03-09 08:26:30',4,1,3),('betlock','game_game_winner','2024-03-09 08:26:20',0,1,0),('betlock','payment_withdraw','2024-02-09 08:40:27',1,1,2),('mysql','component','2023-10-06 04:25:16',0,1,0),('sakila','actor','2023-10-06 04:26:21',3,1,1),('sakila','address','2023-10-06 04:26:21',603,6,1),('sakila','category','2023-10-06 04:26:21',16,1,0),('sakila','city','2023-10-06 04:26:21',600,3,1),('sakila','country','2023-10-06 04:26:21',109,1,0),('sakila','customer','2023-10-06 04:26:21',599,5,3),('sakila','film','2023-10-06 04:26:21',1000,12,5),('sakila','film_actor','2023-10-06 04:26:22',5462,12,5),('sakila','film_category','2023-10-06 04:26:23',1000,4,1),('sakila','film_text','2023-10-06 04:26:22',1000,11,1),('sakila','inventory','2023-10-06 04:26:24',4581,11,12),('sakila','language','2023-10-06 04:26:26',6,1,0),('sakila','payment','2023-10-06 04:26:26',15400,97,39),('sakila','rental','2023-10-06 04:26:36',15834,97,73),('sakila','staff','2023-10-06 04:26:46',2,4,2),('sakila','store','2023-10-06 04:26:20',0,1,2),('sys','sys_config','2023-10-06 04:25:17',6,1,0),('world','city','2023-10-06 04:26:24',0,1,1),('world','country','2023-10-06 04:26:26',0,1,0),('world','countrylanguage','2023-10-06 04:26:26',0,1,1);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:44
