-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: erronkadb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `bezeroa`
--

DROP TABLE IF EXISTS `bezeroa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bezeroa` (
  `NAN` char(9) NOT NULL,
  `idBezeroa` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(15) NOT NULL,
  `abizena` varchar(20) NOT NULL,
  `abizena2` varchar(20) DEFAULT NULL,
  `banku_zenbakia` varchar(24) DEFAULT NULL,
  `telefonoa` char(9) DEFAULT NULL,
  `emaila` varchar(45) NOT NULL,
  `usuarioa` varchar(45) DEFAULT NULL,
  `pasahitza` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idBezeroa`,`NAN`),
  UNIQUE KEY `NAN_UNIQUE` (`NAN`),
  UNIQUE KEY `idBezeroa_UNIQUE` (`idBezeroa`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bezeroa`
--

LOCK TABLES `bezeroa` WRITE;
/*!40000 ALTER TABLE `bezeroa` DISABLE KEYS */;
INSERT INTO `bezeroa` VALUES ('12345678A',1,'Juan','García','López','ES9121000418450200051332','234567890','',NULL,NULL),('23456789B',2,'María','Martínez','Fernández','ES9121020418450200051332','345678901','',NULL,NULL),('34567890C',3,'Pedro','Sánchez','González','ES9121010418450200051332','456789012','',NULL,NULL),('45678901D',4,'Ana','Rodríguez','Pérez','ES9121030418450200051332','567890123','',NULL,NULL),('56789012E',5,'Carlos','Fernández','López','ES9121040418450200051332','678901234','',NULL,NULL),('67890123F',6,'Laura','González','Martínez','ES9121050418450203051332','789012345','',NULL,NULL),('78901234G',7,'David','López','Sánchez','ES9121040418450240051332','890123456','',NULL,NULL),('89012345H',8,'Sara','Pérez','Fernández','ES9121090418450204051332','901234567','',NULL,NULL),('90123456I',9,'Miguel','Martínez','García','ES9521054048450200051332','012345678','',NULL,NULL),('01234567J',10,'Elena','García','Sánchez','ES9121000418450278051332','123456789','',NULL,NULL),('12345678K',11,'Javier','Sánchez','López','ES9121060418450203051332','234567890','',NULL,NULL),('23456789L',12,'Carmen','López','Martínez','ES9121570418450204051332','345678901','',NULL,NULL),('34567890M',13,'Alejandro','Martínez','Fernández','ES9121003418450200451332','456789012','',NULL,NULL),('45678901N',14,'Lucía','Fernández','Pérez','ES9121480418450200051332','567890123','',NULL,NULL),('56789012O',15,'Diego','Pérez','González','ES2121000418450200051332','678901234','',NULL,NULL),('67890123P',16,'Ana','González','López','ES9121000318450200051332','789012345','',NULL,NULL),('78901234Q',17,'Pablo','López','Martínez','ES9121001418450200051332','890123456','',NULL,NULL),('89012345R',18,'Clara','Martínez','Sánchez','ES9121000418450202051332','901234567','',NULL,NULL),('90123456S',19,'Francisco','Sánchez','Fernández','ES9121000418450201051332','012345678','',NULL,NULL),('01234567T',20,'Marina','Fernández','García','ES9121000438450200051332','123456789','',NULL,NULL),('71122333A',21,'unai','caminos','aldanondo',NULL,'612345465','unaigoat@gmail.com','unaica','$2y$10$3f67n3td5x8dW6AkuVR3ruG9JW3a2S0bylqyC63wOaqVR0pbxK5EK'),('73216943P',23,'beñat','portillo','echarri',NULL,'666666666','porti@gmail.com','porti','$2y$10$CeK3BjujYI/bT0ASGER05.RQq6AGJr8V.WGGbP/y8.VICB4NYFaNe');
/*!40000 ALTER TABLE `bezeroa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bezeroa_has_katalogoa`
--

DROP TABLE IF EXISTS `bezeroa_has_katalogoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bezeroa_has_katalogoa` (
  `bezeroa_NAN` int NOT NULL,
  `katalogoa_idkatalogoa` int NOT NULL,
  PRIMARY KEY (`bezeroa_NAN`,`katalogoa_idkatalogoa`),
  KEY `fk_langilea_has_Produktuak_Produktuak1_idx` (`katalogoa_idkatalogoa`),
  KEY `fk_langilea_has_Produktuak_langilea1_idx` (`bezeroa_NAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bezeroa_has_katalogoa`
--

LOCK TABLES `bezeroa_has_katalogoa` WRITE;
/*!40000 ALTER TABLE `bezeroa_has_katalogoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `bezeroa_has_katalogoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erreserba`
--

DROP TABLE IF EXISTS `erreserba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erreserba` (
  `idErreserba` int NOT NULL AUTO_INCREMENT,
  `usuario_bezeroa` varchar(45) NOT NULL,
  `zenbatekoa` varchar(45) NOT NULL,
  `ordua` varchar(45) NOT NULL,
  `egoera` varchar(45) DEFAULT 'HASI GABE',
  PRIMARY KEY (`idErreserba`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erreserba`
--

LOCK TABLES `erreserba` WRITE;
/*!40000 ALTER TABLE `erreserba` DISABLE KEYS */;
INSERT INTO `erreserba` VALUES (1,'unaica','5','10:30','Pendiente'),(2,'unaica','5','10:30','Hasi gabe'),(3,'unaica','5','10:30','Hasi gabe'),(4,'unaica','5','10:30','Hasi gabe'),(5,'unaica','5','10:30','Hasi gabe'),(6,'unaica','5','04:45','Hasi gabe');
/*!40000 ALTER TABLE `erreserba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eskaera`
--

DROP TABLE IF EXISTS `eskaera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eskaera` (
  `ideskaera` int NOT NULL,
  `bezeroa_idBezeroa` int NOT NULL,
  `mahiZenbakia` int DEFAULT NULL,
  PRIMARY KEY (`ideskaera`,`bezeroa_idBezeroa`),
  KEY `fk_eskaera_bezeroa1_idx` (`bezeroa_idBezeroa`),
  CONSTRAINT `fk_eskaera_bezeroa1` FOREIGN KEY (`bezeroa_idBezeroa`) REFERENCES `bezeroa` (`idBezeroa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eskaera`
--

LOCK TABLES `eskaera` WRITE;
/*!40000 ALTER TABLE `eskaera` DISABLE KEYS */;
/*!40000 ALTER TABLE `eskaera` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `produktuak`
--

DROP TABLE IF EXISTS `produktuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktuak` (
  `id_Produktuak` int NOT NULL,
  `izena` varchar(45) NOT NULL,
  `prezioa` int NOT NULL,
  `kantitatea` int NOT NULL,
  `hornitzailea_id_hornitzailea` int NOT NULL,
  PRIMARY KEY (`id_Produktuak`,`hornitzailea_id_hornitzailea`),
  UNIQUE KEY `id_Produktuak_UNIQUE` (`id_Produktuak`),
  KEY `fk_Produktuak_hornitzailea1_idx` (`hornitzailea_id_hornitzailea`),
  CONSTRAINT `fk_Produktuak_hornitzailea1` FOREIGN KEY (`hornitzailea_id_hornitzailea`) REFERENCES `hornitzailea` (`id_hornitzailea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktuak`
--

LOCK TABLES `produktuak` WRITE;
/*!40000 ALTER TABLE `produktuak` DISABLE KEYS */;
/*!40000 ALTER TABLE `produktuak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-17 12:52:05
