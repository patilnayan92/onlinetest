-- MySQL dump 10.13  Distrib 5.7.20, for Linux (i686)
--
-- Host: localhost    Database: onlinetest
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'moderator');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,19),(2,1,20),(3,1,21),(4,1,22),(5,1,23),(6,1,24),(7,1,25),(8,1,26),(9,1,27),(10,1,28),(11,1,29),(12,1,30),(13,1,31),(14,1,32),(15,1,33),(16,1,34),(17,1,35),(18,1,36),(19,1,37),(20,1,38),(21,1,39),(22,1,40),(23,1,41),(24,1,42),(25,1,43),(26,1,44),(27,1,45),(28,1,46),(29,1,47),(30,1,48),(31,1,49),(32,1,50),(33,1,51),(34,1,52),(35,1,53),(36,1,54),(37,1,55),(38,1,56),(39,1,57),(40,1,58),(41,1,59),(42,1,60),(43,1,61),(44,1,62),(45,1,63),(46,1,64),(47,1,65),(48,1,66),(49,1,67),(50,1,68),(51,1,69),(52,1,70),(53,1,71),(54,1,72),(55,1,73),(56,1,74),(57,1,75);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add course',7,'add_course'),(20,'Can change course',7,'change_course'),(21,'Can delete course',7,'delete_course'),(22,'Can add concurrent user',8,'add_concurrentuser'),(23,'Can change concurrent user',8,'change_concurrentuser'),(24,'Can delete concurrent user',8,'delete_concurrentuser'),(25,'Can add profile',9,'add_profile'),(26,'Can change profile',9,'change_profile'),(27,'Can delete profile',9,'delete_profile'),(28,'Can add question',10,'add_question'),(29,'Can change question',10,'change_question'),(30,'Can delete question',10,'delete_question'),(31,'Can add file upload',11,'add_fileupload'),(32,'Can change file upload',11,'change_fileupload'),(33,'Can delete file upload',11,'delete_fileupload'),(34,'Can add answer',12,'add_answer'),(35,'Can change answer',12,'change_answer'),(36,'Can delete answer',12,'delete_answer'),(37,'Can add quiz',13,'add_quiz'),(38,'Can change quiz',13,'change_quiz'),(39,'Can delete quiz',13,'delete_quiz'),(40,'Can add question paper',14,'add_questionpaper'),(41,'Can change question paper',14,'change_questionpaper'),(42,'Can delete question paper',14,'delete_questionpaper'),(43,'Can add question set',15,'add_questionset'),(44,'Can change question set',15,'change_questionset'),(45,'Can delete question set',15,'delete_questionset'),(46,'Can add answer paper',16,'add_answerpaper'),(47,'Can change answer paper',16,'change_answerpaper'),(48,'Can delete answer paper',16,'delete_answerpaper'),(49,'Can add assignment upload',17,'add_assignmentupload'),(50,'Can change assignment upload',17,'change_assignmentupload'),(51,'Can delete assignment upload',17,'delete_assignmentupload'),(52,'Can add test case',18,'add_testcase'),(53,'Can change test case',18,'change_testcase'),(54,'Can delete test case',18,'delete_testcase'),(55,'Can add standard test case',19,'add_standardtestcase'),(56,'Can change standard test case',19,'change_standardtestcase'),(57,'Can delete standard test case',19,'delete_standardtestcase'),(58,'Can add std io based test case',20,'add_stdiobasedtestcase'),(59,'Can change std io based test case',20,'change_stdiobasedtestcase'),(60,'Can delete std io based test case',20,'delete_stdiobasedtestcase'),(61,'Can add mcq test case',21,'add_mcqtestcase'),(62,'Can change mcq test case',21,'change_mcqtestcase'),(63,'Can delete mcq test case',21,'delete_mcqtestcase'),(64,'Can add hook test case',22,'add_hooktestcase'),(65,'Can change hook test case',22,'change_hooktestcase'),(66,'Can delete hook test case',22,'delete_hooktestcase'),(67,'Can add integer test case',23,'add_integertestcase'),(68,'Can change integer test case',23,'change_integertestcase'),(69,'Can delete integer test case',23,'delete_integertestcase'),(70,'Can add string test case',24,'add_stringtestcase'),(71,'Can change string test case',24,'change_stringtestcase'),(72,'Can delete string test case',24,'delete_stringtestcase'),(73,'Can add float test case',25,'add_floattestcase'),(74,'Can change float test case',25,'change_floattestcase'),(75,'Can delete float test case',25,'delete_floattestcase'),(76,'Can add Tag',26,'add_tag'),(77,'Can change Tag',26,'change_tag'),(78,'Can delete Tag',26,'delete_tag'),(79,'Can add Tagged Item',27,'add_taggeditem'),(80,'Can change Tagged Item',27,'change_taggeditem'),(81,'Can delete Tagged Item',27,'delete_taggeditem'),(82,'Can add user social auth',28,'add_usersocialauth'),(83,'Can change user social auth',28,'change_usersocialauth'),(84,'Can delete user social auth',28,'delete_usersocialauth'),(85,'Can add nonce',29,'add_nonce'),(86,'Can change nonce',29,'change_nonce'),(87,'Can delete nonce',29,'delete_nonce'),(88,'Can add association',30,'add_association'),(89,'Can change association',30,'change_association'),(90,'Can delete association',30,'delete_association'),(91,'Can add code',31,'add_code'),(92,'Can change code',31,'change_code'),(93,'Can delete code',31,'delete_code'),(94,'Can add site',32,'add_site'),(95,'Can change site',32,'change_site'),(96,'Can delete site',32,'delete_site');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$jrEbLYIeXXAu$fRyWR2ZCUgXiMkjk5cn/lQXmI0EZFzm99CdWTkhmf9s=','2017-12-02 08:24:45.838944',1,'etonline','Evolet','technology','patilnayan092@gmail.com',1,1,'2017-11-29 05:14:39.000000'),(2,'pbkdf2_sha256$24000$kJyMbDtV9jG0$R7tZNBidU/xXYvJTy9xaLRVrX+z9eDXID91tBbdH+lo=','2017-12-01 06:24:55.561209',0,'yogpat','Yogesh','Patil','astaryog@gmail.com',0,1,'2017-11-29 05:41:49.259487'),(3,'pbkdf2_sha256$24000$5PFeMtFX2gB3$m5hdnh+1XrVdtgaPIJdlz40uxGir+oHa3BCOSb+nLMI=','2017-11-29 06:20:33.622324',0,'mahesh23','Mahesh','babu','mahesh@evolettech.com',0,1,'2017-11-29 06:20:33.127975'),(4,'pbkdf2_sha256$24000$40p9on5HyxVl$CZmRvdzOeC5xw0SQoCoT5J2cqDpETyzZTOlMVwTUXSk=','2017-12-02 06:05:57.673348',0,'nayanpat','Nayan','Patil','niruforyou12@yahoo.com',0,1,'2017-11-29 09:42:21.604763'),(7,'pbkdf2_sha256$24000$I3uP867P7acL$gENgMQxTscPl9ruXU8ifHM26LbS0MY5AFzSjcpzu7fY=','2017-11-30 09:41:03.593498',0,'rohanbabu23','Rohan','Babu','rohanbabu23@gmail.com',0,1,'2017-11-29 11:48:03.526078'),(12,'pbkdf2_sha256$24000$dEIyGS1vckUC$8tpsbYDcoS+LtwXvWg/OJSUiKeaGtX4gGDUUiwd92oA=','2017-12-02 08:05:03.560904',0,'nitinpatil','Nitin','Patil','patilnayan092@yahoo.com',0,1,'2017-12-02 08:05:03.134229'),(13,'pbkdf2_sha256$24000$Fidm7jmthvXO$9XaHpxahCyCw2cdFrZtvy7xK4B6UPPu9qCyYq/Y7RcA=','2017-12-02 08:19:31.603332',0,'sureshp','Nitin','Patil','suresh@gmail.com',0,1,'2017-12-02 08:19:31.065258'),(14,'pbkdf2_sha256$24000$AK4z3pkU2tUM$YkJtYf6d8lcj1OfkUtVTj6tNo5/HXg2MHYdxJALYNPM=','2017-12-02 08:23:32.522587',0,'ravi','Ravi','Patil','raviiipatillll@gmail.com',0,1,'2017-12-02 08:23:32.067757');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64),(65,1,65),(66,1,66),(67,1,67),(68,1,68),(69,1,69),(70,1,70),(71,1,71),(72,1,72),(73,1,73),(74,1,74),(75,1,75);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-11-29 05:17:50.918764','1','etonline',2,'Changed user_permissions.',4,1),(2,'2017-11-29 05:44:30.124124','1','etonline',2,'No fields changed.',4,1),(3,'2017-11-29 05:46:50.754820','1','moderator',2,'No fields changed.',3,1),(4,'2017-11-29 05:47:04.871414','1','etonline',2,'Changed groups.',4,1),(5,'2017-11-29 06:37:18.310610','1','C Programming',2,'Changed students, requests, rejected and teachers.',7,1),(6,'2017-11-29 07:22:38.046516','1','C Programming',2,'Changed requests.',7,1),(7,'2017-11-29 10:43:04.763103','1','C Programming',2,'Changed requests.',7,1),(8,'2017-11-29 11:29:46.423838','5','rohanbabu23',3,'',4,1),(9,'2017-11-29 11:47:16.883644','6','rohanbabu23',3,'',4,1),(10,'2017-11-29 12:06:39.408828','1','etonline',2,'Changed user_permissions.',4,1),(11,'2017-11-29 16:16:39.865694','1','etonline',2,'No fields changed.',4,1),(12,'2017-12-02 07:48:32.944037','10','akshay',3,'',4,1),(13,'2017-12-02 07:48:33.018222','8','akshpatil',3,'',4,1),(14,'2017-12-02 07:48:33.062687','11','axdcad',3,'',4,1),(15,'2017-12-02 07:48:33.161539','9','nitinpatil',3,'',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(30,'default','association'),(31,'default','code'),(29,'default','nonce'),(28,'default','usersocialauth'),(6,'sessions','session'),(32,'sites','site'),(26,'taggit','tag'),(27,'taggit','taggeditem'),(12,'yaksh','answer'),(16,'yaksh','answerpaper'),(17,'yaksh','assignmentupload'),(8,'yaksh','concurrentuser'),(7,'yaksh','course'),(11,'yaksh','fileupload'),(25,'yaksh','floattestcase'),(22,'yaksh','hooktestcase'),(23,'yaksh','integertestcase'),(21,'yaksh','mcqtestcase'),(9,'yaksh','profile'),(10,'yaksh','question'),(14,'yaksh','questionpaper'),(15,'yaksh','questionset'),(13,'yaksh','quiz'),(19,'yaksh','standardtestcase'),(20,'yaksh','stdiobasedtestcase'),(24,'yaksh','stringtestcase'),(18,'yaksh','testcase');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-11-29 05:09:51.254063'),(2,'auth','0001_initial','2017-11-29 05:10:01.229777'),(3,'admin','0001_initial','2017-11-29 05:10:03.213057'),(4,'admin','0002_logentry_remove_auto_add','2017-11-29 05:10:03.363011'),(5,'contenttypes','0002_remove_content_type_name','2017-11-29 05:10:04.712722'),(6,'auth','0002_alter_permission_name_max_length','2017-11-29 05:10:04.982609'),(7,'auth','0003_alter_user_email_max_length','2017-11-29 05:10:05.160978'),(8,'auth','0004_alter_user_username_opts','2017-11-29 05:10:05.222311'),(9,'auth','0005_alter_user_last_login_null','2017-11-29 05:10:06.189144'),(10,'auth','0006_require_contenttypes_0002','2017-11-29 05:10:06.242389'),(11,'auth','0007_alter_validators_add_error_messages','2017-11-29 05:10:06.307742'),(12,'default','0001_initial','2017-11-29 05:10:11.951704'),(13,'default','0002_add_related_name','2017-11-29 05:10:13.366275'),(14,'default','0003_alter_email_max_length','2017-11-29 05:10:13.903354'),(15,'default','0004_auto_20160423_0400','2017-11-29 05:10:13.961514'),(16,'sessions','0001_initial','2017-11-29 05:10:14.678441'),(17,'taggit','0001_initial','2017-11-29 05:10:19.222394'),(18,'taggit','0002_auto_20150616_2121','2017-11-29 05:10:20.314367'),(19,'yaksh','0001_initial','2017-11-29 05:11:49.825778'),(20,'yaksh','0002_questionpaper_fixed_question_order','2017-11-29 05:11:51.673044'),(21,'yaksh','0003_auto_20170321_0917','2017-11-29 05:11:57.734800'),(22,'yaksh','0004_auto_20170331_0632','2017-11-29 05:12:00.077965'),(23,'yaksh','0005_auto_20170410_1024','2017-11-29 05:12:03.387217'),(24,'yaksh','0006_release_0_6_0','2017-11-29 05:12:08.476550'),(25,'yaksh','0007_alter_profile_activation_key','2017-11-29 05:12:08.806762'),(26,'yaksh','0008_release_0_7_0','2017-11-29 05:12:11.172128'),(27,'yaksh','0009_student','2017-11-29 05:12:11.819157'),(28,'sites','0001_initial','2017-11-30 10:00:49.758489'),(29,'sites','0002_alter_domain_unique','2017-11-30 10:00:50.306900');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_c1336794` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (1,'C','c'),(2,'Prgramming','prgramming'),(3,'Input Output Declaration','input-output-declaration'),(4,'Input Output Declaration1','input-output-declaration1'),(5,'Input Output Declaration2','input-output-declaration2'),(6,'Input Output Declaration3','input-output-declaration3'),(7,'Preprocessor','preprocessor'),(14,'Files','files'),(15,'C Prgramming','c-prgramming'),(16,'Programming','programming'),(17,'Python','python'),(18,'p','p');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_af31437c` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_tagged_content_type_id_9957a03c_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
INSERT INTO `taggit_taggeditem` VALUES (1,1,10,1),(2,1,10,2),(3,1,10,3),(13,5,10,1),(14,5,10,2),(15,5,10,7),(22,3,10,1),(23,3,10,2),(24,3,10,5),(25,2,10,1),(26,2,10,2),(27,2,10,4),(28,4,10,1),(29,4,10,2),(30,4,10,6),(31,8,10,1),(32,8,10,2),(33,9,10,1),(34,9,10,2),(35,10,10,1),(36,10,10,2),(37,11,10,1),(38,11,10,2),(39,12,10,1),(40,12,10,2),(41,13,10,1),(42,13,10,2),(43,14,10,1),(44,14,10,2),(45,15,10,1),(46,15,10,2),(55,16,10,14),(56,16,10,15),(65,17,10,16),(66,17,10,1),(75,18,10,16),(76,18,10,1),(81,20,10,17),(86,21,10,17),(91,22,10,17),(96,23,10,17),(102,24,10,17),(107,25,10,17),(112,26,10,17),(117,27,10,17),(122,28,10,17);
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_answer`
--

DROP TABLE IF EXISTS `yaksh_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` longtext,
  `error` longtext NOT NULL,
  `marks` double NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `skipped` tinyint(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `yaksh_answer_7aa0f6ee` (`question_id`),
  CONSTRAINT `yaksh_answer_question_id_19f505cd_fk_yaksh_question_id` FOREIGN KEY (`question_id`) REFERENCES `yaksh_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_answer`
--

LOCK TABLES `yaksh_answer` WRITE;
/*!40000 ALTER TABLE `yaksh_answer` DISABLE KEYS */;
INSERT INTO `yaksh_answer` VALUES (1,'14','[\"Incorrect answer\"]',0,0,0,4),(2,'20','[\"Correct answer\"]',2,1,0,5),(3,'4','[\"Correct answer\"]',2,1,0,1),(4,'8','[]',0,0,0,2),(5,'12','[]',0,0,0,3),(6,'15','[\"Incorrect answer\"]',0,0,0,4),(7,'8','[\"Correct answer\"]',2,1,0,2),(8,'20','[\"Correct answer\"]',2,1,0,5),(9,'4','[\"Correct answer\"]',2,1,0,1),(10,'30','[\"Correct answer\"]',1,1,0,10),(11,'41','[\"Correct answer\"]',2,1,0,13),(12,'38','[\"Incorrect answer\"]',0,0,0,12),(13,'27','[\"Incorrect answer\"]',0,0,0,9),(14,'46','[\"Incorrect answer\"]',0,0,0,14),(15,'52','[\"Correct answer\"]',2,1,0,15),(16,'23','[\"Incorrect answer\"]',0,0,0,8),(17,'33','[\"Incorrect answer\"]',0,0,0,11),(18,'10','[\"Correct answer\"]',2,1,0,3),(19,'4','[\"Correct answer\"]',2,1,0,1),(20,'23','[\"Incorrect answer\"]',0,0,0,8),(21,'39','[\"Incorrect answer\"]',0,0,0,12),(22,'27','[\"Incorrect answer\"]',0,0,0,9),(23,'52','[\"Correct answer\"]',2,1,0,15),(24,'19','[\"Incorrect answer\"]',0,0,0,5),(25,'30','[\"Correct answer\"]',1,1,0,10),(26,'10','[\"Correct answer\"]',2,1,0,3),(27,'46','[\"Incorrect answer\"]',0,0,0,14),(28,'41','[\"Correct answer\"]',2,1,0,13),(29,'33','[\"Incorrect answer\"]',0,0,0,11),(30,'14','[\"Incorrect answer\"]',0,0,0,4),(31,'8','[\"Correct answer\"]',2,1,0,2);
/*!40000 ALTER TABLE `yaksh_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_answerpaper`
--

DROP TABLE IF EXISTS `yaksh_answerpaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_answerpaper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attempt_number` int(11) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `user_ip` varchar(15) NOT NULL,
  `comments` longtext NOT NULL,
  `marks_obtained` double DEFAULT NULL,
  `percent` double DEFAULT NULL,
  `passed` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `question_paper_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `questions_order` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `yaksh_answerpaper_5490acc7` (`question_paper_id`),
  KEY `yaksh_answerpaper_e8701ad4` (`user_id`),
  CONSTRAINT `yaksh_answe_question_paper_id_fce5c7b3_fk_yaksh_questionpaper_id` FOREIGN KEY (`question_paper_id`) REFERENCES `yaksh_questionpaper` (`id`),
  CONSTRAINT `yaksh_answerpaper_user_id_5f25ac92_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_answerpaper`
