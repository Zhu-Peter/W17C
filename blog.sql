/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: w17c
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `blogger`
--

DROP TABLE IF EXISTS `blogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `email` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL CHECK (`age` >= 18 and `age` < 120),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogger`
--

LOCK TABLES `blogger` WRITE;
/*!40000 ALTER TABLE `blogger` DISABLE KEYS */;
INSERT INTO `blogger` VALUES
(11,'alice123','secure_password','Passionate about blogging','Alice Johnson','2022-05-10 06:00:00','alice@example.com',21),
(12,'bob456','strong_pw','Tech enthusiast','Bob Smith','2022-06-15 06:00:00','bob@example.com',30),
(13,'alex321','the_password','Passionate about blogging','Alex Johnson','2024-05-10 06:00:00','alex@example.com',23),
(14,'bobby123','strong_password','Tech enthusiast','Bobby Smith','2024-06-15 06:00:00','bobby@example.com',31),
(15,'john23','pass','Passionate about blogging','John Johnson','2023-05-10 06:00:00','john@example.com',22),
(16,'kevin456','strong_pwpwpw','Tech enthusiast','Kevin Smith','2023-06-15 06:00:00','kebvin@example.com',39),
(17,'miketheblog','secret1234567','Fitness blogger','Mike Brown','2021-07-20 06:00:00','mike@example.com',62),
(18,'blog2221','pass','Passionate about blogging','Brian Johnson','2021-05-10 06:00:00','blog@example.com',45),
(19,'newblogger','strong_pw','Tech enthusiast','Alvin Smith','2020-06-15 06:00:00','newblog@example.com',50),
(20,'jkblog','19990101','Fitness blogger','J.K. Brown','2020-07-20 06:00:00','jkbrown@example.com',22);
/*!40000 ALTER TABLE `blogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'w17c'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-06-20 19:01:45
