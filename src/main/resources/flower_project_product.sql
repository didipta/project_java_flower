-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: flower_project
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `p_name` varchar(100) DEFAULT NULL,
                           `P_price` int DEFAULT NULL,
                           `P_description` varchar(1000) DEFAULT NULL,
                           `P_img` varchar(100) DEFAULT NULL,
                           `Category` varchar(20) DEFAULT NULL,
                           `P_quantity` int DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Blue Zinnia',25,'Zinnia is a genus of the family Asteraceae, containing about 20 species of annual and perennial plants, native primarily to North America with a few species in South America. The most popular species is “Zinnia elegans”, which is native to Mexico. There are many types of zinnia. Such as red, blue white, yellow etc.','ZINIA BLUE 01.jpg','Summer flower ',100),(2,'Red Zinnia',25,'Zinnia is a genus of the family Asteraceae, containing about 20 species of annual and perennial plants, native primarily to North America with a few species in South America. The most popular species is “Zinnia elegans”, which is native to Mexico. There are many types of zinnia. Such as red, blue white, yellow etc.','ZINNIA RED 03.jpg','Summer flower ',100),(3,'Pink Zinnia',25,'Zinnia is a genus of the family Asteraceae, containing about 20 species of annual and perennial plants, native primarily to North America with a few species in South America. The most popular species is “Zinnia elegans”, which is native to Mexico. There are many types of zinnia. Such as red, blue white, yellow etc.','ZINNIA PINK 02.jpg','Summer flower ',100),(4,'Red Rose',30,'Description: Rose belong to family rosecase.  All species of this flower with minor exception belongs to the genus rosa. There are about 150 recognized and described species of roses.','Red Rose 02.jpg','Summer flower ',100),(5,'Black Rose',30,'Description: Rose belong to family rosecase.  All species of this flower with minor exception belongs to the genus rosa. There are about 150 recognized and described species of roses.','Rose BLACK 01.jpg','Summer flower ',100),(6,'Pink Rose',30,'Description: Rose belong to family rosecase.  All species of this flower with minor exception belongs to the genus rosa. There are about 150 recognized and described species of roses.','Rose PINK 01.jpg','Summer flower ',100),(7,'White Rose',30,'Description: Rose belong to family rosecase.  All species of this flower with minor exception belongs to the genus rosa. There are about 150 recognized and described species of roses.','Rose White 01.jpg','Summer flower ',100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
                             `first_name` varchar(20) DEFAULT NULL,
                             `last_name` varchar(20) DEFAULT NULL,
                             `email` varchar(20) DEFAULT NULL,
                             `phome_number` varchar(15) DEFAULT NULL,
                             `address` varchar(200) DEFAULT NULL,
                             `user_id` int DEFAULT NULL,
                             `id` int NOT NULL AUTO_INCREMENT,
                             PRIMARY KEY (`id`),
                             KEY `user_info_users_id_fk` (`user_id`),
                             CONSTRAINT `user_info_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('Dipta','Saha','dipta1110@gmail.com','01912349456','korvanigong,chittagong',8,1),('Shadik','Hasan','shadik123@gmail.com','01799404026','7i Sadek Road Basundhara R/A',10,3),('Chaity','Gosh','chaitygosh@gmail.com','01957573434','dhaka',11,4);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `user_name` varchar(20) DEFAULT NULL,
                         `password` varchar(20) DEFAULT NULL,
                         `c_password` varchar(20) DEFAULT NULL,
                         `usertype` varchar(20) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `users_user_name_uindex` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'diptasaha','Asd@1234','Asd@1234','user'),(10,'shadikhasan','12345','12345','user'),(11,'chaity','99999','99999','user');
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

-- Dump completed on 2022-08-04 11:39:11