--

LOCK TABLES `yaksh_answerpaper` WRITE;
/*!40000 ALTER TABLE `yaksh_answerpaper` DISABLE KEYS */;
INSERT INTO `yaksh_answerpaper` VALUES (1,1,'2017-11-29 07:32:38.246623','2017-11-29 07:34:53.287700','127.0.0.1','',4,40,1,'completed',1,2,'4,5,1,2,3'),(2,2,'2017-12-01 06:25:08.351229','2017-12-01 06:28:24.396441','127.0.0.1','',13,59.09,1,'completed',1,2,'4,2,5,1,10,13,12,9,14,15,8,11,3'),(3,1,'2017-12-01 06:49:18.720609','2017-12-01 06:50:23.090567','127.0.0.1','',11,50,1,'completed',1,4,'1,8,12,9,15,5,10,3,14,13,11,4,2');
/*!40000 ALTER TABLE `yaksh_answerpaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_answerpaper_answers`
--

DROP TABLE IF EXISTS `yaksh_answerpaper_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_answerpaper_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answerpaper_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_answerpaper_answers_answerpaper_id_bd291732_uniq` (`answerpaper_id`,`answer_id`),
  KEY `yaksh_answerpaper_answers_answer_id_9557db02_fk_yaksh_answer_id` (`answer_id`),
  CONSTRAINT `yaksh_answerpape_answerpaper_id_55f1a415_fk_yaksh_answerpaper_id` FOREIGN KEY (`answerpaper_id`) REFERENCES `yaksh_answerpaper` (`id`),
  CONSTRAINT `yaksh_answerpaper_answers_answer_id_9557db02_fk_yaksh_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `yaksh_answer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_answerpaper_answers`
--

LOCK TABLES `yaksh_answerpaper_answers` WRITE;
/*!40000 ALTER TABLE `yaksh_answerpaper_answers` DISABLE KEYS */;
INSERT INTO `yaksh_answerpaper_answers` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,3,19),(20,3,20),(21,3,21),(22,3,22),(23,3,23),(24,3,24),(25,3,25),(26,3,26),(27,3,27),(28,3,28),(29,3,29),(30,3,30),(31,3,31);
/*!40000 ALTER TABLE `yaksh_answerpaper_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_answerpaper_questions`
--

DROP TABLE IF EXISTS `yaksh_answerpaper_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_answerpaper_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answerpaper_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_answerpaper_questions_answerpaper_id_c2ad2c8d_uniq` (`answerpaper_id`,`question_id`),
  KEY `yaksh_answerpaper_ques_question_id_7283526b_fk_yaksh_question_id` (`question_id`),
  CONSTRAINT `yaksh_answerpape_answerpaper_id_2c2cabda_fk_yaksh_answerpaper_id` FOREIGN KEY (`answerpaper_id`) REFERENCES `yaksh_answerpaper` (`id`),
  CONSTRAINT `yaksh_answerpaper_ques_question_id_7283526b_fk_yaksh_question_id` FOREIGN KEY (`question_id`) REFERENCES `yaksh_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_answerpaper_questions`
--

LOCK TABLES `yaksh_answerpaper_questions` WRITE;
/*!40000 ALTER TABLE `yaksh_answerpaper_questions` DISABLE KEYS */;
INSERT INTO `yaksh_answerpaper_questions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,2,8),(12,2,9),(13,2,10),(14,2,11),(15,2,12),(16,2,13),(17,2,14),(18,2,15),(19,3,1),(20,3,2),(21,3,3),(22,3,4),(23,3,5),(24,3,8),(25,3,9),(26,3,10),(27,3,11),(28,3,12),(29,3,13),(30,3,14),(31,3,15);
/*!40000 ALTER TABLE `yaksh_answerpaper_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_answerpaper_questions_answered`
--

DROP TABLE IF EXISTS `yaksh_answerpaper_questions_answered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_answerpaper_questions_answered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answerpaper_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_answerpaper_questions_answere_answerpaper_id_aba67f63_uniq` (`answerpaper_id`,`question_id`),
  KEY `yaksh_answerpaper_ques_question_id_b6ab9bec_fk_yaksh_question_id` (`question_id`),
  CONSTRAINT `yaksh_answerpape_answerpaper_id_f92c65ea_fk_yaksh_answerpaper_id` FOREIGN KEY (`answerpaper_id`) REFERENCES `yaksh_answerpaper` (`id`),
  CONSTRAINT `yaksh_answerpaper_ques_question_id_b6ab9bec_fk_yaksh_question_id` FOREIGN KEY (`question_id`) REFERENCES `yaksh_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_answerpaper_questions_answered`
--

LOCK TABLES `yaksh_answerpaper_questions_answered` WRITE;
/*!40000 ALTER TABLE `yaksh_answerpaper_questions_answered` DISABLE KEYS */;
INSERT INTO `yaksh_answerpaper_questions_answered` VALUES (3,1,1),(1,1,4),(2,1,5),(7,2,1),(5,2,2),(16,2,3),(4,2,4),(6,2,5),(14,2,8),(11,2,9),(8,2,10),(15,2,11),(10,2,12),(9,2,13),(12,2,14),(13,2,15),(17,3,1),(29,3,2),(24,3,3),(28,3,4),(22,3,5),(18,3,8),(20,3,9),(23,3,10),(27,3,11),(19,3,12),(26,3,13),(25,3,14),(21,3,15);
/*!40000 ALTER TABLE `yaksh_answerpaper_questions_answered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_answerpaper_questions_unanswered`
--

DROP TABLE IF EXISTS `yaksh_answerpaper_questions_unanswered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_answerpaper_questions_unanswered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answerpaper_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_answerpaper_questions_unanswe_answerpaper_id_e83be348_uniq` (`answerpaper_id`,`question_id`),
  KEY `yaksh_answerpaper_ques_question_id_e161b286_fk_yaksh_question_id` (`question_id`),
  CONSTRAINT `yaksh_answerpape_answerpaper_id_4d5e1973_fk_yaksh_answerpaper_id` FOREIGN KEY (`answerpaper_id`) REFERENCES `yaksh_answerpaper` (`id`),
  CONSTRAINT `yaksh_answerpaper_ques_question_id_e161b286_fk_yaksh_question_id` FOREIGN KEY (`question_id`) REFERENCES `yaksh_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_answerpaper_questions_unanswered`
--

LOCK TABLES `yaksh_answerpaper_questions_unanswered` WRITE;
/*!40000 ALTER TABLE `yaksh_answerpaper_questions_unanswered` DISABLE KEYS */;
INSERT INTO `yaksh_answerpaper_questions_unanswered` VALUES (2,1,2),(3,1,3);
/*!40000 ALTER TABLE `yaksh_answerpaper_questions_unanswered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_assignmentupload`
--

DROP TABLE IF EXISTS `yaksh_assignmentupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_assignmentupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assignmentFile` varchar(100) NOT NULL,
  `assignmentQuestion_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_paper_id` int(11),
  PRIMARY KEY (`id`),
  KEY `yaksh_assignmentupload_8eabe5d4` (`assignmentQuestion_id`),
  KEY `yaksh_assignmentupload_e8701ad4` (`user_id`),
  KEY `yaksh_assignmentupload_5490acc7` (`question_paper_id`),
  CONSTRAINT `yaksh_assig_question_paper_id_c65a6e4f_fk_yaksh_questionpaper_id` FOREIGN KEY (`question_paper_id`) REFERENCES `yaksh_questionpaper` (`id`),
  CONSTRAINT `yaksh_assign_assignmentQuestion_id_3cefc133_fk_yaksh_question_id` FOREIGN KEY (`assignmentQuestion_id`) REFERENCES `yaksh_question` (`id`),
  CONSTRAINT `yaksh_assignmentupload_user_id_ab2f78b2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_assignmentupload`
--

LOCK TABLES `yaksh_assignmentupload` WRITE;
/*!40000 ALTER TABLE `yaksh_assignmentupload` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_assignmentupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_concurrentuser`
--

