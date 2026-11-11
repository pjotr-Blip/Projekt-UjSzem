-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: ujszem_projekt
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `cikkek`
--

DROP TABLE IF EXISTS `cikkek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cikkek` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `szerkesztoid` bigint(20) NOT NULL,
  `temaid` bigint(20) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `publikalasi_ido` datetime DEFAULT NULL,
  `szoveg` text NOT NULL,
  `kep_utvonal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cikkek_szerkesztok` (`szerkesztoid`),
  KEY `fk_cikkek_temak` (`temaid`),
  CONSTRAINT `fk_cikkek_szerkesztok` FOREIGN KEY (`szerkesztoid`) REFERENCES `szerkesztok` (`id`),
  CONSTRAINT `fk_cikkek_temak` FOREIGN KEY (`temaid`) REFERENCES `temak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cikkek`
--

LOCK TABLES `cikkek` WRITE;
/*!40000 ALTER TABLE `cikkek` DISABLE KEYS */;
INSERT INTO `cikkek` VALUES (1,1,1,'A bajnoksag hajrajanak legfontosabb merkozesei','2026-09-01 08:30:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','cardIMG1.png'),(2,1,2,'Ujabb magyar siker a tenisz tornan','2026-09-05 14:15:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','cardIMG2.png'),(3,1,1,'Atigazolasi piac: kik mozdultak a nyaron?','2026-09-12 10:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','cardIMG3.png'),(4,2,3,'Hogyan valtoztatja meg az AI a mindennapjainkat?','2026-09-15 09:45:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png'),(5,2,4,'Az idei evek legjobb okostelefonjai','2026-09-20 16:20:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png'),(6,2,3,'Mesterseges intelligencia az oktatasban','2026-10-02 11:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png'),(7,3,5,'Mi tortenik a tozsden a negyedev vegen?','2026-10-05 13:30:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png'),(8,3,6,'Az ev legjobban varhato filmjei','2026-10-10 18:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png'),(9,4,5,'Befektetesi tippek kezdoknek','2026-10-14 07:50:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png'),(10,4,6,'Filmkritika: az ev meglepetese','2026-10-20 20:10:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png'),(11,4,4,'Osszetorheto telefonok: erdemes venni?','2026-11-01 12:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png'),(12,1,2,'Tenisz: a vilagranglista valtozasai','2026-11-08 15:40:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','placeholder.png');
/*!40000 ALTER TABLE `cikkek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `felhasznalok`
--

DROP TABLE IF EXISTS `felhasznalok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `felhasznalok` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `felh_nev` varchar(255) NOT NULL,
  `felh_jelszo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `felhasznalok`
--

LOCK TABLES `felhasznalok` WRITE;
/*!40000 ALTER TABLE `felhasznalok` DISABLE KEYS */;
INSERT INTO `felhasznalok` VALUES (1,'kovacs.anna@example.com','kovacsanna','placeholder_hash_1'),(2,'nagy.peter@example.com','nagypeter','placeholder_hash_2'),(3,'szabo.eva@example.com','szaboeva','placeholder_hash_3'),(4,'toth.gabor@example.com','tothgabor','placeholder_hash_4'),(5,'horvath.lili@example.com','horvathlili','placeholder_hash_5'),(6,'varga.bence@example.com','vargabence','placeholder_hash_6'),(7,'kiss.reka@example.com','kissreka','placeholder_hash_7'),(8,'molnar.david@example.com','molnardavid','placeholder_hash_8'),(9,'farkas.nora@example.com','farkasnora','placeholder_hash_9'),(10,'balogh.tamas@example.com','baloghtamas','placeholder_hash_10');
/*!40000 ALTER TABLE `felhasznalok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konyvjelzok`
--

DROP TABLE IF EXISTS `konyvjelzok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konyvjelzok` (
  `felhasznaloid` bigint(20) NOT NULL,
  `cikkid` bigint(20) NOT NULL,
  PRIMARY KEY (`felhasznaloid`,`cikkid`),
  KEY `cikkid` (`cikkid`),
  CONSTRAINT `konyvjelzok_ibfk_1` FOREIGN KEY (`felhasznaloid`) REFERENCES `felhasznalok` (`id`) ON DELETE CASCADE,
  CONSTRAINT `konyvjelzok_ibfk_2` FOREIGN KEY (`cikkid`) REFERENCES `cikkek` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konyvjelzok`
--

LOCK TABLES `konyvjelzok` WRITE;
/*!40000 ALTER TABLE `konyvjelzok` DISABLE KEYS */;
INSERT INTO `konyvjelzok` VALUES (1,4),(2,11),(3,8),(5,1),(5,4),(5,9),(6,2),(6,7),(6,8),(7,4),(7,5),(7,6),(7,11),(8,1),(8,3),(8,4),(8,10),(8,12),(9,7),(9,9),(10,2),(10,12);
/*!40000 ALTER TABLE `konyvjelzok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kovetesek`
--

DROP TABLE IF EXISTS `kovetesek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kovetesek` (
  `felhasznaloid` bigint(20) NOT NULL,
  `szerkesztoid` bigint(20) NOT NULL,
  PRIMARY KEY (`felhasznaloid`,`szerkesztoid`),
  KEY `szerkesztoid` (`szerkesztoid`),
  CONSTRAINT `kovetesek_ibfk_1` FOREIGN KEY (`felhasznaloid`) REFERENCES `felhasznalok` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kovetesek_ibfk_2` FOREIGN KEY (`szerkesztoid`) REFERENCES `szerkesztok` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kovetesek`
--

LOCK TABLES `kovetesek` WRITE;
/*!40000 ALTER TABLE `kovetesek` DISABLE KEYS */;
INSERT INTO `kovetesek` VALUES (2,4),(3,1),(5,1),(5,2),(5,4),(6,1),(6,3),(7,2),(7,4),(8,1),(8,2),(8,3),(8,4),(9,4),(10,1),(10,2);
/*!40000 ALTER TABLE `kovetesek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `szerkesztok`
--

DROP TABLE IF EXISTS `szerkesztok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `szerkesztok` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `felhasznaloid` bigint(20) NOT NULL,
  `szerk_nev` varchar(255) NOT NULL,
  `statusz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `felhasznaloid` (`felhasznaloid`),
  CONSTRAINT `fk_szerkesztok_felhasznalok` FOREIGN KEY (`felhasznaloid`) REFERENCES `felhasznalok` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `szerkesztok`
--

LOCK TABLES `szerkesztok` WRITE;
/*!40000 ALTER TABLE `szerkesztok` DISABLE KEYS */;
INSERT INTO `szerkesztok` VALUES (1,1,'Kovacs Anna','aktiv'),(2,2,'Nagy Peter','aktiv'),(3,3,'Szabo Eva','inaktiv'),(4,4,'Toth Gabor','aktiv');
/*!40000 ALTER TABLE `szerkesztok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temak`
--

DROP TABLE IF EXISTS `temak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tema_nev` varchar(255) NOT NULL,
  `altema_nev` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temak`
--

LOCK TABLES `temak` WRITE;
/*!40000 ALTER TABLE `temak` DISABLE KEYS */;
INSERT INTO `temak` VALUES (1,'Sport','Labdarugas'),(2,'Sport','Tenisz'),(3,'Technologia','Mesterseges intelligencia'),(4,'Technologia','Mobiltelefonok'),(5,'Gazdasag','Tozsde'),(6,'Kultura','Film');
/*!40000 ALTER TABLE `temak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-11 13:55:52
