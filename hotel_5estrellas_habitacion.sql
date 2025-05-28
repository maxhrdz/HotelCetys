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
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitacion` (
  `id_habitacion` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio_noche` decimal(10,2) NOT NULL,
  `estado` enum('Disponible','Ocupado','Mantenimiento') DEFAULT 'Disponible',
  PRIMARY KEY (`id_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (1,'101','Suite Presidencial',5000.00,'Ocupado'),(2,'102','Suite Junior',3500.00,'Disponible'),(3,'103','Habitación Doble',2500.00,'Disponible'),(4,'104','Habitación Sencilla',1800.00,'Ocupado'),(5,'105','Habitación Familiar',3000.00,'Ocupado'),(6,'106','Suite Junior',3600.00,'Disponible'),(7,'107','Habitación Doble',2550.00,'Disponible'),(8,'108','Suite Presidencial',5200.00,'Disponible'),(9,'109','Habitación Familiar',3100.00,'Ocupado'),(10,'110','Habitación Sencilla',1900.00,'Disponible'),(11,'201','Suite Presidencial',5100.00,'Disponible'),(12,'202','Suite Junior',3550.00,'Ocupado'),(13,'203','Habitación Doble',2600.00,'Ocupado'),(14,'204','Habitación Sencilla',1850.00,'Disponible'),(15,'205','Habitación Familiar',3050.00,'Ocupado'),(16,'206','Suite Junior',3700.00,'Ocupado'),(17,'207','Habitación Doble',2700.00,'Ocupado'),(18,'208','Suite Presidencial',5300.00,'Disponible'),(19,'209','Habitación Familiar',3150.00,'Ocupado'),(20,'210','Habitación Sencilla',1950.00,'Disponible'),(21,'301','Suite Presidencial',5000.00,'Disponible'),(22,'302','Suite Junior',3400.00,'Disponible'),(23,'303','Habitación Doble',2500.00,'Disponible'),(24,'304','Habitación Sencilla',1800.00,'Disponible'),(25,'305','Habitación Familiar',3000.00,'Disponible'),(26,'306','Suite Junior',3500.00,'Disponible'),(27,'307','Habitación Doble',2600.00,'Disponible'),(28,'308','Suite Presidencial',5200.00,'Ocupado'),(29,'309','Habitación Familiar',3100.00,'Disponible'),(30,'310','Habitación Sencilla',1900.00,'Disponible'),(31,'401','Suite Presidencial',5100.00,'Disponible'),(32,'402','Suite Junior',3550.00,'Disponible'),(33,'403','Habitación Doble',2650.00,'Disponible'),(34,'404','Habitación Sencilla',1850.00,'Disponible'),(35,'405','Habitación Familiar',3050.00,'Disponible'),(36,'406','Suite Junior',3650.00,'Disponible'),(37,'407','Habitación Doble',2700.00,'Ocupado'),(38,'408','Suite Presidencial',5300.00,'Disponible'),(39,'409','Habitación Familiar',3150.00,'Ocupado'),(40,'410','Habitación Sencilla',1950.00,'Disponible'),(41,'501','Suite Presidencial',5400.00,'Ocupado'),(42,'502','Suite Junior',3600.00,'Ocupado'),(43,'503','Habitación Doble',2500.00,'Disponible'),(44,'504','Habitación Sencilla',1800.00,'Disponible'),(45,'505','Habitación Familiar',3000.00,'Ocupado'),(46,'506','Habitación Sencilla',1800.00,'Disponible'),(47,'507','Habitación Doble',2500.00,'Disponible'),(48,'508','Suite Junior',3500.00,'Disponible'),(49,'509','Suite Presidencial',5000.00,'Disponible'),(50,'510','Habitación Familiar',3000.00,'Ocupado');
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27 13:25:51
