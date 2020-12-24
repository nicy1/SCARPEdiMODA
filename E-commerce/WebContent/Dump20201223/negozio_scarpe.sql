-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: negozio
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `scarpe`
--

DROP TABLE IF EXISTS `scarpe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scarpe` (
  `id_scarpe` int NOT NULL AUTO_INCREMENT,
  `genere` varchar(45) DEFAULT NULL,
  `descrizione` varchar(65) DEFAULT NULL,
  `colore` varchar(60) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `costo` double DEFAULT NULL,
  PRIMARY KEY (`id_scarpe`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scarpe`
--

LOCK TABLES `scarpe` WRITE;
/*!40000 ALTER TABLE `scarpe` DISABLE KEYS */;
INSERT INTO `scarpe` VALUES (1,'ciabatta','slim glitter w, infradito in gomma','rosa glitter',35,'mistral',30),(2,'ciabatta','slim glitter w, infradito in gomma','rosa glitter',41,'mistral',30),(3,'ciabatta','cross rope w, sandalo in gomma e altre materie','verde khaki',39,'mistral',12),(4,'ciabatta','w, infradito in gomma','fantasia romantica',40,'havaianas',14.99),(5,'ciabatta','cross w, sandalo in pelle e altre materie','nero',38,'mistral',30),(6,'ciabatta','cross w, sandalo in pelle e altre materie','nero',39,'mistral',30),(7,'ciabatta','ipè, infradito in gomma','tigre colorata su sfondo marrone',42,'havaianas',20),(8,'ciabatta','classic w, sandalo in gomma','bianco',37,'crocs',39.9),(9,'sneaker','disruptor low','bianco',39,'fila',69.99),(10,'sneaker','disruptor low','nero e bianco',36,'fila',59.99),(11,'sneaker','air max axis','grigio chiaro, grigio scuro, nero e giallo fluo',35,'nike',59.99),(12,'sneaker','air max 97','bianco',40,'nike',139.99),(13,'sneaker','air force 1 v8','nero e arancione fluo',38,'nike',84.99),(14,'sneaker','old skool platform','nero e bianco',39,'vans',69.99),(15,'sneaker','continental 80','nero e rosso',40,'adidas',39.99),(16,'sneaker','air force 1 sage low','nero e bianco',42,'nike',79.99),(17,'tennis','solution speed ff clay','nero, rosso e bianco',40,'asics',99.99),(18,'tennis','air max vapor wing','nero, grigio, bianco e verde',43,'nike',48.99),(19,'tennis','air zoom cage 3 clay','nero, bianco e viola',44,'nike',78.6),(20,'tennis','shot','nero, bianco e arancione',41,'diadora',39.99),(21,'tennis','air zoom prestige','grigio, bianco e arancione',40,'nike',79.99),(22,'tennis','adizero club','nero, bianco, verde, rosa',44,'adidas',44.99),(23,'stivale','6 inch premium','beige',44,'timberland',219.99),(24,'stivale','classic mini','nero',42,'ugg',165.99),(25,'stivale','pampa zip','nero',39,'palladium',99.99),(26,'stivale','1460 boot','nero',38,'dr. martens',174.99),(27,'stivale','mit profilsohle','nero',38,'stradivarius',59.99),(28,'stivale','stivali sopra i ginocchio','marrone',40,'zign',76.99),(29,'stivale','1460 boot','bordeaux',36,'dr. martens',161.99),(30,'tacchi','decolletè in finta pelle','rosa',40,'alexoo',29.99),(31,'tacchi','decolletè trapuntate con borchie oro','rosa',37,'alexoo',29.99),(32,'tacchi','decolletè ','argento glitter',37,'alexoo',29.99),(33,'tacchi','decolletè in vernice','giallo',38,'alexoo',29.99),(34,'tacchi','decolletè in finta pelle','cipria',39,'alexoo',29.99),(35,'tacchi','pinky, decolletè stringate in finta pelle','fucsia',40,'alexoo',29.99),(36,'mocassini','emily loafer','bianco, beige e oro',38,'michael kors',100.99),(37,'mocassini','driver','blu',38,'trussardi',76.99),(38,'mocassini','mocassino','nero',40,'giorgio 1958',93.99),(39,'mocassini','mocassino elegante','grigio',41,'pier one',29.99),(40,'mocassini','mocassino elegante','cognac',39,'pier one',18.69);
/*!40000 ALTER TABLE `scarpe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-23 17:10:30
