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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `puesto` enum('Recepcionista','Gerente','Limpieza','Administrador','Mantenimiento','Contador') NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `id_hotel` int DEFAULT NULL,
  `usuario_login` varchar(50) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `nivel_acceso` enum('Bajo','Medio','Alto') DEFAULT 'Bajo',
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `usuario_login` (`usuario_login`),
  KEY `id_hotel` (`id_hotel`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Ana Torres','Recepcionista','ana.torres@hotel.com','6641002001',1,'atorres','12345','Bajo'),(2,'Carlos Méndez','Recepcionista','carlos.mendez@hotel.com','6641002002',1,'cmendez','12345','Bajo'),(3,'Lucía Ramírez','Recepcionista','lucia.ramirez@hotel.com','6641002003',1,'lramirez','12345','Bajo'),(4,'Sofía Ruiz','Gerente','sofia.ruiz@hotel.com','6641002101',1,'sruiz','admin123','Alto'),(5,'Miguel Herrera','Administrador','miguel.herrera@hotel.com','6641002201',1,'mherrera','admin123','Alto'),(6,'Valeria González','Contador','valeria.gonzalez@hotel.com','6641002301',1,'vgonzalez','conta123','Medio'),(7,'Luis Pérez','Mantenimiento','luis.perez@hotel.com','6641002401',1,'lperez','fixit','Medio'),(8,'Andrea Soto','Mantenimiento','andrea.soto@hotel.com','6641002402',1,'asoto','fixit','Medio'),(9,'Pedro Morales','Limpieza','pedro.morales@hotel.com','6641002501',1,'pmorales','limpio','Bajo'),(10,'Diana López','Limpieza','diana.lopez@hotel.com','6641002502',1,'dlopez','limpio','Bajo'),(11,'Rosa Navarro','Limpieza','rosa.navarro@hotel.com','6641002503',1,'rnavarro','limpio','Bajo'),(12,'Ricardo Sánchez','Administrador','ricardo.sanchez@hotel.com','6641002202',1,'rsanchez','admin987','Alto'),(13,'Mariana Vega','Contador','mariana.vega@hotel.com','6641002302',1,'mvega','conta987','Medio'),(14,'Alfredo Guzmán','Mantenimiento','alfredo.guzman@hotel.com','6641002403',1,'aguzman','fixit2','Medio'),(15,'Julia Ramos','Recepcionista','julia.ramos@hotel.com','6641002004',1,'jramos','12345','Bajo'),(16,'Ana Martínez','Recepcionista','ana@hotel5estrellas.com','6641112233',1,'ana_m','1234','Bajo'),(17,'Carlos López','Contador','carlos@hotel5estrellas.com','6642223344',1,'carlos_l','1234','Medio'),(18,'Diana Torres','Administrador','diana@hotel5estrellas.com','6643334455',1,'diana_t','1234','Alto'),(19,'Luis Ramírez','Gerente','luis@hotel5estrellas.com','6644445566',1,'luis_r','1234','Alto'),(20,'María Fernanda','Recepcionista','maria@hotel5estrellas.com','6645556677',1,'maria_f','1234','Bajo');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
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
