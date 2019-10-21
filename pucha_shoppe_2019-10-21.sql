# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.37)
# Database: pucha_shoppe
# Generation Time: 2019-10-21 14:33:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table allowtodesign
# ------------------------------------------------------------

DROP VIEW IF EXISTS `allowtodesign`;

CREATE TABLE `allowtodesign` (
   `text` VARCHAR(50) NULL DEFAULT NULL,
   `image` VARCHAR(50) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table order_row
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_row`;

CREATE TABLE `order_row` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) unsigned NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `oktoshare` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `order_row` WRITE;
/*!40000 ALTER TABLE `order_row` DISABLE KEYS */;

INSERT INTO `order_row` (`id`, `orders_id`, `quantity`, `text`, `image`, `oktoshare`)
VALUES
	(98,1279,1,'I\'M COOL','stamp.jpg',1),
	(99,1280,2,'SOON MARRIED','flowery.jpg',1),
	(100,1281,2,'HAPPY ME','smiley.jpg',1),
	(101,1282,5,'I\'M WONDER WOMAN','wonderwoman.jpg',1),
	(102,1283,30,'W\'ONT SHARE','cake&tart.jpg',0);

/*!40000 ALTER TABLE `order_row` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) unsigned NOT NULL,
  `packed` tinyint(1) NOT NULL,
  `sent` tinyint(1) NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `users_id`, `packed`, `sent`, `delivered`)
VALUES
	(1279,1258,1,1,1),
	(1280,1259,1,1,1),
	(1281,1260,1,1,0),
	(1282,1261,1,0,0),
	(1283,1262,1,1,0);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `size` varchar(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `price`, `size`, `color`, `material`, `model`)
VALUES
	(10001,'nike hoodie',180,'XS, S, M','white, black','cotton','loose'),
	(10002,'adidas pro',250,'M, L','pink, white','polyster','tight'),
	(10003,'puma runner',200,'XS, XXL','green, black','cotton','short sleeves');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`)
VALUES
	(1258,'Jyoti','Ollarenshaw','jollarenshaw0@wikia.com','EyepxpnYjV'),
	(1259,'Chaunce','Vatini','cvatini1@studiopress.com','iSNbZV'),
	(1260,'Maurine','Gerardet','mgerardet2@boston.com','g9m0Yf'),
	(1261,'Harri','Denniss','hdenniss3@twitpic.com','HJY8wAnQ9'),
	(1262,'Nolie','Fabbri','nfabbri4@noaa.gov','y9Sjfx');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;




# Replace placeholder table for allowtodesign with correct view syntax
# ------------------------------------------------------------

DROP TABLE `allowtodesign`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allowtodesign`
AS SELECT
   `order_row`.`text` AS `text`,
   `order_row`.`image` AS `image`
FROM `order_row` where (`order_row`.`oktoshare` = 1);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
