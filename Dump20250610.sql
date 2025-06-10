-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: tintinshop
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `address_user`
--

DROP TABLE IF EXISTS `address_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address_line` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `default_address` bit(1) NOT NULL,
  `description` mediumtext,
  `district` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ward` varchar(255) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjc2iub3ej4xslf10a0rkkt19l` (`user_id`),
  CONSTRAINT `FKjc2iub3ej4xslf10a0rkkt19l` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_user`
--

LOCK TABLES `address_user` WRITE;
/*!40000 ALTER TABLE `address_user` DISABLE KEYS */;
INSERT INTO `address_user` VALUES (1,'15/7899','2025-06-08 14:18:18.078420','user@gmail.com',_binary '','hihi','Thành phố Thủ Đức','Thành phố Hồ Chí Minh','trinhhoa','0935900023',NULL,NULL,'Phường Linh Trung',2),(2,'12/229','2025-06-09 02:39:17.537696','trinhhoa.gl2005@gmail.com',_binary '','nhà riêng','Quận 1','Thành phố Hồ Chí Minh','testusser','0942136743',NULL,NULL,'Phường Tân Định',4),(3,'12/442','2025-06-09 17:51:56.972537','nguyenvana@example.com',_binary '','hihi','Quận Hoàn Kiếm','Thành phố Hà Nội','nguyen van a','0948349393',NULL,NULL,'Phường Phúc Tân',5),(4,'16/891 Lý Thái Tổ','2025-06-09 18:27:28.922227','admin@gmail.com',_binary '','nhà riêng','Quận Ba Đình','Thành phố Hà Nội','admin','0202929029',NULL,NULL,'Phường Trúc Bạch',1),(5,'12/90','2025-06-10 02:47:37.643972','nguyenvanb@example.com',_binary '','nhà phụ','Thành phố Châu Đốc','Tỉnh An Giang','văn b','0939389939',NULL,NULL,'Phường Châu Phú A',6),(6,'12/9002','2025-06-10 02:48:59.197349','nguyenvanc@example.com',_binary '','nhà của chị','Huyện Đồng Văn','Tỉnh Hà Giang','van c','0829299292',NULL,NULL,'Xã Má Lé',7);
/*!40000 ALTER TABLE `address_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `name` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,_binary '','2025-06-07 16:44:31.092252','admin@gmail.com','Các món đá xay mát lạnh, thích hợp mùa hè.hihi','Đá xay','2025-06-09 18:07:47.118127','admin@gmail.com'),(2,_binary '','2025-06-07 16:46:01.433655','admin@gmail.com','Các món cà phê đậm đà, thơm ngon, giúp tỉnh táo mỗi ngày.','Cà phê',NULL,NULL),(3,_binary '','2025-06-07 16:46:17.534238','admin@gmail.com','Những loại trà thanh mát, thích hợp cho mọi lứa tuổi.','Trà',NULL,NULL),(4,_binary '','2025-06-07 16:46:27.372051','admin@gmail.com','Trà sữa thơm béo, topping đa dạng, phù hợp giới trẻ.','Trà sữa',NULL,NULL),(5,_binary '','2025-06-07 16:46:36.523999','admin@gmail.com','Sinh tố trái cây tươi ngon, bổ dưỡng và mát lạnh.','Sinh tố',NULL,NULL),(6,_binary '','2025-06-07 16:46:43.417863','admin@gmail.com','Nước ép nguyên chất từ trái cây tươi, tốt cho sức khỏe.','Nước ép',NULL,NULL),(7,_binary '\0','2025-06-08 02:48:30.727797','admin@gmail.com','tesstggg11111','test','2025-06-09 18:11:06.402975','admin@gmail.com'),(8,_binary '\0','2025-06-09 18:08:31.296490','admin@gmail.com','đây là loại đồ uống mới siêu ngon','test1',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `discount_type` enum('AMOUNT','PERCENT') DEFAULT NULL,
  `discount_value` decimal(10,2) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `max_discount` decimal(10,2) DEFAULT NULL,
  `min_order_value` decimal(10,2) DEFAULT NULL,
  `quantity` int NOT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'WELCOME10','2025-06-07 17:46:43.366433','admin@gmail.com','Giảm 10% cho khách hàng mới','PERCENT',10.00,'2025-06-30 16:59:00.000000','welcome_coupon.png',_binary '',30000.00,0.00,198,'2025-05-31 17:00:00.000000','2025-06-09 16:10:03.263459','admin@gmail.com'),(2,'HOTDEAL50','2025-06-07 18:31:59.699589','admin@gmail.com','Giảm 50% cho đơn từ 200K, tối đa 70K','PERCENT',50.00,'2025-07-10 16:59:00.000000','Hot_deal.png',_binary '\0',70000.00,200000.00,49,'2025-06-09 17:00:00.000000','2025-06-09 18:25:32.161302','admin@gmail.com'),(3,'OFF30K','2025-06-07 18:33:06.054929','admin@gmail.com','Giảm trực tiếp 30K cho đơn hàng bất kỳ','AMOUNT',30000.00,'2025-10-10 23:59:59.999000','OFF_30.png',_binary '',30000.00,0.00,299,'2025-07-10 09:42:35.000000','2025-06-10 02:51:54.192626','trinhhoa.gl2005@gmail.com'),(4,'HELOCOUPON','2025-06-10 02:38:16.127139','admin@gmail.com','coupon test','PERCENT',20.00,'2028-06-10 23:59:59.999000','',_binary '',10000.00,50000.00,2,'2025-06-10 09:38:07.174000',NULL,NULL);
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_products`
--

DROP TABLE IF EXISTS `favorite_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK66gqbpuhbuxns99w8sx4ksoke` (`product_id`),
  KEY `FK2j3cdkvim6xxc5uw2gg9eum0v` (`user_id`),
  CONSTRAINT `FK2j3cdkvim6xxc5uw2gg9eum0v` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK66gqbpuhbuxns99w8sx4ksoke` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_products`
--

LOCK TABLES `favorite_products` WRITE;
/*!40000 ALTER TABLE `favorite_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_toppings`
--

DROP TABLE IF EXISTS `favorite_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_toppings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `topping_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtfgd28dfopyall691h6n5m5kc` (`topping_id`),
  KEY `FK8p09vr21gnjefgta5htg5mo0d` (`user_id`),
  CONSTRAINT `FK8p09vr21gnjefgta5htg5mo0d` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKtfgd28dfopyall691h6n5m5kc` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_toppings`
