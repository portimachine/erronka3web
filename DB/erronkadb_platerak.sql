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
-- Table structure for table `platerak`
--

DROP TABLE IF EXISTS `platerak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platerak` (
  `idPlaterak` int NOT NULL,
  `izena` varchar(45) NOT NULL,
  `prezioa` float NOT NULL,
  `deskribapena` longtext,
  PRIMARY KEY (`idPlaterak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platerak`
--

LOCK TABLES `platerak` WRITE;
/*!40000 ALTER TABLE `platerak` DISABLE KEYS */;
INSERT INTO `platerak` VALUES (1,'Paella Valenciana',15.5,'Deliciosa paella con mariscos y un toque de limón'),(2,'Gazpacho Andaluz',7.99,'Refrescante sopa fría, perfecta para el verano'),(3,'Tortilla Española',10,'Clásica tortilla de patatas, cebolla y huevo'),(4,'Pulpo a la Gallega',20,'Pulpo tierno sobre una cama de papas con pimentón'),(5,'Croquetas de Jamón',9.5,'Crujientes por fuera y cremosas por dentro'),(6,'Rabo de Toro',18.75,'Estofado de cola de toro, tierno y lleno de sabor'),(7,'Salmorejo',8.5,'Sopa espesa de tomate, pan, aceite y ajo'),(8,'Pimientos del Padrón',6.25,'Pimientos verdes fritos, algunos son picantes'),(9,'Bacalao al Pil Pil',17.5,'Bacalao en salsa de ajo y aceite de oliva'),(10,'Calamares a la Romana',13,'Anillos de calamar fritos y dorados'),(11,'Patatas Bravas',5.99,'Patatas en cubos con salsa picante'),(12,'Fabada Asturiana',16.2,'Guiso de fabes con chorizo, morcilla y jamón'),(13,'Merluza en Salsa Verde',14.75,'Merluza en una delicada salsa verde con almejas'),(14,'Chuletón de Ávila',25,'Ternera de Ávila a la parrilla con pimientos'),(15,'Cochinillo Asado',24,'Cochinillo crujiente y jugoso asado al estilo segoviano'),(16,'Arroz Negro',12.5,'Arroz con calamares y su tinta, acompañado de alioli'),(17,'Carrillada Ibérica',15.3,'Carrilleras de cerdo estofadas hasta quedar tiernas'),(18,'Fideuá',14,'Pasta corta cocida con mariscos, similar a la paella'),(19,'Albóndigas en Salsa',9.95,'Albóndigas de carne jugosas en salsa de tomate'),(20,'Ensaladilla Rusa',7,'Ensalada de patatas, zanahorias, guisantes y mayonesa'),(21,'Sopa de Mariscos',13.5,'Caldo rico y aromático con una variedad de mariscos'),(22,'Montadito de Lomo',4.5,'Bocadillo pequeño con lomo, pimiento y queso'),(23,'Huevos Rotos',11,'Huevos fritos sobre patatas con jamón o chorizo'),(24,'Chorizo a la Sidra',8.75,'Chorizo cocido en sidra, tierno y sabroso'),(25,'Crema Catalana',6.5,'Postre cremoso con una capa de caramelo crujiente'),(26,'Flan de Huevo',5.25,'Postre tradicional de flan de huevo con caramelo'),(27,'Tarta de Santiago',7.75,'Tarta de almendras típica de Galicia'),(28,'Natillas',5,'Postre cremoso de leche con canela y galleta'),(29,'Arroz con Leche',5.5,'Postre de arroz cocido en leche con canela y limón'),(30,'Tarta de Queso',6.9,'Tarta de queso cremosa con base de galleta y mermelada');
/*!40000 ALTER TABLE `platerak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-17 13:03:11
