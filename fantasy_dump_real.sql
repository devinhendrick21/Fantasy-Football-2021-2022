CREATE DATABASE  IF NOT EXISTS `fantasy` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fantasy`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: fantasy
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Temporary view structure for view `above_avg_qb`
--

DROP TABLE IF EXISTS `above_avg_qb`;
/*!50001 DROP VIEW IF EXISTS `above_avg_qb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `above_avg_qb` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `above_avg_rb`
--

DROP TABLE IF EXISTS `above_avg_rb`;
/*!50001 DROP VIEW IF EXISTS `above_avg_rb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `above_avg_rb` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `above_avg_wr`
--

DROP TABLE IF EXISTS `above_avg_wr`;
/*!50001 DROP VIEW IF EXISTS `above_avg_wr`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `above_avg_wr` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `coach_id` int NOT NULL,
  `coach_name` varchar(30) NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `fk_coaches_teams_idx` (`team_id`),
  CONSTRAINT `fk_coaches_teams` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Mike McCarthy',1),(2,'Joe Judge',2),(3,'Doug Peterson',3),(4,'Ron Rivera',4),(5,'Matt Nagy ',5),(6,'Matt Patricia',6),(7,'Matt LaFleur',7),(8,'Mike Zimmer',8),(9,'Arthur Smith',9),(10,'Matt Rhule',10),(11,'Sean Payton',11),(12,'Bruce Ariens',12),(13,'Kliff Kingsbury',13),(14,'Sean McVay',14),(15,'Kyle Shanahan',15),(16,'Pete Carroll',16),(17,'Sean McDermott',17),(18,'Brian Flores',18),(19,'Bill Belichick',19),(20,'Robert Saleh',20),(21,'John Harbaugh',21),(22,'Zac Taylor',22),(23,'Kevin Stefanski',23),(24,'Mike Tomlin',24),(25,'David Culley',25),(26,'Frank Reich',26),(27,'Doug Marone',27),(28,'Mike Vrabel',28),(29,'Vic Fangio',28),(30,'Andy Ried',30),(31,'Jon Gruden',31),(32,'Brandon Staley',32);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `highest_scoring_skilled`
--

DROP TABLE IF EXISTS `highest_scoring_skilled`;
/*!50001 DROP VIEW IF EXISTS `highest_scoring_skilled`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highest_scoring_skilled` AS SELECT 
 1 AS `name`,
 1 AS `total_points`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_games_played`
--

DROP TABLE IF EXISTS `most_games_played`;
/*!50001 DROP VIEW IF EXISTS `most_games_played`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_games_played` AS SELECT 
 1 AS `name`,
 1 AS `games_played`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_rb_carries`
--

DROP TABLE IF EXISTS `most_rb_carries`;
/*!50001 DROP VIEW IF EXISTS `most_rb_carries`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_rb_carries` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `total_carries`,
 1 AS `avg_carries`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_receptions_te`
--

DROP TABLE IF EXISTS `most_receptions_te`;
/*!50001 DROP VIEW IF EXISTS `most_receptions_te`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_receptions_te` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `receptions`,
 1 AS `avg_receptions`,
 1 AS `targets`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_receptions_wr`
--

DROP TABLE IF EXISTS `most_receptions_wr`;
/*!50001 DROP VIEW IF EXISTS `most_receptions_wr`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_receptions_wr` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `receptions`,
 1 AS `avg_receptions`,
 1 AS `targets`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_td_points_gp`
--

DROP TABLE IF EXISTS `most_td_points_gp`;
/*!50001 DROP VIEW IF EXISTS `most_td_points_gp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_td_points_gp` AS SELECT 
 1 AS `name`,
 1 AS `games_played`,
 1 AS `total_TD`,
 1 AS `total_points`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `team_id` int NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `name` varchar(45) NOT NULL,
  `games_played` int NOT NULL,
  `position_rank` int NOT NULL,
  `average_points` double NOT NULL,
  `total_points` double NOT NULL,
  `total_TD` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (30,'Chiefs','Patrick Mahomes',15,2,24.96,374.4,40),(7,'Packers','Aaron Rodgers',15,3,23.82,357.3,47),(12,'Bucs','Tom Brady',15,9,20.51,307.66,39),(17,'Bills','Josh Allen',15,4,25.12,376.8,43),(13,'Cardinals','Kyler Murray',15,1,25,374.96,37),(25,'Texans','Deshaun Watson',15,5,22.9,343.52,33),(32,'Chargers','Justin Herbert',14,10,21.42,299.86,32),(21,'Ravens','Lamar Jackson',14,8,22.04,308.56,30),(23,'Browns','Baker Mayfield',15,18,15.49,232.38,26),(24,'Steelers','Ben Rothlisberger',15,12,17.81,267.16,33),(27,'Jaguars','Gardner Minshew',9,25,17.85,160.66,17),(14,'Rams','Matthew Stafford',15,16,15.86,237.94,23),(19,'Patriots','Cam Newton',14,20,15.89,222.5,17),(31,'Raiders','Derek Carr',15,14,16.75,251.18,28),(1,'Cowboys','Dak Prescott',5,30,27.13,135.64,13),(5,'Bears','Andy Dalton',8,31,12.43,124.34,14),(6,'Lions','Jared Goff',15,15,16,239.98,24),(28,'Broncos','Drew Lock',12,26,13.09,157.06,17),(8,'Vikings','Kirk Cousins',15,11,18.13,271.9,32),(28,'Broncos','Teddy Bridgewater',14,17,16.96,237.48,20),(2,'Giants','Daniel Jones',13,24,12.7,165.16,10),(10,'Panthers','Sam Darnold',11,32,11.19,123.08,10),(5,'Bears','Nick Foles',8,35,11.58,104.18,11),(22,'Bengals','Joe Burrow',10,23,17.37,173.72,16),(18,'Dolphins','Tua Tagovailoa',8,33,13.36,120.22,13),(26,'Colts','Carson Wentz',12,21,16.53,198.4,21),(3,'Eagles','Jalen Hurts',4,36,21.24,84.94,7),(25,'Texans','Tyrod Taylor',0,0,11,176.12,15),(5,'Bears','Justin Fields',0,0,15.8,253.87,22),(27,'Jaguars','Trevor Lawrence',0,0,16.8,268.69,25),(11,'Saints','Jameis Winston',0,0,11.4,182.64,18),(20,'Jets','Zach Wilson',0,0,15.1,241.8,22),(4,'WFT','Ryan Fitzpatrick',0,0,16.54,264.71,25),(15,'49ers','Trey Lance',0,0,14,225.09,22),(11,'Saints','Alvin Kamara',15,1,25.19,377.8,21),(8,'Vikings','Dalvin Cook',14,2,24.13,337.8,17),(7,'Packers','Aaron Jones',13,5,18.49,240.4,10),(28,'Titans','Derrick Henry',15,3,19.87,298.1,15),(32,'Chargers','Austin Ekeler',9,28,16.47,263.5,8),(3,'Eagles','Miles Sanders',12,22,14.2,170.4,6),(5,'Bears','David Montgomery',14,6,16.9,236.6,9),(23,'Browns','Nick Chubb',11,13,17.35,190.9,11),(6,'Lions','Dandre Swift',12,20,14.48,173.8,9),(31,'Raiders','Josh Jacobs',14,9,15.03,210.4,10),(25,'Texans','David Johnson',11,25,14.41,158.5,7),(26,'Colts','Jonathan Taylor',14,7,15.31,214.4,10),(4,'WFT','Antonio Gibson',13,12,14.85,193.1,11),(27,'Jaguars','James Robinson',14,4,17.89,250.4,10),(16,'Seahawks','Chris Carson',11,17,16.14,177.5,9),(1,'Cowboys','Ezekiel Elliot',14,10,14.9,208.6,7),(9,'Falcons','Mike Davis',15,11,13.77,206.5,8),(12,'Bucs','Leonard Fournette',12,35,10.61,127.3,6),(10,'Panthers','Christian Mccaffrey',3,51,20.86,333.7,13),(31,'Raiders','Kenyan Drake',14,14,13.15,184.1,10),(14,'Rams','Cam Akers',12,50,7.6,91.2,3),(14,'Rams','Darrell Henderson',15,33,8.69,130.3,6),(18,'Dolphins','Myles Gaskin',9,29,16.28,146.5,4),(21,'Ravens','J.K. Dobbins',14,31,10.04,140.5,7),(28,'Broncos','Melvin Gordon',14,18,12.67,177.4,9),(25,'Texans','Phillip Lindsay',11,63,6,66,1),(22,'Bengals','Joe Mixon',6,47,16.6,99.6,4),(12,'Bucs','Giovani Bernard',15,26,10.49,157.4,6),(15,'49ers','Raheem Mostert',8,46,12.46,99.7,3),(15,'49ers','Jeff Wilson',11,39,10.77,118.5,8),(13,'Cardinals','Chase Edmonds',15,23,10.9,163.5,5),(23,'Browns','Kareem Hunt',15,8,14.23,213.4,11),(26,'Colts','Nyheim Hines',15,16,12.1,181.5,7),(4,'WFT','J.D. Mckissic',15,15,12.23,183.4,3),(13,'Cardinals','James Conner',12,27,12.78,153.3,6),(18,'Dolphins','Malcolm Brown',15,43,7.09,106.3,5),(2,'Giants','Saquon Barkley',2,115,18.93,303,12),(15,'49ers','Wayne Gallman',14,34,9.29,130.1,6),(19,'Patriots','Damien Harris',10,49,9.13,91.3,2),(19,'Patriots','Sony Michel',7,74,6.59,52.7,1),(25,'Texans','Rex Burkhead',10,42,10.76,107.6,6),(17,'Bills','Devin Singletary',15,30,9.42,141.3,2),(17,'Bills','Zack Moss',12,48,8.21,98.5,5),(18,'Dolphins','Salvon Ahmed',5,69,11.04,55.2,2),(19,'Patriots','James White',13,44,7.96,103.5,2),(11,'Saints','Latavius Murray',15,32,9.08,136.2,5),(21,'Ravens','Gus Edwards',15,38,8.01,120.2,6),(25,'Texans','Mark Ingram',9,78,4.9,49,2),(6,'Lions','Adrian Peterson',15,41,7.48,112.2,6),(1,'Cowboys','Tony Pollard',15,40,7.63,114.4,5),(24,'Steelers','Kalen Ballage',10,55,8.43,84.3,2),(32,'Chargers','Justin Jackson',8,76,6.49,51.9,0),(32,'Chargers','Josh Kelley',13,57,6.25,81.2,2),(9,'Falcons','Ito Smith',13,70,4.21,54.7,1),(20,'Jets','Ty Johnson',10,71,4.54,54.5,2),(6,'Lions','Jamaal Williams',13,37,9.58,124.5,3),(27,'Jaguars','Carlos Hyde',10,53,8.49,84.9,4),(15,'49ers','Tevin Coleman',7,118,1.81,12.7,0),(3,'Eagles','Boston Scott',15,52,5.71,85.7,2),(24,'Steelers','Benny Snell',15,61,4.93,73.9,4),(2,'Giants','Devontae Booker',15,56,5.61,84.1,3),(28,'Titans','Brian Hill',15,59,5.25,78.8,1),(3,'Eagles','Kerryon Johnson',15,62,4.79,71.8,3),(7,'Colts','Jordan Wilkins',15,64,4.09,61.3,1),(12,'Bucs','Ronald Jones',13,21,13.27,172.5,7),(24,'Steelers','Najee Harris',0,0,15.33,245.2,9),(28,'Broncos','Javonte Williams',0,0,10.85,173.7,6),(27,'Jaguars','Travis Etienne',0,0,12.48,199.6,6),(15,'49ers','Trey Sermon',0,0,7.39,118.3,5),(20,'Jets','Michael Carter',0,0,8.7,139.2,5),(13,'Cardinals','Deandre Hopkins',15,4,18.69,280.3,6),(13,'Cardinals','Larry Fitzgerald',13,71,7.76,100.9,1),(13,'Cardinals','Christian Kirk',14,45,10.46,146.4,6),(9,'Falcons','Calvin Ridley',14,5,19.35,270.9,9),(9,'Falcons','Julio Jones',9,46,14.43,230.8,7),(9,'Falcons','Russell Gage',15,39,10.39,155.86,4),(21,'Ravens','Marquise Brown',15,37,10.79,161.9,6),(31,'Raiders','Willie Snead',13,77,7.25,94.2,3),(21,'Ravens','Miles Boykin',15,105,3.89,58.3,3),(17,'Bills','Stefon Diggs',15,3,20.93,314,8),(17,'Bills','Cole Beasley',15,21,13.83,207.5,5),(31,'Raiders','John Brown',8,92,9.95,79.6,2),(17,'Bills','Gabriel Davis',15,60,7.88,118.2,6),(10,'Panthers','Robby Anderson',15,15,14.47,217.1,3),(10,'Panthers','DJ Moore',14,23,14.03,196.4,4),(4,'WFT','Curtis Samuel',14,26,13.79,193,5),(5,'Bears','Allen Robinson',15,7,17.15,257.2,6),(5,'Bears','Darnell Mooney',15,50,8.79,131.8,4),(5,'Bears','Cordarrelle Patterson',15,100,4.51,67.6,1),(5,'Bears','Anthony Miller',15,68,7.03,105.4,2),(22,'Bengals','Tee Higgins',15,24,12.97,194.6,6),(13,'Cardinals','AJ Green',15,67,7.42,111.3,2),(22,'Bengals','Tyler Boyd',14,28,13.6,190.44,4),(23,'Browns','Jarvis Landry',14,34,12.25,171.56,4),(23,'Browns','Odell Beckham',7,85,13.08,209.3,7),(23,'Browns','Rashard Higgins',12,64,9.45,113.4,4),(23,'Browns','Donovan Peoples-Jones',11,108,5.12,56.3,2),(1,'Cowboys','Amari Cooper',15,14,15.11,226.7,5),(1,'Cowboys','CeeDee Lamb',15,20,13.87,208.1,6),(1,'Cowboys','Michael Gallup',15,36,10.96,164.4,5),(28,'Broncos','Tim Patrick',14,40,11.04,154.6,6),(28,'Broncos','Jerry Jeudy',15,54,8.71,130.6,7),(2,'Giants','Kenny Golliday',5,101,13.51,216.3,2),(27,'Jaguars','Marvin Jones ',15,29,12.65,189.8,7),(6,'Lions','Danny Amendola',13,69,8.06,104.8,0),(15,'49ers','Mohamed Sanu',9,124,4.49,40.4,1),(7,'Packers','Devante Adams',13,1,26.29,341.8,17),(7,'Packers','Allen Lazard',9,78,10.46,94.1,3),(7,'Packers','Marquez Valdes-Scantling',15,59,8.01,120.2,5),(25,'Texans','Brandin Cooks',14,27,13.74,192.4,4),(25,'Texans','Keke Coutee',7,97,10.29,72,3),(18,'Dolphins','Will Fuller',11,30,17.17,188.9,8),(25,'Texans','Randall Cobb',10,73,10.01,100.1,3),(25,'Texans','Chad Hansen',4,122,10.75,43,1),(26,'Colts','TY Hilton',14,42,10.75,150.5,4),(26,'Colts','Michael Pittman',12,79,7.83,93.9,1),(26,'Colts','Zach Pascal',15,53,8.72,130.8,5),(27,'Jaguars','DJ Chark',13,41,11.82,153.6,5),(27,'Jaguars','Laviska Shenault',13,49,10.19,132.5,3),(20,'Jets','Keelan Cole',15,43,10.01,150.1,5),(25,'Texans','Chris Conley',14,89,5.81,81.4,2),(30,'Chiefs','Tyreek Hill',15,2,21.93,328.9,17),(21,'Ravens','Sammy Watkins',10,83,8.74,87.4,2),(30,'Chiefs','Mecole Hardman',15,57,8.37,125.6,4),(30,'Chiefs','Demarcus Robinson',15,76,6.39,95.8,3),(32,'Chargers','Mike Williams',14,51,9.35,130.9,4),(32,'Chargers','Keenan Allen',14,9,17.51,245.1,8),(32,'Chargers','Jalen Guyton',15,75,6.47,97.1,3),(32,'Chargers','Tyron Johnson',11,96,6.73,74,3),(14,'Rams','Robert Woods',15,12,15.83,237.5,8),(14,'Rams','Cooper Kupp',15,19,13.91,208.7,3),(28,'Titans','Josh Reynolds',15,61,7.83,117.4,2),(19,'Patriots','Nelson Agholor',15,33,11.93,178.9,8),(31,'Raiders','Hunter Renfrow',15,56,8.41,126.2,2),(31,'Raiders','Henry Ruggs',12,93,6.61,79.3,2),(18,'Dolphins','Devnate Parker',13,44,11.36,147.7,4),(18,'Dolphins','Lynn Bowden',9,82,4.51,40.6,0),(18,'Dolphins','Jakeem Grant',14,84,6.24,87.3,1),(18,'Dolphins','Preston Williams',8,95,9.35,74.8,4),(8,'Vikings','Justin Jefferson',15,8,16.79,251.9,7),(8,'Vikings','Adam Thielen',14,10,17.45,244.3,14),(8,'Vikings','Chad Beebe',13,129,2.9,37.7,1),(19,'Patriots','Jakobi Meyers',13,58,9.56,124.26,1),(5,'Bears','Damiere Byrd',15,66,7.52,112.8,1),(19,'Patrios','Nkeal Harry',13,98,5.4,70.2,2),(11,'Saints','Michael Thomas',7,88,11.99,83.9,0),(17,'Bills','Emmanual Sanders',13,47,11.04,143.5,4),(11,'Saints','Trequan Smith',14,70,7.36,103.1,4),(2,'Giants','Sterling Shepard',11,55,11.72,128.9,2),(2,'Giants','Darius Slayton',15,48,9.12,136.8,3),(2,'Giants','Golden Tate',12,86,7.21,86.52,2),(20,'Jets','Jamison Crowder',11,35,14.99,164.92,7),(6,'Lions','Breshad Perriman',11,82,7.97,87.7,3),(20,'Jets','Denzel Mims',8,106,7.28,58.2,0),(20,'Jets','Braxton Berrios',15,80,6.05,90.7,3),(3,'Eagles','Jalen Reagor',10,87,8.47,84.7,1),(3,'Eagles','Greg Ward',15,51,8.73,130.9,6),(14,'Rams','DeSean Jackson',5,121,8.96,44.8,1),(3,'Eagles','Travis Fulgham',12,64,9.45,113.4,4),(3,'Eagles','Alshon Jeffrey',7,150,3.36,23.5,1),(24,'Steelers','Dionte Johnson',14,18,14.95,209.3,7),(24,'Steelers','Juju Smith-Schuster',15,17,14.37,215.6,8),(24,'Steelers','Chase Claypool',15,25,12.92,193.8,10),(24,'Steelers','James Washington',15,74,6.61,99.2,5),(15,'49ers','Brandon Aiyuk',12,31,15.38,184.5,7),(19,'Patriots','Kendrick Bourne',14,63,8.36,117.1,2),(15,'49ers','Deebo Samuel',7,90,11.53,80.7,1),(15,'49ers','Richie James',10,111,5.48,54.8,1),(16,'Seahawks','DK Metcalf',15,6,17.75,266.2,10),(16,'Seahawks','Tyler Lockett',15,13,15.49,232.4,8),(10,'Panthers','David Moore',15,62,7.82,117.3,6),(12,'Bucs','Mike Evans',15,11,16.07,241,13),(12,'Bucs','Chris Godwin',11,38,14.61,160.7,5),(12,'Bucs','Antonio Brown',7,91,11.47,80.3,2),(12,'Bucs','Scotty Miller',15,72,6.69,100.3,3),(28,'Titans','AJ Brown',13,16,16.65,216.4,10),(20,'Jets','Corey Davis',13,32,14.04,182.5,5),(4,'WFT','Terry McLauren',14,22,14.77,206.8,3),(4,'WFT','Cam Sims',15,94,5.13,76.9,1),(4,'WFT','Steven Sims',11,112,4.9,53.9,1),(18,'Dolphins','Jaylen Waddle',0,0,11.24,179.9,5),(21,'Ravens','Rashod Bateman',0,0,8.64,138.3,5),(2,'Giants','Kadarius Toney',0,0,8.01,128.3,3),(20,'Jets','Elijah Moore',0,0,9.85,157.7,3),(25,'Texans','Nico Collins',0,0,7.48,119.7,3),(3,'Eagles','Devonta Smith',0,0,12.35,197.6,5),(22,'Bengals','Jamarr Chase',0,0,13.66,218.6,6),(10,'Panthers','Dan Arnold',15,23,5.95,89.2,4),(9,'Falcons','Hayden Hurst',15,15,9.09,136.3,5),(21,'Ravens','Mark Andrews',13,6,12.57,163.4,7),(21,'Ravens','Nick Boyle',9,55,4.14,37.3,2),(17,'Bils','Dawson Knox',11,38,5.63,61.9,3),(20,'Jets','Tyler Kroft',10,49,4.19,41.9,3),(10,'Panthers','Ian Thomas',15,51,2.64,39.6,1),(5,'Bears','Cole Kmet',15,45,3.53,52.9,2),(5,'Bears','Jimmy Graham',15,11,9.41,141.1,8),(22,'Bengals','Drew Sample',15,31,5.03,75.4,1),(23,'Browns','Austin Hooper',12,21,8.32,99.8,3),(23,'Browns','David Njoku',12,47,4.08,49,2),(23,'Browns','Harrison Bryant',15,39,4.12,61.8,3),(1,'Cowboys','Dalton Schultz',15,16,8.83,132.5,4),(28,'Broncos','Noah Fant',14,12,10.04,140.5,3),(6,'Lions','TJ Hockenson',15,3,11.32,169.8,6),(7,'Packers','Robert Tonyan',15,4,11.12,166.8,10),(25,'Texans','Jordan Akins',12,26,6.82,81.8,1),(6,'Lions','Darren Fells',15,30,5.08,76.2,4),(26,'Colts','Jack Doyle',13,40,4.57,59.4,3),(26,'Colts','Trey Burton',12,25,6.94,83.3,5),(26,'Colts','Mo Alie-Cox',14,28,5.74,80.4,2),(27,'Jaguars','Tyler Eifert',14,27,5.78,80.9,2),(27,'Jaguars','James Oshaughnessy',14,46,3.73,52.2,0),(30,'Chiefs','Travis Kelce',15,1,20.85,312.76,11),(19,'Patriots','Hunter Henry',14,8,10.38,145.3,4),(14,'Rams','Tyler Higbee',14,17,8.65,121.1,5),(16,'Seahawks','Gerald Everett',15,24,5.89,88.4,1),(31,'Raiders','Darren Waller',15,2,16.79,251.9,8),(18,'Dolphins','Mike Gesicki',14,7,10.69,149.6,6),(8,'Vikings','Irv Smith',12,22,7.79,93.5,5),(2,'Giants','Kyle Rudolph',12,36,5.45,65.4,1),(32,'Chargers','Jared Cook',14,19,8.08,113.1,6),(2,'Giants','Evan Engram',15,14,9.15,137.3,2),(20,'Jets','Chris Herndon',15,42,3.63,54.4,2),(3,'Eagles','Dallas Goedert',11,33,7.29,72.9,3),(3,'Eagles','Zach Ertz',10,18,10.58,116.4,1),(3,'Eagles','Richard Rodgers',14,34,5.04,70.5,2),(24,'Steelers','Eric Ebron',15,10,9.45,141.8,5),(15,'49ers','George Kittle',7,20,15.9,111.3,2),(15,'49ers','Jordan Reed',10,32,7.31,73.1,4),(16,'Seahawks','Greg Olsen',11,43,4.9,53.9,1),(16,'Seahawks','Jacob Hollister',15,37,4.29,64.3,3),(16,'Seahawks','Will Dissly',15,41,3.87,58.1,2),(12,'Bucs','Rob Gronkowski',15,9,9.63,144.4,7),(12,'Bucs','Cameron Brate',15,35,4.41,66.1,2),(19,'Patriots','Jonnu Smith',14,13,9.89,138.4,9),(28,'Titans','Anthony Firkser',15,29,5.33,79.9,1),(4,'WFT','Logan Thomas',15,5,10.93,163.92,5),(9,'Falcons','Kyle Pitts',0,0,12.07,193.1,6);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb`
--

DROP TABLE IF EXISTS `qb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qb` (
  `player_id` int NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `name` varchar(45) NOT NULL,
  `games_played` int NOT NULL,
  `position_rank` int NOT NULL,
  `average_points` double NOT NULL,
  `total_points` double NOT NULL,
  `pass_yds_per_game` double NOT NULL,
  `pass_yards` int NOT NULL,
  `pass_TD` int NOT NULL,
  `rush_yards` int NOT NULL,
  `rush_TD` int NOT NULL,
  `rush_yds_per_game` double NOT NULL,
  `fumbles_lost` int NOT NULL,
  `total_TD` int NOT NULL,
  `team_id` int NOT NULL,
  `int` int NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `fk_qb_teams1_idx` (`team_id`),
  CONSTRAINT `fk_qb_teams1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb`
--

LOCK TABLES `qb` WRITE;
/*!40000 ALTER TABLE `qb` DISABLE KEYS */;
INSERT INTO `qb` VALUES (1,'Chiefs','Patrick Mahomes',15,2,24.96,374.4,316,4740,38,306,2,20.5,2,40,30,6),(2,'Packers','Aaron Rodgers',15,3,23.82,357.3,270.6,4059,44,145,3,9.7,2,47,7,5),(3,'Bucs','Tom Brady',15,9,20.51,307.66,282.3,4234,36,3,3,0.2,1,39,12,11),(4,'Bills','Josh Allen',15,4,25.12,376.8,288,4320,34,418,8,27.9,6,43,17,9),(5,'Cardinals','Kyler Murray',15,1,25,374.96,258.9,3884,26,816,11,54.4,4,37,13,12),(6,'Texans','Deshaun Watson',15,5,22.9,343.52,297.2,4458,30,432,3,28.8,3,33,25,6),(7,'Chargers','Justin Herbert',14,10,21.42,299.86,288.1,4034,28,225,4,16.1,1,32,32,10),(8,'Ravens','Lamar Jackson',14,8,22.04,308.56,188.9,2644,23,908,7,64.9,4,30,21,8),(9,'Browns','Baker Mayfield',15,18,15.49,232.38,224.5,3367,25,121,1,8.1,4,26,23,8),(10,'Steelers','Ben Rothlisberger',15,12,17.81,267.16,253.6,3804,33,10,0,0.7,1,33,24,10),(11,'Jaguars','Gardner Minshew',9,25,17.85,160.66,251,2259,16,153,1,17,4,17,27,5),(12,'Rams','Matthew Stafford',15,16,15.86,237.94,252.7,3791,23,103,0,6.9,1,23,14,9),(13,'Patriots','Cam Newton',14,20,15.89,222.5,172.5,2415,5,513,12,36.6,1,17,19,10),(14,'Raiders','Derek Carr',15,14,16.75,251.18,248.4,3732,25,139,3,9.3,8,28,31,7),(15,'Cowboys','Dak Prescott',5,30,27.13,135.64,371.2,1856,9,93,3,18.6,3,13,1,4),(16,'Bears','Andy Dalton',8,31,12.43,124.34,192.6,1926,14,66,0,6.6,1,14,5,7),(17,'Lions','Jared Goff',15,15,16,239.98,263.5,3952,20,99,4,6.6,4,24,6,13),(18,'Broncos','Drew Lock',12,26,13.09,157.06,216.2,2594,14,153,3,12.8,3,17,28,15),(19,'Vikings','Kirk Cousins',15,11,18.13,271.9,257.3,3860,32,155,0,10.3,5,32,8,13),(20,'Broncos','Teddy Bridgewater',14,17,16.96,237.48,254.1,3557,15,272,5,19.4,3,20,28,9),(21,'Giants','Daniel Jones',13,24,12.7,165.16,208.8,2714,9,406,1,31.2,5,10,2,9),(22,'Panthers','Sam Darnold',11,32,11.19,123.08,176.5,1942,8,214,2,19.5,2,10,10,9),(23,'Bears','Nick Foles',8,35,11.58,104.18,205.8,1852,10,1,1,0.1,0,11,5,8),(24,'Bengals','Joe Burrow',10,23,17.37,173.72,268.8,2688,13,142,3,14.2,4,16,22,5),(25,'Dolphins','Tua Tagovailoa',8,33,13.36,120.22,161.4,1453,10,81,3,9,1,13,18,2),(26,'Colts','Carson Wentz',12,21,16.53,198.4,218.3,2620,16,276,5,23,4,21,26,15),(27,'Eagles','Jalen Hurts',4,36,21.24,84.94,239,989,6,320,1,22.9,2,7,3,3),(28,'Texans','Tyrod Taylor',0,0,11,176.12,172.8,2765,14,166,1,10.4,0,15,25,7),(29,'Bears','Justin Fields',0,0,15.8,253.87,210.2,3363,18,498,4,31.1,0,22,5,12),(30,'Jaguars','Trevor Lawrence',0,0,16.8,268.69,257.2,4115,22,291,3,18.2,0,25,27,13),(31,'Saints','Jameis Winston',0,0,11.4,182.64,182.6,2922,17,198,1,12.4,0,18,11,11),(32,'Jets','Zach Wilson',0,0,15.1,241.8,241,3856,19,260,3,16.3,0,22,20,13),(33,'WFT','Ryan Fitzpatrick',0,0,16.54,264.71,255.9,4094,22,255,3,15.9,0,25,4,15),(34,'49ers','Trey Lance',0,0,14,225.09,161.5,2585,17,471,5,29.4,0,22,15,9);
/*!40000 ALTER TABLE `qb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `qb_ranking`
--

DROP TABLE IF EXISTS `qb_ranking`;
/*!50001 DROP VIEW IF EXISTS `qb_ranking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qb_ranking` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`,
 1 AS `total_TD`,
 1 AS `pass_yards`,
 1 AS `rush_yards`,
 1 AS `games_played`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qb_rankings_yahoo`
--

DROP TABLE IF EXISTS `qb_rankings_yahoo`;
/*!50001 DROP VIEW IF EXISTS `qb_rankings_yahoo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qb_rankings_yahoo` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`,
 1 AS `total_TD`,
 1 AS `pass_yards`,
 1 AS `rush_yards`,
 1 AS `games_played`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rb`
--

DROP TABLE IF EXISTS `rb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rb` (
  `player_id` int NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `name` varchar(45) NOT NULL,
  `games_played` int NOT NULL,
  `position_rank` int NOT NULL,
  `average_points` double NOT NULL,
  `total_points` double NOT NULL,
  `rush_yards` int NOT NULL,
  `rush_yds_per_game` double NOT NULL,
  `rush_TD` int NOT NULL,
  `ypc` double NOT NULL,
  `avg_carries` double NOT NULL,
  `total_carries` int NOT NULL,
  `receptions` int NOT NULL,
  `rec_yards` int NOT NULL,
  `rec_TD` int NOT NULL,
  `avg_receptions` double NOT NULL,
  `rec_yards_per_game` varchar(4) NOT NULL,
  `fumbles_lost` int NOT NULL,
  `total_TD` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `fk_rb_teams1_idx` (`team_id`),
  CONSTRAINT `fk_rb_teams1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb`
--

LOCK TABLES `rb` WRITE;
/*!40000 ALTER TABLE `rb` DISABLE KEYS */;
INSERT INTO `rb` VALUES (1,'Saints','Alvin Kamara',15,1,25.19,377.8,932,62.1,16,5,12.5,187,83,756,5,5.5,'50.4',0,21,11),(2,'Vikings','Dalvin Cook',14,2,24.13,337.8,1557,111.2,16,5,22.3,312,44,361,1,3.1,'25.8',3,17,8),(3,'Packers','Aaron Jones',13,5,18.49,240.4,1062,81.7,8,5.6,14.6,190,43,312,2,3.3,'24',0,10,7),(4,'Titans','Derrick Henry',15,3,19.87,298.1,1777,118.5,15,5.2,22.9,344,19,114,0,1.3,'7.6',1,15,28),(5,'Chargers','Austin Ekeler',9,28,16.47,263.5,858,53.6,5,4.6,11.8,188,74,602,3,4.6,'37.6',0,8,32),(6,'Eagles','Miles Sanders',12,22,14.2,170.4,867,72.3,6,5.3,13.7,164,28,197,0,2.3,'6.4',2,6,3),(7,'Bears','David Montgomery',14,6,16.9,236.6,1001,71.5,7,4.4,16.1,225,45,375,2,3.2,'26.8',1,9,5),(8,'Browns','Nick Chubb',11,13,17.35,190.9,959,87.2,11,5.4,16,176,16,150,0,1.5,'150',1,11,23),(9,'Lions','Dandre Swift',12,20,14.48,173.8,467,38.9,7,4.6,8.5,102,43,341,2,3.6,'28.4',2,9,6),(10,'Raiders','Josh Jacobs',14,9,15.03,210.4,976,69.7,10,3.8,18.4,258,33,238,0,2.4,'17',2,10,31),(11,'Texans','David Johnson',11,25,14.41,158.5,607,55.2,5,4.6,12.1,133,30,278,2,2.7,'25.3',1,7,25),(12,'Colts','Jonathan Taylor',14,7,15.31,214.4,916,65.4,9,4.5,14.4,202,35,298,1,2.5,'21.3',1,10,26),(13,'WFT','Antonio Gibson',13,12,14.85,193.1,720,55.4,11,4.8,11.6,151,35,241,0,2.7,'18.5',2,11,4),(14,'Jaguars','James Robinson',14,4,17.89,250.4,1070,76.4,7,4.5,17.1,240,49,344,3,3.5,'24.6',1,10,27),(15,'Seahawks','Chris Carson',11,17,16.14,177.5,637,57.9,5,4.9,11.8,130,35,248,4,3.1,'22.5',0,9,16),(16,'Cowboys','Ezekiel Elliot',14,10,14.9,208.6,937,66.9,5,4.1,16.4,230,49,319,2,3.5,'22.8',5,7,1),(17,'Falcons','Mike Davis',15,11,13.77,206.5,642,42.8,6,3.9,11,165,59,373,2,3.9,'24.9',1,8,9),(18,'Bucs','Leonard Fournette',12,35,10.61,127.3,354,29.5,6,3.8,7.6,92,34,219,0,2.8,'18.3',0,6,12),(19,'Panthers','Christian Mccaffrey',3,51,20.86,333.7,1065,66.6,10,4.3,15.6,250,85,677,3,5.3,'42.3',0,13,10),(20,'Raiders','Kenyan Drake',14,14,13.15,184.1,919,65.6,10,4,16.4,229,22,122,0,1.6,'8.7',1,10,31),(21,'Rams','Cam Akers',12,50,7.6,91.2,591,49.3,2,4.8,10.3,124,7,71,1,0.6,'5.9',0,3,14),(22,'Rams','Darrell Henderson',15,33,8.69,130.3,624,41.6,5,4.5,9.2,138,16,159,1,1.1,'10.6',0,6,14),(23,'Dolphins','Myles Gaskin',9,29,16.28,146.5,564,62.7,2,4.2,15,135,37,331,2,4.1,'36.8',2,4,18),(24,'Ravens','J.K. Dobbins',14,31,10.04,140.5,645,46.1,7,5.3,8.6,121,18,120,0,1.3,'8.6',0,7,21),(25,'Broncos','Melvin Gordon',14,18,12.67,177.4,893,63.8,8,4.7,13.5,189,28,141,1,2,'10.1',4,9,28),(26,'Texans','Phillip Lindsay',11,63,6,66,502,45.6,1,4.2,10.7,118,7,28,0,0.6,'2.5',0,1,25),(27,'Bengals','Joe Mixon',6,47,16.6,99.6,428,71.3,3,3.6,19.8,119,21,138,1,3.5,'23',1,4,22),(28,'Bucs','Giovani Bernard',15,26,10.49,157.4,409,27.3,3,3.4,8.1,121,47,355,3,3.1,'23.7',1,6,12),(29,'49ers','Raheem Mostert',8,46,12.46,99.7,521,65.1,2,5,13,104,16,156,1,2,'19.5',1,3,15),(30,'49ers','Jeff Wilson',11,39,10.77,118.5,524,47.6,6,4.9,9.6,106,10,121,2,0.9,'11',2,8,15),(31,'Cardinals','Chase Edmonds',15,23,10.9,163.5,451,30.1,1,4.8,6.3,94,51,374,4,3.4,'24.9',0,5,13),(32,'Browns','Kareem Hunt',15,8,14.23,213.4,804,53.6,6,4.3,12.5,188,37,300,5,2.5,'20',0,11,23),(33,'Colts','Nyheim Hines',15,16,12.1,181.5,363,24.2,3,4.2,5.8,87,58,432,4,3.9,'28.8',0,7,26),(34,'WFT','J.D. Mckissic',15,15,12.23,183.4,365,24.3,1,4.4,5.5,83,75,559,2,5,'37.3',1,3,4),(35,'Cardinals','James Conner',12,27,12.78,153.3,638,56.9,6,4.3,13.3,160,30,190,0,2.5,'15.8',0,6,13),(36,'Dolphins','Malcolm Brown',15,43,7.09,106.3,399,26.6,5,4.1,6.5,98,22,164,0,1.5,'10.9',1,5,18),(37,'Giants','Saquon Barkley',2,115,18.93,303,1228,76.8,10,4.5,17.1,274,60,454,2,3.8,'28.4',0,12,2),(38,'49ers','Wayne Gallman',14,34,9.29,130.1,617,44.1,6,4.5,9.7,136,21,114,0,1.5,'8.1',0,6,15),(39,'Patriots','Damien Harris',10,49,9.13,91.3,691,69.1,2,5,13.7,137,5,52,0,0.5,'5.2',0,2,19),(40,'Patriots','Sony Michel',7,74,6.59,52.7,373,46.6,1,5.9,9,63,4,54,0,0.6,'6.8',0,1,19),(41,'Texans','Rex Burkhead',10,42,10.76,107.6,274,27.4,3,4.1,6.7,67,25,192,3,2.5,'19.2',0,6,25),(42,'Bills','Devin Singletary',15,30,9.42,141.3,680,45.3,2,4.4,10.2,153,37,263,0,2.5,'17.5',1,2,17),(43,'Bills','Zack Moss',12,48,8.21,98.5,473,39.4,4,4.3,9.1,109,13,82,1,1.1,'6.8',0,5,17),(44,'Dolphins','Salvon Ahmed',5,69,11.04,55.2,290,58,2,4.2,13.8,69,8,42,0,1.6,'8.4',0,2,18),(45,'Patriots','James White',13,44,7.96,103.5,121,9.3,2,3.5,2.7,35,45,344,0,3.5,'26.5',0,2,19),(46,'Saints','Latavius Murray',15,32,9.08,136.2,656,43.7,4,4.5,9.7,146,23,176,1,1.5,'11.7',0,5,11),(47,'Ravens','Gus Edwards',15,38,8.01,120.2,663,44.2,6,5,8.8,132,8,119,0,0.5,'7.9',1,6,21),(48,'Texans','Mark Ingram',9,78,4.9,49,260,26,2,4.1,7,63,6,50,0,0.7,'5',0,2,25),(49,'Lions','Adrian Peterson',15,41,7.48,112.2,541,36.1,6,3.6,9.9,149,12,101,0,0.8,'6.7',0,6,6),(50,'Cowboys','Tony Pollard',15,40,7.63,114.4,420,28,4,4.4,6.4,96,25,174,1,1.7,'11.6',0,5,1),(51,'Steelers','Kalen Ballage',10,55,8.43,84.3,254,25.4,2,3.4,7.5,75,20,99,0,2,'9.9',0,2,24),(52,'Chargers','Justin Jackson',8,76,6.49,51.9,198,24.8,0,4,6.3,50,18,141,0,2.3,'17.6',0,0,32),(53,'Chargers','Josh Kelley',13,57,6.25,81.2,354,27.2,2,3.2,8.5,111,23,148,0,1.8,'11.4',2,2,32),(54,'Falcons','Ito Smith',13,70,4.21,54.7,259,19.9,1,4.3,4.6,60,16,68,0,1.2,'5.2',0,1,9),(55,'Jets','Ty Johnson',10,71,4.54,54.5,209,20.9,1,4.9,4.3,43,14,76,1,1.4,'7.6',0,2,20),(56,'Lions','Jamaal Williams',13,37,9.58,124.5,479,36.8,2,4.2,8.8,114,31,236,1,2.4,'18.2',0,3,6),(57,'Jaguars','Carlos Hyde',10,53,8.49,84.9,356,35.6,4,4.4,8.1,81,16,93,0,1.6,'9.3',0,4,27),(58,'49ers','Tevin Coleman',7,118,1.81,12.7,53,7.6,0,1.9,4,28,4,34,0,0.6,'4.9',0,0,15),(59,'Eagles','Boston Scott',15,52,5.71,85.7,309,20.6,1,4.8,4.3,65,23,198,1,1.5,'13.2',0,2,3),(60,'Steelers','Benny Snell',15,61,4.93,73.9,358,23.9,4,3.3,7.2,108,10,61,0,0.7,'4.1',1,4,24),(61,'Giants','Devontae Booker',15,56,5.61,84.1,407,27.1,3,4.6,5.9,88,17,84,0,1.1,'5.6',0,3,2),(62,'Titans','Brian Hill',15,59,5.25,78.8,371,24.7,1,4.1,6.1,91,22,157,0,1.5,'10.5',1,1,28),(63,'Eagles','Kerryon Johnson',15,62,4.79,71.8,181,12.1,2,3.5,3.5,52,19,197,1,1.3,'12.5',1,3,3),(64,'Colts','Jordan Wilkins',15,64,4.09,61.3,308,20.5,1,3.7,5.6,84,12,105,0,0.8,'7',0,1,7),(65,'Bucs','Ronald Jones',13,21,13.27,172.5,900,69.2,6,5,13.8,180,28,165,1,2.2,'12.7',2,7,12),(66,'Steelers','Najee Harris',0,0,15.33,245.2,1054,65.9,7,4.3,15.3,244,50,378,2,3.1,'23.6',0,9,24),(67,'Broncos','Javonte Williams',0,0,10.85,173.7,898,56.1,5,4.4,12.7,203,29,217,1,1.8,'13.6',0,6,28),(68,'Jaguars','Travis Etienne',0,0,12.48,199.6,654,40.9,4,4.5,9.1,146,56,447,2,3.5,'27.9',0,6,27),(69,'49ers','Trey Sermon',0,0,7.39,118.3,561,35.1,4,4.4,7.9,127,19,150,1,1.2,'9.4',0,5,15),(70,'Jets','Michael Carter',0,0,8.7,139.2,608,38,4,4.2,9,145,29,221,1,1.8,'13.8',0,5,20);
/*!40000 ALTER TABLE `rb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rb_rankings`
--

DROP TABLE IF EXISTS `rb_rankings`;
/*!50001 DROP VIEW IF EXISTS `rb_rankings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rb_rankings` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`,
 1 AS `total_TD`,
 1 AS `rush_yards`,
 1 AS `total_carries`,
 1 AS `avg_carries`,
 1 AS `receptions`,
 1 AS `avg_receptions`,
 1 AS `games_played`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `skilled`
--

DROP TABLE IF EXISTS `skilled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skilled` (
  `team_id` int NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `name` varchar(45) NOT NULL,
  `games_played` int NOT NULL,
  `position_rank` int NOT NULL,
  `average_points` double NOT NULL,
  `total_points` double NOT NULL,
  `receptions` int NOT NULL,
  `rec_yards` int NOT NULL,
  `rec_TD` int NOT NULL,
  `avg_receptions` double NOT NULL,
  `rec_yards_per_game` double NOT NULL,
  `rush_yards` int NOT NULL,
  `rush_yds_per_game` double NOT NULL,
  `rush_TD` int NOT NULL,
  `total_TD` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skilled`
--

LOCK TABLES `skilled` WRITE;
/*!40000 ALTER TABLE `skilled` DISABLE KEYS */;
INSERT INTO `skilled` VALUES (13,'Cardinals','Deandre Hopkins',15,4,18.69,280.3,111,1372,6,7.4,91.5,1,0.1,0,6),(13,'Cardinals','Larry Fitzgerald',13,71,7.76,100.9,54,409,1,4.2,31.5,0,0,0,1),(13,'Cardinals','Christian Kirk',14,45,10.46,146.4,48,621,6,3.4,44.4,3,0.2,0,6),(9,'Falcons','Calvin Ridley',14,5,19.35,270.9,82,1322,9,5.9,94.4,7,0.5,0,9),(9,'Falcons','Julio Jones',9,46,14.43,230.8,78,1090,7,4.9,68.1,0,0,0,7),(9,'Falcons','Russell Gage',15,39,10.39,155.86,63,695,3,4.2,46.3,-2,-0.1,0,4),(21,'Ravens','Marquise Brown',15,37,10.79,161.9,53,728,6,3.5,48.5,1,0.1,0,6),(31,'Raiders','Willie Snead',13,77,7.25,94.2,33,432,3,2.5,33.2,0,0,0,3),(21,'Ravens','Miles Boykin',15,105,3.89,58.3,18,223,3,1.2,14.9,0,0,0,3),(17,'Bills','Stefon Diggs',15,3,20.93,314,120,1459,8,8,97.3,1,0.1,0,8),(17,'Bills','Cole Beasley',15,21,13.83,207.5,82,967,4,5.5,64.5,0,0,0,5),(31,'Raiders','John Brown',8,92,9.95,79.6,29,386,2,3.6,48.3,0,0,0,2),(17,'Bills','Gabriel Davis',15,60,7.88,118.2,33,492,6,2.2,32.8,0,0,0,6),(10,'Panthers','Robby Anderson',15,15,14.47,217.1,92,1056,3,6.1,70.4,15,1,0,3),(10,'Panthers','DJ Moore',14,23,14.03,196.4,61,1092,4,4.4,78,22,1.6,0,4),(4,'WFT','Curtis Samuel',14,26,13.79,193,70,733,3,5,52.4,197,14.1,2,5),(5,'Bears','Allen Robinson',15,7,17.15,257.2,100,1213,6,6.7,80.9,-1,-0.1,0,6),(5,'Bears','Darnell Mooney',15,50,8.79,131.8,50,538,4,3.3,35.9,20,1.3,0,4),(5,'Bears','Cordarrelle Patterson',15,100,4.51,67.6,21,132,0,1.4,8.8,214,14.3,1,1),(5,'Bears','Anthony Miller',15,68,7.03,105.4,47,472,2,3.1,31.5,12,0.8,0,2),(22,'Bengals','Tee Higgins',15,24,12.97,194.6,67,908,6,4.5,60.5,28,1.9,0,6),(13,'Cardinals','AJ Green',15,67,7.42,111.3,47,523,2,3.1,34.9,0,0,0,2),(22,'Bengals','Tyler Boyd',14,28,13.6,190.44,78,840,4,5.6,60,38,2.7,0,4),(23,'Browns','Jarvis Landry',14,34,12.25,171.56,67,789,3,4.8,56.4,7,0.5,0,4),(23,'Browns','Odell Beckham',7,85,13.08,209.3,67,934,7,4.2,58.4,33,2.1,0,7),(23,'Browns','Rashard Higgins',12,64,9.45,113.4,35,544,4,2.9,45.3,0,0,0,4),(23,'Browns','Donovan Peoples-Jones',11,108,5.12,56.3,13,293,2,1.2,26.6,0,0,0,2),(1,'Cowboys','Amari Cooper',15,14,15.11,226.7,86,1073,5,5.7,71.5,14,0.9,0,5),(1,'Cowboys','CeeDee Lamb',15,20,13.87,208.1,69,892,5,4.6,59.5,79,5.3,1,6),(1,'Cowboys','Michael Gallup',15,36,10.96,164.4,55,794,5,3.7,52.4,0,0,0,5),(28,'Broncos','Tim Patrick',14,40,11.04,154.6,49,696,6,3.5,49.7,0,0,0,6),(28,'Broncos','Jerry Jeudy',15,54,8.71,130.6,47,716,2,3.1,47.7,0,0,0,7),(2,'Giants','Kenny Golliday',5,101,13.51,216.3,70,1065,7,4.4,66.6,0,0,0,2),(27,'Jaguars','Marvin Jones ',15,29,12.65,189.8,68,798,7,4.5,53.2,0,0,0,7),(6,'Lions','Danny Amendola',13,69,8.06,104.8,45,596,0,3.5,45.8,2,0.2,0,0),(15,'49ers','Mohamed Sanu',9,124,4.49,40.4,14,165,1,1.6,18.3,0,0,0,1),(7,'Packers','Devante Adams',13,1,26.29,341.8,109,1328,17,8.4,102.2,0,0,0,17),(7,'Packers','Allen Lazard',9,78,10.46,94.1,31,434,3,3.4,48.2,17,1.9,0,3),(7,'Packers','Marquez Valdes-Scantling',15,59,8.01,120.2,31,603,5,2.1,40.2,9,0.6,0,5),(25,'Texans','Brandin Cooks',14,27,13.74,192.4,70,984,4,5,70.3,0,0,0,4),(25,'Texans','Keke Coutee',7,97,10.29,72,27,310,3,3.9,44.3,0,0,0,3),(18,'Dolphins','Will Fuller',11,30,17.17,188.9,53,879,8,4.8,79.9,0,0,0,8),(25,'Texans','Randall Cobb',10,73,10.01,100.1,38,441,3,3.8,44.1,0,0,0,3),(25,'Texans','Chad Hansen',4,122,10.75,43,15,220,1,3.8,55,0,0,0,1),(26,'Colts','TY Hilton',14,42,10.75,150.5,53,753,4,3.8,52.5,0,0,0,4),(26,'Colts','Michael Pittman',12,79,7.83,93.9,38,475,1,3.2,39.6,24,2,0,1),(26,'Colts','Zach Pascal',15,53,8.72,130.8,42,588,5,2.8,39.2,0,0,0,5),(27,'Jaguars','DJ Chark',13,41,11.82,153.6,53,706,5,4.1,54.3,0,0,0,5),(27,'Jaguars','Laviska Shenault',13,49,10.19,132.5,52,532,3,4,40.9,93,7.2,0,3),(20,'Jets','Keelan Cole',15,43,10.01,150.1,52,619,5,3.5,41.3,2,0.1,0,5),(25,'Texans','Chris Conley',14,89,5.81,81.4,33,384,2,2.4,27.4,0,0,0,2),(30,'Chiefs','Tyreek Hill',15,2,21.93,328.9,87,1276,15,5.8,85.1,123,8.2,2,17),(21,'Ravens','Sammy Watkins',10,83,8.74,87.4,37,421,2,3.7,42.1,3,0.3,0,2),(30,'Chiefs','Mecole Hardman',15,57,8.37,125.6,39,535,4,2.6,35.7,31,2.1,0,4),(30,'Chiefs','Demarcus Robinson',15,76,6.39,95.8,39,408,3,2.6,27.2,0,0,0,3),(32,'Chargers','Mike Williams',14,51,9.35,130.9,42,648,4,3,46.3,1,0.1,0,4),(32,'Chargers','Keenan Allen',14,9,17.51,245.1,100,992,8,7.1,70.9,-1,-0.1,0,8),(32,'Chargers','Jalen Guyton',15,75,6.47,97.1,28,511,3,1.9,34.1,0,0,0,3),(32,'Chargers','Tyron Johnson',11,96,6.73,74,18,363,3,1.6,33,17,1.5,0,3),(14,'Rams','Robert Woods',15,12,15.83,237.5,86,900,6,5.7,60,155,10.3,2,8),(14,'Rams','Cooper Kupp',15,19,13.91,208.7,92,974,3,6.1,64.9,33,2.2,0,3),(28,'Titans','Josh Reynolds',15,61,7.83,117.4,48,589,2,3.2,39.3,5,0.3,0,2),(19,'Patriots','Nelson Agholor',15,33,11.93,178.9,47,839,8,3.1,55.9,0,0,0,8),(31,'Raiders','Hunter Renfrow',15,56,8.41,126.2,53,632,2,3.5,42.1,0,0,0,2),(31,'Raiders','Henry Ruggs',12,93,6.61,79.3,23,414,2,1.9,34.5,49,4.1,0,2),(18,'Dolphins','Devnate Parker',13,44,11.36,147.7,56,677,4,4.3,52.1,0,0,0,4),(18,'Dolphins','Lynn Bowden',9,82,4.51,40.6,20,167,0,2.2,18.6,39,4.3,0,0),(18,'Dolphins','Jakeem Grant',14,84,6.24,87.3,36,373,1,2.6,26.6,20,1.4,0,1),(18,'Dolphins','Preston Williams',8,95,9.35,74.8,18,288,4,2.3,36,0,0,0,4),(8,'Vikings','Justin Jefferson',15,8,16.79,251.9,79,1267,7,5.3,84.5,2,0.1,0,7),(8,'Vikings','Adam Thielen',14,10,17.45,244.3,70,868,14,5,62,15,1.1,0,14),(8,'Vikings','Chad Beebe',13,129,2.9,37.7,18,157,1,1.3,12.1,0,0,0,1),(19,'Patriots','Jakobi Meyers',13,58,9.56,124.26,53,661,0,4.1,50.8,2,0.2,0,1),(5,'Bears','Damiere Byrd',15,66,7.52,112.8,46,597,1,3.1,39.8,11,0.7,0,1),(19,'Patrios','Nkeal Harry',13,98,5.4,70.2,31,292,2,2.4,22.5,0,0,0,2),(11,'Saints','Michael Thomas',7,88,11.99,83.9,40,438,0,5.7,62.6,1,0.1,0,0),(17,'Bills','Emmanual Sanders',13,47,11.04,143.5,52,663,4,4,51,12,0.9,0,4),(11,'Saints','Trequan Smith',14,70,7.36,103.1,34,448,4,2.4,32,3,0.2,0,4),(2,'Giants','Sterling Shepard',11,55,11.72,128.9,58,544,2,5.3,49.5,25,2.3,0,2),(2,'Giants','Darius Slayton',15,48,9.12,136.8,48,729,3,3.2,48.6,-1,-0.1,0,3),(2,'Giants','Golden Tate',12,86,7.21,86.52,35,388,2,2.9,32.3,0,0,0,2),(20,'Jets','Jamison Crowder',11,35,14.99,164.92,55,668,6,5,60.7,14,1.3,0,7),(6,'Lions','Breshad Perriman',11,82,7.97,87.7,27,421,3,2.5,38.3,6,0.5,0,3),(20,'Jets','Denzel Mims',8,106,7.28,58.2,22,342,0,2.8,42.8,0,0,0,0),(20,'Jets','Braxton Berrios',15,80,6.05,90.7,34,374,3,2.3,24.9,0,0,0,3),(3,'Eagles','Jalen Reagor',10,87,8.47,84.7,30,381,1,3,38.1,26,2.6,0,1),(3,'Eagles','Greg Ward',15,51,8.73,130.9,52,413,6,3.5,27.5,-4,-0.3,0,6),(14,'Rams','DeSean Jackson',5,121,8.96,44.8,14,236,1,2.8,47.2,12,2.4,0,1),(3,'Eagles','Travis Fulgham',12,64,9.45,113.4,37,524,4,3.1,43.7,0,0,0,4),(3,'Eagles','Alshon Jeffrey',7,150,3.36,23.5,6,115,1,0.9,16.4,0,0,0,1),(24,'Steelers','Dionte Johnson',14,18,14.95,209.3,85,828,7,6.1,59.1,15,1.1,0,7),(24,'Steelers','Juju Smith-Schuster',15,17,14.37,215.6,91,766,8,6.1,51.1,0,0,0,8),(24,'Steelers','Chase Claypool',15,25,12.92,193.8,57,772,8,3.8,51.5,16,1.1,2,10),(24,'Steelers','James Washington',15,74,6.61,99.2,30,392,5,2,26.1,0,0,0,5),(15,'49ers','Brandon Aiyuk',12,31,15.38,184.5,60,748,5,5,62.3,77,6.4,2,7),(19,'Patriots','Kendrick Bourne',14,63,8.36,117.1,44,591,2,3.1,42.2,0,0,0,2),(15,'49ers','Deebo Samuel',7,90,11.53,80.7,33,391,1,4.7,55.9,26,3.7,0,1),(15,'49ers','Richie James',10,111,5.48,54.8,20,328,1,2,32.8,0,0,0,1),(16,'Seahawks','DK Metcalf',15,6,17.75,266.2,80,1282,10,5.3,85.5,0,0,0,10),(16,'Seahawks','Tyler Lockett',15,13,15.49,232.4,88,964,8,5.9,64.3,0,0,0,8),(10,'Panthers','David Moore',15,62,7.82,117.3,34,412,6,2.3,27.5,61,4.1,0,6),(12,'Bucs','Mike Evans',15,11,16.07,241,67,960,13,4.5,64,0,0,0,13),(12,'Bucs','Chris Godwin',11,38,14.61,160.7,60,707,5,5.5,64.3,0,0,0,5),(12,'Bucs','Antonio Brown',7,91,11.47,80.3,34,345,2,4.9,49.3,-2,-0.3,0,2),(12,'Bucs','Scotty Miller',15,72,6.69,100.3,32,489,3,2.1,32.6,14,0.9,0,3),(28,'Titans','AJ Brown',13,16,16.65,216.4,60,924,10,4.6,71.1,0,0,0,10),(20,'Jets','Corey Davis',13,32,14.04,182.5,60,945,5,4.6,72.7,0,0,0,5),(4,'WFT','Terry McLauren',14,22,14.77,206.8,80,1078,3,5.7,77,30,2.1,0,3),(4,'WFT','Cam Sims',15,94,5.13,76.9,27,434,1,1.8,28.9,5,0.3,0,1),(4,'WFT','Steven Sims',11,112,4.9,53.9,26,259,1,2.4,23.5,0,0,0,1),(18,'Dolphins','Jaylen Waddle',0,0,11.24,179.9,64,860,5,4,53.8,12,0.8,0,5),(21,'Ravens','Rashod Bateman',0,0,8.64,138.3,48,620,5,3,38.8,0,0,0,5),(2,'Giants','Kadarius Toney',0,0,8.01,128.3,47,560,3,2.9,35,49,3.1,0,3),(20,'Jets','Elijah Moore',0,0,9.85,157.7,61,739,3,3.8,46.2,13,0.8,0,3),(25,'Texans','Nico Collins',0,0,7.48,119.7,43,569,3,2.7,35.6,0,0,0,3),(3,'Eagles','Devonta Smith',0,0,12.35,197.6,71,950,5,4.4,59.4,0,0,0,5),(22,'Bengals','Jamarr Chase',0,0,13.66,218.6,77,1001,6,4.8,62.6,0,0,0,6),(10,'Panthers','Dan Arnold',15,23,5.95,89.2,28,392,4,1.9,26.1,0,0,0,4),(9,'Falcons','Hayden Hurst',15,15,9.09,136.3,52,543,5,3.5,36.2,0,0,0,5),(21,'Ravens','Mark Andrews',13,6,12.57,163.4,54,674,7,4.2,51.8,0,0,0,7),(21,'Ravens','Nick Boyle',9,55,4.14,37.3,14,113,2,1.6,12.6,0,0,0,2),(17,'Bils','Dawson Knox',11,38,5.63,61.9,22,259,3,2,23.5,0,0,0,3),(20,'Jets','Tyler Kroft',10,49,4.19,41.9,12,119,3,1.2,11.9,0,0,0,3),(10,'Panthers','Ian Thomas',15,51,2.64,39.6,19,146,1,1.3,9.7,0,0,0,1),(5,'Bears','Cole Kmet',15,45,3.53,52.9,21,202,2,1.4,13.5,0,0,0,2),(5,'Bears','Jimmy Graham',15,11,9.41,141.1,48,451,8,3.2,30.1,0,0,0,8),(22,'Bengals','Drew Sample',15,31,5.03,75.4,38,334,1,2.5,22.3,0,0,0,1),(23,'Browns','Austin Hooper',12,21,8.32,99.8,42,398,3,3.5,33.2,0,0,0,3),(23,'Browns','David Njoku',12,47,4.08,49,17,200,2,1.4,16.7,0,0,0,2),(23,'Browns','Harrison Bryant',15,39,4.12,61.8,24,238,3,1.6,15.9,0,0,0,3),(1,'Cowboys','Dalton Schultz',15,16,8.83,132.5,56,545,4,3.7,36.3,0,0,0,4),(28,'Broncos','Noah Fant',14,12,10.04,140.5,58,625,3,4.1,44.6,0,0,0,3),(6,'Lions','TJ Hockenson',15,3,11.32,169.8,64,698,6,4.3,46.5,0,0,0,6),(7,'Packers','Robert Tonyan',15,4,11.12,166.8,50,568,10,3.3,38.9,0,0,0,10),(25,'Texans','Jordan Akins',12,26,6.82,81.8,36,394,1,3,32.8,0,0,0,1),(6,'Lions','Darren Fells',15,30,5.08,76.2,21,312,4,1.4,20.8,0,0,0,4),(26,'Colts','Jack Doyle',13,40,4.57,59.4,20,234,3,1.5,18,0,0,0,3),(26,'Colts','Trey Burton',12,25,6.94,83.3,28,250,3,2.3,20.8,0,0,0,5),(26,'Colts','Mo Alie-Cox',14,28,5.74,80.4,31,394,2,2.2,28.1,0,0,0,2),(27,'Jaguars','Tyler Eifert',14,27,5.78,80.9,35,339,2,2.5,24.2,0,0,0,2),(27,'Jaguars','James Oshaughnessy',14,46,3.73,52.2,27,252,0,1.9,18,0,0,0,0),(30,'Chiefs','Travis Kelce',15,1,20.85,312.76,105,1416,11,7,94.4,0,0,0,11),(19,'Patriots','Hunter Henry',14,8,10.38,145.3,60,613,4,4.3,43.8,0,0,0,4),(14,'Rams','Tyler Higbee',14,17,8.65,121.1,41,480,5,2.9,34.3,0,0,0,5),(16,'Seahawks','Gerald Everett',15,24,5.89,88.4,39,392,1,2.6,26.1,0,0,0,1),(31,'Raiders','Darren Waller',15,2,16.79,251.9,98,1079,8,6.5,71.9,0,0,0,8),(18,'Dolphins','Mike Gesicki',14,7,10.69,149.6,48,656,6,3.4,46.9,0,0,0,6),(8,'Vikings','Irv Smith',12,22,7.79,93.5,28,335,5,2.3,27.9,0,0,0,5),(2,'Giants','Kyle Rudolph',12,36,5.45,65.4,28,334,1,2.3,27.8,0,0,0,1),(32,'Chargers','Jared Cook',14,19,8.08,113.1,33,461,6,2.4,32.9,0,0,0,6),(2,'Giants','Evan Engram',15,14,9.15,137.3,61,637,1,4.1,42.5,0,0,0,2),(20,'Jets','Chris Herndon',15,42,3.63,54.4,24,224,2,1.6,14.9,0,0,0,2),(3,'Eagles','Dallas Goedert',11,33,7.29,72.9,46,524,3,4.2,47.6,0,0,0,3),(3,'Eagles','Zach Ertz',10,18,10.58,116.4,33,319,1,3.3,31.9,0,0,0,1),(3,'Eagles','Richard Rodgers',14,34,5.04,70.5,24,345,2,1.7,24.6,0,0,0,2),(24,'Steelers','Eric Ebron',15,10,9.45,141.8,56,558,5,3.7,37.2,0,0,0,5),(15,'49ers','George Kittle',7,20,15.9,111.3,41,566,2,5.9,80.9,0,0,0,2),(15,'49ers','Jordan Reed',10,32,7.31,73.1,26,231,4,2.6,23.1,0,0,0,4),(16,'Seahawks','Greg Olsen',11,43,4.9,53.9,24,239,1,2.2,21.7,0,0,0,1),(16,'Seahawks','Jacob Hollister',15,37,4.29,64.3,24,203,3,1.6,13.5,0,0,0,3),(16,'Seahawks','Will Dissly',15,41,3.87,58.1,23,231,2,1.5,15.4,0,0,0,2),(12,'Bucs','Rob Gronkowski',15,9,9.63,144.4,43,594,7,2.9,39.6,0,0,0,7),(12,'Bucs','Cameron Brate',15,35,4.41,66.1,27,271,2,1.8,18.1,0,0,0,2),(19,'Patriots','Jonnu Smith',14,13,9.89,138.4,40,440,8,2.9,31.4,0,0,0,9),(28,'Titans','Anthony Firkser',15,29,5.33,79.9,37,369,1,2.5,24.6,0,0,0,1),(4,'WFT','Logan Thomas',15,5,10.93,163.92,69,633,5,4.6,42.2,0,0,0,5),(9,'Falcons','Kyle Pitts',0,0,12.07,193.1,74,857,6,4.6,53.6,0,0,0,6),(11,'Saints','Alvin Kamara',15,1,25.19,377.8,83,756,5,5.5,50.4,932,62.1,16,21),(8,'Vikings','Dalvin Cook',14,2,24.13,337.8,44,361,1,3.1,25.8,1557,111.2,16,17),(7,'Packers','Aaron Jones',13,5,18.49,240.4,43,312,2,3.3,24,1062,81.7,8,10),(28,'Titans','Derrick Henry',15,3,19.87,298.1,19,114,0,1.3,7.6,1777,118.5,15,15),(32,'Chargers','Austin Ekeler',9,28,16.47,263.5,74,602,3,4.6,37.6,858,53.6,5,8),(3,'Eagles','Miles Sanders',12,22,14.2,170.4,28,197,0,2.3,6.4,867,72.3,6,6),(5,'Bears','David Montgomery',14,6,16.9,236.6,45,375,2,3.2,26.8,1001,71.5,7,9),(23,'Browns','Nick Chubb',11,13,17.35,190.9,16,150,0,1.5,150,959,87.2,11,11),(6,'Lions','Dandre Swift',12,20,14.48,173.8,43,341,2,3.6,28.4,467,38.9,7,9),(31,'Raiders','Josh Jacobs',14,9,15.03,210.4,33,238,0,2.4,17,976,69.7,10,10),(25,'Texans','David Johnson',11,25,14.41,158.5,30,278,2,2.7,25.3,607,55.2,5,7),(26,'Colts','Jonathan Taylor',14,7,15.31,214.4,35,298,1,2.5,21.3,916,65.4,9,10),(4,'WFT','Antonio Gibson',13,12,14.85,193.1,35,241,0,2.7,18.5,720,55.4,11,11),(27,'Jaguars','James Robinson',14,4,17.89,250.4,49,344,3,3.5,24.6,1070,76.4,7,10),(16,'Seahawks','Chris Carson',11,17,16.14,177.5,35,248,4,3.1,22.5,637,57.9,5,9),(1,'Cowboys','Ezekiel Elliot',14,10,14.9,208.6,49,319,2,3.5,22.8,937,66.9,5,7),(9,'Falcons','Mike Davis',15,11,13.77,206.5,59,373,2,3.9,24.9,642,42.8,6,8),(12,'Bucs','Leonard Fournette',12,35,10.61,127.3,34,219,0,2.8,18.3,354,29.5,6,6),(10,'Panthers','Christian Mccaffrey',3,51,20.86,333.7,85,677,3,5.3,42.3,1065,66.6,10,13),(31,'Raiders','Kenyan Drake',14,14,13.15,184.1,22,122,0,1.6,8.7,919,65.6,10,10),(14,'Rams','Cam Akers',12,50,7.6,91.2,7,71,1,0.6,5.9,591,49.3,2,3),(14,'Rams','Darrell Henderson',15,33,8.69,130.3,16,159,1,1.1,10.6,624,41.6,5,6),(18,'Dolphins','Myles Gaskin',9,29,16.28,146.5,37,331,2,4.1,36.8,564,62.7,2,4),(21,'Ravens','J.K. Dobbins',14,31,10.04,140.5,18,120,0,1.3,8.6,645,46.1,7,7),(28,'Broncos','Melvin Gordon',14,18,12.67,177.4,28,141,1,2,10.1,893,63.8,8,9),(25,'Texans','Phillip Lindsay',11,63,6,66,7,28,0,0.6,2.5,502,45.6,1,1),(22,'Bengals','Joe Mixon',6,47,16.6,99.6,21,138,1,3.5,23,428,71.3,3,4),(12,'Bucs','Giovani Bernard',15,26,10.49,157.4,47,355,3,3.1,23.7,409,27.3,3,6),(15,'49ers','Raheem Mostert',8,46,12.46,99.7,16,156,1,2,19.5,521,65.1,2,3),(15,'49ers','Jeff Wilson',11,39,10.77,118.5,10,121,2,0.9,11,524,47.6,6,8),(13,'Cardinals','Chase Edmonds',15,23,10.9,163.5,51,374,4,3.4,24.9,451,30.1,1,5),(23,'Browns','Kareem Hunt',15,8,14.23,213.4,37,300,5,2.5,20,804,53.6,6,11),(26,'Colts','Nyheim Hines',15,16,12.1,181.5,58,432,4,3.9,28.8,363,24.2,3,7),(4,'WFT','J.D. Mckissic',15,15,12.23,183.4,75,559,2,5,37.3,365,24.3,1,3),(13,'Cardinals','James Conner',12,27,12.78,153.3,30,190,0,2.5,15.8,638,56.9,6,6),(18,'Dolphins','Malcolm Brown',15,43,7.09,106.3,22,164,0,1.5,10.9,399,26.6,5,5),(2,'Giants','Saquon Barkley',2,115,18.93,303,60,454,2,3.8,28.4,1228,76.8,10,12),(15,'49ers','Wayne Gallman',14,34,9.29,130.1,21,114,0,1.5,8.1,617,44.1,6,6),(19,'Patriots','Damien Harris',10,49,9.13,91.3,5,52,0,0.5,5.2,691,69.1,2,2),(19,'Patriots','Sony Michel',7,74,6.59,52.7,4,54,0,0.6,6.8,373,46.6,1,1),(25,'Texans','Rex Burkhead',10,42,10.76,107.6,25,192,3,2.5,19.2,274,27.4,3,6),(17,'Bills','Devin Singletary',15,30,9.42,141.3,37,263,0,2.5,17.5,680,45.3,2,2),(17,'Bills','Zack Moss',12,48,8.21,98.5,13,82,1,1.1,6.8,473,39.4,4,5),(18,'Dolphins','Salvon Ahmed',5,69,11.04,55.2,8,42,0,1.6,8.4,290,58,2,2),(19,'Patriots','James White',13,44,7.96,103.5,45,344,0,3.5,26.5,121,9.3,2,2),(11,'Saints','Latavius Murray',15,32,9.08,136.2,23,176,1,1.5,11.7,656,43.7,4,5),(21,'Ravens','Gus Edwards',15,38,8.01,120.2,8,119,0,0.5,7.9,663,44.2,6,6),(25,'Texans','Mark Ingram',9,78,4.9,49,6,50,0,0.7,5,260,26,2,2),(6,'Lions','Adrian Peterson',15,41,7.48,112.2,12,101,0,0.8,6.7,541,36.1,6,6),(1,'Cowboys','Tony Pollard',15,40,7.63,114.4,25,174,1,1.7,11.6,420,28,4,5),(24,'Steelers','Kalen Ballage',10,55,8.43,84.3,20,99,0,2,9.9,254,25.4,2,2),(32,'Chargers','Justin Jackson',8,76,6.49,51.9,18,141,0,2.3,17.6,198,24.8,0,0),(32,'Chargers','Josh Kelley',13,57,6.25,81.2,23,148,0,1.8,11.4,354,27.2,2,2),(9,'Falcons','Ito Smith',13,70,4.21,54.7,16,68,0,1.2,5.2,259,19.9,1,1),(20,'Jets','Ty Johnson',10,71,4.54,54.5,14,76,1,1.4,7.6,209,20.9,1,2),(6,'Lions','Jamaal Williams',13,37,9.58,124.5,31,236,1,2.4,18.2,479,36.8,2,3),(27,'Jaguars','Carlos Hyde',10,53,8.49,84.9,16,93,0,1.6,9.3,356,35.6,4,4),(15,'49ers','Tevin Coleman',7,118,1.81,12.7,4,34,0,0.6,4.9,53,7.6,0,0),(3,'Eagles','Boston Scott',15,52,5.71,85.7,23,198,1,1.5,13.2,309,20.6,1,2),(24,'Steelers','Benny Snell',15,61,4.93,73.9,10,61,0,0.7,4.1,358,23.9,4,4),(2,'Giants','Devontae Booker',15,56,5.61,84.1,17,84,0,1.1,5.6,407,27.1,3,3),(28,'Titans','Brian Hill',15,59,5.25,78.8,22,157,0,1.5,10.5,371,24.7,1,1),(3,'Eagles','Kerryon Johnson',15,62,4.79,71.8,19,197,1,1.3,12.5,181,12.1,2,3),(7,'Colts','Jordan Wilkins',15,64,4.09,61.3,12,105,0,0.8,7,308,20.5,1,1),(12,'Bucs','Ronald Jones',13,21,13.27,172.5,28,165,1,2.2,12.7,900,69.2,6,7),(24,'Steelers','Najee Harris',0,0,15.33,245.2,50,378,2,3.1,23.6,1054,65.9,7,9),(28,'Broncos','Javonte Williams',0,0,10.85,173.7,29,217,1,1.8,13.6,898,56.1,5,6),(27,'Jaguars','Travis Etienne',0,0,12.48,199.6,56,447,2,3.5,27.9,654,40.9,4,6),(15,'49ers','Trey Sermon',0,0,7.39,118.3,19,150,1,1.2,9.4,561,35.1,4,5),(20,'Jets','Michael Carter',0,0,8.7,139.2,29,221,1,1.8,13.8,608,38,4,5);
/*!40000 ALTER TABLE `skilled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `skilled_rankings`
--

DROP TABLE IF EXISTS `skilled_rankings`;
/*!50001 DROP VIEW IF EXISTS `skilled_rankings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `skilled_rankings` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`,
 1 AS `total_TD`,
 1 AS `rec_yards`,
 1 AS `rush_yards`,
 1 AS `games_played`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sos`
--

DROP TABLE IF EXISTS `sos`;
/*!50001 DROP VIEW IF EXISTS `sos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sos` AS SELECT 
 1 AS `team_name`,
 1 AS `sos_this_year`,
 1 AS `sos_last_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sos_qb`
--

DROP TABLE IF EXISTS `sos_qb`;
/*!50001 DROP VIEW IF EXISTS `sos_qb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sos_qb` AS SELECT 
 1 AS `team_id`,
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `sos_this_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sos_rb`
--

DROP TABLE IF EXISTS `sos_rb`;
/*!50001 DROP VIEW IF EXISTS `sos_rb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sos_rb` AS SELECT 
 1 AS `team_id`,
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `sos_this_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `te`
--

DROP TABLE IF EXISTS `te`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `te` (
  `player_id` int NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `name` varchar(45) NOT NULL,
  `games_played` int NOT NULL,
  `position_rank` int NOT NULL,
  `average_points` double NOT NULL,
  `total_points` double NOT NULL,
  `receptions` int NOT NULL,
  `rec_yards` int NOT NULL,
  `rec_TD` int NOT NULL,
  `avg_receptions` double NOT NULL,
  `rec_yards_per_game` double NOT NULL,
  `targets` int NOT NULL,
  `fumbles_lost` int NOT NULL,
  `total_TD` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `fk_te_teams1_idx` (`team_id`),
  CONSTRAINT `fk_te_teams1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `te`
--

LOCK TABLES `te` WRITE;
/*!40000 ALTER TABLE `te` DISABLE KEYS */;
INSERT INTO `te` VALUES (1,'Panthers','Dan Arnold',15,23,5.95,89.2,28,392,4,1.9,26.1,42,1,4,10),(2,'Falcons','Hayden Hurst',15,15,9.09,136.3,52,543,5,3.5,36.2,81,0,5,9),(3,'Ravens','Mark Andrews',13,6,12.57,163.4,54,674,7,4.2,51.8,82,0,7,21),(4,'Ravens','Nick Boyle',9,55,4.14,37.3,14,113,2,1.6,12.6,17,0,2,21),(5,'Bils','Dawson Knox',11,38,5.63,61.9,22,259,3,2,23.5,36,2,3,17),(6,'Jets','Tyler Kroft',10,49,4.19,41.9,12,119,3,1.2,11.9,16,0,3,20),(7,'Panthers','Ian Thomas',15,51,2.64,39.6,19,146,1,1.3,9.7,28,0,1,10),(8,'Bears','Cole Kmet',15,45,3.53,52.9,21,202,2,1.4,13.5,36,0,2,5),(9,'Bears','Jimmy Graham',15,11,9.41,141.1,48,451,8,3.2,30.1,74,0,8,5),(10,'Bengals','Drew Sample',15,31,5.03,75.4,38,334,1,2.5,22.3,50,1,1,22),(11,'Browns','Austin Hooper',12,21,8.32,99.8,42,398,3,3.5,33.2,65,0,3,23),(12,'Browns','David Njoku',12,47,4.08,49,17,200,2,1.4,16.7,24,0,2,23),(13,'Browns','Harrison Bryant',15,39,4.12,61.8,24,238,3,1.6,15.9,38,2,3,23),(14,'Cowboys','Dalton Schultz',15,16,8.83,132.5,56,545,4,3.7,36.3,79,1,4,1),(15,'Broncos','Noah Fant',14,12,10.04,140.5,58,625,3,4.1,44.6,87,0,3,28),(16,'Lions','TJ Hockenson',15,3,11.32,169.8,64,698,6,4.3,46.5,98,1,6,6),(17,'Packers','Robert Tonyan',15,4,11.12,166.8,50,568,10,3.3,38.9,57,0,10,7),(18,'Texans','Jordan Akins',12,26,6.82,81.8,36,394,1,3,32.8,47,0,1,25),(19,'Lions','Darren Fells',15,30,5.08,76.2,21,312,4,1.4,20.8,28,0,4,6),(20,'Colts','Jack Doyle',13,40,4.57,59.4,20,234,3,1.5,18,30,1,3,26),(21,'Colts','Trey Burton',12,25,6.94,83.3,28,250,3,2.3,20.8,47,0,5,26),(22,'Colts','Mo Alie-Cox',14,28,5.74,80.4,31,394,2,2.2,28.1,39,1,2,26),(23,'Jaguars','Tyler Eifert',14,27,5.78,80.9,35,339,2,2.5,24.2,58,0,2,27),(24,'Jaguars','James Oshaughnessy',14,46,3.73,52.2,27,252,0,1.9,18,37,0,0,27),(25,'Chiefs','Travis Kelce',15,1,20.85,312.76,105,1416,11,7,94.4,145,1,11,30),(26,'Patriots','Hunter Henry',14,8,10.38,145.3,60,613,4,4.3,43.8,93,0,4,19),(27,'Rams','Tyler Higbee',14,17,8.65,121.1,41,480,5,2.9,34.3,56,0,5,14),(28,'Seahawks','Gerald Everett',15,24,5.89,88.4,39,392,1,2.6,26.1,55,1,1,16),(29,'Raiders','Darren Waller',15,2,16.79,251.9,98,1079,8,6.5,71.9,135,1,8,31),(30,'Dolphins','Mike Gesicki',14,7,10.69,149.6,48,656,6,3.4,46.9,75,0,6,18),(31,'Vikings','Irv Smith',12,22,7.79,93.5,28,335,5,2.3,27.9,40,0,5,8),(32,'Giants','Kyle Rudolph',12,36,5.45,65.4,28,334,1,2.3,27.8,37,1,1,2),(33,'Chargers','Jared Cook',14,19,8.08,113.1,33,461,6,2.4,32.9,55,1,6,32),(34,'Giants','Evan Engram',15,14,9.15,137.3,61,637,1,4.1,42.5,105,1,2,2),(35,'Jets','Chris Herndon',15,42,3.63,54.4,24,224,2,1.6,14.9,36,2,2,20),(36,'Eagles','Dallas Goedert',11,33,7.29,72.9,46,524,3,4.2,47.6,65,0,3,3),(37,'Eagles','Zach Ertz',10,18,10.58,116.4,33,319,1,3.3,31.9,66,0,1,3),(38,'Eagles','Richard Rodgers',14,34,5.04,70.5,24,345,2,1.7,24.6,31,0,2,3),(39,'Steelers','Eric Ebron',15,10,9.45,141.8,56,558,5,3.7,37.2,91,1,5,24),(40,'49ers','George Kittle',7,20,15.9,111.3,41,566,2,5.9,80.9,54,0,2,15),(41,'49ers','Jordan Reed',10,32,7.31,73.1,26,231,4,2.6,23.1,46,0,4,15),(42,'Seahawks','Greg Olsen',11,43,4.9,53.9,24,239,1,2.2,21.7,37,0,1,16),(43,'Seahawks','Jacob Hollister',15,37,4.29,64.3,24,203,3,1.6,13.5,37,0,3,16),(44,'Seahawks','Will Dissly',15,41,3.87,58.1,23,231,2,1.5,15.4,27,0,2,16),(45,'Bucs','Rob Gronkowski',15,9,9.63,144.4,43,594,7,2.9,39.6,73,0,7,12),(46,'Bucs','Cameron Brate',15,35,4.41,66.1,27,271,2,1.8,18.1,32,0,2,12),(47,'Patriots','Jonnu Smith',14,13,9.89,138.4,40,440,8,2.9,31.4,63,0,9,19),(48,'Titans','Anthony Firkser',15,29,5.33,79.9,37,369,1,2.5,24.6,51,0,1,28),(49,'WFT','Logan Thomas',15,5,10.93,163.92,69,633,5,4.6,42.2,104,0,5,4),(50,'Falcons','Kyle Pitts',0,0,12.07,193.1,74,857,6,4.6,53.6,0,0,6,9);
/*!40000 ALTER TABLE `te` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `te_rankings`
--

DROP TABLE IF EXISTS `te_rankings`;
/*!50001 DROP VIEW IF EXISTS `te_rankings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `te_rankings` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`,
 1 AS `total_TD`,
 1 AS `rec_yards`,
 1 AS `receptions`,
 1 AS `avg_receptions`,
 1 AS `games_played`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `conference` varchar(3) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `sos_last_year` double NOT NULL,
  `sos_this_year` double NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Cowboys','NFC','TX','Dallas',0.459,0.452),(2,'Giants','NFC','NY','East Rutherford',0.482,0.474),(3,'Eagles','NFC','PA','Philadelphia',0.486,0.43),(4,'WFT','NFC','MD','Washington D.C.',0.465,0.504),(5,'Bears','NFC','IL','Chicago',0.509,0.55),(6,'Lions','NFC','MI','Detroit',0.525,0.529),(7,'Packers','NFC','WI','Green Bay',0.504,0.542),(8,'Vikings','NFC','MN','Minnesota',0.516,0.531),(9,'Falcons','NFC','GA','Atlanta',0.525,0.454),(10,'Panthers','NFC','NC','Charlotte',0.5,0.472),(11,'Saints','NFC','LA','New Orleans',0.49,0.483),(12,'Bucs','NFC','FL','Tampa Bay',0.502,0.465),(13,'Cardinals','NFC','AZ','Pheonix',0.518,0.507),(14,'Rams','NFC','CA','Los Angeles',0.516,0.515),(15,'49ers','NFC','CA','San Fransico',0.527,0.489),(16,'Seahawks','NFC','WA','Seattle',0.509,0.511),(17,'Bills','AFC','NY','Buffalo',0.525,0.478),(18,'Dolphins','AFC','FL','Miami',0.529,0.471),(19,'Patriots','AFC','MA','New England',0.537,0.489),(20,'Jets','AFC','NY','East Rutherford',0.533,0.489),(21,'Ravens','AFC','MD','Baltimore',0.438,0.563),(22,'Bengals','AFC','OH','Cincinnati',0.477,0.529),(23,'Browns','AFC','OH','Cleveland',0.461,0.518),(24,'Steelers','AFC','PA','Pittsburgh',0.457,0.574),(25,'Texans','AFC','TX','Houston',0.518,0.504),(26,'Colts','AFC','IN','Indianapolis',0.502,0.478),(27,'Jaguars','AFC','FL','Jacksonville',0.494,0.491),(28,'Titans','AFC','TN','Nashville',0.498,0.507),(30,'Cheifs','AFC','MO','Kansas City',0.5,0.511),(31,'Raiders','AFC','NV','Las Vegas',0.496,0.526),(32,'Chargers','AFC','CA','Los Angeles',0.492,0.493);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wr`
--

DROP TABLE IF EXISTS `wr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wr` (
  `player_id` int NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `name` varchar(45) NOT NULL,
  `games_played` int NOT NULL,
  `position_rank` int NOT NULL,
  `average_points` double NOT NULL,
  `total_points` double NOT NULL,
  `receptions` int NOT NULL,
  `rec_yards` int NOT NULL,
  `rec_TD` int NOT NULL,
  `avg_receptions` double NOT NULL,
  `rec_yards_per_game` double NOT NULL,
  `targets` int NOT NULL,
  `rush_yards` int NOT NULL,
  `rush_yds_per_game` double NOT NULL,
  `rush_TD` int NOT NULL,
  `fumbles_lost` int NOT NULL,
  `total_TD` int NOT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `fk_wr_teams1_idx` (`team_id`),
  CONSTRAINT `fk_wr_teams1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wr`
--

LOCK TABLES `wr` WRITE;
/*!40000 ALTER TABLE `wr` DISABLE KEYS */;
INSERT INTO `wr` VALUES (1,'Cardinals','Deandre Hopkins',15,4,18.69,280.3,111,1372,6,7.4,91.5,150,1,0.1,0,3,6,13),(2,'Cardinals','Larry Fitzgerald',13,71,7.76,100.9,54,409,1,4.2,31.5,72,0,0,0,0,1,13),(3,'Cardinals','Christian Kirk',14,45,10.46,146.4,48,621,6,3.4,44.4,79,3,0.2,0,0,6,13),(4,'Falcons','Calvin Ridley',14,5,19.35,270.9,82,1322,9,5.9,94.4,131,7,0.5,0,0,9,9),(5,'Falcons','Julio Jones',9,46,14.43,230.8,78,1090,7,4.9,68.1,0,0,0,0,0,7,9),(6,'Falcons','Russell Gage',15,39,10.39,155.86,63,695,3,4.2,46.3,99,-2,-0.1,0,0,4,9),(7,'Ravens','Marquise Brown',15,37,10.79,161.9,53,728,6,3.5,48.5,92,1,0.1,0,0,6,21),(8,'Raiders','Willie Snead',13,77,7.25,94.2,33,432,3,2.5,33.2,48,0,0,0,0,3,31),(9,'Ravens','Miles Boykin',15,105,3.89,58.3,18,223,3,1.2,14.9,31,0,0,0,0,3,21),(10,'Bills','Stefon Diggs',15,3,20.93,314,120,1459,8,8,97.3,158,1,0.1,0,0,8,17),(11,'Bills','Cole Beasley',15,21,13.83,207.5,82,967,4,5.5,64.5,107,0,0,0,0,5,17),(12,'Raiders','John Brown',8,92,9.95,79.6,29,386,2,3.6,48.3,48,0,0,0,0,2,31),(13,'Bills','Gabriel Davis',15,60,7.88,118.2,33,492,6,2.2,32.8,57,0,0,0,0,6,17),(14,'Panthers','Robby Anderson',15,15,14.47,217.1,92,1056,3,6.1,70.4,129,15,1,0,1,3,10),(15,'Panthers','DJ Moore',14,23,14.03,196.4,61,1092,4,4.4,78,107,22,1.6,0,0,4,10),(16,'WFT','Curtis Samuel',14,26,13.79,193,70,733,3,5,52.4,86,197,14.1,2,0,5,4),(17,'Bears','Allen Robinson',15,7,17.15,257.2,100,1213,6,6.7,80.9,146,-1,-0.1,0,0,6,5),(18,'Bears','Darnell Mooney',15,50,8.79,131.8,50,538,4,3.3,35.9,85,20,1.3,0,0,4,5),(19,'Bears','Cordarrelle Patterson',15,100,4.51,67.6,21,132,0,1.4,8.8,25,214,14.3,1,0,1,5),(20,'Bears','Anthony Miller',15,68,7.03,105.4,47,472,2,3.1,31.5,74,12,0.8,0,1,2,5),(21,'Bengals','Tee Higgins',15,24,12.97,194.6,67,908,6,4.5,60.5,107,28,1.9,0,1,6,22),(22,'Cardinals','AJ Green',15,67,7.42,111.3,47,523,2,3.1,34.9,98,0,0,0,0,2,13),(23,'Bengals','Tyler Boyd',14,28,13.6,190.44,78,840,4,5.6,60,107,38,2.7,0,0,4,22),(24,'Browns','Jarvis Landry',14,34,12.25,171.56,67,789,3,4.8,56.4,95,7,0.5,0,0,4,23),(25,'Browns','Odell Beckham',7,85,13.08,209.3,67,934,7,4.2,58.4,0,33,2.1,0,0,7,23),(26,'Browns','Rashard Higgins',12,64,9.45,113.4,35,544,4,2.9,45.3,49,0,0,0,0,4,23),(27,'Browns','Donovan Peoples-Jones',11,108,5.12,56.3,13,293,2,1.2,26.6,17,0,0,0,0,2,23),(28,'Cowboys','Amari Cooper',15,14,15.11,226.7,86,1073,5,5.7,71.5,121,14,0.9,0,0,5,1),(29,'Cowboys','CeeDee Lamb',15,20,13.87,208.1,69,892,5,4.6,59.5,104,79,5.3,1,1,6,1),(30,'Cowboys','Michael Gallup',15,36,10.96,164.4,55,794,5,3.7,52.4,97,0,0,0,0,5,1),(31,'Broncos','Tim Patrick',14,40,11.04,154.6,49,696,6,3.5,49.7,75,0,0,0,0,6,28),(32,'Broncos','Jerry Jeudy',15,54,8.71,130.6,47,716,2,3.1,47.7,106,0,0,0,0,7,28),(33,'Giants','Kenny Golliday',5,101,13.51,216.3,70,1065,7,4.4,66.6,0,0,0,0,0,2,2),(34,'Jaguars','Marvin Jones ',15,29,12.65,189.8,68,798,7,4.5,53.2,104,0,0,0,0,7,27),(35,'Lions','Danny Amendola',13,69,8.06,104.8,45,596,0,3.5,45.8,67,2,0.2,0,0,0,6),(36,'49ers','Mohamed Sanu',9,124,4.49,40.4,14,165,1,1.6,18.3,17,0,0,0,0,1,15),(37,'Packers','Devante Adams',13,1,26.29,341.8,109,1328,17,8.4,102.2,143,0,0,0,1,17,7),(38,'Packers','Allen Lazard',9,78,10.46,94.1,31,434,3,3.4,48.2,42,17,1.9,0,0,3,7),(39,'Packers','Marquez Valdes-Scantling',15,59,8.01,120.2,31,603,5,2.1,40.2,60,9,0.6,0,1,5,7),(40,'Texans','Brandin Cooks',14,27,13.74,192.4,70,984,4,5,70.3,103,0,0,0,0,4,25),(41,'Texans','Keke Coutee',7,97,10.29,72,27,310,3,3.9,44.3,33,0,0,0,3,3,25),(42,'Dolphins','Will Fuller',11,30,17.17,188.9,53,879,8,4.8,79.9,75,0,0,0,0,8,18),(43,'Texans','Randall Cobb',10,73,10.01,100.1,38,441,3,3.8,44.1,48,0,0,0,0,3,25),(44,'Texans','Chad Hansen',4,122,10.75,43,15,220,1,3.8,55,20,0,0,0,0,1,25),(45,'Colts','TY Hilton',14,42,10.75,150.5,53,753,4,3.8,52.5,86,0,0,0,0,4,26),(46,'Colts','Michael Pittman',12,79,7.83,93.9,38,475,1,3.2,39.6,58,24,2,0,0,1,26),(47,'Colts','Zach Pascal',15,53,8.72,130.8,42,588,5,2.8,39.2,67,0,0,0,0,5,26),(48,'Jaguars','DJ Chark',13,41,11.82,153.6,53,706,5,4.1,54.3,94,0,0,0,0,5,27),(49,'Jaguars','Laviska Shenault',13,49,10.19,132.5,52,532,3,4,40.9,70,93,7.2,0,0,3,27),(50,'Jets','Keelan Cole',15,43,10.01,150.1,52,619,5,3.5,41.3,80,2,0.1,0,0,5,20),(51,'Texans','Chris Conley',14,89,5.81,81.4,33,384,2,2.4,27.4,54,0,0,0,1,2,25),(52,'Chiefs','Tyreek Hill',15,2,21.93,328.9,87,1276,15,5.8,85.1,135,123,8.2,2,0,17,30),(53,'Ravens','Sammy Watkins',10,83,8.74,87.4,37,421,2,3.7,42.1,55,3,0.3,0,1,2,21),(54,'Chiefs','Mecole Hardman',15,57,8.37,125.6,39,535,4,2.6,35.7,60,31,2.1,0,1,4,30),(55,'Chiefs','Demarcus Robinson',15,76,6.39,95.8,39,408,3,2.6,27.2,52,0,0,0,1,3,30),(56,'Chargers','Mike Williams',14,51,9.35,130.9,42,648,4,3,46.3,78,1,0.1,0,0,4,32),(57,'Chargers','Keenan Allen',14,9,17.51,245.1,100,992,8,7.1,70.9,147,-1,-0.1,0,2,8,32),(58,'Chargers','Jalen Guyton',15,75,6.47,97.1,28,511,3,1.9,34.1,51,0,0,0,0,3,32),(59,'Chargers','Tyron Johnson',11,96,6.73,74,18,363,3,1.6,33,24,17,1.5,0,0,3,32),(60,'Rams','Robert Woods',15,12,15.83,237.5,86,900,6,5.7,60,122,155,10.3,2,1,8,14),(61,'Rams','Cooper Kupp',15,19,13.91,208.7,92,974,3,6.1,64.9,124,33,2.2,0,1,3,14),(62,'Titans','Josh Reynolds',15,61,7.83,117.4,48,589,2,3.2,39.3,75,5,0.3,0,1,2,28),(63,'Patriots','Nelson Agholor',15,33,11.93,178.9,47,839,8,3.1,55.9,78,0,0,0,0,8,19),(64,'Raiders','Hunter Renfrow',15,56,8.41,126.2,53,632,2,3.5,42.1,70,0,0,0,1,2,31),(65,'Raiders','Henry Ruggs',12,93,6.61,79.3,23,414,2,1.9,34.5,40,49,4.1,0,1,2,31),(66,'Dolphins','Devnate Parker',13,44,11.36,147.7,56,677,4,4.3,52.1,89,0,0,0,0,4,18),(67,'Dolphins','Lynn Bowden',9,82,4.51,40.6,20,167,0,2.2,18.6,25,39,4.3,0,0,0,18),(68,'Dolphins','Jakeem Grant',14,84,6.24,87.3,36,373,1,2.6,26.6,54,20,1.4,0,0,1,18),(69,'Dolphins','Preston Williams',8,95,9.35,74.8,18,288,4,2.3,36,35,0,0,0,0,4,18),(70,'Vikings','Justin Jefferson',15,8,16.79,251.9,79,1267,7,5.3,84.5,113,2,0.1,0,0,7,8),(71,'Vikings','Adam Thielen',14,10,17.45,244.3,70,868,14,5,62,103,15,1.1,0,0,14,8),(72,'Vikings','Chad Beebe',13,129,2.9,37.7,18,157,1,1.3,12.1,27,0,0,0,0,1,8),(73,'Patriots','Jakobi Meyers',13,58,9.56,124.26,53,661,0,4.1,50.8,74,2,0.2,0,1,1,19),(74,'Bears','Damiere Byrd',15,66,7.52,112.8,46,597,1,3.1,39.8,74,11,0.7,0,0,1,5),(75,'Patrios','Nkeal Harry',13,98,5.4,70.2,31,292,2,2.4,22.5,55,0,0,0,1,2,19),(76,'Saints','Michael Thomas',7,88,11.99,83.9,40,438,0,5.7,62.6,55,1,0.1,0,0,0,11),(77,'Bills','Emmanual Sanders',13,47,11.04,143.5,52,663,4,4,51,69,12,0.9,0,0,4,17),(78,'Saints','Trequan Smith',14,70,7.36,103.1,34,448,4,2.4,32,50,3,0.2,0,0,4,11),(79,'Giants','Sterling Shepard',11,55,11.72,128.9,58,544,2,5.3,49.5,80,25,2.3,0,0,2,2),(80,'Giants','Darius Slayton',15,48,9.12,136.8,48,729,3,3.2,48.6,92,-1,-0.1,0,1,3,2),(81,'Giants','Golden Tate',12,86,7.21,86.52,35,388,2,2.9,32.3,52,0,0,0,0,2,2),(82,'Jets','Jamison Crowder',11,35,14.99,164.92,55,668,6,5,60.7,85,14,1.3,0,0,7,20),(83,'Lions','Breshad Perriman',11,82,7.97,87.7,27,421,3,2.5,38.3,54,6,0.5,0,0,3,6),(84,'Jets','Denzel Mims',8,106,7.28,58.2,22,342,0,2.8,42.8,42,0,0,0,0,0,20),(85,'Jets','Braxton Berrios',15,80,6.05,90.7,34,374,3,2.3,24.9,52,0,0,0,0,3,20),(86,'Eagles','Jalen Reagor',10,87,8.47,84.7,30,381,1,3,38.1,53,26,2.6,0,0,1,3),(87,'Eagles','Greg Ward',15,51,8.73,130.9,52,413,6,3.5,27.5,76,-4,-0.3,0,0,6,3),(88,'Rams','DeSean Jackson',5,121,8.96,44.8,14,236,1,2.8,47.2,26,12,2.4,0,0,1,14),(89,'Eagles','Travis Fulgham',12,64,9.45,113.4,37,524,4,3.1,43.7,65,0,0,0,0,4,3),(90,'Eagles','Alshon Jeffrey',7,150,3.36,23.5,6,115,1,0.9,16.4,13,0,0,0,0,1,3),(91,'Steelers','Dionte Johnson',14,18,14.95,209.3,85,828,7,6.1,59.1,140,15,1.1,0,1,7,24),(92,'Steelers','Juju Smith-Schuster',15,17,14.37,215.6,91,766,8,6.1,51.1,120,0,0,0,1,8,24),(93,'Steelers','Chase Claypool',15,25,12.92,193.8,57,772,8,3.8,51.5,98,16,1.1,2,1,10,24),(94,'Steelers','James Washington',15,74,6.61,99.2,30,392,5,2,26.1,54,0,0,0,0,5,24),(95,'49ers','Brandon Aiyuk',12,31,15.38,184.5,60,748,5,5,62.3,96,77,6.4,2,0,7,15),(96,'Patriots','Kendrick Bourne',14,63,8.36,117.1,44,591,2,3.1,42.2,68,0,0,0,0,2,19),(97,'49ers','Deebo Samuel',7,90,11.53,80.7,33,391,1,4.7,55.9,44,26,3.7,0,0,1,15),(98,'49ers','Richie James',10,111,5.48,54.8,20,328,1,2,32.8,30,0,0,0,2,1,15),(99,'Seahawks','DK Metcalf',15,6,17.75,266.2,80,1282,10,5.3,85.5,120,0,0,0,1,10,16),(100,'Seahawks','Tyler Lockett',15,13,15.49,232.4,88,964,8,5.9,64.3,118,0,0,0,0,8,16),(101,'Panthers','David Moore',15,62,7.82,117.3,34,412,6,2.3,27.5,40,61,4.1,0,0,6,10),(102,'Bucs','Mike Evans',15,11,16.07,241,67,960,13,4.5,64,105,0,0,0,0,13,12),(103,'Bucs','Chris Godwin',11,38,14.61,160.7,60,707,5,5.5,64.3,77,0,0,0,0,5,12),(104,'Bucs','Antonio Brown',7,91,11.47,80.3,34,345,2,4.9,49.3,47,-2,-0.3,0,0,2,12),(105,'Bucs','Scotty Miller',15,72,6.69,100.3,32,489,3,2.1,32.6,50,14,0.9,0,0,3,12),(106,'Titans','AJ Brown',13,16,16.65,216.4,60,924,10,4.6,71.1,95,0,0,0,1,10,28),(107,'Jets','Corey Davis',13,32,14.04,182.5,60,945,5,4.6,72.7,81,0,0,0,1,5,20),(108,'WFT','Terry McLauren',14,22,14.77,206.8,80,1078,3,5.7,77,126,30,2.1,0,1,3,4),(109,'WFT','Cam Sims',15,94,5.13,76.9,27,434,1,1.8,28.9,43,5,0.3,0,0,1,4),(110,'WFT','Steven Sims',11,112,4.9,53.9,26,259,1,2.4,23.5,36,0,0,0,2,1,4),(111,'Dolphins','Jaylen Waddle',0,0,11.24,179.9,64,860,5,4,53.8,0,12,0.8,0,0,5,18),(112,'Ravens','Rashod Bateman',0,0,8.64,138.3,48,620,5,3,38.8,0,0,0,0,0,5,21),(113,'Giants','Kadarius Toney',0,0,8.01,128.3,47,560,3,2.9,35,0,49,3.1,0,0,3,2),(114,'Jets','Elijah Moore',0,0,9.85,157.7,61,739,3,3.8,46.2,0,13,0.8,0,0,3,20),(115,'Texans','Nico Collins',0,0,7.48,119.7,43,569,3,2.7,35.6,0,0,0,0,0,3,25),(116,'Eagles','Devonta Smith',0,0,12.35,197.6,71,950,5,4.4,59.4,0,0,0,0,0,5,3),(117,'Bengals','Jamarr Chase',0,0,13.66,218.6,77,1001,6,4.8,62.6,0,0,0,0,0,6,22);
/*!40000 ALTER TABLE `wr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `wr_rankings`
--

DROP TABLE IF EXISTS `wr_rankings`;
/*!50001 DROP VIEW IF EXISTS `wr_rankings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wr_rankings` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `average_points`,
 1 AS `total_points`,
 1 AS `total_TD`,
 1 AS `rec_yards`,
 1 AS `receptions`,
 1 AS `avg_receptions`,
 1 AS `games_played`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wr_yards`
--

DROP TABLE IF EXISTS `wr_yards`;
/*!50001 DROP VIEW IF EXISTS `wr_yards`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wr_yards` AS SELECT 
 1 AS `team_name`,
 1 AS `name`,
 1 AS `receptions`,
 1 AS `targets`,
 1 AS `rec_yards`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `above_avg_qb`
--

/*!50001 DROP VIEW IF EXISTS `above_avg_qb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `above_avg_qb` AS select `qb`.`team_name` AS `team_name`,`qb`.`name` AS `name`,`qb`.`average_points` AS `average_points`,`qb`.`total_points` AS `total_points` from `qb` where (`qb`.`total_points` > (select avg(`qb`.`total_points`) AS `avg points` from `qb`)) order by `qb`.`average_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `above_avg_rb`
--

/*!50001 DROP VIEW IF EXISTS `above_avg_rb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `above_avg_rb` AS select `rb`.`team_name` AS `team_name`,`rb`.`name` AS `name`,`rb`.`average_points` AS `average_points`,`rb`.`total_points` AS `total_points` from `rb` where (`rb`.`total_points` > (select avg(`rb`.`total_points`) AS `avg points` from `rb`)) order by `rb`.`average_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `above_avg_wr`
--

/*!50001 DROP VIEW IF EXISTS `above_avg_wr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `above_avg_wr` AS select `wr`.`team_name` AS `team_name`,`wr`.`name` AS `name`,`wr`.`average_points` AS `average_points`,`wr`.`total_points` AS `total_points` from `wr` where (`wr`.`total_points` > (select avg(`wr`.`total_points`) AS `avg points` from `wr`)) order by `wr`.`average_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `highest_scoring_skilled`
--

/*!50001 DROP VIEW IF EXISTS `highest_scoring_skilled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highest_scoring_skilled` AS select `skilled`.`name` AS `name`,`skilled`.`total_points` AS `total_points` from `skilled` order by `skilled`.`total_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_games_played`
--

/*!50001 DROP VIEW IF EXISTS `most_games_played`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_games_played` AS select `skilled`.`name` AS `name`,`skilled`.`games_played` AS `games_played` from `skilled` order by `skilled`.`games_played` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_rb_carries`
--

/*!50001 DROP VIEW IF EXISTS `most_rb_carries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_rb_carries` AS select `rb`.`team_name` AS `team_name`,`rb`.`name` AS `name`,`rb`.`total_carries` AS `total_carries`,`rb`.`avg_carries` AS `avg_carries` from `rb` order by `rb`.`total_carries` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_receptions_te`
--

/*!50001 DROP VIEW IF EXISTS `most_receptions_te`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_receptions_te` AS select `te`.`team_name` AS `team_name`,`te`.`name` AS `name`,`te`.`receptions` AS `receptions`,`te`.`avg_receptions` AS `avg_receptions`,`te`.`targets` AS `targets` from `te` order by `te`.`receptions` desc,`te`.`targets` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_receptions_wr`
--

/*!50001 DROP VIEW IF EXISTS `most_receptions_wr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_receptions_wr` AS select `wr`.`team_name` AS `team_name`,`wr`.`name` AS `name`,`wr`.`receptions` AS `receptions`,`wr`.`avg_receptions` AS `avg_receptions`,`wr`.`targets` AS `targets` from `wr` order by `wr`.`receptions` desc,`wr`.`targets` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_td_points_gp`
--

/*!50001 DROP VIEW IF EXISTS `most_td_points_gp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_td_points_gp` AS select `skilled`.`name` AS `name`,`skilled`.`games_played` AS `games_played`,`skilled`.`total_TD` AS `total_TD`,`skilled`.`total_points` AS `total_points` from `skilled` order by `skilled`.`total_TD` desc,`skilled`.`total_points` desc,`skilled`.`games_played` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qb_ranking`
--

/*!50001 DROP VIEW IF EXISTS `qb_ranking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qb_ranking` AS select `qb`.`team_name` AS `team_name`,`qb`.`name` AS `name`,`qb`.`average_points` AS `average_points`,`qb`.`total_points` AS `total_points`,`qb`.`total_TD` AS `total_TD`,`qb`.`pass_yards` AS `pass_yards`,`qb`.`rush_yards` AS `rush_yards`,`qb`.`games_played` AS `games_played` from `qb` order by `qb`.`average_points` desc,`qb`.`total_TD` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qb_rankings_yahoo`
--

/*!50001 DROP VIEW IF EXISTS `qb_rankings_yahoo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qb_rankings_yahoo` AS select `qb`.`team_name` AS `team_name`,`qb`.`name` AS `name`,`qb`.`average_points` AS `average_points`,`qb`.`total_points` AS `total_points`,`qb`.`total_TD` AS `total_TD`,`qb`.`pass_yards` AS `pass_yards`,`qb`.`rush_yards` AS `rush_yards`,`qb`.`games_played` AS `games_played` from `qb` order by `qb`.`total_TD` desc,`qb`.`average_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rb_rankings`
--

/*!50001 DROP VIEW IF EXISTS `rb_rankings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rb_rankings` AS select `rb`.`team_name` AS `team_name`,`rb`.`name` AS `name`,`rb`.`average_points` AS `average_points`,`rb`.`total_points` AS `total_points`,`rb`.`total_TD` AS `total_TD`,`rb`.`rush_yards` AS `rush_yards`,`rb`.`total_carries` AS `total_carries`,`rb`.`avg_carries` AS `avg_carries`,`rb`.`receptions` AS `receptions`,`rb`.`avg_receptions` AS `avg_receptions`,`rb`.`games_played` AS `games_played` from `rb` order by `rb`.`average_points` desc,`rb`.`total_TD` desc,`rb`.`total_carries` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skilled_rankings`
--

/*!50001 DROP VIEW IF EXISTS `skilled_rankings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `skilled_rankings` AS select `skilled`.`team_name` AS `team_name`,`skilled`.`name` AS `name`,`skilled`.`average_points` AS `average_points`,`skilled`.`total_points` AS `total_points`,`skilled`.`total_TD` AS `total_TD`,`skilled`.`rec_yards` AS `rec_yards`,`skilled`.`rush_yards` AS `rush_yards`,`skilled`.`games_played` AS `games_played` from `skilled` order by `skilled`.`average_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sos`
--

/*!50001 DROP VIEW IF EXISTS `sos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sos` AS select `teams`.`team_name` AS `team_name`,`teams`.`sos_this_year` AS `sos_this_year`,`teams`.`sos_last_year` AS `sos_last_year` from `teams` order by `teams`.`sos_this_year` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sos_qb`
--

/*!50001 DROP VIEW IF EXISTS `sos_qb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sos_qb` AS select `qb`.`team_id` AS `team_id`,`qb`.`team_name` AS `team_name`,`qb`.`name` AS `name`,`qb`.`average_points` AS `average_points`,`teams`.`sos_this_year` AS `sos_this_year` from (`qb` join `teams` on((`qb`.`team_id` = `teams`.`team_id`))) order by `teams`.`sos_this_year`,`qb`.`average_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sos_rb`
--

/*!50001 DROP VIEW IF EXISTS `sos_rb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sos_rb` AS select `rb`.`team_id` AS `team_id`,`rb`.`team_name` AS `team_name`,`rb`.`name` AS `name`,`rb`.`average_points` AS `average_points`,`teams`.`sos_this_year` AS `sos_this_year` from (`rb` join `teams` on((`rb`.`team_id` = `teams`.`team_id`))) where (`rb`.`average_points` > 13.0) order by `teams`.`sos_this_year`,`rb`.`average_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `te_rankings`
--

/*!50001 DROP VIEW IF EXISTS `te_rankings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `te_rankings` AS select `te`.`team_name` AS `team_name`,`te`.`name` AS `name`,`te`.`average_points` AS `average_points`,`te`.`total_points` AS `total_points`,`te`.`total_TD` AS `total_TD`,`te`.`rec_yards` AS `rec_yards`,`te`.`receptions` AS `receptions`,`te`.`avg_receptions` AS `avg_receptions`,`te`.`games_played` AS `games_played` from `te` order by `te`.`average_points` desc,`te`.`total_TD`,`te`.`receptions` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wr_rankings`
--

/*!50001 DROP VIEW IF EXISTS `wr_rankings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wr_rankings` AS select `wr`.`team_name` AS `team_name`,`wr`.`name` AS `name`,`wr`.`average_points` AS `average_points`,`wr`.`total_points` AS `total_points`,`wr`.`total_TD` AS `total_TD`,`wr`.`rec_yards` AS `rec_yards`,`wr`.`receptions` AS `receptions`,`wr`.`avg_receptions` AS `avg_receptions`,`wr`.`games_played` AS `games_played` from `wr` order by `wr`.`average_points` desc,`wr`.`total_TD`,`wr`.`receptions` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wr_yards`
--

/*!50001 DROP VIEW IF EXISTS `wr_yards`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wr_yards` AS select `wr`.`team_name` AS `team_name`,`wr`.`name` AS `name`,`wr`.`receptions` AS `receptions`,`wr`.`targets` AS `targets`,`wr`.`rec_yards` AS `rec_yards` from `wr` order by `wr`.`rec_yards` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-28  0:57:50
