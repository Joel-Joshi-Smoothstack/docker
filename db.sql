-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: alinedb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_type` varchar(31) NOT NULL,
  `id` bigint NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `balance` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `available_balance` int DEFAULT NULL,
  `apy` float DEFAULT NULL,
  `primary_account_holder_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_66gkcp94endmotfwb8r4ocxm9` (`account_number`),
  KEY `FK8mr193rmld8wwqn5nlbr8vclx` (`primary_account_holder_id`),
  CONSTRAINT `FK8mr193rmld8wwqn5nlbr8vclx` FOREIGN KEY (`primary_account_holder_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('CHECKING',452,'0011013146',0,'ACTIVE',0,NULL,9),('SAVINGS',453,'0012020002',0,'ACTIVE',NULL,0.006,9),('CHECKING',454,'0011015146',0,'ACTIVE',0,NULL,11),('CHECKING',455,'0011018167',0,'ACTIVE',0,NULL,13),('SAVINGS',456,'0012020285',0,'ACTIVE',NULL,0.006,13),('SAVINGS',457,'0012020634',0,'ACTIVE',NULL,0.006,14),('CHECKING',458,'0011014743',0,'ACTIVE',0,NULL,15),('SAVINGS',459,'0012028148',0,'ACTIVE',NULL,0.006,15),('CHECKING',460,'0011016322',0,'ACTIVE',0,NULL,16),('SAVINGS',461,'0012028558',0,'ACTIVE',NULL,0.006,16),('SAVINGS',462,'0012024616',0,'ACTIVE',NULL,0.006,17),('CHECKING',463,'0011016446',0,'ACTIVE',0,NULL,23),('SAVINGS',464,'0012024126',0,'ACTIVE',NULL,0.006,24),('CHECKING',465,'0011017171',0,'ACTIVE',0,NULL,25),('SAVINGS',466,'0012028140',0,'ACTIVE',NULL,0.006,25),('CHECKING',467,'0011011726',0,'ACTIVE',0,NULL,27),('CHECKING',468,'0011016002',0,'ACTIVE',0,NULL,28),('CHECKING',469,'0011014657',0,'ACTIVE',0,NULL,29),('CHECKING',470,'0011016061',0,'ACTIVE',0,NULL,30),('SAVINGS',471,'0012022724',0,'ACTIVE',NULL,0.006,30),('CHECKING',472,'0011016180',0,'ACTIVE',0,NULL,32),('SAVINGS',473,'0012024837',0,'ACTIVE',NULL,0.006,33),('CHECKING',474,'0011013680',0,'ACTIVE',0,NULL,34),('SAVINGS',475,'0012020512',0,'ACTIVE',NULL,0.006,34),('CHECKING',476,'0011012103',0,'ACTIVE',0,NULL,37),('SAVINGS',477,'0012021143',0,'ACTIVE',NULL,0.006,37),('CHECKING',478,'0011014280',0,'ACTIVE',0,NULL,39),('CHECKING',479,'0011012470',0,'ACTIVE',0,NULL,41),('SAVINGS',480,'0012028343',0,'ACTIVE',NULL,0.006,41);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_holder`
--

DROP TABLE IF EXISTS `account_holder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_holder` (
  `member_id` bigint NOT NULL,
  `account_id` bigint NOT NULL,
  PRIMARY KEY (`member_id`,`account_id`),
  KEY `FKn4212xs4wsfh8cfj9rddju6ic` (`account_id`),
  CONSTRAINT `FKg06e1tl3h06l29ok6lc09l0xh` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKn4212xs4wsfh8cfj9rddju6ic` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_holder`
--

LOCK TABLES `account_holder` WRITE;
/*!40000 ALTER TABLE `account_holder` DISABLE KEYS */;
INSERT INTO `account_holder` VALUES (9,452),(9,453),(11,454),(13,455),(13,456),(14,457),(15,458),(15,459),(16,460),(16,461),(17,462),(23,463),(24,464),(25,465),(25,466),(27,467),(28,468),(29,469),(30,470),(30,471),(32,472),(33,473),(34,474),(34,475),(37,476),(37,477),(39,478),(41,479),(41,480);
/*!40000 ALTER TABLE `account_holder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_sequence`
--

DROP TABLE IF EXISTS `account_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_sequence`
--

LOCK TABLES `account_sequence` WRITE;
/*!40000 ALTER TABLE `account_sequence` DISABLE KEYS */;
INSERT INTO `account_sequence` VALUES (551);
/*!40000 ALTER TABLE `account_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `drivers_license` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `income` int NOT NULL,
  `last_modified_at` datetime(6) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `mailing_address` varchar(255) NOT NULL,
  `mailing_city` varchar(255) NOT NULL,
  `mailing_state` varchar(255) NOT NULL,
  `mailing_zipcode` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `social_security` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g8sypjb2jlijcs4k2ga9xf3w3` (`drivers_license`),
  UNIQUE KEY `UK_6iduje2h6ggdlnmevw2mvolfx` (`email`),
  UNIQUE KEY `UK_s4gkylihid0qmetrspjnnvy4h` (`phone`),
  UNIQUE KEY `UK_5p56ol6x0k8os5qytfdswas4u` (`social_security`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES (10,'4981 Shirley Way','Anchorage','2022-04-12 18:42:58.537826','1998-07-19','626527886','gerald.cartwright@email.com','Gerald','UNSPECIFIED',9107092,'2022-04-12 18:42:58.537826','Cartwright','4981 Shirley Way','Anchorage','AR','37204',NULL,'(801) 706-7122','DMH98hZOU0C+t/MnDIUS5g==','AR','37204'),(11,'1040 West 27th Avenue','Montgomery','2022-04-12 18:44:21.389135','1934-11-13','893586059','timothy.keh@email.com','Timothy','FEMALE',8923583,'2022-04-12 18:44:21.389135','Keh','1040 West 27th Avenue','Montgomery','CO','93230',NULL,'(921) 826-6586','ciltIIZQv+XF9ePuiVYWqA==','CO','93230'),(12,'2849 Quail Drive','Savannah','2022-04-12 18:51:47.739497','1959-04-17','454879941','ronald.aguirre@email.com','Ronald','FEMALE',2931605,'2022-04-12 18:51:47.739497','Aguirre','2849 Quail Drive','Savannah','DC','99508',NULL,'(906) 715-5373','ZMNB+Ja/t8QM1yOPv5t9eg==','DC','99508'),(13,'525 Merrill Lane','Anchorage','2022-04-12 19:22:52.851041','1980-12-14','328564588','bob.blasko@email.com','Bob','MALE',4034737,'2022-04-12 19:22:52.851041','Blasko','525 Merrill Lane','Anchorage','VT','40207',NULL,'(401) 689-9305','E4xU+YlfTM2HDTrq6PmNdw==','VT','40207'),(14,'1030 Lake Claire Drive','Glen Burnie','2022-04-12 19:23:07.773081','1967-04-20','223973362','mitch.foreman@email.com','Mitch','FEMALE',3495239,'2022-04-12 19:23:07.773081','Foreman','1030 Lake Claire Drive','Glen Burnie','GA','06042',NULL,'(760) 818-3558','Q1VT+0xK0RCHXM9VeyHTKA==','GA','06042'),(15,'98 Lincoln Street','Barre','2022-04-12 19:27:52.840505','1992-06-21','320828448','melinda.zimmer@email.com','Melinda','UNSPECIFIED',7780856,'2022-04-12 19:27:52.840505','Zimmer','98 Lincoln Street','Barre','MD','92344',NULL,'(814) 698-1331','FTn2gc0TkFNQgXZwJLpuXg==','MD','92344'),(16,'7250 Urban Drive','Lynn Haven','2022-04-12 19:56:56.742977','1987-07-22','770559880','alex.engfer@email.com','Alex','OTHER',4627940,'2022-04-12 19:56:56.742977','Engfer','7250 Urban Drive','Lynn Haven','MA','99611',NULL,'(375) 716-4845','Vo2OymLjEItc/1cuCjf6bA==','MA','99611'),(17,'102 Derondo Street','Manchester','2022-04-12 19:57:12.298426','1932-11-08','428115447','james.murphy@email.com','James','MALE',7414551,'2022-04-12 19:57:12.298426','Murphy','102 Derondo Street','Manchester','TN','32404',NULL,'(992) 661-1768','j7da3ltKA48/siJue14Iag==','TN','32404'),(18,'2316 Northwest 113th Street','Oklahoma City','2022-04-12 19:57:41.806655','1932-04-27','514577806','rudolph.lewis@email.com','Rudolph','OTHER',3395275,'2022-04-12 19:57:41.806655','Lewis','2316 Northwest 113th Street','Oklahoma City','CO','21409',NULL,'(583) 366-9051','QayBXCZJ+3peOXdLoW/mMA==','CO','21409'),(19,'212 Holiday Circle','Arvada','2022-04-12 19:58:05.239384','1995-02-09','146101464','june.vachon@email.com','June','MALE',9840250,'2022-04-12 19:58:05.239384','Vachon','212 Holiday Circle','Arvada','CO','31406',NULL,'(395) 578-3770','ebasznvbYr5Il9j/NQnsLw==','CO','31406'),(20,'7100 Old Seward Highway','Manchester','2022-04-12 19:58:05.858624','1970-04-09','941173028','thomas.ciaccio@email.com','Thomas','MALE',2948378,'2022-04-12 19:58:05.858624','Ciaccio','7100 Old Seward Highway','Manchester','DC','85305',NULL,'(394) 124-2196','P9o9L1770gbxprraWHpYCA==','DC','85305'),(21,'5 Hibiscus Avenue','Washington','2022-04-12 19:58:06.952704','1989-04-28','185901150','rose.jackson@email.com','Rose','UNSPECIFIED',5447058,'2022-04-12 19:58:06.952704','Jackson','5 Hibiscus Avenue','Washington','CO','85308',NULL,'(313) 621-3269','HzV8uIVxGWYDRQRVDYPxjQ==','CO','85308'),(22,'2147 Millhaven Drive','Melrose','2022-04-12 19:58:07.256201','1952-01-20','235125300','john.carey@email.com','John','OTHER',2610376,'2022-04-12 19:58:07.256201','Carey','2147 Millhaven Drive','Melrose','CA','80631',NULL,'(732) 990-8165','HqIkzZLT4HLCFkOmy/0bew==','CA','80631'),(23,'9545 West 74th Avenue','New Bedford','2022-04-12 19:58:07.398847','1989-09-20','621844691','dave.meyer@email.com','Dave','MALE',7118848,'2022-04-12 19:58:07.398847','Meyer','9545 West 74th Avenue','New Bedford','CO','20011',NULL,'(501) 366-7828','qkR2mUdHKtFgkbVSt3ZJwg==','CO','20011'),(24,'3714 John Mallette Drive','Hartford','2022-04-12 19:58:07.744602','1947-12-24','309331783','deborah.simpson@email.com','Deborah','UNSPECIFIED',9641415,'2022-04-12 19:58:07.744602','Simpson','3714 John Mallette Drive','Hartford','DC','32408',NULL,'(481) 262-8922','cZqoksd4l3n0klydCNzT+A==','DC','32408'),(25,'388 East Main Street','Arvada','2022-04-12 19:58:08.139100','2001-07-08','454728016','nathan.begay@email.com','Nathan','UNSPECIFIED',4439310,'2022-04-12 19:58:08.139100','Begay','388 East Main Street','Arvada','AZ','01826',NULL,'(440) 694-8662','IsRKbSXnDTjIBe/p3KuRJQ==','AZ','01826'),(26,'3504 Mount View Ridge Drive','Moore','2022-04-12 19:58:08.446843','1987-11-22','460708995','michael.bray@email.com','Michael','UNSPECIFIED',9026082,'2022-04-12 19:58:08.446843','Bray','3504 Mount View Ridge Drive','Moore','AR','73160',NULL,'(702) 580-1206','F87dSUGsAhogNIZZ0S9rJA==','AR','73160'),(27,'6518 Dolphin Court','Carson','2022-04-12 19:58:09.120190','1961-05-25','868565098','cristina.henderson@email.com','Cristina','UNSPECIFIED',3208524,'2022-04-12 19:58:09.120190','Henderson','6518 Dolphin Court','Carson','TN','73003',NULL,'(202) 380-4228','ZwFaedE6HdN2+C2smFh9uQ==','TN','73003'),(28,'703 Elizabeth Barcus Way','Arvada','2022-04-12 19:58:09.342282','1966-05-26','248632691','robert.owens@email.com','Robert','FEMALE',3911658,'2022-04-12 19:58:09.342282','Owens','703 Elizabeth Barcus Way','Arvada','MA','36105',NULL,'(297) 759-5000','Uy7s1WHRR0nqlwae1Vg8OQ==','MA','36105'),(29,'8772 West 79th Avenue','Oakland','2022-04-12 19:58:09.824280','1978-03-16','469168351','peter.call@email.com','Peter','MALE',7116033,'2022-04-12 19:58:09.824280','Call','8772 West 79th Avenue','Oakland','CA','40203',NULL,'(907) 127-8966','Bg/VCavSaJ8luqv/rQLfBg==','CA','40203'),(30,'7 Cloutman Street','Louisville','2022-04-13 11:35:18.614454','1982-09-17','764712187','roosevelt.brown@email.com','Roosevelt','OTHER',4052352,'2022-04-13 11:35:18.614454','Brown','7 Cloutman Street','Louisville','TN','94611',NULL,'(796) 879-1858','o5xeP9W8mG2dGFI6ECA0gQ==','TN','94611'),(31,'7101 West Beardsley Road','Louisville','2022-04-13 11:35:20.118051','1902-11-26','163111878','debra.day@email.com','Debra','MALE',7430972,'2022-04-13 11:35:20.118051','Day','7101 West Beardsley Road','Louisville','AR','05676',NULL,'(546) 931-4677','efbPkTVCd44UIherEIhUDQ==','AR','05676'),(32,'301 Argonaut Street','Oklahoma City','2022-04-13 11:35:20.536988','1939-12-20','996403933','randy.williams@email.com','Randy','FEMALE',8409897,'2022-04-13 11:35:20.536988','Williams','301 Argonaut Street','Oklahoma City','CA','31404',NULL,'(678) 671-1744','DcJDoVjKptBDSAWR6XO+2w==','CA','31404'),(33,'1076 Foster Street','Richford','2022-04-13 11:35:21.116739','1926-08-14','848855829','dave.barbosa@email.com','Dave','OTHER',8443038,'2022-04-13 11:35:21.116739','Barbosa','1076 Foster Street','Richford','GA','40211',NULL,'(335) 870-2582','wGqYQw3XWUaFycYTwclBYw==','GA','40211'),(34,'747 West Pacific Avenue','San Leandro','2022-04-13 11:35:25.631054','1926-01-06','283682698','arthur.morris@email.com','Arthur','FEMALE',9751609,'2022-04-13 11:35:25.631054','Morris','747 West Pacific Avenue','San Leandro','TN','94538',NULL,'(427) 133-5954','1fXP8uBzYGHzto7Xpm3z2g==','TN','94538'),(35,'382 Ocean Avenue','San Lorenzo','2022-04-13 11:35:26.186923','1906-05-11','953086733','john.chadwell@email.com','John','UNSPECIFIED',6530044,'2022-04-13 11:35:26.186923','Chadwell','382 Ocean Avenue','San Lorenzo','MA','36116',NULL,'(407) 691-9802','SbsxY2IBpQG6wlBiAjbK9Q==','MA','36116'),(36,'150 Meadowview Street','Montgomery','2022-04-13 11:37:12.898538','1974-08-13','290365107','arline.neal@email.com','Arline','MALE',1927818,'2022-04-13 11:37:12.898538','Neal','150 Meadowview Street','Montgomery','KY','05443',NULL,'(409) 456-4809','tM/nzb+imNiBSzf/vtGWbw==','KY','05443'),(37,'281 MacArthur Boulevard','Montgomery','2022-04-13 12:07:48.114543','1915-04-27','136989800','kelly.hilliard@email.com','Kelly','FEMALE',9107876,'2022-04-13 12:07:48.114543','Hilliard','281 MacArthur Boulevard','Montgomery','AZ','36117',NULL,'(207) 482-6658','V5UCdUuhQLlt63yc4J2mpA==','AZ','36117'),(38,'10723 Colonial Woods Court','Castro Valley','2022-04-13 12:09:04.031578','1974-05-14','139958617','irene.pinder@email.com','Irene','FEMALE',1534949,'2022-04-13 12:09:04.031578','Pinder','10723 Colonial Woods Court','Castro Valley','AL','99516',NULL,'(706) 351-9067','NOtpMNtxWlTc/GPifAY4rw==','AL','99516'),(39,'3782 North Front Street','Woodford','2022-04-13 12:09:04.696615','1939-09-09','479440805','daniel.westphal@email.com','Daniel','FEMALE',7359934,'2022-04-13 12:09:04.696615','Westphal','3782 North Front Street','Woodford','AR','32413',NULL,'(935) 532-5789','dT4uZW0khgdry/iO05ezkA==','AR','32413'),(40,'6444 North 67th Avenue','Arvada','2022-04-13 12:09:05.251249','1980-04-10','725317401','marlene.absher@email.com','Marlene','MALE',9987465,'2022-04-13 12:09:05.251249','Absher','6444 North 67th Avenue','Arvada','CA','06040',NULL,'(777) 422-2356','QwUvHzc1yJhZZ9h7LtZmoA==','CA','06040'),(41,'61 Plymouth Lane','Livermore','2022-04-13 12:09:05.627898','2000-09-14','566819073','mark.quinones@email.com','Mark','FEMALE',9610007,'2022-04-13 12:09:05.627898','Quinones','61 Plymouth Lane','Livermore','MD','95640',NULL,'(236) 818-5629','/TNQJpVpo9+BGV4wVdDJNQ==','MD','95640'),(42,'207 High Street','Savannah','2022-04-13 12:09:05.895906','1980-09-22','665204997','ronald.sanchez@email.com','Ronald','MALE',7461897,'2022-04-13 12:09:05.895906','Sanchez','207 High Street','Savannah','AZ','05446',NULL,'(332) 397-8655','0541oKiJyLeMLEbo2aKLpA==','AZ','05446'),(43,'1217 Cottondale Road','Nashville','2022-04-13 12:09:06.216953','1957-04-26','394360697','julia.brannon@email.com','Julia','OTHER',4351087,'2022-04-13 12:09:06.216953','Brannon','1217 Cottondale Road','Nashville','AZ','94502',NULL,'(433) 978-1687','O3tCAxrPBBUZ6qKlBUH9CQ==','AZ','94502');
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `application_status` varchar(255) NOT NULL,
  `application_type` varchar(255) NOT NULL,
  `primary_applicant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKny8me56a33jdg423v5n7j5fpx` (`primary_applicant_id`),
  CONSTRAINT `FKny8me56a33jdg423v5n7j5fpx` FOREIGN KEY (`primary_applicant_id`) REFERENCES `applicant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (10,'APPROVED','CHECKING_AND_SAVINGS',10),(11,'APPROVED','LOAN',11),(12,'APPROVED','CHECKING',12),(13,'APPROVED','LOAN',13),(14,'APPROVED','CHECKING_AND_SAVINGS',14),(15,'APPROVED','SAVINGS',15),(16,'APPROVED','CHECKING_AND_SAVINGS',16),(17,'APPROVED','CHECKING_AND_SAVINGS',17),(18,'APPROVED','SAVINGS',18),(19,'APPROVED','LOAN',19),(20,'APPROVED','LOAN',20),(21,'APPROVED','CREDIT_CARD',21),(22,'APPROVED','CREDIT_CARD',22),(23,'APPROVED','CREDIT_CARD',23),(24,'APPROVED','CHECKING',24),(25,'APPROVED','SAVINGS',25),(26,'APPROVED','CHECKING_AND_SAVINGS',26),(27,'APPROVED','CREDIT_CARD',27),(28,'APPROVED','CHECKING',28),(29,'APPROVED','CHECKING',29),(30,'APPROVED','CHECKING',30),(31,'APPROVED','CHECKING_AND_SAVINGS',31),(32,'APPROVED','LOAN',32),(33,'APPROVED','CHECKING',33),(34,'APPROVED','SAVINGS',34),(35,'APPROVED','CHECKING_AND_SAVINGS',35),(36,'APPROVED','CREDIT_CARD',36),(37,'APPROVED','LOAN',37),(38,'APPROVED','CHECKING_AND_SAVINGS',38),(39,'APPROVED','LOAN',39),(40,'APPROVED','CHECKING',40),(41,'APPROVED','LOAN',41),(42,'APPROVED','CHECKING_AND_SAVINGS',42),(43,'APPROVED','LOAN',43);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_applicant`
--

DROP TABLE IF EXISTS `application_applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_applicant` (
  `application_id` bigint NOT NULL,
  `applicant_id` bigint NOT NULL,
  PRIMARY KEY (`application_id`,`applicant_id`),
  KEY `FK3iabmdimkfk9q1s3vg0s8hc1q` (`applicant_id`),
  CONSTRAINT `FK3iabmdimkfk9q1s3vg0s8hc1q` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  CONSTRAINT `FKahrhusgia8sp6xy44fbjhc1po` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_applicant`
