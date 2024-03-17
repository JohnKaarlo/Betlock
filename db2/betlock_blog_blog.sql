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
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `author_id` bigint DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `related_to_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `blog_blog_author_id_8791af69_fk_account_user_id` (`author_id`),
  KEY `blog_blog_related_to_id_418feceb_fk_game_game_id` (`related_to_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_account_user_id` FOREIGN KEY (`author_id`) REFERENCES `account_user` (`id`),
  CONSTRAINT `blog_blog_related_to_id_418feceb_fk_game_game_id` FOREIGN KEY (`related_to_id`) REFERENCES `game_game` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (5,'Test blog detail','asdamdqklwmcklqwmelqwmklecjqwecqwklmcqhcqumqwcmeioqwceqoirumcqmrqwocjqdqqwcrjqwcmioqdsfawucrmiqwurvniqurpoqwkdlskqcov qwjrwqx\r\nqiowcqwrucniquqghiodmqsmcqw\r\nqcjmqhrinqwuivomqjwckqp,,kcpqwlcqw\r\ncrjqmwivrqwmijcroqwr','2023-12-20 04:26:16.399318',7,'FUnctional_Decomposition_Diagram.jpeg','test-blog-detail',25),(16,'Who\'s who','Add blog\'s content here, asdhajkejqwkcjqjqwcemqklAdd blog\'s content here, asdhajkejqwkcjqjqwcemqklAdd blog\'s content here, asdhajkejqwkcjqjqwcemqklAdd blog\'s content here, asdhajkejqwkcjqjqwcemqklAdd blog\'s content here, asdhajkejqwkcjqjqwcemqklAdd blog\'s content here, asdhajkejqwkcjqjqwcemqkl','2024-01-26 04:20:37.429079',9,'Betlock.png','whos-who',25),(18,'Welcome to BetLock','The main content of this study is to develop a web platform or a betting system for e-games in which the user can wager on their play or bet on which team or player they think will win. BetLock allows people to register either as a bettor or an organizer who could propose a local game to the admin to be featured and earn commission accordingly.','2024-02-01 14:42:01.840272',1,'Betlock_X30K5oW.png','welcome-to-betlock',NULL),(19,'Register now','In BetLock, registration is free, fast and easy. You only need an active mobile number and email which is used for confirmation. You may deposit through Paypal to start betting on your favorite teams. What else are you waiting for? Start now.','2024-02-01 14:56:12.392470',1,'signup.png','register-now',NULL),(20,'Earn by proposing local games now.','BetLock allows organizers to propose and organize local games and earn a commission for every bet gathered. Attracting bettors was made easy because BetLock allows organizers to create a blog post that can be linked to the said games. Be an organizer and earn now.','2024-02-01 15:04:55.983734',1,'bg.png','earn-by-proposing-local-games-now',NULL);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:18:55
