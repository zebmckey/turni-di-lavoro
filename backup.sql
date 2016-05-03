-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: servizi
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `appuntamenti`
--

DROP TABLE IF EXISTS `appuntamenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(255) NOT NULL DEFAULT '',
  `testo` text NOT NULL,
  `str_data` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti`
--

LOCK TABLES `appuntamenti` WRITE;
/*!40000 ALTER TABLE `appuntamenti` DISABLE KEYS */;
INSERT INTO `appuntamenti` VALUES (1,'test','di servizio uff!!!!',1460152800),(2,'urca','azz che botta',1470261600);
/*!40000 ALTER TABLE `appuntamenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assenze`
--

DROP TABLE IF EXISTS `assenze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assenze` (
  `id_assenza` int(11) NOT NULL AUTO_INCREMENT,
  `id_utente` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `data_da` date DEFAULT NULL,
  `data_al` date DEFAULT NULL,
  PRIMARY KEY (`id_assenza`),
  KEY `utente_ind` (`id_utente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assenze`
--

LOCK TABLES `assenze` WRITE;
/*!40000 ALTER TABLE `assenze` DISABLE KEYS */;
/*!40000 ALTER TABLE `assenze` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grado` (
  `id_grado` int(11) NOT NULL AUTO_INCREMENT,
  `grado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'Gen.C.A.'),(2,'Gen.Div.'),(3,'Gen.B.'),(4,'Col.'),(5,'Ten.Col.'),(6,'Magg.'),(7,'Cap.'),(8,'Ten.'),(9,'S.Ten.'),(10,'1Ã‚Â° Mar.Luogt.'),(11,'1Ã‚Â° Mar.'),(12,'Mar.Ca.'),(13,'Mar.Ord.'),(14,'Mar.'),(15,'Serg.Magg.Ca.'),(16,'Serg.Magg.'),(17,'Serg.'),(18,'C.le Magg.Ca.Sc.'),(19,'C.le Magg.Ca.'),(20,'C.le Magg.Sc.'),(21,'1Ã‚Â°C.le Magg.'),(22,'C.le Magg.'),(23,'C.le');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recupero`
--

DROP TABLE IF EXISTS `recupero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recupero` (
  `id_recupero` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `dataservizio` date DEFAULT NULL,
  PRIMARY KEY (`id_recupero`),
  KEY `utente_ind` (`id_utente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recupero`
--

LOCK TABLES `recupero` WRITE;
/*!40000 ALTER TABLE `recupero` DISABLE KEYS */;
/*!40000 ALTER TABLE `recupero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_servizio`
--

DROP TABLE IF EXISTS `tipo_servizio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_servizio` (
  `id_servizio` int(11) NOT NULL AUTO_INCREMENT,
  `servizio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_servizio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_servizio`
--

LOCK TABLES `tipo_servizio` WRITE;
/*!40000 ALTER TABLE `tipo_servizio` DISABLE KEYS */;
INSERT INTO `tipo_servizio` VALUES (1,'Ufficiale di ispezione'),(2,'Ufficiale di picchetto'),(3,'Sottuficiale di ispezione'),(4,'Comandante della guardia');
/*!40000 ALTER TABLE `tipo_servizio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno1fes`
--

DROP TABLE IF EXISTS `turno1fes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno1fes` (
  `id_t1` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_t1`),
  KEY `utente_ind` (`id_utente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno1fes`
--

LOCK TABLES `turno1fes` WRITE;
/*!40000 ALTER TABLE `turno1fes` DISABLE KEYS */;
/*!40000 ALTER TABLE `turno1fes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno2PF`
--

DROP TABLE IF EXISTS `turno2PF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno2PF` (
  `id_t2` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_t2`),
  KEY `utente_ind` (`id_utente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno2PF`
--

LOCK TABLES `turno2PF` WRITE;
/*!40000 ALTER TABLE `turno2PF` DISABLE KEYS */;
/*!40000 ALTER TABLE `turno2PF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno3V`
--

DROP TABLE IF EXISTS `turno3V`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno3V` (
  `id_t3` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_t3`),
  KEY `utente_ind` (`id_utente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno3V`
--

LOCK TABLES `turno3V` WRITE;
/*!40000 ALTER TABLE `turno3V` DISABLE KEYS */;
/*!40000 ALTER TABLE `turno3V` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno4fer`
--

DROP TABLE IF EXISTS `turno4fer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno4fer` (
  `id_t4` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_t4`),
  KEY `utente_ind` (`id_utente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno4fer`
--

LOCK TABLES `turno4fer` WRITE;
/*!40000 ALTER TABLE `turno4fer` DISABLE KEYS */;
/*!40000 ALTER TABLE `turno4fer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno5SF`
--

DROP TABLE IF EXISTS `turno5SF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno5SF` (
  `id_t5` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_t5`),
  KEY `utente_ind` (`id_utente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno5SF`
--

LOCK TABLES `turno5SF` WRITE;
/*!40000 ALTER TABLE `turno5SF` DISABLE KEYS */;
/*!40000 ALTER TABLE `turno5SF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utente` (
  `id_utente` int(11) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) NOT NULL,
  `cognome` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `anzianita` date NOT NULL,
  `id_servizio` int(11) NOT NULL,
  PRIMARY KEY (`id_utente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-03 10:47:28
