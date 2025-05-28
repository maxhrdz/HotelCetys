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
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo` enum('Interno','Externo') NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Spa Básico','Interno',1200.00),(2,'Gimnasio','Interno',800.00),(3,'Restaurant Buffet','Interno',1500.00),(4,'Salón de Eventos','Interno',3000.00),(5,'Bar','Interno',1000.00),(6,'Discoteca','Interno',2000.00),(7,'Campo de Golf','Interno',4000.00),(8,'Servicio a Cuarto','Interno',500.00),(9,'Tour Parque Diversiones','Externo',3500.00),(10,'Tour Museo Histórico','Externo',2000.00),(11,'Tour Parque Acuático','Externo',2800.00),(12,'Spa Premium','Interno',1800.00),(13,'Gimnasio VIP','Interno',1200.00),(14,'Restaurante Gourmet','Interno',2500.00),(15,'Salón de Bodas','Interno',5000.00),(16,'Bar Lounge','Interno',1500.00),(17,'Discoteca Electrónica','Interno',2500.00),(18,'Campo Mini Golf','Interno',2000.00),(19,'Comida a Cuarto Premium','Interno',700.00),(20,'Tour Zoológico','Externo',3000.00),(21,'Tour Acuario','Externo',2700.00),(22,'Traslado Aeropuerto','Externo',1500.00),(23,'Spa Relajante','Interno',1400.00),(24,'Gimnasio Express','Interno',600.00),(25,'Restaurante Italiano','Interno',2200.00),(26,'Salón de Conferencias','Interno',4000.00),(27,'Bar Deportivo','Interno',1100.00),(28,'Discoteca Retro','Interno',2300.00),(29,'Campo de Golf VIP','Interno',5000.00),(30,'Room Service Deluxe','Interno',800.00),(31,'Tour Ruinas Mayas','Externo',5000.00),(32,'Tour Aventura','Externo',4000.00),(33,'Traslado Ejecutivo','Externo',2500.00),(34,'Spa Womens','Interno',1600.00),(35,'Gimnasio Completo','Interno',1000.00),(36,'Restaurante Mexicano','Interno',1800.00),(37,'Bar Karaoke','Interno',1300.00),(38,'Discoteca Latina','Interno',2400.00),(39,'Golf Avanzado','Interno',4500.00),(40,'Traslado City Tour','Externo',1000.00),(41,'Spa ','Interno',1500.00),(42,'Gimnasio Funcional','Interno',900.00),(43,'Restaurante Vegano','Interno',1900.00),(44,'Salón Empresarial','Interno',4200.00),(45,'Bar RoofTop','Interno',1700.00),(46,'Tour Cultural','Externo',2500.00),(47,'Tour Gastronómico','Externo',3500.00),(48,'Tour Ecoaventura','Externo',3200.00),(49,'Traslado Privado','Externo',2200.00),(50,'Tour Festival Musical','Externo',2700.00);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
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
