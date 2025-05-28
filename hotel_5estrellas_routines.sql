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
-- Temporary view structure for view `vista_consumo_completo`
--

DROP TABLE IF EXISTS `vista_consumo_completo`;
/*!50001 DROP VIEW IF EXISTS `vista_consumo_completo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_consumo_completo` AS SELECT 
 1 AS `id_consumo`,
 1 AS `id_reservacion`,
 1 AS `nombre_cliente`,
 1 AS `id_servicio`,
 1 AS `nombre_servicio`,
 1 AS `fecha_consumo`,
 1 AS `cantidad`,
 1 AS `precio_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cliente_vip`
--

DROP TABLE IF EXISTS `cliente_vip`;
/*!50001 DROP VIEW IF EXISTS `cliente_vip`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cliente_vip` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre_cliente`,
 1 AS `veces_reservado`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_consumo_completo`
--

/*!50001 DROP VIEW IF EXISTS `vista_consumo_completo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_consumo_completo` AS select `cs`.`id_consumo` AS `id_consumo`,`cs`.`id_reservacion` AS `id_reservacion`,`c`.`nombre` AS `nombre_cliente`,`cs`.`id_servicio` AS `id_servicio`,`s`.`nombre` AS `nombre_servicio`,`cs`.`fecha_consumo` AS `fecha_consumo`,`cs`.`cantidad` AS `cantidad`,`cs`.`precio_total` AS `precio_total` from (((`consumo_servicio` `cs` join `servicio` `s` on((`cs`.`id_servicio` = `s`.`id_servicio`))) join `reservacion` `r` on((`cs`.`id_reservacion` = `r`.`id_reservacion`))) join `cliente` `c` on((`r`.`id_cliente` = `c`.`id_cliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cliente_vip`
--

/*!50001 DROP VIEW IF EXISTS `cliente_vip`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente_vip` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nombre` AS `nombre_cliente`,count(`r`.`id_reservacion`) AS `veces_reservado` from (`cliente` `c` join `reservacion` `r` on((`c`.`id_cliente` = `r`.`id_cliente`))) where (`r`.`estado` in ('Completada','Activa')) group by `c`.`id_cliente`,`c`.`nombre` having (`veces_reservado` >= 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27 13:25:53
