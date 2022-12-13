CREATE DATABASE  IF NOT EXISTS `bavionline` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bavionline`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bavionline
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `blusa`
--

DROP TABLE IF EXISTS `blusa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blusa` (
  `idCliente` int DEFAULT NULL,
  `tipoBlusa` varchar(100) DEFAULT NULL,
  `talla` int DEFAULT NULL,
  `color` varchar(2) DEFAULT NULL,
  `idBlusa` varchar(24) NOT NULL,
  PRIMARY KEY (`idBlusa`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blusa`
--

LOCK TABLES `blusa` WRITE;
/*!40000 ALTER TABLE `blusa` DISABLE KEYS */;
INSERT INTO `blusa` VALUES (65,'vestir',34,'34','11'),(65,'vestir',34,'34','12'),(65,'casual',23,'37','13');
/*!40000 ALTER TABLE `blusa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCliente` int DEFAULT NULL,
  `idVestido` varchar(24) DEFAULT NULL,
  `idSudadera` varchar(24) DEFAULT NULL,
  `idChamarra` varchar(24) DEFAULT NULL,
  `idOficina` varchar(24) DEFAULT NULL,
  `precio` varchar(10) DEFAULT NULL,
  KEY `idCliente` (`idCliente`),
  KEY `idVestido` (`idVestido`),
  KEY `idSudadera` (`idSudadera`),
  KEY `idChamarra` (`idChamarra`),
  KEY `idOficina` (`idOficina`),
  CONSTRAINT `categorias_ibfk_2` FOREIGN KEY (`idVestido`) REFERENCES `vestido` (`idVestido`),
  CONSTRAINT `categorias_ibfk_3` FOREIGN KEY (`idSudadera`) REFERENCES `sudadera` (`idSudadera`),
  CONSTRAINT `categorias_ibfk_4` FOREIGN KEY (`idChamarra`) REFERENCES `chamarra` (`idChamarra`),
  CONSTRAINT `categorias_ibfk_5` FOREIGN KEY (`idOficina`) REFERENCES `oficina` (`idOficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamarra`
--

DROP TABLE IF EXISTS `chamarra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chamarra` (
  `idCliente` int DEFAULT NULL,
  `tipoChamarra` varchar(100) DEFAULT NULL,
  `talla` int DEFAULT NULL,
  `color` varchar(2) DEFAULT NULL,
  `textura` varchar(100) DEFAULT NULL,
  `idChamarra` varchar(24) NOT NULL,
  PRIMARY KEY (`idChamarra`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamarra`
--

LOCK TABLES `chamarra` WRITE;
/*!40000 ALTER TABLE `chamarra` DISABLE KEYS */;
/*!40000 ALTER TABLE `chamarra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `chamarras`
--

DROP TABLE IF EXISTS `chamarras`;
/*!50001 DROP VIEW IF EXISTS `chamarras`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `chamarras` AS SELECT 
 1 AS `idCliente`,
 1 AS `talla`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `codigopostal`
--

DROP TABLE IF EXISTS `codigopostal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigopostal` (
  `idCodigoPostal` int NOT NULL AUTO_INCREMENT,
  `idProveedor` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `codigoPostal` varchar(50) DEFAULT NULL,
  `colonia` varchar(1000) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCodigoPostal`),
  KEY `idCliente` (`idCliente`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `codigopostal_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `perfil_usuario` (`idCliente`),
  CONSTRAINT `codigopostal_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigopostal`
--

LOCK TABLES `codigopostal` WRITE;
/*!40000 ALTER TABLE `codigopostal` DISABLE KEYS */;
/*!40000 ALTER TABLE `codigopostal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `idCliente` int DEFAULT NULL,
  `idColor` int NOT NULL AUTO_INCREMENT,
  `numColor` varchar(50) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idColor`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `color_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `perfil_usuario` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) DEFAULT NULL,
  `apellido` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `idCodigoPostal` int DEFAULT NULL,
  `colonia` varchar(1000) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `idCodigoPostal` (`idCodigoPostal`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idCodigoPostal`) REFERENCES `codigopostal` (`idCodigoPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficina`
--

DROP TABLE IF EXISTS `oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficina` (
  `idCliente` int DEFAULT NULL,
  `pantalon` varchar(5) DEFAULT NULL,
  `blusa` varchar(5) DEFAULT NULL,
  `sacos` varchar(5) DEFAULT NULL,
  `idOficina` varchar(24) NOT NULL,
  PRIMARY KEY (`idOficina`),
  KEY `idCliente` (`idCliente`),
  KEY `pantalon` (`pantalon`),
  KEY `blusa` (`blusa`),
  CONSTRAINT `oficina_ibfk_2` FOREIGN KEY (`pantalon`) REFERENCES `pantalon` (`idPantalon`),
  CONSTRAINT `oficina_ibfk_3` FOREIGN KEY (`blusa`) REFERENCES `blusa` (`idBlusa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficina`
--

LOCK TABLES `oficina` WRITE;
/*!40000 ALTER TABLE `oficina` DISABLE KEYS */;
/*!40000 ALTER TABLE `oficina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!50001 DROP VIEW IF EXISTS `oficinas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `oficinas` AS SELECT 
 1 AS `pantalon`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pantalon`
--

DROP TABLE IF EXISTS `pantalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pantalon` (
  `idCliente` int DEFAULT NULL,
  `talla` int DEFAULT NULL,
  `color` varchar(2) DEFAULT NULL,
  `textura` varchar(100) DEFAULT NULL,
  `idPantalon` varchar(24) NOT NULL,
  PRIMARY KEY (`idPantalon`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantalon`
--

LOCK TABLES `pantalon` WRITE;
/*!40000 ALTER TABLE `pantalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pantalon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_usuario`
--

DROP TABLE IF EXISTS `perfil_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_usuario` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `edad` varchar(3) DEFAULT NULL,
  `complexion` varchar(30) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_usuario`
--

LOCK TABLES `perfil_usuario` WRITE;
/*!40000 ALTER TABLE `perfil_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idCliente` int DEFAULT NULL,
  `tipoProducto` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `textura` varchar(100) DEFAULT NULL,
  `genero` varchar(2) DEFAULT NULL,
  `precio` double(50,4) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  `talla` int DEFAULT NULL,
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `perfil_usuario` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!50001 DROP VIEW IF EXISTS `productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos` AS SELECT 
 1 AS `idCliente`,
 1 AS `talla`,
 1 AS `precio`,
 1 AS `stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `productosproveedor`
--

DROP TABLE IF EXISTS `productosproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productosproveedor` (
  `idProveedor` int DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `producto` varchar(1000) DEFAULT NULL,
  `cantidad` varchar(100) DEFAULT NULL,
  `precio` varchar(100) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `productosproveedor_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productosproveedor`
--

LOCK TABLES `productosproveedor` WRITE;
/*!40000 ALTER TABLE `productosproveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `productosproveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `telefono` varchar(50) DEFAULT NULL,
  `nombre` varchar(1000) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `idSucursal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) DEFAULT NULL,
  `direccion` varchar(1000) DEFAULT NULL,
  `cede` varchar(1000) DEFAULT NULL,
  `idCodigoPostal` int DEFAULT NULL,
  `colonia` varchar(1000) DEFAULT NULL,
  `ciudad` varchar(1000) DEFAULT NULL,
  `referencias` varchar(1000) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idSucursal`),
  KEY `idCodigoPostal` (`idCodigoPostal`),
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idCodigoPostal`) REFERENCES `codigopostal` (`idCodigoPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sudadera`
--

DROP TABLE IF EXISTS `sudadera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sudadera` (
  `idCliente` int DEFAULT NULL,
  `talla` int DEFAULT NULL,
  `color` varchar(2) DEFAULT NULL,
  `tipoSudadera` varchar(100) DEFAULT NULL,
  `idSudadera` varchar(24) NOT NULL,
  PRIMARY KEY (`idSudadera`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sudadera`
--

LOCK TABLES `sudadera` WRITE;
/*!40000 ALTER TABLE `sudadera` DISABLE KEYS */;
/*!40000 ALTER TABLE `sudadera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textura`
--

DROP TABLE IF EXISTS `textura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textura` (
  `idCliente` int DEFAULT NULL,
  `idTextura` int NOT NULL AUTO_INCREMENT,
  `numTextura` varchar(50) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idTextura`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `textura_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `perfil_usuario` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textura`
--

LOCK TABLES `textura` WRITE;
/*!40000 ALTER TABLE `textura` DISABLE KEYS */;
/*!40000 ALTER TABLE `textura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!50001 DROP VIEW IF EXISTS `usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuario` AS SELECT 
 1 AS `idCliente`,
 1 AS `nombre`,
 1 AS `direccion`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vestido`
--

DROP TABLE IF EXISTS `vestido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vestido` (
  `idCliente` int DEFAULT NULL,
  `casual` varchar(100) DEFAULT NULL,
  `fiesta` varchar(50) DEFAULT NULL,
  `talla` int DEFAULT NULL,
  `color` varchar(2) DEFAULT NULL,
  `tipoManga` varchar(50) DEFAULT NULL,
  `idVestido` varchar(24) NOT NULL,
  PRIMARY KEY (`idVestido`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vestido`
--

LOCK TABLES `vestido` WRITE;
/*!40000 ALTER TABLE `vestido` DISABLE KEYS */;
/*!40000 ALTER TABLE `vestido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vestidos`
--

DROP TABLE IF EXISTS `vestidos`;
/*!50001 DROP VIEW IF EXISTS `vestidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vestidos` AS SELECT 
 1 AS `idCliente`,
 1 AS `talla`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `chamarras`
--

/*!50001 DROP VIEW IF EXISTS `chamarras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`vianeyflores`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `chamarras` AS select `chamarra`.`idCliente` AS `idCliente`,`chamarra`.`talla` AS `talla` from `chamarra` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `oficinas`
--

/*!50001 DROP VIEW IF EXISTS `oficinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`vianeyflores`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `oficinas` AS select `oficina`.`pantalon` AS `pantalon` from `oficina` where (`oficina`.`pantalon` = (select `pantalon`.`talla` from `pantalon` where (`pantalon`.`talla` > 34))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos`
--

/*!50001 DROP VIEW IF EXISTS `productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`vianeyflores`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `productos` AS select `producto`.`idCliente` AS `idCliente`,`producto`.`talla` AS `talla`,`producto`.`precio` AS `precio`,`producto`.`stock` AS `stock` from `producto` where (`producto`.`precio` = (select `categorias`.`precio` from `categorias` where (`categorias`.`precio` > '500'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario`
--

/*!50001 DROP VIEW IF EXISTS `usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`vianeyflores`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario` AS select `perfil_usuario`.`idCliente` AS `idCliente`,`perfil_usuario`.`nombre` AS `nombre`,`perfil_usuario`.`direccion` AS `direccion`,`perfil_usuario`.`email` AS `email` from `perfil_usuario` where (`perfil_usuario`.`pais` = 'Mexico') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vestidos`
--

/*!50001 DROP VIEW IF EXISTS `vestidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`vianeyflores`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vestidos` AS select `vestido`.`idCliente` AS `idCliente`,`vestido`.`talla` AS `talla` from `vestido` where (`vestido`.`tipoManga` = 'larga') */;
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

-- Dump completed on 2022-12-12 22:26:04
