/*
SQLyog Ultimate v9.50 
MySQL - 5.7.12-log : Database - taskmanager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`taskmanager` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taskmanager`;

/*Table structure for table `task_list` */

DROP TABLE IF EXISTS `task_list`;

CREATE TABLE `task_list` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(100) NOT NULL,
  `task_description` text,
  `task_priority` varchar(20) DEFAULT NULL,
  `task_status` varchar(20) DEFAULT NULL,
  `task_start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `task_end_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `task_archived` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `task_list` */

insert  into `task_list`(`task_id`,`task_name`,`task_description`,`task_priority`,`task_status`,`task_start_time`,`task_end_time`,`task_archived`) values (1,'Gathering Requirement','Requirement Gathering','MEDIUM','ACTIVE','2016-06-20 14:51:56','2016-06-20 17:51:56',0),(2,'Application Designing','Application Designing','MEDIUM','ACTIVE','2016-06-20 14:51:56','2016-06-20 16:51:56',0),(3,'Implementation','Implementation','MEDIUM','ACTIVE','2016-06-20 14:51:56','2016-06-20 17:51:56',0),(4,'Unit Testing','Unit Testing','LOW','ACTIVE','2016-06-20 14:51:56','2016-06-20 18:51:56',0),(5,'Maintanence','Maintanence','LOW','ACTIVE','2016-06-20 14:51:56','2016-06-20 19:51:56',0),(6,'Task1','Task1 Description','MEDIUM','ACTIVE','2016-06-21 16:39:18','2016-06-21 16:39:18',0),(7,'Task2','Task2 Description','MEDIUM','ACTIVE','2016-06-21 16:39:18','2016-06-21 16:39:18',0),(8,'Task3','Task3 Description','LOW','ACTIVE','2016-06-21 16:39:18','2016-06-21 16:39:18',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
