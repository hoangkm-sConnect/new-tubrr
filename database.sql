-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: botble
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'4BOTTv9PkzoLlEQqAxNDxlE2VPRnF3y5',1,'2023-12-18 03:10:31','2023-12-18 03:10:31','2023-12-18 03:10:31'),(2,2,'eCqjI6dJtjs6CY2r5HlNTBmNpJedsYSU',1,'2023-12-18 03:10:31','2023-12-18 03:10:31','2023-12-18 03:10:31');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'Hallie Altenwerth','hallie-altenwerth','Earum necessitatibus voluptatem labore ut.','Delectus velit libero pariatur expedita dolorem distinctio. Non rerum voluptatem iste in minima. Fuga dignissimos laboriosam eos et itaque. Cum voluptatem explicabo natus eos expedita ipsum sint. Sapiente omnis dolorum temporibus reiciendis. Labore quaerat hic in omnis velit. Dolor veritatis omnis assumenda in. Est ipsa aut vel corporis id omnis. Commodi culpa culpa aut assumenda expedita suscipit.','published',NULL,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(2,'Helena Gorczany','helena-gorczany','Qui quia aut qui aut qui.','Exercitationem dicta fugit cumque nihil. Rerum aspernatur quod cum voluptatum harum omnis saepe. Autem numquam est numquam aliquam aperiam nulla. Deleniti assumenda animi quaerat tempora rerum nostrum. Aperiam et vitae aut placeat sit beatae. Ut sapiente commodi consequatur sunt ex. Accusamus incidunt beatae omnis. Quo culpa laborum consequuntur rerum. Quas sapiente vel repudiandae officia velit quis. Repellendus pariatur excepturi nostrum nisi rem alias.','published',NULL,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(3,'Madie Runte Jr.','madie-runte-jr','Quo doloribus nesciunt rerum facilis unde libero.','Qui nisi maxime in ullam qui nulla. At ratione nostrum dolorem laudantium. Tenetur incidunt modi odit sed repellat. Ab perferendis illum sunt quasi reprehenderit. Sint non ea error voluptatem eos reiciendis. Omnis recusandae fuga consequuntur. Ut esse architecto est veritatis quis dolorem. Labore eum ut qui error modi. Optio laudantium saepe voluptate quo ut. Consectetur aut tempore veritatis et corrupti. Vel asperiores sunt quam expedita aperiam ut totam voluptas.','published',NULL,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(4,'Christa Corkery I','christa-corkery-i','Sed mollitia quis eum magnam sit facilis.','Deleniti aut numquam culpa quae labore. Et dolorem facilis corrupti eligendi ex unde nam illo. Dignissimos quis expedita quis quasi deleniti. Quia nesciunt ut fugiat nostrum aut quos pariatur. Nemo eos et quo omnis temporibus esse enim. Officia praesentium illo quia maiores dicta. Ut eveniet molestias vel est quidem corrupti. Occaecati molestias qui ut.','published',NULL,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(5,'Rubie Osinski MD','rubie-osinski-md','Et autem voluptatem eum quia quia.','Non doloremque sunt magnam est aliquid voluptas odio. Molestiae qui adipisci ut nemo voluptas quod ipsam. Ab sunt id exercitationem dolorem aut est ea. Amet occaecati minus optio eos dolorum ut dolor. Quisquam sed nesciunt architecto reprehenderit neque id. Nisi voluptatem dolor autem consequatur sunt commodi voluptatem. Voluptatem qui reiciendis quis exercitationem assumenda quia aut.','published',NULL,'2023-12-18 03:10:36','2023-12-18 03:10:36');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks_translations`
--

DROP TABLE IF EXISTS `blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`blocks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks_translations`
--

LOCK TABLES `blocks_translations` WRITE;
/*!40000 ALTER TABLE `blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Design',0,'Id ad non unde incidunt. Quia unde dolor vitae et vel voluptatem. Quasi sit minus fuga aspernatur dolores deserunt non.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(2,'Lifestyle',0,'Eos eos numquam voluptas asperiores quia. Molestias illo voluptatem quas consequatur suscipit nulla. Velit saepe eaque reiciendis quia officia. Iste et et dolores beatae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(3,'Travel Tips',2,'Doloremque aut molestiae reprehenderit laudantium. Aspernatur numquam nostrum qui eaque minus magni repellendus. Iure sequi fuga qui odio qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(4,'Healthy',0,'Itaque repellendus non dolores. Placeat enim nulla modi impedit iure similique ut non. Vel eligendi laboriosam sint harum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(5,'Hotel',0,'Inventore non perferendis nostrum ut rem. Aut culpa aperiam eligendi ad doloribus magnam. Incidunt ullam deleniti eveniet doloremque ut est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(6,'Nature',5,'Ut velit nulla quisquam ut veritatis molestiae earum. Qui hic pariatur omnis quia aut facilis rerum qui. Illo voluptatem nesciunt libero iste dignissimos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-12-18 03:10:32','2023-12-18 03:10:32');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Arno Kunde','ljohnston@example.org','+1-386-239-3395','70768 Maritza Junction Apt. 451\nHeathcotemouth, GA 57065-1266','Voluptatem ut dolore id illum.','Nam corrupti dolorem tenetur. Culpa blanditiis eos quia qui ut iure nihil. Laudantium qui qui doloremque sit quam non. Voluptatum vitae velit cumque consequuntur accusamus ipsum dignissimos. Voluptatem qui sit in vero inventore quod minus. Sed voluptatibus exercitationem officiis nihil blanditiis assumenda sit.','read','2023-12-18 03:10:36','2023-12-18 03:10:36'),(2,'Prof. Wayne Gerlach PhD','omorissette@example.com','1-234-336-7304','398 Erika Wall Apt. 757\nWillmsborough, MS 76425-9968','Voluptatum aperiam quis tempore est.','Id aut hic est libero aut molestiae. Ex aut rerum possimus. Facere et nobis cum et. Placeat fugit minima tempora ullam non sapiente. Consequatur voluptas asperiores quasi ut nisi. Eveniet qui quisquam sint sit accusantium in mollitia at. Eius est et eos eius voluptas pariatur. Qui labore libero soluta eum. Illo quidem aut adipisci consequatur facilis doloremque. Facere iste commodi quia et qui consequatur et. Commodi tenetur ut ipsa nam ipsa optio dolorem. Non quos maxime autem et molestias.','read','2023-12-18 03:10:36','2023-12-18 03:10:36'),(3,'Retha Spencer','ekonopelski@example.net','810.884.0865','997 Metz Brooks Apt. 714\nNew Hilma, VA 72765','A similique fuga quo velit sit tempora.','Voluptatum et sit porro illum corrupti ut. Esse sed omnis dolore accusantium voluptas non quo id. Voluptatem sit iure maiores et eaque sit quo. Ut sed odio nam autem consequuntur illo. Possimus est recusandae commodi voluptatem dolores magni ut. Dicta perspiciatis fugiat omnis enim quo sed iste. Suscipit molestiae itaque provident similique et. Neque ab molestiae quia et sit.','read','2023-12-18 03:10:36','2023-12-18 03:10:36'),(4,'Lauretta Runte','tyrese.hackett@example.net','1-732-267-3466','4339 Rice Lock\nVernport, NV 74717-6063','Itaque sed deserunt vitae est.','Nihil minus ut cumque. Nihil dolore facilis quia et autem unde. Aut amet possimus consequatur quasi. Sed eum nam reiciendis dolores. At nulla ex aut deserunt eum voluptas. Ea amet quia asperiores consequatur praesentium et cumque. Quidem perspiciatis adipisci facere consequatur vero. Unde saepe laboriosam veniam quia qui eius.','read','2023-12-18 03:10:36','2023-12-18 03:10:36'),(5,'Dr. Colby Russel IV','cassidy.bins@example.com','(530) 214-2305','761 Alanna Run\nEast Kelsi, HI 00154','Architecto eos eum quidem blanditiis eius.','Eum fugit modi assumenda necessitatibus sint eaque accusantium. Sed inventore veniam perferendis sapiente commodi soluta velit. Aut ut hic fugit nobis. Nisi nesciunt hic deserunt perspiciatis. Voluptatum saepe ut in quia eum. Rerum perspiciatis ea sequi a. Magnam fugiat aperiam odit delectus quo aut commodi. Voluptatem sunt voluptatem in in nisi ratione voluptatem quae. Ipsum et quia eligendi voluptas.','read','2023-12-18 03:10:36','2023-12-18 03:10:36'),(6,'Judd Casper','helmer06@example.org','+1 (520) 864-3208','396 Corrine Prairie Suite 197\nNorth Lura, MI 91242-4392','Molestias accusamus consequatur ut placeat ea.','Voluptate ipsum eum qui sit error. Repudiandae sapiente a est omnis. Animi tempora qui illo explicabo. Labore ipsum ab voluptatibus qui unde aut quo. Et fuga ullam dolorem eligendi nobis. Inventore esse unde non soluta non nesciunt sunt. Quia accusantium hic qui non dolores est. Distinctio adipisci culpa qui doloribus aut corrupti. Libero nam quod consectetur sint. Eos aut ea dolores aut rem omnis temporibus. At facere maiores qui et et sunt.','read','2023-12-18 03:10:36','2023-12-18 03:10:36'),(7,'Russel Crona','mallie.hackett@example.com','475.765.2208','183 Oberbrunner Hollow Suite 711\nLake Rahul, MN 04670-4487','Aspernatur dolor natus minus voluptas dolores.','Autem et veniam qui saepe corrupti et modi. Nam minus totam commodi incidunt consequuntur. Sint aperiam qui deserunt sit esse iste impedit. Omnis quidem eligendi in nobis fugiat sapiente vel. Dolorem amet aut et sed. Consectetur a enim veniam. In et commodi accusamus ut. Enim consectetur sed quaerat. Itaque quaerat commodi sit itaque accusamus id inventore quo. Facere eos et magni. Qui maiores quod commodi dolorem ea magnam. Fugit illum non eum ut qui pariatur eum.','unread','2023-12-18 03:10:36','2023-12-18 03:10:36'),(8,'Betsy Schmeler','buckridge.enid@example.net','1-272-628-6818','13092 Julianne Rest Apt. 303\nTurnermouth, ID 95181','Ut qui sit omnis ut expedita dicta omnis.','Dolore est qui cum ipsa aspernatur. Voluptatem deserunt provident fugit odio quisquam. Est saepe laborum sunt qui. Rerum pariatur non ab officiis minima commodi dignissimos ut. Et doloribus accusantium cumque ratione voluptatem delectus vero. Cupiditate et ipsum neque impedit voluptatem facere. Debitis distinctio perspiciatis accusamus id.','unread','2023-12-18 03:10:36','2023-12-18 03:10:36'),(9,'Jamal Monahan','nyah.hane@example.net','1-929-832-1115','6222 Caden Harbors\nMarlenefort, OR 33604-7911','Quis beatae sint voluptatibus consequatur.','Eos beatae voluptatem id ipsa amet illo consequuntur ipsa. Blanditiis tempore alias minus saepe. Est cum illo quo repellendus nostrum omnis cumque. Hic iusto consequatur et aut error eos doloribus. Omnis possimus non saepe dolorem quia. Ipsam voluptatem sit pariatur magni. Ea autem facere voluptas.','read','2023-12-18 03:10:36','2023-12-18 03:10:36'),(10,'Emerald Little','osborne.rau@example.com','520-773-0299','303 Jewell Centers\nNorth Stacyfurt, AL 09231-5261','Occaecati deleniti modi rem.','Qui in et maiores incidunt eos non ex. Ut iusto et possimus voluptas maxime laborum explicabo. Et harum qui consequuntur harum. Aut in qui temporibus quasi aliquid porro veniam. Ipsum exercitationem similique vitae consequatur mollitia laboriosam dolores aut. Culpa ad molestiae qui alias rerum quaerat. Nulla et id numquam consequatur. Laboriosam totam praesentium quia et placeat. Et et velit dignissimos. Quam non neque nihil dicta atque.','unread','2023-12-18 03:10:36','2023-12-18 03:10:36');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` bigint unsigned NOT NULL,
  `field_item_id` bigint unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_fields_field_item_id_index` (`field_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_translations`
--

DROP TABLE IF EXISTS `custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_translations`
--

LOCK TABLES `custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_groups_created_by_index` (`created_by`),
  KEY `field_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_groups`
--

LOCK TABLES `field_groups` WRITE;
/*!40000 ALTER TABLE `field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_items`
--

DROP TABLE IF EXISTS `field_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field_group_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `order` int DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `field_items_field_group_id_index` (`field_group_id`),
  KEY `field_items_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_items`
--

LOCK TABLES `field_items` WRITE;
/*!40000 ALTER TABLE `field_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Porro facilis maxime voluptatum id aperiam. Ratione rem laudantium et et animi. Nihil nostrum aperiam hic fuga.',1,0,'galleries/1.jpg',2,'published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(2,'New Day','Ut necessitatibus vitae porro et autem expedita quia. Vero vero deserunt qui aut. Qui consequatur harum qui assumenda voluptates minus.',1,0,'galleries/2.jpg',2,'published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(3,'Happy Day','Debitis perferendis sed sint non. Alias sunt voluptas beatae sed reprehenderit illo.',1,0,'galleries/3.jpg',2,'published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(4,'Nature','Laboriosam animi expedita qui voluptatibus possimus. Libero culpa id aut est cumque.',1,0,'galleries/4.jpg',2,'published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(5,'Morning','Vel maxime et sint minima iste. Dolorem asperiores aut rerum necessitatibus quae. Eius eum sunt enim voluptatem aut hic.',1,0,'galleries/5.jpg',2,'published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(6,'Photography','Quod vitae molestiae doloribus eius aspernatur nulla voluptate sequi. Sed nesciunt eos iste ut et vitae.',1,0,'galleries/6.jpg',2,'published','2023-12-18 03:10:32','2023-12-18 03:10:32');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Praesentium possimus deleniti ea impedit. Accusamus excepturi aut sapiente hic. Laborum dolorem voluptatem aut magnam iusto quibusdam laborum aut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et quis nulla omnis sit. Aperiam quia temporibus nihil rem officiis. Voluptas voluptate quam facilis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ex id consequatur pariatur laborum sit velit earum. Officiis magni facere laborum nemo. Possimus quia totam ex et sed.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Et suscipit cum dicta sed maiores quia. Ipsa a et velit a inventore quisquam tenetur. Voluptas quae magnam quis nihil voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui eum velit consequuntur natus aut. In sint cum dolorem explicabo. Temporibus totam voluptatem laboriosam qui voluptate sed accusantium.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dolor odio quasi consequatur nisi alias. Ut sit similique non consequuntur. Dolores magni quae aspernatur corrupti ipsam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Est eum odio repellendus officia. Et sint asperiores vitae autem. Rerum aliquam quaerat totam est consequatur maiores laudantium.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Nostrum voluptas vero maiores veritatis. Laboriosam et nesciunt tenetur nisi laborum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Libero quo autem quia rem possimus ut. Perferendis et quas soluta deleniti. Eum magni ducimus quia laudantium iure.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sunt aut quidem dignissimos. Nobis minus odio aut officia nobis. Perferendis non suscipit sunt illo perspiciatis temporibus.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2023-12-18 03:10:32','2023-12-18 03:10:32'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Praesentium possimus deleniti ea impedit. Accusamus excepturi aut sapiente hic. Laborum dolorem voluptatem aut magnam iusto quibusdam laborum aut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et quis nulla omnis sit. Aperiam quia temporibus nihil rem officiis. Voluptas voluptate quam facilis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ex id consequatur pariatur laborum sit velit earum. Officiis magni facere laborum nemo. Possimus quia totam ex et sed.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Et suscipit cum dicta sed maiores quia. Ipsa a et velit a inventore quisquam tenetur. Voluptas quae magnam quis nihil voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui eum velit consequuntur natus aut. In sint cum dolorem explicabo. Temporibus totam voluptatem laboriosam qui voluptate sed accusantium.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dolor odio quasi consequatur nisi alias. Ut sit similique non consequuntur. Dolores magni quae aspernatur corrupti ipsam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Est eum odio repellendus officia. Et sint asperiores vitae autem. Rerum aliquam quaerat totam est consequatur maiores laudantium.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Nostrum voluptas vero maiores veritatis. Laboriosam et nesciunt tenetur nisi laborum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Libero quo autem quia rem possimus ut. Perferendis et quas soluta deleniti. Eum magni ducimus quia laudantium iure.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sunt aut quidem dignissimos. Nobis minus odio aut officia nobis. Perferendis non suscipit sunt illo perspiciatis temporibus.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2023-12-18 03:10:32','2023-12-18 03:10:32'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Praesentium possimus deleniti ea impedit. Accusamus excepturi aut sapiente hic. Laborum dolorem voluptatem aut magnam iusto quibusdam laborum aut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et quis nulla omnis sit. Aperiam quia temporibus nihil rem officiis. Voluptas voluptate quam facilis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ex id consequatur pariatur laborum sit velit earum. Officiis magni facere laborum nemo. Possimus quia totam ex et sed.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Et suscipit cum dicta sed maiores quia. Ipsa a et velit a inventore quisquam tenetur. Voluptas quae magnam quis nihil voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui eum velit consequuntur natus aut. In sint cum dolorem explicabo. Temporibus totam voluptatem laboriosam qui voluptate sed accusantium.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dolor odio quasi consequatur nisi alias. Ut sit similique non consequuntur. Dolores magni quae aspernatur corrupti ipsam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Est eum odio repellendus officia. Et sint asperiores vitae autem. Rerum aliquam quaerat totam est consequatur maiores laudantium.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Nostrum voluptas vero maiores veritatis. Laboriosam et nesciunt tenetur nisi laborum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Libero quo autem quia rem possimus ut. Perferendis et quas soluta deleniti. Eum magni ducimus quia laudantium iure.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sunt aut quidem dignissimos. Nobis minus odio aut officia nobis. Perferendis non suscipit sunt illo perspiciatis temporibus.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2023-12-18 03:10:32','2023-12-18 03:10:32'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Praesentium possimus deleniti ea impedit. Accusamus excepturi aut sapiente hic. Laborum dolorem voluptatem aut magnam iusto quibusdam laborum aut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et quis nulla omnis sit. Aperiam quia temporibus nihil rem officiis. Voluptas voluptate quam facilis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ex id consequatur pariatur laborum sit velit earum. Officiis magni facere laborum nemo. Possimus quia totam ex et sed.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Et suscipit cum dicta sed maiores quia. Ipsa a et velit a inventore quisquam tenetur. Voluptas quae magnam quis nihil voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui eum velit consequuntur natus aut. In sint cum dolorem explicabo. Temporibus totam voluptatem laboriosam qui voluptate sed accusantium.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dolor odio quasi consequatur nisi alias. Ut sit similique non consequuntur. Dolores magni quae aspernatur corrupti ipsam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Est eum odio repellendus officia. Et sint asperiores vitae autem. Rerum aliquam quaerat totam est consequatur maiores laudantium.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Nostrum voluptas vero maiores veritatis. Laboriosam et nesciunt tenetur nisi laborum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Libero quo autem quia rem possimus ut. Perferendis et quas soluta deleniti. Eum magni ducimus quia laudantium iure.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sunt aut quidem dignissimos. Nobis minus odio aut officia nobis. Perferendis non suscipit sunt illo perspiciatis temporibus.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2023-12-18 03:10:32','2023-12-18 03:10:32'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Praesentium possimus deleniti ea impedit. Accusamus excepturi aut sapiente hic. Laborum dolorem voluptatem aut magnam iusto quibusdam laborum aut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et quis nulla omnis sit. Aperiam quia temporibus nihil rem officiis. Voluptas voluptate quam facilis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ex id consequatur pariatur laborum sit velit earum. Officiis magni facere laborum nemo. Possimus quia totam ex et sed.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Et suscipit cum dicta sed maiores quia. Ipsa a et velit a inventore quisquam tenetur. Voluptas quae magnam quis nihil voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui eum velit consequuntur natus aut. In sint cum dolorem explicabo. Temporibus totam voluptatem laboriosam qui voluptate sed accusantium.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dolor odio quasi consequatur nisi alias. Ut sit similique non consequuntur. Dolores magni quae aspernatur corrupti ipsam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Est eum odio repellendus officia. Et sint asperiores vitae autem. Rerum aliquam quaerat totam est consequatur maiores laudantium.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Nostrum voluptas vero maiores veritatis. Laboriosam et nesciunt tenetur nisi laborum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Libero quo autem quia rem possimus ut. Perferendis et quas soluta deleniti. Eum magni ducimus quia laudantium iure.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sunt aut quidem dignissimos. Nobis minus odio aut officia nobis. Perferendis non suscipit sunt illo perspiciatis temporibus.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2023-12-18 03:10:32','2023-12-18 03:10:32'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Praesentium possimus deleniti ea impedit. Accusamus excepturi aut sapiente hic. Laborum dolorem voluptatem aut magnam iusto quibusdam laborum aut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et quis nulla omnis sit. Aperiam quia temporibus nihil rem officiis. Voluptas voluptate quam facilis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ex id consequatur pariatur laborum sit velit earum. Officiis magni facere laborum nemo. Possimus quia totam ex et sed.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Et suscipit cum dicta sed maiores quia. Ipsa a et velit a inventore quisquam tenetur. Voluptas quae magnam quis nihil voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui eum velit consequuntur natus aut. In sint cum dolorem explicabo. Temporibus totam voluptatem laboriosam qui voluptate sed accusantium.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dolor odio quasi consequatur nisi alias. Ut sit similique non consequuntur. Dolores magni quae aspernatur corrupti ipsam.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Est eum odio repellendus officia. Et sint asperiores vitae autem. Rerum aliquam quaerat totam est consequatur maiores laudantium.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Nostrum voluptas vero maiores veritatis. Laboriosam et nesciunt tenetur nisi laborum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Libero quo autem quia rem possimus ut. Perferendis et quas soluta deleniti. Eum magni ducimus quia laudantium iure.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sunt aut quidem dignissimos. Nobis minus odio aut officia nobis. Perferendis non suscipit sunt illo perspiciatis temporibus.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2023-12-18 03:10:32','2023-12-18 03:10:32');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','885d4ea3fa37750faade0e15e8c3829b',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','13e90a41d361838eb5361dd2a1cd9a72',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','3b9a01e302f36abc4eb34484170e3818',2,'Botble\\Menu\\Models\\Menu'),(4,'en_US','729a40a56f8cf4cb711dd52e2e3a0dc7',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',9730,'galleries/1.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(2,0,'10','10',1,'image/jpeg',9730,'galleries/10.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(3,0,'2','2',1,'image/jpeg',9730,'galleries/2.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(4,0,'3','3',1,'image/jpeg',9730,'galleries/3.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(5,0,'4','4',1,'image/jpeg',9730,'galleries/4.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(6,0,'5','5',1,'image/jpeg',9730,'galleries/5.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(7,0,'6','6',1,'image/jpeg',9730,'galleries/6.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(8,0,'7','7',1,'image/jpeg',9730,'galleries/7.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(9,0,'8','8',1,'image/jpeg',9730,'galleries/8.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(10,0,'9','9',1,'image/jpeg',9730,'galleries/9.jpg','[]','2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(11,0,'1','1',2,'image/jpeg',9730,'news/1.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(12,0,'10','10',2,'image/jpeg',9730,'news/10.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(13,0,'11','11',2,'image/jpeg',9730,'news/11.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(14,0,'12','12',2,'image/jpeg',9730,'news/12.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(15,0,'13','13',2,'image/jpeg',9730,'news/13.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(16,0,'14','14',2,'image/jpeg',9730,'news/14.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(17,0,'15','15',2,'image/jpeg',9730,'news/15.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(18,0,'16','16',2,'image/jpeg',9730,'news/16.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(19,0,'2','2',2,'image/jpeg',9730,'news/2.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(20,0,'3','3',2,'image/jpeg',9730,'news/3.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(21,0,'4','4',2,'image/jpeg',9730,'news/4.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(22,0,'5','5',2,'image/jpeg',9730,'news/5.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(23,0,'6','6',2,'image/jpeg',9730,'news/6.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(24,0,'7','7',2,'image/jpeg',9730,'news/7.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(25,0,'8','8',2,'image/jpeg',9730,'news/8.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(26,0,'9','9',2,'image/jpeg',9730,'news/9.jpg','[]','2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(27,0,'1','1',3,'image/jpeg',9730,'members/1.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(28,0,'10','10',3,'image/jpeg',9730,'members/10.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(29,0,'11','11',3,'image/png',9730,'members/11.png','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(30,0,'2','2',3,'image/jpeg',9730,'members/2.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(31,0,'3','3',3,'image/jpeg',9730,'members/3.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(32,0,'4','4',3,'image/jpeg',9730,'members/4.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(33,0,'5','5',3,'image/jpeg',9730,'members/5.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(34,0,'6','6',3,'image/jpeg',9730,'members/6.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(35,0,'7','7',3,'image/jpeg',9730,'members/7.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(36,0,'8','8',3,'image/jpeg',9730,'members/8.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(37,0,'9','9',3,'image/jpeg',9730,'members/9.jpg','[]','2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(38,0,'favicon','favicon',4,'image/png',491,'general/favicon.png','[]','2023-12-18 03:10:36','2023-12-18 03:10:36',NULL),(39,0,'logo','logo',4,'image/png',19947,'general/logo.png','[]','2023-12-18 03:10:36','2023-12-18 03:10:36',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'galleries',NULL,'galleries',0,'2023-12-18 03:10:31','2023-12-18 03:10:31',NULL),(2,0,'news',NULL,'news',0,'2023-12-18 03:10:32','2023-12-18 03:10:32',NULL),(3,0,'members',NULL,'members',0,'2023-12-18 03:10:35','2023-12-18 03:10:35',NULL),(4,0,'general',NULL,'general',0,'2023-12-18 03:10:36','2023-12-18 03:10:36',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Isabelle','Jacobi','Majesty must cross-examine.',NULL,'member@gmail.com','$2y$12$posR3CvY87x0T7dg2ZDjD.wRutLQFUcXCe9niL.DSeH55.8K.pc9y',28,'1994-09-14','1-848-553-8534','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:36','published'),(2,'Lucie','Ortiz','I can\'t take more.\' \'You.',NULL,'nathaniel.bruen@hotmail.com','$2y$12$ZLw45pE8XikuW7Nto1NiVOJ/OIk3/xtLn8Jxmia6l9AEeaExIjjGm',29,'2001-05-29','1-325-408-3629','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:36','published'),(3,'Felicity','Jenkins','Rabbit\'s little white kid.',NULL,'domenic10@klocko.com','$2y$12$ykhhJiKXPg7gFa7sDNG6c.2k1j5i2gvHq7L8Zrs7NXqD6sQnKDKQ.',30,'2021-03-22','304-716-6741','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:36','published'),(4,'Gerhard','Rau','March Hare meekly replied.',NULL,'mondricka@gmail.com','$2y$12$8QnZjloSuE0JSoXqJzk2AuxzxNK1BuuotP8uq2RUkMlGrwCCEUxQS',31,'2006-10-16','814-886-8404','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:34','2023-12-18 03:10:36','published'),(5,'Fabiola','Hansen','Hatter replied. \'Of course.',NULL,'jbednar@hotmail.com','$2y$12$37m4UPEkusY0hQvHmZwudeQznuXTsLzhvDIzg8eTaFa0Bu4xlktxO',32,'2004-12-25','+12146900784','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:34','2023-12-18 03:10:36','published'),(6,'Branson','Simonis','Why, I haven\'t had a bone in.',NULL,'olga.gottlieb@becker.info','$2y$12$0QzwVpOMOVwzKpPL6Iwtie/lHBkDitp78OZ6q.ugLd/oykD5FEqY2',33,'1981-04-17','614-508-5555','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:34','2023-12-18 03:10:36','published'),(7,'Augustus','Koelpin','Cat, \'if you only kept on.',NULL,'charles18@gmail.com','$2y$12$.YyvQXQ/gV6O46YQ8mOEEuIx2FitjICjhtPoXqPA7Om3ziM2OVli2',34,'2006-01-03','+12529658515','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:34','2023-12-18 03:10:36','published'),(8,'Alyson','Greenholt','All this time the Queen to.',NULL,'elroy05@hotmail.com','$2y$12$Hdz2H2L6bKbliAh4bPbayOdGOcBcowhd9mmmKjWaevgdzcM4JNYGS',35,'2007-01-04','+1-539-910-2393','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:34','2023-12-18 03:10:36','published'),(9,'Norbert','Lesch','And he added looking angrily.',NULL,'uvolkman@lesch.info','$2y$12$/Iybw8WPO5tGB166eY4pLORHNuf.4NNfuLIm4Df.7FthVEXsQO35y',36,'2006-10-07','(267) 595-4269','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:35','2023-12-18 03:10:36','published'),(10,'Chet','Doyle','Alice replied very gravely.',NULL,'amely.blanda@gmail.com','$2y$12$zX66mqEdLUgg4Wjf58.G6umdrqj9MmZbnMHUss1D7t.QtNYUE0pjq',37,'2007-07-15','(856) 866-2478','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:35','2023-12-18 03:10:36','published'),(11,'John','Smith','Five. \'I heard every word.',NULL,'john.smith@botble.com','$2y$12$019i6aO3QKtJ6EAVqU58X.M8ygelkOVQb0DdL2SuFr5lIulo90QSm',27,'1986-02-04','+1.878.255.8642','2023-12-18 10:10:33',NULL,NULL,'2023-12-18 03:10:36','2023-12-18 03:10:36','published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-12-18 03:10:36','2023-12-18 03:10:36');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(2,1,0,NULL,NULL,'https://botble.com/go/download-cms',NULL,0,'Purchase',NULL,'_blank',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(3,1,0,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(4,1,0,5,'Botble\\Page\\Models\\Page','/galleries',NULL,0,'Galleries',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(5,1,0,3,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(6,2,0,2,'Botble\\Blog\\Models\\Category','/lifestyle',NULL,0,'Lifestyle',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(7,2,0,3,'Botble\\Blog\\Models\\Category','/travel-tips',NULL,0,'Travel Tips',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(8,2,0,4,'Botble\\Blog\\Models\\Category','/healthy',NULL,0,'Healthy',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(9,2,0,5,'Botble\\Blog\\Models\\Category','/hotel',NULL,0,'Hotel',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(10,2,0,6,'Botble\\Blog\\Models\\Category','/nature',NULL,0,'Nature',NULL,'_self',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(11,3,0,NULL,NULL,'https://facebook.com','fab fa-facebook',0,'Facebook',NULL,'_blank',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(12,3,0,NULL,NULL,'https://twitter.com','fab fa-twitter',0,'Twitter',NULL,'_blank',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(13,3,0,NULL,NULL,'https://github.com','fab fa-github',0,'GitHub',NULL,'_blank',0,'2023-12-18 03:10:36','2023-12-18 03:10:36'),(14,3,0,NULL,NULL,'https://linkedin.com','fab fa-linkedin',0,'Linkedin',NULL,'_blank',0,'2023-12-18 03:10:36','2023-12-18 03:10:36');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-12-18 03:10:36','2023-12-18 03:10:36'),(2,'Featured Categories','featured-categories','published','2023-12-18 03:10:36','2023-12-18 03:10:36'),(3,'Social','social','published','2023-12-18 03:10:36','2023-12-18 03:10:36');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2015_06_29_025744_create_audit_history',2),(34,'2023_11_14_033417_change_request_column_in_table_audit_histories',2),(35,'2017_02_13_034601_create_blocks_table',3),(36,'2021_12_03_081327_create_blocks_translations',3),(37,'2015_06_18_033822_create_blog_table',4),(38,'2021_02_16_092633_remove_default_value_for_author_type',4),(39,'2021_12_03_030600_create_blog_translations',4),(40,'2022_04_19_113923_add_index_to_table_posts',4),(41,'2023_08_29_074620_make_column_author_id_nullable',4),(42,'2016_06_17_091537_create_contacts_table',5),(43,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(44,'2017_03_27_150646_re_create_custom_field_tables',6),(45,'2022_04_30_030807_table_custom_fields_translation_table',6),(46,'2016_10_13_150201_create_galleries_table',7),(47,'2021_12_03_082953_create_gallery_translations',7),(48,'2022_04_30_034048_create_gallery_meta_translations_table',7),(49,'2023_08_29_075308_make_column_user_id_nullable',7),(50,'2016_10_03_032336_create_languages_table',8),(51,'2023_09_14_022423_add_index_for_language_table',8),(52,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(53,'2021_12_03_075608_create_page_translations',9),(54,'2023_07_06_011444_create_slug_translations_table',9),(55,'2017_10_04_140938_create_member_table',10),(56,'2023_10_16_075332_add_status_column',10),(57,'2016_05_28_112028_create_system_request_logs_table',11),(58,'2016_10_07_193005_create_translations_table',12),(59,'2023_12_12_105220_drop_translations_table',12);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"2\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\" title=\"Galleries\"][/all-galleries]</div>',2,NULL,'no-sidebar',NULL,'published','2023-12-18 03:10:31','2023-12-18 03:10:31'),(2,'Blog','---',2,NULL,NULL,NULL,'published','2023-12-18 03:10:31','2023-12-18 03:10:31'),(3,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>',2,NULL,NULL,NULL,'published','2023-12-18 03:10:31','2023-12-18 03:10:31'),(4,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',2,NULL,NULL,NULL,'published','2023-12-18 03:10:31','2023-12-18 03:10:31'),(5,'Galleries','<div>[gallery title=\"Galleries\"][/gallery]</div>',2,NULL,NULL,NULL,'published','2023-12-18 03:10:31','2023-12-18 03:10:31');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (6,1),(2,1),(3,2),(3,3),(4,3),(3,4),(5,4),(4,5),(4,6),(5,7),(3,7),(4,8),(1,8),(1,9),(3,9),(2,10),(6,10),(4,11),(1,11),(6,12),(1,12),(2,13),(6,13),(3,14),(1,14),(1,15),(2,15),(6,16),(4,16);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (3,1),(5,1),(4,1),(5,2),(1,2),(2,2),(5,3),(3,3),(5,4),(1,4),(5,5),(2,5),(3,5),(1,6),(2,6),(3,6),(1,7),(1,8),(3,8),(2,8),(5,9),(4,9),(1,9),(3,10),(5,10),(2,10),(1,11),(3,11),(5,11),(2,12),(5,12),(3,13),(2,13),(4,13),(4,14),(5,14),(3,14),(2,15),(1,15),(4,15),(4,16),(1,16);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'The Top 2020 Handbag Trends to Know','Alice, looking down at her feet, they seemed to be no chance of getting her hands on her face brightened up at the flowers and those cool fountains, but she added, to herself, \'whenever I eat one of.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I don\'t want to see that the poor little feet, I wonder what they WILL do next! As for pulling me out of the shelves as she went on all the party sat silent for a minute, trying to put it right; \'not that it was impossible to say anything. \'Why,\' said the Gryphon. \'Turn a somersault in the air, I\'m afraid, but you might do something better with the lobsters, out to sea!\" But the insolence of his great wig.\' The judge, by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she had known them all her fancy, that: they never executes nobody, you know. Come on!\' So they got their tails fast in their paws. \'And how do you want to see the Hatter went on, half to herself, \'to be going messages for a long tail, certainly,\' said Alice, timidly; \'some of the jury eagerly wrote down all three dates on.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I give you fair warning,\' shouted the Queen was close behind it was talking in a confused way, \'Prizes! Prizes!\' Alice had begun to dream that she did not like to be Number One,\' said Alice. \'You are,\' said the Cat, and vanished again. Alice waited till she was to find it out, we should all have our heads cut off, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried another question. \'What sort of way to change the subject. \'Go on with the Queen,\' and she had peeped into.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'I\'ve tried every way, and nothing seems to suit them!\' \'I haven\'t the least idea what Latitude or Longitude I\'ve got to come down the little glass table. \'Now, I\'ll manage better this time,\' she said, without even looking round. \'I\'ll fetch the executioner went off like an honest man.\' There was a table set out under a tree a few minutes, and she soon made out the words: \'Where\'s the other side of the table, but there were no arches left, and all her knowledge of history, Alice had learnt several things of this was of very little way forwards each time and a large arm-chair at one end to the waving of the house of the deepest contempt. \'I\'ve seen a rabbit with either a waistcoat-pocket, or a worm. The question is, Who in the sand with wooden spades, then a great many teeth, so she went slowly after it: \'I never went to school in the kitchen that did not like to be lost: away went Alice after it, \'Mouse dear! Do come back and see how he did it,) he did it,) he did not much.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King. Here one of the Gryphon, and, taking Alice by the carrier,\' she thought; \'and how funny it\'ll seem to encourage the witness at all: he kept shifting from one foot up the little crocodile Improve his shining tail, And pour the waters of the fact. \'I keep them to be true): If she should meet the real Mary Ann, what ARE you talking to?\' said the Lory, as soon as the White Rabbit. She was a long time with the edge of the ground.\' So she began again: \'Ou est ma chatte?\' which was lit up by a very truthful child; \'but little girls in my size; and as for the garden!\' and she thought it over here,\' said the King, who had been anxiously looking across the garden, and I could show you our cat Dinah: I think you\'d take a fancy to cats if you don\'t know where Dinn may be,\' said the Queen, \'and take this young lady to see if she were saying lessons, and began picking them up again with a pair of white kid gloves: she took courage, and went back to my boy, I beat him when he finds out who.</p>','published',2,'Botble\\ACL\\Models\\User',1,'news/1.jpg',390,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(2,'Top Search Engine Optimization Strategies!','Cat. \'I said pig,\' replied Alice; \'and I do so like that curious song about the twentieth time that day. \'A likely story indeed!\' said the Gryphon: and Alice heard the Queen\'s ears--\' the Rabbit.','<p>Duchess\'s cook. She carried the pepper-box in her head, she tried to fancy what the name of the month is it?\' \'Why,\' said the Caterpillar. Alice thought she had a little worried. \'Just about as curious as it went, as if she had wept when she caught it, and talking over its head. \'Very uncomfortable for the accident of the miserable Mock Turtle. \'Certainly not!\' said Alice in a more subdued tone, and everybody laughed, \'Let the jury wrote it down into its nest. Alice crouched down among the party. Some of the room. The cook threw a frying-pan after her as hard as he spoke, and added \'It isn\'t a letter, after all: it\'s a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' said Alice. \'Did you say pig, or fig?\' said the Gryphon went on, yawning and rubbing its eyes, \'Of course, of course; just what I say,\' the Mock Turtle; \'but it seems to grin, How neatly spread his claws, And welcome little fishes.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>SOMETHING interesting is sure to kill it in time,\' said the Gryphon: and Alice looked up, and there they are!\' said the Mock Turtle is.\' \'It\'s the Cheshire Cat, she was trying to put everything upon Bill! I wouldn\'t say anything about it, and then raised himself upon tiptoe, put his mouth close to the beginning again?\' Alice ventured to remark. \'Tut, tut, child!\' said the Hatter. Alice felt a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Cat. \'I\'d nearly forgotten.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse, in a hurried nervous manner, smiling at everything that Alice said; \'there\'s a large fan in the shade: however, the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice very humbly: \'you had got to the whiting,\' said Alice, seriously, \'I\'ll have nothing more happened, she decided to remain where she was talking. \'How CAN I have to ask his neighbour to tell him. \'A nice muddle their slates\'ll be in before the trial\'s over!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, a little irritated at the mushroom (she had kept a piece of rudeness was more and more puzzled, but she stopped hastily, for the moment she appeared; but she heard the Rabbit was no one else seemed inclined to say it any longer than that,\' said the Duchess; \'and most things twinkled after that--only the March Hare. \'Exactly so,\' said Alice. \'Why, SHE,\' said the King, rubbing his hands; \'so now let the Dormouse shook its head impatiently, and said, \'That\'s right, Five! Always lay.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The Hatter was the BEST butter,\' the March Hare interrupted in a very pretty dance,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the Duchess, as she went on eagerly. \'That\'s enough about lessons,\' the Gryphon at the picture.) \'Up, lazy thing!\' said the Queen. \'Well, I shan\'t go, at any rate: go and get in at the picture.) \'Up, lazy thing!\' said Alice, and she hurried out of the tail, and ending with the lobsters, out to sea as you are; secondly, because she was going a journey, I should think!\' (Dinah was the first to speak. \'What size do you like to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, (she had grown to her that she hardly knew what she was terribly frightened all the jurors were all talking together: she made it out loud. \'Thinking again?\' the Duchess asked, with another hedgehog, which seemed to follow, except a little bottle on it, and behind it when she had been anxiously looking across the field.</p>','published',2,'Botble\\ACL\\Models\\User',1,'news/2.jpg',726,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(3,'Which Company Would You Choose?','Mock Turtle a little house in it about four inches deep and reaching half down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the thought that it was too.','<p>Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know I\'m mad?\' said Alice. \'I don\'t much care where--\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took no notice of her or of anything to say, she simply bowed, and took the least notice of her skirt, upsetting all the things get used to it in a great thistle, to keep herself from being broken. She hastily put down yet, before the end of the sense, and the roof of the court and got behind him, and very nearly getting up and repeat something now. Tell her to speak with. Alice waited till the Pigeon in a moment to think this a good deal frightened by this time). \'Don\'t grunt,\' said Alice; \'all I know all sorts of little pebbles came rattling in at the Duchess replied, in a voice sometimes choked with sobs, to sing you a couple?\' \'You are old,\' said the Gryphon. \'Do you know what a Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at poor.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I didn\'t know that cats COULD grin.\' \'They all can,\' said the Cat, \'if you don\'t even know what to uglify is, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the little door: but, alas! the little glass box that was lying under the table: she opened the door between us. For instance, if you could draw treacle out of the jurymen. \'It isn\'t mine,\' said the March Hare, who had been broken to pieces. \'Please, then,\' said the Pigeon. \'I can see you\'re trying to invent.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen, \'and he shall tell you just now what the next verse,\' the Gryphon only answered \'Come on!\' cried the Mouse, frowning, but very politely: \'Did you say it.\' \'That\'s nothing to do: once or twice, half hoping she might as well go back, and see after some executions I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Hatter. This piece of rudeness was more and more sounds of broken glass. \'What a pity it wouldn\'t stay!\' sighed the Lory, with a pair of the mushroom, and crawled away in the pool, \'and she sits purring so nicely by the pope, was soon submitted to by all three to settle the question, and they all looked so good, that it led into a cucumber-frame, or something of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got to grow larger again, and all dripping wet, cross, and uncomfortable. The moment Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>March Hare. \'It was the King; and the Dormouse shook its head to feel which way you can;--but I must go and take it away!\' There was certainly not becoming. \'And that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen had only one way of expressing yourself.\' The baby grunted again, and put it into his plate. Alice did not at all know whether it was labelled \'ORANGE MARMALADE\', but to get very tired of being all alone here!\' As she said to one of the song, she kept on puzzling about it in asking riddles that have no sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then quietly marched off after the candle is blown out, for she could for sneezing. There was no label this time it vanished quite slowly, beginning with the lobsters to the Queen, but she was to eat or drink something or other; but the Hatter and the party went back to the King, and the March Hare interrupted in a mournful tone, \'he won\'t do a thing I ever was at in all their simple sorrows, and.</p>','published',2,'Botble\\ACL\\Models\\User',1,'news/3.jpg',126,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(4,'Used Car Dealer Sales Tricks Exposed','Gryphon. \'We can do without lobsters, you know. But do cats eat bats, I wonder?\' As she said to the seaside once in the world! Oh, my dear Dinah! I wonder what you\'re doing!\' cried Alice, with a.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>It quite makes my forehead ache!\' Alice watched the White Rabbit: it was done. They had a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the long hall, and wander about among those beds of bright flowers and the little golden key, and unlocking the door that led into a graceful zigzag, and was just possible it had struck her foot! She was looking at it uneasily, shaking it every now and then keep tight hold of it; and as it left no mark on the Duchess\'s cook. She carried the pepper-box in her life, and had to do such a nice little dog near our house I should think it so VERY remarkable in that; nor did Alice think it was,\' said the Duchess: \'and the moral of that is, but I don\'t like them raw.\' \'Well, be off, and she heard one of these cakes,\' she thought, \'and hand round the table, but there was Mystery,\' the Mock Turtle interrupted, \'if you only kept on puzzling about it just now.\' \'It\'s the oldest rule in the kitchen that did not see.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>So they got settled down again in a piteous tone. And the Gryphon at the window, and on both sides of it; so, after hunting all about for a minute, trying to invent something!\' \'I--I\'m a little nervous about this; \'for it might appear to others that what you mean,\' the March Hare. Alice sighed wearily. \'I think you might like to hear her try and say \"How doth the little--\"\' and she went on: \'But why did they draw?\' said Alice, and she went on. Her listeners were perfectly quiet till she was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King repeated angrily, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went on: \'--that begins with an M--\' \'Why with an M, such as mouse-traps, and the Gryphon as if nothing had happened. \'How am I to do that,\' said the Lory, as soon as it spoke (it was Bill, I fancy--Who\'s to go through next walking about at the stick, and tumbled head over heels in its hurry to get in?\' she repeated, aloud. \'I must be the right distance--but then I wonder if I chose,\' the Duchess replied, in a few yards off. The Cat only grinned a little different. But if I\'m not Ada,\' she said, as politely as she passed; it was all about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the lobsters and the three gardeners at it, busily painting them red. Alice thought over all the party sat silent for a conversation. Alice felt a very deep well. Either the well was very deep, or she should meet the real Mary Ann, and be turned out of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Bill! catch hold of it; then Alice dodged behind a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they lived at the righthand bit again, and Alice was not a regular rule: you invented it just grazed his nose, and broke off a head unless there was the King; and the executioner ran wildly up and say \"How doth the little--\"\' and she said this, she came in with the tea,\' the Hatter went on, \'and most things twinkled after that--only the March Hare and his friends shared their never-ending meal, and the turtles all advance! They are waiting on the glass table as before, \'It\'s all about as she picked up a little hot tea upon its nose. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a tunnel for some time without interrupting it. \'They were learning to draw, you know--\' She had already heard her voice close to her, still it had finished this short speech, they all cheered. Alice thought she might as well go back, and.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2175,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(5,'20 Ways To Sell Your Product Faster','But her sister kissed her, and the Queen\'s absence, and were resting in the wood, \'is to grow up any more questions about it, and very angrily. \'A knot!\' said Alice, quite forgetting her promise.','<p>I know. Silence all round, if you only kept on good terms with him, he\'d do almost anything you liked with the tea,\' the Hatter with a little faster?\" said a whiting to a snail. \"There\'s a porpoise close behind it when she was now the right house, because the Duchess asked, with another dig of her hedgehog. The hedgehog was engaged in a natural way. \'I thought you did,\' said the King. Here one of the door of which was a little shriek and a great many teeth, so she felt a little animal (she couldn\'t guess of what work it would be four thousand miles down, I think--\' (for, you see, so many out-of-the-way things to happen, that it would like the look of things at all, as the Lory hastily. \'I thought you did,\' said the Hatter, with an M?\' said Alice. \'Then it doesn\'t matter which way you go,\' said the King. \'It began with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a shiver. \'I beg your pardon!\' cried Alice again, for she thought, and it was too late to wish.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon. \'We can do without lobsters, you know. But do cats eat bats, I wonder?\' Alice guessed in a deep sigh, \'I was a large cat which was sitting between them, fast asleep, and the King said to herself, (not in a Little Bill It was as much as she went out, but it had been. But her sister sat still just as well as she had not a bit hurt, and she felt that she had quite a commotion in the chimney close above her: then, saying to herself as she spoke. (The unfortunate little Bill had left off.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle, who looked at them with the Duchess, who seemed to be executed for having missed their turns, and she tried another question. \'What sort of present!\' thought Alice. The King and Queen of Hearts, she made some tarts, All on a summer day: The Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King exclaimed, turning to the waving of the court. \'What do you know about it, even if my head would go through,\' thought poor Alice, who was a little hot tea upon its nose. The Dormouse had closed its eyes were getting so used to queer things happening. While she was playing against herself, for she was talking. Alice could see this, as she did not like to go down the bottle, she found herself lying on the floor, and a large crowd collected round it: there were any tears. No, there were no tears. \'If you\'re going to give the hedgehog to, and, as she wandered about in all directions, tumbling up against each other; however, they got thrown.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, as she was not a moment like a serpent. She had quite a new kind of rule, \'and vinegar that makes people hot-tempered,\' she went on at last, they must needs come wriggling down from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' But she did not like the look of things at all, at all!\' \'Do as I was a table, with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Duchess sneezed occasionally; and as it can\'t possibly make me smaller, I can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great concert given by the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a time she saw in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was nothing else to do, so Alice went on again: \'Twenty-four hours, I THINK; or is it directed.</p>','published',2,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2194,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(6,'The Secrets Of Rich And Famous Writers','She said it to his ear. Alice considered a little, \'From the Queen. \'Their heads are gone, if it thought that it would be like, but it did not venture to go near the door and went on all the other.','<p>Duchess said in a whisper, half afraid that she was not quite like the look of things at all, at all!\' \'Do as I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of YOUR adventures.\' \'I could tell you more than that, if you wouldn\'t squeeze so.\' said the King, with an air of great dismay, and began to cry again, for this time with great emphasis, looking hard at Alice for some minutes. The Caterpillar was the Hatter. \'You MUST remember,\' remarked the King, the Queen, who was passing at the frontispiece if you hold it too long; and that in some alarm. This time there were any tears. No, there were three gardeners at it, and burning with curiosity, she ran across the garden, where Alice could not help bursting out laughing: and when she was now only ten inches high, and was going to remark myself.\' \'Have you seen the Mock Turtle. \'Hold your tongue, Ma!\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the Mock Turtle yet?\' \'No,\' said Alice.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'but when you come and join the dance. Would not, could not, would not give all else for two reasons. First, because I\'m on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Queen, \'Really, my dear, and that is rather a handsome pig, I think.\' And she opened the door of the room. The cook threw a frying-pan after her as she.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'and if it thought that she did not like the look of the door between us. For instance, if you like,\' said the Mock Turtle. Alice was silent. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a Jack-in-the-box, and up the chimney, has he?\' said Alice timidly. \'Would you tell me,\' said Alice, in a hurried nervous manner, smiling at everything that Alice had not long to doubt, for the next witness!\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon went on, \'if you only walk long enough.\' Alice felt so desperate that she had felt quite strange at first; but she felt unhappy. \'It was the first to speak. \'What size do you know about this business?\' the King said, turning to the other: the only difficulty was, that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, rather doubtfully, as she stood looking at the proposal. \'Then the eleventh day must have been ill.\' \'So they were,\' said the White.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, she soon found herself in a large canvas bag, which tied up at the Mouse\'s tail; \'but why do you want to go near the door, staring stupidly up into the court, by the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole party swam to the end of his shrill little voice, the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting in the pool rippling to the Knave of Hearts, she made some tarts, All on a summer day: The Knave of Hearts, she made out the answer to it?\' said the Caterpillar decidedly, and the whole pack rose up into hers--she could hear the name again!\' \'I won\'t have any pepper in my life!\' Just as she stood still where she was about a whiting to a mouse: she had nothing yet,\' Alice replied eagerly, for she was now about a thousand times as large as himself, and this was the same size: to be executed for having cheated.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2349,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(7,'Imagine Losing 20 Pounds In 14 Days!','I\'LL soon make you grow shorter.\' \'One side will make you grow taller, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no notice of.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>VERY good opportunity for croqueting one of them.\' In another minute there was enough of it in with a growl, And concluded the banquet--] \'What IS the same thing,\' said the Duchess, it had been. But her sister sat still and said nothing. \'Perhaps it doesn\'t matter a bit,\' she thought of herself, \'I don\'t see,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for any lesson-books!\' And so it was too late to wish that! She went on in a shrill, passionate voice. \'Would YOU like cats if you cut your finger VERY deeply with a growl, And concluded the banquet--] \'What IS the use of a tree a few minutes to see that queer little toss of her ever getting out of a candle is blown out, for she had put the Dormouse again, so that they were all talking at once, and ran off, thinking while she was quite out of sight: \'but it doesn\'t matter a bit,\' said the King, \'that only makes the matter on, What would become of it; and as Alice could speak again. The Mock Turtle\'s.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, always ready to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the right house, because the chimneys were shaped like ears and whiskers, how late it\'s getting!\' She was moving them about as it was certainly too much frightened that she was quite a long way back, and see how the Dodo said, \'EVERYBODY has won, and all would change (she knew) to the confused clamour of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'it\'s very interesting. I.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Rabbit\'s voice along--\'Catch him, you by the whole thing very absurd, but they began solemnly dancing round and round the neck of the wood to listen. \'Mary Ann! Mary Ann!\' said the Queen. An invitation from the sky! Ugh, Serpent!\' \'But I\'m not the right word) \'--but I shall have to whisper a hint to Time, and round the thistle again; then the puppy jumped into the air off all its feet at once, she found it made no mark; but he could think of anything else. CHAPTER V. Advice from a bottle marked \'poison,\' it is you hate--C and D,\' she added in a hurry to get in?\' \'There might be some sense in your knocking,\' the Footman continued in the distance, and she crossed her hands on her toes when they passed too close, and waving their forepaws to mark the time, while the Dodo solemnly presented the thimble, looking as solemn as she did not dare to disobey, though she looked back once or twice, half hoping that the hedgehog had unrolled itself, and was delighted to find that the meeting.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse. \'Of course,\' the Mock Turtle interrupted, \'if you don\'t even know what to beautify is, I can\'t put it in with a smile. There was no label this time she had not gone (We know it to her great delight it fitted! Alice opened the door that led into a cucumber-frame, or something of the March Hare said to herself, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the beginning of the song. \'What trial is it?\' \'Why,\' said the King; and as for the end of trials, \"There was some attempts at applause, which was a dispute going on within--a constant howling and sneezing, and every now and then, and holding it to be seen--everything seemed to be two people. \'But it\'s no use in saying anything more till the eyes appeared, and then she remembered that she did it at last, more calmly, though still sobbing a little three-legged table, all made of solid glass; there was not a bit afraid of them!\' \'And who is Dinah, if I can listen all day to such stuff? Be off, or.</p>','published',2,'Botble\\ACL\\Models\\User',0,'news/7.jpg',1606,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(8,'Are You Still Using That Slow, Old Typewriter?','Why, there\'s hardly room to open it; but, as the whole party look so grave and anxious.) Alice could hardly hear the Rabbit was still in existence; \'and now for the Duchess to play croquet.\' Then.','<p>I THINK; or is it directed to?\' said one of them bowed low. \'Would you like the look of the others looked round also, and all the creatures wouldn\'t be in before the officer could get to the part about her any more questions about it, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'I\'ve tried the little glass table. \'Now, I\'ll manage better this time,\' she said, as politely as she swam lazily about in the other. In the very tones of the jurors were all writing very busily on slates. \'What are they doing?\' Alice whispered to the puppy; whereupon the puppy began a series of short charges at the Queen, who had followed him into the sea, \'and in that ridiculous fashion.\' And he got up and said, \'It was much pleasanter at home,\' thought poor Alice, \'it would be very likely it can talk: at any rate, the Dormouse say?\' one of these cakes,\' she thought, and it was out of it, and kept doubling itself up and said, \'So you think you\'re changed, do you?\' \'I\'m.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>After a while, finding that nothing more happened, she decided on going into the book her sister on the hearth and grinning from ear to ear. \'Please would you like to have the experiment tried. \'Very true,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he wore his crown over the edge of her head pressing against the ceiling, and had to fall a long time with one of the guinea-pigs cheered, and was just in time to see if she was playing against herself, for this time she had not.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I only wish it was,\' he said. \'Fifteenth,\' said the Dormouse fell asleep instantly, and neither of the sense, and the Queen was to find her in such a new kind of authority over Alice. \'Stand up and walking off to the beginning of the same words as before, \'and things are \"much of a procession,\' thought she, \'if people had all to lie down on one of them bowed low. \'Would you like to try the patience of an oyster!\' \'I wish the creatures wouldn\'t be in before the trial\'s over!\' thought Alice. \'I don\'t think--\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice in a ring, and begged the Mouse was swimming away from him, and said to Alice, they all stopped and looked into its mouth and yawned once or twice, and shook itself. Then it got down off the fire, and at once and put it to be seen: she found she could get away without speaking, but at any rate he might answer questions.--How am I to get out again. Suddenly she came suddenly upon an open place, with a soldier on each side.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>It doesn\'t look like one, but the Dormouse shook its head impatiently, and said, very gravely, \'I think, you ought to be seen: she found herself safe in a large piece out of sight. Alice remained looking thoughtfully at the other, trying every door, she walked on in a low, weak voice. \'Now, I give you fair warning,\' shouted the Gryphon, half to itself, half to Alice. \'What IS a long hookah, and taking not the right words,\' said poor Alice, \'it would be like, \'--for they haven\'t got much evidence YET,\' she said to herself, rather sharply; \'I advise you to set them free, Exactly as we needn\'t try to find that her shoulders were nowhere to be patted on the back. However, it was just beginning to feel which way she put her hand again, and all that,\' said the King. The White Rabbit was no time to be a queer thing, to be ashamed of yourself,\' said Alice, surprised at her feet, they seemed to be seen: she found her way out. \'I shall do nothing of the March Hare had just upset the week.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/8.jpg',455,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(9,'A Skin Cream That’s Proven To Work','This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Mock Turtle had just succeeded in bringing herself down to look through into the garden with one.','<p>I think?\' \'I had NOT!\' cried the Mouse, sharply and very soon finished it off. \'If everybody minded their own business,\' the Duchess said after a few yards off. The Cat seemed to have wondered at this, that she hardly knew what she did, she picked up a little before she found she had never before seen a cat without a moment\'s pause. The only things in the back. However, it was the White Rabbit blew three blasts on the top of his head. But at any rate a book of rules for shutting people up like a mouse, you know. Come on!\' So they got settled down again into its eyes by this time.) \'You\'re nothing but out-of-the-way things to happen, that it felt quite relieved to see its meaning. \'And just as if he thought it over a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen to play croquet with the dream of Wonderland of long ago: and how she was near enough to get through was more hopeless than ever: she sat still and said anxiously to herself, \'after such a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I can\'t remember,\' said the White Rabbit with pink eyes ran close by it, and on both sides of the sort!\' said Alice. \'You must be,\' said the King: \'leave out that she was as long as I was going a journey, I should think very likely true.) Down, down, down. There was a real Turtle.\' These words were followed by a very curious to know when the Rabbit just under the sea,\' the Gryphon whispered in reply, \'for fear they should forget them before the officer could get to the law, And argued each.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen. \'Well, I should like to be a person of authority over Alice. \'Stand up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know that Cheshire cats always grinned; in fact, I didn\'t know that you\'re mad?\' \'To begin with,\' said the Cat, \'if you don\'t know much,\' said Alice; \'that\'s not at all like the Mock Turtle recovered his voice, and, with tears running down his face, as long as it can be,\' said the Pigeon; \'but if they do, why then they\'re a kind of authority over Alice. \'Stand up and throw us, with the dream of Wonderland of long ago: and how she would get up and went on all the time she had tired herself out with trying, the poor little juror (it was exactly the right way of nursing it, (which was to eat her up in her hand, and made another snatch in the air, and came back again. \'Keep your temper,\' said the Pigeon; \'but if they do, why then they\'re a kind of authority among them, called out, \'Sit down, all of them were animals, and some were birds,) \'I.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mouse, sharply and very nearly carried it off. \'If everybody minded their own business,\' the Duchess was VERY ugly; and secondly, because she was peering about anxiously among the party. Some of the shelves as she spoke. \'I must be removed,\' said the King. \'When did you manage on the stairs. Alice knew it was neither more nor less than no time she\'d have everybody executed, all round. (It was this last word two or three times over to herself, \'after such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must be what he did with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed in the middle of the hall: in fact she was near enough to look down and make one repeat lessons!\' thought Alice; \'I daresay it\'s a set of verses.\' \'Are they in the direction it pointed to, without trying to fix on one, the cook tulip-roots instead of the tail, and ending with.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/9.jpg',741,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(10,'10 Reasons To Start Your Own, Profitable Website!','AT ALL. Soup does very well without--Maybe it\'s always pepper that had made the whole party at once and put it right; \'not that it would not give all else for two Pennyworth only of beautiful Soup?.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know I do!\' said Alice sadly. \'Hand it over a little shaking among the trees, a little faster?\" said a timid and tremulous sound.] \'That\'s different from what I was a general chorus of \'There goes Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the little passage: and THEN--she found herself in a frightened tone. \'The Queen will hear you! You see, she came in sight of the Rabbit\'s little white kid gloves: she took courage, and went on in a frightened tone. \'The Queen of Hearts, and I never understood what it meant till now.\' \'If that\'s all you know I\'m mad?\' said Alice. \'I don\'t think they play at all anxious to have wondered at this, that she had been broken to pieces. \'Please, then,\' said Alice, rather doubtfully, as she listened, or seemed to have changed since her swim in the sea. The master was an old Turtle--we used to call him Tortoise--\' \'Why did they live on?\' said the Gryphon. \'I\'ve.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Now, if you only walk long enough.\' Alice felt that it led into a pig,\' Alice quietly said, just as if a dish or kettle had been to her, And mentioned me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, who always took a minute or two, she made out what it was: at first was in confusion, getting the Dormouse fell asleep instantly, and neither of the wood to listen. The Fish-Footman began by taking the little golden key was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter was the Cat went on, without attending to her, And mentioned me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of meaning in it.\' The jury all brightened up again.) \'Please your Majesty,\' said Two, in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, a little snappishly. \'You\'re enough to get in?\' asked Alice again, for really I\'m quite tired and out of the way the people near the centre of the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, feeling very glad she had found the fan and the other end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that if you drink much from a Caterpillar The Caterpillar was the White Rabbit blew three blasts on the floor, as it could go, and making quite a long and a fall, and a sad tale!\' said the Caterpillar. Alice thought to herself. Imagine her surprise, when the Rabbit began.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter and the turtles all advance! They are waiting on the stairs. Alice knew it was sneezing and howling alternately without a cat! It\'s the most important piece of evidence we\'ve heard yet,\' said the Queen. First came ten soldiers carrying clubs; these were all writing very busily on slates. \'What are you thinking of?\' \'I beg your pardon!\' cried Alice (she was rather doubtful whether she ought to be nothing but the cook had disappeared. \'Never mind!\' said the Dormouse, who was a very interesting dance to watch,\' said Alice, who had been to her, though, as they used to queer things happening. While she was now more than that, if you were INSIDE, you might knock, and I don\'t want YOU with us!\"\' \'They were obliged to say it over) \'--yes, that\'s about the whiting!\' \'Oh, as to prevent its undoing itself,) she carried it off. * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice as he said in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not like.</p>','published',2,'Botble\\ACL\\Models\\User',0,'news/10.jpg',1096,NULL,'2023-12-18 03:10:32','2023-12-18 03:10:32'),(11,'Simple Ways To Reduce Your Unwanted Wrinkles!','So you see, Alice had no very clear notion how delightful it will be When they take us up and down looking for eggs, as it can be,\' said the Lory. Alice replied in an angry voice--the.','<p>Queen jumped up and said, without opening its eyes, for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well to say it out again, so violently, that she was quite out of its mouth and began talking again. \'Dinah\'ll miss me very much to-night, I should frighten them out of court! Suppress him! Pinch him! Off with his whiskers!\' For some minutes it seemed quite natural); but when the White Rabbit cried out, \'Silence in the schoolroom, and though this was her turn or not. So she stood looking at everything that Alice had never been in a very pretty dance,\' said Alice sadly. \'Hand it over afterwards, it occurred to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine THIS witness.\' \'Well, if I shall see it pop down a good many little girls of her going, though she knew that it might happen any minute, \'and then,\' thought she, \'if people had all to lie down on the ground near the door that led into the air off all its feet at the door as you.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>She generally gave herself very good advice, (though she very good-naturedly began hunting about for it, she found a little wider. \'Come, it\'s pleased so far,\' said the King, who had not got into it), and sometimes shorter, until she made it out into the loveliest garden you ever saw. How she longed to get to,\' said the Hatter. \'You might just as well say,\' added the Gryphon, with a large cauldron which seemed to be two people! Why, there\'s hardly room to grow up any more if you\'d like it very.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar. This was quite tired and out of sight, they were nice grand words to say.) Presently she began fancying the sort of people live about here?\' \'In THAT direction,\' the Cat again, sitting on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, in a twinkling! Half-past one, time for dinner!\' (\'I only wish they COULD! I\'m sure I can\'t take more.\' \'You mean you can\'t be Mabel, for I know is, it would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the baby, and not to make it stop. \'Well, I\'d hardly finished the goose, with the words a little, half expecting to see how he did it,) he did with the strange creatures of her knowledge. \'Just think of what sort it was) scratching and scrambling about in the middle, nursing a baby; the cook and the words did not much larger than a rat-hole: she knelt down and began singing in its hurry to get in?\' \'There might be hungry, in which case it would make with.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ME,\' but nevertheless she uncorked it and put back into the wood. \'If it had no idea how confusing it is right?\' \'In my youth,\' said the Mock Turtle. Alice was just saying to herself \'Now I can remember feeling a little pattering of feet in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess to play croquet.\' The Frog-Footman repeated, in the other. \'I beg your acceptance of this remark, and thought it would,\' said the Gryphon: and it sat for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she went slowly after it: \'I never heard it say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to whisper a hint to Time, and round the table, but there was a child,\' said the Lory, who at last came a rumbling of little pebbles came rattling in at the time they had been would have done that, you know,\' Alice gently.</p>','published',2,'Botble\\ACL\\Models\\User',0,'news/11.jpg',291,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:33'),(12,'Apple iMac with Retina 5K display review','Queen, who were lying round the court was a table in the newspapers, at the end of half an hour or so there were no tears. \'If you\'re going to leave the court; but on second thoughts she decided to.','<p>Alice hastily; \'but I\'m not used to queer things happening. While she was now only ten inches high, and was gone in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and found in it about four feet high. \'Whoever lives there,\' thought Alice, as she had drunk half the bottle, saying to herself, and once she remembered trying to find herself talking familiarly with them, as if he had a wink of sleep these three little sisters,\' the Dormouse began in a confused way, \'Prizes! Prizes!\' Alice had got its head impatiently, and walked off; the Dormouse shook itself, and began by producing from under his arm a great thistle, to keep herself from being broken. She hastily put down her flamingo, and began to get an opportunity of taking it away. She did it so quickly that the hedgehog to, and, as the hall was very nearly carried it off. \'If everybody minded their own business!\' \'Ah, well! It means much the same thing as a last resource, she put them into a pig,\' Alice quietly said.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>There was a dispute going on within--a constant howling and sneezing, and every now and then; such as, that a moment\'s pause. The only things in the sea, though you mayn\'t believe it--\' \'I never was so much frightened that she had nothing else to say a word, but slowly followed her back to the jury. \'Not yet, not yet!\' the Rabbit was no label this time the Queen put on his knee, and the sounds will take care of themselves.\"\' \'How fond she is such a new kind of authority among them, called out.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mabel! I\'ll try if I fell off the cake. * * * * * * * \'Come, my head\'s free at last!\' said Alice hastily; \'but I\'m not myself, you see.\' \'I don\'t see how he can thoroughly enjoy The pepper when he sneezes: He only does it matter to me whether you\'re a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never heard it say to itself \'Then I\'ll go round a deal faster than it does.\' \'Which would NOT be an old crab, HE was.\' \'I never thought about it,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have been that,\' said the Caterpillar contemptuously. \'Who are YOU?\' said the Caterpillar. \'Well, perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Cat, \'if you don\'t even know what \"it\" means.\' \'I know SOMETHING interesting is sure to make out what she did, she picked up a little way off, panting, with its arms and legs in all my limbs very supple By the time at the stick, and tumbled head over heels in its hurry to change.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter, and, just as I\'d taken the highest tree in front of the sort. Next came the royal children, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I can see you\'re trying to find that the Queen of Hearts, carrying the King\'s crown on a little recovered from the trees behind him. \'--or next day, maybe,\' the Footman went on to her great disappointment it was very nearly getting up and to her usual height. It was so small as this before, never! And I declare it\'s too bad, that it might happen any minute, \'and then,\' thought she, \'what would become of you? I gave her answer. \'They\'re done with a kind of serpent, that\'s all the other side, the puppy made another snatch in the way down one side and up the fan and gloves. \'How queer it seems,\' Alice said with some severity; \'it\'s very rude.\' The Hatter was out of the room. The cook threw a frying-pan after her as hard as he spoke. \'UNimportant, of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself, \'in my.</p>','published',2,'Botble\\ACL\\Models\\User',0,'news/12.jpg',153,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:33'),(13,'10,000 Web Site Visitors In One Month:Guaranteed','But said I didn\'t!\' interrupted Alice. \'You must be,\' said the Hatter; \'so I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the Cat: \'we\'re all mad here. I\'m.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I was going to give the prizes?\' quite a long and a crash of broken glass, from which she found she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was the BEST butter, you know.\' \'And what are they doing?\' Alice whispered to the company generally, \'You are not attending!\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'it\'s laid for a minute, trying to make personal remarks,\' Alice said to Alice, \'Have you guessed the riddle yet?\' the Hatter was the same words as before, \'It\'s all about as curious as it was quite a long way. So she began: \'O Mouse, do you mean \"purpose\"?\' said Alice. \'Did you say pig, or fig?\' said the Queen, but she heard it muttering to itself in a few minutes that she was trying to fix on one, the cook and the reason is--\' here the Mock Turtle at last, more calmly, though still sobbing a little scream, half of anger, and tried to beat them off, and had no idea what to uglify is, you know. Come on!\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen was close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the three gardeners at it, busily painting them red. Alice thought to herself. \'Of the mushroom,\' said the Dormouse shook itself, and began to say than his first remark, \'It was the Cat in a very interesting dance to watch,\' said Alice, quite forgetting in the sea. The master was an old conger-eel, that used to know. Let me see: that would be like, \'--for they haven\'t got much evidence YET,\' she said.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice noticed with some severity; \'it\'s very interesting. I never heard of one,\' said Alice. \'It must be a grin, and she very good-naturedly began hunting about for a minute, while Alice thought decidedly uncivil. \'But perhaps it was not going to begin at HIS time of life. The King\'s argument was, that she did not wish to offend the Dormouse turned out, and, by the prisoner to--to somebody.\' \'It must have been changed several times since then.\' \'What do you call it purring, not growling,\' said Alice. \'Call it what you would have done that, you know,\' the Mock Turtle went on, taking first one side and then they both bowed low, and their curls got entangled together. Alice was very provoking to find my way into that beautiful garden--how IS that to be seen: she found this a very difficult game indeed. The players all played at once to eat some of the deepest contempt. \'I\'ve seen hatters before,\' she said to the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse was swimming away from him, and very angrily. \'A knot!\' said Alice, surprised at her own mind (as well as she said to the other birds tittered audibly. \'What I was thinking I should say \"With what porpoise?\"\' \'Don\'t you mean that you weren\'t to talk nonsense. The Queen\'s argument was, that her shoulders were nowhere to be nothing but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was exactly the right size to do so. \'Shall we try another figure of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done just as if it likes.\' \'I\'d rather not,\' the Cat went on, \'I must be growing small again.\' She got up this morning? I almost wish I\'d gone to see a little wider. \'Come, it\'s pleased so far,\' thought Alice, and she felt that it was good manners for her to wink with one of the birds and animals that had made her so savage when they liked, so that her flamingo was gone in a confused way, \'Prizes! Prizes!\' Alice had no very clear notion how delightful it will.</p>','published',2,'Botble\\ACL\\Models\\User',0,'news/13.jpg',1322,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:33'),(14,'Unlock The Secrets Of Selling High Ticket Items','Alice. \'Come on, then,\' said Alice, looking down with her head!\' about once in the kitchen that did not venture to say to itself, half to herself, and shouted out, \'You\'d better not do that again!\'.','<p>Rabbit angrily. \'Here! Come and help me out of its mouth open, gazing up into the jury-box, or they would call after her: the last few minutes she heard it muttering to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my dear Dinah! I wonder if I\'ve been changed in the middle of one! There ought to have the experiment tried. \'Very true,\' said the Dodo. Then they all crowded round it, panting, and asking, \'But who is Dinah, if I must, I must,\' the King put on his slate with one of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the jurors were all shaped like the Queen?\' said the Knave, \'I didn\'t know that you\'re mad?\' \'To begin with,\' said the Dormouse, not choosing to notice this last remark that had made her feel very sleepy and stupid), whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, jumping up in her life before, and he went on, taking first one side and up I goes like a telescope! I think I may as well say this), \'to go.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I suppose it doesn\'t understand English,\' thought Alice; but she heard a little worried. \'Just about as she spoke, but no result seemed to have no answers.\' \'If you didn\'t sign it,\' said the young Crab, a little shaking among the trees, a little startled by seeing the Cheshire Cat: now I shall only look up in a deep, hollow tone: \'sit down, both of you, and listen to her, so she felt unhappy. \'It was much pleasanter at home,\' thought poor Alice, who was gently brushing away some dead leaves.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the King: \'however, it may kiss my hand if it makes me grow larger, I can remember feeling a little before she had to fall a long and a great hurry. An enormous puppy was looking down at them, and it\'ll sit up and repeat something now. Tell her to begin.\' For, you see, because some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a fight with another hedgehog, which seemed to quiver all over their slates; \'but it doesn\'t understand English,\' thought Alice; \'but a grin without a grin,\' thought Alice; \'but when you throw them, and considered a little more conversation with her head!\' the Queen ordering off her knowledge, as there seemed to have him with them,\' the Mock Turtle yet?\' \'No,\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a small passage, not much larger than a pig, my dear,\' said Alice, a little quicker. \'What a curious feeling!\' said Alice; not that she.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Footman remarked, \'till tomorrow--\' At this moment Alice felt so desperate that she might find another key on it, and very soon finished off the fire, stirring a large rabbit-hole under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were never even introduced to a shriek, \'and just as well say,\' added the March Hare. Alice was a general clapping of hands at this: it was over at last: \'and I wish you wouldn\'t squeeze so.\' said the King. On this the White Rabbit, who was trembling down to her to wink with one elbow against the roof of the court, arm-in-arm with the Queen jumped up in such a thing. After a while she was going to begin at HIS time of life. The King\'s argument was, that if something wasn\'t done about it in a shrill, passionate voice. \'Would YOU like cats if you cut your finger VERY deeply with a kind of sob, \'I\'ve tried every way, and the beak-- Pray how did you call him Tortoise, if he wasn\'t going to begin again, it was impossible to say \'I once tasted--\' but.</p>','published',2,'Botble\\ACL\\Models\\User',0,'news/14.jpg',484,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:33'),(15,'4 Expert Tips On How To Choose The Right Men’s Wallet','Don\'t let him know she liked them best, For this must ever be A secret, kept from all the arches are gone from this side of the shelves as she listened, or seemed to be Number One,\' said Alice.','<p>White Rabbit cried out, \'Silence in the direction in which you usually see Shakespeare, in the book,\' said the King, with an M, such as mouse-traps, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to the door, and tried to speak, and no more of the wood to listen. \'Mary Ann! Mary Ann!\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Rabbit coming to look through into the air, and came back again. \'Keep your temper,\' said the Queen. \'Can you play croquet?\' The soldiers were always getting up and down, and felt quite strange at first; but she felt that it felt quite strange at first; but she heard it muttering to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>For some minutes the whole party at once crowded round it, panting, and asking, \'But who is Dinah, if I chose,\' the Duchess sang the second verse of the others all joined in chorus, \'Yes, please do!\' but the Dodo had paused as if she did not get hold of anything, but she could remember them, all these strange Adventures of hers would, in the air, and came back again. \'Keep your temper,\' said the White Rabbit, with a shiver. \'I beg pardon, your Majesty,\' said the Caterpillar. \'Well, perhaps.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Owl and the moment how large she had got to the Hatter. He came in with a soldier on each side, and opened their eyes and mouths so VERY nearly at the number of executions the Queen shouted at the Gryphon went on. \'Or would you like to be otherwise.\"\' \'I think you could see it written up somewhere.\' Down, down, down. There was a good way off, panting, with its arms and legs in all my life, never!\' They had a pencil that squeaked. This of course, I meant,\' the King said to the door, and tried to curtsey as she could, for the accident of the Mock Turtle went on, half to Alice. \'Only a thimble,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Queen was to twist it up into the air, and came flying down upon their faces, so that it had entirely disappeared; so the King was the BEST butter, you know.\' He was looking about for it, he was going to remark myself.\' \'Have you seen the Mock Turtle. \'Very much.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon answered, very nearly getting up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the sea!\' cried the Mock Turtle interrupted, \'if you don\'t know the song, she kept tossing the baby violently up and rubbed its eyes: then it chuckled. \'What fun!\' said the King; \'and don\'t be nervous, or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of the shelves as she spoke. \'I must be a comfort, one way--never to be an advantage,\' said Alice, swallowing down her flamingo, and began an account of the trees had a head unless there was no use now,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost think I may as well as if a dish or kettle had been all the players, except the King, going up to the Dormouse, and repeated her question. \'Why did they live at the number of bathing machines in the pool was getting quite crowded with the Mouse had changed his mind, and was just going to.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',1143,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:33'),(16,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','King, going up to them to sell,\' the Hatter began, in rather a complaining tone, \'and they drew all manner of things--everything that begins with a smile. There was exactly three inches high). \'But.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The executioner\'s argument was, that if you hold it too long; and that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, seriously, \'I\'ll have nothing more happened, she decided on going into the way down one side and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at them with large round eyes, and half believed herself in Wonderland, though she looked up, and began to feel very queer indeed:-- \'\'Tis the voice of the miserable Mock Turtle. \'No, no! The adventures first,\' said the Duck: \'it\'s generally a frog or a worm. The question is, what did the archbishop find?\' The Mouse did not feel encouraged to ask his neighbour to tell him. \'A nice muddle their slates\'ll be in a trembling voice to a lobster--\' (Alice began to repeat it, but her head through the doorway; \'and even if my head would go anywhere without a moment\'s pause. The only things in the kitchen.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go with the strange creatures of her or of anything to put the Dormouse shook itself, and was suppressed. \'Come, that finished the goose, with the lobsters to the general conclusion, that wherever you go to law: I will just explain to you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, timidly; \'some of the accident, all except the Lizard, who seemed to be patted on the ground as she heard the Queen was silent. The King.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Mouse only shook its head down, and felt quite strange at first; but she could not stand, and she told her sister, as well say this), \'to go on till you come to an end! \'I wonder if I can reach the key; and if it had VERY long claws and a great thistle, to keep back the wandering hair that WOULD always get into her face. \'Wake up, Alice dear!\' said her sister; \'Why, what are YOUR shoes done with?\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as he found it so yet,\' said the Hatter; \'so I can\'t see you?\' She was a different person then.\' \'Explain all that,\' said Alice. \'Of course not,\' said the one who had been anything near the centre of the leaves: \'I should think you might like to try the patience of an oyster!\' \'I wish I hadn\'t begun my tea--not above a week or so--and what with the lobsters to the door. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the White.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, seriously, \'I\'ll have nothing more to be an advantage,\' said Alice, always ready to make SOME change in my own tears! That WILL be a comfort, one way--never to be full of soup. \'There\'s certainly too much of it in the air. \'--as far out to sea as you go on? It\'s by far the most important piece of rudeness was more and more sounds of broken glass, from which she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the words:-- \'I speak severely to my boy, I beat him when he finds out who was peeping anxiously into its face in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not like to drop the jar for fear of killing somebody, so managed to put his shoes on. \'--and just take his head mournfully. \'Not I!\' said the Duchess: \'and the moral of that is, but I think you\'d take a fancy to herself \'It\'s the first sentence in her lessons in the kitchen that did not appear, and after a minute or two she.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',340,NULL,'2023-12-18 03:10:33','2023-12-18 03:10:33');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2023-12-18 03:10:31','2023-12-18 03:10:31');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','6c6a3a3717f86da71d875214706667a4',NULL,'2023-12-18 03:10:36'),(2,'api_enabled','0',NULL,'2023-12-18 03:10:36'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]',NULL,'2023-12-18 03:10:36'),(4,'theme','ripple',NULL,'2023-12-18 03:10:36'),(5,'show_admin_bar','1',NULL,'2023-12-18 03:10:36'),(6,'language_hide_default','1',NULL,'2023-12-18 03:10:36'),(7,'language_switcher_display','dropdown',NULL,'2023-12-18 03:10:36'),(8,'language_display','all',NULL,'2023-12-18 03:10:36'),(9,'language_hide_languages','[]',NULL,'2023-12-18 03:10:36'),(10,'theme-ripple-site_title','Just another Botble CMS site',NULL,NULL),(11,'theme-ripple-seo_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(12,'theme-ripple-copyright','©2023 Your Company. All right reserved.',NULL,NULL),(13,'theme-ripple-favicon','general/favicon.png',NULL,NULL),(14,'theme-ripple-logo','general/logo.png',NULL,NULL),(15,'theme-ripple-website','https://botble.com',NULL,NULL),(16,'theme-ripple-contact_email','support@company.com',NULL,NULL),(17,'theme-ripple-site_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(18,'theme-ripple-phone','+(123) 345-6789',NULL,NULL),(19,'theme-ripple-address','214 West Arnold St. New York, NY 10002',NULL,NULL),(20,'theme-ripple-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(21,'theme-ripple-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(22,'theme-ripple-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(23,'theme-ripple-homepage_id','1',NULL,NULL),(24,'theme-ripple-blog_page_id','2',NULL,NULL),(25,'theme-ripple-primary_color','#AF0F26',NULL,NULL),(26,'theme-ripple-primary_font','Roboto',NULL,NULL),(27,'theme-ripple-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2023-12-18 03:10:31','2023-12-18 03:10:31'),(2,'blog',2,'Botble\\Page\\Models\\Page','','2023-12-18 03:10:31','2023-12-18 03:10:31'),(3,'contact',3,'Botble\\Page\\Models\\Page','','2023-12-18 03:10:31','2023-12-18 03:10:31'),(4,'cookie-policy',4,'Botble\\Page\\Models\\Page','','2023-12-18 03:10:31','2023-12-18 03:10:31'),(5,'galleries',5,'Botble\\Page\\Models\\Page','','2023-12-18 03:10:31','2023-12-18 03:10:31'),(6,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2023-12-18 03:10:32','2023-12-18 03:10:32'),(7,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2023-12-18 03:10:32','2023-12-18 03:10:32'),(8,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2023-12-18 03:10:32','2023-12-18 03:10:32'),(9,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2023-12-18 03:10:32','2023-12-18 03:10:32'),(10,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2023-12-18 03:10:32','2023-12-18 03:10:32'),(11,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2023-12-18 03:10:32','2023-12-18 03:10:32'),(12,'design',1,'Botble\\Blog\\Models\\Category','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(13,'lifestyle',2,'Botble\\Blog\\Models\\Category','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(14,'travel-tips',3,'Botble\\Blog\\Models\\Category','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(15,'healthy',4,'Botble\\Blog\\Models\\Category','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(16,'hotel',5,'Botble\\Blog\\Models\\Category','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(17,'nature',6,'Botble\\Blog\\Models\\Category','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-12-18 03:10:32','2023-12-18 03:10:32'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-12-18 03:10:32','2023-12-18 03:10:32'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-12-18 03:10:32','2023-12-18 03:10:32'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-12-18 03:10:32','2023-12-18 03:10:32'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-12-18 03:10:32','2023-12-18 03:10:32'),(23,'the-top-2020-handbag-trends-to-know',1,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(24,'top-search-engine-optimization-strategies',2,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(25,'which-company-would-you-choose',3,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(26,'used-car-dealer-sales-tricks-exposed',4,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(27,'20-ways-to-sell-your-product-faster',5,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(28,'the-secrets-of-rich-and-famous-writers',6,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(29,'imagine-losing-20-pounds-in-14-days',7,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(30,'are-you-still-using-that-slow-old-typewriter',8,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(31,'a-skin-cream-thats-proven-to-work',9,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:32','2023-12-18 03:10:32'),(32,'10-reasons-to-start-your-own-profitable-website',10,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:33','2023-12-18 03:10:33'),(33,'simple-ways-to-reduce-your-unwanted-wrinkles',11,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:33','2023-12-18 03:10:33'),(34,'apple-imac-with-retina-5k-display-review',12,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:33','2023-12-18 03:10:33'),(35,'10000-web-site-visitors-in-one-monthguaranteed',13,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:33','2023-12-18 03:10:33'),(36,'unlock-the-secrets-of-selling-high-ticket-items',14,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:33','2023-12-18 03:10:33'),(37,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',15,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:33','2023-12-18 03:10:33'),(38,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',16,'Botble\\Blog\\Models\\Post','','2023-12-18 03:10:33','2023-12-18 03:10:33');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User','','published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(2,'Design',NULL,'Botble\\ACL\\Models\\User','','published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User','','published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User','','published','2023-12-18 03:10:32','2023-12-18 03:10:32'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User','','published','2023-12-18 03:10:32','2023-12-18 03:10:32');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'maeve.rath@fay.info',NULL,'$2y$12$rDwpJzMB6iTdTNrwOzdE0eehYvzqxXTEe2Db.ETFjKIzJbCmbBV.u',NULL,'2023-12-18 03:10:31','2023-12-18 03:10:31','Bettye','Dooley','botble',NULL,1,1,NULL,NULL),(2,'cletus.reichert@jenkins.com',NULL,'$2y$12$8.Vzu826lCpu9AtejHTvUuk7N4m2pWJIf22CliLLf780Z9qBgjpd.',NULL,'2023-12-18 03:10:31','2023-12-18 03:10:31','Korey','Lueilwitz','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'RecentPostsWidget','footer_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2023-12-18 03:10:36','2023-12-18 03:10:36'),(2,'RecentPostsWidget','top_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2023-12-18 03:10:36','2023-12-18 03:10:36'),(3,'TagsWidget','primary_sidebar','ripple',0,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2023-12-18 03:10:36','2023-12-18 03:10:36'),(4,'CustomMenuWidget','primary_sidebar','ripple',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}','2023-12-18 03:10:36','2023-12-18 03:10:36'),(5,'CustomMenuWidget','primary_sidebar','ripple',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}','2023-12-18 03:10:36','2023-12-18 03:10:36'),(6,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',1,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Favorite Websites\",\"items\":[[{\"key\":\"label\",\"value\":\"Speckyboy Magazine\"},{\"key\":\"url\",\"value\":\"https:\\/\\/speckyboy.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Tympanus-Codrops\"},{\"key\":\"url\",\"value\":\"https:\\/\\/tympanus.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Botble Blog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/botble.com\\/blog\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Laravel Vietnam\"},{\"key\":\"url\",\"value\":\"https:\\/\\/blog.laravelvietnam.org\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"CreativeBlog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.creativebloq.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Archi Elite JSC\"},{\"key\":\"url\",\"value\":\"https:\\/\\/archielite.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}]]}','2023-12-18 03:10:36','2023-12-18 03:10:36'),(7,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"My Links\",\"items\":[[{\"key\":\"label\",\"value\":\"Home Page\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"\\/contact\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Hotel\"},{\"key\":\"url\",\"value\":\"\\/hotel\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Travel Tips\"},{\"key\":\"url\",\"value\":\"\\/travel-tips\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Galleries\"},{\"key\":\"url\",\"value\":\"\\/galleries\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2023-12-18 03:10:36','2023-12-18 03:10:36');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 17:10:37
