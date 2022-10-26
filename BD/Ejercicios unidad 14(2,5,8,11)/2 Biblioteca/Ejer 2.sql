CREATE DATABASE  IF NOT EXISTS `BIBLIOTECA` ;
USE `BIBLIOTECA`;


DROP TABLE IF EXISTS `AUTOR`;

CREATE TABLE `AUTOR` (
  `claveAutor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`claveAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `AUTOR` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `EDITORIAL`;

CREATE TABLE `EDITORIAL` (
  `claveEditorial` int NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `direccion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  PRIMARY KEY (`claveEditorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `EDITORIAL` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `EJEMPLAR`;

CREATE TABLE `EJEMPLAR` (
  `claveEjemplar` int NOT NULL AUTO_INCREMENT,
  `claveLibro` int DEFAULT NULL,
  `numeroOrden` int DEFAULT NULL,
  `edición` int DEFAULT NULL,
  `ubicacion` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `categoria` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`claveEjemplar`),
  KEY `claveLibro` (`claveLibro`),
  CONSTRAINT `EJEMPLAR_ibfk_1` FOREIGN KEY (`claveLibro`) REFERENCES `LIBRO` (`claveLibro`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `EJEMPLAR` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `ESCRITO_POR`;

CREATE TABLE `ESCRITO_POR` (
  `claveLibro` int NOT NULL,
  `claveAutor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  KEY `claveLibro` (`claveLibro`),
  KEY `claveAutor` (`claveAutor`),
  CONSTRAINT `ESCRITO_POR_ibfk_1` FOREIGN KEY (`claveLibro`) REFERENCES `LIBRO` (`claveLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ESCRITO_POR_ibfk_2` FOREIGN KEY (`claveAutor`) REFERENCES `AUTOR` (`claveAutor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `ESCRITO_POR` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `LIBRO`;

CREATE TABLE `LIBRO` (
  `claveLibro` int NOT NULL,
  `titulo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idioma` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `formato` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `claveEditorial` int DEFAULT NULL,
  PRIMARY KEY (`claveLibro`),
  KEY `claveEditorial` (`claveEditorial`),
  CONSTRAINT `LIBRO_ibfk_1` FOREIGN KEY (`claveEditorial`) REFERENCES `EDITORIAL` (`claveEditorial`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `LIBRO` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `PRESTAMO`;

CREATE TABLE `PRESTAMO` (
  `claveSocio` int DEFAULT NULL,
  `claveEjemplar` int DEFAULT NULL,
  `numeroOrden` int NOT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `notas` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `clavePrestamo` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`clavePrestamo`),
  KEY `claveSocio` (`claveSocio`),
  KEY `claveEjemplar` (`claveEjemplar`),
  CONSTRAINT `PRESTAMO_ibfk_1` FOREIGN KEY (`claveSocio`) REFERENCES `SOCIO` (`claveSocio`),
  CONSTRAINT `PRESTAMO_ibfk_2` FOREIGN KEY (`claveEjemplar`) REFERENCES `EJEMPLAR` (`claveEjemplar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `PRESTAMO` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `SOCIO`;

CREATE TABLE `SOCIO` (
  `claveSocio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dirección` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `categoria` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`claveSocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `SOCIO` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `TEMA`;

CREATE TABLE `TEMA` (
  `claveTema` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`claveTema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `TEMA` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `TRATA_SOBRE`;

CREATE TABLE `TRATA_SOBRE` (
  `claveLibro` int NOT NULL,
  `claveTema` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  KEY `claveLibro` (`claveLibro`),
  KEY `claveTema` (`claveTema`),
  CONSTRAINT `TRATA_SOBRE_ibfk_1` FOREIGN KEY (`claveLibro`) REFERENCES `LIBRO` (`claveLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TRATA_SOBRE_ibfk_2` FOREIGN KEY (`claveTema`) REFERENCES `TEMA` (`claveTema`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `TRATA_SOBRE` WRITE;

UNLOCK TABLES;
