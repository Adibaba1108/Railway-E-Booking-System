CREATE DATABASE  IF NOT EXISTS `reservation_data` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `reservation_data`;
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: reservation_data
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_table` (
  `Index` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`Index`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table`
--

LOCK TABLES `admin_table` WRITE;
/*!40000 ALTER TABLE `admin_table` DISABLE KEYS */;
INSERT INTO `admin_table` VALUES (1,'admin','0192023a7bbd73250516f069df18b500');
/*!40000 ALTER TABLE `admin_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints` (
  `Complaint_date` datetime NOT NULL,
  `Subject` varchar(155) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES ('2019-04-26 03:30:00','Regarding Bad Food','When I travel in Jhelum express on 24-03-2017 and order my lunch, they serve me food which smells very bad and does not looks fresh. Please look into this matter.');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `TrainNumber` int(11) NOT NULL,
  `StopNumber` int(11) NOT NULL AUTO_INCREMENT,
  `StationName` varchar(15) NOT NULL,
  `ArrivalTime` datetime NOT NULL,
  `DepartureTime` datetime NOT NULL,
  PRIMARY KEY (`TrainNumber`,`StopNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (100000,1,'New Delhi','2017-03-23 20:30:00','2017-03-23 20:35:00'),(100000,2,'Aligarh Junc','2017-03-23 22:32:00','2017-03-23 22:34:00'),(100000,3,'Kanpur Central','2017-03-24 02:40:00','2017-03-24 02:45:00'),(100000,4,'Allahabad Junc','2017-03-24 05:30:00','2017-03-24 05:55:00'),(100000,5,'Gyanpur Road','2017-03-24 07:02:00','2017-03-24 07:04:00'),(100000,6,'Bhulanpur','2017-03-24 08:00:00','2017-03-24 08:01:00'),(100000,7,'Varanasi Junc','2017-03-24 08:25:00','2017-03-24 08:35:00'),(100000,8,'Aunrihar Junc','2017-03-24 09:18:00','2017-03-24 09:20:00'),(100000,9,'Ghazipur City','2017-03-24 09:50:00','2017-03-24 09:55:00'),(100000,10,'Yusufpur','2017-03-24 10:15:00','2017-03-24 10:17:00'),(100000,11,'Ballia','2017-03-24 11:05:00','2017-03-24 11:10:00'),(100000,12,'Suraimanpur','2017-03-24 11:43:00','2017-03-24 11:45:00'),(100000,13,'Chhapra','2017-03-24 12:45:00','2017-03-24 13:00:00'),(100000,14,'Sonpur Junc','2017-03-24 13:53:00','2017-03-24 13:55:00'),(100000,15,'Hajipur Junc','2017-03-24 14:08:00','2017-03-24 14:10:00'),(100000,16,'MuzaffarpurJunc','2017-03-24 15:25:00','2017-03-24 15:30:00'),(100000,17,'Samastipur Junc','2017-03-24 16:35:00','2017-03-24 17:00:00'),(100000,18,'Darbhanga Junc','2017-03-24 17:50:00','2017-03-25 00:00:00');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `pnr` int(11) NOT NULL,
  `passenger_name` varchar(40) NOT NULL,
  `TrainNumber` int(11) NOT NULL,
  `no_of_seats` int(11) NOT NULL,
  `train_status` varchar(20) NOT NULL,
  `booking_date` date NOT NULL,
  `booked_on` datetime NOT NULL,
  PRIMARY KEY (`pnr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (125196,'ankit',100000,2,'confirm','2017-03-25','2017-04-29 12:04:00');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train_status`
--

DROP TABLE IF EXISTS `train_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train_status` (
  `TrainNumber` int(11) NOT NULL,
  `available_seats` int(11) NOT NULL,
  `booked_seats` int(11) NOT NULL,
  `available_Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_status`
--

LOCK TABLES `train_status` WRITE;
/*!40000 ALTER TABLE `train_status` DISABLE KEYS */;
INSERT INTO `train_status` VALUES (100000,298,2,'2017-03-25'),(100001,200,0,'2017-03-25');
/*!40000 ALTER TABLE `train_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trains` (
  `TrainNumber` int(6) NOT NULL,
  `TrainName` varchar(20) NOT NULL,
  `Start` varchar(20) NOT NULL,
  `End` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL,
  PRIMARY KEY (`TrainNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trains`
--

LOCK TABLES `trains` WRITE;
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` VALUES (100000,'Swatantra Senani','New Delhi','Darbhanga','Superfast'),(100004,'Shaheed Express','New Delhi','Patna','Express'),(100005,'Nagpur Mail','Nagpur','Mumbai Central','Passenger'),(100006,'Magadh Intercity','Patna','Patliputra','Intercity'),(100007,'Bhopal Rajdhani','New Delhi','Bhopal','Rajdhani'),(100008,'Chandigarh Shatabdi','New Delhi','Chandigarh','Shatabdi'),(111005,'GangaSagar Express','Howrah','Patna','Express'),(111236,'Tamil Nadu Express','New Delhi','Chennai','SuperFast'),(100001,'Garibbi','Delhi','Bihar','Express');
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(30) NOT NULL,
  `UserEmail` varchar(60) NOT NULL,
  `UserPass` varchar(255) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Age` int(11) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `userEmail` (`UserEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abhinav','abhinav@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','M',21,800000000,'Jamia','Delhi'),(2,'abhijeet','abhijeet@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','M',22,101010101,'Dwarka','Delhi'),(3,'pradeep','pradeep@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','M',55,454654545,'Gara','Mumbai'),(4,'chandana','ch@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','M',32,2329329392,'Orla','Bangaluru'),(5,'abhilasha','abhilasha@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','F',25,1222222222,'Dwarka','Delhi'),(6,'aloka','aloka@gmail.com','d9bfae29d57f6694f8dad49a92decf30193164bf7e853c547a0c2031f5feffc6','F',20,6767767676,'Sata','Punjab'),(7,'Abhay','abhaycharan13@gmail.com','0e82cdaae6ccba9b53eed0383bdebe37','M',21,8888888888,'Goa','Goa'),(9,'Abhinav','abhinav1@gmail.com','1fcb496b896c30460436fa030ffbc4e6','M',23,9999999999,'Delhi','Delhi'),(12,'ankit','ankit@gmail.com','447d2c8dc25efbc493788a322f1a00e7','M',20,99999999999,'delhi','delhi');
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

-- Dump completed on 2019-04-26 13:06:50
