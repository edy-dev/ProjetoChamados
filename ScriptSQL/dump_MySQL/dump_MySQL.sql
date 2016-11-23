CREATE DATABASE  IF NOT EXISTS `chamados` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `chamados`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 192.168.100.180    Database: chamados
-- ------------------------------------------------------
-- Server version	5.7.16-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `indexNomeCidade` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Cuiaba','Mato Grosso','Brasil'),(2,'Juara','Mato Grosso','Brasil'),(3,'Sinop','Mato Grosso','Brasil'),(4,'CidadeSemUsar1','Mato Grosso','Brasil'),(5,'CidadeSemUsar3','Mato Grosso','Brasil'),(6,'CidadeSemUsar3','Mato Grosso','Brasil'),(7,'CidadeSemUsar4','Mato Grosso','Brasil');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `indexNomeEmpresa` (`nome`),
  KEY `FkEmpresaCidade` (`cidade`),
  CONSTRAINT `FkEmpresaCidade` FOREIGN KEY (`cidade`) REFERENCES `cidade` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'HOYLER Tecnologia','14.795.364/0001-10','Cuiaba'),(2,'IBM','15.795.364/0001-10','Sinop'),(3,'Microsoft','16.795.364/0001-10','Juara'),(4,'EmpresaSemUsar1','16.795.364/0001-10','Cuiaba'),(5,'EmpresaSemUsar2','16.795.364/0001-10','Cuiaba'),(6,'EmpresaSemUsar3','16.795.364/0001-10','Cuiaba');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `fabricante` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkFabricanteEmpresa_idx` (`fabricante`),
  CONSTRAINT `fkFabricanteEmpresa` FOREIGN KEY (`fabricante`) REFERENCES `empresa` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware`
--

LOCK TABLES `hardware` WRITE;
/*!40000 ALTER TABLE `hardware` DISABLE KEYS */;
INSERT INTO `hardware` VALUES (1,'Mouse','Generico','Microsoft'),(2,'Teclado','Generico','Microsoft'),(3,'PC 63 i3','Desktop','Microsoft'),(4,'Seridor IBM 3550','Servidor','IBM'),(5,'Fone de Ouvido','Generico','Microsoft'),(6,'Monitor','Desktop','IBM'),(7,'Servidor VMware vSphere Hypervisor','Servidor','HOYLER Tecnologia'),(8,'Sem Usar1','Servidor','HOYLER Tecnologia'),(9,'Sem Usar2','Servidor','HOYLER Tecnologia'),(10,'Sem Usar3','Servidor','HOYLER Tecnologia');
/*!40000 ALTER TABLE `hardware` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-23 19:06:28
