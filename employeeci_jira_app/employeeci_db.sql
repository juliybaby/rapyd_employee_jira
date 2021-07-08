-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: employeeci
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employeers_bankinfo`
--

DROP TABLE IF EXISTS `employeers_bankinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeers_bankinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_description` varchar(100) DEFAULT NULL,
  `s_merchant_reference_id` varchar(100) DEFAULT NULL,
  `s_payout_currency` varchar(100) DEFAULT NULL,
  `s_payout_method_type` varchar(100) DEFAULT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `s_state` varchar(100) DEFAULT NULL,
  `s_date_of_birth` varchar(100) DEFAULT NULL,
  `s_postcode` varchar(100) DEFAULT NULL,
  `s_phonenumber` varchar(100) DEFAULT NULL,
  `s_remitter_account_type` varchar(100) DEFAULT NULL,
  `s_source_of_income` varchar(100) DEFAULT NULL,
  `s_identification_type` varchar(100) DEFAULT NULL,
  `s_identification_value` varchar(100) DEFAULT NULL,
  `s_purpose_code` varchar(100) DEFAULT NULL,
  `s_account_number` varchar(100) DEFAULT NULL,
  `s_beneficiary_relationship` varchar(100) DEFAULT NULL,
  `s_sender_country` varchar(100) DEFAULT NULL,
  `s_sender_currency` varchar(100) DEFAULT NULL,
  `s_sender_entity_type` varchar(100) DEFAULT NULL,
  `creator_id` varchar(100) DEFAULT NULL,
  `timing` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeers_bankinfo`
--