DROP TABLE IF EXISTS `yaksh_concurrentuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_concurrentuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_key` varchar(40) NOT NULL,
  `concurrent_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `concurrent_user_id` (`concurrent_user_id`),
  CONSTRAINT `yaksh_concurrentuser_concurrent_user_id_114ae31b_fk_auth_user_id` FOREIGN KEY (`concurrent_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_concurrentuser`
--

LOCK TABLES `yaksh_concurrentuser` WRITE;
/*!40000 ALTER TABLE `yaksh_concurrentuser` DISABLE KEYS */;
INSERT INTO `yaksh_concurrentuser` VALUES (1,'19rripmltnuv3gp2icl173mpr6kxg1z0',1),(2,'hkse7jc1lwkh1e04rwgil9s6ht6quiql',2),(3,'thzqy5zzz3q320apbzrfayxown1n82ey',3),(4,'51qs8ocb46s1re7flz0e9fnfu2iuy0h7',4),(7,'wnte4li990hcqb1nhfmbsamddywprlqt',7),(11,'6ivs4vh6x4ov2tvxw922g74u01jr11y7',12),(12,'n4uw3ija5eule8c4avxskbejdr3uy48c',13),(13,'rphguusburvwpaty29s5vgj8mmggurda',14);
/*!40000 ALTER TABLE `yaksh_concurrentuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_course`
--

DROP TABLE IF EXISTS `yaksh_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `enrollment` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `is_trial` tinyint(1) NOT NULL,
  `instructions` longtext,
  `creator_id` int(11) NOT NULL,
  `end_enroll_time` datetime(6),
  `start_enroll_time` datetime(6),
  `code` varchar(128),
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `yaksh_course_creator_id_68d4890e_fk_auth_user_id` (`creator_id`),
  CONSTRAINT `yaksh_course_creator_id_68d4890e_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_course`
