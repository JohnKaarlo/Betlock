CREATE DATABASE  IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mysql`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('betlock','account_user','PRIMARY','2024-03-11 10:53:34','n_diff_pfx01',6,1,'id'),('betlock','account_user','PRIMARY','2024-03-11 10:53:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','account_user','PRIMARY','2024-03-11 10:53:34','size',1,NULL,'Number of pages in the index'),('betlock','account_user','email','2024-03-11 10:53:34','n_diff_pfx01',6,1,'email'),('betlock','account_user','email','2024-03-11 10:53:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','account_user','email','2024-03-11 10:53:34','size',1,NULL,'Number of pages in the index'),('betlock','account_user','mobileNumber','2024-03-11 10:53:34','n_diff_pfx01',6,1,'mobileNumber'),('betlock','account_user','mobileNumber','2024-03-11 10:53:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','account_user','mobileNumber','2024-03-11 10:53:34','size',1,NULL,'Number of pages in the index'),('betlock','account_user','username','2024-03-11 10:53:34','n_diff_pfx01',6,1,'username'),('betlock','account_user','username','2024-03-11 10:53:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','account_user','username','2024-03-11 10:53:34','size',1,NULL,'Number of pages in the index'),('betlock','auth_group','PRIMARY','2023-10-17 05:34:21','n_diff_pfx01',0,1,'id'),('betlock','auth_group','PRIMARY','2023-10-17 05:34:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_group','PRIMARY','2023-10-17 05:34:21','size',1,NULL,'Number of pages in the index'),('betlock','auth_group','name','2023-10-17 05:34:21','n_diff_pfx01',0,1,'name'),('betlock','auth_group','name','2023-10-17 05:34:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_group','name','2023-10-17 05:34:21','size',1,NULL,'Number of pages in the index'),('betlock','auth_group_permissions','PRIMARY','2023-10-17 05:34:22','n_diff_pfx01',0,1,'id'),('betlock','auth_group_permissions','PRIMARY','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_group_permissions','PRIMARY','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','auth_group_permissions','auth_group_permissio_permission_id_84c5c92e_fk_auth_perm','2023-10-17 05:34:22','n_diff_pfx01',0,1,'permission_id'),('betlock','auth_group_permissions','auth_group_permissio_permission_id_84c5c92e_fk_auth_perm','2023-10-17 05:34:22','n_diff_pfx02',0,1,'permission_id,id'),('betlock','auth_group_permissions','auth_group_permissio_permission_id_84c5c92e_fk_auth_perm','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_group_permissions','auth_group_permissio_permission_id_84c5c92e_fk_auth_perm','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','auth_group_permissions','auth_group_permissions_group_id_permission_id_0cd325b0_uniq','2023-10-17 05:34:22','n_diff_pfx01',0,1,'group_id'),('betlock','auth_group_permissions','auth_group_permissions_group_id_permission_id_0cd325b0_uniq','2023-10-17 05:34:22','n_diff_pfx02',0,1,'group_id,permission_id'),('betlock','auth_group_permissions','auth_group_permissions_group_id_permission_id_0cd325b0_uniq','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_group_permissions','auth_group_permissions_group_id_permission_id_0cd325b0_uniq','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','auth_permission','PRIMARY','2024-03-09 08:26:40','n_diff_pfx01',56,1,'id'),('betlock','auth_permission','PRIMARY','2024-03-09 08:26:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_permission','PRIMARY','2024-03-09 08:26:40','size',1,NULL,'Number of pages in the index'),('betlock','auth_permission','auth_permission_content_type_id_codename_01ab375a_uniq','2024-03-09 08:26:40','n_diff_pfx01',14,1,'content_type_id'),('betlock','auth_permission','auth_permission_content_type_id_codename_01ab375a_uniq','2024-03-09 08:26:40','n_diff_pfx02',56,1,'content_type_id,codename'),('betlock','auth_permission','auth_permission_content_type_id_codename_01ab375a_uniq','2024-03-09 08:26:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_permission','auth_permission_content_type_id_codename_01ab375a_uniq','2024-03-09 08:26:40','size',1,NULL,'Number of pages in the index'),('betlock','auth_user','PRIMARY','2023-10-18 06:51:26','n_diff_pfx01',2,1,'id'),('betlock','auth_user','PRIMARY','2023-10-18 06:51:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_user','PRIMARY','2023-10-18 06:51:26','size',1,NULL,'Number of pages in the index'),('betlock','auth_user','username','2023-10-18 06:51:26','n_diff_pfx01',2,1,'username'),('betlock','auth_user','username','2023-10-18 06:51:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_user','username','2023-10-18 06:51:26','size',1,NULL,'Number of pages in the index'),('betlock','auth_user_groups','PRIMARY','2023-10-17 05:34:22','n_diff_pfx01',0,1,'id'),('betlock','auth_user_groups','PRIMARY','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_user_groups','PRIMARY','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','auth_user_groups','auth_user_groups_group_id_97559544_fk_auth_group_id','2023-10-17 05:34:22','n_diff_pfx01',0,1,'group_id'),('betlock','auth_user_groups','auth_user_groups_group_id_97559544_fk_auth_group_id','2023-10-17 05:34:22','n_diff_pfx02',0,1,'group_id,id'),('betlock','auth_user_groups','auth_user_groups_group_id_97559544_fk_auth_group_id','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_user_groups','auth_user_groups_group_id_97559544_fk_auth_group_id','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','auth_user_groups','auth_user_groups_user_id_group_id_94350c0c_uniq','2023-10-17 05:34:22','n_diff_pfx01',0,1,'user_id'),('betlock','auth_user_groups','auth_user_groups_user_id_group_id_94350c0c_uniq','2023-10-17 05:34:22','n_diff_pfx02',0,1,'user_id,group_id'),('betlock','auth_user_groups','auth_user_groups_user_id_group_id_94350c0c_uniq','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_user_groups','auth_user_groups_user_id_group_id_94350c0c_uniq','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','auth_user_user_permissions','PRIMARY','2023-10-17 05:34:22','n_diff_pfx01',0,1,'id'),('betlock','auth_user_user_permissions','PRIMARY','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_user_user_permissions','PRIMARY','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','auth_user_user_permissions','auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm','2023-10-17 05:34:22','n_diff_pfx01',0,1,'permission_id'),('betlock','auth_user_user_permissions','auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm','2023-10-17 05:34:22','n_diff_pfx02',0,1,'permission_id,id'),('betlock','auth_user_user_permissions','auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_user_user_permissions','auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','auth_user_user_permissions','auth_user_user_permissions_user_id_permission_id_14a6b632_uniq','2023-10-17 05:34:22','n_diff_pfx01',0,1,'user_id'),('betlock','auth_user_user_permissions','auth_user_user_permissions_user_id_permission_id_14a6b632_uniq','2023-10-17 05:34:22','n_diff_pfx02',0,1,'user_id,permission_id'),('betlock','auth_user_user_permissions','auth_user_user_permissions_user_id_permission_id_14a6b632_uniq','2023-10-17 05:34:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','auth_user_user_permissions','auth_user_user_permissions_user_id_permission_id_14a6b632_uniq','2023-10-17 05:34:22','size',1,NULL,'Number of pages in the index'),('betlock','bet_bet','PRIMARY','2023-12-17 06:58:53','n_diff_pfx01',1,1,'id'),('betlock','bet_bet','PRIMARY','2023-12-17 06:58:53','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','bet_bet','PRIMARY','2023-12-17 06:58:53','size',1,NULL,'Number of pages in the index'),('betlock','bet_bet','bet_bet_bettor_id_9e4856c3_fk_account_user_id','2023-12-17 06:58:53','n_diff_pfx01',1,1,'bettor_id'),('betlock','bet_bet','bet_bet_bettor_id_9e4856c3_fk_account_user_id','2023-12-17 06:58:53','n_diff_pfx02',1,1,'bettor_id,id'),('betlock','bet_bet','bet_bet_bettor_id_9e4856c3_fk_account_user_id','2023-12-17 06:58:53','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','bet_bet','bet_bet_bettor_id_9e4856c3_fk_account_user_id','2023-12-17 06:58:53','size',1,NULL,'Number of pages in the index'),('betlock','bet_bet','bet_bet_game_id_ac2578ce_fk_game_game_id','2023-12-17 06:58:53','n_diff_pfx01',1,1,'game_id'),('betlock','bet_bet','bet_bet_game_id_ac2578ce_fk_game_game_id','2023-12-17 06:58:53','n_diff_pfx02',1,1,'game_id,id'),('betlock','bet_bet','bet_bet_game_id_ac2578ce_fk_game_game_id','2023-12-17 06:58:53','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','bet_bet','bet_bet_game_id_ac2578ce_fk_game_game_id','2023-12-17 06:58:53','size',1,NULL,'Number of pages in the index'),('betlock','blog_blog','PRIMARY','2024-02-01 15:04:55','n_diff_pfx01',6,1,'id'),('betlock','blog_blog','PRIMARY','2024-02-01 15:04:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','blog_blog','PRIMARY','2024-02-01 15:04:55','size',1,NULL,'Number of pages in the index'),('betlock','blog_blog','blog_blog_author_id_8791af69_fk_account_user_id','2024-02-01 15:04:55','n_diff_pfx01',3,1,'author_id'),('betlock','blog_blog','blog_blog_author_id_8791af69_fk_account_user_id','2024-02-01 15:04:55','n_diff_pfx02',6,1,'author_id,id'),('betlock','blog_blog','blog_blog_author_id_8791af69_fk_account_user_id','2024-02-01 15:04:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','blog_blog','blog_blog_author_id_8791af69_fk_account_user_id','2024-02-01 15:04:55','size',1,NULL,'Number of pages in the index'),('betlock','blog_blog','blog_blog_related_to_id_418feceb_fk_game_game_id','2024-02-01 15:04:55','n_diff_pfx01',3,1,'related_to_id'),('betlock','blog_blog','blog_blog_related_to_id_418feceb_fk_game_game_id','2024-02-01 15:04:55','n_diff_pfx02',6,1,'related_to_id,id'),('betlock','blog_blog','blog_blog_related_to_id_418feceb_fk_game_game_id','2024-02-01 15:04:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','blog_blog','blog_blog_related_to_id_418feceb_fk_game_game_id','2024-02-01 15:04:55','size',1,NULL,'Number of pages in the index'),('betlock','blog_blog','slug','2024-02-01 15:04:55','n_diff_pfx01',6,1,'slug'),('betlock','blog_blog','slug','2024-02-01 15:04:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','blog_blog','slug','2024-02-01 15:04:55','size',1,NULL,'Number of pages in the index'),('betlock','django_admin_log','PRIMARY','2024-02-01 14:42:11','n_diff_pfx01',138,1,'id'),('betlock','django_admin_log','PRIMARY','2024-02-01 14:42:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','django_admin_log','PRIMARY','2024-02-01 14:42:11','size',1,NULL,'Number of pages in the index'),('betlock','django_admin_log','django_admin_log_content_type_id_c4bce8eb_fk_django_co','2024-02-01 14:42:11','n_diff_pfx01',6,1,'content_type_id'),('betlock','django_admin_log','django_admin_log_content_type_id_c4bce8eb_fk_django_co','2024-02-01 14:42:11','n_diff_pfx02',138,1,'content_type_id,id'),('betlock','django_admin_log','django_admin_log_content_type_id_c4bce8eb_fk_django_co','2024-02-01 14:42:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','django_admin_log','django_admin_log_content_type_id_c4bce8eb_fk_django_co','2024-02-01 14:42:11','size',1,NULL,'Number of pages in the index'),('betlock','django_admin_log','django_admin_log_user_id_c564eba6_fk_auth_user_id','2024-02-01 14:42:11','n_diff_pfx01',1,1,'user_id'),('betlock','django_admin_log','django_admin_log_user_id_c564eba6_fk_auth_user_id','2024-02-01 14:42:11','n_diff_pfx02',138,1,'user_id,id'),('betlock','django_admin_log','django_admin_log_user_id_c564eba6_fk_auth_user_id','2024-02-01 14:42:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','django_admin_log','django_admin_log_user_id_c564eba6_fk_auth_user_id','2024-02-01 14:42:11','size',1,NULL,'Number of pages in the index'),('betlock','django_content_type','PRIMARY','2024-03-09 08:26:20','n_diff_pfx01',14,1,'id'),('betlock','django_content_type','PRIMARY','2024-03-09 08:26:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','django_content_type','PRIMARY','2024-03-09 08:26:20','size',1,NULL,'Number of pages in the index'),('betlock','django_content_type','django_content_type_app_label_model_76bd3d3b_uniq','2024-03-09 08:26:20','n_diff_pfx01',10,1,'app_label'),('betlock','django_content_type','django_content_type_app_label_model_76bd3d3b_uniq','2024-03-09 08:26:20','n_diff_pfx02',14,1,'app_label,model'),('betlock','django_content_type','django_content_type_app_label_model_76bd3d3b_uniq','2024-03-09 08:26:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','django_content_type','django_content_type_app_label_model_76bd3d3b_uniq','2024-03-09 08:26:20','size',1,NULL,'Number of pages in the index'),('betlock','django_migrations','PRIMARY','2024-01-31 11:45:27','n_diff_pfx01',73,1,'id'),('betlock','django_migrations','PRIMARY','2024-01-31 11:45:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','django_migrations','PRIMARY','2024-01-31 11:45:27','size',1,NULL,'Number of pages in the index'),('betlock','django_session','PRIMARY','2024-03-17 03:17:39','n_diff_pfx01',31,1,'session_key'),('betlock','django_session','PRIMARY','2024-03-17 03:17:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','django_session','PRIMARY','2024-03-17 03:17:39','size',1,NULL,'Number of pages in the index'),('betlock','django_session','django_session_expire_date_a5c62663','2024-03-17 03:17:39','n_diff_pfx01',31,1,'expire_date'),('betlock','django_session','django_session_expire_date_a5c62663','2024-03-17 03:17:39','n_diff_pfx02',31,1,'expire_date,session_key'),('betlock','django_session','django_session_expire_date_a5c62663','2024-03-17 03:17:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','django_session','django_session_expire_date_a5c62663','2024-03-17 03:17:39','size',1,NULL,'Number of pages in the index'),('betlock','game_game','PRIMARY','2024-03-09 08:26:30','n_diff_pfx01',4,1,'id'),('betlock','game_game','PRIMARY','2024-03-09 08:26:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','game_game','PRIMARY','2024-03-09 08:26:30','size',1,NULL,'Number of pages in the index'),('betlock','game_game','game_game_game_winner_id_d64fa001_fk_game_game_winner_id','2024-03-09 08:26:30','n_diff_pfx01',1,1,'game_winner_id'),('betlock','game_game','game_game_game_winner_id_d64fa001_fk_game_game_winner_id','2024-03-09 08:26:30','n_diff_pfx02',4,1,'game_winner_id,id'),('betlock','game_game','game_game_game_winner_id_d64fa001_fk_game_game_winner_id','2024-03-09 08:26:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','game_game','game_game_game_winner_id_d64fa001_fk_game_game_winner_id','2024-03-09 08:26:30','size',1,NULL,'Number of pages in the index'),('betlock','game_game','game_game_organizer_id_25aa81be_fk_account_user_id','2024-03-09 08:26:30','n_diff_pfx01',1,1,'organizer_id'),('betlock','game_game','game_game_organizer_id_25aa81be_fk_account_user_id','2024-03-09 08:26:30','n_diff_pfx02',4,1,'organizer_id,id'),('betlock','game_game','game_game_organizer_id_25aa81be_fk_account_user_id','2024-03-09 08:26:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','game_game','game_game_organizer_id_25aa81be_fk_account_user_id','2024-03-09 08:26:30','size',1,NULL,'Number of pages in the index'),('betlock','game_game','slug','2024-03-09 08:26:30','n_diff_pfx01',4,1,'slug'),('betlock','game_game','slug','2024-03-09 08:26:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','game_game','slug','2024-03-09 08:26:30','size',1,NULL,'Number of pages in the index'),('betlock','game_game_winner','PRIMARY','2024-03-09 08:26:20','n_diff_pfx01',0,1,'id'),('betlock','game_game_winner','PRIMARY','2024-03-09 08:26:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','game_game_winner','PRIMARY','2024-03-09 08:26:20','size',1,NULL,'Number of pages in the index'),('betlock','payment_withdraw','PRIMARY','2024-02-09 08:40:27','n_diff_pfx01',1,1,'id'),('betlock','payment_withdraw','PRIMARY','2024-02-09 08:40:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','payment_withdraw','PRIMARY','2024-02-09 08:40:27','size',1,NULL,'Number of pages in the index'),('betlock','payment_withdraw','payment_withdraw_requested_by_id_61cdc52a_fk_account_user_id','2024-02-09 08:40:27','n_diff_pfx01',1,1,'requested_by_id'),('betlock','payment_withdraw','payment_withdraw_requested_by_id_61cdc52a_fk_account_user_id','2024-02-09 08:40:27','n_diff_pfx02',1,1,'requested_by_id,id'),('betlock','payment_withdraw','payment_withdraw_requested_by_id_61cdc52a_fk_account_user_id','2024-02-09 08:40:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('betlock','payment_withdraw','payment_withdraw_requested_by_id_61cdc52a_fk_account_user_id','2024-02-09 08:40:27','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2023-10-06 04:25:16','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2023-10-06 04:25:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2023-10-06 04:25:16','size',1,NULL,'Number of pages in the index'),('sakila','actor','PRIMARY','2023-10-06 04:26:21','n_diff_pfx01',2,1,'actor_id'),('sakila','actor','PRIMARY','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','actor','PRIMARY','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','actor','idx_actor_last_name','2023-10-06 04:26:21','n_diff_pfx01',2,1,'last_name'),('sakila','actor','idx_actor_last_name','2023-10-06 04:26:21','n_diff_pfx02',2,1,'last_name,actor_id'),('sakila','actor','idx_actor_last_name','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','actor','idx_actor_last_name','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','address','PRIMARY','2023-10-06 04:26:21','n_diff_pfx01',603,5,'address_id'),('sakila','address','PRIMARY','2023-10-06 04:26:21','n_leaf_pages',5,NULL,'Number of leaf pages in the index'),('sakila','address','PRIMARY','2023-10-06 04:26:21','size',6,NULL,'Number of pages in the index'),('sakila','address','idx_fk_city_id','2023-10-06 04:26:21','n_diff_pfx01',599,1,'city_id'),('sakila','address','idx_fk_city_id','2023-10-06 04:26:21','n_diff_pfx02',603,1,'city_id,address_id'),('sakila','address','idx_fk_city_id','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','address','idx_fk_city_id','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','category','PRIMARY','2023-10-06 04:26:21','n_diff_pfx01',16,1,'category_id'),('sakila','category','PRIMARY','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','category','PRIMARY','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','city','PRIMARY','2023-10-06 04:26:21','n_diff_pfx01',600,2,'city_id'),('sakila','city','PRIMARY','2023-10-06 04:26:21','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('sakila','city','PRIMARY','2023-10-06 04:26:21','size',3,NULL,'Number of pages in the index'),('sakila','city','idx_fk_country_id','2023-10-06 04:26:21','n_diff_pfx01',109,1,'country_id'),('sakila','city','idx_fk_country_id','2023-10-06 04:26:21','n_diff_pfx02',600,1,'country_id,city_id'),('sakila','city','idx_fk_country_id','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','city','idx_fk_country_id','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','country','PRIMARY','2023-10-06 04:26:21','n_diff_pfx01',109,1,'country_id'),('sakila','country','PRIMARY','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','country','PRIMARY','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','customer','PRIMARY','2023-10-06 04:26:21','n_diff_pfx01',599,4,'customer_id'),('sakila','customer','PRIMARY','2023-10-06 04:26:21','n_leaf_pages',4,NULL,'Number of leaf pages in the index'),('sakila','customer','PRIMARY','2023-10-06 04:26:21','size',5,NULL,'Number of pages in the index'),('sakila','customer','idx_fk_address_id','2023-10-06 04:26:21','n_diff_pfx01',599,1,'address_id'),('sakila','customer','idx_fk_address_id','2023-10-06 04:26:21','n_diff_pfx02',599,1,'address_id,customer_id'),('sakila','customer','idx_fk_address_id','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','customer','idx_fk_address_id','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','customer','idx_fk_store_id','2023-10-06 04:26:21','n_diff_pfx01',2,1,'store_id'),('sakila','customer','idx_fk_store_id','2023-10-06 04:26:21','n_diff_pfx02',599,1,'store_id,customer_id'),('sakila','customer','idx_fk_store_id','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','customer','idx_fk_store_id','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','customer','idx_last_name','2023-10-06 04:26:21','n_diff_pfx01',599,1,'last_name'),('sakila','customer','idx_last_name','2023-10-06 04:26:21','n_diff_pfx02',599,1,'last_name,customer_id'),('sakila','customer','idx_last_name','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','customer','idx_last_name','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','film','PRIMARY','2023-10-06 04:26:21','n_diff_pfx01',1000,11,'film_id'),('sakila','film','PRIMARY','2023-10-06 04:26:21','n_leaf_pages',11,NULL,'Number of leaf pages in the index'),('sakila','film','PRIMARY','2023-10-06 04:26:21','size',12,NULL,'Number of pages in the index'),('sakila','film','idx_fk_language_id','2023-10-06 04:26:21','n_diff_pfx01',1,1,'language_id'),('sakila','film','idx_fk_language_id','2023-10-06 04:26:21','n_diff_pfx02',1000,1,'language_id,film_id'),('sakila','film','idx_fk_language_id','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','film','idx_fk_language_id','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','film','idx_fk_original_language_id','2023-10-06 04:26:21','n_diff_pfx01',1,1,'original_language_id'),('sakila','film','idx_fk_original_language_id','2023-10-06 04:26:21','n_diff_pfx02',1000,1,'original_language_id,film_id'),('sakila','film','idx_fk_original_language_id','2023-10-06 04:26:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','film','idx_fk_original_language_id','2023-10-06 04:26:21','size',1,NULL,'Number of pages in the index'),('sakila','film','idx_title','2023-10-06 04:26:21','n_diff_pfx01',1000,2,'title'),('sakila','film','idx_title','2023-10-06 04:26:21','n_diff_pfx02',1000,2,'title,film_id'),('sakila','film','idx_title','2023-10-06 04:26:21','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('sakila','film','idx_title','2023-10-06 04:26:21','size',3,NULL,'Number of pages in the index'),('sakila','film_actor','PRIMARY','2023-10-06 04:26:22','n_diff_pfx01',200,11,'actor_id'),('sakila','film_actor','PRIMARY','2023-10-06 04:26:22','n_diff_pfx02',5462,11,'actor_id,film_id'),('sakila','film_actor','PRIMARY','2023-10-06 04:26:22','n_leaf_pages',11,NULL,'Number of leaf pages in the index'),('sakila','film_actor','PRIMARY','2023-10-06 04:26:22','size',12,NULL,'Number of pages in the index'),('sakila','film_actor','idx_fk_film_id','2023-10-06 04:26:22','n_diff_pfx01',997,4,'film_id'),('sakila','film_actor','idx_fk_film_id','2023-10-06 04:26:22','n_diff_pfx02',5462,4,'film_id,actor_id'),('sakila','film_actor','idx_fk_film_id','2023-10-06 04:26:22','n_leaf_pages',4,NULL,'Number of leaf pages in the index'),('sakila','film_actor','idx_fk_film_id','2023-10-06 04:26:22','size',5,NULL,'Number of pages in the index'),('sakila','film_category','PRIMARY','2023-10-06 04:26:23','n_diff_pfx01',1000,3,'film_id'),('sakila','film_category','PRIMARY','2023-10-06 04:26:23','n_diff_pfx02',1000,3,'film_id,category_id'),('sakila','film_category','PRIMARY','2023-10-06 04:26:23','n_leaf_pages',3,NULL,'Number of leaf pages in the index'),('sakila','film_category','PRIMARY','2023-10-06 04:26:23','size',4,NULL,'Number of pages in the index'),('sakila','film_category','fk_film_category_category','2023-10-06 04:26:23','n_diff_pfx01',16,1,'category_id'),('sakila','film_category','fk_film_category_category','2023-10-06 04:26:23','n_diff_pfx02',1000,1,'category_id,film_id'),('sakila','film_category','fk_film_category_category','2023-10-06 04:26:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','film_category','fk_film_category_category','2023-10-06 04:26:23','size',1,NULL,'Number of pages in the index'),('sakila','film_text','FTS_DOC_ID_INDEX','2023-10-06 04:26:22','n_diff_pfx01',1000,1,'FTS_DOC_ID'),('sakila','film_text','FTS_DOC_ID_INDEX','2023-10-06 04:26:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','film_text','FTS_DOC_ID_INDEX','2023-10-06 04:26:22','size',1,NULL,'Number of pages in the index'),('sakila','film_text','PRIMARY','2023-10-06 04:26:22','n_diff_pfx01',1000,10,'film_id'),('sakila','film_text','PRIMARY','2023-10-06 04:26:22','n_leaf_pages',10,NULL,'Number of leaf pages in the index'),('sakila','film_text','PRIMARY','2023-10-06 04:26:22','size',11,NULL,'Number of pages in the index'),('sakila','inventory','PRIMARY','2023-10-06 04:26:24','n_diff_pfx01',4581,10,'inventory_id'),('sakila','inventory','PRIMARY','2023-10-06 04:26:24','n_leaf_pages',10,NULL,'Number of leaf pages in the index'),('sakila','inventory','PRIMARY','2023-10-06 04:26:24','size',11,NULL,'Number of pages in the index'),('sakila','inventory','idx_fk_film_id','2023-10-06 04:26:24','n_diff_pfx01',958,4,'film_id'),('sakila','inventory','idx_fk_film_id','2023-10-06 04:26:24','n_diff_pfx02',4581,4,'film_id,inventory_id'),('sakila','inventory','idx_fk_film_id','2023-10-06 04:26:24','n_leaf_pages',4,NULL,'Number of leaf pages in the index'),('sakila','inventory','idx_fk_film_id','2023-10-06 04:26:24','size',5,NULL,'Number of pages in the index'),('sakila','inventory','idx_store_id_film_id','2023-10-06 04:26:24','n_diff_pfx01',2,6,'store_id'),('sakila','inventory','idx_store_id_film_id','2023-10-06 04:26:24','n_diff_pfx02',1521,6,'store_id,film_id'),('sakila','inventory','idx_store_id_film_id','2023-10-06 04:26:24','n_diff_pfx03',4581,6,'store_id,film_id,inventory_id'),('sakila','inventory','idx_store_id_film_id','2023-10-06 04:26:24','n_leaf_pages',6,NULL,'Number of leaf pages in the index'),('sakila','inventory','idx_store_id_film_id','2023-10-06 04:26:24','size',7,NULL,'Number of pages in the index'),('sakila','language','PRIMARY','2023-10-06 04:26:26','n_diff_pfx01',6,1,'language_id'),('sakila','language','PRIMARY','2023-10-06 04:26:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','language','PRIMARY','2023-10-06 04:26:26','size',1,NULL,'Number of pages in the index'),('sakila','payment','PRIMARY','2023-10-06 04:26:26','n_diff_pfx01',15400,20,'payment_id'),('sakila','payment','PRIMARY','2023-10-06 04:26:26','n_leaf_pages',44,NULL,'Number of leaf pages in the index'),('sakila','payment','PRIMARY','2023-10-06 04:26:26','size',97,NULL,'Number of pages in the index'),('sakila','payment','fk_payment_rental','2023-10-06 04:26:26','n_diff_pfx01',16044,16,'rental_id'),('sakila','payment','fk_payment_rental','2023-10-06 04:26:26','n_diff_pfx02',16044,16,'rental_id,payment_id'),('sakila','payment','fk_payment_rental','2023-10-06 04:26:26','n_leaf_pages',16,NULL,'Number of leaf pages in the index'),('sakila','payment','fk_payment_rental','2023-10-06 04:26:26','size',17,NULL,'Number of pages in the index'),('sakila','payment','idx_fk_customer_id','2023-10-06 04:26:26','n_diff_pfx01',599,10,'customer_id'),('sakila','payment','idx_fk_customer_id','2023-10-06 04:26:26','n_diff_pfx02',16044,10,'customer_id,payment_id'),('sakila','payment','idx_fk_customer_id','2023-10-06 04:26:26','n_leaf_pages',10,NULL,'Number of leaf pages in the index'),('sakila','payment','idx_fk_customer_id','2023-10-06 04:26:26','size',11,NULL,'Number of pages in the index'),('sakila','payment','idx_fk_staff_id','2023-10-06 04:26:26','n_diff_pfx01',2,10,'staff_id'),('sakila','payment','idx_fk_staff_id','2023-10-06 04:26:26','n_diff_pfx02',16044,10,'staff_id,payment_id'),('sakila','payment','idx_fk_staff_id','2023-10-06 04:26:26','n_leaf_pages',10,NULL,'Number of leaf pages in the index'),('sakila','payment','idx_fk_staff_id','2023-10-06 04:26:26','size',11,NULL,'Number of pages in the index'),('sakila','rental','PRIMARY','2023-10-06 04:26:36','n_diff_pfx01',15834,20,'rental_id'),('sakila','rental','PRIMARY','2023-10-06 04:26:36','n_leaf_pages',47,NULL,'Number of leaf pages in the index'),('sakila','rental','PRIMARY','2023-10-06 04:26:36','size',97,NULL,'Number of pages in the index'),('sakila','rental','idx_fk_customer_id','2023-10-06 04:26:36','n_diff_pfx01',599,16,'customer_id'),('sakila','rental','idx_fk_customer_id','2023-10-06 04:26:36','n_diff_pfx02',16044,16,'customer_id,rental_id'),('sakila','rental','idx_fk_customer_id','2023-10-06 04:26:36','n_leaf_pages',16,NULL,'Number of leaf pages in the index'),('sakila','rental','idx_fk_customer_id','2023-10-06 04:26:36','size',17,NULL,'Number of pages in the index'),('sakila','rental','idx_fk_inventory_id','2023-10-06 04:26:36','n_diff_pfx01',4580,16,'inventory_id'),('sakila','rental','idx_fk_inventory_id','2023-10-06 04:26:36','n_diff_pfx02',16044,16,'inventory_id,rental_id'),('sakila','rental','idx_fk_inventory_id','2023-10-06 04:26:36','n_leaf_pages',16,NULL,'Number of leaf pages in the index'),('sakila','rental','idx_fk_inventory_id','2023-10-06 04:26:36','size',17,NULL,'Number of pages in the index'),('sakila','rental','idx_fk_staff_id','2023-10-06 04:26:36','n_diff_pfx01',2,13,'staff_id'),('sakila','rental','idx_fk_staff_id','2023-10-06 04:26:36','n_diff_pfx02',16044,13,'staff_id,rental_id'),('sakila','rental','idx_fk_staff_id','2023-10-06 04:26:36','n_leaf_pages',13,NULL,'Number of leaf pages in the index'),('sakila','rental','idx_fk_staff_id','2023-10-06 04:26:36','size',14,NULL,'Number of pages in the index'),('sakila','rental','rental_date','2023-10-06 04:26:36','n_diff_pfx01',15815,24,'rental_date'),('sakila','rental','rental_date','2023-10-06 04:26:36','n_diff_pfx02',16044,24,'rental_date,inventory_id'),('sakila','rental','rental_date','2023-10-06 04:26:36','n_diff_pfx03',16044,24,'rental_date,inventory_id,customer_id'),('sakila','rental','rental_date','2023-10-06 04:26:36','n_leaf_pages',24,NULL,'Number of leaf pages in the index'),('sakila','rental','rental_date','2023-10-06 04:26:36','size',25,NULL,'Number of pages in the index'),('sakila','staff','PRIMARY','2023-10-06 04:26:46','n_diff_pfx01',2,1,'staff_id'),('sakila','staff','PRIMARY','2023-10-06 04:26:46','n_leaf_pages',3,NULL,'Number of leaf pages in the index'),('sakila','staff','PRIMARY','2023-10-06 04:26:46','size',4,NULL,'Number of pages in the index'),('sakila','staff','idx_fk_address_id','2023-10-06 04:26:46','n_diff_pfx01',2,1,'address_id'),('sakila','staff','idx_fk_address_id','2023-10-06 04:26:46','n_diff_pfx02',2,1,'address_id,staff_id'),('sakila','staff','idx_fk_address_id','2023-10-06 04:26:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','staff','idx_fk_address_id','2023-10-06 04:26:46','size',1,NULL,'Number of pages in the index'),('sakila','staff','idx_fk_store_id','2023-10-06 04:26:46','n_diff_pfx01',2,1,'store_id'),('sakila','staff','idx_fk_store_id','2023-10-06 04:26:46','n_diff_pfx02',2,1,'store_id,staff_id'),('sakila','staff','idx_fk_store_id','2023-10-06 04:26:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','staff','idx_fk_store_id','2023-10-06 04:26:46','size',1,NULL,'Number of pages in the index'),('sakila','store','PRIMARY','2023-10-06 04:26:20','n_diff_pfx01',0,1,'store_id'),('sakila','store','PRIMARY','2023-10-06 04:26:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','store','PRIMARY','2023-10-06 04:26:20','size',1,NULL,'Number of pages in the index'),('sakila','store','idx_fk_address_id','2023-10-06 04:26:20','n_diff_pfx01',0,1,'address_id'),('sakila','store','idx_fk_address_id','2023-10-06 04:26:20','n_diff_pfx02',0,1,'address_id,store_id'),('sakila','store','idx_fk_address_id','2023-10-06 04:26:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','store','idx_fk_address_id','2023-10-06 04:26:20','size',1,NULL,'Number of pages in the index'),('sakila','store','idx_unique_manager','2023-10-06 04:26:20','n_diff_pfx01',0,1,'manager_staff_id'),('sakila','store','idx_unique_manager','2023-10-06 04:26:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','store','idx_unique_manager','2023-10-06 04:26:20','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2023-10-06 04:25:17','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2023-10-06 04:25:17','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2023-10-06 04:25:17','size',1,NULL,'Number of pages in the index'),('world','city','CountryCode','2023-10-06 04:26:24','n_diff_pfx01',0,1,'CountryCode'),('world','city','CountryCode','2023-10-06 04:26:24','n_diff_pfx02',0,1,'CountryCode,ID'),('world','city','CountryCode','2023-10-06 04:26:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('world','city','CountryCode','2023-10-06 04:26:24','size',1,NULL,'Number of pages in the index'),('world','city','PRIMARY','2023-10-06 04:26:24','n_diff_pfx01',0,1,'ID'),('world','city','PRIMARY','2023-10-06 04:26:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('world','city','PRIMARY','2023-10-06 04:26:24','size',1,NULL,'Number of pages in the index'),('world','country','PRIMARY','2023-10-06 04:26:26','n_diff_pfx01',0,1,'Code'),('world','country','PRIMARY','2023-10-06 04:26:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('world','country','PRIMARY','2023-10-06 04:26:26','size',1,NULL,'Number of pages in the index'),('world','countrylanguage','CountryCode','2023-10-06 04:26:26','n_diff_pfx01',0,1,'CountryCode'),('world','countrylanguage','CountryCode','2023-10-06 04:26:26','n_diff_pfx02',0,1,'CountryCode,Language'),('world','countrylanguage','CountryCode','2023-10-06 04:26:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('world','countrylanguage','CountryCode','2023-10-06 04:26:26','size',1,NULL,'Number of pages in the index'),('world','countrylanguage','PRIMARY','2023-10-06 04:26:26','n_diff_pfx01',0,1,'CountryCode'),('world','countrylanguage','PRIMARY','2023-10-06 04:26:26','n_diff_pfx02',0,1,'CountryCode,Language'),('world','countrylanguage','PRIMARY','2023-10-06 04:26:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('world','countrylanguage','PRIMARY','2023-10-06 04:26:26','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:50