LOCK TABLES `employeers_bankinfo` WRITE;
/*!40000 ALTER TABLE `employeers_bankinfo` DISABLE KEYS */;
INSERT INTO `employeers_bankinfo` VALUES (4,'Salary Payout to Employee Bank Account','GHY-0YU-HUJ-POI','USD','us_general_bank','John Doe','123 First Street','Anytown','NY','22/02/1980','12345','621212938122','Individual','Salary','License No','123456789','ABCDEFGHI','123456789','client','US','USD','Individual','4','1625717276','ok');
/*!40000 ALTER TABLE `employeers_bankinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_token` varchar(200) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone_no` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `created_time` varchar(200) DEFAULT NULL,
  `timer` varchar(200) DEFAULT NULL,
  `lastdate_pay` varchar(200) DEFAULT NULL,
  `lastdate_time` varchar(200) DEFAULT NULL,
  `payment_status` varchar(200) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `creator_id` varchar(20) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `wallet_id` varchar(200) DEFAULT NULL,
  `b_name` varchar(100) DEFAULT NULL,
  `b_address` varchar(100) DEFAULT NULL,
  `b_email` varchar(100) DEFAULT NULL,
  `b_country` varchar(100) DEFAULT NULL,
  `b_city` varchar(100) DEFAULT NULL,
  `b_postcode` varchar(100) DEFAULT NULL,
  `b_account_number` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `b_state` varchar(100) DEFAULT NULL,
  `b_identification_type` varchar(100) DEFAULT NULL,
  `b_identification_value` varchar(100) DEFAULT NULL,
  `b_bic_swift` varchar(100) DEFAULT NULL,
  `b_ach_code` varchar(100) DEFAULT NULL,
  `b_beneficiary_country` varchar(100) DEFAULT NULL,
  `b_beneficiary_entity_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (10,'45080d95709d3aa80eb680d731c7020e1625717483','Tony Cool','employee1@gmail.com','080','5ad688712421050da32b38e3986a5f2d1625717483.png','Engineering',NULL,'Thursday, July 8, 2021, 12:11 am','1625717483','00:00:00','00:00:00','Not Yet','200','4','Cool','Tony','ewallet_35dd5d3e8cf26f5e308d8d477d545c77','Tony Cool','456 Second Street','janedoe@rapyd.net','US','US','10101','BG96611020345678','US General Bank','NY','SSC','123456789','BUINBGSF','123456789','US','individual'),(11,'c6a9480094d3feb86c4b3818535873231625717556','Philip Carrot','employee2@gmail.com','080','7619e1716302fc80aeb9c99679c2787a1625717555.png','Operations',NULL,'Thursday, July 8, 2021, 12:12 am','1625717556','00:00:00','00:00:00','Not Yet','260','4','Carrot','Philip','ewallet_7797be75b3e0d59d6251b325bf7c4036','Philip Carrot','456 Second Street','janedoe@rapyd.net','US','US','10101','BG96611020345678','US General Bank','NY','SSC','123456789','BUINBGSF','123456789','US','individual'),(12,'34ca67e67801b6435ab00f923ecfa1421625717654','Venus Johnson','employee@gmail.com','080','62b3eb64269d8dae7b640a3a8aad05e31625717654.png','Design',NULL,'Thursday, July 8, 2021, 12:14 am','1625717654','00:00:00','00:00:00','Not Yet','270','4','Johnson','Venus','ewallet_dfc8197fd2bd387064a0aae41e4381ab','Venus Johnson','456 Second Street','janedoe@rapyd.net','US','US','10101','BG96611020345678','US General Bank','NY','SSC','123456789','BUINBGSF','123456789','US','individual'),(13,'f94fc2376c766a1fb5395294839bd92d1625717748','Ann ball','employee42@gmail.com','080','897afb28acfe5edbcadbbb8ea72ba1751625717748.png','Supports',NULL,'Thursday, July 8, 2021, 12:15 am','1625717748','00:00:00','00:00:00','Not Yet','220','4','ball','Ann','ewallet_f93f8013fdf0f6c43c59c231e125c1c5','Ann ball','456 Second Street','janedoe@rapyd.net','US','US','10101','BG96611020345678','US General Bank','NY','SSC','123456789','BUINBGSF','123456789','US','individual');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_emp_rapyd`
--

DROP TABLE IF EXISTS `salary_emp_rapyd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_emp_rapyd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(200) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `user_token` varchar(200) DEFAULT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `payout_id` varchar(200) DEFAULT NULL,
  `payout_status` varchar(20) DEFAULT NULL,
  `timing` varchar(30) DEFAULT NULL,
  `payment_type1` varchar(100) DEFAULT NULL,
  `payment_type2` varchar(100) DEFAULT NULL,
  `salary_amount` varchar(30) DEFAULT NULL,
  `month_date` varchar(50) DEFAULT NULL,
  `month_period` varchar(50) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `creator_id` varchar(50) DEFAULT NULL,
  `user_ewallet_id` varchar(200) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `amount_pay` varchar(100) DEFAULT NULL,
  `recipient_id` varchar(200) DEFAULT NULL,
  `sender_name` varchar(100) DEFAULT NULL,
  `sender_photo` varchar(100) DEFAULT NULL,
  `sender_relation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_emp_rapyd`
--

LOCK TABLES `salary_emp_rapyd` WRITE;
/*!40000 ALTER TABLE `salary_emp_rapyd` DISABLE KEYS */;
INSERT INTO `salary_emp_rapyd` VALUES (17,'62b3eb64269d8dae7b640a3a8aad05e31625717654.png','Venus Johnson','Design','34ca67e67801b6435ab00f923ecfa1421625717654','12','payout_716ef0d7dcccddc853cb8a6d9d155734','Created','1625717808','Disburse','Payout to Bank','270','7','2021-07-08',NULL,'4','ewallet_dfc8197fd2bd387064a0aae41e4381ab',NULL,NULL,'employee@gmail.com','Esedo Fredrick','good1625716730.png',NULL),(18,'5ad688712421050da32b38e3986a5f2d1625717483.png','Tony Cool','Engineering','45080d95709d3aa80eb680d731c7020e1625717483','10','769b5811-dfa3-11eb-b38b-02240218ee6d','CLO','1625717867','Wallet','Wallet Fund Transfer','200','7','2021-07-08',NULL,'4','ewallet_35dd5d3e8cf26f5e308d8d477d545c77',NULL,NULL,'employee1@gmail.com','Esedo Fredrick','good1625716730.png',NULL),(19,'7619e1716302fc80aeb9c99679c2787a1625717555.png','Philip Carrot','Operations','c6a9480094d3feb86c4b3818535873231625717556','11','99250b08-dfa3-11eb-b38b-02240218ee6d','PEN','1625717927','Wallet','Wallet Fund Transfer','260','7','2021-07-08',NULL,'4','ewallet_7797be75b3e0d59d6251b325bf7c4036',NULL,NULL,'employee2@gmail.com','Esedo Fredrick','good1625716730.png',NULL),(20,'897afb28acfe5edbcadbbb8ea72ba1751625717748.png','Ann ball','Supports','f94fc2376c766a1fb5395294839bd92d1625717748','13','payout_ce1aafb340595418c06103192d90ce92','Completed','1625717954','Disburse','Payout to Bank','220','7','2021-07-08',NULL,'4','ewallet_f93f8013fdf0f6c43c59c231e125c1c5',NULL,NULL,'employee42@gmail.com','Esedo Fredrick','good1625716730.png',NULL),(21,'897afb28acfe5edbcadbbb8ea72ba1751625717748.png','Ann ball','Supports','f94fc2376c766a1fb5395294839bd92d1625717748','13','c06b0658-dfa3-11eb-b38b-02240218ee6d','CLO','1625717994','Wallet','Wallet Fund Transfer','220','7','2021-07-08',NULL,'4','ewallet_f93f8013fdf0f6c43c59c231e125c1c5',NULL,NULL,'employee42@gmail.com','Esedo Fredrick','good1625716730.png',NULL);
/*!40000 ALTER TABLE `salary_emp_rapyd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_pay`
--

DROP TABLE IF EXISTS `salary_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `fullname` varchar(70) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `salary_amount` varchar(50) DEFAULT NULL,
  `salary_month` varchar(50) DEFAULT NULL,
  `timing` varchar(50) DEFAULT NULL,
  `calendar_month` varchar(50) DEFAULT NULL,
  `calendar_date` varchar(50) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `creator_id` varchar(20) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_pay`
--

LOCK TABLES `salary_pay` WRITE;
/*!40000 ALTER TABLE `salary_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updates_data_rapyd`
--

DROP TABLE IF EXISTS `updates_data_rapyd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updates_data_rapyd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_fund_fund` varchar(50) DEFAULT NULL,
  `total_fund_spend` varchar(50) DEFAULT NULL,
  `total_employee` varchar(50) DEFAULT NULL,
  `total_fund_available` varchar(50) DEFAULT NULL,
  `creator_id` varchar(50) DEFAULT NULL,
  `data` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates_data_rapyd`
--

LOCK TABLES `updates_data_rapyd` WRITE;
/*!40000 ALTER TABLE `updates_data_rapyd` DISABLE KEYS */;
INSERT INTO `updates_data_rapyd` VALUES (4,'5880','1170','4','0.0','4','0');
/*!40000 ALTER TABLE `updates_data_rapyd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `user_rank` varchar(200) DEFAULT NULL,
  `user_verified` varchar(200) DEFAULT NULL,
  `user_banned` varchar(200) DEFAULT NULL,
  `created_time` varchar(200) DEFAULT NULL,
  `timer1` varchar(200) DEFAULT NULL,
  `timer2` varchar(200) DEFAULT NULL,
  `data` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `phone_no` varchar(60) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `points` varchar(100) DEFAULT NULL,
  `levels` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,NULL,'$2y$04$eHlb1YbGQuUd04z43.PWcOMaDyqZ5c.BGyDhTqG4/KS1Wio2aBN2q','Esedo Fredrick','admin@gmail.com','good1625716730.png','Admin','1','0','Wednesday, July 7, 2021, 11:58 pm','1625716731',NULL,'7da661d2fc142af4ad89f5515c70bbb61625716731',NULL,'08064242019','Admin','0','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `wallet_id` varchar(200) DEFAULT NULL,
  `account_status` varchar(50) DEFAULT NULL,
  `ewallet_reference_id` varchar(150) DEFAULT NULL,
  `timing` varchar(50) DEFAULT NULL,
  `fund` varchar(50) DEFAULT NULL,
  `fund_time` varchar(50) DEFAULT NULL,
  `creator_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
INSERT INTO `wallets` VALUES (25,'+14155551234','','Esedo','Fredrick','ewallet_0bd2d6cf8c135b07e37a5d063dcae760','ACT','Fredrick-Esedo-1625716761-myapp','1625716761','470','00:00:00','4'),(26,'+14155551234','','Esedo1','Fredrick1','ewallet_32c4133b0671ceaf6a41daa97ead52c3','ACT','Fredrick1-Esedo1-1625716787-myapp','1625716787','1260','00:00:00','4'),(27,'+14155551234','','Esedo3','Fredrick3','ewallet_1e60ea0788423799ecf6eced674658ae','ACT','Fredrick3-Esedo3-1625716818-myapp','1625716818','2980','00:00:00','4');
/*!40000 ALTER TABLE `wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'employeeci'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-08  5:49:02
