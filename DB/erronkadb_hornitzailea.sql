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
-- Table structure for table `hornitzailea`
--

DROP TABLE IF EXISTS `hornitzailea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hornitzailea` (
  `id_hornitzailea` int NOT NULL,
  `NIF` char(9) NOT NULL,
  `izena` varchar(45) NOT NULL,
  `produktua` varchar(255) NOT NULL,
  `telefonoa` int NOT NULL,
  `banku_zenbakia` varchar(24) NOT NULL,
  PRIMARY KEY (`id_hornitzailea`,`NIF`),
  UNIQUE KEY `id_hornitzailea_UNIQUE` (`id_hornitzailea`),
  UNIQUE KEY `NIF_UNIQUE` (`NIF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hornitzailea`
--

LOCK TABLES `hornitzailea` WRITE;
/*!40000 ALTER TABLE `hornitzailea` DISABLE KEYS */;
INSERT INTO `hornitzailea` VALUES (1,'12345678A','Sabores del Campo S.L','Irina, Azukrea, Arrautza',123456789,'ES12345678901234567890'),(2,'23456789B','Frescura y Sabor S.L','Esnea, Gazta, Mantekilla',234567890,'ES23456789012345678901'),(3,'34567890C','Delicias Artesanas S.coop','Txerrikia, Oilaskoa, Behikia',345678901,'ES34567890123456789012'),(4,'45678901D','Campo y Mar S.coop','Barazkiak, Frutak, Legumbreak',456789012,'ES45678901234567890123'),(5,'56789012E','Sabor Mediterráneo S.L','Olioa, Ozpina, Espezias',567890123,'ES56789012345678901234'),(6,'67890123F','Delicias del Huerto S.L','Arroza, Pasta, Salsak',678901234,'ES67890123456789012345'),(7,'78901234G','Aromas del Pan S.coop','Ogia, Zerealak, Fruitu lehorrak',789012345,'ES78901234567890123456'),(8,'89012345H','Refrescos del Paraíso S.L','Zumoak, Freskagarria, Edariak',890123456,'ES89012345678901234567'),(9,'90123456I','Dulces Sueños S.L','Txokolatea, Gozokiak, Izozkia',901234567,'ES90123456789012345678'),(10,'01234567J','Frutas Exóticas S.coop','Mendiko frutak, Fruta exotikoak, Fruta tropikalak',12345678,'ES01234567890123456789'),(11,'12345678K','Condimentos del Mundo S.L','Platerak dekoratzeko loreak',123456789,'ES12345678901234567890'),(12,'23456789L','Mariscos del Mar S.coop','Itsaskiak, Moluskuak, Krustazeoak',234567890,'ES23456789012345678901'),(13,'34567890M','Café y Té del Amanecer S.L','Kafea, Tea, Infusioak',345678901,'ES34567890123456789012'),(14,'45678901N','Lácteos del Valle S.L','Esnekiak',456789012,'ES45678901234567890123'),(15,'56789012O','Frutos Secos del Bosque S.coop','Haziak, Fruta deshidratatua',567890123,'ES56789012345678901234'),(16,'67890123P','Carnes Selectas S.L','Ondutako okela, Embutidoak, Fiambres',678901234,'ES67890123456789012345'),(17,'78901234Q','Sopas y Conservas S.coop','Zopa, saldak, Kontservak',789012345,'ES78901234567890123456'),(18,'89012345R','Pescados y Salazones S.L','Arraiak',890123456,'ES89012345678901234567'),(19,'90123456S','Vinos del Valle S.coop','Ardoa, Zerbeza, Likoreak',901234567,'ES90123456789012345678'),(20,'01234567T','Cereales y Granolas S.L','Zerealak, Granolak, Muesliak',12345678,'ES01234567890123456789');
/*!40000 ALTER TABLE `hornitzailea` ENABLE KEYS */;
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
