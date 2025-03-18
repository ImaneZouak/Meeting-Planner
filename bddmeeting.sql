-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: meeting_planner
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `equipements`
--

DROP TABLE IF EXISTS `equipements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipements` (
  `id_equipement` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_equipement`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipements`
--

LOCK TABLES `equipements` WRITE;
/*!40000 ALTER TABLE `equipements` DISABLE KEYS */;
INSERT INTO `equipements` VALUES (1,'Ecran'),(3,'Pieuvre'),(4,'Tableau'),(2,'Webcam');
/*!40000 ALTER TABLE `equipements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipements_mobiles`
--

DROP TABLE IF EXISTS `equipements_mobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipements_mobiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `equipement_id` bigint(20) NOT NULL,
  `quantite_disponible` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `equipement_id` (`equipement_id`),
  CONSTRAINT `equipements_mobiles_ibfk_1` FOREIGN KEY (`equipement_id`) REFERENCES `equipements` (`id_equipement`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipements_mobiles`
--

LOCK TABLES `equipements_mobiles` WRITE;
/*!40000 ALTER TABLE `equipements_mobiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipements_mobiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `salle_id` bigint(20) NOT NULL,
  `reunion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salle_id` (`salle_id`),
  KEY `reunion_id` (`reunion_id`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`salle_id`) REFERENCES `salles` (`id_salle`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`reunion_id`) REFERENCES `reunions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reunions`
--

DROP TABLE IF EXISTS `reunions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reunions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `nombre_participants` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `reunions_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types_reunion` (`id_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reunions`
--

LOCK TABLES `reunions` WRITE;
/*!40000 ALTER TABLE `reunions` DISABLE KEYS */;
INSERT INTO `reunions` VALUES (1,1,'2025-03-19','09:00:00','10:00:00',8),(2,1,'2025-03-19','09:00:00','10:00:00',6);
/*!40000 ALTER TABLE `reunions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle_equipements`
--

DROP TABLE IF EXISTS `salle_equipements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salle_equipements` (
  `id_salle_equipement` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_salle` bigint(20) NOT NULL,
  `id_equipement` bigint(20) NOT NULL,
  PRIMARY KEY (`id_salle_equipement`),
  KEY `id_salle` (`id_salle`),
  KEY `id_equipement` (`id_equipement`),
  CONSTRAINT `salle_equipements_ibfk_1` FOREIGN KEY (`id_salle`) REFERENCES `salles` (`id_salle`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `salle_equipements_ibfk_2` FOREIGN KEY (`id_equipement`) REFERENCES `equipements` (`id_equipement`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle_equipements`
--

LOCK TABLES `salle_equipements` WRITE;
/*!40000 ALTER TABLE `salle_equipements` DISABLE KEYS */;
INSERT INTO `salle_equipements` VALUES (1,2,1),(2,2,2),(3,2,3);
/*!40000 ALTER TABLE `salle_equipements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salles`
--

DROP TABLE IF EXISTS `salles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salles` (
  `id_salle` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` int(11) NOT NULL,
  PRIMARY KEY (`id_salle`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salles`
--

LOCK TABLES `salles` WRITE;
/*!40000 ALTER TABLE `salles` DISABLE KEYS */;
INSERT INTO `salles` VALUES (1,'E1001',23),(2,'E2002',15);
/*!40000 ALTER TABLE `salles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_reunion`
--

DROP TABLE IF EXISTS `types_reunion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types_reunion` (
  `id_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_type`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_reunion`
--

LOCK TABLES `types_reunion` WRITE;
/*!40000 ALTER TABLE `types_reunion` DISABLE KEYS */;
INSERT INTO `types_reunion` VALUES (1,'VC');
/*!40000 ALTER TABLE `types_reunion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-18 13:36:38
