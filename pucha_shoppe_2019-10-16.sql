# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.37)
# Database: pucha_shoppe
# Generation Time: 2019-10-16 17:18:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table order_row
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_row`;

CREATE TABLE `order_row` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) unsigned NOT NULL,
  `products_id` int(11) unsigned NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `order_row` WRITE;
/*!40000 ALTER TABLE `order_row` DISABLE KEYS */;

INSERT INTO `order_row` (`id`, `users_id`, `products_id`, `quantity`, `text`, `image`)
VALUES
	(1,1011,10003,1,'I\'M COOL','stamp.jpg'),
	(2,1013,10001,2,'SOON MARRIED','flowery.jpg'),
	(3,1014,10002,2,NULL,NULL);

/*!40000 ALTER TABLE `order_row` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) unsigned NOT NULL,
  `package` varchar(11) DEFAULT NULL,
  `sent` varchar(11) DEFAULT NULL,
  `delivered` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `users_id`, `package`, `sent`, `delivered`)
VALUES
	(1,1011,'yes','yes','yes'),
	(2,1013,'yes','yes','yes'),
	(3,1014,'yes','no','no');

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
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `address`)
VALUES
	(1011,'Jyoti','Ollarenshaw','jollarenshaw0@wikia.com','EyepxpnYjV','mockgatan 12 malmö'),
	(1012,'Chaunce','Vatini','cvatini1@studiopress.com','iSNbZV','bergsgatan 23 sturup'),
	(1013,'Maurine','Gerardet','mgerardet2@boston.com','g9m0Yf','koljagatan 55 borås'),
	(1014,'Harri','Denniss','hdenniss3@twitpic.com','HJY8wAnQ9','jeppgatan 20 malmö'),
	(1015,'Nolie','Fabbri','nfabbri4@noaa.gov','y9Sjfx','lugnaregatan 8 lund');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
