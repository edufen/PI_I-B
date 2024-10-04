-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `CPF` char(11) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `CODSUS` int NOT NULL,
  `ENDERECO` varchar(45) NOT NULL,
  `TELEFONE` char(11) NOT NULL,
  `NASCIMENTO` date NOT NULL,
  `IDADE` int NOT NULL,
  `SEXO` enum('H','M') NOT NULL,
  `ESTADO` varchar(45) NOT NULL,
  `CIDADE` varchar(45) NOT NULL,
  PRIMARY KEY (`CPF`),
  UNIQUE KEY `CPF_UNIQUE` (`CPF`),
  UNIQUE KEY `CODSUS_UNIQUE` (`CODSUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES ('10987654321','Maria Oliveira',1002,'Rua B, 456','11912345678','1985-05-30',39,'M','RJ','Rio de Janeiro'),('11223344556','Ana Costa',1003,'Rua C, 789','11998765432','1992-10-25',31,'M','MG','Belo Horizonte'),('12345678901','João Silva',1001,'Rua A, 123','11987654321','1990-01-15',34,'H','SP','São Paulo'),('14725836985','Lucas Ferreira',1008,'Rua H, 505','11925814769','1993-07-14',31,'H','RJ','Rio de Janeiro'),('25836914720','Patricia Rocha',1009,'Rua I, 606','11975315984','1982-09-09',41,'M','MG','Belo Horizonte'),('32165498700','Roberto Santos',1006,'Rua F, 303','11987654321','1980-06-06',44,'H','MG','Belo Horizonte'),('36925814701','Diego Pereira',1010,'Rua J, 707','11965478901','1990-05-15',34,'H','SP','São Paulo'),('45678912345','Fernanda Lima',1007,'Rua G, 404','11934567890','1997-11-11',27,'M','SP','São Paulo'),('65432109876','Juliana Martins',1005,'Rua E, 202','11976543210','1995-03-03',29,'M','RJ','Rio de Janeiro'),('98765432100','Carlos Almeida',1004,'Rua D, 101','11954321678','1988-12-12',35,'H','SP','São Paulo');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-04 12:34:11
