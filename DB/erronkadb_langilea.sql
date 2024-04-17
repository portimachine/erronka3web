-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: erronkadb
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `langilea`
--

DROP TABLE IF EXISTS `langilea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `langilea` (
  `idLangilea` int NOT NULL,
  `NAN` char(9) NOT NULL,
  `izena` varchar(15) NOT NULL,
  `abizena` varchar(20) NOT NULL,
  `abizena2` varchar(20) NOT NULL,
  `telefonoa` char(9) NOT NULL,
  `banku_zenbakia` varchar(24) NOT NULL,
  `lan_postua` varchar(45) NOT NULL,
  `admin` tinyint NOT NULL,
  PRIMARY KEY (`idLangilea`),
  UNIQUE KEY `NAN_UNIQUE` (`idLangilea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langilea`
--

LOCK TABLES `langilea` WRITE;
/*!40000 ALTER TABLE `langilea` DISABLE KEYS */;
INSERT INTO `langilea` VALUES (1,'12345678Z','Jon','Doe','Garcia','123456789','1234567890','Sukaldaria',1),(2,'23456789Y','Maria','Lopez','Gutierrez','987654321','0987654321','Kamareroa',0),(3,'34567890X','David','Martinez','Sanchez','456789123','4567890123','Kamareroa',0),(4,'45678901W','Laura','Gonzalez','Perez','789123456','7890123456','Sukaldari auxiliarra',1),(5,'56789012V','Carlos','Rodriguez','Alvarez','321654987','3216549870','sukaldarien ikaslea',0),(6,'67890123U','Ana','Fernandez','Gomez','654987321','6549870123','sukaldarien laguntzailea',1),(7,'78901234T','Pedro','Sanchez','Martin','159263478','1592634780','almazeneko morroia',0),(8,'89012345S','Elena','Lopez','Garcia','357159246','3571592460','Gerentea',0),(9,'01234567Q','Marcos','Perez','Gutierrez','852741963','8527419630','fakturatzailea',0),(10,'90123456R','Sara','Ruiz','Hernandez','369852147','3698521470','Jatetxeko superbisatzailea',0),(11,'09876543P','Juan','Gomez','Diaz','147258369','1472583690','Kamareroa',0),(12,'98765432O','Luisa','Torres','Vazquez','258369147','2583691470','Kamareroa',0),(13,'65432109L','Roberto','Sanz','Lopez','123789456','1237894560','sukaldarien ikaslea',0),(14,'87654321N','Lucia','Diaz','Martinez','789456123','7894561230','Gerentea',0),(15,'76543210M','Javier','Hernandez','Garcia','456123789','4561237890','Sukaldari auxiliarra',1),(16,'54321098K','Patricia','Martin','Rodriguez','987654321','9876543210','Sukaldaria',1),(17,'43210987J','Daniel','Garcia','Fernandez','654123789','6541237890','sukaldarien laguntzailea',1),(18,'32109876I','Carmen','Alvarez','Ruiz','321789456','3217894560','Kamareroa',0),(19,'21098765H','Alberto','Ruiz','Sanchez','147369258','1473692580','Kamareroa',0),(20,'10987654G','Raquel','Fernandez','Gutierrez','963258741','9632587410','almazeneko morroia',0);
/*!40000 ALTER TABLE `langilea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-17 13:46:39
