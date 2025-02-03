-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_blogmeta`
--

DROP TABLE IF EXISTS `wp_blogmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_blogmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blogmeta`
--

LOCK TABLES `wp_blogmeta` WRITE;
/*!40000 ALTER TABLE `wp_blogmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_blogmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_blogs`
--

DROP TABLE IF EXISTS `wp_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`),
  KEY `domain` (`domain`(50),`path`(5)),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blogs`
--

LOCK TABLES `wp_blogs` WRITE;
/*!40000 ALTER TABLE `wp_blogs` DISABLE KEYS */;
INSERT INTO `wp_blogs` VALUES (1,1,'photostudio.local','/','2025-01-14 11:04:45','2025-01-15 16:58:10',1,0,0,0,0,0);
/*!40000 ALTER TABLE `wp_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_booking`
--

DROP TABLE IF EXISTS `wp_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_booking` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `booking_date` date NOT NULL,
  `booking_time` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_phone` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_booking`
--

LOCK TABLES `wp_booking` WRITE;
/*!40000 ALTER TABLE `wp_booking` DISABLE KEYS */;
INSERT INTO `wp_booking` VALUES (175,'2025-01-23','10:00','kris.shcheglova@bk.ru','Kristina','0889106800');
INSERT INTO `wp_booking` VALUES (176,'2025-01-23','11:00','kris.shcheglova@bk.ru','Kristina','0889106800');
/*!40000 ALTER TABLE `wp_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-01-14 11:04:45','2025-01-14 11:04:45','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:11:{i:1737288285;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737288286;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1737290085;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737291885;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737328085;a:1:{s:21:\"update_network_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737371284;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737371286;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737525758;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1737526067;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1737543886;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://photostudio.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://photostudio.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','photostudio','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','kristinashcheglova5@gmail.com','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/blog/%year%/%monthnum%/%day%/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:100:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:52:\"blog/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"blog/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"blog/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"blog/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"blog/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"blog/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"blog/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"blog/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"blog/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"blog/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"blog/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:45:\"blog/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:26:\"blog/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:38:\"blog/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:20:\"blog/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:16:\".*wp-signup.php$\";s:21:\"index.php?signup=true\";s:18:\".*wp-activate.php$\";s:23:\"index.php?activate=true\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:52:\"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:47:\"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:28:\"blog/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:40:\"blog/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:22:\"blog/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"blog/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"blog/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"blog/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"blog/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"blog/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"blog/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"blog/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','photostudio','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','photostudio','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','58975','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','page','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','7','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1752404685','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','58975','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'upload_space_check_disabled','1','off');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (122,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1736857086;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (125,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (139,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (142,'current_theme','photostudio','auto');
INSERT INTO `wp_options` VALUES (143,'theme_mods_photostudio','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (144,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (149,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (161,'recently_activated','a:0:{}','off');
INSERT INTO `wp_options` VALUES (162,'acf_first_activated_version','6.3.11','on');
INSERT INTO `wp_options` VALUES (163,'acf_site_health','{\"version\":\"6.3.11\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.7.1\",\"mysql_version\":\"8.0.16\",\"is_multisite\":true,\"active_theme\":{\"name\":\"\",\"version\":\"\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.11\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1736921269,\"last_updated\":1736921754,\"event_first_created_field_group\":1736921754}','off');
INSERT INTO `wp_options` VALUES (165,'acf_version','6.1.6','auto');
INSERT INTO `wp_options` VALUES (166,'wmufs_maximum_execution_time','1200','auto');
INSERT INTO `wp_options` VALUES (167,'max_file_size','67108864','auto');
INSERT INTO `wp_options` VALUES (175,'_transient_health-check-site-status-result','{\"good\":18,\"recommended\":2,\"critical\":0}','on');
INSERT INTO `wp_options` VALUES (198,'_transient_timeout_acf_plugin_updates','1737319429','off');
INSERT INTO `wp_options` VALUES (199,'_transient_acf_plugin_updates','a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20241112\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.6\";}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1389 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,7,'_edit_lock','1736967862:1');
INSERT INTO `wp_postmeta` VALUES (4,7,'_wp_page_template','page-main.php');
INSERT INTO `wp_postmeta` VALUES (5,9,'_edit_lock','1736946531:1');
INSERT INTO `wp_postmeta` VALUES (6,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (9,16,'_wp_attached_file','2025/01/hero-video2.mp4');
INSERT INTO `wp_postmeta` VALUES (10,16,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:26274985;s:8:\"filesize\";i:26410045;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:8;s:16:\"length_formatted\";s:4:\"0:08\";s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (14,7,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (16,18,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (18,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (19,7,'hero_main_title','Добро пожаловать! ');
INSERT INTO `wp_postmeta` VALUES (20,7,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (21,7,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (22,7,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (23,7,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (24,7,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (25,18,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (26,18,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (27,18,'hero_subtitle','');
INSERT INTO `wp_postmeta` VALUES (28,18,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (29,18,'hero_bg_video','');
INSERT INTO `wp_postmeta` VALUES (30,18,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (35,20,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (37,20,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (38,20,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (39,20,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (40,20,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (41,20,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (42,20,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (45,21,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (47,21,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (48,21,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (49,21,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (50,21,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (51,21,'hero_bg_video','');
INSERT INTO `wp_postmeta` VALUES (52,21,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (57,23,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (59,23,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (60,23,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (61,23,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (62,23,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (63,23,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (64,23,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (65,24,'_wp_attached_file','2025/01/hero-video.mp4');
INSERT INTO `wp_postmeta` VALUES (66,24,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:25943191;s:8:\"filesize\";i:38270137;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:12;s:16:\"length_formatted\";s:4:\"0:12\";s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (69,25,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (71,25,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (72,25,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (73,25,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (74,25,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (75,25,'hero_bg_video','24');
INSERT INTO `wp_postmeta` VALUES (76,25,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (79,26,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (81,26,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (82,26,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (83,26,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (84,26,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (85,26,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (86,26,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (87,30,'_wp_attached_file','2025/01/room1.jpg');
INSERT INTO `wp_postmeta` VALUES (88,30,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:17:\"2025/01/room1.jpg\";s:8:\"filesize\";i:859004;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"room1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10906;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"room1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82051;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"room1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4623;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"room1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50704;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"room1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:159853;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (89,32,'_wp_attached_file','2025/01/work1.png');
INSERT INTO `wp_postmeta` VALUES (90,32,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:433;s:6:\"height\";i:432;s:4:\"file\";s:17:\"2025/01/work1.png\";s:8:\"filesize\";i:351363;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"work1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:136509;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"work1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34746;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (91,33,'_wp_attached_file','2025/01/work2.png');
INSERT INTO `wp_postmeta` VALUES (92,33,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:432;s:6:\"height\";i:432;s:4:\"file\";s:17:\"2025/01/work2.png\";s:8:\"filesize\";i:389441;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"work2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:136112;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"work2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35261;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (93,34,'_wp_attached_file','2025/01/work3.png');
INSERT INTO `wp_postmeta` VALUES (94,34,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:431;s:6:\"height\";i:432;s:4:\"file\";s:17:\"2025/01/work3.png\";s:8:\"filesize\";i:332833;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"work3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:118348;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"work3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34729;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (95,35,'_wp_attached_file','2025/01/work4.png');
INSERT INTO `wp_postmeta` VALUES (96,35,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:432;s:6:\"height\";i:431;s:4:\"file\";s:17:\"2025/01/work4.png\";s:8:\"filesize\";i:477337;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"work4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:193813;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"work4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48835;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (97,36,'_wp_attached_file','2025/01/work5.png');
INSERT INTO `wp_postmeta` VALUES (98,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:430;s:6:\"height\";i:432;s:4:\"file\";s:17:\"2025/01/work5.png\";s:8:\"filesize\";i:304834;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"work5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:119911;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"work5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30575;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (99,37,'_wp_attached_file','2025/01/work6.png');
INSERT INTO `wp_postmeta` VALUES (100,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:431;s:6:\"height\";i:432;s:4:\"file\";s:17:\"2025/01/work6.png\";s:8:\"filesize\";i:406329;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"work6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:130957;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"work6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34826;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (101,38,'_wp_attached_file','2025/01/work7.png');
INSERT INTO `wp_postmeta` VALUES (102,38,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:433;s:6:\"height\";i:432;s:4:\"file\";s:17:\"2025/01/work7.png\";s:8:\"filesize\";i:465262;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"work7-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:131818;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"work7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35090;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (103,39,'_wp_attached_file','2025/01/work8.png');
INSERT INTO `wp_postmeta` VALUES (104,39,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:432;s:6:\"height\";i:431;s:4:\"file\";s:17:\"2025/01/work8.png\";s:8:\"filesize\";i:398077;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"work8-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:99669;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"work8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25723;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (105,7,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (106,7,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (107,7,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (108,7,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (109,7,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (110,7,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (111,7,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (112,7,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (113,7,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (114,7,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (115,7,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (116,7,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (117,7,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (118,7,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (119,7,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (120,7,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (121,7,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (122,7,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (123,26,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (124,26,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (125,26,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (126,26,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (127,26,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (128,26,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (129,26,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (130,26,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (131,26,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (132,26,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (133,26,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (134,26,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (135,26,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (136,26,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (137,26,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (138,26,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (139,26,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (140,26,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (141,40,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (142,7,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (143,7,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (144,40,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (145,40,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (146,40,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (147,40,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (148,40,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (149,40,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (150,40,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (151,40,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (152,40,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (153,40,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (154,40,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (155,40,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (156,40,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (157,40,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (158,40,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (159,40,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (160,40,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (161,40,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (162,40,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (163,40,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (164,40,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (165,40,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (166,40,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (167,40,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (168,40,'works_title','Работы мои');
INSERT INTO `wp_postmeta` VALUES (169,40,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (170,42,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (171,42,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (172,42,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (173,42,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (174,42,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (175,42,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (176,42,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (177,42,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (178,42,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (179,42,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (180,42,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (181,42,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (182,42,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (183,42,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (184,42,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (185,42,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (186,42,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (187,42,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (188,42,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (189,42,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (190,42,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (191,42,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (192,42,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (193,42,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (194,42,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (195,42,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (196,42,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (197,43,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (198,32,'_wp_attachment_image_alt','work1');
INSERT INTO `wp_postmeta` VALUES (199,33,'_wp_attachment_image_alt','work2');
INSERT INTO `wp_postmeta` VALUES (200,34,'_wp_attachment_image_alt','work3');
INSERT INTO `wp_postmeta` VALUES (201,35,'_wp_attachment_image_alt','work4');
INSERT INTO `wp_postmeta` VALUES (202,36,'_wp_attachment_image_alt','work5');
INSERT INTO `wp_postmeta` VALUES (203,37,'_wp_attachment_image_alt','work6');
INSERT INTO `wp_postmeta` VALUES (204,38,'_wp_attachment_image_alt','work7');
INSERT INTO `wp_postmeta` VALUES (205,39,'_wp_attachment_image_alt','work8');
INSERT INTO `wp_postmeta` VALUES (208,43,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (209,43,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (210,43,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (211,43,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (212,43,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (213,43,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (214,43,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (215,43,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (216,43,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (217,43,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (218,43,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (219,43,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (220,43,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (221,43,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (222,43,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (223,43,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (224,43,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (225,43,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (226,43,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (227,43,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (228,43,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (229,43,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (230,43,'works_photo','9');
INSERT INTO `wp_postmeta` VALUES (231,43,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (232,43,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (233,43,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (234,43,'works_photo_8_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (235,43,'_works_photo_8_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (236,44,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (237,44,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (238,44,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (239,44,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (240,44,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (241,44,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (242,44,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (243,44,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (244,44,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (245,44,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (246,44,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (247,44,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (248,44,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (249,44,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (250,44,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (251,44,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (252,44,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (253,44,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (254,44,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (255,44,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (256,44,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (257,44,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (258,44,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (259,44,'works_photo','9');
INSERT INTO `wp_postmeta` VALUES (260,44,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (261,44,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (262,44,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (263,44,'works_photo_8_works_photo_item','');
INSERT INTO `wp_postmeta` VALUES (264,44,'_works_photo_8_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (265,45,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (266,45,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (267,45,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (268,45,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (269,45,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (270,45,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (271,45,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (272,45,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (273,45,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (274,45,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (275,45,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (276,45,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (277,45,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (278,45,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (279,45,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (280,45,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (281,45,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (282,45,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (283,45,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (284,45,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (285,45,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (286,45,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (287,45,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (288,45,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (289,45,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (290,45,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (291,45,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (292,46,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (293,7,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (294,7,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (295,46,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (296,46,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (297,46,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (298,46,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (299,46,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (300,46,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (301,46,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (302,46,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (303,46,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (304,46,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (305,46,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (306,46,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (307,46,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (308,46,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (309,46,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (310,46,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (311,46,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (312,46,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (313,46,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (314,46,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (315,46,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (316,46,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (317,46,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (318,46,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (319,46,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (320,46,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (321,46,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (322,46,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (323,49,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (324,7,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (325,7,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (326,7,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (327,7,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (328,7,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (329,7,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (330,7,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (331,7,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (332,7,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (333,7,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (334,7,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (335,7,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (336,7,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (337,7,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (338,49,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (339,49,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (340,49,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (341,49,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (342,49,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (343,49,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (344,49,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (345,49,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (346,49,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (347,49,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (348,49,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (349,49,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (350,49,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (351,49,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (352,49,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (353,49,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (354,49,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (355,49,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (356,49,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (357,49,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (358,49,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (359,49,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (360,49,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (361,49,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (362,49,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (363,49,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (364,49,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (365,49,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (366,49,'room_repeater_0_room_repeater_image','30');
INSERT INTO `wp_postmeta` VALUES (367,49,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (368,49,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (369,49,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (370,49,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (371,49,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (372,49,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (373,49,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (374,49,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (375,49,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (376,49,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (377,49,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (378,49,'room_repeater','1');
INSERT INTO `wp_postmeta` VALUES (379,49,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (380,55,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (381,55,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (382,55,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (383,55,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (384,55,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (385,55,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (386,55,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (387,55,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (388,55,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (389,55,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (390,55,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (391,55,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (392,55,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (393,55,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (394,55,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (395,55,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (396,55,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (397,55,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (398,55,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (399,55,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (400,55,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (401,55,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (402,55,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (403,55,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (404,55,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (405,55,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (406,55,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (407,55,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (408,55,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (409,55,'room_repeater_0_room_repeater_image','30');
INSERT INTO `wp_postmeta` VALUES (410,55,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (411,55,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (412,55,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (413,55,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (414,55,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (415,55,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (416,55,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (417,55,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (418,55,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (419,55,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (420,55,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (421,55,'room_repeater','1');
INSERT INTO `wp_postmeta` VALUES (422,55,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (423,56,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (424,7,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (425,7,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (426,7,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (427,7,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (428,7,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (429,7,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (430,7,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (431,7,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (432,7,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (433,7,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (434,7,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (435,7,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (436,56,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (437,56,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (438,56,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (439,56,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (440,56,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (441,56,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (442,56,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (443,56,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (444,56,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (445,56,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (446,56,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (447,56,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (448,56,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (449,56,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (450,56,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (451,56,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (452,56,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (453,56,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (454,56,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (455,56,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (456,56,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (457,56,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (458,56,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (459,56,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (460,56,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (461,56,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (462,56,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (463,56,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (464,56,'room_repeater_0_room_repeater_image','30');
INSERT INTO `wp_postmeta` VALUES (465,56,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (466,56,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (467,56,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (468,56,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (469,56,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (470,56,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (471,56,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (472,56,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (473,56,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (474,56,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (475,56,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (476,56,'room_repeater','2');
INSERT INTO `wp_postmeta` VALUES (477,56,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (478,56,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (479,56,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (480,56,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (481,56,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (482,56,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (483,56,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (484,56,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (485,56,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (486,56,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (487,56,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (488,56,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (489,56,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (490,57,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (491,57,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (492,57,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (493,57,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (494,57,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (495,57,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (496,57,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (497,57,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (498,57,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (499,57,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (500,57,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (501,57,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (502,57,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (503,57,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (504,57,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (505,57,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (506,57,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (507,57,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (508,57,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (509,57,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (510,57,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (511,57,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (512,57,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (513,57,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (514,57,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (515,57,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (516,57,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (517,57,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (518,57,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (519,57,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (520,57,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (521,57,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (522,57,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (523,57,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (524,57,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (525,57,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (526,57,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (527,57,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (528,57,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (529,57,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (530,57,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (531,57,'room_repeater','2');
INSERT INTO `wp_postmeta` VALUES (532,57,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (533,57,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (534,57,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (535,57,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (536,57,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (537,57,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (538,57,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (539,57,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (540,57,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (541,57,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (542,57,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (543,57,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (544,57,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (545,58,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (546,7,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (547,7,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (548,7,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (549,7,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (550,7,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (551,7,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (552,7,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (553,7,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (554,7,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (555,7,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (556,7,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (557,7,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (558,58,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (559,58,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (560,58,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (561,58,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (562,58,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (563,58,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (564,58,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (565,58,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (566,58,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (567,58,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (568,58,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (569,58,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (570,58,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (571,58,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (572,58,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (573,58,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (574,58,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (575,58,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (576,58,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (577,58,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (578,58,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (579,58,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (580,58,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (581,58,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (582,58,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (583,58,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (584,58,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (585,58,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (586,58,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (587,58,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (588,58,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (589,58,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (590,58,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (591,58,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (592,58,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (593,58,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (594,58,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (595,58,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (596,58,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (597,58,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (598,58,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (599,58,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (600,58,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (601,58,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (602,58,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (603,58,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (604,58,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (605,58,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (606,58,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (607,58,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (608,58,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (609,58,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (610,58,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (611,58,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (612,58,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (613,58,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (614,58,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (615,58,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (616,58,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (617,58,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (618,58,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (619,58,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (620,58,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (621,58,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (622,58,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (623,58,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (624,59,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (625,59,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (626,59,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (627,59,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (628,59,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (629,59,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (630,59,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (631,59,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (632,59,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (633,59,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (634,59,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (635,59,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (636,59,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (637,59,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (638,59,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (639,59,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (640,59,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (641,59,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (642,59,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (643,59,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (644,59,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (645,59,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (646,59,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (647,59,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (648,59,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (649,59,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (650,59,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (651,59,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (652,59,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (653,59,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (654,59,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (655,59,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (656,59,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (657,59,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (658,59,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (659,59,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (660,59,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (661,59,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (662,59,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (663,59,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (664,59,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (665,59,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (666,59,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (667,59,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (668,59,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (669,59,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (670,59,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (671,59,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (672,59,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (673,59,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (674,59,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (675,59,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (676,59,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (677,59,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (678,59,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (679,59,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (680,59,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (681,59,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (682,59,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (683,59,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (684,59,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (685,59,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (686,59,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (687,59,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (688,59,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (689,59,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (690,59,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (691,60,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (692,66,'_wp_attached_file','2025/01/sergey.png');
INSERT INTO `wp_postmeta` VALUES (693,66,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:898;s:6:\"height\";i:1147;s:4:\"file\";s:18:\"2025/01/sergey.png\";s:8:\"filesize\";i:698869;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"sergey-235x300.png\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:60391;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"sergey-802x1024.png\";s:5:\"width\";i:802;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:508358;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"sergey-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22985;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"sergey-768x981.png\";s:5:\"width\";i:768;s:6:\"height\";i:981;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:473197;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (694,7,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (695,7,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (696,7,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (697,7,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (698,7,'photographer_subtitle','Я Сережа!');
INSERT INTO `wp_postmeta` VALUES (699,7,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (700,7,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (701,7,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (702,60,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (703,60,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (704,60,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (705,60,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (706,60,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (707,60,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (708,60,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (709,60,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (710,60,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (711,60,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (712,60,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (713,60,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (714,60,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (715,60,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (716,60,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (717,60,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (718,60,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (719,60,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (720,60,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (721,60,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (722,60,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (723,60,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (724,60,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (725,60,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (726,60,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (727,60,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (728,60,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (729,60,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (730,60,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (731,60,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (732,60,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (733,60,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (734,60,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (735,60,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (736,60,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (737,60,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (738,60,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (739,60,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (740,60,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (741,60,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (742,60,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (743,60,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (744,60,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (745,60,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (746,60,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (747,60,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (748,60,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (749,60,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (750,60,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (751,60,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (752,60,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (753,60,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (754,60,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (755,60,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (756,60,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (757,60,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (758,60,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (759,60,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (760,60,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (761,60,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (762,60,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (763,60,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (764,60,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (765,60,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (766,60,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (767,60,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (768,60,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (769,60,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (770,60,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (771,60,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (772,60,'photographer_subtitle','Я Сережа!!');
INSERT INTO `wp_postmeta` VALUES (773,60,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (774,60,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (775,60,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (776,67,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (777,67,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (778,67,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (779,67,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (780,67,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (781,67,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (782,67,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (783,67,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (784,67,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (785,67,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (786,67,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (787,67,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (788,67,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (789,67,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (790,67,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (791,67,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (792,67,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (793,67,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (794,67,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (795,67,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (796,67,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (797,67,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (798,67,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (799,67,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (800,67,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (801,67,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (802,67,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (803,67,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (804,67,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (805,67,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (806,67,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (807,67,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (808,67,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (809,67,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (810,67,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (811,67,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (812,67,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (813,67,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (814,67,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (815,67,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (816,67,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (817,67,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (818,67,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (819,67,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (820,67,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (821,67,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (822,67,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (823,67,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (824,67,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (825,67,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (826,67,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (827,67,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (828,67,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (829,67,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (830,67,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (831,67,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (832,67,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (833,67,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (834,67,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (835,67,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (836,67,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (837,67,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (838,67,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (839,67,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (840,67,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (841,67,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (842,67,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (843,67,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (844,67,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (845,67,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (846,67,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (847,67,'photographer_subtitle','Я Сережа!!');
INSERT INTO `wp_postmeta` VALUES (848,67,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (849,67,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (850,67,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (851,68,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (852,68,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (853,68,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (854,68,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (855,68,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (856,68,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (857,68,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (858,68,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (859,68,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (860,68,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (861,68,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (862,68,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (863,68,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (864,68,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (865,68,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (866,68,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (867,68,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (868,68,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (869,68,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (870,68,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (871,68,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (872,68,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (873,68,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (874,68,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (875,68,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (876,68,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (877,68,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (878,68,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (879,68,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (880,68,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (881,68,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (882,68,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (883,68,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (884,68,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (885,68,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (886,68,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (887,68,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (888,68,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (889,68,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (890,68,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (891,68,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (892,68,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (893,68,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (894,68,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (895,68,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (896,68,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (897,68,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (898,68,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (899,68,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (900,68,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (901,68,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (902,68,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (903,68,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (904,68,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (905,68,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (906,68,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (907,68,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (908,68,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (909,68,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (910,68,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (911,68,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (912,68,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (913,68,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (914,68,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (915,68,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (916,68,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (917,68,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (918,68,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (919,68,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (920,68,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (921,68,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (922,68,'photographer_subtitle','Я Сережа!');
INSERT INTO `wp_postmeta` VALUES (923,68,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (924,68,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (925,68,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (926,69,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (927,69,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (928,69,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (929,69,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (930,69,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (931,69,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (932,69,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (933,69,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (934,69,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (935,69,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (936,69,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (937,69,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (938,69,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (939,69,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (940,69,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (941,69,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (942,69,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (943,69,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (944,69,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (945,69,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (946,69,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (947,69,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (948,69,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (949,69,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (950,69,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (951,69,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (952,69,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (953,69,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (954,69,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (955,69,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (956,69,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (957,69,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (958,69,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (959,69,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (960,69,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (961,69,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (962,69,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (963,69,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (964,69,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (965,69,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (966,69,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (967,69,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (968,69,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (969,69,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (970,69,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (971,69,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (972,69,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (973,69,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (974,69,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (975,69,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (976,69,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (977,69,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (978,69,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (979,69,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (980,69,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (981,69,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (982,69,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (983,69,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (984,69,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (985,69,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (986,69,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (987,69,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (988,69,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (989,69,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (990,69,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (991,69,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (992,69,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (993,69,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (994,69,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (995,69,'photographer_image','39');
INSERT INTO `wp_postmeta` VALUES (996,69,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (997,69,'photographer_subtitle','Я Сережа!');
INSERT INTO `wp_postmeta` VALUES (998,69,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (999,69,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (1000,69,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (1001,70,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1002,70,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (1003,70,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (1004,70,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (1005,70,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (1006,70,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (1007,70,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (1008,70,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (1009,70,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1010,70,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (1011,70,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1012,70,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (1013,70,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1014,70,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (1015,70,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1016,70,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (1017,70,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1018,70,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (1019,70,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1020,70,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (1021,70,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1022,70,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (1023,70,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1024,70,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (1025,70,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (1026,70,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (1027,70,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (1028,70,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (1029,70,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (1030,70,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (1031,70,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1032,70,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1033,70,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1034,70,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1035,70,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1036,70,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1037,70,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1038,70,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1039,70,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1040,70,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1041,70,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1042,70,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (1043,70,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (1044,70,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (1045,70,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1046,70,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1047,70,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1048,70,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1049,70,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1050,70,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1051,70,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1052,70,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1053,70,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1054,70,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1055,70,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1056,70,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (1057,70,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1058,70,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1059,70,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1060,70,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1061,70,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1062,70,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1063,70,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1064,70,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1065,70,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1066,70,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1067,70,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1068,70,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (1069,70,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (1070,70,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (1071,70,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (1072,70,'photographer_subtitle','Я Сережа!');
INSERT INTO `wp_postmeta` VALUES (1073,70,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (1074,70,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (1075,70,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (1076,71,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1077,7,'booking_title','Забронировать сейчас');
INSERT INTO `wp_postmeta` VALUES (1078,7,'_booking_title','field_6787b308d680f');
INSERT INTO `wp_postmeta` VALUES (1079,71,'hero_main_title','Добро пожаловать !');
INSERT INTO `wp_postmeta` VALUES (1080,71,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (1081,71,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (1082,71,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (1083,71,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (1084,71,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (1085,71,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (1086,71,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1087,71,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (1088,71,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1089,71,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (1090,71,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1091,71,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (1092,71,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1093,71,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (1094,71,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1095,71,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (1096,71,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1097,71,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (1098,71,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1099,71,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (1100,71,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1101,71,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (1102,71,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (1103,71,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (1104,71,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (1105,71,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (1106,71,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (1107,71,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (1108,71,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1109,71,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1110,71,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1111,71,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1112,71,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1113,71,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1114,71,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1115,71,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1116,71,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1117,71,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1118,71,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1119,71,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (1120,71,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (1121,71,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (1122,71,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1123,71,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1124,71,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1125,71,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1126,71,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1127,71,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1128,71,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1129,71,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1130,71,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1131,71,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1132,71,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1133,71,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (1134,71,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1135,71,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1136,71,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1137,71,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1138,71,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1139,71,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1140,71,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1141,71,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1142,71,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1143,71,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1144,71,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1145,71,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (1146,71,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (1147,71,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (1148,71,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (1149,71,'photographer_subtitle','Я Сережа!');
INSERT INTO `wp_postmeta` VALUES (1150,71,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (1151,71,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (1152,71,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (1153,71,'booking_title','Забронировать сейчас');
INSERT INTO `wp_postmeta` VALUES (1154,71,'_booking_title','field_6787b308d680f');
INSERT INTO `wp_postmeta` VALUES (1155,74,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1156,74,'hero_main_title','Добро пожаловать!');
INSERT INTO `wp_postmeta` VALUES (1157,74,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (1158,74,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (1159,74,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (1160,74,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (1161,74,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (1162,74,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (1163,74,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1164,74,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (1165,74,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1166,74,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (1167,74,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1168,74,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (1169,74,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1170,74,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (1171,74,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1172,74,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (1173,74,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1174,74,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (1175,74,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1176,74,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (1177,74,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1178,74,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (1179,74,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (1180,74,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (1181,74,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (1182,74,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (1183,74,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (1184,74,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (1185,74,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1186,74,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1187,74,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1188,74,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1189,74,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1190,74,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1191,74,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1192,74,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1193,74,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1194,74,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1195,74,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1196,74,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (1197,74,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (1198,74,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (1199,74,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1200,74,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1201,74,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1202,74,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1203,74,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1204,74,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1205,74,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1206,74,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1207,74,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1208,74,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1209,74,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1210,74,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (1211,74,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1212,74,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1213,74,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1214,74,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1215,74,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1216,74,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1217,74,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1218,74,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1219,74,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1220,74,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1221,74,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1222,74,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (1223,74,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (1224,74,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (1225,74,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (1226,74,'photographer_subtitle','Я Сережа!');
INSERT INTO `wp_postmeta` VALUES (1227,74,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (1228,74,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (1229,74,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (1230,74,'booking_title','Забронировать сейчас');
INSERT INTO `wp_postmeta` VALUES (1231,74,'_booking_title','field_6787b308d680f');
INSERT INTO `wp_postmeta` VALUES (1232,75,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1233,75,'hero_main_title','Добро пожаловать! [booking_form]');
INSERT INTO `wp_postmeta` VALUES (1234,75,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (1235,75,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (1236,75,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (1237,75,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (1238,75,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (1239,75,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (1240,75,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1241,75,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (1242,75,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1243,75,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (1244,75,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1245,75,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (1246,75,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1247,75,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (1248,75,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1249,75,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (1250,75,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1251,75,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (1252,75,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1253,75,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (1254,75,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1255,75,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (1256,75,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (1257,75,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (1258,75,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (1259,75,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (1260,75,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (1261,75,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (1262,75,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1263,75,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1264,75,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1265,75,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1266,75,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1267,75,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1268,75,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1269,75,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1270,75,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1271,75,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1272,75,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1273,75,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (1274,75,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (1275,75,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (1276,75,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1277,75,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1278,75,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1279,75,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1280,75,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1281,75,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1282,75,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1283,75,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1284,75,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1285,75,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1286,75,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1287,75,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (1288,75,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1289,75,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1290,75,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1291,75,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1292,75,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1293,75,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1294,75,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1295,75,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1296,75,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1297,75,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1298,75,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1299,75,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (1300,75,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (1301,75,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (1302,75,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (1303,75,'photographer_subtitle','Я Сережа!');
INSERT INTO `wp_postmeta` VALUES (1304,75,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (1305,75,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (1306,75,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (1307,75,'booking_title','Забронировать сейчас');
INSERT INTO `wp_postmeta` VALUES (1308,75,'_booking_title','field_6787b308d680f');
INSERT INTO `wp_postmeta` VALUES (1309,76,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1310,77,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1311,77,'hero_main_title','Добро пожаловать! ');
INSERT INTO `wp_postmeta` VALUES (1312,77,'_hero_main_title','field_6787532cc88d3');
INSERT INTO `wp_postmeta` VALUES (1313,77,'hero_subtitle','Здесь можно найти полезную информацию');
INSERT INTO `wp_postmeta` VALUES (1314,77,'_hero_subtitle','field_6787538282c7b');
INSERT INTO `wp_postmeta` VALUES (1315,77,'hero_bg_video','16');
INSERT INTO `wp_postmeta` VALUES (1316,77,'_hero_bg_video','field_678753bd82c7c');
INSERT INTO `wp_postmeta` VALUES (1317,77,'works_photo_0_works_photo_item','32');
INSERT INTO `wp_postmeta` VALUES (1318,77,'_works_photo_0_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1319,77,'works_photo_1_works_photo_item','33');
INSERT INTO `wp_postmeta` VALUES (1320,77,'_works_photo_1_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1321,77,'works_photo_2_works_photo_item','34');
INSERT INTO `wp_postmeta` VALUES (1322,77,'_works_photo_2_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1323,77,'works_photo_3_works_photo_item','35');
INSERT INTO `wp_postmeta` VALUES (1324,77,'_works_photo_3_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1325,77,'works_photo_4_works_photo_item','36');
INSERT INTO `wp_postmeta` VALUES (1326,77,'_works_photo_4_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1327,77,'works_photo_5_works_photo_item','37');
INSERT INTO `wp_postmeta` VALUES (1328,77,'_works_photo_5_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1329,77,'works_photo_6_works_photo_item','38');
INSERT INTO `wp_postmeta` VALUES (1330,77,'_works_photo_6_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1331,77,'works_photo_7_works_photo_item','39');
INSERT INTO `wp_postmeta` VALUES (1332,77,'_works_photo_7_works_photo_item','field_6787886bed770');
INSERT INTO `wp_postmeta` VALUES (1333,77,'works_photo','8');
INSERT INTO `wp_postmeta` VALUES (1334,77,'_works_photo','field_678787feed76f');
INSERT INTO `wp_postmeta` VALUES (1335,77,'works_title','Работы');
INSERT INTO `wp_postmeta` VALUES (1336,77,'_works_title','field_678792dcb4e74');
INSERT INTO `wp_postmeta` VALUES (1337,77,'rooms_title','Зоны');
INSERT INTO `wp_postmeta` VALUES (1338,77,'_rooms_title','field_6787949e415de');
INSERT INTO `wp_postmeta` VALUES (1339,77,'room_repeater_0_room_repeater_image','36');
INSERT INTO `wp_postmeta` VALUES (1340,77,'_room_repeater_0_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1341,77,'room_repeater_0_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1342,77,'_room_repeater_0_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1343,77,'room_repeater_0_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1344,77,'_room_repeater_0_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1345,77,'room_repeater_0_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1346,77,'_room_repeater_0_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1347,77,'room_repeater_0_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1348,77,'_room_repeater_0_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1349,77,'room_repeater_0_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1350,77,'_room_repeater_0_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1351,77,'room_repeater','3');
INSERT INTO `wp_postmeta` VALUES (1352,77,'_room_repeater','field_67879552a57b8');
INSERT INTO `wp_postmeta` VALUES (1353,77,'room_repeater_1_room_repeater_image','34');
INSERT INTO `wp_postmeta` VALUES (1354,77,'_room_repeater_1_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1355,77,'room_repeater_1_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1356,77,'_room_repeater_1_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1357,77,'room_repeater_1_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1358,77,'_room_repeater_1_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1359,77,'room_repeater_1_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1360,77,'_room_repeater_1_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1361,77,'room_repeater_1_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1362,77,'_room_repeater_1_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1363,77,'room_repeater_1_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1364,77,'_room_repeater_1_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1365,77,'room_repeater_2_room_repeater_image','37');
INSERT INTO `wp_postmeta` VALUES (1366,77,'_room_repeater_2_room_repeater_image','field_6787957ea57b9');
INSERT INTO `wp_postmeta` VALUES (1367,77,'room_repeater_2_room_repeater_title','Зал 1');
INSERT INTO `wp_postmeta` VALUES (1368,77,'_room_repeater_2_room_repeater_title','field_678795bfa57ba');
INSERT INTO `wp_postmeta` VALUES (1369,77,'room_repeater_2_room_repeater_description_0_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1370,77,'_room_repeater_2_room_repeater_description_0_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1371,77,'room_repeater_2_room_repeater_description_1_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1372,77,'_room_repeater_2_room_repeater_description_1_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1373,77,'room_repeater_2_room_repeater_description_2_room_repeater_description_item','<b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и бетонный пол');
INSERT INTO `wp_postmeta` VALUES (1374,77,'_room_repeater_2_room_repeater_description_2_room_repeater_description_item','field_6787963ba57bc');
INSERT INTO `wp_postmeta` VALUES (1375,77,'room_repeater_2_room_repeater_description','3');
INSERT INTO `wp_postmeta` VALUES (1376,77,'_room_repeater_2_room_repeater_description','field_678795d8a57bb');
INSERT INTO `wp_postmeta` VALUES (1377,77,'photographer_title','Фотограф');
INSERT INTO `wp_postmeta` VALUES (1378,77,'_photographer_title','field_67879b543246b');
INSERT INTO `wp_postmeta` VALUES (1379,77,'photographer_image','66');
INSERT INTO `wp_postmeta` VALUES (1380,77,'_photographer_image','field_67879b6a3246c');
INSERT INTO `wp_postmeta` VALUES (1381,77,'photographer_subtitle','Я Сережа!');
INSERT INTO `wp_postmeta` VALUES (1382,77,'_photographer_subtitle','field_67879b863246d');
INSERT INTO `wp_postmeta` VALUES (1383,77,'photographer_description','\"Не снимаю фотографии, а создаю их.\"\r\n\r\nФотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину, но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту и характер - моя главная миссия в процессе съёмки.\r\n\r\nМои клиенты - моё вдохновение!');
INSERT INTO `wp_postmeta` VALUES (1384,77,'_photographer_description','field_67879bb13246e');
INSERT INTO `wp_postmeta` VALUES (1385,77,'booking_title','Забронировать сейчас');
INSERT INTO `wp_postmeta` VALUES (1386,77,'_booking_title','field_6787b308d680f');
INSERT INTO `wp_postmeta` VALUES (1387,78,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1388,79,'footnotes','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2025-01-14 11:04:45','2025-01-14 11:04:45','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2025-01-14 11:04:45','2025-01-14 11:04:45','',0,'http://photostudio.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2025-01-14 11:04:45','2025-01-14 11:04:45','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://photostudio.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2025-01-14 11:04:45','2025-01-14 11:04:45','',0,'http://photostudio.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2025-01-14 11:04:45','2025-01-14 11:04:45','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://photostudio.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2025-01-14 11:04:45','2025-01-14 11:04:45','',0,'http://photostudio.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2025-01-14 11:07:35','2025-01-14 11:07:35','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2025-01-14 11:07:35','2025-01-14 11:07:35','',0,'http://photostudio.local/blog/2025/01/14/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2025-01-14 11:08:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2025-01-14 11:08:06','0000-00-00 00:00:00','',0,'http://photostudio.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2025-01-14 12:15:13','2025-01-14 12:15:13','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfive','','','2025-01-14 12:15:13','2025-01-14 12:15:13','',0,'http://photostudio.local/blog/2025/01/14/wp-global-styles-twentytwentyfive/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2025-01-14 12:35:38','2025-01-14 12:35:38','<!-- wp:paragraph -->\n<p>[booking_form]</p>\n<!-- /wp:paragraph -->','Home','','publish','closed','closed','','home','','','2025-01-15 16:58:10','2025-01-15 16:58:10','',0,'http://photostudio.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2025-01-14 12:35:38','2025-01-14 12:35:38','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-14 12:35:38','2025-01-14 12:35:38','',7,'http://photostudio.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2025-01-15 06:15:54','2025-01-15 06:15:54','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-main.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Main Page Settings','main-page-settings','publish','closed','closed','','group_6787527a5b8fa','','','2025-01-15 13:08:40','2025-01-15 13:08:40','',0,'http://photostudio.local/?post_type=acf-field-group&#038;p=9',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2025-01-15 06:19:10','2025-01-15 06:19:10','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}','Главная секция','главная_секция','publish','closed','closed','','field_678752d5c88d2','','','2025-01-15 06:19:10','2025-01-15 06:19:10','',9,'http://photostudio.local/?post_type=acf-field&p=11',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-01-15 06:19:10','2025-01-15 06:19:10','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Заголовок','hero_main_title','publish','closed','closed','','field_6787532cc88d3','','','2025-01-15 10:01:28','2025-01-15 10:01:28','',9,'http://photostudio.local/?post_type=acf-field&#038;p=12',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2025-01-15 06:23:17','2025-01-15 06:23:17','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Подзаголовок','hero_subtitle','publish','closed','closed','','field_6787538282c7b','','','2025-01-15 06:52:14','2025-01-15 06:52:14','',9,'http://photostudio.local/?post_type=acf-field&#038;p=13',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2025-01-15 06:23:17','2025-01-15 06:23:17','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;}','Видео','hero_bg_video','publish','closed','closed','','field_678753bd82c7c','','','2025-01-15 06:52:14','2025-01-15 06:52:14','',9,'http://photostudio.local/?post_type=acf-field&#038;p=14',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2025-01-15 06:41:37','2025-01-15 06:41:37','','hero-video2','','inherit','open','closed','','hero-video2','','','2025-01-15 06:41:37','2025-01-15 06:41:37','',7,'http://photostudio.local/wp-content/uploads/2025/01/hero-video2.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (18,1,'2025-01-15 07:11:18','2025-01-15 07:11:18','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 07:11:18','2025-01-15 07:11:18','',7,'http://photostudio.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2025-01-15 07:28:26','2025-01-15 07:28:26','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 07:28:26','2025-01-15 07:28:26','',7,'http://photostudio.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2025-01-15 07:34:09','2025-01-15 07:34:09','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 07:34:09','2025-01-15 07:34:09','',7,'http://photostudio.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2025-01-15 07:34:21','2025-01-15 07:34:21','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 07:34:21','2025-01-15 07:34:21','',7,'http://photostudio.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2025-01-15 07:36:10','2025-01-15 07:36:10','','hero-video','','inherit','open','closed','','hero-video','','','2025-01-15 07:36:10','2025-01-15 07:36:10','',7,'http://photostudio.local/wp-content/uploads/2025/01/hero-video.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (25,1,'2025-01-15 07:36:14','2025-01-15 07:36:14','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 07:36:14','2025-01-15 07:36:14','',7,'http://photostudio.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2025-01-15 07:36:39','2025-01-15 07:36:39','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 07:36:39','2025-01-15 07:36:39','',7,'http://photostudio.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2025-01-15 10:01:28','2025-01-15 10:01:28','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Работы','работы','publish','closed','closed','','field_678785436a732','','','2025-01-15 10:12:06','2025-01-15 10:12:06','',9,'http://photostudio.local/?post_type=acf-field&#038;p=27',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2025-01-15 10:05:57','2025-01-15 10:05:57','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}','Мои работы','works_photo','publish','closed','closed','','field_678787feed76f','','','2025-01-15 10:50:45','2025-01-15 10:50:45','',9,'http://photostudio.local/?post_type=acf-field&#038;p=28',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2025-01-15 10:05:57','2025-01-15 10:05:57','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Фото','works_photo_item','publish','closed','closed','','field_6787886bed770','','','2025-01-15 10:12:06','2025-01-15 10:12:06','',28,'http://photostudio.local/?post_type=acf-field&#038;p=29',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2025-01-15 10:06:14','2025-01-15 10:06:14','','room1','','inherit','open','closed','','room1','','','2025-01-15 10:06:14','2025-01-15 10:06:14','',7,'http://photostudio.local/wp-content/uploads/2025/01/room1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (32,1,'2025-01-15 10:27:00','2025-01-15 10:27:00','','work1','','inherit','open','closed','','work1','','','2025-01-15 10:54:08','2025-01-15 10:54:08','',7,'http://photostudio.local/wp-content/uploads/2025/01/work1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-01-15 10:27:00','2025-01-15 10:27:00','','work2','','inherit','open','closed','','work2','','','2025-01-15 10:54:10','2025-01-15 10:54:10','',7,'http://photostudio.local/wp-content/uploads/2025/01/work2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (34,1,'2025-01-15 10:27:00','2025-01-15 10:27:00','','work3','','inherit','open','closed','','work3','','','2025-01-15 10:54:12','2025-01-15 10:54:12','',7,'http://photostudio.local/wp-content/uploads/2025/01/work3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (35,1,'2025-01-15 10:27:01','2025-01-15 10:27:01','','work4','','inherit','open','closed','','work4','','','2025-01-15 10:54:14','2025-01-15 10:54:14','',7,'http://photostudio.local/wp-content/uploads/2025/01/work4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (36,1,'2025-01-15 10:27:01','2025-01-15 10:27:01','','work5','','inherit','open','closed','','work5','','','2025-01-15 10:54:16','2025-01-15 10:54:16','',7,'http://photostudio.local/wp-content/uploads/2025/01/work5.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (37,1,'2025-01-15 10:27:01','2025-01-15 10:27:01','','work6','','inherit','open','closed','','work6','','','2025-01-15 10:54:18','2025-01-15 10:54:18','',7,'http://photostudio.local/wp-content/uploads/2025/01/work6.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (38,1,'2025-01-15 10:27:01','2025-01-15 10:27:01','','work7','','inherit','open','closed','','work7','','','2025-01-15 10:54:20','2025-01-15 10:54:20','',7,'http://photostudio.local/wp-content/uploads/2025/01/work7.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (39,1,'2025-01-15 10:27:02','2025-01-15 10:27:02','','work8','','inherit','open','closed','','work8','','','2025-01-15 10:54:22','2025-01-15 10:54:22','',7,'http://photostudio.local/wp-content/uploads/2025/01/work8.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-01-15 10:27:21','2025-01-15 10:27:21','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 10:27:21','2025-01-15 10:27:21','',7,'http://photostudio.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2025-01-15 10:50:45','2025-01-15 10:50:45','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Заглавие','works_title','publish','closed','closed','','field_678792dcb4e74','','','2025-01-15 10:50:45','2025-01-15 10:50:45','',9,'http://photostudio.local/?post_type=acf-field&p=41',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2025-01-15 10:51:01','2025-01-15 10:51:01','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 10:51:01','2025-01-15 10:51:01','',7,'http://photostudio.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2025-01-15 10:52:19','2025-01-15 10:52:19','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 10:52:19','2025-01-15 10:52:19','',7,'http://photostudio.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2025-01-15 10:54:24','2025-01-15 10:54:24','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 10:54:24','2025-01-15 10:54:24','',7,'http://photostudio.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2025-01-15 10:54:30','2025-01-15 10:54:30','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 10:54:30','2025-01-15 10:54:30','',7,'http://photostudio.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2025-01-15 10:54:34','2025-01-15 10:54:34','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 10:54:34','2025-01-15 10:54:34','',7,'http://photostudio.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2025-01-15 10:58:31','2025-01-15 10:58:31','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Зоны','зоны','publish','closed','closed','','field_67879488415dd','','','2025-01-15 10:58:31','2025-01-15 10:58:31','',9,'http://photostudio.local/?post_type=acf-field&p=47',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2025-01-15 10:58:31','2025-01-15 10:58:31','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Заголовок','rooms_title','publish','closed','closed','','field_6787949e415de','','','2025-01-15 10:58:31','2025-01-15 10:58:31','',9,'http://photostudio.local/?post_type=acf-field&p=48',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2025-01-15 10:58:40','2025-01-15 10:58:40','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 10:58:40','2025-01-15 10:58:40','',7,'http://photostudio.local/?p=49',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2025-01-15 11:05:22','2025-01-15 11:05:22','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}','Описание зоны','room_repeater','publish','closed','closed','','field_67879552a57b8','','','2025-01-15 11:13:39','2025-01-15 11:13:39','',9,'http://photostudio.local/?post_type=acf-field&#038;p=50',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2025-01-15 11:05:22','2025-01-15 11:05:22','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Фото зоны','room_repeater_image','publish','closed','closed','','field_6787957ea57b9','','','2025-01-15 11:05:22','2025-01-15 11:05:22','',50,'http://photostudio.local/?post_type=acf-field&p=51',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2025-01-15 11:05:22','2025-01-15 11:05:22','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Заголовок зоны','room_repeater_title','publish','closed','closed','','field_678795bfa57ba','','','2025-01-15 11:05:22','2025-01-15 11:05:22','',50,'http://photostudio.local/?post_type=acf-field&p=52',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2025-01-15 11:05:22','2025-01-15 11:05:22','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}','Список описания зоны','room_repeater_description','publish','closed','closed','','field_678795d8a57bb','','','2025-01-15 11:13:39','2025-01-15 11:13:39','',50,'http://photostudio.local/?post_type=acf-field&#038;p=53',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2025-01-15 11:05:22','2025-01-15 11:05:22','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Описание','room_repeater_description_item','publish','closed','closed','','field_6787963ba57bc','','','2025-01-15 11:07:11','2025-01-15 11:07:11','',53,'http://photostudio.local/?post_type=acf-field&#038;p=54',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2025-01-15 11:14:40','2025-01-15 11:14:40','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:14:40','2025-01-15 11:14:40','',7,'http://photostudio.local/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2025-01-15 11:15:26','2025-01-15 11:15:26','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:15:26','2025-01-15 11:15:26','',7,'http://photostudio.local/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2025-01-15 11:16:24','2025-01-15 11:16:24','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:16:24','2025-01-15 11:16:24','',7,'http://photostudio.local/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2025-01-15 11:16:45','2025-01-15 11:16:45','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:16:45','2025-01-15 11:16:45','',7,'http://photostudio.local/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2025-01-15 11:20:41','2025-01-15 11:20:41','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:20:41','2025-01-15 11:20:41','',7,'http://photostudio.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2025-01-15 11:21:31','2025-01-15 11:21:31','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:21:31','2025-01-15 11:21:31','',7,'http://photostudio.local/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2025-01-15 11:28:03','2025-01-15 11:28:03','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Фотограф','фотограф','publish','closed','closed','','field_67879b393246a','','','2025-01-15 11:28:03','2025-01-15 11:28:03','',9,'http://photostudio.local/?post_type=acf-field&p=61',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2025-01-15 11:28:03','2025-01-15 11:28:03','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Заглавие','photographer_title','publish','closed','closed','','field_67879b543246b','','','2025-01-15 11:28:03','2025-01-15 11:28:03','',9,'http://photostudio.local/?post_type=acf-field&p=62',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2025-01-15 11:28:03','2025-01-15 11:28:03','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Фото','photographer_image','publish','closed','closed','','field_67879b6a3246c','','','2025-01-15 11:28:03','2025-01-15 11:28:03','',9,'http://photostudio.local/?post_type=acf-field&p=63',12,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2025-01-15 11:28:03','2025-01-15 11:28:03','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Подзаголовок','photographer_subtitle','publish','closed','closed','','field_67879b863246d','','','2025-01-15 11:28:03','2025-01-15 11:28:03','',9,'http://photostudio.local/?post_type=acf-field&p=64',13,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2025-01-15 11:28:03','2025-01-15 11:28:03','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}','Описание','photographer_description','publish','closed','closed','','field_67879bb13246e','','','2025-01-15 11:29:12','2025-01-15 11:29:12','',9,'http://photostudio.local/?post_type=acf-field&#038;p=65',14,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2025-01-15 11:28:26','2025-01-15 11:28:26','','sergey','','inherit','open','closed','','sergey','','','2025-01-15 11:28:26','2025-01-15 11:28:26','',7,'http://photostudio.local/wp-content/uploads/2025/01/sergey.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (67,1,'2025-01-15 11:29:39','2025-01-15 11:29:39','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:29:39','2025-01-15 11:29:39','',7,'http://photostudio.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2025-01-15 11:32:52','2025-01-15 11:32:52','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:32:52','2025-01-15 11:32:52','',7,'http://photostudio.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2025-01-15 11:32:59','2025-01-15 11:32:59','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:32:59','2025-01-15 11:32:59','',7,'http://photostudio.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2025-01-15 11:33:19','2025-01-15 11:33:19','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:33:19','2025-01-15 11:33:19','',7,'http://photostudio.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2025-01-15 11:33:25','2025-01-15 11:33:25','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 11:33:25','2025-01-15 11:33:25','',7,'http://photostudio.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2025-01-15 13:07:40','2025-01-15 13:07:40','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Бронирование','booking','publish','closed','closed','','field_6787b2ccd680e','','','2025-01-15 13:07:40','2025-01-15 13:07:40','',9,'http://photostudio.local/?post_type=acf-field&p=72',15,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2025-01-15 13:07:40','2025-01-15 13:07:40','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Заглавие','booking_title','publish','closed','closed','','field_6787b308d680f','','','2025-01-15 13:07:40','2025-01-15 13:07:40','',9,'http://photostudio.local/?post_type=acf-field&p=73',16,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2025-01-15 13:08:42','2025-01-15 13:08:42','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 13:08:42','2025-01-15 13:08:42','',7,'http://photostudio.local/?p=74',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2025-01-15 16:20:14','2025-01-15 16:20:14','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 16:20:14','2025-01-15 16:20:14','',7,'http://photostudio.local/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2025-01-15 16:57:53','2025-01-15 16:57:53','','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 16:57:53','2025-01-15 16:57:53','',7,'http://photostudio.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2025-01-15 16:58:10','2025-01-15 16:58:10','<!-- wp:paragraph -->\n<p>[booking_form]</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 16:58:10','2025-01-15 16:58:10','',7,'http://photostudio.local/?p=77',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2025-01-15 16:58:10','2025-01-15 16:58:10','<!-- wp:paragraph -->\n<p>[booking_form]</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2025-01-15 16:58:10','2025-01-15 16:58:10','',7,'http://photostudio.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2025-01-15 16:58:32','2025-01-15 16:58:32','','Home','','inherit','closed','closed','','7-autosave-v1','','','2025-01-15 16:58:32','2025-01-15 16:58:32','',7,'http://photostudio.local/?p=79',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_registration_log`
--

DROP TABLE IF EXISTS `wp_registration_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `IP` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_registration_log`
--

LOCK TABLES `wp_registration_log` WRITE;
/*!40000 ALTER TABLE `wp_registration_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_registration_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_signups`
--

DROP TABLE IF EXISTS `wp_signups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_signups`
--

LOCK TABLES `wp_signups` WRITE;
/*!40000 ALTER TABLE `wp_signups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_signups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_site`
--

DROP TABLE IF EXISTS `wp_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(140),`path`(51))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_site`
--

LOCK TABLES `wp_site` WRITE;
/*!40000 ALTER TABLE `wp_site` DISABLE KEYS */;
INSERT INTO `wp_site` VALUES (1,'photostudio.local','/');
/*!40000 ALTER TABLE `wp_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sitemeta`
--

DROP TABLE IF EXISTS `wp_sitemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sitemeta`
--

LOCK TABLES `wp_sitemeta` WRITE;
/*!40000 ALTER TABLE `wp_sitemeta` DISABLE KEYS */;
INSERT INTO `wp_sitemeta` VALUES (1,1,'site_name','photostudio Sites');
INSERT INTO `wp_sitemeta` VALUES (2,1,'admin_email','kristinashcheglova5@gmail.com');
INSERT INTO `wp_sitemeta` VALUES (3,1,'admin_user_id','1');
INSERT INTO `wp_sitemeta` VALUES (4,1,'registration','none');
INSERT INTO `wp_sitemeta` VALUES (5,1,'upload_filetypes','jpg jpeg jpe gif png bmp tiff tif webp avif ico heic heif heics heifs asf asx wmv wmx wm avi divx flv mov qt mpeg mpg mpe mp4 m4v ogv webm mkv 3gp 3gpp 3g2 3gp2 txt asc c cc h srt csv tsv ics rtx css vtt dfxp mp3 m4a m4b aac ra ram wav ogg oga flac mid midi wma wax mka rtf pdf class tar zip gz gzip rar 7z psd xcf doc pot pps ppt wri xla xls xlt xlw mdb mpp docx docm dotx dotm xlsx xlsm xlsb xltx xltm xlam pptx pptm ppsx ppsm potx potm ppam sldx sldm onetoc onetoc2 onetmp onepkg oxps xps odt odp ods odg odc odb odf wp wpd key numbers pages');
INSERT INTO `wp_sitemeta` VALUES (6,1,'blog_upload_space','100');
INSERT INTO `wp_sitemeta` VALUES (7,1,'fileupload_maxk','1500');
INSERT INTO `wp_sitemeta` VALUES (8,1,'site_admins','a:1:{i:0;s:5:\"admin\";}');
INSERT INTO `wp_sitemeta` VALUES (9,1,'allowedthemes','a:1:{s:11:\"photostudio\";b:1;}');
INSERT INTO `wp_sitemeta` VALUES (10,1,'illegal_names','a:9:{i:0;s:3:\"www\";i:1;s:3:\"web\";i:2;s:4:\"root\";i:3;s:5:\"admin\";i:4;s:4:\"main\";i:5;s:6:\"invite\";i:6;s:13:\"administrator\";i:7;s:5:\"files\";i:8;s:4:\"blog\";}');
INSERT INTO `wp_sitemeta` VALUES (11,1,'wpmu_upgrade_site','58975');
INSERT INTO `wp_sitemeta` VALUES (12,1,'welcome_email','Howdy USERNAME,\n\nYour new SITE_NAME site has been successfully set up at:\nBLOG_URL\n\nYou can log in to the administrator account with the following information:\n\nUsername: USERNAME\nPassword: PASSWORD\nLog in here: BLOG_URLwp-login.php\n\nWe hope you enjoy your new site. Thanks!\n\n--The Team @ SITE_NAME');
INSERT INTO `wp_sitemeta` VALUES (13,1,'first_post','Welcome to %s. This is your first post. Edit or delete it, then start writing!');
INSERT INTO `wp_sitemeta` VALUES (14,1,'siteurl','http://photostudio.local/');
INSERT INTO `wp_sitemeta` VALUES (15,1,'add_new_users','0');
INSERT INTO `wp_sitemeta` VALUES (16,1,'upload_space_check_disabled','1');
INSERT INTO `wp_sitemeta` VALUES (17,1,'subdomain_install','');
INSERT INTO `wp_sitemeta` VALUES (18,1,'ms_files_rewriting','0');
INSERT INTO `wp_sitemeta` VALUES (19,1,'user_count','1');
INSERT INTO `wp_sitemeta` VALUES (20,1,'initial_db_version','58975');
INSERT INTO `wp_sitemeta` VALUES (21,1,'active_sitewide_plugins','a:3:{s:59:\"wp-maximum-upload-file-size/wp-maximum-upload-file-size.php\";i:1736923206;s:34:\"advanced-custom-fields-pro/acf.php\";i:1736935393;s:22:\"ks-booking/booking.php\";i:1737225564;}');
INSERT INTO `wp_sitemeta` VALUES (22,1,'WPLANG','en_US');
INSERT INTO `wp_sitemeta` VALUES (23,1,'main_site','1');
INSERT INTO `wp_sitemeta` VALUES (26,1,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1737285155;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}');
INSERT INTO `wp_sitemeta` VALUES (30,1,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1737285156;s:7:\"checked\";a:1:{s:11:\"photostudio\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}');
INSERT INTO `wp_sitemeta` VALUES (31,1,'_site_transient_timeout_browser_75117c046732b9afc5b1786c9adb529d','1737457685');
INSERT INTO `wp_sitemeta` VALUES (32,1,'_site_transient_browser_75117c046732b9afc5b1786c9adb529d','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"130.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}');
INSERT INTO `wp_sitemeta` VALUES (33,1,'_site_transient_timeout_php_check_a34f4a08303dd29cee70e79d780daa9d','1737457686');
INSERT INTO `wp_sitemeta` VALUES (34,1,'_site_transient_php_check_a34f4a08303dd29cee70e79d780daa9d','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}');
INSERT INTO `wp_sitemeta` VALUES (35,1,'wp_force_deactivated_plugins','a:0:{}');
INSERT INTO `wp_sitemeta` VALUES (36,1,'blog_count','1');
INSERT INTO `wp_sitemeta` VALUES (39,1,'can_compress_scripts','0');
INSERT INTO `wp_sitemeta` VALUES (66,1,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}');
INSERT INTO `wp_sitemeta` VALUES (67,1,'recently_activated','a:0:{}');
INSERT INTO `wp_sitemeta` VALUES (68,1,'_site_transient_timeout_acf_network_upgrade_needed_5.5.0','1744697271');
INSERT INTO `wp_sitemeta` VALUES (69,1,'_site_transient_acf_network_upgrade_needed_5.5.0','no');
INSERT INTO `wp_sitemeta` VALUES (212,1,'_site_transient_timeout_wp_theme_files_patterns-993006002d0f01ab6c4deb9798e3f168','1737286954');
INSERT INTO `wp_sitemeta` VALUES (213,1,'_site_transient_wp_theme_files_patterns-993006002d0f01ab6c4deb9798e3f168','a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}');
INSERT INTO `wp_sitemeta` VALUES (214,1,'_site_transient_timeout_theme_roots','1737286955');
INSERT INTO `wp_sitemeta` VALUES (215,1,'_site_transient_theme_roots','a:1:{s:11:\"photostudio\";s:7:\"/themes\";}');
INSERT INTO `wp_sitemeta` VALUES (216,1,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1737285156;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20241112\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"6.3.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.11.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:59:\"wp-maximum-upload-file-size/wp-maximum-upload-file-size.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/wp-maximum-upload-file-size\";s:4:\"slug\";s:27:\"wp-maximum-upload-file-size\";s:6:\"plugin\";s:59:\"wp-maximum-upload-file-size/wp-maximum-upload-file-size.php\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/wp-maximum-upload-file-size/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/wp-maximum-upload-file-size.1.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/wp-maximum-upload-file-size/assets/icon-256x256.png?rev=3190568\";s:2:\"1x\";s:80:\"https://ps.w.org/wp-maximum-upload-file-size/assets/icon-128x128.png?rev=3190568\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/wp-maximum-upload-file-size/assets/banner-1544x500.png?rev=3190555\";s:2:\"1x\";s:82:\"https://ps.w.org/wp-maximum-upload-file-size/assets/banner-772x250.png?rev=3190555\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"6.3.11\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.6\";s:22:\"ks-booking/booking.php\";s:3:\"1.0\";s:59:\"wp-maximum-upload-file-size/wp-maximum-upload-file-size.php\";s:5:\"1.1.6\";}}');
/*!40000 ALTER TABLE `wp_sitemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentyfive','twentytwentyfive',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'source_domain','photostudio.local');
INSERT INTO `wp_usermeta` VALUES (17,1,'primary_blog','1');
INSERT INTO `wp_usermeta` VALUES (18,1,'session_tokens','a:1:{s:64:\"5b549124005b385fb7bed06cdf587a688ee2eab73a63ffb48b67682b1385e7f1\";a:4:{s:10:\"expiration\";i:1737319433;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 YaBrowser/24.12.0.0 Safari/537.36\";s:5:\"login\";i:1737146633;}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','5');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:9:\"_modified\";s:24:\"2025-01-15T16:57:35.938Z\";s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:591;}}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1736923929');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_page','a:0:{}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BZXzDeB8aSHreyvfEzKruSwBuO3WL10','admin','kristinashcheglova5@gmail.com','http://photostudio.local','2025-01-14 11:04:45','',0,'admin',0,0);
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-19 14:54:24
