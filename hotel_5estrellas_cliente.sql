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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `edad` int DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` enum('Masculino','Femenino','Otro') DEFAULT NULL,
  `telefono_casa` varchar(20) DEFAULT NULL,
  `telefono_celular` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `lugar_procedencia` varchar(100) DEFAULT NULL,
  `vip` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Homero Simpson',39,'742 Evergreen Terrace','1985-05-12','Masculino','6641112222','6643334444','homero@springfield.com','HOSI850512XXX','Springfield',1),(2,'Marge Simpson',36,'742 Evergreen Terrace','1988-03-19','Femenino','6645556666','6647778888','marge@springfield.com','MASI880319XXX','Springfield',1),(3,'Bart Simpson',10,'742 Evergreen Terrace','2014-04-01','Masculino','6649990000','6641113333','bart@springfield.com','BASI140401XXX','Springfield',0),(4,'Lisa Simpson',8,'742 Evergreen Terrace','2016-05-09','Femenino','6642223333','6644445555','lisa@springfield.com','LISI160509XXX','Springfield',1),(5,'Moe Szyslak',45,'Bar de Moe','1979-11-23','Masculino','6647779999','6645558888','moe@springfield.com','MOSZ791123XXX','Springfield',0),(6,'Ned Flanders',38,'744 Evergreen Terrace','1986-02-11','Masculino','6643335555','6646667777','ned@springfield.com','NEFL860211XXX','Springfield',0),(7,'Milhouse Van Houten',10,'Calle Principal 45','2014-07-01','Masculino','6641119999','6642228888','milhouse@springfield.com','MIVA140701XXX','Springfield',0),(8,'Apu Nahasapeemapetilon',40,'Kwik-E-Mart','1984-12-15','Masculino','6648887777','6646665555','apu@springfield.com','APNA841215XXX','Springfield',0),(9,'Seymour Skinner',50,'Escuela Primaria','1974-01-20','Masculino','6642224444','6643336666','skinner@springfield.com','SESK740120XXX','Springfield',0),(10,'Edna Krabappel',42,'Calle Elm 123','1982-08-30','Femenino','6645554444','6647776666','edna@springfield.com','EDKR820830XXX','Springfield',0),(11,'Philip J. Fry',25,'Nueva Nueva York','1999-08-06','Masculino','6649991111','6648880000','fry@futurama.com','PHFR990806XXX','Nueva Nueva York',0),(12,'Turanga Leela',30,'Nueva Nueva York','1998-04-24','Femenino','6643338888','6642229999','leela@futurama.com','TULE980424XXX','Nueva Nueva York',0),(13,'Bender Rodríguez',40,'Planeta Express','1996-09-14','Masculino','6644440000','6647772222','bender@futurama.com','BERO960914XXX','Nueva Nueva York',0),(14,'Rick Sanchez',70,'Dimensión C-137','1953-01-14','Masculino','6645559999','6646660000','rick@c137.com','RISA530114XXX','Dimensión C-137',0),(15,'Morty Smith',14,'Dimensión C-137','2009-04-20','Masculino','6641115555','6649996666','morty@c137.com','MOSM090420XXX','Dimensión C-137',0),(16,'Peter Griffin',43,'Quahog','1981-02-05','Masculino','6641234567','6647891234','peter@quahog.com','PEGR810205XXX','Quahog',0),(17,'Lois Griffin',40,'Quahog','1984-06-20','Femenino','6643456789','6642345678','lois@quahog.com','LOGR840620XXX','Quahog',0),(18,'Stewie Griffin',1,'Quahog','2024-07-24','Masculino','6649876543','6643456789','stewie@quahog.com','STGR240724XXX','Quahog',0),(19,'Eric Cartman',10,'South Park','2014-07-01','Masculino','6643331111','6648884444','cartman@southpark.com','ERCA140701XXX','South Park',0),(20,'Stan Marsh',10,'South Park','2014-10-19','Masculino','6642227777','6646661111','stan@southpark.com','STMA141019XXX','South Park',0),(21,'Kenny McCormick',10,'South Park','2014-12-22','Masculino','6649998888','6647775555','kenny@southpark.com','KEMC141222XXX','South Park',0),(22,'Goku',42,'Montaña Paoz','1982-04-16','Masculino','6644567890','6641231234','goku@dragonball.com','GOKU820416XXX','Paoz',0),(23,'Vegeta',45,'Planeta Vegeta','1979-06-01','Masculino','6646543210','6643216547','vegeta@dragonball.com','VEGE790601XXX','Planeta Vegeta',0),(24,'Bulma Briefs',41,'Ciudad del Oeste','1983-08-18','Femenino','6642226666','6645559999','bulma@dragonball.com','BUBR830818XXX','Ciudad del Oeste',0),(25,'Scooby Doo',7,'Mystery Machine','2017-11-13','Masculino','6647778888','6644441111','scooby@cartoon.com','SCOD171113XXX','EE.UU.',0),(26,'Shaggy Rogers',25,'Mystery Machine','1999-04-01','Masculino','6641112223','6643334445','shaggy@cartoon.com','SHRO990401XXX','EE.UU.',0),(27,'Harry Potter',34,'4 Privet Drive','1990-07-31','Masculino','6643214321','6645678765','harry@hogwarts.com','HAPO900731XXX','Londres',0),(28,'Hermione Granger',34,'4 Privet Drive','1990-09-19','Femenino','6644321543','6647896543','hermione@hogwarts.com','HEGR900919XXX','Londres',0),(29,'Ron Weasley',34,'La Madriguera','1990-03-01','Masculino','6648761234','6641238765','ron@hogwarts.com','ROWE900301XXX','Londres',0),(30,'Darth Vader',50,'Estrella de la Muerte','1975-05-04','Masculino','6641239876','6646547890','vader@starwars.com','DAVA750504XXX','Galaxia Lejana',0),(31,'Luke Skywalker',48,'Tatooine','1977-05-25','Masculino','6649871234','6641237890','luke@starwars.com','LUSK770525XXX','Galaxia Lejana',0),(32,'Leia Organa',48,'Alderaan','1977-05-25','Femenino','6645557890','6643219876','leia@starwars.com','LEOR770525XXX','Galaxia Lejana',0),(33,'Tony Stark',45,'Mansión Stark','1979-05-29','Masculino','6649994321','6648765432','tony@starkindustries.com','TOST790529XXX','Malibú',0),(34,'Steve Rogers',100,'Brooklyn','1925-07-04','Masculino','6646541234','6647891234','steve@avengers.com','STRO250704XXX','Brooklyn',0),(35,'Natasha Romanoff',39,'S.H.I.E.L.D.','1985-11-22','Femenino','6643218765','6645674321','natasha@shield.com','NARO851122XXX','Rusia',0),(36,'Bruce Banner',40,'Desconocido','1984-12-18','Masculino','6646547899','6643216543','bruce@avengers.com','BRBA841218XXX','EE.UU.',0),(37,'Thor Odinson',1500,'Asgard','0525-06-29','Masculino','6649870000','6645556666','thor@asgard.com','THOD052506XXX','Asgard',0),(38,'Loki Laufeyson',1500,'Jotunheim','0525-12-17','Masculino','6643330000','6647772222','loki@jotunheim.com','LOLA052512XXX','Jotunheim',0),(39,'Gandalf',3000,'Tierra Media','0001-01-01','Masculino','6642220000','6644445555','gandalf@middleearth.com','GAND000101XXX','Tierra Media',0),(40,'Frodo Baggins',50,'La Comarca','1975-09-22','Masculino','6647774444','6643331111','frodo@middleearth.com','FRBA750922XXX','La Comarca',0),(41,'Samwise Gamgee',50,'La Comarca','1975-04-06','Masculino','6649993333','6641116666','samwise@middleearth.com','SAGA750406XXX','La Comarca',0),(42,'Legolas Greenleaf',2931,'Bosque Negro','0001-11-11','Masculino','6646667777','6643339999','legolas@middleearth.com','LEGE001111XXX','Bosque Negro',0),(43,'Aragorn',87,'Gondor','1938-03-01','Masculino','6648885555','6644447777','aragorn@gondor.com','ARAG380301XXX','Gondor',0),(44,'Bilbo Baggins',111,'La Comarca','1914-09-22','Masculino','6643217654','6645674321','bilbo@middleearth.com','BIBA140922XXX','La Comarca',0),(45,'Krilin',40,'Ciudad del Oeste','1985-05-01','Masculino','6642229999','6641118888','krilin@dragonball.com','KRIL850501XXX','Ciudad del Oeste',0),(46,'Dobby',150,'Hogwarts','1875-02-28','Masculino','6641230000','6646540000',NULL,'DOBB750228XXX','Hogwarts',0),(47,'Obi-Wan Kenobi',60,'Tatooine','1965-03-11','Masculino','6648881234','6648883210','kenobi@starwars.com','OBKE650311XXX','Galaxia Lejana',0),(48,'Mysterio',35,'Nueva York','1989-07-07','Masculino','6641237777','6643217777','mysterio@marvel.com','MYST890707XXX','Nueva York',0),(999,'Juan Pérez',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
