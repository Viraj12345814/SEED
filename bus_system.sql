-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bus_system
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `booking_seats`
--

DROP TABLE IF EXISTS `booking_seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_seats` (
  `booking_seat_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `seat_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_seat_id`),
  KEY `booking_id` (`booking_id`),
  KEY `seat_id` (`seat_id`),
  CONSTRAINT `booking_seats_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  CONSTRAINT `booking_seats_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_seats`
--

LOCK TABLES `booking_seats` WRITE;
/*!40000 ALTER TABLE `booking_seats` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `bus_id` int DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `booking_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_id`),
  KEY `user_id` (`user_id`),
  KEY `bus_id` (`bus_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buses` (
  `bus_id` int NOT NULL AUTO_INCREMENT,
  `bus_name` varchar(100) DEFAULT NULL,
  `bus_number` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `journey_date` date DEFAULT NULL,
  `total_seats` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses`
--

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` VALUES (1,'VRL Travels','MH12AB4312','Pune','Mumbai','06:00:00','2026-04-10',40,800.00),(2,'Shivneri','MH14CD7821','Mumbai','Pune','08:30:00','2026-04-10',40,750.00),(3,'Orange Travels','MH15EF9023','Pune','Nashik','07:15:00','2026-04-10',40,600.00),(4,'SRS Travels','MH20GH1187','Nashik','Aurangabad','09:00:00','2026-04-10',40,550.00),(5,'VRL Travels','MH13JK6574','Pune','Kolhapur','10:30:00','2026-04-10',40,500.00),(6,'Paulo Travels','MH16LM8842','Kolhapur','Goa','18:00:00','2026-04-10',40,900.00),(7,'RedBus Express','MH17NP4319','Pune','Solapur','07:45:00','2026-04-10',40,500.00),(8,'Satara Express','MH18QR7725','Satara','Pune','06:30:00','2026-04-10',40,350.00),(9,'Sangli Travels','MH19ST6631','Sangli','Pune','08:00:00','2026-04-10',40,450.00),(10,'Belgaum Express','MH21UV5487','Belgaum','Kolhapur','11:00:00','2026-04-10',40,450.00),(11,'Hubli Travels','MH22WX9164','Hubli','Belgaum','12:30:00','2026-04-10',40,400.00),(12,'Ratnagiri Express','MH23YZ2741','Ratnagiri','Pune','16:00:00','2026-04-10',40,700.00),(13,'Indore Travels','MH24AA3928','Indore','Pune','19:00:00','2026-04-10',40,1000.00),(14,'Hyderabad Express','MH25BB7519','Hyderabad','Solapur','20:00:00','2026-04-10',40,900.00),(15,'Surat Travels','MH26CC6107','Surat','Mumbai','14:00:00','2026-04-10',40,700.00),(16,'Vadodara Express','MH27DD4395','Vadodara','Surat','15:30:00','2026-04-10',40,400.00),(17,'Bhopal Travels','MH28EE8206','Bhopal','Indore','17:45:00','2026-04-10',40,350.00),(18,'Udaipur Express','MH29FF1753','Udaipur','Vadodara','18:30:00','2026-04-10',40,850.00),(19,'Ahmednagar Travels','MH30GG9042','Ahmednagar','Pune','06:45:00','2026-04-10',40,300.00),(20,'Shirdi Express','MH31HH6639','Shirdi','Nashik','09:15:00','2026-04-10',40,250.00),(21,'Jalgaon Travels','MH32JJ4821','Jalgaon','Aurangabad','13:00:00','2026-04-10',40,450.00),(22,'Amravati Express','MH33KK7056','Amravati','Nagpur','21:00:00','2026-04-10',40,400.00),(23,'Nanded Travels','MH34LL9138','Nanded','Latur','20:30:00','2026-04-10',40,350.00),(24,'Latur Express','MH35MM2447','Latur','Solapur','11:15:00','2026-04-10',40,300.00),(25,'Ratnagiri Coastal','MH36NN6712','Ratnagiri','Sindhudurg','07:00:00','2026-04-10',40,300.00),(26,'Sindhudurg Express','MH37PP8326','Sindhudurg','Goa','18:45:00','2026-04-10',40,350.00),(27,'Karad Travels','MH38QQ5904','Karad','Satara','10:00:00','2026-04-10',40,250.00),(28,'Dhule Express','MH39RR4178','Dhule','Nashik','14:30:00','2026-04-10',40,350.00),(29,'Akola Travels','MH40SS2645','Akola','Amravati','22:00:00','2026-04-10',40,250.00),(30,'Solapur Night','MH41TT7032','Solapur','Pune','23:00:00','2026-04-10',40,500.00),(31,'Goa Sleeper','MH42UU5187','Goa','Kolhapur','21:30:00','2026-04-10',40,700.00),(32,'Mumbai Night','MH43VV6891','Mumbai','Surat','22:15:00','2026-04-10',40,600.00);
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `seat_id` int NOT NULL AUTO_INCREMENT,
  `bus_id` int DEFAULT NULL,
  `seat_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `bus_id` (`bus_id`),
  CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-17 15:41:28
