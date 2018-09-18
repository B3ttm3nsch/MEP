# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Datenbank: MEPApp_development
# Erstellt am: 2018-09-18 15:11:23 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle bsag_audio_faults
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_audio_faults`;

CREATE TABLE `bsag_audio_faults` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_bsag_audio_faults_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_audio_faults` WRITE;
/*!40000 ALTER TABLE `bsag_audio_faults` DISABLE KEYS */;

INSERT INTO `bsag_audio_faults` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'keine festgestellt','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(2,'Tonloch','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(3,'Sprung','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(4,'Fades','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(5,'Übersteuerung','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(6,'Phasenlage','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(7,'Pegel- / Dynamikunterschiede','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(8,'Fehlende Töne','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(9,'Knackser','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(10,'Phasenverzerrung','2018-05-30 10:00:00','2018-05-30 10:00:00');

/*!40000 ALTER TABLE `bsag_audio_faults` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_audio_formats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_audio_formats`;

CREATE TABLE `bsag_audio_formats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_bsag_audio_formats_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_audio_formats` WRITE;
/*!40000 ALTER TABLE `bsag_audio_formats` DISABLE KEYS */;

INSERT INTO `bsag_audio_formats` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Mono','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(2,'2.0','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(3,'2.1','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(4,'5.0','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(5,'5.1','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(6,'6.0','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(7,'6.1','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(8,'7.0','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(9,'7.1','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(10,'8.0','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(11,'8.1','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(12,'Athmos','2018-05-30 10:00:00','2018-05-30 10:00:00');

/*!40000 ALTER TABLE `bsag_audio_formats` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_audio_speeds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_audio_speeds`;

CREATE TABLE `bsag_audio_speeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speed` decimal(5,3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_bsag_audio_speeds_on_speed` (`speed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_audio_speeds` WRITE;
/*!40000 ALTER TABLE `bsag_audio_speeds` DISABLE KEYS */;

INSERT INTO `bsag_audio_speeds` (`id`, `speed`, `created_at`, `updated_at`)
VALUES
	(1,23.976,'2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(2,24.000,'2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(3,25.000,'2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(4,30.000,'2018-05-30 10:00:00','2018-05-30 10:00:00');

/*!40000 ALTER TABLE `bsag_audio_speeds` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_audio_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_audio_types`;

CREATE TABLE `bsag_audio_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_bsag_audio_types_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_audio_types` WRITE;
/*!40000 ALTER TABLE `bsag_audio_types` DISABLE KEYS */;

INSERT INTO `bsag_audio_types` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'O-Ton (OPM)','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(2,'MnE','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(3,'DX','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(4,'FX','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(5,'MX','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(6,'OPT','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(7,'Sonstige','2018-05-30 10:00:00','2018-05-30 10:00:00');

/*!40000 ALTER TABLE `bsag_audio_types` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_channel_errors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_channel_errors`;

CREATE TABLE `bsag_channel_errors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_bsag_channel_errors_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_channel_errors` WRITE;
/*!40000 ALTER TABLE `bsag_channel_errors` DISABLE KEYS */;

INSERT INTO `bsag_channel_errors` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'nicht geprüft','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(2,'korrekt','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(3,'nicht korrekt','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(4,'Beschriftung falsch','2018-05-30 10:00:00','2018-05-30 10:00:00');

/*!40000 ALTER TABLE `bsag_channel_errors` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_mep_audios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_mep_audios`;

CREATE TABLE `bsag_mep_audios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bsag_project_partial_id` int(11) NOT NULL,
  `bsag_audio_type_id` int(11) NOT NULL,
  `receiving_date` date NOT NULL,
  `bsag_mep_version_id` int(11) NOT NULL,
  `version_number` smallint(6) NOT NULL,
  `version_name_ext` varchar(30) DEFAULT NULL,
  `bsag_audio_format_id` int(11) NOT NULL,
  `bsag_audio_speed_id` int(11) NOT NULL,
  `is_complete` tinyint(1) DEFAULT NULL,
  `is_complete_comment` varchar(255) NOT NULL,
  `is_in_sync` tinyint(1) DEFAULT NULL,
  `is_in_sync_comment` varchar(255) NOT NULL,
  `dbtp_max` decimal(3,1) DEFAULT NULL,
  `lra` decimal(3,1) DEFAULT NULL,
  `lufs` decimal(3,1) DEFAULT NULL,
  `bsag_channel_error_id` int(11) NOT NULL,
  `channel_error_comment` varchar(255) DEFAULT NULL,
  `bsag_audio_fault_id` int(11) NOT NULL,
  `audio_fault_comment` varchar(255) DEFAULT NULL,
  `bsag_mep_evaluation_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_bsag_mep_audios_on_bsag_project_partial_id` (`bsag_project_partial_id`),
  KEY `index_bsag_mep_audios_on_bsag_audio_type_id` (`bsag_audio_type_id`),
  KEY `index_bsag_mep_audios_on_bsag_mep_version_id` (`bsag_mep_version_id`),
  KEY `index_bsag_mep_audios_on_bsag_audio_format_id` (`bsag_audio_format_id`),
  KEY `index_bsag_mep_audios_on_bsag_audio_speed_id` (`bsag_audio_speed_id`),
  KEY `index_bsag_mep_audios_on_bsag_channel_error_id` (`bsag_channel_error_id`),
  KEY `index_bsag_mep_audios_on_bsag_audio_fault_id` (`bsag_audio_fault_id`),
  KEY `index_bsag_mep_audios_on_bsag_mep_evaluation_id` (`bsag_mep_evaluation_id`),
  CONSTRAINT `fk_rails_1ddfc767f6` FOREIGN KEY (`bsag_audio_format_id`) REFERENCES `bsag_audio_formats` (`id`),
  CONSTRAINT `fk_rails_29d9af3c0a` FOREIGN KEY (`bsag_channel_error_id`) REFERENCES `bsag_channel_errors` (`id`),
  CONSTRAINT `fk_rails_3171fc230e` FOREIGN KEY (`bsag_audio_type_id`) REFERENCES `bsag_audio_types` (`id`),
  CONSTRAINT `fk_rails_5e07b7ab06` FOREIGN KEY (`bsag_audio_fault_id`) REFERENCES `bsag_audio_faults` (`id`),
  CONSTRAINT `fk_rails_7d530383f7` FOREIGN KEY (`bsag_mep_version_id`) REFERENCES `bsag_mep_versions` (`id`),
  CONSTRAINT `fk_rails_8ba77c63bb` FOREIGN KEY (`bsag_mep_evaluation_id`) REFERENCES `bsag_mep_evaluations` (`id`),
  CONSTRAINT `fk_rails_8d2eccf403` FOREIGN KEY (`bsag_audio_speed_id`) REFERENCES `bsag_audio_speeds` (`id`),
  CONSTRAINT `fk_rails_cc8a3a8760` FOREIGN KEY (`bsag_project_partial_id`) REFERENCES `bsag_project_partials` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_mep_audios` WRITE;
/*!40000 ALTER TABLE `bsag_mep_audios` DISABLE KEYS */;

INSERT INTO `bsag_mep_audios` (`id`, `bsag_project_partial_id`, `bsag_audio_type_id`, `receiving_date`, `bsag_mep_version_id`, `version_number`, `version_name_ext`, `bsag_audio_format_id`, `bsag_audio_speed_id`, `is_complete`, `is_complete_comment`, `is_in_sync`, `is_in_sync_comment`, `dbtp_max`, `lra`, `lufs`, `bsag_channel_error_id`, `channel_error_comment`, `bsag_audio_fault_id`, `audio_fault_comment`, `bsag_mep_evaluation_id`, `created_at`, `updated_at`)
VALUES
	(2,1,1,'2018-06-10',1,0,'',1,1,0,'',0,'',NULL,NULL,NULL,1,NULL,1,NULL,1,'2018-06-10 12:35:33','2018-06-10 12:35:33');

/*!40000 ALTER TABLE `bsag_mep_audios` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_mep_evaluations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_mep_evaluations`;

CREATE TABLE `bsag_mep_evaluations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_bsag_mep_evaluations_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_mep_evaluations` WRITE;
/*!40000 ALTER TABLE `bsag_mep_evaluations` DISABLE KEYS */;

INSERT INTO `bsag_mep_evaluations` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Nicht entschieden','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(2,'OK','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(3,'OK mit Einschränkung','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(4,'Fehlerhaft','2018-05-30 10:00:00','2018-05-30 10:00:00');

/*!40000 ALTER TABLE `bsag_mep_evaluations` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_mep_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_mep_versions`;

CREATE TABLE `bsag_mep_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_bsag_mep_versions_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_mep_versions` WRITE;
/*!40000 ALTER TABLE `bsag_mep_versions` DISABLE KEYS */;

INSERT INTO `bsag_mep_versions` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Pre-Lim','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(2,'Final','2018-05-30 10:00:00','2018-05-30 10:00:00'),
	(3,'Locked','2018-05-30 10:00:00','2018-05-30 10:00:00');

/*!40000 ALTER TABLE `bsag_mep_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_product_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_product_categories`;

CREATE TABLE `bsag_product_categories` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_product_categories` WRITE;
/*!40000 ALTER TABLE `bsag_product_categories` DISABLE KEYS */;

INSERT INTO `bsag_product_categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`)
VALUES
	(1,'Film',1,'2016-02-24 12:36:44','2016-02-24 12:36:44'),
	(2,'Serie',1,'2016-02-24 12:36:44','2016-02-24 12:36:44'),
	(3,'Corp. Media',1,'2016-02-24 12:36:44','2016-02-24 12:36:44');

/*!40000 ALTER TABLE `bsag_product_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_product_variations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_product_variations`;

CREATE TABLE `bsag_product_variations` (
  `id` smallint(5) unsigned NOT NULL COMMENT 'id from pipedrive',
  `product_id` smallint(6) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `needs_calculation` tinyint(1) unsigned DEFAULT '1',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_product_variations` WRITE;
/*!40000 ALTER TABLE `bsag_product_variations` DISABLE KEYS */;

INSERT INTO `bsag_product_variations` (`id`, `product_id`, `name`, `needs_calculation`, `is_active`, `created_at`, `updated_at`)
VALUES
	(3,7,'Standardablauf',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(5,7,'Pre-Lim',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(6,9,'Standardablauf',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(8,9,'Pre-Lim',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(9,10,'Standardablauf',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(11,10,'Pre-Lim',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(12,11,'Standardablauf',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(13,11,'Pre-Lim',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(14,11,'Acc',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(15,12,'Standardablauf',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(16,12,'Pre-Lim',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(17,12,'Acc',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(18,13,'Standardablauf',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(19,13,'Pre-Lim',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(20,13,'Acc',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(21,9,'Trailer',0,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(22,9,'Marketing',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(23,7,'Trailer',0,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(24,7,'Marketing',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(25,10,'Trailer',0,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(26,10,'Marketing',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(27,11,'Trailer',0,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(28,11,'Marketing',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(29,12,'Trailer',0,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(30,12,'Marketing',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(31,13,'Trailer',0,1,'2016-05-23 18:04:06','2016-05-23 18:04:06'),
	(32,13,'Marketing',1,1,'2016-05-23 18:04:06','2016-05-23 18:04:06');

/*!40000 ALTER TABLE `bsag_product_variations` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_products`;

CREATE TABLE `bsag_products` (
  `id` smallint(5) unsigned NOT NULL COMMENT 'id value from pipedrive',
  `code` varchar(10) DEFAULT NULL COMMENT 'code value from pipedrive',
  `name` varchar(30) NOT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `segment` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_products` WRITE;
/*!40000 ALTER TABLE `bsag_products` DISABLE KEYS */;

INSERT INTO `bsag_products` (`id`, `code`, `name`, `short_name`, `segment`, `category`, `is_active`, `created_at`, `updated_at`)
VALUES
	(3,'UT_001','UT',NULL,NULL,NULL,1,'2015-12-10 10:04:59','2015-12-21 14:49:32'),
	(4,'BA_001','BAR',NULL,NULL,NULL,1,'2015-12-10 10:06:08','2015-12-21 14:52:21'),
	(7,'KP_001','KINO PREMIUM',NULL,'Kino','Premium',1,'2015-12-16 23:26:35','2016-04-28 05:58:44'),
	(9,'KA_001','KINO ArtHouse',NULL,'Kino','ArtHouse',1,'2015-12-21 14:37:50','2016-04-28 05:58:20'),
	(10,'KS_001','KINO STANDARD',NULL,'Kino','Standard',1,'2015-12-21 14:38:10','2016-04-28 05:50:55'),
	(11,'TVP_001','TV PREMIUM',NULL,'TV','Premium',1,'2015-12-21 14:43:49','2016-04-28 06:01:34'),
	(12,'TVS_001','TV STANDARD',NULL,'TV','Standard',1,'2015-12-21 14:44:35','2016-04-28 05:57:33'),
	(13,'TVV_001','TV VALUE',NULL,'TV','Value',1,'2015-12-21 14:44:40','2016-08-18 07:57:44'),
	(14,'CM_001','Corporate Media',NULL,'CM',NULL,1,'2015-12-21 14:45:50','2015-12-21 14:52:05'),
	(15,'SDH_001','SDH',NULL,NULL,NULL,1,'2015-12-21 14:47:01','2015-12-21 14:50:57'),
	(16,'AD_001','AD',NULL,NULL,NULL,1,'2015-12-22 09:53:22','2015-12-22 12:20:56'),
	(22,NULL,'CM',NULL,NULL,NULL,1,'2017-07-11 14:32:21','2017-07-11 14:32:21');

/*!40000 ALTER TABLE `bsag_products` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_project_partial_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_project_partial_versions`;

CREATE TABLE `bsag_project_partial_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL,
  `partial_id` int(10) unsigned NOT NULL,
  `version_id` smallint(5) unsigned DEFAULT NULL,
  `guid` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'Titel wurde noch nicht vergeben',
  `notes` varchar(2000) DEFAULT NULL,
  `duration` smallint(5) unsigned DEFAULT NULL,
  `duration_in_seconds` decimal(6,3) DEFAULT NULL,
  `offset_in_seconds` decimal(6,3) DEFAULT NULL,
  `framerate` float(4,2) DEFAULT '24.00',
  `word_count_source` int(11) DEFAULT NULL,
  `word_count_localized` int(11) DEFAULT NULL,
  `take_count` int(11) DEFAULT NULL,
  `talk_time` float(6,2) DEFAULT NULL,
  `video_asset_name` varchar(200) DEFAULT NULL,
  `video_asset_poster` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) unsigned DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iProject` (`project_id`) USING HASH,
  KEY `iFileGuid` (`video_asset_name`),
  KEY `iPartial` (`partial_id`),
  KEY `iVersion` (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_project_partial_versions` WRITE;
/*!40000 ALTER TABLE `bsag_project_partial_versions` DISABLE KEYS */;

INSERT INTO `bsag_project_partial_versions` (`id`, `project_id`, `partial_id`, `version_id`, `guid`, `title`, `notes`, `duration`, `duration_in_seconds`, `offset_in_seconds`, `framerate`, `word_count_source`, `word_count_localized`, `take_count`, `talk_time`, `video_asset_name`, `video_asset_poster`, `is_active`, `created_at`, `updated_at`)
VALUES
	(1,1,1,1,'1111','Titel v1',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(2,1,2,1,'2222','Titel v1',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(3,1,3,1,'3333','Titel v1',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(4,1,4,1,'4444','Titel v1',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(5,1,5,1,'5555','Titel v1',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(6,1,6,1,'6666','Titel v1',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(7,1,7,1,'7777','Titel v1',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(8,2,8,2,'11111','Titel v2',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(9,2,9,2,'22222','Titel v2',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(10,2,10,2,'33333','Titel v2',NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL);

/*!40000 ALTER TABLE `bsag_project_partial_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_project_partials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_project_partials`;

CREATE TABLE `bsag_project_partials` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL,
  `number` smallint(5) unsigned NOT NULL,
  `production_code` varchar(16) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'Titel wurde noch nicht vergeben',
  `title_localized1` varchar(255) DEFAULT NULL,
  `title_localized2` varchar(255) DEFAULT NULL,
  `title_localized3` varchar(255) DEFAULT NULL,
  `synopsis` varchar(2000) DEFAULT NULL,
  `synopsis_localized` varchar(2000) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `imdb_id` varchar(10) DEFAULT NULL,
  `poster_url` varchar(500) DEFAULT NULL,
  `poster_file_name` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) unsigned DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iProject` (`project_id`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_project_partials` WRITE;
/*!40000 ALTER TABLE `bsag_project_partials` DISABLE KEYS */;

INSERT INTO `bsag_project_partials` (`id`, `project_id`, `number`, `production_code`, `title`, `title_localized1`, `title_localized2`, `title_localized3`, `synopsis`, `synopsis_localized`, `notes`, `imdb_id`, `poster_url`, `poster_file_name`, `is_active`, `created_at`, `updated_at`)
VALUES
	(1,1,101,'0x1111','Titel 101','Titel 101 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(2,1,102,'0x2222','Titel 102','Titel 102 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(3,1,103,'0x3333','Titel 103','Titel 103 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(4,1,104,'0x4444','Titel 104','Titel 104 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(5,1,105,'0x5555','Titel 105','Titel 105 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(6,1,106,'0x6666','Titel 106','Titel 106 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(7,1,107,'0x7777','Titel 107','Titel 107 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(8,2,101,'0x1111','Titel 101','Titel 101 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(9,2,102,'0x2222','Titel 102','Titel 102 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),
	(10,2,103,'0x3333','Titel 103','Titel 103 Übersetzung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL);

/*!40000 ALTER TABLE `bsag_project_partials` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle bsag_project_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bsag_project_versions`;

CREATE TABLE `bsag_project_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `is_final` tinyint(1) DEFAULT '1',
  `is_deletable` tinyint(1) unsigned DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iProject` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bsag_project_versions` WRITE;
/*!40000 ALTER TABLE `bsag_project_versions` DISABLE KEYS */;

INSERT INTO `bsag_project_versions` (`id`, `project_id`, `name`, `is_final`, `is_deletable`, `created_at`, `updated_at`)
VALUES
	(1,1,'Final',1,0,'2018-04-08 14:20:27','2018-04-08 14:20:27'),
	(2,2,'Final',1,0,'2018-04-20 17:07:27','2018-05-08 19:56:08');

/*!40000 ALTER TABLE `bsag_project_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20180529110849'),
	('20180529111007'),
	('20180529111134'),
	('20180529112142'),
	('20180529112847'),
	('20180529115859'),
	('20180529125647'),
	('20180529132012'),
	('20180531135757'),
	('20180601090603');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle tblClients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblClients`;

CREATE TABLE `tblClients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sage_id` int(11) DEFAULT NULL,
  `bank_account_id` smallint(6) DEFAULT '1',
  `Name` varchar(150) DEFAULT NULL,
  `Manager` int(11) DEFAULT '0',
  `Phone1` varchar(30) DEFAULT NULL,
  `Phone2` varchar(30) DEFAULT NULL,
  `Phone3` varchar(30) DEFAULT NULL,
  `FAX` varchar(30) DEFAULT NULL,
  `Address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Postcode` varchar(11) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `Description` text,
  `Archived` tinyint(1) DEFAULT '0',
  `ContactName` varchar(255) DEFAULT NULL,
  `ContactEmail` varchar(255) DEFAULT NULL,
  `Colour` varchar(7) NOT NULL DEFAULT '',
  `language` varchar(5) DEFAULT 'D',
  `debtor_id` int(11) DEFAULT NULL,
  `ustid` varchar(20) DEFAULT NULL,
  `email_global` varchar(50) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_archived` (`Archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tblClients` WRITE;
/*!40000 ALTER TABLE `tblClients` DISABLE KEYS */;

INSERT INTO `tblClients` (`ID`, `sage_id`, `bank_account_id`, `Name`, `Manager`, `Phone1`, `Phone2`, `Phone3`, `FAX`, `Address1`, `Address2`, `City`, `State`, `Country`, `Postcode`, `URL`, `Description`, `Archived`, `ContactName`, `ContactEmail`, `Colour`, `language`, `debtor_id`, `ustid`, `email_global`, `notes`, `created_at`, `updated_at`)
VALUES
	(1,1000600,1,'Studiocanal GmbH',4,NULL,NULL,NULL,NULL,'Neue Promenade 4',NULL,'Berlin',NULL,'DE','10178',NULL,NULL,0,NULL,NULL,'','D',NULL,'DE',NULL,NULL,'2018-03-09 11:22:38','2018-04-20 17:12:08'),
	(2,1051000,1,'Deluxe Media Inc USA',4,NULL,NULL,NULL,NULL,'PO Box 10009',NULL,'Burbank, CA ',NULL,'US','91510-0009',NULL,NULL,0,NULL,'FLD_AP@bydeluxe.com','','E',NULL,NULL,'FLD_AP@bydeluxe.com',NULL,'2018-03-09 11:22:39','2018-05-14 23:22:12');

/*!40000 ALTER TABLE `tblClients` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle tblProjects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblProjects`;

CREATE TABLE `tblProjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL DEFAULT '0',
  `ProjectID` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Owner` int(11) DEFAULT '0',
  `URL` varchar(255) DEFAULT NULL,
  `DemoURL` varchar(255) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `ActualEndDate` date DEFAULT NULL,
  `Status` int(11) DEFAULT '0',
  `Priority` tinyint(1) NOT NULL DEFAULT '1',
  `Colour` varchar(7) DEFAULT '#EEEEEE',
  `Description` text,
  `TargetBudget` int(11) DEFAULT '0',
  `ActualBudget` int(11) DEFAULT '0',
  `Active` tinyint(1) DEFAULT '1',
  `product_id` smallint(6) DEFAULT NULL,
  `product_variation_id` smallint(6) DEFAULT NULL,
  `category_id` smallint(5) unsigned DEFAULT '1',
  `aka_title` varchar(100) DEFAULT NULL,
  `assets_path` varchar(500) DEFAULT NULL,
  `poster_url` varchar(500) DEFAULT NULL,
  `take_count` int(11) DEFAULT NULL,
  `word_count_source` int(11) DEFAULT NULL,
  `word_count_localized` int(11) DEFAULT NULL,
  `talk_time` float(5,2) DEFAULT NULL,
  `structure_created_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_sdate` (`StartDate`),
  KEY `idx_edate` (`EndDate`),
  KEY `idx_ClientID` (`ClientID`),
  KEY `idx_Active` (`Active`),
  KEY `iProduct` (`product_id`),
  KEY `iProductVariation` (`product_variation_id`),
  KEY `iCategory` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tblProjects` WRITE;
/*!40000 ALTER TABLE `tblProjects` DISABLE KEYS */;

INSERT INTO `tblProjects` (`ID`, `ClientID`, `ProjectID`, `Name`, `Owner`, `URL`, `DemoURL`, `StartDate`, `EndDate`, `ActualEndDate`, `Status`, `Priority`, `Colour`, `Description`, `TargetBudget`, `ActualBudget`, `Active`, `product_id`, `product_variation_id`, `category_id`, `aka_title`, `assets_path`, `poster_url`, `take_count`, `word_count_source`, `word_count_localized`, `talk_time`, `structure_created_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'P18-8004','Glass Castle, The',5,NULL,NULL,'2018-02-27',NULL,NULL,0,1,'#EEEEEE',NULL,55000,0,1,10,9,1,'Glasschloss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-03-09 14:31:38','2018-04-20 17:09:55'),
	(2,2,'P18-8005','Luke Cage, Staffel 2',5,NULL,NULL,'2018-02-27',NULL,NULL,0,1,'#EEEEEE',NULL,181207,0,1,12,15,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-03-09 14:31:38','2018-05-14 23:22:16');

/*!40000 ALTER TABLE `tblProjects` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