--

LOCK TABLES `yaksh_course` WRITE;
/*!40000 ALTER TABLE `yaksh_course` DISABLE KEYS */;
INSERT INTO `yaksh_course` VALUES (1,'C Programming','default',1,'2017-11-29 06:33:00.085710',0,'',1,'2199-01-01 00:00:00.000000','2017-11-29 06:32:32.000000','CP001',1);
/*!40000 ALTER TABLE `yaksh_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_course_rejected`
--

DROP TABLE IF EXISTS `yaksh_course_rejected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_course_rejected` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_course_rejected_course_id_7af05e57_uniq` (`course_id`,`user_id`),
  KEY `yaksh_course_rejected_user_id_ad122145_fk_auth_user_id` (`user_id`),
  CONSTRAINT `yaksh_course_rejected_course_id_1fd1dbed_fk_yaksh_course_id` FOREIGN KEY (`course_id`) REFERENCES `yaksh_course` (`id`),
  CONSTRAINT `yaksh_course_rejected_user_id_ad122145_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_course_rejected`
--

LOCK TABLES `yaksh_course_rejected` WRITE;
/*!40000 ALTER TABLE `yaksh_course_rejected` DISABLE KEYS */;
INSERT INTO `yaksh_course_rejected` VALUES (1,1,1);
/*!40000 ALTER TABLE `yaksh_course_rejected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_course_requests`
--

DROP TABLE IF EXISTS `yaksh_course_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_course_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_course_requests_course_id_78e5f15e_uniq` (`course_id`,`user_id`),
  KEY `yaksh_course_requests_user_id_4fb8a3bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `yaksh_course_requests_course_id_0dd57f91_fk_yaksh_course_id` FOREIGN KEY (`course_id`) REFERENCES `yaksh_course` (`id`),
  CONSTRAINT `yaksh_course_requests_user_id_4fb8a3bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_course_requests`
--

LOCK TABLES `yaksh_course_requests` WRITE;
/*!40000 ALTER TABLE `yaksh_course_requests` DISABLE KEYS */;
INSERT INTO `yaksh_course_requests` VALUES (5,1,3);
/*!40000 ALTER TABLE `yaksh_course_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_course_students`
--

DROP TABLE IF EXISTS `yaksh_course_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_course_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_course_students_course_id_3e93a02c_uniq` (`course_id`,`user_id`),
  KEY `yaksh_course_students_user_id_86814858_fk_auth_user_id` (`user_id`),
  CONSTRAINT `yaksh_course_students_course_id_e14f0663_fk_yaksh_course_id` FOREIGN KEY (`course_id`) REFERENCES `yaksh_course` (`id`),
  CONSTRAINT `yaksh_course_students_user_id_86814858_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_course_students`
--

LOCK TABLES `yaksh_course_students` WRITE;
/*!40000 ALTER TABLE `yaksh_course_students` DISABLE KEYS */;
INSERT INTO `yaksh_course_students` VALUES (1,1,2),(2,1,3),(3,1,4);
/*!40000 ALTER TABLE `yaksh_course_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_course_teachers`
--

DROP TABLE IF EXISTS `yaksh_course_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_course_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_course_teachers_course_id_14aca246_uniq` (`course_id`,`user_id`),
  KEY `yaksh_course_teachers_user_id_b606996a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `yaksh_course_teachers_course_id_420c264e_fk_yaksh_course_id` FOREIGN KEY (`course_id`) REFERENCES `yaksh_course` (`id`),
  CONSTRAINT `yaksh_course_teachers_user_id_b606996a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_course_teachers`
--

LOCK TABLES `yaksh_course_teachers` WRITE;
/*!40000 ALTER TABLE `yaksh_course_teachers` DISABLE KEYS */;
INSERT INTO `yaksh_course_teachers` VALUES (1,1,1);
/*!40000 ALTER TABLE `yaksh_course_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_fileupload`
--

DROP TABLE IF EXISTS `yaksh_fileupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_fileupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `extract` tinyint(1) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `yaksh_fileupload_7aa0f6ee` (`question_id`),
  CONSTRAINT `yaksh_fileupload_question_id_e676e493_fk_yaksh_question_id` FOREIGN KEY (`question_id`) REFERENCES `yaksh_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_fileupload`
--

LOCK TABLES `yaksh_fileupload` WRITE;
/*!40000 ALTER TABLE `yaksh_fileupload` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_fileupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_floattestcase`
--

DROP TABLE IF EXISTS `yaksh_floattestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_floattestcase` (
  `testcase_ptr_id` int(11) NOT NULL,
  `correct` double NOT NULL,
  `error_margin` double DEFAULT NULL,
  PRIMARY KEY (`testcase_ptr_id`),
  CONSTRAINT `yaksh_floattestcas_testcase_ptr_id_7809c319_fk_yaksh_testcase_id` FOREIGN KEY (`testcase_ptr_id`) REFERENCES `yaksh_testcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_floattestcase`
--

LOCK TABLES `yaksh_floattestcase` WRITE;
/*!40000 ALTER TABLE `yaksh_floattestcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_floattestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_hooktestcase`
--

DROP TABLE IF EXISTS `yaksh_hooktestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_hooktestcase` (
  `testcase_ptr_id` int(11) NOT NULL,
  `hook_code` longtext NOT NULL,
  `weight` double NOT NULL,
  PRIMARY KEY (`testcase_ptr_id`),
  CONSTRAINT `yaksh_hooktestcase_testcase_ptr_id_ad38a8d2_fk_yaksh_testcase_id` FOREIGN KEY (`testcase_ptr_id`) REFERENCES `yaksh_testcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_hooktestcase`
--

LOCK TABLES `yaksh_hooktestcase` WRITE;
/*!40000 ALTER TABLE `yaksh_hooktestcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_hooktestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_integertestcase`
--

DROP TABLE IF EXISTS `yaksh_integertestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_integertestcase` (
  `testcase_ptr_id` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  PRIMARY KEY (`testcase_ptr_id`),
  CONSTRAINT `yaksh_integertestc_testcase_ptr_id_80bfe085_fk_yaksh_testcase_id` FOREIGN KEY (`testcase_ptr_id`) REFERENCES `yaksh_testcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_integertestcase`
--

LOCK TABLES `yaksh_integertestcase` WRITE;
/*!40000 ALTER TABLE `yaksh_integertestcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_integertestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_mcqtestcase`
--

DROP TABLE IF EXISTS `yaksh_mcqtestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_mcqtestcase` (
  `testcase_ptr_id` int(11) NOT NULL,
  `options` longtext NOT NULL,
  `correct` tinyint(1) NOT NULL,
  PRIMARY KEY (`testcase_ptr_id`),
  CONSTRAINT `yaksh_mcqtestcase_testcase_ptr_id_9726d31a_fk_yaksh_testcase_id` FOREIGN KEY (`testcase_ptr_id`) REFERENCES `yaksh_testcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_mcqtestcase`
--

LOCK TABLES `yaksh_mcqtestcase` WRITE;
/*!40000 ALTER TABLE `yaksh_mcqtestcase` DISABLE KEYS */;
INSERT INTO `yaksh_mcqtestcase` VALUES (1,'0,0,0',0),(2,'Garbage,Garbage,Garbage',0),(3,'Garbage,Garbage,0',0),(4,'0,0,Gargabe',1),(5,'34',0),(6,'290',0),(7,'Garbage',0),(8,'ERROR',1),(9,'int student-age;',0),(10,'int student_age;',1),(11,'int -age;',0),(12,'int _age;',0),(13,'num is an unsigned integer.',1),(14,'num is an unsigned character.',0),(15,'num is an unsigned float.',0),(16,'It’s an invalid declaration.',0),(17,'During editing',0),(18,'During linking',0),(19,'During execution',0),(20,'During preprocessing',1),(21,'signed short',0),(22,'unsigned short',1),(23,'long',0),(24,'int',0),(25,'From char to int',0),(26,'From float to char pointer',1),(27,'From negative int to char',0),(28,'From double to char',0),(29,'do_while',0),(30,'if_else',1),(31,'for',0),(32,'while',0),(33,'Before continue after continue',0),(34,'Before Continue',0),(35,'After Continue',0),(36,'Compile time error',1),(37,'Whole source file in which it is defined',0),(38,'From the point of declaration to the end of the file in which it is defined',0),(39,'Any source file in a program',0),(40,'From the point of declaration to the end of the file being compiled',1),(41,'Yes',1),(42,'No',0),(43,'Depends on the compiler',0),(44,'Depends on the standard',0),(45,'True',1),(46,'No',0),(47,'Depends on compiler',0),(48,'Depends on standard',0),(49,'Matrix-Multiplication',0),(50,'Minimum Spanning Tree',0),(51,'Finding connectivity between nodes',0),(52,'All of the mentioned',1),(53,'reading and writing',1),(54,'reading and writing new content',0),(55,'only for reading',0),(56,'it works only for directories',0),(57,'C++ C++',0),(58,'C++ ++',0),(59,'++ ++',0),(60,'Compile error',1),(61,'printf(\"%f %lf\", a, b);',1),(62,'printf(\"%f %f\", a, b);',0),(63,'printf(\"%Lf %Lf\", a, b);',0),(64,'printf(\"%f %Lf\", a, b);',0),(65,'type \'int\'',0),(66,'type \'type\'',1),(67,'Error',0),(68,'0',0),(69,'Error',0),(70,'None',0),(71,'abcd',1),(72,'[‘a’,’b’,’c’,’d’]',0),(73,'A',1),(74,'B',0),(75,'a',0),(76,'Error',0),(77,'48',1),(78,'14',0),(79,'64',0),(80,'None of the above',0),(81,'Module',0),(82,'Class',0),(83,'Another function',0),(84,'Method',1),(85,'Id returns the identity of the object',1),(86,'Every object doesn’t have a unique id',0),(87,'All of the mentioned',0),(88,'None of the mentioned',0),(89,'{‘animal’: ‘horses’, ‘verb’: ‘are’, ‘adjective’: ‘fast’}',1),(90,'(‘horses’, ‘are’, ‘fast’)',0),(91,'‘horses are fast’',0),(92,'‘are’',0),(93,'[3, 4, 5, 20, 5, 25, 1, 3]',0),(94,'[1, 3, 3, 4, 5, 5, 20, 25]',0),(95,'[3, 5, 20, 5, 25, 1, 3]',1),(96,'[1, 3, 4, 5, 20, 5, 25]',0),(97,'the current time',0),(98,'the current time in milliseconds',0),(99,'the current time in milliseconds since midnight',0),(100,'the current time in milliseconds since midnight, January 1, 1970 GMT (the Unix time)',1);
/*!40000 ALTER TABLE `yaksh_mcqtestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_profile`
--

DROP TABLE IF EXISTS `yaksh_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roll_number` varchar(20) NOT NULL,
  `institute` varchar(128) NOT NULL,
  `department` varchar(64) NOT NULL,
  `position` varchar(64) NOT NULL,
  `timezone` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(255) DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL,
  `key_expiry_time` datetime(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `yaksh_profile_user_id_5439feeb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_profile`
--

LOCK TABLES `yaksh_profile` WRITE;
/*!40000 ALTER TABLE `yaksh_profile` DISABLE KEYS */;
INSERT INTO `yaksh_profile` VALUES (1,'ET001','ET','Tech','Admin','Asia/Kolkata',1,NULL,0,NULL),(2,'ABAB26','Atharva','E&TC','Student','Asia/Kolkata',2,NULL,1,NULL),(3,'ET001','Evolet','Tech','Technical','Asia/Kolkata',3,NULL,1,NULL),(4,'12','D N Patel COE','Computer Science','Student','Asia/Kolkata',4,NULL,1,NULL),(7,'ET012','VTU','Computer Science','Teacher','Asia/Kolkata',7,NULL,1,NULL),(12,'222','D N Patel COE','Computer Science','Student','Asia/Kolkata',12,NULL,1,NULL),(13,'11','D N Patel COE','Computer Science','Student','Asia/Kolkata',13,NULL,1,NULL),(14,'accacc','nagpur univercity','electrical','student','Asia/Kolkata',14,NULL,1,NULL);
/*!40000 ALTER TABLE `yaksh_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_question`
--

DROP TABLE IF EXISTS `yaksh_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `points` double NOT NULL,
  `language` varchar(24) NOT NULL,
  `type` varchar(24) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `snippet` longtext NOT NULL,
  `partial_grading` tinyint(1) NOT NULL,
  `grade_assignment_upload` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `yaksh_question_user_id_4de97c4f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `yaksh_question_user_id_4de97c4f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_question`
--

LOCK TABLES `yaksh_question` WRITE;
/*!40000 ALTER TABLE `yaksh_question` DISABLE KEYS */;
INSERT INTO `yaksh_question` VALUES (1,'C - I\\O Declaration','What will be the output of following program ?<br>\r\n#include <stdio.h><br>int main(){<br>static char a;<br>static long b;<br>int c;<br>\r\n  printf(\"%d,%d,%d\",a,b,c);<br>return 0;<br> }',2,'c','mcq',0,'',0,0,1),(2,'C - I\\O Declaration1','What will be the output of following program ? <br>#include <stdio.h><br>void main() { <br> unsigned char c=290; <br> printf(\"%d\",c); <br>  }',2,'c','mcq',0,'',0,0,1),(3,'C - I\\O Declaration2','Which is the valid identifier (variable name) to store student’s age?',2,'c','mcq',0,'',0,0,1),(4,'C - I\\O Declaration3','What type of declaration is it?\r\nunsigned num;',2,'c','mcq',0,'',0,0,1),(5,'C - Preprocessor','In which stage the following code.<br>\r\n#include<stdio.h><br>gets replaced by the contents of the file stdio.h<br>',2,'c','mcq',0,'',0,0,1),(6,'C - Add 3 numbers','Write a program to add 3 numbers. \r\n<br>\r\nFunction Name is to be called <b>add</b>\r\n<br>\r\n<br><br>\r\n<pre>\r\n<b>Note:</b><i> You do not have to print anything, neither you have to make the function call. \r\nJust define the function to perform the required operation, return the output & click on check answer.\r\nAlso, note that the function name should exactly be as mentioned above.</i>\r\n</pre>',2,'c','code',0,'',0,0,1),(8,'C - Data Types','Which data type is most suitable for storing a number 65000 in a 32-bit system?',1,'c','mcq',1,'',0,0,1),(9,'C - Type Conversion','Which type conversion is NOT accepted?',1,'c','mcq',1,'',0,0,1),(10,'C - Break Statement','The keyword ‘break’ cannot be simply used within',1,'c','mcq',1,'',0,0,1),(11,'C - Break Statement','What is the output of this C code?<br>\r\n#include (stdio.h)  <br>\r\n    int main()<br>\r\n    {<br>\r\n        printf(\"before continue \");<br>\r\n        continue;<br>\r\n        printf(\"after continue\\n\");<br>\r\n    } <br>',1,'c','mcq',1,'',0,0,1),(12,'C - Functions','What is the scope of a function?',2,'c','mcq',1,'',0,0,1),(13,'C - FIles','Can function definition be present in header files?',2,'c','mcq',1,'',0,0,1),(14,'C - Functions','functions can return enumeration constants in c?',2,'c','mcq',1,'',0,0,1),(15,'C - Array','Applications of multidimensional array are?',2,'c','mcq',1,'',0,0,1),(16,'C - FIles','Function fopen() with the mode \"r+\" tries to open the file for __',2,'c','mcq',1,'',0,0,1),(17,'C - Output','What is the output of the following program?<br> \r\n#include<stdio.h><br> \r\n\r\nvoid main()<br> \r\n{<br>\r\n   char s[] = \"C++\";<br>\r\n   \r\n   printf(\"%s \",s);<br>\r\n   s++;<br>\r\n   printf(\"%s\",s);<br>\r\n}<br>',1,'c','mcq',1,'',0,0,1),(18,'C - Prints','Which printf() statement will you use to print out a (float value) and b (double value)?<br>\r\nFloat a = 3.14;<br><br>\r\n\r\nDouble b = 3.14;',1,'c','mcq',1,'',0,0,1),(19,'','',1,'','',1,'',0,0,1),(20,'Python - Finction','What will be the output of the following code :<br>\r\nprint type(type(int))',2,'python','mcq',1,'',0,0,1),(21,'Python - Finction','What is the output of the following code :<br> \r\nL = [\'a\',\'b\',\'c\',\'d\']<br> \r\nprint \"\".join(L)',2,'python','mcq',1,'',0,0,1),(22,'Python - Function','What is the output of the following segment :<br> \r\nchr(ord(\'A\'))',2,'python','mcq',1,'',0,0,1),(23,'Python - Function','What is the output of the following program :<br> \r\ny = 8<br> \r\nz = lambda x : x * y<br> \r\nprint z(6)',2,'python','mcq',1,'',0,0,1),(24,'Python - Function','What is called when a function is defined inside a class?',2,'python','mcq',1,'',0,0,1),(25,'Python - Function','Which of the following is the use of id() function in python?',2,'python','mcq',1,'',0,0,1),(26,'Python - Function','What is the output of the following program: <br><br>  import re<br>\r\nsentence = \'horses are fast\'<br> \r\nregex = re.compile(\'(?P<animal>\\w+) (?P<verb>\\w+) (?P<adjective>\\w+)\')<br> \r\nmatched = re.search(regex, sentence)<br> \r\nprint(matched.groupdict())',2,'python','mcq',1,'',0,0,1),(27,'Python - Function','Suppose list1 is [3, 4, 5, 20, 5, 25, 1, 3], what is list1 after list1.pop(1)?',2,'python','mcq',1,'',0,0,1),(28,'Python - Function','time.time() returns ________',2,'python','mcq',1,'',0,0,1);
/*!40000 ALTER TABLE `yaksh_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_questionpaper`
--

DROP TABLE IF EXISTS `yaksh_questionpaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_questionpaper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shuffle_questions` tinyint(1) NOT NULL,
  `total_marks` double NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `fixed_question_order` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `yaksh_questionpaper_baedd54c` (`quiz_id`),
  CONSTRAINT `yaksh_questionpaper_quiz_id_0cdf5e64_fk_yaksh_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `yaksh_quiz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_questionpaper`
--

LOCK TABLES `yaksh_questionpaper` WRITE;
/*!40000 ALTER TABLE `yaksh_questionpaper` DISABLE KEYS */;
INSERT INTO `yaksh_questionpaper` VALUES (1,1,22,1,'5,4,3,2,1,11,10,9,8,15,14,13,12');
/*!40000 ALTER TABLE `yaksh_questionpaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_questionpaper_fixed_questions`
--

DROP TABLE IF EXISTS `yaksh_questionpaper_fixed_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_questionpaper_fixed_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionpaper_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_questionpaper_fixed_questio_questionpaper_id_6bd98573_uniq` (`questionpaper_id`,`question_id`),
  KEY `yaksh_questionpaper_fi_question_id_59ce8e35_fk_yaksh_question_id` (`question_id`),
  CONSTRAINT `yaksh_questi_questionpaper_id_dd92e597_fk_yaksh_questionpaper_id` FOREIGN KEY (`questionpaper_id`) REFERENCES `yaksh_questionpaper` (`id`),
  CONSTRAINT `yaksh_questionpaper_fi_question_id_59ce8e35_fk_yaksh_question_id` FOREIGN KEY (`question_id`) REFERENCES `yaksh_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_questionpaper_fixed_questions`
--

LOCK TABLES `yaksh_questionpaper_fixed_questions` WRITE;
/*!40000 ALTER TABLE `yaksh_questionpaper_fixed_questions` DISABLE KEYS */;
INSERT INTO `yaksh_questionpaper_fixed_questions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,8),(7,1,9),(8,1,10),(9,1,11),(10,1,12),(11,1,13),(12,1,14),(13,1,15);
/*!40000 ALTER TABLE `yaksh_questionpaper_fixed_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_questionpaper_random_questions`
--

DROP TABLE IF EXISTS `yaksh_questionpaper_random_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_questionpaper_random_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionpaper_id` int(11) NOT NULL,
  `questionset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_questionpaper_random_questi_questionpaper_id_71baf45e_uniq` (`questionpaper_id`,`questionset_id`),
  KEY `yaksh_questionpa_questionset_id_cba8dcbc_fk_yaksh_questionset_id` (`questionset_id`),
  CONSTRAINT `yaksh_questi_questionpaper_id_5aef03eb_fk_yaksh_questionpaper_id` FOREIGN KEY (`questionpaper_id`) REFERENCES `yaksh_questionpaper` (`id`),
  CONSTRAINT `yaksh_questionpa_questionset_id_cba8dcbc_fk_yaksh_questionset_id` FOREIGN KEY (`questionset_id`) REFERENCES `yaksh_questionset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_questionpaper_random_questions`
--

LOCK TABLES `yaksh_questionpaper_random_questions` WRITE;
/*!40000 ALTER TABLE `yaksh_questionpaper_random_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_questionpaper_random_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_questionset`
--

DROP TABLE IF EXISTS `yaksh_questionset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_questionset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marks` double NOT NULL,
  `num_questions` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_questionset`
