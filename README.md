# SmartBodyGymb
## Database MySql:

CREATE DATABASE  IF NOT EXISTS `smartbodygym` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `smartbodygym`;

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmation_password` varchar(255) NOT NULL,
  `staff` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `register` VALUES
(1,'Emilio','Barrera','emilio@gmail.com','55555','55555',1),
(2,'Camilo','Linares','admin','55555','55555',1),
(3,'Jaime','Vega','admin','555555','555555',1),
(4,'Steven','Caro','admin','55555','55555',0),
(5,'Pamela','Carro','admin','55555','55555',0);



