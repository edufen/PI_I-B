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
-- Table structure for table `vacina`
--

DROP TABLE IF EXISTS `vacina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacina` (
  `ID_VACINA` int NOT NULL AUTO_INCREMENT,
  `NOME_VACINA` varchar(45) NOT NULL,
  `LOTE` varchar(45) NOT NULL,
  `VALIDADE` date NOT NULL,
  `QTDDOSES` int NOT NULL,
  `INTERVALO` varchar(45) NOT NULL,
  `DOENCASPREVINIDAS` varchar(45) NOT NULL,
  `ADMINISTRACAO` varchar(45) NOT NULL,
  `FABRICANTE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_VACINA`),
  UNIQUE KEY `ID_VACINA_UNIQUE` (`ID_VACINA`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacina`
--

LOCK TABLES `vacina` WRITE;
/*!40000 ALTER TABLE `vacina` DISABLE KEYS */;
INSERT INTO `vacina` VALUES (1,'Vacina A','Lote001','2025-12-31',2,'30 dias','COVID-19','Intramuscular','Fabricante A'),(2,'Vacina B','Lote002','2024-11-30',1,'60 dias','Gripe','Intramuscular','Fabricante B'),(3,'Vacina C','Lote003','2026-01-15',3,'15 dias','Hepatite B','Intramuscular','Fabricante C'),(4,'Vacina D','Lote004','2025-10-10',1,'90 dias','Sarampo','Intramuscular','Fabricante D'),(5,'Vacina E','Lote005','2027-05-05',2,'28 dias','Rubéola','Subcutânea','Fabricante E'),(6,'Vacina F','Lote006','2024-08-21',1,'30 dias','Caxumba','Intramuscular','Fabricante F'),(7,'Vacina G','Lote007','2025-02-28',2,'14 dias','HPV','Intramuscular','Fabricante G'),(8,'Vacina H','Lote008','2026-09-01',3,'60 dias','Meningite','Intramuscular','Fabricante H'),(9,'Vacina I','Lote009','2026-12-15',2,'15 dias','Tétano','Intramuscular','Fabricante I'),(10,'Vacina J','Lote010','2027-01-10',1,'30 dias','Coqueluche','Intramuscular','Fabricante J');
/*!40000 ALTER TABLE `vacina` ENABLE KEYS */;
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
