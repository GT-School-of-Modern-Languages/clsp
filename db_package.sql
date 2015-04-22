-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: ???
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `Admin_Edit`
--

DROP TABLE IF EXISTS `Admin_Edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admin_Edit` (
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin_Edit`
--

LOCK TABLES `Admin_Edit` WRITE;
/*!40000 ALTER TABLE `Admin_Edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Admin_Edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_Color`
--

DROP TABLE IF EXISTS `ML_Color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_Color` (
  `color1` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `color2` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `color3` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `color4` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_Color`
--

LOCK TABLES `ML_Color` WRITE;
/*!40000 ALTER TABLE `ML_Color` DISABLE KEYS */;
INSERT INTO `ML_Color` VALUES ('FFFF61','8CC2FF','E8FFE9','CCCCCC',1);
/*!40000 ALTER TABLE `ML_Color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_Course`
--

DROP TABLE IF EXISTS `ML_Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_Course` (
  `CID` int(5) NOT NULL AUTO_INCREMENT,
  `COURSE_TITLE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CID`),
  UNIQUE KEY `CID` (`CID`,`COURSE_TITLE`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_Course`
--

LOCK TABLES `ML_Course` WRITE;
/*!40000 ALTER TABLE `ML_Course` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_CourseAccess`
--

DROP TABLE IF EXISTS `ML_CourseAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_CourseAccess` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `CPID` int(5) NOT NULL,
  `CID` int(5) NOT NULL,
  `DATE_START` date NOT NULL,
  `DATE_END` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_CourseAccess`
--

LOCK TABLES `ML_CourseAccess` WRITE;
/*!40000 ALTER TABLE `ML_CourseAccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_CourseAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_CourseActivation`
--

DROP TABLE IF EXISTS `ML_CourseActivation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_CourseActivation` (
  `CID` int(5) NOT NULL,
  `ACTIVATION` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  PRIMARY KEY (`CID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_CourseActivation`
--

LOCK TABLES `ML_CourseActivation` WRITE;
/*!40000 ALTER TABLE `ML_CourseActivation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_CourseActivation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_CoursePWD`
--

DROP TABLE IF EXISTS `ML_CoursePWD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_CoursePWD` (
  `ACID` int(5) NOT NULL AUTO_INCREMENT,
  `ACC_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACC_EMAIL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ACC_PWD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ACCESS_START` date NOT NULL,
  `ACCESS_END` date NOT NULL,
  PRIMARY KEY (`ACID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_CoursePWD`
--

LOCK TABLES `ML_CoursePWD` WRITE;
/*!40000 ALTER TABLE `ML_CoursePWD` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_CoursePWD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_CourseUnit`
--

DROP TABLE IF EXISTS `ML_CourseUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_CourseUnit` (
  `CUID` int(5) NOT NULL AUTO_INCREMENT,
  `CID` int(5) NOT NULL,
  `UNIT_ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CUID`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_CourseUnit`
--

LOCK TABLES `ML_CourseUnit` WRITE;
/*!40000 ALTER TABLE `ML_CourseUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_CourseUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_FeedbackEM`
--

DROP TABLE IF EXISTS `ML_FeedbackEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_FeedbackEM` (
  `Email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `LANGUAGE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LANGUAGE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_FeedbackEM`
--

LOCK TABLES `ML_FeedbackEM` WRITE;
/*!40000 ALTER TABLE `ML_FeedbackEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_FeedbackEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_Heading`
--

DROP TABLE IF EXISTS `ML_Heading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_Heading` (
  `HID` int(4) NOT NULL AUTO_INCREMENT,
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HEADING` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `H_ORDER` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`HID`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_Heading`
--

LOCK TABLES `ML_Heading` WRITE;
/*!40000 ALTER TABLE `ML_Heading` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_Heading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_HeadingDW`
--

DROP TABLE IF EXISTS `ML_HeadingDW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_HeadingDW` (
  `HID` int(3) NOT NULL,
  `WID` int(3) NOT NULL,
  UNIQUE KEY `SID` (`WID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_HeadingDW`
--

LOCK TABLES `ML_HeadingDW` WRITE;
/*!40000 ALTER TABLE `ML_HeadingDW` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_HeadingDW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_HeadingGE`
--

DROP TABLE IF EXISTS `ML_HeadingGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_HeadingGE` (
  `HID` int(3) NOT NULL,
  `GID` int(3) NOT NULL,
  UNIQUE KEY `SID` (`GID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_HeadingGE`
--

LOCK TABLES `ML_HeadingGE` WRITE;
/*!40000 ALTER TABLE `ML_HeadingGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_HeadingGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_HeadingLT`
--

DROP TABLE IF EXISTS `ML_HeadingLT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_HeadingLT` (
  `HID` int(3) NOT NULL,
  `LID` int(3) NOT NULL,
  UNIQUE KEY `SID` (`LID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_HeadingLT`
--

LOCK TABLES `ML_HeadingLT` WRITE;
/*!40000 ALTER TABLE `ML_HeadingLT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_HeadingLT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_HeadingQU`
--

DROP TABLE IF EXISTS `ML_HeadingQU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_HeadingQU` (
  `HID` int(4) NOT NULL,
  `QID` int(4) NOT NULL,
  PRIMARY KEY (`QID`),
  UNIQUE KEY `HID` (`HID`,`QID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_HeadingQU`
--

LOCK TABLES `ML_HeadingQU` WRITE;
/*!40000 ALTER TABLE `ML_HeadingQU` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_HeadingQU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_LTPWD`
--

DROP TABLE IF EXISTS `ML_LTPWD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_LTPWD` (
  `PWDID` int(3) NOT NULL AUTO_INCREMENT,
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PWD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PWDID`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_LTPWD`
--

LOCK TABLES `ML_LTPWD` WRITE;
/*!40000 ALTER TABLE `ML_LTPWD` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_LTPWD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_Lang`
--

DROP TABLE IF EXISTS `ML_Lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_Lang` (
  `LANGUAGE` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `LID` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `ML_Lang_PK` (`LID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_Lang`
--

LOCK TABLES `ML_Lang` WRITE;
/*!40000 ALTER TABLE `ML_Lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_Lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_Module`
--

DROP TABLE IF EXISTS `ML_Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_Module` (
  `MODUEL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MOD_INDEX` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MOD_PAGE` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MODUEL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_Module`
--

LOCK TABLES `ML_Module` WRITE;
/*!40000 ALTER TABLE `ML_Module` DISABLE KEYS */;
INSERT INTO `ML_Module` VALUES ('Listening Task','1','tasks.php'),('Culture Notes','2','notes.php'),('Grammar Exercise','4','grammar.php'),('Questions for Understanding','3','understanding.php'),('Discussion and Writing','5',' writing.php'),('Listening Suggestion','6','suggestion.php');
/*!40000 ALTER TABLE `ML_Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_ModuleCN`
--

DROP TABLE IF EXISTS `ML_ModuleCN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_ModuleCN` (
  `SID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `WHOLELINE` varchar(240) COLLATE utf8_unicode_ci NOT NULL,
  `NID` int(5) NOT NULL AUTO_INCREMENT,
  `CHK_LINK` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CHK_DOC` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CHK_IMG` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CHK_CONT` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `LINK` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `ATTA_IMG` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '/',
  `IMG_SIZE` int(5) NOT NULL DEFAULT '0',
  `IMG_MIME` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `ATTA_DOC` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '/',
  `DOC_SIZE` int(5) NOT NULL DEFAULT '0',
  `DOC_MIME` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`NID`)
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_ModuleCN`
--

LOCK TABLES `ML_ModuleCN` WRITE;
/*!40000 ALTER TABLE `ML_ModuleCN` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_ModuleCN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_ModuleDW`
--

DROP TABLE IF EXISTS `ML_ModuleDW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_ModuleDW` (
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `WID` int(3) NOT NULL AUTO_INCREMENT,
  `W_CONTENT` blob NOT NULL,
  `W_ORDER` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`WID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_ModuleDW`
--

LOCK TABLES `ML_ModuleDW` WRITE;
/*!40000 ALTER TABLE `ML_ModuleDW` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_ModuleDW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_ModuleGE`
--

DROP TABLE IF EXISTS `ML_ModuleGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_ModuleGE` (
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `GID` int(3) NOT NULL AUTO_INCREMENT,
  `G_CONTENT` blob NOT NULL,
  `G_TYPES` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `G_OPTION` blob NOT NULL,
  `G_ORDER` int(2) NOT NULL DEFAULT '0',
  `ANS` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `FEEDBACK` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`GID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_ModuleGE`
--

LOCK TABLES `ML_ModuleGE` WRITE;
/*!40000 ALTER TABLE `ML_ModuleGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_ModuleGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_ModuleLS`
--

DROP TABLE IF EXISTS `ML_ModuleLS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_ModuleLS` (
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `S_CONTENT` blob NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_ModuleLS`
--

LOCK TABLES `ML_ModuleLS` WRITE;
/*!40000 ALTER TABLE `ML_ModuleLS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_ModuleLS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_ModuleLT`
--

DROP TABLE IF EXISTS `ML_ModuleLT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_ModuleLT` (
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `LID` int(3) NOT NULL AUTO_INCREMENT,
  `L_CONTENT` blob NOT NULL,
  `L_TYPES` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `L_OPTION` blob NOT NULL,
  `L_ORDER` int(2) NOT NULL DEFAULT '0',
  `ANS` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `FEEDBACK` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_ModuleLT`
--

LOCK TABLES `ML_ModuleLT` WRITE;
/*!40000 ALTER TABLE `ML_ModuleLT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_ModuleLT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_ModuleQU`
--

DROP TABLE IF EXISTS `ML_ModuleQU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_ModuleQU` (
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `QID` int(5) NOT NULL AUTO_INCREMENT,
  `Q_CONTENT` blob NOT NULL,
  `Q_TYPES` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `Q_OPTION` blob NOT NULL,
  `Q_ORDER` int(2) NOT NULL DEFAULT '0',
  `ANS` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `FEEDBACK` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`QID`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_ModuleQU`
--

LOCK TABLES `ML_ModuleQU` WRITE;
/*!40000 ALTER TABLE `ML_ModuleQU` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_ModuleQU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_ModuleTitle`
--

DROP TABLE IF EXISTS `ML_ModuleTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_ModuleTitle` (
  `LID` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_N` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `MODULE_Q` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `MODULE_L` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `MODULE_G` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `MODULE_W` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `MODULE_S` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`LID`,`CID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_ModuleTitle`
--

LOCK TABLES `ML_ModuleTitle` WRITE;
/*!40000 ALTER TABLE `ML_ModuleTitle` DISABLE KEYS */;
INSERT INTO `ML_ModuleTitle` VALUES ('ENG','','Culture Notes','Questions for Understanding','Listening Tasks','Grammar','Discussion and Writing','Suggestions for Further Listening');
/*!40000 ALTER TABLE `ML_ModuleTitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_Song`
--

DROP TABLE IF EXISTS `ML_Song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_Song` (
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UID_00 (e.g: RUS_01_99)',
  `SONG_TITLE` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ALBUM` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ARTIST` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SONG_OVERVIEW` blob NOT NULL,
  `LYRICS` blob NOT NULL,
  `FILE_NAME` varchar(64) COLLATE utf8_unicode_ci DEFAULT '/',
  `W_PRAAT` char(2) COLLATE utf8_unicode_ci DEFAULT '-',
  `W_AUDIO` char(2) COLLATE utf8_unicode_ci DEFAULT '-',
  `W_VEDIO` char(2) COLLATE utf8_unicode_ci DEFAULT '-',
  `W_OTHER` char(2) COLLATE utf8_unicode_ci DEFAULT '-' COMMENT 'check:y',
  UNIQUE KEY `SID` (`SID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_Song`
--

LOCK TABLES `ML_Song` WRITE;
/*!40000 ALTER TABLE `ML_Song` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_Song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_SongDetail`
--

DROP TABLE IF EXISTS `ML_SongDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_SongDetail` (
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FID` int(4) NOT NULL AUTO_INCREMENT,
  `FILE_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(50) NOT NULL DEFAULT '0',
  `MIME_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_SongDetail`
--

LOCK TABLES `ML_SongDetail` WRITE;
/*!40000 ALTER TABLE `ML_SongDetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_SongDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_SongEmbed`
--

DROP TABLE IF EXISTS `ML_SongEmbed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_SongEmbed` (
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `EID` int(4) NOT NULL AUTO_INCREMENT,
  `EMCODE` blob NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_SongEmbed`
--

LOCK TABLES `ML_SongEmbed` WRITE;
/*!40000 ALTER TABLE `ML_SongEmbed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_SongEmbed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_UI`
--

DROP TABLE IF EXISTS `ML_UI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_UI` (
  `NAME` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TEXT` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LANGUAGE` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_UI`
--

LOCK TABLES `ML_UI` WRITE;
/*!40000 ALTER TABLE `ML_UI` DISABLE KEYS */;
INSERT INTO `ML_UI` VALUES ('MAIN_TITLE','Title needs to be Changed','NULL'),('INTRO_CONTENTS','Content needs to be changed','NULL'),('UI_LOCATION','/UI/','NULL'),('DB_LOCATION','/DB/','NULL');
/*!40000 ALTER TABLE `ML_UI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_Unit`
--

DROP TABLE IF EXISTS `ML_Unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_Unit` (
  `UNIT_ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UNIT_TITLE` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UNIT_INTRO` blob NOT NULL,
  `UNIT_ORDER` int(3) NOT NULL,
  UNIQUE KEY `UNIT_ID` (`UNIT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_Unit`
--

LOCK TABLES `ML_Unit` WRITE;
/*!40000 ALTER TABLE `ML_Unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_Unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ML_UnitAccess`
--

DROP TABLE IF EXISTS `ML_UnitAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ML_UnitAccess` (
  `UPID` int(5) NOT NULL AUTO_INCREMENT,
  `UNIT_ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_START` date NOT NULL,
  `DATE_END` date NOT NULL,
  PRIMARY KEY (`UPID`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ML_UnitAccess`
--

LOCK TABLES `ML_UnitAccess` WRITE;
/*!40000 ALTER TABLE `ML_UnitAccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `ML_UnitAccess` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-04 12:29:56
