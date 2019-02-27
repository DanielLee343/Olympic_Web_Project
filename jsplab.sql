-- MySQL dump 10.13  Distrib 5.6.39, for Win64 (x86_64)
--
-- Host: localhost    Database: jsplab
-- ------------------------------------------------------
-- Server version	5.6.39

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
-- Table structure for table `admin`
--

create database jsplab;
use jsplab;
DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('d','d');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delegation`
--

DROP TABLE IF EXISTS `delegation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delegation` (
  `did` int(11) NOT NULL,
  `dname` varchar(45) DEFAULT NULL,
  `dflag1` varchar(100) DEFAULT NULL,
  `dflag2` varchar(100) DEFAULT NULL,
  `dintro` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delegation`
--

LOCK TABLES `delegation` WRITE;
/*!40000 ALTER TABLE `delegation` DISABLE KEYS */;
INSERT INTO `delegation` VALUES (1,'China','img/China3D.png',NULL,'Entry 31 projects 150 athletes'),(2,'U.S.A.','img/USA3D.png',NULL,'Entry 28 projects 120 athletes'),(3,'U.K.','img/UK3D.png',NULL,'Entry 31 projects 150 athletes'),(4,'Japan','img/Japan3D.png',NULL,'Entry 20 projects 130 athletes'),(5,'Italy','img/Italy3D.png',NULL,'Entry 18 projects 100 athletes'),(6,'Germany','img/Germany3D.png',NULL,'Entry 15 projects 90 athletes'),(7,'France','img/France3D.png',NULL,'Entry 30 projects 160 athletes'),(8,'Russia','img/Russia3D.png',NULL,'Entry 31 projects 150 athletes'),(9,'Empty',NULL,NULL,NULL);
/*!40000 ALTER TABLE `delegation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `igame`
--

DROP TABLE IF EXISTS `igame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igame` (
  `igid` int(11) NOT NULL,
  `state` varchar(45) DEFAULT NULL,
  `iid1` int(3) DEFAULT NULL COMMENT 'iid1',
  `iid2` int(3) DEFAULT NULL COMMENT 'iid2',
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `gtime` date DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`igid`),
  KEY `iid1` (`iid1`),
  KEY `iid2` (`iid2`),
  CONSTRAINT `igame_ibfk_1` FOREIGN KEY (`iid1`) REFERENCES `iplayer` (`iid`),
  CONSTRAINT `igame_ibfk_2` FOREIGN KEY (`iid2`) REFERENCES `iplayer` (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `igame`
--

LOCK TABLES `igame` WRITE;
/*!40000 ALTER TABLE `igame` DISABLE KEYS */;
INSERT INTO `igame` VALUES (1,'finished',2,4,11,8,'2018-08-12','Osaka'),(2,'finished',6,8,11,7,'2018-08-14','Osaka'),(3,'finished',10,12,5,11,'2018-08-15','Osaka'),(4,'finished',14,16,13,15,'2018-08-17','Nara'),(5,'finished',2,6,18,16,'2018-08-18','Nara'),(6,'finished',12,16,11,8,'2018-08-19','Nara'),(7,'finished',6,16,12,14,'2018-08-20','Nagoya'),(8,'finished',2,12,15,13,'2018-08-21','Nagoya'),(9,'finished',1,5,21,11,'2018-08-12','Osaka'),(10,'finished',7,3,21,3,'2018-08-14','Osaka'),(11,'finished',9,11,13,21,'2018-08-15','Osaka'),(12,'finished',15,13,24,26,'2018-08-17','Nara'),(13,'finished',1,7,28,26,'2018-08-18','Nara'),(14,'finished',11,13,23,21,'2018-08-19','Nara'),(15,'finished',7,13,21,23,'2018-08-20','Nagoya'),(16,'finished',1,11,21,1,'2018-08-21','Nagoya');
/*!40000 ALTER TABLE `igame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iplayer`
--

DROP TABLE IF EXISTS `iplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iplayer` (
  `iid` int(11) NOT NULL,
  `iname` varchar(45) NOT NULL,
  `iimg` varchar(100) NOT NULL,
  `did` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `record` varchar(2000) NOT NULL,
  PRIMARY KEY (`iid`),
  KEY `did` (`did`),
  CONSTRAINT `iplayer_ibfk_1` FOREIGN KEY (`did`) REFERENCES `delegation` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iplayer`
--

LOCK TABLES `iplayer` WRITE;
/*!40000 ALTER TABLE `iplayer` DISABLE KEYS */;
INSERT INTO `iplayer` VALUES (1,'Lin Dan','img/lindan.jpg',1,32,'Lin Dan, Han nationality, was born in Linjiang Town, Shanghang County, Longyan City, Fujian Province on October 14, 1983. Chinese badminton men\'s singles athlete. The 2008 Beijing Olympic Games, the 2012 London Olympics badminton men\'s singles champion. In the history of badminton, it was the first two-lap Grand Slam player to gather in the Olympic Games, World Championships, World Cup, Asian Games, Asian Championships, All England Championship, National Games and several BWF Super Series Championships. It is known as one of China\'s badminton players and one of the four kings of badminton in the world.'),(2,'Xu xin','img/xuxin.jpg',1,32,'In 2004, Xu Xin won the championship of men\'s League, men\'s singles and men\'s doubles at the world junior challenge. In 2006, the national team was selected. In 2009, Wang Liqin won the men\'s double championship at the National Games. In 2010, the Asian Games in Guangzhou won the mixed doubles, the men\'s champion and the men\'s double runner up. In 2011, we won the men\'s double Championships in the World Table Tennis Championships in Rotterdam. In 2012, Xu Xin won the men\'s single champion in the International Table Tennis Federation\'s professional tour final, and defeated Malone by 4-3 in the finals of the next year\'s finals, and became the second defending champion of the finals after Malone. In 2013, he won the men\'s singles championship in the world cup of table tennis and became the first left-handed athlete to win the world championship in men\'s singles in China. In 2014, Xu Xin won the men\'s singles, the men\'s team champion and the men\'s double runner up in the Inchon Asian Games. In 2015, he won the mixed doubles and men\'s doubles in the World Table Tennis Championships in Suzhou. In October, Xu Xin won three championships in men\'s League, men\'s singles and men\'s doubles. In 2016, he won the Olympic Games table tennis men\'s League Championship in Rio. In 2017 Dusseldorf World Table Tennis Championships, won the men\'s doubles champion and men\'s singles second runner up. In September 2017, led the Shanghai team to win the national table tennis team.'),(3,'Michael Phelps','img/feierpusi.jpg',2,34,'In 2000, Phelps, 15, took part in the Sydney Olympic Games and won the fifth place in the 200 meter butterfly stroke. In 2001, Phelps, 16, broke the world record for the 200 meter butterfly. He won 6 medals during the 2003 World Swimming Championships in Barcelona. In the 2004 Athens Olympics, Phelps won the men\'s 200 meter and 400 meter individual medley, 100 meter, 200 meter butterfly, 4 x 200 meter freestyle relay and 4 x 100 meter medley relay, as well as 200 meter freestyle and 4 100 free swimming relay 2 bronze medals. In the 2008 Beijing Olympic Games, Phelps won 8 gold medals and became the most gold medals in the single Olympic Games. In July 27, 2011, Phelps won the 200 meter butterfly champion of the Shanghai World Championships. He won four gold medals in the 2012 London Olympic Games. So far, he has won 22 Olympic medals, including 18 gold medals. He has won the most medals and gold medals in Olympic history. In August 4, 2012, Phelps announced his retirement after the swimming events in London Olympic Games. In April 15, 2014, Phelps announced a formal return'),(4,'William','img/Neuer.jpg',2,30,'In 2000, Phelps, 15, took part in the Sydney Olympic Games and won the fifth place in the 200 meter butterfly stroke. In 2001, Phelps, 16, broke the world record for the 200 meter butterfly. He won 6 medals during the 2003 World Swimming Championships in Barcelona. In the 2004 Athens Olympics, Phelps won the men\'s 200 meter and 400 meter individual medley, 100 meter, 200 meter butterfly, 4 x 200 meter freestyle relay and 4 x 100 meter medley relay, as well as 200 meter freestyle and 4 100 free swimming relay 2 bronze medals. In the 2008 Beijing Olympic Games, Phelps won 8 gold medals and became the most gold medals in the single Olympic Games. In July 27, 2011, Phelps won the 200 meter butterfly champion of the Shanghai World Championships. He won four gold medals in the 2012 London Olympic Games. So far, he has won 22 Olympic medals, including 18 gold medals. He has won the most medals and gold medals in Olympic history. In August 4, 2012, Phelps announced his retirement after the swimming events in London Olympic Games. In April 15, 2014, Phelps announced a formal return'),(5,'Andy Murray','img/murray.jpg',3,31,'In 2012, the London Olympic men\'s singles final defeated Federer in the three set to become the first gold medalist of the first Olympic Tennis Singles in the United Kingdom for 104 years. In the same year, he won the US Open in the United States and became the first British player to win the Grand Slam men\'s single champion in the 76 years since 1936. In 2013, in the Wimbledon Tennis Open final, 3:0 reek Djokovic became the first British local player to win the Wimbledon after Fred Perry won the championship in 1936.\n\nIn the men\'s singles final in the Wimbledon Championships in July 10, 2016, Murray defeated Rao Niki in the three set and won the second Wimbledon Championships in his career, and was also a third Grand Slam trophy.\n\nIn August 5, 2016, he was the flag bearer of the Rio De Janeiro Olympic Games in 2016. In August 15th, in the Rio Olympic Tennis Men\'s singles final, Murray defeated Del Botero and successfully defended. In November 7th, Murray first came to the top of the men\'s singles world. In November 21st, Murray defeated Djokovic for 6-3 and 6-4, and won the championship for the first time in the year finals, and became the number one in the world in 2016.'),(6,'Murey','img/murey.jpg',3,34,'In 2012, the London Olympic men\'s singles final defeated Federer in the three set to become the first gold medalist of the first Olympic Tennis Singles in the United Kingdom for 104 years. In the same year, he won the US Open in the United States and became the first British player to win the Grand Slam men\'s single champion in the 76 years since 1936. In 2013, in the Wimbledon Tennis Open final, 3:0 reek Djokovic became the first British local player to win the Wimbledon after Fred Perry won the championship in 1936.\n\nIn the men\'s singles final in the Wimbledon Championships in July 10, 2016, Murray defeated Rao Niki in the three set and won the second Wimbledon Championships in his career, and was also a third Grand Slam trophy.\n\nIn August 5, 2016, he was the flag bearer of the Rio De Janeiro Olympic Games in 2016. In August 15th, in the Rio Olympic Tennis Men\'s singles final, Murray defeated Del Botero and successfully defended. In November 7th, Murray first came to the top of the men\'s singles world. In November 21st, Murray defeated Djokovic for 6-3 and 6-4, and won the championship for the first time in the year finals, and became the number one in the world in 2016.'),(7,'Fukuhara Ai','img/fuyuanai.jpg',4,37,'Ai Fukuhara was born in November 1, 1988 in Sendai, Miyagi Prefecture, Japan, and is a table tennis player in Japan.\n\nIn 2000, it became the youngest member of the Japanese national team in history. In 2004, the Athens Olympic Games were the youngest athletes to participate in the Olympic Games in Japanese history. He took part in the ITTF Austria open in October 2007 and won the doubles championship with Hirano Hayaka. In 2011, Ai Fukuhara joined Guangdong women\'s table tennis to participate in the 2011 season China Table Tennis Super League. In 2012, she took part in the London Olympic Games and won the runner up of the women\'s table tennis team. In 2016, she participated in the fifty-third world table tennis team competition and won the runner up of women\'s table tennis team. In August 11, 2016, she won fourth Olympic table tennis women\'s singles in Rio. The wedding ceremony was held in Taipei in January 1, 2017.'),(8,'Futian xiong','img/futian.jpg',4,35,'Ai Fukuhara was born in November 1, 1988 in Sendai, Miyagi Prefecture, Japan, and is a table tennis player in Japan.\n\nIn 2000, it became the youngest member of the Japanese national team in history. In 2004, the Athens Olympic Games were the youngest athletes to participate in the Olympic Games in Japanese history. He took part in the ITTF Austria open in October 2007 and won the doubles championship with Hirano Hayaka. In 2011, Ai Fukuhara joined Guangdong women\'s table tennis to participate in the 2011 season China Table Tennis Super League. In 2012, she took part in the London Olympic Games and won the runner up of the women\'s table tennis team. In 2016, she participated in the fifty-third world table tennis team competition and won the runner up of women\'s table tennis team. In August 11, 2016, she won fourth Olympic table tennis women\'s singles in Rio. The wedding ceremony was held in Taipei in January 1, 2017.'),(9,'Federica Pelle','img/tiger.jpg',5,24,'Pellegrini, who just turned 20, has become one of the world\'s leading women\'s swimmers. At the 2004 Athens Olympics, Pellegrini, who was only 16 years old, had a silver medal in the 200-meter freestyle. Since then, Pellegrini has often been seen on the podium of the freestyle project. 2005 World Championship 200 meters freestyle runner-up, 2007 World Championships in the third place 200 meters freestyle, this year\'s European Championships, she broke the 400 meters freestyle world record with 4 minutes 01 seconds 53, and won the championship.'),(10,'Phoenix','img/tiger.jpg',5,25,'Pellegrini, who just turned 20, has become one of the world\'s leading women\'s swimmers. At the 2004 Athens Olympics, Pellegrini, who was only 16 years old, had a silver medal in the 200-meter freestyle. Since then, Pellegrini has often been seen on the podium of the freestyle project. 2005 World Championship 200 meters freestyle runner-up, 2007 World Championships in the third place 200 meters freestyle, this year\'s European Championships, she broke the 400 meters freestyle world record with 4 minutes 01 seconds 53, and won the championship.'),(11,'Timo Boll','img/boer.jpg',6,40,'Tim Pohl (English: Timo Boll, March 8, 1981 -), a famous table tennis player in Germany. He started playing at 4, 1997 and 1998, the European Youth Championships Men\'s singles, and in 2002, Boer defeated Wang Liqin and Kong Linghui to win the World Cup Men\'s singles championship. In January 2003, he boarded the top ranking of men\'s table tennis players. The 2005 World Cup Men\'s singles champion, the 2008 Belgium Liege World Cup runner up, the 2008 Beijing Olympic Games, Bohr led the German team to the second army, and the Liverpool World Cup Men\'s single runner up in 2012. On behalf of the German team many times to win the world table tennis team final, Bohr is considered to be Waldner\'s successor.\n\nIn August 6, 2016, the Rio Olympic Games served as the flag bearer of the German delegation. In August 18, 2016, the Rio Olympic table tennis men\'s team, Germany, won the bronze medal. 2017 table tennis men\'s World Cup Men\'s single runner up. In December 2017, he won the 2017 International Table Tennis Federation \"the best male athlete of the year\".'),(12,'Maxkim','img/boer.jpg',6,42,'Tim Pohl (English: Timo Boll, March 8, 1981 -), a famous table tennis player in Germany. He started playing at 4, 1997 and 1998, the European Youth Championships Men\'s singles, and in 2002, Boer defeated Wang Liqin and Kong Linghui to win the World Cup Men\'s singles championship. In January 2003, he boarded the top ranking of men\'s table tennis players. The 2005 World Cup Men\'s singles champion, the 2008 Belgium Liege World Cup runner up, the 2008 Beijing Olympic Games, Bohr led the German team to the second army, and the Liverpool World Cup Men\'s single runner up in 2012. On behalf of the German team many times to win the world table tennis team final, Bohr is considered to be Waldner\'s successor.\n\nIn August 6, 2016, the Rio Olympic Games served as the flag bearer of the German delegation. In August 18, 2016, the Rio Olympic table tennis men\'s team, Germany, won the bronze medal. 2017 table tennis men\'s World Cup Men\'s single runner up. In December 2017, he won the 2017 International Table Tennis Federation \"the best male athlete of the year\".'),(13,'Yannick  Noah','img/simon.jpg',7,50,'Yannick Simon Camille Noah, a famous French tennis player of Cameroonian origin, a pop musician, and a member of the World Tennis Hall of Fame.'),(14,'Johnson','img/simon.jpg',7,54,'Yannick Simon Camille Noah, a famous French tennis player of Cameroonian origin, a pop musician, and a member of the World Tennis Hall of Fame.'),(15,'Maria Sharapova','img/shalabowa.jpg',8,25,'In 2004, Sharapova swept Serena Williams in the Wimbledon final and won the first Grand Slam title of his career. In August 22, 2005, ranked 4452 in the world for the first time in WTA. In September 10, 2006, he won the second grand slam in Haining in the women\'s singles final of the US Open. In 2008, Ivanovic won the third Grand Slam in the Australian Open final.\n\nIn 2012, the final of the French Open final was shot down to finish the career Grand Slam (fourth Grand Slam). In June 7, 2014, he defeated his opponent, Romania, and won second French Open titles (fifth Grand Slam). In July 9, 2015, in the Wimbledon women\'s singles semifinal, he lost to Serena Williams. In September 15, 2015, it returned to the central network. In June 8, 2016, the International Tennis Federation announced its punishment for Sharapova\'s use of banned drugs, which has been banned for two years since January 26, 2016.\n\nIn 2006, Sharapova was chosen as \"the most beautiful athlete\" by the American sports illustrated. In August 13, 2014, Forbes magazine released the ranking of the top ranked female athletes in 2013-2014, and Sharapova took the lead in ten consecutive years.'),(16,'Andrew','img/shalabowa.jpg',8,19,'In 2004, Sharapova swept Serena Williams in the Wimbledon final and won the first Grand Slam title of his career. In August 22, 2005, ranked 4452 in the world for the first time in WTA. In September 10, 2006, he won the second grand slam in Haining in the women\'s singles final of the US Open. In 2008, Ivanovic won the third Grand Slam in the Australian Open final.\n\nIn 2012, the final of the French Open final was shot down to finish the career Grand Slam (fourth Grand Slam). In June 7, 2014, he defeated his opponent, Romania, and won second French Open titles (fifth Grand Slam). In July 9, 2015, in the Wimbledon women\'s singles semifinal, he lost to Serena Williams. In September 15, 2015, it returned to the central network. In June 8, 2016, the International Tennis Federation announced its punishment for Sharapova\'s use of banned drugs, which has been banned for two years since January 26, 2016.\n\nIn 2006, Sharapova was chosen as \"the most beautiful athlete\" by the American sports illustrated. In August 13, 2014, Forbes magazine released the ranking of the top ranked female athletes in 2013-2014, and Sharapova took the lead in ten consecutive years.');
/*!40000 ALTER TABLE `iplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sportsmedal`
--

DROP TABLE IF EXISTS `sportsmedal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sportsmedal` (
  `sid` int(3) NOT NULL,
  `sport` varchar(20) NOT NULL,
  `golddid` int(3) DEFAULT NULL,
  `silverdid` int(3) DEFAULT NULL,
  `bronzedid` int(3) DEFAULT NULL,
  `goldpart` varchar(30) DEFAULT NULL,
  `silverpart` varchar(30) DEFAULT NULL,
  `bronzepart` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sportsmedal`
--

LOCK TABLES `sportsmedal` WRITE;
/*!40000 ALTER TABLE `sportsmedal` DISABLE KEYS */;
INSERT INTO `sportsmedal` VALUES (0,'soccer',4,7,1,'Japan Football Team','France Football Team','China Football Team'),(1,'basketball',9,9,9,NULL,NULL,NULL),(2,'tabletennis',1,6,8,'Xu xin','Maxkim','Andrew'),(3,'badminton',1,6,7,'Lin Dan','Timo Boll','Yannick  Noah');
/*!40000 ALTER TABLE `sportsmedal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `teid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `tname` varchar(45) NOT NULL,
  `tflag` varchar(20) NOT NULL,
  `timg1` varchar(45) NOT NULL,
  `timg2` varchar(45) DEFAULT NULL,
  `tintro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teid`),
  KEY `did` (`did`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`did`) REFERENCES `delegation` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,1,'China Football Team','img/icon-china.png','img/CFT.jpg','img/CFT2.jpg','The Chinese national football team was founde'),(2,1,'China Basketball Team','img/icon-china.png','img/CBT.jpg','img/CBT2.jpg','The Chinese national basketball team includes'),(3,2,'USA Football Team','img/icon-USA.png','img/GFT.jpg','img/GFT2.jpg','The German national men\'s soccer team is unde'),(4,2,'USA Basketball Team','img/icon-USA.png','img/USABT.jpg','img/USABT2.jpg','The American National Men\'s Basketball Team w'),(5,3,'UK Football Team','img/icon-UK.png','img/CFT.jpg','img/CFT2.jpg','The Chinese national football team was founde'),(6,3,'UK Basketball Team','img/icon-UK.png','img/CBT.jpg','img/CBT2.jpg','The Chinese national basketball team includes'),(7,4,'Japan Football Team','img/icon-japan.png','img/GFT.jpg','img/GFT2.jpg','The German national men\'s soccer team is unde'),(8,4,'Japan Basketball Team','img/icon-japan.png','img/USABT.jpg','img/USABT2.jpg','The American National Men\'s Basketball Team w'),(9,5,'Itatly Football Team','img/icon-italy.png','img/CFT.jpg','img/CFT2.jpg','The Chinese national football team was founde'),(10,5,'Itatly Basketball Team','img/icon-italy.png','img/CBT.jpg','img/CBT2.jpg','The Chinese national basketball team includes'),(11,6,'Germany Football Team','img/icon-germany.png','img/GFT.jpg','img/GFT2.jpg','The German national men\'s soccer team is unde'),(12,6,'Germany Basketball Team','img/icon-germany.png','img/USABT.jpg','img/USABT2.jpg','The American National Men\'s Basketball Team w'),(13,7,'France Football Team','img/icon-france.png','img/CFT.jpg','img/CFT2.jpg','The Chinese national football team was founde'),(14,7,'France Basketball Team','img/icon-france.png','img/CBT.jpg','img/CBT2.jpg','The Chinese national basketball team includes'),(15,8,'Russia Football Team','img/icon-russia.png','img/GFT.jpg','img/GFT2.jpg','The German national men\'s soccer team is unde'),(16,8,'Russia Basketball Team','img/icon-russia.png','img/USABT.jpg','img/USABT2.jpg','The American National Men\'s Basketball Team w');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tgame`
--

DROP TABLE IF EXISTS `tgame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tgame` (
  `tgid` int(11) NOT NULL,
  `state` varchar(45) DEFAULT NULL,
  `teid1` int(11) DEFAULT NULL,
  `teid2` int(11) DEFAULT NULL,
  `score1` int(11) DEFAULT '0',
  `score2` int(11) DEFAULT '0',
  `gtime` date DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tgid`),
  KEY `teid1` (`teid1`),
  KEY `teid2` (`teid2`),
  CONSTRAINT `tgame_ibfk_1` FOREIGN KEY (`teid1`) REFERENCES `team` (`teid`),
  CONSTRAINT `tgame_ibfk_2` FOREIGN KEY (`teid2`) REFERENCES `team` (`teid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tgame`
--

LOCK TABLES `tgame` WRITE;
/*!40000 ALTER TABLE `tgame` DISABLE KEYS */;
INSERT INTO `tgame` VALUES (1,'finished',1,3,3,1,'2018-08-08','Tokyo'),(2,'finished',5,7,1,2,'2018-08-09','Osaka'),(3,'finished',9,11,3,1,'2018-08-10','Tokyo'),(4,'finished',13,15,4,1,'2018-08-11','Osaka'),(5,'finished',1,7,1,2,'2018-08-12','Kyoto'),(6,'finished',9,13,3,4,'2018-08-13','Kyoto'),(7,'finished',1,9,4,2,'2018-08-14','Tokyo'),(8,'finished',7,13,3,1,'2018-08-15','Tokyo'),(9,'finished',16,14,56,38,'2018-08-08','Tokyo'),(10,'finished',2,6,90,87,'2018-08-10','Tokyo'),(11,'not start',4,10,0,0,'2018-08-11','Kyoto'),(12,'not start',8,12,0,0,'2018-08-14','Kyoto'),(13,'not start',16,2,0,0,'2018-08-15','Osaka'),(14,'not start',NULL,NULL,0,0,'2018-08-16','Tokyo'),(15,'not start',NULL,NULL,0,0,'2018-08-17','Osaka'),(16,'not start',NULL,NULL,0,0,'2018-08-18','Tokyo');
/*!40000 ALTER TABLE `tgame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmedal`
--

DROP TABLE IF EXISTS `tmedal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmedal` (
  `teid` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `silver` int(11) DEFAULT NULL,
  `bronze` int(11) DEFAULT NULL,
  PRIMARY KEY (`teid`),
  CONSTRAINT `tmedal_ibfk_1` FOREIGN KEY (`teid`) REFERENCES `team` (`teid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmedal`
--

LOCK TABLES `tmedal` WRITE;
/*!40000 ALTER TABLE `tmedal` DISABLE KEYS */;
INSERT INTO `tmedal` VALUES (1,2,3,2),(2,2,3,4),(3,2,5,6),(4,4,3,0),(5,1,2,0),(6,3,4,5),(7,5,3,3),(8,5,3,5),(9,2,2,3),(10,3,2,1),(11,2,5,6),(12,2,3,4),(13,2,2,3),(14,3,4,5),(15,2,5,3),(16,2,3,1);
/*!40000 ALTER TABLE `tmedal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tplayer`
--

DROP TABLE IF EXISTS `tplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tplayer` (
  `tid` int(11) NOT NULL,
  `teid` int(11) NOT NULL,
  `timg` varchar(100) DEFAULT NULL,
  `tpname` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `tintro` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `teid` (`teid`),
  CONSTRAINT `tplayer_ibfk_1` FOREIGN KEY (`teid`) REFERENCES `team` (`teid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tplayer`
--

LOCK TABLES `tplayer` WRITE;
/*!40000 ALTER TABLE `tplayer` DISABLE KEYS */;
INSERT INTO `tplayer` VALUES (1,1,'img/haolin.jpg','kaizun',23,'small forward','In 2002, Yulin became a member of the Shanghai Shenhua Football Club Youth Team. In July 2005, Yulin was transferred to the first team of Shanghai Shenhua Football Club and qualified for the Super League. On August 21, Yulin played for the first time in the Chinese Super League. In August 2008, Yulin represented the Chinese men\'s national team in the Beijing Olympics.'),(2,1,'img/zhengzhi.jpg','郑智',35,'mid','Zheng Zhi, a Chinese football player, is a midfielder and is currently playing for Guangzhou Evergrande. He is currently the captain of the Chinese national team and the captain of Guangzhou Evergrande. Zheng Zhi has good physical fitness, comprehensive technology, rich experience, strong midfield control and good at long shots. During the period of Shenzhen Jianlibao and Shandong Luneng, he won the Super League championship twice.'),(3,1,'img/fanzhiyi.jpg','范志毅',31,'middlefield','Fan Zhiyi, a native of Ningbo, was born in Yangpu District, Shanghai on November 6, 1969. He is a Chinese professional football player and the former national football team captain. He was originally a member of the Shanghai Shenhua football team. In 1998, he played for the Crystal Palace of England\'s first division, and became the best player of the year. '),(4,1,'img/haohaidong.jpg','郝海东',36,'defender','Hao Haidong was born on May 9, 1970 in Qingdao, Shandong Province. In October 1980, he was elected to the Bayi Junior Football Team. He was elected to the Chinese Olympic Football Team and became a striker. He was selected to the national team several times. In January 1997, he transferred to Dalian Wanda Football Club for 2.2 million yuan. Since then, he has been playing here and led Dalian Wanda to win the A and A championships in 1997 and 1998 and the Super Cup in 1997.'),(5,2,'img/taisen.jpg','Tyson Chandler',23,'small forward','Tyson Chandler was born on October 2, 1982 in Hanford, California, USA. He is a professional basketball player and a center in the United States. He plays for the Phoenix Suns and is nicknamed \"The King of Fighters.\"'),(6,2,'img/dulante.jpg','Kevin Durant',35,'forward','Kevin Durant, born on September 29, 1988 in Washington, DC, USA, is a professional basketball player in the United States. He is a small forward and plays for the NBA Golden State Warriors.'),(7,2,'img/james.jpg','LeBron James',31,'middlefield','LeBron James, born on December 30, 1984 in Akron, Ohio, USA, is a professional basketball player in the United States. He is a small forward and is nicknamed \"Little Emperor\" for the NBA Los Angeles Lakers.'),(8,2,'img/weishao.jpg','Russell Westbrook',36,'defender','Russell Westbrook, born on November 12, 1988 in Long Beach, California, USA, is a professional basketball player in the United States. He is a point guard and plays for the NBA Oklahoma City Thunder.'),(9,3,'img/haolin.jpg','郜林',15,'small forward','In 2002, Yulin became a member of the Shanghai Shenhua Football Club Youth Team. In July 2005, Yulin was transferred to the first team of Shanghai Shenhua Football Club and qualified for the Super League. On August 21, Yulin played for the first time in the Chinese Super League. In August 2008, Yulin represented the Chinese men\'s national team in the Beijing Olympics.'),(10,3,'img/zhengzhi.jpg','郑智',56,'forward','Zheng Zhi, a Chinese football player, is a midfielder and is currently playing for Guangzhou Evergrande. He is currently the captain of the Chinese national team and the captain of Guangzhou Evergrande. Zheng Zhi has good physical fitness, comprehensive technology, rich experience, strong midfield control and good at long shots. During the period of Shenzhen Jianlibao and Shandong Luneng, he won the Super League championship twice.'),(11,3,'img/fanzhiyi.jpg','范志毅',45,'middlefield','Fan Zhiyi, a native of Ningbo, was born in Yangpu District, Shanghai on November 6, 1969. He is a Chinese professional football player and the former national football team captain. He was originally a member of the Shanghai Shenhua football team. In 1998, he played for the Crystal Palace of England\'s first division, and became the best player of the year. '),(12,3,'img/haohaidong.jpg','郝海东',32,'defender','Hao Haidong was born on May 9, 1970 in Qingdao, Shandong Province. In October 1980, he was elected to the Bayi Junior Football Team. He was elected to the Chinese Olympic Football Team and became a striker. He was selected to the national team several times. In January 1997, he transferred to Dalian Wanda Football Club for 2.2 million yuan. Since then, he has been playing here and led Dalian Wanda to win the A and A championships in 1997 and 1998 and the Super Cup in 1997.'),(13,4,'img/taisen.jpg','Tyson Chandler',12,'small forward','Tyson Chandler was born on October 2, 1982 in Hanford, California, USA. He is a professional basketball player and a center in the United States. He plays for the Phoenix Suns and is nicknamed \"The King of Fighters.\"'),(14,4,'img/dulante.jpg','Kevin Durant',18,'forward','Kevin Durant, born on September 29, 1988 in Washington, DC, USA, is a professional basketball player in the United States. He is a small forward and plays for the NBA Golden State Warriors.'),(15,4,'img/james.jpg','LeBron James',15,'middlefield','LeBron James, born on December 30, 1984 in Akron, Ohio, USA, is a professional basketball player in the United States. He is a small forward and is nicknamed \"Little Emperor\" for the NBA Los Angeles Lakers.'),(16,4,'img/weishao.jpg','Russell Westbrook',14,'defender','Russell Westbrook, born on November 12, 1988 in Long Beach, California, USA, is a professional basketball player in the United States. He is a point guard and plays for the NBA Oklahoma City Thunder.'),(17,5,'img/haolin.jpg','郜林',17,'small forward','In 2002, Yulin became a member of the Shanghai Shenhua Football Club Youth Team. In July 2005, Yulin was transferred to the first team of Shanghai Shenhua Football Club and qualified for the Super League. On August 21, Yulin played for the first time in the Chinese Super League. In August 2008, Yulin represented the Chinese men\'s national team in the Beijing Olympics.'),(18,5,'img/zhengzhi.jpg','郑智',18,'forward','Zheng Zhi, a Chinese football player, is a midfielder and is currently playing for Guangzhou Evergrande. He is currently the captain of the Chinese national team and the captain of Guangzhou Evergrande. Zheng Zhi has good physical fitness, comprehensive technology, rich experience, strong midfield control and good at long shots. During the period of Shenzhen Jianlibao and Shandong Luneng, he won the Super League championship twice.'),(19,5,'img/fanzhiyi.jpg','范志毅',19,'middlefield','Fan Zhiyi, a native of Ningbo, was born in Yangpu District, Shanghai on November 6, 1969. He is a Chinese professional football player and the former national football team captain. He was originally a member of the Shanghai Shenhua football team. In 1998, he played for the Crystal Palace of England\'s first division, and became the best player of the year. '),(20,5,'img/haohaidong.jpg','郝海东',20,'defender','Hao Haidong was born on May 9, 1970 in Qingdao, Shandong Province. In October 1980, he was elected to the Bayi Junior Football Team. He was elected to the Chinese Olympic Football Team and became a striker. He was selected to the national team several times. In January 1997, he transferred to Dalian Wanda Football Club for 2.2 million yuan. Since then, he has been playing here and led Dalian Wanda to win the A and A championships in 1997 and 1998 and the Super Cup in 1997.'),(21,6,'img/taisen.jpg','Tyson Chandler',21,'small forward','Tyson Chandler was born on October 2, 1982 in Hanford, California, USA. He is a professional basketball player and a center in the United States. He plays for the Phoenix Suns and is nicknamed \"The King of Fighters.\"'),(22,6,'img/dulante.jpg','Kevin Durant',22,'forward','Kevin Durant, born on September 29, 1988 in Washington, DC, USA, is a professional basketball player in the United States. He is a small forward and plays for the NBA Golden State Warriors.'),(23,6,'img/james.jpg','LeBron James',23,'middlefield','LeBron James, born on December 30, 1984 in Akron, Ohio, USA, is a professional basketball player in the United States. He is a small forward and is nicknamed \"Little Emperor\" for the NBA Los Angeles Lakers.'),(24,6,'img/weishao.jpg','Russell Westbrook',24,'defender','Russell Westbrook, born on November 12, 1988 in Long Beach, California, USA, is a professional basketball player in the United States. He is a point guard and plays for the NBA Oklahoma City Thunder.'),(25,7,'img/haolin.jpg','郜林',25,'small forward','In 2002, Yulin became a member of the Shanghai Shenhua Football Club Youth Team. In July 2005, Yulin was transferred to the first team of Shanghai Shenhua Football Club and qualified for the Super League. On August 21, Yulin played for the first time in the Chinese Super League. In August 2008, Yulin represented the Chinese men\'s national team in the Beijing Olympics.'),(26,7,'img/zhengzhi.jpg','郑智',26,'forward','Zheng Zhi, a Chinese football player, is a midfielder and is currently playing for Guangzhou Evergrande. He is currently the captain of the Chinese national team and the captain of Guangzhou Evergrande. Zheng Zhi has good physical fitness, comprehensive technology, rich experience, strong midfield control and good at long shots. During the period of Shenzhen Jianlibao and Shandong Luneng, he won the Super League championship twice.'),(27,7,'img/fanzhiyi.jpg','范志毅',27,'middlefield','Fan Zhiyi, a native of Ningbo, was born in Yangpu District, Shanghai on November 6, 1969. He is a Chinese professional football player and the former national football team captain. He was originally a member of the Shanghai Shenhua football team. In 1998, he played for the Crystal Palace of England\'s first division, and became the best player of the year. '),(28,7,'img/haohaidong.jpg','郝海东',28,'defender','Hao Haidong was born on May 9, 1970 in Qingdao, Shandong Province. In October 1980, he was elected to the Bayi Junior Football Team. He was elected to the Chinese Olympic Football Team and became a striker. He was selected to the national team several times. In January 1997, he transferred to Dalian Wanda Football Club for 2.2 million yuan. Since then, he has been playing here and led Dalian Wanda to win the A and A championships in 1997 and 1998 and the Super Cup in 1997.'),(29,8,'img/taisen.jpg','Tyson Chandler',29,'small forward','Tyson Chandler was born on October 2, 1982 in Hanford, California, USA. He is a professional basketball player and a center in the United States. He plays for the Phoenix Suns and is nicknamed \"The King of Fighters.\"'),(30,8,'img/dulante.jpg','Kevin Durant',30,'forward','Kevin Durant, born on September 29, 1988 in Washington, DC, USA, is a professional basketball player in the United States. He is a small forward and plays for the NBA Golden State Warriors.'),(31,8,'img/james.jpg','LeBron James',31,'middlefield','LeBron James, born on December 30, 1984 in Akron, Ohio, USA, is a professional basketball player in the United States. He is a small forward and is nicknamed \"Little Emperor\" for the NBA Los Angeles Lakers.'),(32,8,'img/weishao.jpg','Russell Westbrook',32,'defender','Russell Westbrook, born on November 12, 1988 in Long Beach, California, USA, is a professional basketball player in the United States. He is a point guard and plays for the NBA Oklahoma City Thunder.'),(33,9,'img/haolin.jpg','郜林',33,'small forward','In 2002, Yulin became a member of the Shanghai Shenhua Football Club Youth Team. In July 2005, Yulin was transferred to the first team of Shanghai Shenhua Football Club and qualified for the Super League. On August 21, Yulin played for the first time in the Chinese Super League. In August 2008, Yulin represented the Chinese men\'s national team in the Beijing Olympics.'),(34,9,'img/zhengzhi.jpg','郑智',34,'forward','Zheng Zhi, a Chinese football player, is a midfielder and is currently playing for Guangzhou Evergrande. He is currently the captain of the Chinese national team and the captain of Guangzhou Evergrande. Zheng Zhi has good physical fitness, comprehensive technology, rich experience, strong midfield control and good at long shots. During the period of Shenzhen Jianlibao and Shandong Luneng, he won the Super League championship twice.'),(35,9,'img/fanzhiyi.jpg','范志毅',35,'middlefield','Fan Zhiyi, a native of Ningbo, was born in Yangpu District, Shanghai on November 6, 1969. He is a Chinese professional football player and the former national football team captain. He was originally a member of the Shanghai Shenhua football team. In 1998, he played for the Crystal Palace of England\'s first division, and became the best player of the year. '),(36,9,'img/haohaidong.jpg','郝海东',36,'defender','Hao Haidong was born on May 9, 1970 in Qingdao, Shandong Province. In October 1980, he was elected to the Bayi Junior Football Team. He was elected to the Chinese Olympic Football Team and became a striker. He was selected to the national team several times. In January 1997, he transferred to Dalian Wanda Football Club for 2.2 million yuan. Since then, he has been playing here and led Dalian Wanda to win the A and A championships in 1997 and 1998 and the Super Cup in 1997.'),(37,10,'img/taisen.jpg','Tyson Chandler',37,'small forward','Tyson Chandler was born on October 2, 1982 in Hanford, California, USA. He is a professional basketball player and a center in the United States. He plays for the Phoenix Suns and is nicknamed \"The King of Fighters.\"'),(38,10,'img/dulante.jpg','Kevin Durant',38,'forward','Kevin Durant, born on September 29, 1988 in Washington, DC, USA, is a professional basketball player in the United States. He is a small forward and plays for the NBA Golden State Warriors.'),(39,10,'img/james.jpg','LeBron James',39,'middlefield','LeBron James, born on December 30, 1984 in Akron, Ohio, USA, is a professional basketball player in the United States. He is a small forward and is nicknamed \"Little Emperor\" for the NBA Los Angeles Lakers.'),(40,10,'img/weishao.jpg','Russell Westbrook',40,'defender','Russell Westbrook, born on November 12, 1988 in Long Beach, California, USA, is a professional basketball player in the United States. He is a point guard and plays for the NBA Oklahoma City Thunder.'),(41,11,'img/haolin.jpg','郜林',45,'small forward','In 2002, Yulin became a member of the Shanghai Shenhua Football Club Youth Team. In July 2005, Yulin was transferred to the first team of Shanghai Shenhua Football Club and qualified for the Super League. On August 21, Yulin played for the first time in the Chinese Super League. In August 2008, Yulin represented the Chinese men\'s national team in the Beijing Olympics.'),(42,11,'img/zhengzhi.jpg','郑智',44,'forward','Zheng Zhi, a Chinese football player, is a midfielder and is currently playing for Guangzhou Evergrande. He is currently the captain of the Chinese national team and the captain of Guangzhou Evergrande. Zheng Zhi has good physical fitness, comprehensive technology, rich experience, strong midfield control and good at long shots. During the period of Shenzhen Jianlibao and Shandong Luneng, he won the Super League championship twice.'),(43,11,'img/fanzhiyi.jpg','范志毅',43,'middlefield','Fan Zhiyi, a native of Ningbo, was born in Yangpu District, Shanghai on November 6, 1969. He is a Chinese professional football player and the former national football team captain. He was originally a member of the Shanghai Shenhua football team. In 1998, he played for the Crystal Palace of England\'s first division, and became the best player of the year. '),(44,11,'img/haohaidong.jpg','郝海东',42,'defender','Hao Haidong was born on May 9, 1970 in Qingdao, Shandong Province. In October 1980, he was elected to the Bayi Junior Football Team. He was elected to the Chinese Olympic Football Team and became a striker. He was selected to the national team several times. In January 1997, he transferred to Dalian Wanda Football Club for 2.2 million yuan. Since then, he has been playing here and led Dalian Wanda to win the A and A championships in 1997 and 1998 and the Super Cup in 1997.'),(45,12,'img/taisen.jpg','Tyson Chandler',41,'small forward','Tyson Chandler was born on October 2, 1982 in Hanford, California, USA. He is a professional basketball player and a center in the United States. He plays for the Phoenix Suns and is nicknamed \"The King of Fighters.\"'),(46,12,'img/dulante.jpg','Kevin Durant',40,'forward','Kevin Durant, born on September 29, 1988 in Washington, DC, USA, is a professional basketball player in the United States. He is a small forward and plays for the NBA Golden State Warriors.'),(47,12,'img/james.jpg','LeBron James',39,'middlefield','LeBron James, born on December 30, 1984 in Akron, Ohio, USA, is a professional basketball player in the United States. He is a small forward and is nicknamed \"Little Emperor\" for the NBA Los Angeles Lakers.'),(48,12,'img/weishao.jpg','Russell Westbrook',38,'defender','Russell Westbrook, born on November 12, 1988 in Long Beach, California, USA, is a professional basketball player in the United States. He is a point guard and plays for the NBA Oklahoma City Thunder.'),(49,13,'img/haolin.jpg','郜林',37,'small forward','In 2002, Yulin became a member of the Shanghai Shenhua Football Club Youth Team. In July 2005, Yulin was transferred to the first team of Shanghai Shenhua Football Club and qualified for the Super League. On August 21, Yulin played for the first time in the Chinese Super League. In August 2008, Yulin represented the Chinese men\'s national team in the Beijing Olympics.'),(50,13,'img/zhengzhi.jpg','郑智',36,'forward','Zheng Zhi, a Chinese football player, is a midfielder and is currently playing for Guangzhou Evergrande. He is currently the captain of the Chinese national team and the captain of Guangzhou Evergrande. Zheng Zhi has good physical fitness, comprehensive technology, rich experience, strong midfield control and good at long shots. During the period of Shenzhen Jianlibao and Shandong Luneng, he won the Super League championship twice.'),(51,13,'img/fanzhiyi.jpg','范志毅',35,'middlefield','Fan Zhiyi, a native of Ningbo, was born in Yangpu District, Shanghai on November 6, 1969. He is a Chinese professional football player and the former national football team captain. He was originally a member of the Shanghai Shenhua football team. In 1998, he played for the Crystal Palace of England\'s first division, and became the best player of the year. '),(52,13,'img/haohaidong.jpg','郝海东',34,'defender','Hao Haidong was born on May 9, 1970 in Qingdao, Shandong Province. In October 1980, he was elected to the Bayi Junior Football Team. He was elected to the Chinese Olympic Football Team and became a striker. He was selected to the national team several times. In January 1997, he transferred to Dalian Wanda Football Club for 2.2 million yuan. Since then, he has been playing here and led Dalian Wanda to win the A and A championships in 1997 and 1998 and the Super Cup in 1997.'),(53,14,'img/taisen.jpg','Tyson Chandler',33,'small forward','Tyson Chandler was born on October 2, 1982 in Hanford, California, USA. He is a professional basketball player and a center in the United States. He plays for the Phoenix Suns and is nicknamed \"The King of Fighters.\"'),(54,14,'img/dulante.jpg','Kevin Durant',32,'forward','Kevin Durant, born on September 29, 1988 in Washington, DC, USA, is a professional basketball player in the United States. He is a small forward and plays for the NBA Golden State Warriors.'),(55,14,'img/james.jpg','LeBron James',31,'middlefield','LeBron James, born on December 30, 1984 in Akron, Ohio, USA, is a professional basketball player in the United States. He is a small forward and is nicknamed \"Little Emperor\" for the NBA Los Angeles Lakers.'),(56,14,'img/weishao.jpg','Russell Westbrook',30,'defender','Russell Westbrook, born on November 12, 1988 in Long Beach, California, USA, is a professional basketball player in the United States. He is a point guard and plays for the NBA Oklahoma City Thunder.'),(57,15,'img/haolin.jpg','郜林',29,'small forward','In 2002, Yulin became a member of the Shanghai Shenhua Football Club Youth Team. In July 2005, Yulin was transferred to the first team of Shanghai Shenhua Football Club and qualified for the Super League. On August 21, Yulin played for the first time in the Chinese Super League. In August 2008, Yulin represented the Chinese men\'s national team in the Beijing Olympics.'),(58,15,'img/zhengzhi.jpg','郑智',28,'forward','Zheng Zhi, a Chinese football player, is a midfielder and is currently playing for Guangzhou Evergrande. He is currently the captain of the Chinese national team and the captain of Guangzhou Evergrande. Zheng Zhi has good physical fitness, comprehensive technology, rich experience, strong midfield control and good at long shots. During the period of Shenzhen Jianlibao and Shandong Luneng, he won the Super League championship twice.'),(59,15,'img/fanzhiyi.jpg','范志毅',27,'middlefield','Fan Zhiyi, a native of Ningbo, was born in Yangpu District, Shanghai on November 6, 1969. He is a Chinese professional football player and the former national football team captain. He was originally a member of the Shanghai Shenhua football team. In 1998, he played for the Crystal Palace of England\'s first division, and became the best player of the year. '),(60,15,'img/haohaidong.jpg','郝海东',26,'defender','Hao Haidong was born on May 9, 1970 in Qingdao, Shandong Province. In October 1980, he was elected to the Bayi Junior Football Team. He was elected to the Chinese Olympic Football Team and became a striker. He was selected to the national team several times. In January 1997, he transferred to Dalian Wanda Football Club for 2.2 million yuan. Since then, he has been playing here and led Dalian Wanda to win the A and A championships in 1997 and 1998 and the Super Cup in 1997.'),(61,16,'img/taisen.jpg','Tyson Chandler',25,'small forward','Tyson Chandler was born on October 2, 1982 in Hanford, California, USA. He is a professional basketball player and a center in the United States. He plays for the Phoenix Suns and is nicknamed \"The King of Fighters.\"'),(62,16,'img/dulante.jpg','Kevin Durant',24,'forward','Kevin Durant, born on September 29, 1988 in Washington, DC, USA, is a professional basketball player in the United States. He is a small forward and plays for the NBA Golden State Warriors.'),(63,16,'img/james.jpg','LeBron James',23,'middlefield','LeBron James, born on December 30, 1984 in Akron, Ohio, USA, is a professional basketball player in the United States. He is a small forward and is nicknamed \"Little Emperor\" for the NBA Los Angeles Lakers.'),(64,16,'img/weishao.jpg','Russell Westbrook',22,'defender','Russell Westbrook, born on November 12, 1988 in Long Beach, California, USA, is a professional basketball player in the United States. He is a point guard and plays for the NBA Oklahoma City Thunder.');
/*!40000 ALTER TABLE `tplayer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-07 17:47:59
