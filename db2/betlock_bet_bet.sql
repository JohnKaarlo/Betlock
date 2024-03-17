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
-- Table structure for table `bet_bet`
--

DROP TABLE IF EXISTS `bet_bet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bet_bet` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `team` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `bettor_id` bigint DEFAULT NULL,
  `game_id` bigint DEFAULT NULL,
  `status` longtext NOT NULL DEFAULT (_utf8mb3'TBD'),
  PRIMARY KEY (`id`),
  KEY `bet_bet_bettor_id_9e4856c3_fk_account_user_id` (`bettor_id`),
  KEY `bet_bet_game_id_ac2578ce_fk_game_game_id` (`game_id`),
  CONSTRAINT `bet_bet_bettor_id_9e4856c3_fk_account_user_id` FOREIGN KEY (`bettor_id`) REFERENCES `account_user` (`id`),
  CONSTRAINT `bet_bet_game_id_ac2578ce_fk_game_game_id` FOREIGN KEY (`game_id`) REFERENCES `game_game` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bet_bet`
--

LOCK TABLES `bet_bet` WRITE;
/*!40000 ALTER TABLE `bet_bet` DISABLE KEYS */;
INSERT INTO `bet_bet` VALUES (32,2,'Team A','2023-12-18 04:25:22.941353',19,24,'Win');
/*!40000 ALTER TABLE `bet_bet` ENABLE KEYS */;
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
