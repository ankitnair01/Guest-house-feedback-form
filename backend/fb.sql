/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for osx10.19 (arm64)
--
-- Host: localhost    Database: feedbackdb
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guestHouse` varchar(255) NOT NULL,
  `frontOffice` varchar(255) NOT NULL,
  `food` varchar(255) NOT NULL,
  `staff` varchar(255) NOT NULL,
  `houseKeeping` varchar(255) NOT NULL,
  `cleanliness` varchar(255) NOT NULL,
  `toiletries` varchar(255) NOT NULL,
  `overall` varchar(255) NOT NULL,
  `comments` text,
  `roomNo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES
(1,'HAILEY ROAD GH','Excellent','Good','Fair','Poor','Fair','Good','Excellent','hgiydf','1012','Ankit Nair',NULL,NULL),
(2,'BENGALI MARKET GH','Excellent','Good','Fair','Poor','Fair','Good','Excellent','jkbf;wd','1012','Ankit Nair',NULL,NULL),
(3,'BENGALI MARKET GH','Excellent','Good','Fair','Poor','Fair','Fair','Excellent','jkbf;wd','1012','Ankit Nair',NULL,NULL),
(4,'NOIDA COLONY GH','Excellent','Excellent','Excellent','Excellent','Fair','Good','Excellent','Needs improvement','222','Rana sir',NULL,NULL),
(5,'GK-1 GH','Excellent','Excellent','Good','Excellent','Good','Fair','Poor','Check 1','1000','Ank',NULL,NULL),
(6,'BENGALI MARKET GH','Excellent','Good','Good','Fair','Good','Excellent','Poor','check 2','1001','Ankit',NULL,NULL),
(7,'BENGALI MARKET GH','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','check 3','1003','Ankit Nair',NULL,NULL),
(8,'NEW FRIENDS COLONY GH','Good','Excellent','Fair','Good','Poor','Good','Excellent','Check 1','1111','aaa','aasa@gmail.com','2457854213'),
(9,'GK-1 GH','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','check 2','1111','aaa','aasa@gmail.com','2457854213'),
(10,'GK-1 GH','Excellent','Excellent','Excellent','Excellent','Poor','Poor','Poor','Check 3','1111','aaa','aasa@gmail.com','2457854213'),
(11,'GK-1 GH','Poor','Poor','Poor','Poor','Poor','Poor','Poor','check 4','1111','aaa','aasa@gmail.com',''),
(12,'GK-1 GH','Poor','Poor','Poor','Poor','Poor','Poor','Poor','check 5','1111','aaa','',''),
(13,'NOIDA COLONY GH','Poor','Poor','Poor','Poor','Poor','Poor','Poor','dc','1111','aaa','',''),
(14,'GK-1 GH','Fair','Fair','Fair','Fair','Fair','Fair','Fair','dcokedmc','ddd','dd','',''),
(15,'GK-1 GH','Fair','Fair','Fair','Fair','Fair','Fair','Fair','kshbx','1111','aaa','',''),
(16,'GK-1 GH','Fair','Fair','Fair','Fair','Fair','Fair','Fair','kshbx','1111','aaa','','');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-07-12 15:43:28