--

LOCK TABLES `yaksh_questionset` WRITE;
/*!40000 ALTER TABLE `yaksh_questionset` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_questionset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_questionset_questions`
--

DROP TABLE IF EXISTS `yaksh_questionset_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_questionset_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionset_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaksh_questionset_questions_questionset_id_f4f9fe1e_uniq` (`questionset_id`,`question_id`),
  KEY `yaksh_questionset_ques_question_id_701c597d_fk_yaksh_question_id` (`question_id`),
  CONSTRAINT `yaksh_questionse_questionset_id_de528d72_fk_yaksh_questionset_id` FOREIGN KEY (`questionset_id`) REFERENCES `yaksh_questionset` (`id`),
  CONSTRAINT `yaksh_questionset_ques_question_id_701c597d_fk_yaksh_question_id` FOREIGN KEY (`question_id`) REFERENCES `yaksh_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_questionset_questions`
--

LOCK TABLES `yaksh_questionset_questions` WRITE;
/*!40000 ALTER TABLE `yaksh_questionset_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_questionset_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_quiz`
--

DROP TABLE IF EXISTS `yaksh_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date_time` datetime(6) DEFAULT NULL,
  `end_date_time` datetime(6) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` varchar(256) NOT NULL,
  `pass_criteria` double NOT NULL,
  `language` varchar(20) NOT NULL,
  `attempts_allowed` int(11) NOT NULL,
  `time_between_attempts` int(11) NOT NULL,
  `is_trial` tinyint(1) NOT NULL,
  `instructions` longtext,
  `view_answerpaper` tinyint(1) NOT NULL,
  `allow_skip` tinyint(1) NOT NULL,
  `course_id` int(11) NOT NULL,
  `prerequisite_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yaksh_quiz_course_id_cf29d3fc_fk_yaksh_course_id` (`course_id`),
  KEY `yaksh_quiz_prerequisite_id_6f7769f4_fk_yaksh_quiz_id` (`prerequisite_id`),
  CONSTRAINT `yaksh_quiz_course_id_cf29d3fc_fk_yaksh_course_id` FOREIGN KEY (`course_id`) REFERENCES `yaksh_course` (`id`),
  CONSTRAINT `yaksh_quiz_prerequisite_id_6f7769f4_fk_yaksh_quiz_id` FOREIGN KEY (`prerequisite_id`) REFERENCES `yaksh_quiz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_quiz`
--

LOCK TABLES `yaksh_quiz` WRITE;
/*!40000 ALTER TABLE `yaksh_quiz` DISABLE KEYS */;
INSERT INTO `yaksh_quiz` VALUES (1,'2017-11-29 06:33:45.000000','2199-01-01 00:00:00.000000',10,1,'Learn C Language',40,'c',3,0,0,'<p>\r\nThis examination system has been \r\ndeveloped with the intention of \r\nmaking you learn programming and \r\nbe assessed in an interactive and\r\nfun manner.\r\nYou will be presented with a \r\nseries of programming questions \r\nand problems that you will answer \r\nonline and get immediate \r\nfeedback for.\r\n</p>\r\n<p> \r\nHere are some important \r\ninstructions and rules that you \r\nshould understand carefully.</p> \r\n<ul>\r\n<li>For any programming questions,\r\n you can submit solutions as many \r\n times as you want without a \r\n penalty. You may skip questions \r\n and solve them later.</li>\r\n <li> You <strong>may</strong> \r\n use your computer\'s Python/IPython \r\n shell or an editor to solve the \r\n problem and cut/paste the \r\n solution to the web interface.\r\n </li>\r\n <li> <strong>You are not allowed \r\n to use any internet resources, \r\n i.e. no google etc.</strong> \r\n </li>\r\n <li> Do not copy or share the \r\n questions or answers with anyone \r\n until the exam is complete \r\n <strong>for everyone</strong>.\r\n </li>\r\n <li> <strong>All</strong> your \r\n attempts at the questions are \r\n logged. Do not try to outsmart \r\n and break the testing system. \r\n If you do, we know who you are \r\n and we will expel you from the \r\n course. You have been warned.\r\n </li>\r\n </ul>\r\n <p>\r\n  We hope you enjoy taking this \r\n  exam !!!\r\n  </p>',1,1,1,NULL);
/*!40000 ALTER TABLE `yaksh_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_standardtestcase`
--

DROP TABLE IF EXISTS `yaksh_standardtestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_standardtestcase` (
  `testcase_ptr_id` int(11) NOT NULL,
  `test_case` longtext NOT NULL,
  `weight` double NOT NULL,
  `test_case_args` longtext NOT NULL,
  PRIMARY KEY (`testcase_ptr_id`),
  CONSTRAINT `yaksh_standardtest_testcase_ptr_id_7f5d55b5_fk_yaksh_testcase_id` FOREIGN KEY (`testcase_ptr_id`) REFERENCES `yaksh_testcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_standardtestcase`
--

LOCK TABLES `yaksh_standardtestcase` WRITE;
/*!40000 ALTER TABLE `yaksh_standardtestcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_standardtestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_stdiobasedtestcase`
--

DROP TABLE IF EXISTS `yaksh_stdiobasedtestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_stdiobasedtestcase` (
  `testcase_ptr_id` int(11) NOT NULL,
  `expected_input` longtext,
  `expected_output` longtext NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`testcase_ptr_id`),
  CONSTRAINT `yaksh_stdiobasedte_testcase_ptr_id_994e258e_fk_yaksh_testcase_id` FOREIGN KEY (`testcase_ptr_id`) REFERENCES `yaksh_testcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_stdiobasedtestcase`
--

LOCK TABLES `yaksh_stdiobasedtestcase` WRITE;
/*!40000 ALTER TABLE `yaksh_stdiobasedtestcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_stdiobasedtestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_stringtestcase`
--

DROP TABLE IF EXISTS `yaksh_stringtestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_stringtestcase` (
  `testcase_ptr_id` int(11) NOT NULL,
  `correct` longtext NOT NULL,
  `string_check` varchar(200) NOT NULL,
  PRIMARY KEY (`testcase_ptr_id`),
  CONSTRAINT `yaksh_stringtestca_testcase_ptr_id_1013f2d6_fk_yaksh_testcase_id` FOREIGN KEY (`testcase_ptr_id`) REFERENCES `yaksh_testcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_stringtestcase`
--

LOCK TABLES `yaksh_stringtestcase` WRITE;
/*!40000 ALTER TABLE `yaksh_stringtestcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_stringtestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_student`
--

DROP TABLE IF EXISTS `yaksh_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_first_name` varchar(255) NOT NULL,
  `user_last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_student`
--

LOCK TABLES `yaksh_student` WRITE;
/*!40000 ALTER TABLE `yaksh_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `yaksh_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaksh_testcase`
--

DROP TABLE IF EXISTS `yaksh_testcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaksh_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(24) DEFAULT NULL,
  `question_id` int(11),
  PRIMARY KEY (`id`),
  KEY `yaksh_testcase_7aa0f6ee` (`question_id`),
  CONSTRAINT `yaksh_testcase_question_id_936815e6_fk_yaksh_question_id` FOREIGN KEY (`question_id`) REFERENCES `yaksh_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaksh_testcase`
--

LOCK TABLES `yaksh_testcase` WRITE;
/*!40000 ALTER TABLE `yaksh_testcase` DISABLE KEYS */;
INSERT INTO `yaksh_testcase` VALUES (1,'mcqtestcase',1),(2,'mcqtestcase',1),(3,'mcqtestcase',1),(4,'mcqtestcase',1),(5,'mcqtestcase',2),(6,'mcqtestcase',2),(7,'mcqtestcase',2),(8,'mcqtestcase',2),(9,'mcqtestcase',3),(10,'mcqtestcase',3),(11,'mcqtestcase',3),(12,'mcqtestcase',3),(13,'mcqtestcase',4),(14,'mcqtestcase',4),(15,'mcqtestcase',4),(16,'mcqtestcase',4),(17,'mcqtestcase',5),(18,'mcqtestcase',5),(19,'mcqtestcase',5),(20,'mcqtestcase',5),(21,'mcqtestcase',8),(22,'mcqtestcase',8),(23,'mcqtestcase',8),(24,'mcqtestcase',8),(25,'mcqtestcase',9),(26,'mcqtestcase',9),(27,'mcqtestcase',9),(28,'mcqtestcase',9),(29,'mcqtestcase',10),(30,'mcqtestcase',10),(31,'mcqtestcase',10),(32,'mcqtestcase',10),(33,'mcqtestcase',11),(34,'mcqtestcase',11),(35,'mcqtestcase',11),(36,'mcqtestcase',11),(37,'mcqtestcase',12),(38,'mcqtestcase',12),(39,'mcqtestcase',12),(40,'mcqtestcase',12),(41,'mcqtestcase',13),(42,'mcqtestcase',13),(43,'mcqtestcase',13),(44,'mcqtestcase',13),(45,'mcqtestcase',14),(46,'mcqtestcase',14),(47,'mcqtestcase',14),(48,'mcqtestcase',14),(49,'mcqtestcase',15),(50,'mcqtestcase',15),(51,'mcqtestcase',15),(52,'mcqtestcase',15),(53,'mcqtestcase',16),(54,'mcqtestcase',16),(55,'mcqtestcase',16),(56,'mcqtestcase',16),(57,'mcqtestcase',17),(58,'mcqtestcase',17),(59,'mcqtestcase',17),(60,'mcqtestcase',17),(61,'mcqtestcase',18),(62,'mcqtestcase',18),(63,'mcqtestcase',18),(64,'mcqtestcase',18),(65,'mcqtestcase',20),(66,'mcqtestcase',20),(67,'mcqtestcase',20),(68,'mcqtestcase',20),(69,'mcqtestcase',21),(70,'mcqtestcase',21),(71,'mcqtestcase',21),(72,'mcqtestcase',21),(73,'mcqtestcase',22),(74,'mcqtestcase',22),(75,'mcqtestcase',22),(76,'mcqtestcase',22),(77,'mcqtestcase',23),(78,'mcqtestcase',23),(79,'mcqtestcase',23),(80,'mcqtestcase',23),(81,'mcqtestcase',24),(82,'mcqtestcase',24),(83,'mcqtestcase',24),(84,'mcqtestcase',24),(85,'mcqtestcase',25),(86,'mcqtestcase',25),(87,'mcqtestcase',25),(88,'mcqtestcase',25),(89,'mcqtestcase',26),(90,'mcqtestcase',26),(91,'mcqtestcase',26),(92,'mcqtestcase',26),(93,'mcqtestcase',27),(94,'mcqtestcase',27),(95,'mcqtestcase',27),(96,'mcqtestcase',27),(97,'mcqtestcase',28),(98,'mcqtestcase',28),(99,'mcqtestcase',28),(100,'mcqtestcase',28);
/*!40000 ALTER TABLE `yaksh_testcase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-02 16:30:28
