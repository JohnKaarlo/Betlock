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
-- Table structure for table `account_user`
--

DROP TABLE IF EXISTS `account_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `wallet` double NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_organizer` tinyint(1) NOT NULL,
  `on_hold` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobileNumber` (`mobileNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_user`
--

LOCK TABLES `account_user` WRITE;
/*!40000 ALTER TABLE `account_user` DISABLE KEYS */;
INSERT INTO `account_user` VALUES (1,'pbkdf2_sha256$600000$GDChAYkLsLOn05qdb9P5VZ$o1FfFMEUzG9Kr6S/DTZ6uH2HCeKKiXxO1XkfmJwaiJ4=','anonymouse','johnkaarlo.pacaldo@ctu.edu.ph','09322002204',1000,'2023-10-20 07:00:52.570558','2024-03-14 07:35:24.877991',1,1,1,1,1,0),(7,'pbkdf2_sha256$600000$juoUwQPICWTjOrVQHUdcdn$QEFlVHDBdtIONoVQclz6guinc71U7hqRFQ/M8ekF3Uw=','jake','jake@gmail.com','09987654321',20.6,'2023-10-20 08:28:32.368432','2023-12-09 01:12:14.335869',0,1,0,0,0,0),(9,'pbkdf2_sha256$600000$ug6pSci8F0n6y0JJPzRN14$v6Gop0PXMwVjHxhzwN/JqMdECgO7/0Fslwco5pTPZOc=','s','s@gmail.com','09335647392',51.66,'2023-10-23 10:27:58.100671','2024-03-16 00:39:25.227665',0,1,0,0,1,0),(19,'pbkdf2_sha256$600000$B2rcUI8RwMcSowTu4hsrja$U0J2caxqT1mmKVgb3zFPUdOPmoegLWhbrNBAU01S3u0=','a','a@gmail.com','09666666666',453.1,'2023-12-08 01:25:01.950380','2024-02-10 04:36:51.748914',0,1,0,0,0,0),(21,'pbkdf2_sha256$600000$30HkOF5jaheFqKlX98ExuT$3crSXS3YJWLCxsTOPxDkg5+mdMYRHC9W8CUYk3WO+LU=','kaarlo','jkpacsss@gmail.com','09933414650',0,'2023-12-08 03:21:53.482907','2023-12-08 03:21:53.500248',0,1,0,0,0,0),(22,'pbkdf2_sha256$600000$nsT5O0Qksw2GdayOpFvdwI$lqy/zWF2cvicpVmwp3ERWXRYbIiiEY7IjqI6bEW7Sp0=','jakeyy','jakemediana07@gmail.com','09848899009',1100,'2024-01-10 02:28:48.397135','2024-03-17 03:16:16.488341',0,1,0,0,0,100);
/*!40000 ALTER TABLE `account_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:18:56
