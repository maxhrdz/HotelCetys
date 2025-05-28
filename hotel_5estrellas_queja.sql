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
-- Table structure for table `queja`
--

DROP TABLE IF EXISTS `queja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queja` (
  `id_queja` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `rating_satisfaccion` int DEFAULT NULL,
  `id_tipo` int DEFAULT NULL,
  PRIMARY KEY (`id_queja`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `queja_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `queja_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_queja` (`id_tipo`),
  CONSTRAINT `queja_chk_1` CHECK ((`rating_satisfaccion` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queja`
--

LOCK TABLES `queja` WRITE;
/*!40000 ALTER TABLE `queja` DISABLE KEYS */;
INSERT INTO `queja` VALUES (21,1,'2024-07-15','Recepción','Atención lenta',3,1),(22,2,'2024-07-16','Restaurante','Comida fría',2,2),(23,3,'2024-07-18','Spa','Masaje incómodo',4,3),(24,4,'2024-07-19','Limpieza','Habitación sucia',1,4),(25,5,'2024-07-20','Seguridad','Acceso no controlado',2,1),(26,6,'2024-08-01','Recepción','Mala actitud del personal',3,2),(27,7,'2024-08-02','Restaurante','Tardanza en servicio',2,3),(28,8,'2024-08-03','Spa','No respetaron la cita',4,4),(29,9,'2024-08-04','Limpieza','No cambiaron toallas',2,1),(30,10,'2024-08-05','Seguridad','Ruido nocturno no controlado',3,2),(31,11,'2024-08-06','Recepción','Error en reservación',3,3),(32,12,'2024-08-07','Restaurante','Orden equivocada',2,4),(33,13,'2024-08-08','Spa','Agua fría en jacuzzi',4,1),(34,14,'2024-08-09','Limpieza','Basura en pasillo',1,2),(35,15,'2024-08-10','Seguridad','Puerta sin llave',2,3),(36,16,'2024-08-11','Recepción','Larga espera',4,4),(37,17,'2024-08-12','Restaurante','Comida salada',3,1),(38,18,'2024-08-13','Spa','Aire acondicionado muy frío',4,2),(39,19,'2024-08-14','Limpieza','No limpiaron habitación',2,3),(40,20,'2024-08-15','Seguridad','Personal maleducado',1,4);
/*!40000 ALTER TABLE `queja` ENABLE KEYS */;
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