--

LOCK TABLES `application_applicant` WRITE;
/*!40000 ALTER TABLE `application_applicant` DISABLE KEYS */;
INSERT INTO `application_applicant` VALUES (10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43);
/*!40000 ALTER TABLE `application_applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `routing_number` varchar(9) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'123 Aline Financial St.','New York','123456789','New York','10001');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `bank_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_243da5619wvedk7ah55d50tph` (`phone`),
  KEY `FKpolhgo6c86h7rrcwvg3hqm32l` (`bank_id`),
  CONSTRAINT `FKpolhgo6c86h7rrcwvg3hqm32l` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'4316 Dover Road','Louisville','Louisville Branch','(437) 703-9434','CO','31405',1);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `membership_id` varchar(255) DEFAULT NULL,
  `applicant_id` bigint NOT NULL,
  `branch_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_s9bjipf16bofq8s92fj484x7e` (`applicant_id`),
  UNIQUE KEY `UK_hwbt6hiajpf0qtgxwhlmahbcx` (`membership_id`),
  KEY `FK1uj76dnpxoa9i8afaaslycb59` (`branch_id`),
  CONSTRAINT `FK1uj76dnpxoa9i8afaaslycb59` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKmhn91ma4lb6uiy6n1ao6tbwkj` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (9,'75488153',10,1),(10,'42628453',11,1),(11,'44571776',12,1),(12,'03534502',13,1),(13,'46356835',14,1),(14,'52104130',15,1),(15,'64081682',16,1),(16,'77758885',17,1),(17,'62118416',18,1),(18,'52702233',19,1),(19,'57572428',20,1),(20,'31708203',21,1),(21,'87657376',22,1),(22,'36818236',23,1),(23,'72861781',24,1),(24,'84604574',25,1),(25,'74312637',26,1),(26,'64405600',27,1),(27,'74671115',28,1),(28,'64803580',29,1),(29,'74152874',30,1),(30,'24674066',31,1),(31,'75767286',32,1),(32,'55664577',33,1),(33,'54615416',34,1),(34,'68357005',35,1),(35,'30177048',36,1),(36,'56502442',37,1),(37,'52150020',38,1),(38,'60265580',39,1),(39,'23856052',40,1),(40,'25644567',41,1),(41,'85630888',42,1),(42,'22281833',43,1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant` (
  `code` varchar(8) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `registered_at` datetime(6) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES ('ALINE','123 Aline Financial St.','New York',NULL,'Aline Financial','2022-04-08 12:49:18.000000','New York','10001'),('NONE',NULL,NULL,NULL,'No merchant','2022-04-08 12:49:18.000000',NULL,NULL);
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `one_time_passcode`
--

DROP TABLE IF EXISTS `one_time_passcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `one_time_passcode` (
  `id` int NOT NULL,
  `checked` bit(1) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7h269l2tqwy5woq1uwxqpu9lb` (`user_id`),
  CONSTRAINT `FKb8d16b0xvwqnabfyxk2kss9aj` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `one_time_passcode`
--

LOCK TABLES `one_time_passcode` WRITE;
/*!40000 ALTER TABLE `one_time_passcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `one_time_passcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_sequence`
--

DROP TABLE IF EXISTS `otp_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_sequence`
--

LOCK TABLES `otp_sequence` WRITE;
/*!40000 ALTER TABLE `otp_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `initial_balance` int NOT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  `method` varchar(255) NOT NULL,
  `posted_balance` int DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `account_id` bigint NOT NULL,
  `merchant_code` varchar(255) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6g20fcr3bhr6bihgy24rq1r1b` (`account_id`),
  KEY `FKsc1ms700fjxqyq0j4555uc28a` (`merchant_code`),
  CONSTRAINT `FK6g20fcr3bhr6bihgy24rq1r1b` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FKsc1ms700fjxqyq0j4555uc28a` FOREIGN KEY (`merchant_code`) REFERENCES `merchant` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `role` varchar(31) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtcx8a5i8q7mmh7xl2fi44o8v2` (`member_id`),
  CONSTRAINT `FKtcx8a5i8q7mmh7xl2fi44o8v2` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('administrator',2,_binary '','$2a$10$WnDJ76UR/vj85SNIKNn84.0KJPIvkzDAy7Sh1ejHn3e9snmrdet5O','admin123','admin@admin.com','admmin','admin','(123) 456-7890',NULL),('administrator',3,_binary '','$2a$10$S/rOS9J28/NIgrqbgbIwN.wz7X37n.szvA55wZvRjU5FyicQ6vyny','admin1234','adminn@admin.com','admmin','admin','(123) 456-8790',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_avatar`
--

DROP TABLE IF EXISTS `user_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_avatar` (
  `id` bigint NOT NULL,
  `pic` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_avatar`
--

LOCK TABLES `user_avatar` WRITE;
/*!40000 ALTER TABLE `user_avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration_token`
--

DROP TABLE IF EXISTS `user_registration_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_registration_token` (
  `token` varchar(255) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `expiration_delay` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`token`),
  UNIQUE KEY `UK_qf9m08d1bd11csrr3poot0jgd` (`user_id`),
  CONSTRAINT `FKgl6uc7145cqyd47qst0glqwmv` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration_token`
--

LOCK TABLES `user_registration_token` WRITE;
/*!40000 ALTER TABLE `user_registration_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_registration_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21 11:48:37
