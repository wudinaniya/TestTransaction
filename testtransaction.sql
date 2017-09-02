/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 6.0.3-alpha-community : Database - testtransaction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`testtransaction` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `testtransaction`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `salary` double(7,2) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`age`,`sex`,`salary`,`department`) values (1,'张珊珊',18,'女',8000.00,'人力'),(2,'缥缈山',22,'男',8500.00,'研发'),(3,'斗必胜',25,'男',3000.00,'保安'),(4,'帅到被人砍',30,'男',50000.00,'总裁'),(5,'卢嫣然',21,'女',13000.00,'文秘'),(6,'刘刚',30,'男',15000.00,'产品'),(7,'张益达',21,'男',13838.38,'公关'),(8,'鲁一发',16,'男',10000.00,'销售'),(9,'郑爽',17,'女',9856.00,'销售'),(10,'逗逼姚',22,'男',9856.00,'销售'),(11,'郑爽',17,'女',9856.00,'销售');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
