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
-- Table structure for table `game_game`
--

DROP TABLE IF EXISTS `game_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_game` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `team_A` longtext NOT NULL,
  `team_B` longtext NOT NULL,
  `info_A` longtext NOT NULL,
  `info_B` longtext NOT NULL,
  `is_local` tinyint(1) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date` datetime(6) NOT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL,
  `winner` varchar(50) NOT NULL,
  `logo_A` varchar(100) NOT NULL,
  `logo_B` varchar(100) NOT NULL,
  `series_type` longtext NOT NULL DEFAULT (_utf8mb3'Best of 1'),
  `game_winner_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `game_game_organizer_id_25aa81be_fk_account_user_id` (`organizer_id`),
  KEY `game_game_game_winner_id_d64fa001_fk_game_game_winner_id` (`game_winner_id`),
  CONSTRAINT `game_game_game_winner_id_d64fa001_fk_game_game_winner_id` FOREIGN KEY (`game_winner_id`) REFERENCES `game_game_winner` (`id`),
  CONSTRAINT `game_game_organizer_id_25aa81be_fk_account_user_id` FOREIGN KEY (`organizer_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_game`
--

LOCK TABLES `game_game` WRITE;
/*!40000 ALTER TABLE `game_game` DISABLE KEYS */;
INSERT INTO `game_game` VALUES (24,'APBREN','BL','Please write information about the team!','Please write information about the team!',1,'2023-12-13 10:04:53.931886','2023-12-15 18:04:00.000000',9,'apbren-vs-bl',1,'APBREN','default.jpg','1.png','Best of 1',NULL),(25,'Mabolo','Blacklist','Please write information about the team!','Please write information about the team!',1,'2023-12-18 04:13:15.274249','2023-12-29 12:18:00.000000',9,'mabolo-vs-blacklist',0,'TBD','default.jpg','default.jpg','Best of 1',NULL),(27,'Team A','Team B','Please write information about the team!','Please write information about the team!',1,'2023-12-18 04:19:23.755140','2023-12-30 16:19:00.000000',9,'team-a-vs-team-b',0,'TBD','FDDs.png','default.jpg','Best of 1',NULL),(28,'Two WOrds','td','dasdasdkasdjk','asidjaisjdasd',1,'2024-02-04 05:10:36.487738','2024-02-04 05:10:24.000000',9,'two-words-vs-td',0,'TBD','default.jpg','default.jpg','Best of 1',NULL);
/*!40000 ALTER TABLE `game_game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:52
