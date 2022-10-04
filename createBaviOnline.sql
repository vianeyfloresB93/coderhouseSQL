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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-04 13:38:18
