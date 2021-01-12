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
  `codice` varchar(450) DEFAULT NULL,
  `genere` enum('uomo','donna','bambino','bambina') DEFAULT NULL,
  `descrizione` varchar(650) DEFAULT NULL,
  `colore` enum('bianco','nero','blu','rosso','marrone') DEFAULT NULL,
  `numero` enum('A','B','C','D','E','F','G','H','I','L','M','N','O','P','Q','R','S') DEFAULT NULL,
  `brand` varchar(450) DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `disponibilita` int DEFAULT NULL,
  PRIMARY KEY (`id_scarpe`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scarpe`
--

LOCK TABLES `scarpe` WRITE;
/*!40000 ALTER TABLE `scarpe` DISABLE KEYS */;
INSERT INTO `scarpe` VALUES (1,'bambina01','bambina','sneaker','bianco','A','nike',30,15),(2,'bambina02','bambina','sport','rosso','B','jd sport',30,20),(3,'bambina03','bambina','decolletè','nero','B','lelly kelly',12,15),(4,'bambina04','bambina','sport','blu','C','lelly kelly',14.99,15),(5,'bambina05','bambina','sneaker','bianco','D','lelly kelly',30,10),(6,'bambina06','bambina','sport','nero','E','nike',30,15),(7,'bambino01','bambino','sneaker','bianco','F','converse',45,20),(8,'bambino02','bambino','mocassino','marrone','G','original marines',30,2),(9,'bambino03','bambino','stivale','nero','H','dr. martens',60,14),(10,'bambino04','bambino','sneaker','blu','I','geox',35,13),(11,'bambino05','bambino','sneaker','nero','E','nike',65,11),(12,'ten01','uomo','sport','nero','P','diadora',39,3),(13,'ten02','uomo','sport','nero','N','asics',39,15),(14,'ten03','uomo','sport','bianco','Q','nike',42.99,2),(15,'ten04','uomo','sport','nero','S','nike',39.99,2),(16,'ten05','donna','sport','nero','O','nike',45.99,24),(17,'tac01','donna','decolletè','nero','I','alexoo',30,10),(18,'tac02','donna','decolletè','bianco','O','alexoo',30,5),(19,'tac03','donna','decolletè','bianco','N','alexoo',30,24),(20,'tac04','donna','decolletè','blu','O','alexoo',25,7),(21,'tac05','donna','decolletè','blu','N','alexoo',25,15),(22,'c01','uomo','ciabatta','marrone','P','carrera',6,5),(23,'c02','donna','ciabatta','nero','L','prima donna',10,4),(24,'c03','donna','ciabatta','marrone','M','prima donna',15,6),(25,'c04','donna','ciabatta','rosso','I','carrera',5,7),(26,'c05','donna','ciabatta','nero','L','carrera',5,2),(27,'m01','uomo','mocassino','marrone','O','gucci',30,5),(28,'m02','uomo','mocassino','nero','P','gucci',21,2),(29,'m03','uomo','mocassino','marrone','O','gucci',35,3),(30,'m04','uomo','mocassino','nero','P','gucci',50,6),(31,'m05','uomo','mocassino','nero','Q','D&G',60,1),(32,'sneak01','uomo','sneaker','nero','S','D&G',40,10),(33,'sneak02','uomo','sneaker','nero','P','H&M',45,10),(34,'sneak03','uomo','sneaker','marrone','R','carrera',21.5,10),(35,'sneak04','donna','sneaker','rosso','L','nike',54.5,10),(36,'sneak05','donna','sneaker','rosso','L','converse',20,10),(37,'stiv01','uomo','stivale','nero','R','bata',25.6,4),(38,'stiv02','uomo','stivale','marrone','S','timberland',43,5),(39,'stiv03','uomo','stivale','nero','Q','timberland',35,4),(40,'stiv04','donna','stivale','nero','I','H&M',15,2),(41,'stiv05','donna','stivale','nero','L','H&M',21,2);
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

-- Dump completed on 2021-01-12 14:41:34
