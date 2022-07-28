-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: schooldb
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

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
-- Table structure for table `Bolumler`
--

DROP TABLE IF EXISTS `Bolumler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bolumler` (
  `idBolumler` int NOT NULL,
  `BolumAdi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idBolumler`),
  UNIQUE KEY `idBolumler_UNIQUE` (`idBolumler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bolumler`
--

LOCK TABLES `Bolumler` WRITE;
/*!40000 ALTER TABLE `Bolumler` DISABLE KEYS */;
INSERT INTO `Bolumler` VALUES (0,'Acil Yardım ve Afet Yönetimi'),(1,'Adalet (MYO)'),(2,'Adli Bilimler'),(3,'Adli Bilişim Mühendisliği'),(4,'Ağız ve Diş Sağlığı (MYO)'),(5,'Aile ve Tüketici Bilimleri'),(6,'Aktüerya'),(7,'Aktüerya Bilimleri'),(8,'Alman Dili ve Edebiyatı'),(9,'Almanca Öğretmenliği'),(10,'Ameliyathane Hizmetleri'),(11,'Amerikan Kültürü ve Edebiyatı'),(12,'Anestezi (MYO)'),(13,'Animasyon ve Oyun Tasarımı'),(14,'Antrenörlük Eğitimi'),(15,'Antropoloji'),(16,'Arap Dili ve Edebiyatı'),(17,'Arapça Öğretmenliği'),(18,'Arıcılık (MYO)'),(19,'Arkeoloji'),(20,'Arkeoloji ve Sanat Tarihi'),(21,'Arnavut Dili ve Edebiyatı'),(22,'Astronomi ve Uzay Bilimleri'),(23,'Aşçılık (MYO)'),(24,'Avrupa Birliği İlişkileri'),(25,'Ayakkabı Tasarımı (MYO)'),(26,'Azerbaycan Dili Öğretmenliği'),(27,'Bahçe Bitkileri'),(28,'Bahçe Bitkileri Üretimi ve Pazarlaması'),(29,'Balıkçılık Teknolojisi Mühendisliği'),(30,'Bankacılık'),(31,'Bankacılık ve Finans'),(32,'Bankacılık ve Sigortacılık'),(33,'Basım Teknolojileri'),(34,'Basın ve Yayın'),(35,'Baskı Sanatları'),(36,'Batı Dilleri'),(37,'Beden Eğitimi ve Spor Öğretmenliği'),(38,'Beslenme ve Diyetetik'),(39,'Bilgi Güvenliği Teknolojileri'),(40,'Bilgi ve Belge Yönetimi'),(41,'Bilgisayar - Enformatik'),(42,'Bilgisayar Bilimleri'),(43,'Bilgisayar Mühendisliği'),(44,'Bilgisayar Programcılığı'),(45,'Bilgisayar Teknolojisi ve Bilişim Sistemleri'),(46,'Bilim Tarihi'),(47,'Bilişim Sistemleri Mühendisliği'),(48,'Bilişim Sistemleri ve Teknolojileri'),(49,'Bitki Koruma'),(50,'Bitkisel Üretim ve Teknolojileri'),(51,'Biyoenformatik ve Genetik'),(52,'Biyokimya'),(53,'Biyoloji'),(54,'Biyoloji Öğretmenliği'),(55,'Biyomedikal Cihaz Teknolojisi (MYO)'),(56,'Biyomedikal Mühendisliği'),(57,'Biyomühendislik'),(58,'Biyosistem Mühendisliği'),(59,'Biyoteknoloji'),(60,'Boşnak Dili ve Edebiyatı'),(61,'Bulgar Dili ve Edebiyatı'),(62,'Büro Yönetimi ve Sekreterlik (MYO)'),(63,'Büro Yönetimi ve Yönetici Asistanlığı (MYO)'),(64,'Canlandırma Filmi Tasarım ve Yönetimi'),(65,'Cevher Hazırlama Mühendisliği'),(66,'Coğrafya'),(67,'Coğrafya Öğretmenliği'),(68,'Çağdaş Yunan Dili ve Edebiyatı'),(69,'Çağrı Merkezi Hizmetleri Bölümü'),(70,'Çalgı Yapım'),(71,'Çalışma Ekonomisi ve Endüstri İlişkileri'),(72,'Çerkez Dili ve Edebiyatı'),(73,'Çeviribilim'),(74,'Çevre Mühendisliği'),(75,'Çin Dili ve Edebiyatı'),(76,'Çizgi Film (Animasyon)'),(77,'Çocuk Gelişimi'),(78,'Çocuk Gelişimi ve Eğitimi'),(79,'Deniz İşletmeciliği ve Yönetimi'),(80,'Deniz Ulaştırma ve İşletme'),(81,'Deniz ve Liman İşletmeciliği'),(82,'Denizcilik İşletmeleri Yönetimi'),(83,'Deri Mühendisliği'),(84,'Dijital Oyun Tasarımı'),(85,'Dil ve Konuşma Terapisi'),(86,'Dilbilim'),(87,'Diş Hekimliği'),(88,'Diş Protez (MYO)'),(89,'Diş Protez Teknolojisi'),(90,'Diyaliz (MYO)'),(91,'Doğalgaz ve Boru Hatları Teknolojisi (MYO)'),(92,'Doğu Dilleri ve Edebiyatı'),(93,'Ebelik'),(94,'Eczacılık'),(95,'Eczane Hizmetleri (MYO)'),(96,'Ekonometri'),(97,'Ekonomi'),(98,'Ekonomi ve Finans'),(99,'El Sanatları'),(100,'Elektrik Mühendisliği'),(101,'Elektrik/Elektronik Mühendisliği'),(102,'Elektronik Haberleşme (MYO)'),(103,'Elektronik Mühendisliği'),(104,'Elektronik Ticaret ve Teknoloji Yönetimi'),(105,'Emlak ve Emlak Yönetimi (MYO)'),(106,'Endüstri Mühendisliği'),(107,'Endüstri Ürünleri Tasarımı'),(108,'Endüstriyel Tasarım Mühendisliği'),(109,'Enerji Sistemleri Mühendisliği'),(110,'Enerji ve Malzeme Mühendisliği'),(111,'Enerji Yönetimi'),(112,'Engelli Bakımı ve Rehabilitasyon'),(113,'Ergoterapi'),(114,'Eski Çini Onarımları'),(115,'Fars Dili ve Edebiyatı'),(116,'Felsefe'),(117,'Felsefe Grubu Öğretmenliği'),(118,'Fen Bilgisi Öğretmenliği'),(119,'Film Tasarımı ve Yönetmenliği'),(120,'Finansal Ekonometri'),(121,'Fizik'),(122,'Fizik Mühendisliği'),(123,'Fizik Öğretmenliği'),(124,'Fizik Tedavi ve Rehabilitasyon'),(125,'Fotoğraf ve Video'),(126,'Fotoğrafçılık ve Kameramanlık (MYO)'),(127,'Fransız Dili ve Edebiyatı'),(128,'Fransızca Öğretmenliği'),(129,'Gastronomi ve Mutfak Sanatları'),(130,'Gayrimenkul Değerleme'),(131,'Gazetecilik'),(132,'Geleneksel El Sanatları (MYO)'),(133,'Gemi İnşaatı (MYO)'),(134,'Gemi İnşaatı ve Gemi Makineleri Mühendisliği'),(135,'Gemi ve Deniz Teknolojisi Mühendisliği'),(136,'Genetik ve Biyomühendislik'),(137,'Geomatik Mühendisliği'),(138,'Gerontoloji'),(139,'Gıda Mühendisliği'),(140,'Gıda Teknolojisi (MYO)'),(141,'Görsel İletişim Tasarımı'),(142,'Görsel Sanatlar ve Görsel İletişim Tasarımı'),(143,'Grafik Tasarımı'),(144,'Gümrük İşletme'),(145,'Gürcü Dili ve Edebiyatı'),(146,'Güverte'),(147,'Güzel Sanatlar'),(148,'Halkla İlişkiler'),(149,'Halkla İlişkiler ve Reklamcılık'),(150,'Halkla İlişkiler ve Tanıtım'),(151,'Harita Mühendisliği'),(152,'Havacılık Elektrik ve Elektroniği'),(153,'Havacılık ve Uzay Mühendisliği'),(154,'Havacılık Yönetimi'),(155,'Hayvansal Üretim'),(156,'Hemşirelik'),(157,'Hemşirelik ve Sağlık Hizmetleri'),(158,'Heykel'),(159,'Hidrojeoloji Mühendisliği'),(160,'Hukuk'),(161,'İbrani Dili ve Edebiyatı'),(162,'İç Mekan Tasarımı'),(163,'İç Mimarlık'),(164,'İç Mimarlık ve Çevre Tasarımı'),(165,'İlahiyat'),(166,'İletişim Bilimleri'),(167,'İletişim Sanatları'),(168,'İletişim Tasarımı'),(169,'İletişim Tasarımı ve Medya'),(170,'İletişim ve Tasarım'),(171,'İlköğretim Matematik Öğretmenliği'),(172,'İmalat Mühendisliği'),(173,'İngiliz Dili ve Edebiyatı'),(174,'İngiliz Dili ve Karşılaştırmalı Edebiyat'),(175,'İngiliz ve Rus Dilleri Edebiyatı'),(176,'İngilizce Öğretmenliği'),(177,'İnovasyon, Girişimcilik ve Yönetim'),(178,'İnsan Kaynakları Yönetimi'),(179,'İnşaat Mühendisliği'),(180,'İnşaat Teknolojisi'),(181,'İslam ve Din Bilimleri'),(182,'İslami İlimler'),(183,'İspanyol Dili ve Edebiyatı'),(184,'İstatistik ve Bilgisayar Bilimleri'),(185,'İş Sağlığı ve Güvenliği'),(186,'İşletme'),(187,'İşletme Bilgi Yönetimi'),(188,'İşletme Enformatiği'),(189,'İşletme Mühendisliği'),(190,'İşletme Yönetimi'),(191,'Japon Dili ve Edebiyatı'),(192,'Japonca Öğretmenliği'),(193,'Jeofizik Mühendisliği'),(194,'Jeoloji Mühendisliği'),(195,'Kamu Yönetimi'),(196,'Kanatlı Hayvan Yetiştiriciliği (MYO)'),(197,'Karşılaştırmalı Edebiyat'),(198,'Kimya'),(199,'Kimya - Biyoloji Mühendisliği'),(200,'Kimya Mühendisliği'),(201,'Kimya Öğretmenliği'),(202,'Kimya ve Süreç Mühendisliği'),(203,'Konaklama İşletmeciliği'),(204,'Kore Dili ve Edebiyatı'),(205,'Kürt Dili Ve Edabiyatı'),(206,'Laborant ve Veteriner Sağlık (MYO)'),(207,'Lojistik (MYO)'),(208,'Lojistik Yönetimi'),(209,'Maden Mühendisliği'),(210,'Makine'),(211,'Makine Mühendisliği'),(212,'Makine ve İmalat Mühendisliği'),(213,'Maliye'),(214,'Malzeme Bilimi ve Mühendisliği'),(215,'Malzeme Bilimi ve Nanoteknoloji Mühendisliği'),(216,'Mantarcılık (MYO)'),(217,'Matematik'),(218,'Matematik Mühendisliği'),(219,'Matematik Öğretmenliği'),(220,'Matematik ve Bilgisayar Bilimleri'),(221,'Medya ve İletişim'),(222,'Mekatronik (MYO)'),(223,'Mekatronik Mühendisliği'),(224,'Mekatronik Sistemler Mühendisliği'),(225,'Metalurji ve Malzeme Mühendisliği'),(226,'Meteoroloji Mühendisliği'),(227,'Mimari Restorasyon'),(228,'Mimarlık'),(229,'Mobilya ve Dekorasyon (MYO)'),(230,'Moda Tasarımı'),(231,'Moda ve Tekstil Tasarımı'),(232,'Modern Dans'),(233,'Moleküler Biyoloji ve Genetik'),(234,'Muhasebe'),(235,'Muhasebe Bilgi Sistemleri'),(236,'Muhasebe ve Denetim'),(237,'Muhasebe ve Vergi Uygulamaları'),(238,'Mütercim Tercümanlık'),(239,'Müzecilik (MYO)'),(240,'Müzik'),(241,'Müzik Bilimleri'),(242,'Müzikoloji'),(243,'Nanobilim ve Nanoteknoloji'),(244,'Nanoteknoloji Mühendisliği'),(245,'Nükleer Enerji Mühendisliği'),(246,'Odyoloji'),(247,'Okul Öncesi Öğretmenlik'),(248,'Optik ve Akustik Mühendisliği'),(249,'Organik Tarım (MYO)'),(250,'Orman Endüstri Mühendisliği'),(251,'Orman Mühendisliği'),(252,'Ormancılık (MYO)'),(253,'Otomotiv Mühendisliği'),(254,'Oyunculuk'),(255,'Özel Eğitim Öğretmenliği'),(256,'Pazarlama'),(257,'Perfüzyon'),(258,'Petrol ve Doğalgaz Mühendisliği'),(259,'Peyzaj Mimarisi ve Kentsel Tasarım'),(260,'Peyzaj Mimarlığı'),(261,'Pilot Eğitimi'),(262,'Pilotaj'),(263,'Plastik Sanatlar'),(264,'Polimer Mühendisliği'),(265,'Psikoloji'),(266,'Psikolojik Danışmanlık ve Rehberlik Öğretmenliği'),(267,'Radyo ve Televizyon'),(268,'Radyo, Sinema ve Televizyon'),(269,'Raylı Sistemler Mühendisliği'),(270,'Rehberlik ve Psikolojik Danışmanlık'),(271,'Reklamcılık'),(272,'Rekreasyon'),(273,'Resim'),(274,'Rus Dili Öğretmenliği'),(275,'Rus Dili ve Edebiyatı'),(276,'Rus Dili ve Edebiyatı Öğretmenliği'),(277,'Saç Bakımı ve Güzellik Hizmetleri'),(278,'Sağlık Bilgi Sistemleri Teknikerliği'),(279,'Sağlık İdaresi'),(280,'Sağlık Kurumları İşletmeciliği'),(281,'Sağlık Turizmi İşletmeciliği'),(282,'Sağlık Yönetimi'),(283,'Sahne Sanatları'),(284,'Sahne ve Dekor Tasarımı'),(285,'Sahne ve Gösteri Sanatları Yönetimi'),(286,'Sanat Tarihi'),(287,'Sanat Yönetimi'),(288,'Seracılık (MYO)'),(289,'Seramik ve Cam'),(290,'Sermaye Piyasaları ve Portföy Yönetimi'),(291,'Sermaye Piyasası'),(292,'Ses Eğitimi'),(293,'Seyahat İşletmeciliği'),(294,'Sınıf Öğretmenliği'),(295,'Sigortacılık'),(296,'Sigortacılık ve Aktüerya Bilimleri'),(297,'Sinema ve Televizyon'),(298,'Sinoloji'),(299,'Sivil Hava Ulaştırma İşletmeciliği (MYO)'),(300,'Siyaset Bilimi'),(301,'Siyaset Bilimi ve Kamu Yönetimi'),(302,'Siyaset Bilimi ve Uluslararası İlişkiler'),(303,'Sosyal Bilgiler Öğretmenliği'),(304,'Sosyal Hizmetler'),(305,'Sosyal ve Siyasi Bilimler'),(306,'Sosyoloji'),(307,'Spor Bilimleri'),(308,'Spor Yöneticiliği'),(309,'Su Bilimleri Mühendisliği'),(310,'Su Ürünleri Mühendisliği'),(311,'Sualtı Teknolojisi'),(312,'Sümeroloji'),(313,'Süt Teknolojisi'),(314,'Süt ve Besi Hayvancılığı'),(315,'Süt ve Ürünleri (MYO)'),(316,'Şan'),(317,'Şehir Planlama'),(318,'Takı Tasarımı'),(319,'Tarım Ekonomisi'),(320,'Tarımsal Genetik Mühendisliği'),(321,'Tarih'),(322,'Tarih Öğretmenliği'),(323,'Tarih Öncesi Arkeolojisi'),(324,'Tarla Bitkileri'),(325,'Taşınabilir Kültür Varlıklarını Koruma ve Onarım'),(326,'Teknoloji ve Bilgi Yönetimi'),(327,'Tekstil Mühendisliği'),(328,'Televizyon Haberciliği ve Programcılığı'),(329,'Tıbbi Görüntüleme Teknikleri'),(330,'Tıp'),(331,'Tıp Mühendisliği'),(332,'Tiyatro'),(333,'Toprak Bilimi ve Bitki Besleme'),(334,'Turist Rehberliği'),(335,'Turizm Animasyon'),(336,'Turizm İşletmeciliği'),(337,'Turizm İşletmeciliği ve Otelcilik'),(338,'Turizm Rehberliği (MYO)'),(339,'Türk Dili ve Edebiyatı'),(340,'Türk Dili ve Edebiyatı Öğretmenliği'),(341,'Türk Halk Oyunları'),(342,'Türk Halkbilimi'),(343,'Türk İslam Arkeolojisi'),(344,'Türkçe Öğretmenliği'),(345,'Türkoloji Bölümü'),(346,'Tütün Eksperliği'),(347,'Uçak Elektrik/Elektroniği'),(348,'Uçak Gövde Motor'),(349,'Uçak Mühendisliği'),(350,'Uçak ve Uzay Mühendisliği'),(351,'Ulaştırma Mühendisliği'),(352,'Ulaştırma ve Lojistik'),(353,'Ulaştırma ve Trafik Hizmetleri'),(354,'Uluslararası Finans'),(355,'Uluslararası Girişimcilik'),(356,'Uluslararası İlişkiler'),(357,'Uluslararası İşletme Yönetimi'),(358,'Uluslararası İşletmecilik'),(359,'Uluslararası İşletmecilik Ve Ticaret'),(360,'Uluslararası Lojistik ve Taşımacılık'),(361,'Uluslararası Perakende Yönetimi'),(362,'Uluslararası Ticaret'),(363,'Uluslararası Ticaret ve Finans'),(364,'Uluslararası Ticaret ve İşletmecilik'),(365,'Uluslararası Ticaret ve Lojistik'),(366,'Uluslararası Ticaret ve Lojistik Yönetimi'),(367,'Urdu Dili ve Edebiyatı'),(368,'Uzay Mühendisliği'),(369,'Veteriner'),(370,'Yaban Hayatı Ekolojisi ve Yönetimi'),(371,'Yazılım Mühendisliği'),(372,'Yeni Medya'),(373,'Yer Bilimleri Mühendisliği'),(374,'Yerel Yönetimler'),(375,'Ziraat Mühendisliği'),(376,'Zootekni');
/*!40000 ALTER TABLE `Bolumler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ogrenci`
--

DROP TABLE IF EXISTS `Ogrenci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ogrenci` (
  `tcKimlikNo` varchar(11) NOT NULL,
  `ad` varchar(45) NOT NULL,
  `soyad` varchar(45) NOT NULL,
  `bolum` varchar(100) NOT NULL,
  `cinsiyet` varchar(5) NOT NULL,
  `dogumTarihi` varchar(15) NOT NULL,
  PRIMARY KEY (`tcKimlikNo`),
  UNIQUE KEY `tcKimlikNo_UNIQUE` (`tcKimlikNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ogrenci`
--

LOCK TABLES `Ogrenci` WRITE;
/*!40000 ALTER TABLE `Ogrenci` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ogrenci` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-28 19:57:27
