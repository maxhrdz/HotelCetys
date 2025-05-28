-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_5estrellas
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `id_reservacion` int DEFAULT NULL,
  `fecha_emision` datetime DEFAULT NULL,
  `monto_total` decimal(10,2) DEFAULT NULL,
  `estado_pago` enum('Pagado','Pendiente') DEFAULT 'Pendiente',
  PRIMARY KEY (`id_factura`),
  KEY `id_reservacion` (`id_reservacion`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_reservacion`) REFERENCES `reservacion` (`id_reservacion`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,1,'2025-05-16 12:42:20',5200.00,'Pagado'),(2,16,'2025-05-17 13:37:38',5300.00,'Pagado'),(3,1,'2024-07-01 00:00:00',6000.00,'Pagado'),(4,8,'2024-04-26 00:00:00',26000.00,'Pendiente'),(5,9,'2025-03-11 00:00:00',5550.00,'Pagado'),(6,10,'2024-08-05 00:00:00',10800.00,'Pendiente'),(7,16,'2025-05-04 00:00:00',26500.00,'Pendiente'),(8,1,'2023-01-06 00:00:00',14200.00,'Pendiente'),(9,2,'2023-01-08 00:00:00',25500.00,'Pendiente'),(10,3,'2023-01-06 00:00:00',6000.00,'Pendiente'),(11,6,'2023-01-11 00:00:00',12200.00,'Pendiente'),(12,7,'2023-01-12 00:00:00',20400.00,'Pendiente'),(13,8,'2023-01-14 00:00:00',25500.00,'Pendiente'),(14,9,'2023-01-14 00:00:00',10800.00,'Pendiente'),(15,10,'2023-01-15 00:00:00',7200.00,'Pendiente'),(16,11,'2023-01-17 00:00:00',12500.00,'Pendiente'),(17,13,'2023-01-19 00:00:00',15750.00,'Pendiente'),(18,14,'2023-01-17 00:00:00',5300.00,'Pendiente'),(19,16,'2023-01-22 00:00:00',25000.00,'Pendiente'),(20,17,'2023-01-23 00:00:00',15500.00,'Pendiente'),(21,19,'2023-01-24 00:00:00',10000.00,'Pendiente'),(22,20,'2023-01-24 00:00:00',9450.00,'Pendiente'),(23,21,'2023-01-27 00:00:00',9000.00,'Pendiente'),(24,22,'2023-01-27 00:00:00',12600.00,'Pendiente'),(25,23,'2023-01-27 00:00:00',9000.00,'Pendiente'),(26,24,'2023-01-28 00:00:00',15600.00,'Pendiente'),(27,26,'2023-01-29 00:00:00',6000.00,'Pendiente'),(28,27,'2023-02-01 00:00:00',20000.00,'Pendiente'),(29,29,'2023-02-04 00:00:00',27000.00,'Pendiente'),(30,31,'2023-02-04 00:00:00',9000.00,'Pendiente'),(31,32,'2023-02-07 00:00:00',13250.00,'Pendiente'),(32,33,'2023-02-06 00:00:00',7500.00,'Pendiente'),(33,35,'2023-02-07 00:00:00',3700.00,'Pendiente'),(34,36,'2023-02-11 00:00:00',26000.00,'Pendiente'),(35,37,'2023-02-11 00:00:00',7400.00,'Pendiente'),(36,38,'2023-02-11 00:00:00',15300.00,'Pendiente'),(37,39,'2023-02-12 00:00:00',5850.00,'Pendiente'),(38,41,'2023-02-14 00:00:00',5400.00,'Pendiente'),(39,42,'2023-02-17 00:00:00',26500.00,'Pendiente'),(40,43,'2023-02-18 00:00:00',26500.00,'Pendiente'),(41,44,'2023-02-19 00:00:00',9000.00,'Pendiente'),(42,45,'2023-02-20 00:00:00',9000.00,'Pendiente'),(43,46,'2023-02-20 00:00:00',10400.00,'Pendiente'),(44,47,'2023-02-20 00:00:00',9150.00,'Pendiente'),(45,49,'2023-02-22 00:00:00',7650.00,'Pendiente'),(46,51,'2023-02-26 00:00:00',26500.00,'Pendiente'),(47,52,'2023-02-25 00:00:00',10650.00,'Pendiente'),(48,53,'2023-02-27 00:00:00',7600.00,'Pendiente'),(49,54,'2023-02-26 00:00:00',7000.00,'Pendiente'),(50,55,'2023-03-01 00:00:00',10000.00,'Pendiente'),(51,56,'2023-03-02 00:00:00',14000.00,'Pendiente'),(52,57,'2023-03-01 00:00:00',5000.00,'Pendiente'),(53,58,'2023-03-02 00:00:00',5400.00,'Pendiente'),(54,60,'2023-03-05 00:00:00',15300.00,'Pendiente'),(55,62,'2023-03-08 00:00:00',7200.00,'Pendiente'),(56,63,'2023-03-08 00:00:00',15000.00,'Pendiente'),(57,64,'2023-03-10 00:00:00',12400.00,'Pendiente'),(58,65,'2023-03-11 00:00:00',12400.00,'Pendiente'),(59,66,'2023-03-13 00:00:00',15750.00,'Pendiente'),(60,67,'2023-03-13 00:00:00',14600.00,'Pendiente'),(61,68,'2023-03-13 00:00:00',8100.00,'Pendiente'),(62,69,'2023-03-16 00:00:00',25000.00,'Pendiente'),(63,70,'2023-03-15 00:00:00',7500.00,'Pendiente'),(64,71,'2023-03-17 00:00:00',14600.00,'Pendiente'),(65,74,'2023-03-19 00:00:00',5700.00,'Pendiente'),(66,76,'2023-03-23 00:00:00',15500.00,'Pendiente'),(67,77,'2023-03-24 00:00:00',17500.00,'Pendiente'),(68,78,'2023-03-24 00:00:00',20000.00,'Pendiente'),(69,79,'2023-03-26 00:00:00',25500.00,'Pendiente'),(70,80,'2023-03-26 00:00:00',21200.00,'Pendiente'),(71,81,'2023-03-25 00:00:00',7200.00,'Pendiente'),(72,82,'2023-03-27 00:00:00',15000.00,'Pendiente'),(73,83,'2023-03-29 00:00:00',12000.00,'Pendiente'),(74,84,'2023-03-29 00:00:00',9300.00,'Pendiente'),(75,85,'2023-03-31 00:00:00',14200.00,'Pendiente'),(76,86,'2023-04-02 00:00:00',25000.00,'Pendiente'),(77,87,'2023-04-02 00:00:00',21600.00,'Pendiente'),(78,88,'2023-04-01 00:00:00',3800.00,'Pendiente'),(79,89,'2023-04-04 00:00:00',7800.00,'Pendiente'),(80,90,'2023-04-05 00:00:00',20000.00,'Pendiente'),(81,91,'2023-04-07 00:00:00',15250.00,'Pendiente'),(82,92,'2023-04-08 00:00:00',13500.00,'Pendiente'),(83,93,'2023-04-09 00:00:00',9250.00,'Pendiente'),(84,95,'2023-04-08 00:00:00',7100.00,'Pendiente'),(85,96,'2023-04-09 00:00:00',7100.00,'Pendiente'),(86,97,'2023-04-12 00:00:00',10000.00,'Pendiente'),(87,98,'2023-04-13 00:00:00',12600.00,'Pendiente'),(88,99,'2023-04-14 00:00:00',12400.00,'Pendiente'),(89,100,'2023-04-13 00:00:00',3800.00,'Pendiente'),(91,132,'2023-05-17 00:00:00',20400.00,'Pendiente'),(92,133,'2023-05-17 00:00:00',10500.00,'Pendiente'),(93,134,'2023-05-19 00:00:00',7800.00,'Pendiente'),(94,3,'2025-05-18 21:48:49',5200.00,'Pagado'),(95,5,'2025-05-18 21:50:28',5500.00,'Pagado');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27 13:25:52
