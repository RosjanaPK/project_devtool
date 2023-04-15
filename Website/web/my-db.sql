-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: devtool_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `no_faculty` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
INSERT INTO `form` VALUES (1,'แบบฟอร์มสมัครเข้าร่วมรายวิชาสหกิจศึกษา ภาคเรียนที่ 1/2566',1),(2,'แบบฟอร์มการสมัครเข้าร่วมรายวิชาสหกิจศึกษา ภาคเรียนที่ 2/2566',2),(3,'แบบฟอร์มการเข้าร่วมโครงการสหกิจศึกษาของทางคณะวิทยาศาตร์',3);
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturers`
--

DROP TABLE IF EXISTS `lecturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturers` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturers`
--

LOCK TABLES `lecturers` WRITE;
/*!40000 ALTER TABLE `lecturers` DISABLE KEYS */;
INSERT INTO `lecturers` VALUES (1,' ผู้ช่วยศาสตราจารย์ ดร.โอฬาร วงศ์วิรัตน์','olarn@it.kmitl.ac.th','632','Olarn.jpg'),(2,'รองศาสตราจารย์ ดร.วรพจน์ กรีสุระเดช','worapoj@it.kmitl.ac.th','630','Worapoj.jpg'),(3,'ผู้ช่วยศาสตราจารย์ ศรีนวล นลินทิพยวงศ์','srinual@it.kmitl.ac.th','612','Srinual.jpg'),(4,' รองศาสตราจารย์ ดร.พรฤดี เนติโสภากุล','ponrudee@it.kmitl.ac.th','608','Ponrudee.jpg'),(5,'ผู้ช่วยศาสตราจารย์ ดร.สุเมธ ประภาวัต','sumet@it.kmitl.ac.th','534','Sumet.jpg'),(6,'ผู้ช่วยศาสตราจารย์ ดร.อนันตพัฒน์ อนันตชัย','anuntapat@it.kmitl.ac.th','520','Anuntapat.jpg'),(7,'ผู้ช่วยศาสตราจารย์ ดร.บุญประเสริฐ สุรักษ์รัตนสกุล','boonprasert@it.kmitl.ac.th','522','Boonprasert.jpg'),(8,'ผู้ช่วยศาสตราจารย์ ดร.ลภัส ประดิษฐ์ทัศนีย์','lapas@it.kmitl.ac.th','525','Lapas.jpg'),(9,'ดร.สุพัณณดา โชติพันธ์','supannada@it.kmitl.ac.th','607','Supannada.jpg'),(10,'อาจารย์วารุนี บัววิรัตน์','warune@it.kmitl.ac.th','628','Warune.jpg'),(11,'รองศาสตราจารย์ ดร.กิติ์สุชาต พสุภา','kitsuchart@it.kmitl.ac.th','510-9','Kitsuchart.jpg'),(12,'ผู้ช่วยศาสตราจารย์ ดร.สุภกิจ นุตยะสกุล','supakit@it.kmitl.ac.th','510-8','Supakit.jpg'),(13,'รองศาสตราจารย์ ดร.ธีรพงศ์ ลีลานุภาพ','teerapong@it.kmitl.ac.th','510-1','Teerapong.jpg'),(14,'ผู้ช่วยศาสตราจารย์ ดร.กนกวรรณ อัจฉริยะชาญวนิช','kanokwan@it.kmitl.ac.th','510-7','Kanokwan.jpg'),(15,'ผู้ช่วยศาสตราจารย์ ดร.บัณฑิต ฐานะโสภณ','bundit@it.kmitl.ac.th','629','Bundit.jpg'),(16,'ดร.พรสุรีย์ แจ่มศรี','pornsuree@it.kmitl.ac.th','510-6','Pornsuree.jpg'),(17,'ดร.พัฒนพงษ์ ฉันทมิตรโอภาส','pattanapong@it.kmitl.ac.th','610','Pattanapong.jpg'),(18,'ดร.นนท์ คนึงสุขเกษม','nont@it.kmitl.ac.th','614','Nont.jpg'),(19,'ดร.ประพันธ์ ปวรางกูร','praphan@it.kmitl.ac.th','614','Praphan.jpg'),(20,'ดร.ศิรสิทธิ์ โล่ห์ชนะจิต','sirasit@it.kmitl.ac.th','614','Sirasit.jpg'),(21,' รศ.ดร. โชติพัชร์ ภรณวลัย','chotipat@it.kmitl.ac.th','624','Chotipat.jpg');
/*!40000 ALTER TABLE `lecturers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15 22:48:58