--

LOCK TABLES `favorite_toppings` WRITE;
/*!40000 ALTER TABLE `favorite_toppings` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_size_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrws2q0si6oyd6il8gqe2aennc` (`order_id`),
  KEY `FKbwusgmfhhhgdcmrefkvsxhi47` (`product_size_id`),
  CONSTRAINT `FKbwusgmfhhhgdcmrefkvsxhi47` FOREIGN KEY (`product_size_id`) REFERENCES `product_size` (`id`),
  CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,'2025-06-08 14:20:46.002586','admin@gmail.com',62000.00,2,'2025-06-08 14:20:46.200159','admin@gmail.com',1,1),(2,'2025-06-08 14:20:46.126399','admin@gmail.com',76000.00,2,'2025-06-08 14:20:46.201177','admin@gmail.com',1,2),(3,'2025-06-08 15:49:06.072367','admin@gmail.com',62000.00,2,'2025-06-08 15:49:06.151131','admin@gmail.com',2,1),(4,'2025-06-08 15:49:06.112982','admin@gmail.com',76000.00,2,'2025-06-08 15:49:06.152134','admin@gmail.com',2,2),(5,'2025-06-09 02:40:38.467415','admin@gmail.com',62000.00,2,'2025-06-09 02:40:38.528572','admin@gmail.com',3,1),(6,'2025-06-09 02:40:38.489674','admin@gmail.com',76000.00,2,'2025-06-09 02:40:38.528572','admin@gmail.com',3,2),(7,'2025-06-10 02:51:54.084736','trinhhoa.gl2005@gmail.com',68000.00,2,'2025-06-10 02:51:54.215851','trinhhoa.gl2005@gmail.com',4,1),(8,'2025-06-10 02:51:54.128350','trinhhoa.gl2005@gmail.com',82000.00,2,'2025-06-10 02:51:54.215851','trinhhoa.gl2005@gmail.com',4,4),(9,'2025-06-10 02:51:54.152602','trinhhoa.gl2005@gmail.com',132000.00,3,'2025-06-10 02:51:54.215851','trinhhoa.gl2005@gmail.com',4,5),(10,'2025-06-10 02:51:54.175831','trinhhoa.gl2005@gmail.com',76000.00,2,'2025-06-10 02:51:54.215851','trinhhoa.gl2005@gmail.com',4,2);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail_topping`
--

DROP TABLE IF EXISTS `order_detail_topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail_topping` (
  `order_detail_id` bigint NOT NULL,
  `topping_id` bigint NOT NULL,
  KEY `FKq8opouldy7ucpnuf2ggm2bd5o` (`topping_id`),
  KEY `FK7y2j1jbsdo7jwecesd5gmibd4` (`order_detail_id`),
  CONSTRAINT `FK7y2j1jbsdo7jwecesd5gmibd4` FOREIGN KEY (`order_detail_id`) REFERENCES `order_detail` (`id`),
  CONSTRAINT `FKq8opouldy7ucpnuf2ggm2bd5o` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail_topping`
--

LOCK TABLES `order_detail_topping` WRITE;
/*!40000 ALTER TABLE `order_detail_topping` DISABLE KEYS */;
INSERT INTO `order_detail_topping` VALUES (1,1),(1,2),(2,3),(2,4),(3,1),(3,2),(4,3),(4,4),(5,1),(5,2),(6,3),(6,4),(7,1),(7,2),(8,3),(8,4),(9,6),(9,7),(10,3),(10,4);
/*!40000 ALTER TABLE `order_detail_topping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `final_price` decimal(10,2) DEFAULT NULL,
  `note` mediumtext,
  `status` enum('CANCELLED','COMPLETED','PENDING','SHIPPING') DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `address_user_id` bigint NOT NULL,
  `coupon_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpoxrc319rq78sri0bo6xnk544` (`address_user_id`),
  KEY `FKn1d1gkxckw648m2n2d5gx0yx5` (`coupon_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKn1d1gkxckw648m2n2d5gx0yx5` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  CONSTRAINT `FKpoxrc319rq78sri0bo6xnk544` FOREIGN KEY (`address_user_id`) REFERENCES `address_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-06-08 14:20:46.171760','admin@gmail.com',137970.00,'Please deliver before 6 PM','COMPLETED',138000.00,'2025-06-09 13:16:33.853725','admin@gmail.com',1,1,2),(2,'2025-06-08 15:49:06.140362','admin@gmail.com',137970.00,'Please deliver before 6 PM','COMPLETED',138000.00,'2025-06-09 13:16:31.232135','admin@gmail.com',1,1,2),(3,'2025-06-09 02:40:38.518063','admin@gmail.com',137930.00,'Please deliver before 6 PM','COMPLETED',138000.00,'2025-06-09 12:12:59.369134','admin@gmail.com',2,2,4),(4,'2025-06-10 02:51:54.201827','trinhhoa.gl2005@gmail.com',328000.00,'Please deliver before 6 PM','COMPLETED',358000.00,'2025-06-10 02:53:36.404506','admin@gmail.com',3,3,5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `api_path` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `method` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') DEFAULT NULL,
  `stock_quantity` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `size_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9qjgp0xvl5jfetdt683i7wqwr` (`product_id`),
  KEY `FK1yl8bbmokvonm64131xlscnci` (`size_id`),
  CONSTRAINT `FK1yl8bbmokvonm64131xlscnci` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  CONSTRAINT `FK9qjgp0xvl5jfetdt683i7wqwr` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,'2025-06-08 12:03:04.756470','admin@gmail.com',23000.00,'ACTIVE',43,'2025-06-10 02:51:54.111861','trinhhoa.gl2005@gmail.com',16,1),(2,'2025-06-08 12:12:11.076444','admin@gmail.com',25000.00,'ACTIVE',42,'2025-06-10 02:51:54.184443','trinhhoa.gl2005@gmail.com',16,2),(3,'2025-06-08 12:12:52.046391','admin@gmail.com',30000.00,'ACTIVE',40,'2025-06-08 13:09:26.664915','admin@gmail.com',16,3),(4,'2025-06-09 15:25:06.935264','admin@gmail.com',28000.00,'ACTIVE',18,'2025-06-10 02:51:54.137820','trinhhoa.gl2005@gmail.com',17,1),(5,'2025-06-09 15:27:37.627135','admin@gmail.com',31000.00,'ACTIVE',12,'2025-06-10 02:51:54.162573','trinhhoa.gl2005@gmail.com',17,2),(6,'2025-06-09 15:27:57.761834','admin@gmail.com',34000.00,'ACTIVE',15,NULL,NULL,17,3),(7,'2025-06-09 15:28:10.522200','admin@gmail.com',37000.00,'ACTIVE',15,NULL,NULL,17,4),(8,'2025-06-09 15:28:52.801218','admin@gmail.com',26000.00,'ACTIVE',40,'2025-06-09 15:30:09.914415','admin@gmail.com',18,1),(9,'2025-06-09 15:29:07.035936','admin@gmail.com',29000.00,'ACTIVE',40,'2025-06-09 15:30:09.978189','admin@gmail.com',18,2),(10,'2025-06-09 15:29:16.078783','admin@gmail.com',32000.00,'ACTIVE',35,'2025-06-09 15:30:10.026001','admin@gmail.com',18,3),(11,'2025-06-09 15:29:28.936409','admin@gmail.com',35000.00,'ACTIVE',30,'2025-06-09 15:30:10.082889','admin@gmail.com',18,4),(12,'2025-06-09 15:30:28.363224','admin@gmail.com',17000.00,'ACTIVE',25,NULL,NULL,1,1),(13,'2025-06-09 15:30:38.421045','admin@gmail.com',20000.00,'ACTIVE',20,NULL,NULL,1,2),(14,'2025-06-09 15:30:47.629445','admin@gmail.com',23000.00,'ACTIVE',15,NULL,NULL,1,3),(15,'2025-06-09 15:31:06.215076','admin@gmail.com',17000.00,'ACTIVE',25,NULL,NULL,2,1),(16,'2025-06-09 15:31:15.302884','admin@gmail.com',20000.00,'ACTIVE',20,NULL,NULL,2,2),(17,'2025-06-09 15:31:24.759510','admin@gmail.com',23000.00,'ACTIVE',15,NULL,NULL,2,3),(18,'2025-06-09 15:31:42.046732','admin@gmail.com',19000.00,'ACTIVE',25,NULL,NULL,3,1),(19,'2025-06-09 15:31:51.662967','admin@gmail.com',22000.00,'ACTIVE',20,NULL,NULL,3,2),(20,'2025-06-09 15:32:03.759781','admin@gmail.com',25000.00,'ACTIVE',15,NULL,NULL,3,3),(21,'2025-06-09 15:33:15.095571','admin@gmail.com',20000.00,'ACTIVE',20,NULL,NULL,4,1),(22,'2025-06-09 15:34:21.166905','admin@gmail.com',23000.00,'ACTIVE',20,NULL,NULL,4,2),(23,'2025-06-09 15:34:29.589643','admin@gmail.com',26000.00,'ACTIVE',15,NULL,NULL,4,3),(24,'2025-06-09 15:34:37.623888','admin@gmail.com',29000.00,'ACTIVE',15,NULL,NULL,4,4),(25,'2025-06-09 15:34:58.376750','admin@gmail.com',20000.00,'ACTIVE',20,NULL,NULL,5,1),(26,'2025-06-09 15:35:07.105309','admin@gmail.com',23000.00,'ACTIVE',20,NULL,NULL,5,2),(27,'2025-06-09 15:35:55.708790','admin@gmail.com',26000.00,'ACTIVE',15,NULL,NULL,5,3),(28,'2025-06-09 15:36:11.194180','admin@gmail.com',21000.00,'ACTIVE',20,NULL,NULL,6,1),(29,'2025-06-09 15:36:20.526496','admin@gmail.com',24000.00,'ACTIVE',20,NULL,NULL,6,2),(30,'2025-06-09 15:36:28.993590','admin@gmail.com',27000.00,'ACTIVE',15,NULL,NULL,6,3),(31,'2025-06-09 15:36:52.073787','admin@gmail.com',25000.00,'ACTIVE',30,NULL,NULL,7,1),(32,'2025-06-09 15:37:00.108862','admin@gmail.com',28000.00,'ACTIVE',25,NULL,NULL,7,2),(33,'2025-06-09 15:37:07.534281','admin@gmail.com',31000.00,'ACTIVE',25,NULL,NULL,7,3),(34,'2025-06-09 15:37:19.726771','admin@gmail.com',27000.00,'ACTIVE',25,NULL,NULL,8,1),(35,'2025-06-09 15:37:34.490386','admin@gmail.com',30000.00,'ACTIVE',25,NULL,NULL,8,2),(36,'2025-06-09 15:37:48.781336','admin@gmail.com',33000.00,'ACTIVE',20,NULL,NULL,8,3),(37,'2025-06-09 15:39:59.297920','admin@gmail.com',25000.00,'ACTIVE',25,NULL,NULL,9,1),(38,'2025-06-09 15:40:11.217360','admin@gmail.com',28000.00,'ACTIVE',20,NULL,NULL,9,2),(39,'2025-06-09 15:40:20.742246','admin@gmail.com',31000.00,'ACTIVE',15,NULL,NULL,9,3),(40,'2025-06-09 16:14:49.234530','admin@gmail.com',25000.00,'ACTIVE',20,NULL,NULL,10,1),(41,'2025-06-09 16:15:43.486172','admin@gmail.com',30000.00,'ACTIVE',20,NULL,NULL,10,2),(42,'2025-06-09 16:16:05.882902','admin@gmail.com',35000.00,'ACTIVE',20,NULL,NULL,10,3),(43,'2025-06-09 16:16:33.053273','admin@gmail.com',25000.00,'ACTIVE',20,NULL,NULL,11,1),(44,'2025-06-09 16:16:43.405492','admin@gmail.com',30000.00,'ACTIVE',20,NULL,NULL,11,2),(45,'2025-06-09 16:16:53.392202','admin@gmail.com',35000.00,'ACTIVE',20,NULL,NULL,11,3),(46,'2025-06-09 16:17:11.771171','admin@gmail.com',28000.00,'ACTIVE',10,NULL,NULL,12,1),(47,'2025-06-09 16:17:31.023805','admin@gmail.com',33000.00,'INACTIVE',25,NULL,NULL,12,2),(48,'2025-06-09 16:17:46.508567','admin@gmail.com',38000.00,'ACTIVE',10,NULL,NULL,12,3),(49,'2025-06-09 16:18:00.811920','admin@gmail.com',25000.00,'ACTIVE',20,NULL,NULL,13,1),(50,'2025-06-09 16:18:13.689342','admin@gmail.com',30000.00,'ACTIVE',10,NULL,NULL,13,2),(51,'2025-06-09 16:18:31.230556','admin@gmail.com',20000.00,'ACTIVE',10,NULL,NULL,14,1),(52,'2025-06-09 16:18:46.525549','admin@gmail.com',25000.00,'ACTIVE',15,NULL,NULL,14,2),(53,'2025-06-09 18:10:13.587864','admin@gmail.com',35000.00,'ACTIVE',50,NULL,NULL,16,4);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,_binary '','2025-06-07 17:06:01.559904','admin@gmail.com','Cà phê nguyên chất không đường, đậm đà và truyền thống, phù hợp cho người thích vị mạnh.','ca_phe_den.jpeg','Cà phê đen',NULL,NULL,2),(2,_binary '','2025-06-07 17:07:19.364168','admin@gmail.com','Cà phê pha với sữa đặc, vị béo nhẹ, rất được ưa chuộng vào buổi sáng. update\n','ca_phe_sua.jpeg','Cà phê sữa','2025-06-09 18:07:22.237362','admin@gmail.com',2),(3,_binary '','2025-06-07 17:08:15.503609','admin@gmail.com','Nhiều sữa ít cà phê, phù hợp với người không quen vị đắng, vị ngọt thanh dễ uống.','bac_xiu.jpeg','Bạc xỉu',NULL,NULL,2),(4,_binary '','2025-06-07 17:11:25.099939','admin@gmail.com','Trà đen kết hợp đào ngâm và miếng đào giòn, hương vị ngọt mát, dễ chịu.','tra_dao.jpg','Trà đào',NULL,NULL,3),(5,_binary '','2025-06-07 17:12:52.258348','admin@gmail.com','Trà xanh kết hợp vải tươi, thơm nhẹ và thanh mát, thích hợp mùa hè.','tra_vai.jpg','Trà vải',NULL,NULL,3),(6,_binary '','2025-06-07 17:14:15.817989','admin@gmail.com','Trà gừng ấm nóng hòa cùng mật ong, giúp tăng cường sức khỏe và giữ ấm cơ thể.','tra_gung.jpeg','Trà gừng mật ong',NULL,NULL,3),(7,_binary '','2025-06-07 17:15:43.911417','admin@gmail.com','Trà sữa thơm ngon với trân châu đường đen dai giòn, pha chế theo công thức đặc biệt, thích hợp cho mọi mùa.','tra_sua_tran_chau.jpg','Trà sữa trân châu',NULL,NULL,4),(8,_binary '','2025-06-07 17:17:19.710237','admin@gmail.com','Matcha Nhật Bản kết hợp sữa tươi, vị béo nhẹ và thơm đặc trưng.','tra_sua_matcha.jpeg','Trà sữa matcha',NULL,NULL,4),(9,_binary '','2025-06-07 17:18:51.641377','admin@gmail.com','Trà sữa kết hợp bột cacao nguyên chất, vị ngọt nhẹ và thơm lừng.','tra_sua_socola.jpg','Trà sữa socola',NULL,NULL,4),(10,_binary '','2025-06-07 17:19:59.090792','admin@gmail.com','Bơ sáp xay cùng sữa đặc, mịn và béo ngậy, giàu dinh dưỡng.','sinh_to_bo.jpeg','Sinh tố bơ',NULL,NULL,5),(11,_binary '','2025-06-07 17:20:45.466012','admin@gmail.com','Xoài tươi xay mịn, chua ngọt hài hòa, giải nhiệt hiệu quả.','sinh_to_xoai.jpeg','Sinh tố xoài',NULL,NULL,5),(12,_binary '','2025-06-07 17:21:29.304888','admin@gmail.com','Dâu tây tươi xay cùng đá và sữa, vị chua nhẹ và thơm ngon.','sinh-to-dau-tay.png','Sinh tố dâu',NULL,NULL,5),(13,_binary '','2025-06-07 17:22:55.705166','admin@gmail.com','Cam tươi nguyên chất, giàu vitamin C, hỗ trợ tăng sức đề kháng.','nuoc_ep_cam.jpeg','Nước ép cam',NULL,NULL,6),(14,_binary '','2025-06-07 17:23:53.123621','admin@gmail.com','Giàu vitamin A, tốt cho mắt và làn da, vị thanh nhẹ dễ uống.','nuoc_ep_ca_rot.jpg','Nước ép cà rốt',NULL,NULL,6),(15,_binary '','2025-06-07 17:24:32.337790','admin@gmail.com','Dứa tươi ép nguyên chất, vị ngọt chua hài hòa, mát lạnh tự nhiên.','nuoc_ep_dua.jpeg','Nước ép dứa',NULL,NULL,6),(16,_binary '','2025-06-07 17:25:27.430123','admin@gmail.com','Đá xay kết hợp bánh Oreo và kem sữa, ngọt ngào và giòn nhẹ, rất được yêu thích.','cookie_da_xay.jpg','Cookie đá xay',NULL,NULL,1),(17,_binary '','2025-06-07 17:26:28.171127','admin@gmail.com','Matcha xay cùng đá và sữa, vị mát và thơm đặc trưng, phù hợp ngày nắng nóng.','matcha_da_xay.jpeg','Matcha đá xay',NULL,NULL,1),(18,_binary '','2025-06-07 17:27:50.626188','admin@gmail.com','Vị caramel ngọt ngào kết hợp đá mịn, lớp kem phủ hấp dẫn.','caramel_da_xay.jpg','Caramel đá xay',NULL,NULL,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `name` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,_binary '','2025-06-07 16:15:55.694477','admin@gmail.com',NULL,'admin',NULL,NULL),(2,_binary '','2025-06-07 16:16:16.112218','admin@gmail.com',NULL,'user',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_permissions` (
  `role_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  KEY `FKbx9r9uw77p58gsq4mus0mec0o` (`permission_id`),
  KEY `FKqi9odri6c1o81vjox54eedwyh` (`role_id`),
  CONSTRAINT `FKbx9r9uw77p58gsq4mus0mec0o` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `FKqi9odri6c1o81vjox54eedwyh` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_permissions`
--

LOCK TABLES `roles_permissions` WRITE;
/*!40000 ALTER TABLE `roles_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `name` enum('L','M','S','XL') NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'2025-06-07 16:48:06.497165','admin@gmail.com','Size nhỏ, phù hợp khẩu phần nhẹ','S',NULL,NULL),(2,'2025-06-07 16:48:15.868094','admin@gmail.com','Size vừa, cân đối cho nhu cầu trung bình','M',NULL,NULL),(3,'2025-06-07 16:48:23.472837','admin@gmail.com','Size lớn, dành cho người có nhu cầu cao','L',NULL,NULL),(4,'2025-06-07 16:48:53.620029','admin@gmail.com','Size rất lớn','XL',NULL,NULL);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppings`
--

DROP TABLE IF EXISTS `toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppings`
--

LOCK TABLES `toppings` WRITE;
/*!40000 ALTER TABLE `toppings` DISABLE KEYS */;
INSERT INTO `toppings` VALUES (1,'2025-06-07 17:30:11.118603','admin@gmail.com','Trân châu đen dai giòn truyền thống, phù hợp với mọi loại trà sữa .','tran_chau_den.jpg','Trân châu đen',5000.00,'ACTIVE','2025-06-08 02:19:32.112323','admin@gmail.com'),(2,'2025-06-07 17:33:10.346178','admin@gmail.com','Thạch nhiều màu vị trái cây tươi mát, giòn nhẹ và hấp dẫn.','thach_trai_cay.jpg','Thạch trái cây',6000.00,'ACTIVE',NULL,NULL),(3,'2025-06-07 17:34:05.225416','admin@gmail.com','Lớp kem mặn béo phủ trên, tạo hương vị đậm đà cho thức uống.','kem_cheese.jpg','Kem cheese',8000.00,'ACTIVE',NULL,NULL),(4,'2025-06-07 17:35:28.032308','admin@gmail.com','Trân châu trắng mềm và trong suốt, vị ngọt dịu nhẹ, dễ kết hợp.','tran_chau_trang.jpg','Trân châu trắng',5000.00,'ACTIVE',NULL,NULL),(5,'2025-06-07 17:36:11.959990','admin@gmail.com','Thạch dừa tự nhiên, giòn giòn và thơm mát.','thach_dua.jpg','Thạch dừa',5000.00,'ACTIVE',NULL,NULL),(6,'2025-06-07 17:37:12.872792','admin@gmail.com','Pudding mềm mịn từ trứng gà và sữa, béo nhẹ và thơm ngon.','pudding_trung.jpeg','Pudding trứng',7000.00,'ACTIVE',NULL,NULL),(7,'2025-06-07 17:37:52.453138','admin@gmail.com','Thạch từ cà phê nguyên chất, phù hợp với cà phê sữa và đá xay.','thach_cafe.jpg','Thạch cafe',6000.00,'ACTIVE',NULL,NULL),(8,'2025-06-07 19:27:27.548724','admin@gmail.com','bnsjsjsnmskslslsk','1749324447322-6691B62E-268E-4DB2-A38C-D478BCE74925.jpg','testtopping',10000.00,'DELETED','2025-06-08 06:31:04.223485','admin@gmail.com');
/*!40000 ALTER TABLE `toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('FEMALE','MALE','OTHER') DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `refresh_token` mediumtext,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'1749493597581-8767F5D1-B5BA-48C9-8E31-A21768B3351A.jpg','10/06/1997','2025-06-07 16:13:26.345630','anonymousUser','admin@gmail.com','OTHER','admin','$2a$10$ge6IaXbOfPFVlFKaN3BU6.sEJHUJykUfQhNqvge30OPrSBf5ID7gm','0854566980','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJleHAiOjE3NDk2MjQxNjksImlhdCI6MTc0OTUyNDE2OSwidXNlciI6eyJpZCI6MSwibmFtZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBnbWFpbC5jb20ifX0.cGFV5m_u_4hEHYGYEyfxUmF-tdaPL7-59Il9Cb5IMA116QowMPhbf8IUCbxglJgcWQ98bDoHSomEINL-LuTxvg','2025-06-10 02:56:09.526437','admin@gmail.com',1),(2,NULL,NULL,'09/06/2005','2025-06-07 16:13:50.436112','anonymousUser','antramtinh@gmail.com','MALE','Huynh An','$2a$10$GT4H7K12CUGCE9asGO3AD.SF1PKzs29.XJ4fFeFvHuSw1fjLLJEJe','0982439175','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyQGdtYWlsLmNvbSIsImV4cCI6MTc0OTU4MjQzMSwiaWF0IjoxNzQ5NDgyNDMxLCJ1c2VyIjp7ImlkIjoyLCJuYW1lIjoidXNlciIsImVtYWlsIjoidXNlckBnbWFpbC5jb20ifX0.VidiR52SPZD1XoczypEDr7kMd_Rg6x5UcBevR7Swov5-taLpFdnkblD2MJkGcmxB9xp-pW6WIayEc5W9dqwJTg','2025-06-09 15:41:22.814086','admin@gmail.com',2),(4,NULL,'1749399463074-5F031BD7-8B7C-4D31-AEDA-F9B9B745A275.jpg','08/06/2025','2025-06-08 16:17:27.617870','admin@gmail.com','trinhhoa.gl2005@gmail.com','MALE','trinhhoa','$2a$10$zTmq/DuvyhewWQZdgNonzO1r67Njx8DXPJEovlX46wlvYnZpbIKWu','0942136743','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0cmluaGhvYS5nbDIwMDVAZ21haWwuY29tIiwiZXhwIjoxNzQ5NjIzODIyLCJpYXQiOjE3NDk1MjM4MjIsInVzZXIiOnsiaWQiOjQsIm5hbWUiOiJ0cmluaGhvYSIsImVtYWlsIjoidHJpbmhob2EuZ2wyMDA1QGdtYWlsLmNvbSJ9fQ.tN0oBt7eLT20K75PT9kRQn9rTiqEE9OY011jgN_sLpdcXL4KwWyfXQtIFyPbnNlwT6Pn7xP38HNZjkAqA5UcNQ','2025-06-10 02:50:22.728897','trinhhoa.gl2005@gmail.com',2),(5,25,NULL,'2000-05-10','2025-06-09 16:20:38.519610','admin@gmail.com','nguyenvana@example.com','MALE','Nguyễn Văn A','$2a$10$LWnqCtZeF7F9LEWTIcSz4eOOXbTIXgsAjFpLDpIYkw0GwVPL6UInq','0942136743',NULL,'2025-06-09 17:52:05.948111','nguyenvana@example.com',NULL),(6,25,NULL,'2000-05-10','2025-06-09 16:20:51.186021','admin@gmail.com','nguyenvanb@example.com','MALE','Nguyễn Văn B','$2a$10$m7Qh.cQaXdZTE7hHPZhBdOv/atywdIsp.x9nt8XavABz7.sjN86M.','0942136743',NULL,'2025-06-10 02:47:45.680422','nguyenvanb@example.com',NULL),(7,25,NULL,'2000-05-10','2025-06-09 16:21:03.305242','admin@gmail.com','nguyenvanc@example.com','MALE','Nguyễn Văn C','$2a$10$K..GxRKa3yYDtFEjzjie4.tYjNF3N.SXSoG4GBTC50qgVccmeSlee','0942136743',NULL,'2025-06-10 02:49:07.934468','nguyenvanc@example.com',NULL),(9,NULL,'1749493986309-3FDC776A-2C0E-49C4-AF6D-20F861B13085.jpg','08/05/2003','2025-06-09 18:32:27.466369','admin@gmail.com','hihi@gmail.com','OTHER','Trinhhoa','$2a$10$jCE1DixL.GaRVkgbhM356.cgp6NFyaGDp0UonRTR5HrKrVF8zX0KO','0343464684',NULL,'2025-06-09 18:33:07.838727','admin@gmail.com',2),(10,NULL,'587E9D0B-C975-4B5E-B203-3DA77D73B16B.jpg','10/06/2013','2025-06-09 18:35:49.295639','admin@gmail.com','test@gmail.com','FEMALE','hhahah','$2a$10$Sqf56k5ai7wYN5bDRJ9/a.0DBIlATTfcNzag7saMKASnfkcak0ho6','0161616166',NULL,NULL,NULL,2),(11,NULL,'1749494265725-BB99EF4E-EC1B-4E94-A64C-EFAB5825C5C1.jpg','10/06/2025','2025-06-09 18:37:48.990787','admin@gmail.com','test2@gmail.com','FEMALE','test2','$2a$10$nwVh2H8otws.tuXEIJ9vQOmIp9jyxvZdYf2GkWfCs8uraPdFb2xQ2','0646463464',NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-10 11:25:33
