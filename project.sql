-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: player_stats
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
-- Table structure for table `battingbio`
--

DROP TABLE IF EXISTS `battingbio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battingbio` (
  `player_id` int NOT NULL,
  `prefered_bowler` enum('Lspin','Lpace','Rspin','Rpace') DEFAULT NULL,
  `prefered_position` enum('top','middle','lower','tail') DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battingbio`
--

LOCK TABLES `battingbio` WRITE;
/*!40000 ALTER TABLE `battingbio` DISABLE KEYS */;
INSERT INTO `battingbio` VALUES (1,'Rpace','top'),(2,'Lspin','top'),(3,'Lspin','top'),(4,'Rpace','middle'),(5,'Rpace','middle'),(6,'Rpace','middle'),(7,'Lpace','lower'),(8,'Rspin','tail'),(9,'Rpace','tail'),(10,'Lspin','lower'),(11,'Lpace','tail'),(12,'Lspin','top'),(13,'Lspin','top'),(14,'Rspin','top'),(15,'Rpace','top'),(16,'Rpace','middle'),(17,'Rpace','middle'),(18,'Rpace','lower'),(19,'Rpace','middle'),(20,'Rspin','tail'),(21,'Rpace','tail'),(22,'Lpace','tail');
/*!40000 ALTER TABLE `battingbio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battinghistory`
--

DROP TABLE IF EXISTS `battinghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battinghistory` (
  `player_id` int NOT NULL,
  `runs_to_Lspin` int DEFAULT NULL,
  `runs_to_Rspin` int DEFAULT NULL,
  `runs_to_Rpace` int DEFAULT NULL,
  `runs_to_Lpace` int DEFAULT NULL,
  `out_to_Lspin` int DEFAULT NULL,
  `out_to_Rspin` int DEFAULT NULL,
  `out_to_Rpace` int DEFAULT NULL,
  `out_to_Lpace` int DEFAULT NULL,
  `balls_Lspin` int DEFAULT NULL,
  `balls_Rspin` int DEFAULT NULL,
  `balls_Rpace` int DEFAULT NULL,
  `balls_Lpace` int DEFAULT NULL,
  `batting_avg_Lspin` decimal(5,2) DEFAULT NULL,
  `batting_avg_Rspin` decimal(5,2) DEFAULT NULL,
  `batting_avg_Rpace` decimal(5,2) DEFAULT NULL,
  `batting_avg_Lpace` decimal(5,2) DEFAULT NULL,
  `elo_rating_Lspin` decimal(6,2) DEFAULT NULL,
  `elo_rating_Rspin` decimal(6,2) DEFAULT NULL,
  `elo_rating_Rpace` decimal(6,2) DEFAULT NULL,
  `elo_rating_Lpace` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battinghistory`
--

LOCK TABLES `battinghistory` WRITE;
/*!40000 ALTER TABLE `battinghistory` DISABLE KEYS */;
INSERT INTO `battinghistory` VALUES (1,304,656,1450,534,11,27,59,16,254,565,1142,378,27.64,24.30,24.58,33.38,-13.05,-10.61,2.67,-2.11),(2,436,778,1402,515,5,16,46,7,315,536,1074,393,87.20,48.62,30.48,73.57,14.92,10.56,8.91,10.93),(3,433,411,735,157,3,7,12,3,312,295,516,109,144.33,58.71,61.25,52.33,32.85,5.01,14.11,-1.98),(4,147,576,1268,318,6,12,42,13,127,426,811,219,24.50,48.00,30.19,24.46,-17.49,3.92,11.57,-9.28),(5,240,331,755,166,6,11,30,6,223,271,546,118,40.00,30.09,25.17,27.67,-11.68,-11.01,-4.14,-10.98),(6,490,1540,2609,556,14,46,77,20,392,1173,1827,439,35.00,33.48,33.88,27.80,-5.40,14.10,36.19,-7.65),(7,27,185,558,194,3,6,22,3,98,182,405,99,9.00,30.83,25.36,64.67,-42.18,-17.27,-6.90,13.21),(8,0,32,81,27,0,1,8,4,1,29,71,27,0.00,32.00,10.12,6.75,-50.00,-17.77,-24.92,-28.77),(9,13,32,91,10,2,2,4,3,11,36,64,16,6.50,16.00,22.75,3.33,-24.82,-27.26,-13.61,-37.40),(10,76,116,994,230,4,10,75,19,52,102,653,162,19.00,11.60,13.25,12.11,-14.39,-24.29,-15.76,-18.67),(11,8,9,42,15,2,4,4,1,10,10,44,15,4.00,2.25,10.50,15.00,-33.36,-32.65,-28.10,-25.45),(12,259,513,872,328,3,14,16,12,168,370,661,245,86.33,36.64,54.50,27.33,13.30,-1.49,12.49,-9.99),(13,542,848,1404,550,6,14,34,12,370,622,1083,389,90.33,60.57,41.29,45.83,20.26,15.28,16.83,3.73),(14,122,510,636,166,4,8,22,9,81,351,481,112,30.50,63.75,28.91,18.44,-8.67,10.28,-4.60,-13.45),(15,700,956,2427,801,21,40,63,23,620,769,1957,622,33.33,23.90,38.52,34.83,-4.82,-5.29,33.97,1.03),(16,622,1247,2341,595,20,45,77,26,497,1088,1801,454,31.10,27.71,30.40,22.88,-4.98,0.65,24.55,-9.47),(17,645,1035,2895,955,14,22,75,26,569,954,1959,575,46.07,47.05,38.60,36.73,0.24,8.06,47.99,12.49),(18,320,619,1414,495,10,20,53,19,223,594,1040,336,32.00,30.95,26.68,26.05,-6.10,-9.30,6.42,-5.47),(19,432,1026,1961,462,20,39,61,23,268,690,1319,357,21.60,26.31,32.15,20.09,-6.32,2.81,23.81,-13.43),(20,13,27,39,9,0,3,4,1,9,19,30,11,0.00,9.00,9.75,9.00,-20.72,-19.27,-21.51,-31.07),(21,3,0,21,8,0,0,1,1,3,0,15,6,0.00,0.00,21.00,8.00,-29.91,-50.00,-15.47,-21.09),(22,7,4,37,27,0,2,5,0,18,12,45,30,0.00,2.00,7.40,0.00,-42.01,-43.41,-32.23,-31.19);
/*!40000 ALTER TABLE `battinghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battingstats`
--

DROP TABLE IF EXISTS `battingstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battingstats` (
  `player_id` int NOT NULL,
  `inngs` int DEFAULT NULL,
  `runs` int DEFAULT NULL,
  `SR` decimal(5,2) DEFAULT NULL,
  `battingAvg` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battingstats`
--

LOCK TABLES `battingstats` WRITE;
/*!40000 ALTER TABLE `battingstats` DISABLE KEYS */;
INSERT INTO `battingstats` VALUES (1,377,2944,125.87,26.05),(2,295,3131,135.07,42.31),(3,143,1736,140.91,69.44),(4,288,2309,145.86,31.63),(5,208,1492,128.84,28.15),(6,357,5195,135.60,33.09),(7,154,964,122.96,28.35),(8,48,140,109.38,10.77),(9,43,146,114.96,13.27),(10,271,1416,146.13,13.11),(11,33,74,93.67,6.73),(12,176,1972,136.57,43.82),(13,284,3344,135.71,50.67),(14,182,1434,139.90,33.35),(15,526,4884,123.08,33.22),(16,623,4805,125.13,28.60),(17,681,5530,136.31,40.36),(18,454,2848,129.87,27.92),(19,440,3881,147.34,27.14),(20,23,88,127.54,11.00),(21,8,32,133.33,16.00),(22,26,75,71.43,10.71);
/*!40000 ALTER TABLE `battingstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bowlingbio`
--

DROP TABLE IF EXISTS `bowlingbio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bowlingbio` (
  `player_id` int NOT NULL,
  `prefered_batting_hand` enum('left','right') DEFAULT NULL,
  `prefered_position` enum('new','first_change','second_change','death') DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bowlingbio`
--

LOCK TABLES `bowlingbio` WRITE;
/*!40000 ALTER TABLE `bowlingbio` DISABLE KEYS */;
INSERT INTO `bowlingbio` VALUES (1,'left','second_change'),(2,'left','second_change'),(3,'right','second_change'),(4,'right','first_change'),(5,'left','second_change'),(6,'left','second_change'),(7,'right','second_change'),(8,'left','new'),(9,'right','first_change'),(10,'left','first_change'),(11,'left','new'),(12,'left','second_change'),(13,'left','second_change'),(14,'left','second_change'),(15,'left','second_change'),(16,'left','second_change'),(17,'left','second_change'),(18,'left','first_change'),(19,'right','first_change'),(20,'left','new'),(21,'left','new'),(22,'left','first_change');
/*!40000 ALTER TABLE `bowlingbio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bowlinghistory`
--

DROP TABLE IF EXISTS `bowlinghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bowlinghistory` (
  `player_id` int NOT NULL,
  `runs_conceded_to_left` int DEFAULT NULL,
  `runs_conceded_to_right` int DEFAULT NULL,
  `wickets_against_left` int DEFAULT NULL,
  `wickets_against_right` int DEFAULT NULL,
  `balls_bowled_to_left` int DEFAULT NULL,
  `balls_bowled_to_right` int DEFAULT NULL,
  `bowling_avg_against_left` decimal(5,2) DEFAULT NULL,
  `bowling_avg_against_right` decimal(5,2) DEFAULT NULL,
  `elo_rating_against_left` decimal(4,2) DEFAULT NULL,
  `elo_rating_against_right` decimal(4,2) DEFAULT NULL,
  `strikeRate_right` decimal(5,2) DEFAULT NULL,
  `strikeRate_left` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bowlinghistory`
--

LOCK TABLES `bowlinghistory` WRITE;
/*!40000 ALTER TABLE `bowlinghistory` DISABLE KEYS */;
INSERT INTO `bowlinghistory` VALUES (1,0,0,0,0,0,0,0.00,0.00,0.00,0.00,0.00,0.00),(2,0,0,0,0,0,0,0.00,0.00,0.00,0.00,0.00,0.00),(3,8,15,0,1,5,13,0.00,15.00,0.00,1.30,13.00,0.00),(4,531,1232,21,32,385,817,25.29,38.50,1.83,2.55,25.53,18.33),(5,263,445,7,12,222,292,37.57,37.08,3.17,2.43,24.33,31.71),(6,0,0,0,0,0,0,0.00,0.00,0.00,0.00,0.00,0.00),(7,409,820,14,21,313,638,29.21,39.05,2.24,3.04,30.38,22.36),(8,1117,2199,33,102,744,1616,33.85,21.56,2.26,1.58,15.84,22.55),(9,513,1411,33,41,451,1135,15.55,34.41,1.37,2.77,27.68,13.67),(10,2529,5281,124,279,2282,4880,20.40,18.93,1.84,1.75,17.49,18.40),(11,1098,2324,37,90,825,1607,29.68,25.82,2.23,1.79,17.86,22.30),(12,0,0,0,0,0,0,0.00,0.00,0.00,0.00,0.00,0.00),(13,0,0,0,0,0,0,0.00,0.00,0.00,0.00,0.00,0.00),(14,93,285,2,11,73,201,46.50,25.91,3.65,1.83,18.27,36.50),(15,3,2,1,0,4,2,3.00,0.00,0.40,0.00,0.00,4.00),(16,0,0,0,0,0,0,0.00,0.00,0.00,0.00,0.00,0.00),(17,25,0,0,0,12,0,0.00,0.00,0.00,0.00,0.00,0.00),(18,1531,3334,37,124,1081,2702,41.38,26.89,2.92,2.18,21.79,29.22),(19,1093,2061,60,74,988,1499,18.22,27.85,1.65,2.03,20.26,16.47),(20,733,1362,24,48,556,1020,30.54,28.38,2.32,2.13,21.25,23.17),(21,455,734,13,33,294,458,35.00,22.24,2.26,1.39,13.88,22.62),(22,595,1195,23,51,498,1010,25.87,23.43,2.17,1.98,19.80,21.65);
/*!40000 ALTER TABLE `bowlinghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bowlingstats`
--

DROP TABLE IF EXISTS `bowlingstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bowlingstats` (
  `player_id` int NOT NULL,
  `inngs` int DEFAULT NULL,
  `wickets` int DEFAULT NULL,
  `runs_conceded` int DEFAULT NULL,
  `economy` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bowlingstats`
--

LOCK TABLES `bowlingstats` WRITE;
/*!40000 ALTER TABLE `bowlingstats` DISABLE KEYS */;
INSERT INTO `bowlingstats` VALUES (1,0,0,0,0.00),(2,0,0,0,0.00),(3,3,1,23,1.00),(4,143,53,1763,1.00),(5,72,19,708,1.00),(6,0,0,0,0.00),(7,102,35,1229,1.00),(8,211,135,3316,1.00),(9,128,74,1924,1.00),(10,564,403,7810,1.00),(11,205,127,3422,1.00),(12,0,0,0,0.00),(13,0,0,0,0.00),(14,37,13,378,1.00),(15,2,1,5,1.00),(16,0,0,0,0.00),(17,1,0,25,1.00),(18,354,161,4865,1.00),(19,275,134,3154,1.00),(20,139,72,2095,1.00),(21,68,46,1189,1.00),(22,127,74,1790,1.00);
/*!40000 ALTER TABLE `bowlingstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `player_id` int NOT NULL,
  `player_name` varchar(20) DEFAULT NULL,
  `No_of_matches` int DEFAULT NULL,
  `player_role` enum('batsman','bowler','all-rounder','wicketkeeper') DEFAULT NULL,
  `bowlingType` enum('Lspin','Lpace','Rspin','Rpace') DEFAULT NULL,
  `battingType` enum('right','left') DEFAULT NULL,
  `team_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Wriddhiman Saha',124,'wicketkeeper','Rspin','right','GT'),(2,'Shubam Gill',129,'batsman','Rspin','right','GT'),(3,'Sai sudarshan',143,'batsman','Lspin','left','GT'),(4,'Hardik Pandya',143,'all-rounder','Rpace','right','GT'),(5,'Vijay Shankar',209,'all-rounder','Rpace','right','GT'),(6,'David Miller',367,'batsman','Rspin','left','GT'),(7,'Rahul Tewatia',154,'all-rounder','Rspin','left','GT'),(8,'Mohit Sharma',211,'bowler','Rpace','right','GT'),(9,'Noor',128,'bowler','Rpace','right','GT'),(10,'Rashid Khan',564,'bowler','Rspin','right','GT'),(11,'M Shami',205,'bowler','Rpace','right','GT'),(12,'Ruturaj Gakwad',176,'batsman','Rspin','right','CSK'),(13,'Davon Conway',284,'batsman','Rspin','left','CSK'),(14,'Shivam Dube',182,'all-rounder','Rpace','left','CSK'),(15,'ajinkya rahane',526,'batsman','Rpace','right','CSK'),(16,'Ambathi Raydu',623,'batsman','Rpace','right','CSK'),(17,'MS Dhoni',681,'wicketkeeper','Rpace','right','CSK'),(18,'Ravi Jadeja',454,'all-rounder','Lspin','left','CSK'),(19,'Mooen Ali',454,'all-rounder','Rspin','left','CSK'),(20,'Deepak Chahar',139,'bowler','Rpace','right','CSK'),(21,'Tushar Deshpandey',68,'bowler','Rpace','right','CSK'),(22,'Maheesh Theekshana',127,'bowler','Rspin','right','CSK');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `team_name` varchar(10) NOT NULL,
  PRIMARY KEY (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-25 13:04:22
select * from player;
select * from battingbio;