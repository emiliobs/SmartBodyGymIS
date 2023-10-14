# SmartBodyGymb
## Home:
<img width="1277" alt="image" src="https://github.com/emiliobs/SmartBodyGymIS/assets/3122465/c48b8ba3-7394-4ccb-a462-6b3866b0014c">

## Activities:
<img width="1278" alt="image" src="https://github.com/emiliobs/SmartBodyGymIS/assets/3122465/ec16c8f6-1e74-4721-86a4-826fddb7bac1">

## Gym Shop:
<img width="1277" alt="image" src="https://github.com/emiliobs/SmartBodyGymIS/assets/3122465/02800890-bbd4-4955-aa9d-26951058464d">

## Contact:
<img width="1276" alt="image" src="https://github.com/emiliobs/SmartBodyGymIS/assets/3122465/d0e349ee-d83e-4173-b276-e2cf985d5382">

## Register:
<img width="1278" alt="image" src="https://github.com/emiliobs/SmartBodyGymIS/assets/3122465/98e1d5fd-72a1-43de-95c3-2fce429869f8">

## Login:
<img width="1275" alt="image" src="https://github.com/emiliobs/SmartBodyGymIS/assets/3122465/6a1fe68a-b554-4705-a920-dbe804e19fef">

## Ligh Mode:
<img width="1275" alt="image" src="https://github.com/emiliobs/SmartBodyGymIS/assets/3122465/294e040d-d0e6-4276-bef1-3ee9e6217578">




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



