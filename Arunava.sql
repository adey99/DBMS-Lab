-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: Arunava
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTMENT` (
  `DeptCode` varchar(4) NOT NULL,
  `DeptName` varchar(50) NOT NULL,
  `Student_allotted` int(4) NOT NULL,
  PRIMARY KEY (`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES ('CSE','ComputerScience andEngineering',120),('ECE','ElectronicsandCommEngineering',120),('EE','ElectricalEngineering',60),('IT','InformationTechnology',60);
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESULT`
--

DROP TABLE IF EXISTS `RESULT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESULT` (
  `RollNo` int(6) NOT NULL,
  `Sub_code` varchar(8) NOT NULL,
  `Marks` int(3) DEFAULT NULL,
  `Pass_Marks` int(2) DEFAULT NULL,
  PRIMARY KEY (`RollNo`,`Sub_code`),
  CONSTRAINT `RESULT_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `STUDENT` (`ROLLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESULT`
--

LOCK TABLES `RESULT` WRITE;
/*!40000 ALTER TABLE `RESULT` DISABLE KEYS */;
INSERT INTO `RESULT` VALUES (1001,'CS501',68,40),(1001,'CS502',38,40),(1002,'CS501',76,40),(1002,'CS502',81,40),(1003,'CS501',91,40),(1003,'CS502',82,40),(1023,'CS301',92,40),(1023,'CS302',75,40),(1029,'CS301',83,40),(1029,'CS302',71,40),(1500,'CS301',65,40),(1500,'CS302',35,40),(2001,'ECS501',67,30),(2002,'ECS501',72,30),(2101,'EC501',77,40);
/*!40000 ALTER TABLE `RESULT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STUDENT` (
  `ROLLNO` int(6) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `ADDRESS` varchar(40) NOT NULL,
  `PHONENO` bigint(10) DEFAULT NULL,
  `YEAROFADM` int(4) NOT NULL,
  `DEPTCODE` varchar(4) NOT NULL,
  `SEMESTER` varchar(4) NOT NULL,
  `BIRTHDATE` date DEFAULT NULL,
  PRIMARY KEY (`ROLLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES (1001,'ANKIT DAS','VIP Road, Kolkata',9830675221,2017,'CSE','SEM5','1999-02-10'),(1002,'MOINAK  GHOSH','MG Road, Kolkata',7988822201,2015,'CSE','SEM5','1998-05-01'),(1003,'PARIMAL KUMAR','NSB Road, Birati',8099922211,2016,'CSE','SEM5','2001-03-17'),(1011,'RAHUL KHAN','Jadavpur,Kolkata',NULL,2017,'CSE','SEM5','2001-07-07'),(1023,'SAMPRIKTA BISWAS','Barrackpore',8877565643,2018,'CSE','SEM3','2003-12-13'),(1029,'NAITIK PRASAD','KGR path, Belgharia',NULL,2018,'CSE','SEM3','2003-10-08'),(1060,'SHUBHAM','Sealdah,Kolkata',9833221098,2017,'CSE','SEM3','2003-08-09'),(1101,'AMARITA DEV',' DEVCG Block, Saltlake',NULL,2019,'CSE','SEM1','2004-01-06'),(1500,'SUBARNA MITRA','Gariahat,Kolkata',6987654322,2017,'CSE','SEM3','2003-01-02'),(2001,'SANCHITA SINGH','Tegharia, Kolkata',9999110011,2017,'ECE','SEM5','2000-10-20'),(2002,'ANANYA BISWAS','MG Road, Howrah',7667880010,2017,'ECE','SEM5','2001-11-05'),(2004,'NIKHIL SINGH','Central Howrah',NULL,2016,'ECE','SEM5','1999-06-21'),(2009,'GAURAV PRAKASH','Saltlake',NULL,2018,'ECE','SEM3','2004-04-10'),(2101,'ASHISH KUMAR','Baguiati, Kokata',6544332121,2017,'ECE','SEM5','2001-09-17'),(3002,'SAURAV ROY','Chandannagar',NULL,2017,'EE','SEM5','2000-08-23'),(3005,'MOHAMMAD AZIB','Saltlake',7910000666,2017,'EE','SEM5','2001-05-20'),(3008,'RAHUL JOSHI','AB block Saltlake',9980765123,2018,'EE','SEM3','2003-06-20'),(4011,'SATNAM JYOTI','Garia, Kolkata',8933322125,2018,'IT','SEM3','2002-09-21'),(4200,'MRIGENDRA','Belur,Howrah',NULL,2019,'IT','SEM1','2004-07-01');
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUBJECT`
--

DROP TABLE IF EXISTS `SUBJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUBJECT` (
  `SubjectCode` varchar(6) NOT NULL,
  `SubjectName` varchar(30) NOT NULL,
  `DeptCode` varchar(3) DEFAULT NULL,
  `Semester` varchar(4) NOT NULL,
  PRIMARY KEY (`SubjectCode`),
  KEY `DeptCode` (`DeptCode`),
  CONSTRAINT `SUBJECT_ibfk_1` FOREIGN KEY (`DeptCode`) REFERENCES `DEPARTMENT` (`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUBJECT`
--

LOCK TABLES `SUBJECT` WRITE;
/*!40000 ALTER TABLE `SUBJECT` DISABLE KEYS */;
INSERT INTO `SUBJECT` VALUES ('CS301','Data Structure','CSE','SEM3'),('CS302','Computer Organisation','CSE','SEM3'),('CS501','Discrete Mathematics','CSE','SEM5'),('CS502','Data Communication','CSE','SEM5'),('CS503','Operating Systems','CSE','SEM5'),('EC501','Analog Signals','ECE','SEM5'),('ECS501','Data Base systems','ECE','SEM5');
/*!40000 ALTER TABLE `SUBJECT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-04 19:30:24
