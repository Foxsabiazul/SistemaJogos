-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_vendas_jogosfps
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id_cidade` int NOT NULL,
  `nome_cidade` varchar(50) DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  PRIMARY KEY (`id_cidade`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'São Paulo',11),(2,'Rio de Janeiro',19),(3,'Salvador ',13),(4,'Brasília',NULL),(5,'Fortaleza',NULL),(6,'Manaus',NULL),(7,'Belo Horizonte',NULL),(8,'Curitiba',NULL),(9,'Recife',NULL),(10,'Porto Alegre',NULL),(11,'New York',3),(12,'Los Angeles',1),(13,'Chicago',NULL),(14,'',NULL),(15,'Santo Antônio',2),(16,'',NULL),(17,'Miami',NULL),(18,'Raleigh',10),(19,'Seattle',8),(20,'Filadélfia',NULL);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificacaoidade`
--

DROP TABLE IF EXISTS `classificacaoidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificacaoidade` (
  `id_classificacao` int NOT NULL,
  `faixa_etaria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_classificacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificacaoidade`
--

LOCK TABLES `classificacaoidade` WRITE;
/*!40000 ALTER TABLE `classificacaoidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificacaoidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_estado` int NOT NULL,
  `nome_estado` varchar(50) DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  PRIMARY KEY (`id_estado`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'California',5),(2,'Texas',5),(3,'New York',5),(4,'Illinois',5),(5,'Pensilvania',5),(6,'Ohio',5),(7,'Georgia',5),(8,'Michigan',5),(9,'Florida',5),(10,'Washington ',5),(11,'São Paulo',1),(12,'Minas Gerais',1),(13,'Bahia',1),(14,'Rio Grande do Sul',1),(15,'Ceará',1),(16,'Paraná',1),(17,'Pernambuco',1),(18,'Amazonas',1),(19,'Rio de Janeiro',1),(20,'Goiás',1),(21,'Ilha',2),(22,'Auvérnia',2),(23,'Provença-Alpes-Costa Azul',2),(24,'Occitânia',2),(25,'Altos de França',2),(26,'Nova Aquit',2),(27,'Grande Leste',2),(28,'País de la',2),(29,'Grã Bretanha',2),(30,'Centro-Val de Loire',2),(31,'Gauteng',NULL),(32,'Cabo Oriental',NULL),(33,'Cabo Ocidental',NULL),(34,'KwaZulu-Natal',NULL),(35,'Estado livre',NULL),(36,'Limpopo',NULL),(37,'Mpumalanga',NULL),(38,'Noroeste',NULL),(39,'Cabo Norte',NULL),(40,'Alberta',NULL),(41,'Colú',6),(42,'Manitoba',6),(43,'Novo',6),(44,'Terra Nova e Labrador(Nova Es',6),(45,'Ontário',6),(46,'Ilha do Quebeque',6),(47,'Saskatchewan',6),(48,'Chihuahua',6),(49,'',NULL),(50,'',NULL),(51,'',NULL),(52,'',NULL),(53,'',NULL),(54,'',NULL),(55,'',NULL),(56,'',NULL),(57,'',NULL),(58,'',NULL),(59,'',NULL),(60,'',NULL),(61,'',NULL),(62,'',NULL),(63,'',NULL),(64,'',NULL),(65,'',NULL),(66,'',NULL);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogosfpsconsole`
--

DROP TABLE IF EXISTS `jogosfpsconsole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogosfpsconsole` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogosfpsconsole`
--

LOCK TABLES `jogosfpsconsole` WRITE;
/*!40000 ALTER TABLE `jogosfpsconsole` DISABLE KEYS */;
INSERT INTO `jogosfpsconsole` VALUES (1,NULL,NULL),(2,NULL,NULL),(3,NULL,NULL),(4,NULL,NULL),(5,NULL,NULL);
/*!40000 ALTER TABLE `jogosfpsconsole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogosfpspc`
--

DROP TABLE IF EXISTS `jogosfpspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogosfpspc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogosfpspc`
--

LOCK TABLES `jogosfpspc` WRITE;
/*!40000 ALTER TABLE `jogosfpspc` DISABLE KEYS */;
INSERT INTO `jogosfpspc` VALUES (1,'Counter-Strike: Global Offensive','Windows'),(2,'DOOM','Windows'),(3,'Half-Life 2','Windows'),(4,'Far Cry 5','Windows');
/*!40000 ALTER TABLE `jogosfpspc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogostpsconsole`
--

DROP TABLE IF EXISTS `jogostpsconsole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogostpsconsole` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogostpsconsole`
--

LOCK TABLES `jogostpsconsole` WRITE;
/*!40000 ALTER TABLE `jogostpsconsole` DISABLE KEYS */;
INSERT INTO `jogostpsconsole` VALUES (1,'Gears of War 4','Xbox'),(2,'Uncharted 4: A Thief\'s End','PlayStation'),(3,'The Last of Us Part II','PlayStation'),(4,'Grand Theft Auto V','PlayStation');
/*!40000 ALTER TABLE `jogostpsconsole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogostpspc`
--

DROP TABLE IF EXISTS `jogostpspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogostpspc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogostpspc`
--

LOCK TABLES `jogostpspc` WRITE;
/*!40000 ALTER TABLE `jogostpspc` DISABLE KEYS */;
INSERT INTO `jogostpspc` VALUES (1,'Tomb Raider','Windows'),(2,'Max Payne 3','Windows'),(3,'Watch Dogs 2','Windows'),(4,'Assassin\'s Creed Odyssey','Windows');
/*!40000 ALTER TABLE `jogostpspc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id_pais` int NOT NULL,
  `nome_pais` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Brasil'),(2,'França'),(3,'Japão'),(4,'Reino Unido'),(5,'Estados Unidos'),(6,'México'),(7,'África do Sul'),(8,'Russia'),(9,'Australia');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id_produto` int NOT NULL,
  `nome_produto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantidade`
--

DROP TABLE IF EXISTS `quantidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quantidade` (
  `id_quantidade` int NOT NULL,
  `quantidade` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `id_cidade` int DEFAULT NULL,
  PRIMARY KEY (`id_quantidade`),
  KEY `id_produto` (`id_produto`),
  KEY `id_cidade` (`id_cidade`),
  CONSTRAINT `quantidade_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`),
  CONSTRAINT `quantidade_ibfk_2` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantidade`
--

LOCK TABLES `quantidade` WRITE;
/*!40000 ALTER TABLE `quantidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `quantidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valores`
--

DROP TABLE IF EXISTS `valores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valores` (
  `id_valores` int NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  PRIMARY KEY (`id_valores`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `valores_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valores`
--

LOCK TABLES `valores` WRITE;
/*!40000 ALTER TABLE `valores` DISABLE KEYS */;
/*!40000 ALTER TABLE `valores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sistema_vendas_jogosfps'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 15:39:22
