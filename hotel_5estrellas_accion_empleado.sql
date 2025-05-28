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
-- Table structure for table `accion_empleado`
--

DROP TABLE IF EXISTS `accion_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accion_empleado` (
  `id_accion` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int DEFAULT NULL,
  `tipo_accion` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id_accion`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `accion_empleado_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accion_empleado`
--

LOCK TABLES `accion_empleado` WRITE;
/*!40000 ALTER TABLE `accion_empleado` DISABLE KEYS */;
INSERT INTO `accion_empleado` VALUES (31,1,'Check-in','Realizó el check-in del cliente Homero Simpson','2025-01-15 14:00:00'),(32,1,'Check-out','Cliente realizó su salida sin inconvenientes','2025-01-20 11:00:00'),(33,2,'Registro Pago','Procesó pago por tarjeta de crédito por $7500.00','2025-02-05 17:30:00'),(34,3,'Crear factura','Factura emitida para la reservación de Ned Flanders','2025-03-12 10:00:00'),(35,4,'Resolver queja','Queja sobre aire acondicionado resuelta satisfactoriamente','2025-03-18 09:15:00'),(36,5,'Check-in','Check-in grupal para familia Griffin','2025-04-01 13:45:00'),(37,1,'Modificar reservación','Cambio de fechas por solicitud del cliente','2025-04-03 16:00:00'),(38,2,'Registro Pago','Se registró pago en efectivo por $5000.00','2025-04-10 19:20:00'),(39,3,'Actualizar estado','Habitación 205 cambiada a mantenimiento','2025-05-02 08:00:00'),(40,4,'Resolver queja','Atención a queja por ruido excesivo en piso 4','2025-05-06 22:00:00'),(41,5,'Check-out','Cliente Vegeta realizó su check-out','2025-06-10 12:00:00'),(42,2,'Emitir factura','Factura generada con IVA incluido para cliente VIP','2025-07-01 15:30:00'),(43,3,'Auditoría interna','Revisión mensual de ingresos por servicios','2025-07-10 17:00:00'),(44,1,'Check-in','Registro de clientes con paquete de verano','2025-08-01 14:30:00'),(45,4,'Cancelar reservación','Cancelación de cliente por problemas personales, sin penalización','2025-08-18 09:45:00');
/*!40000 ALTER TABLE `accion_empleado` ENABLE KEYS */;
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
