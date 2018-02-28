# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: desarrollo.is.escuelaing.edu.co (MySQL 5.1.63-max)
# Database: bdprueba
# Generation Time: 2018-02-28 20:59:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table VI_CLIENTES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VI_CLIENTES`;

CREATE TABLE `VI_CLIENTES` (
  `documento` bigint(20) NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `telefono` varchar(20) CHARACTER SET latin1 NOT NULL,
  `direccion` varchar(150) CHARACTER SET latin1 NOT NULL,
  `email` varchar(150) CHARACTER SET latin1 NOT NULL,
  `vetado` tinyint(1) NOT NULL,
  PRIMARY KEY (`documento`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='latin1_general_ci';

LOCK TABLES `VI_CLIENTES` WRITE;
/*!40000 ALTER TABLE `VI_CLIENTES` DISABLE KEYS */;

INSERT INTO `VI_CLIENTES` (`documento`, `nombre`, `telefono`, `direccion`, `email`, `vetado`)
VALUES
	(0,'','','','',0),
	(22,'lol','111','sas','saasa',0),
	(100,'asdasd','123','asdasd','asdasd',0),
	(101010,'cam','7123123','kr1','asd@asd.com',0),
	(101847,'juan','757632','kr 112','juan@juan.com',0),
	(2092815,'Ortiz Niño','6155003','calle 134',' onjfpe3li@gmail.com',0),
	(2104835,'Daniel Rodriguez','3156685234','trasn6#825','danrotru@gmail.com',0),
	(2106340,'Laura','82255','jrajta','mail.com',0),
	(2122825,'Camilo Torres','3204244883','Calle --- # && **','camilo.torres-t@mail.escuelaing.edu.co',0),
	(21048352,'Daniel 2 Rodriguez','3126683243','trasn6#825','dfrt2@gmail.com',0),
	(101018323,'jefferson','743242','kr21','jeff@mail.com',0),
	(127628374,'nicolas','736483','hfkswjf','aeurkwn',0),
	(129497439,'Gilberto Galvis','4736271','cr 123 no 55-43','gilver@gmail.com',0),
	(293475523,'Martin Hernandez','2385943','kr 33 sur 2','martin21@gmail.com',0),
	(1014253075,'Isabel Castellanos','3112681076','Av19- 131A- 31','castellanosIsa@gmail.com',0),
	(1018414131,'oswaldo','31312312','crre 1','os@mail.com',0),
	(1019115165,'Alejandro Anzola','3046023862','Calle ??? No x - y','alejandro.anzola@mail.escuelaing.edu.co',0),
	(1022413796,'Kevin','3112029025','Kra 27a #4B-85','kevin@mail.com',0),
	(1026585111,'Martin Hernandez','4457852','avenida siempre viva 123','martin@mail.escuelaing.edu.co',0),
	(1026585664,'Jose Medina','4455871','KRA 109 #22 g-43','jose@gmail.com',0),
	(1026585665,'Martin Hernandez','4457458','kra 109 #34 c 30','martin@gmail.com',0),
	(1026585667,'Ricardo Pinto','4451239','kra 123 #1 v 2','ricardo@gmail.com',0),
	(1026585669,'Pablo Hernandez','4452369','kra 134 #4 c 80','pablo@gmail.com',0),
	(1026585670,'Camilo Ramirez','4452678','kra 109 #34 - 30','camilo@gmail.com',0),
	(1026585671,'Julian Alvarez','4452578','kra 135 # 95-90','julian@gmail.com',0),
	(1026587456,'Felipe Rodriguez','2450485','Cr 52 no 22 s 6','felipe@hotmail.com',0),
	(1026677456,'Javier Romero','2345678','Crr 12 no 67 sur','javierromi@hotmail.com',0),
	(1070017538,'Juan José Andrade','3014234234234','asdasdasd','asdasdasd',0),
	(1684264984,'Santiago Lopez','54154564','CRA 56 # 56 - 45','Santiago@mail.com',0);

/*!40000 ALTER TABLE `VI_CLIENTES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table VI_ITEMRENTADO
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VI_ITEMRENTADO`;

CREATE TABLE `VI_ITEMRENTADO` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENTES_documento` bigint(20) NOT NULL,
  `ITEMS_id` int(11) NOT NULL,
  `fechainiciorenta` date NOT NULL,
  `fechafinrenta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ITEMS_id_UNIQUE` (`ITEMS_id`),
  KEY `fk_VI_ITEMRENTADO_VI_ITEMS1_idx` (`ITEMS_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

LOCK TABLES `VI_ITEMRENTADO` WRITE;
/*!40000 ALTER TABLE `VI_ITEMRENTADO` DISABLE KEYS */;

INSERT INTO `VI_ITEMRENTADO` (`id`, `CLIENTES_documento`, `ITEMS_id`, `fechainiciorenta`, `fechafinrenta`)
VALUES
	(1,21048352,1,'2017-03-30','2017-04-02'),
	(2,21048352,2,'2017-04-02','2017-05-12'),
	(4,21048352,4,'2017-03-30','2017-04-05'),
	(5,1026585664,5,'2017-03-20','2017-03-22'),
	(6,1022413796,6,'2017-03-29','2017-03-31'),
	(11,1026585664,11,'3917-04-20','3917-04-28'),
	(14,1026585664,14,'3917-04-20','3917-04-28'),
	(15,1026585664,15,'3917-04-20','3917-04-28'),
	(16,1026585664,16,'3917-04-20','3917-04-28'),
	(18,1026585664,18,'3917-04-20','3917-04-28'),
	(21,1026585669,21,'2017-03-29','2017-03-30'),
	(22,21048352,22,'2017-03-30','2017-04-06'),
	(30,1026585671,30,'2017-03-29','2017-03-31'),
	(34,1026585664,34,'3917-04-20','3917-04-28'),
	(80,1026585664,80,'3917-04-20','3917-04-28'),
	(84,1026588472,84,'2017-03-26','2017-03-28'),
	(87,1026585111,87,'2017-03-27','2017-05-06'),
	(88,1026588472,88,'2017-03-26','2017-03-27'),
	(89,1026585665,89,'2017-03-22','3917-04-27'),
	(90,1026585664,90,'3917-04-20','3917-04-28'),
	(99,1026585664,99,'2017-03-23','2017-03-23'),
	(100,1026585671,100,'2017-03-24','2017-04-03'),
	(101,1014253075,101,'2017-03-12','2017-03-20'),
	(123,1026588472,123,'2017-03-28','2017-04-05'),
	(3030,1026585671,3030,'2017-03-25','2017-03-28'),
	(8922,1019115165,8922,'2017-03-29','2017-04-13'),
	(17998,1026587456,17998,'2017-03-29','2017-03-30'),
	(27834789,1026585671,27834789,'2017-03-25','2017-03-28'),
	(100000000,2104835,100000000,'2017-01-29','2017-01-31'),
	(1026585717,1684264984,1274542,'2017-03-30','2017-04-05'),
	(1026585718,1026585670,3,'2017-04-07','2017-04-11');

/*!40000 ALTER TABLE `VI_ITEMRENTADO` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table VI_ITEMS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VI_ITEMS`;

CREATE TABLE `VI_ITEMS` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `descripcion` varchar(500) CHARACTER SET latin1 NOT NULL,
  `fechalanzamiento` date NOT NULL,
  `tarifaxdia` bigint(20) NOT NULL,
  `formatorenta` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `genero` varchar(20) CHARACTER SET latin1 NOT NULL,
  `TIPOITEM_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_VI_ITEMS_VI_TIPOITEM_idx` (`TIPOITEM_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

LOCK TABLES `VI_ITEMS` WRITE;
/*!40000 ALTER TABLE `VI_ITEMS` DISABLE KEYS */;

INSERT INTO `VI_ITEMS` (`id`, `nombre`, `descripcion`, `fechalanzamiento`, `tarifaxdia`, `formatorenta`, `genero`, `TIPOITEM_id`)
VALUES
	(1,'Los 4 Fantasticos','Los 4 Fantásticos  es una película de superhéroes  basada en la serie de cómic homónima de Marvel','2005-06-08',2000,'DVD','Ciencia Ficcion',1),
	(2,'Halo 3','Halo 3 es un videojuego de disparos en primera persona desarrollado por Bungie Studios.','2007-09-08',3000,'DVD','Shooter',2),
	(3,'Thriller','Thriller es una canción interpretada por el cantante estadounidense Michael Jackson, compuesta por Rod Temperton y producida por Quincy Jones.','1984-01-11',2000,'DVD','POP',3),
	(4,'Los 8 Fantasticos','Los 8 Fantásticos  es una película de superhéroes  basada en la serie de cómic homónima de Marvel','2005-06-08',2000,'DVD','Ciencia Ficcion',1),
	(5,'Halo 3','Halo 3 es un videojuego de disparos en primera persona desarrollado por Bungie Studios.','2007-09-08',3000,'DVD','Shooter',2),
	(6,'Thriller','Thriller es una canción interpretada por el cantante estadounidense Michael Jackson, compuesta por Rod Temperton y producida por Quincy Jones.','1984-01-11',2000,'DVD','POP',3),
	(21,'Fun','Fun','2015-12-12',3000,'CD','POP',3),
	(22,'Los reyes','Novela*c','2017-03-23',1000,'Diario','Novela',4),
	(23,'El señor de los anillos','bakodo','1995-01-29',2000,'1','accion',1),
	(30,'Arduino UNO','Creacion de circuitos','2003-01-01',6000,'Circuito','Electronica',2),
	(34,'itemprueba','esunaprueba','3917-05-20',5000,'DVD','POP',8),
	(84,'prueba','pruebaXD','2017-03-22',5000,'formato','masculino',1),
	(87,'prueba','pruebaXD','2017-03-22',5000,'formato','masculino',56),
	(88,'Black Swan','Peliculaza','2017-03-21',999,'formato-Renta','Psycho Thrill',1),
	(90,'itemprueba','esunaprueba','3917-05-20',5000,'DVD','POP',8),
	(99,'Black Swan','Peliculaza','2017-03-21',999,'formato-Renta','Psycho Thrill',1),
	(100,'The Elder Scrolls: Legends','The Elder Scrolls: Legends es una juego de cartas competitivo en linea ambientado es el universo de The Elder Scrolls','2017-01-01',500,'Codigo de descarga','Cartas coleccionable',2),
	(101,'fifa','Fifa es un simulador de futbol','2017-01-01',500,'dvd','Deportes',2),
	(123,'Powerade','deportes y ventas','2017-03-27',2200,'DVD','Ciencia Ficcion',1),
	(3030,'Ralph','pelicula animada','2005-12-20',4000,'DVD','infantil',101),
	(8922,'ABC','El abecedario','2005-06-08',2000,'DVD','Ciencia Ficcion',1),
	(17998,'kvn y srg','muy larga de accion','2017-01-29',30000,'blurayX5','accion',1998),
	(1274542,'Tirador','Pelicula Tirador accion','2015-11-11',2000,'DVD','accion',2),
	(27834789,'Los 4 Fantasticos','Los 4 Fantásticos  es una película de superhéroes  basada en la serie de cómic homónima de Marvel.','2005-06-08',2000,'DVD','Ciencia Ficcion',1);

/*!40000 ALTER TABLE `VI_ITEMS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table VI_TIPOITEM
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VI_TIPOITEM`;

CREATE TABLE `VI_TIPOITEM` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

LOCK TABLES `VI_TIPOITEM` WRITE;
/*!40000 ALTER TABLE `VI_TIPOITEM` DISABLE KEYS */;

INSERT INTO `VI_TIPOITEM` (`id`, `descripcion`)
VALUES
	(2,'Juego'),
	(3,'Musica'),
	(1,'Video');

/*!40000 ALTER TABLE `VI_TIPOITEM` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
