-- Creamos la base de datos
drop database if exists nrtsig_dev;
create database nrtsig_dev;

use nrtsig_dev;

-- Tabla paises
CREATE TABLE `nrtsig_dev`.`paises` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `codigo` VARCHAR(45) NOT NULL,
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`))
  ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
insert into paises(id, nombre, codigo, create_at) values(default, 'Argentina', 'ARG', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Brasil', 'BRA', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Uruguay', 'URU', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Chile', 'CHI', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Estados Unidos', 'USA', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Peru', 'PER', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Paraguay', 'PAR', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Canada', 'CAN', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'España', 'ESP', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Alemania', 'GER', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Italia', 'ITA', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'China', 'CHN', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Francia', 'FRA', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Holanda', 'HOL', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Suiza', 'SWI', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Suecia', 'SWE', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Rusia', 'RUS', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Belgica', 'BEL', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Mexico', 'MEX', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Australia', 'AUS', current_timestamp());
insert into paises(id, nombre, codigo, create_at) values(default, 'Austria', 'AST', current_timestamp());

-- Tabla provincias
CREATE TABLE `nrtsig_dev`.`provincias` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `codigo` VARCHAR(45) NOT NULL,
  `id_pais` BIGINT NOT NULL,
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `paises_fk` FOREIGN KEY(`id_pais`) references `paises`(`id`) ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Santa Fe', 'STAFE', 1, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Buenos Aires', 'BSAS', 1, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Entre Rios', 'ER', 1, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Cordoba', 'COR', 1, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Mendoza', 'MEND', 3, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'San Juan', 'SJ', 1, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Misiones', 'MIS', 1, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Formosa', 'FOR', 1, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Montevideo', 'MTVD', 3, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Colonia', 'COL', 3, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Salto', 'SA', 3, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Artigas', 'ART', 3, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Amazonas', 'AMA', 2, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Bahia', 'BAH', 2, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Sao Paulo', 'SAP', 2, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Santiago de Chile', 'SCHI', 4, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Temuco', 'TEM', 4, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Texas', 'TEX', 5, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'New York', 'NY', 5, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Washington ', 'WDC', 5, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'California', 'CAL', 5, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Nevada', 'NEV', 5, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Carolina del Norte', 'CDN', 5, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Lima', 'LMA', 6, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Arequipa', 'AREQ', 6, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Concepcion', 'CONC', 7, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Asuncion', 'ASU', 7, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Ontario', 'ONT', 8, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Manitoba', 'MAN', 8, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Barcelona', 'BAR', 9, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Madrid', 'MAD', 9, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Zaragoza', 'ZAR', 9, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Sevilla', 'SEV', 9, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Salamanca', 'SAL', 9, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Berlin', 'BER', 10, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Bayer', 'BAY', 10, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Hamburgo', 'HAM', 10, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Bremen', 'BRE', 10, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Baviera', 'BAV', 10, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Sajonia', 'SAJ', 10, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Sicilia', 'SIC', 11, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Lazio', 'LAZ', 11, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Veneto', 'VEN', 11, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Hebei', 'HEB', 12, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Fujian', 'FUJ', 12, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Normandia', 'NOR', 13, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Isla de Francia', 'IF', 13, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Alsacia', 'ALS', 13, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Holanda Norte', 'HN', 14, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Holanda Sur', 'HS', 14, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Berna', 'BRN', 15, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Estocolmo', 'EST', 16, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Leningrado', 'LEN', 17, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Moscu', 'MOS', 17, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Volvogrado', 'VOL', 17, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Bruselas', 'BRU', 18, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Sinaola', 'SIN', 19, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Ciudad de Mexico', 'CMX', 19, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Baja California', 'BCAL', 19, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Australia Norte', 'AUS', 20, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Australia Sur', 'AUN', 20, current_timestamp());
insert into provincias(id, nombre, codigo, id_pais, create_at) values(default, 'Viena', 'VIEN', 21, current_timestamp());

-- Tabla ciudades
CREATE TABLE `nrtsig_dev`.`ciudades` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `codigo` VARCHAR(45) NOT NULL,
  `id_provincia` BIGINT NOT NULL,
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `provincias_fk` FOREIGN KEY(`id_provincia`) references `provincias`(`id`) ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Rosario', 'ROS', 1, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Santa Fe', 'STAFE', 1, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'La plata', 'LP', 2, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Salto', 'SALT', 2, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Gran Buenos Aires', 'GBA', 2, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Moron', 'MOR', 2, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Parana', 'PAR', 3, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Cordoba', 'COR', 4, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Rio Cuarto', 'RCTO', 4, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Villa Carlos Paz', 'VCP', 4, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Mendoza', 'MEND', 5, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'San Juan', 'SJ', 6, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Posadas', 'POS', 7, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Formosa', 'FOR', 8, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Montevideo', 'MONT', 9, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Colonia', 'COL', 10, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Ciudad de Salto', 'CSAL', 11, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Ciudad de Artigas', 'ART', 12, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Manaos', 'MAN', 13, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Salvador de Bahia', 'SBAH', 14, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Porto Seguro', 'PORT', 14, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Santos', 'SANT', 15, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Campinas', 'CAMP', 15, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Santiago de Chile', 'SANC', 16, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Maipu', 'MAI', 16, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Temuco', 'TEM', 17, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Houston', 'HOU', 18, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Dallas', 'DAL', 18, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Austin', 'AUST', 18, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'San Antonio', 'SA', 18, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Seattle', 'SEAT', 20, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'New York', 'NY', 19, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'New Jersey', 'NJ', 19, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Los Angeles', 'LA', 21, current_timestamp());	
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Las Vegas', 'LV', 22, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Charlotte', 'CHAR', 23, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Lima', 'LIM', 24, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Arequipa', 'AREQ', 25, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Concepcion', 'CONCEP', 26, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Asuncion', 'ASU', 27, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Toronto', 'TOR', 28, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Ottawa', 'OTT', 28, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Winnipeg', 'WIN', 29, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Barcelona', 'BAR', 30, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Castelldelfelds', 'CFELD', 30, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Madrid', 'MAD', 31, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Valencia', 'VAL', 31, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Zaragoza', 'ZAR', 32, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Sevilla', 'SEV', 33, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Carmona', 'CARM', 33, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Salamanca', 'SAL', 34, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Berlin', 'BER', 35, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Leverkusen', 'LEVK', 36, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Dortmund', 'DORT', 36, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Hamburgo', 'HAM', 37, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Bremen', 'BRE', 38, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Baviera', 'Munich', 39, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Dresden', 'DRES', 40, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Palermo', 'PAL', 41, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Catania', 'CAT', 41, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Roma', 'ROM', 42, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Venecia', 'VCIA', 43, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Hebei', 'HEB', 44, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Pekin', 'PEK', 45, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Normandia', 'NOR', 46, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Paris', 'PAR', 47, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Estraburgo', 'EST', 48, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Amsterdan', 'AMS', 49, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Twente', 'TWE', 50, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Berna', 'BER', 51, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Estocolmo', 'ESTC', 52, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'San Petersburgo', 'SPGO', 53, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Moscu', 'MOS', 54, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Volgogrado', 'VOL', 55, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Bruselas', 'BRU', 56, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Sinaola', 'SIN', 57, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Mexico DF', 'MEX', 58, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Tijuana', 'TIJ', 59, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Darwin', 'DARW', 60, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Camberra', 'CAMB', 60, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Sidney', 'SID', 61, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Melbourne', 'MELB', 61, current_timestamp());
insert into ciudades(id, nombre, codigo, id_provincia, create_at) values (default, 'Viena', 'VIE', 62, current_timestamp());

-- Tabla domicilios
CREATE TABLE `nrtsig_dev`.`domicilios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `direccion` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `nro_departamento` INT,
  `nro_piso` INT,
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la columna id_ciudad
ALTER TABLE domicilios ADD id_ciudad BIGINT;

-- Agregamos la foreign key a la tabla ciudades
ALTER TABLE domicilios ADD CONSTRAINT `ciudad_fk` FOREIGN KEY (`id_ciudad`) 
REFERENCES ciudades (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Av. Ovidio Lagos', 2900, null, null, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Salta', 1340, 1, 1, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Italia', 430, 4, 1, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Av Genova', 5400, null, null, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'San Martin', 780, null, null, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Av Francia', 1000, 9, 4, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Av Francia', 1000, 2, 1, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Jose Carrasco', 3457, null, null, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Corrientes', 1300, 1, 0, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Maipu', 890, null, null, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Av Plaza de Mayo', 2530, 14, 10, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Garibaldi', 159, null, null, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, 'Juan Jose Paso', 3456, null, null, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, '3 de Febrero', 560, 4, 4, 1, current_timestamp());
insert into domicilios(id, direccion, numero, nro_departamento, nro_piso, id_ciudad, create_at) values(default, '3 de Febrero', 477, null, null, 1, current_timestamp());

-- Tabla alumnos
CREATE TABLE `nrtsig_dev`.`alumnos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `legajo` BIGINT NOT NULL,
  `tipo_documento` VARCHAR(45) NOT NULL,
  `nro_documento` BIGINT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `telefono` VARCHAR(45) NULL,
  `fecha_nacimiento` DATE NOT NULL,
  `create_at` TIMESTAMP NOT NULL,
  `cuit` VARCHAR(45) NOT NULL,
  `sexo` CHAR NOT NULL,
  `id_ciudad` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `legajo_UNIQUE` (`legajo` ASC) VISIBLE,
  UNIQUE INDEX `nro_documento_UNIQUE` (`nro_documento` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
  ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla ciudades
ALTER TABLE alumnos ADD CONSTRAINT `ciudades_fk` FOREIGN KEY (`id_ciudad`) 
REFERENCES ciudades (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

-- Agregamos la columna id_domicilio
ALTER TABLE alumnos ADD id_domicilio BIGINT;

-- Agregamos la foreign key a la tabla domicilios
ALTER TABLE alumnos ADD CONSTRAINT `domicilio_fk` FOREIGN KEY (`id_domicilio`) 
REFERENCES domicilios (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

-- Agregamos la columna foto
ALTER TABLE alumnos ADD foto LONGBLOB;

insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 43204, 'DU', 39949799, 'Nahuel', 'Tabasso', '3413609715', 'nahueltabasso@gmail.com', '1996-12-11', current_timestamp(), '20399497990', 'M', 1, 1, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 44596, 'DU', 33980987, 'Matias', 'Mulassi', '4330456', 'matiasmulassi@gmail.com', '1996-11-10', current_timestamp(), '20339809879', 'M', 1, 2, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 40983, 'DU', 31009988, 'Carlos', 'Sanchez', '4598877', 'carlossanchez@gmail.com', '1990-04-22', current_timestamp(), '20310099884', 'M', 1, 3, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 43206, 'DU', 38998877, 'Ezequiel', 'Castaño', '4234566', 'ezecastanio@gmail.com', '1995-12-15', current_timestamp(), '20389988774', 'M', 1, 4, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 45302, 'DU', 35677663, 'Romina', 'Gutierrez', '4549988', 'rominagutierrez@gmail.com', '1993-04-03', current_timestamp(), '27356776636', 'F', 1, 5, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 41003, 'DU', 38645637, 'Martina', 'Rodriguez', '156987654','martinarodriguez@gmail.com', '1996-02-19', current_timestamp(), '27386456370', 'F', 1, 6, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 47993, 'DU', 41004400, 'Daiana', 'Echeverria', '4889988', 'daianaecheverria@outlook.com', '1999-03-08', current_timestamp(), '27410044000', 'F', 1, 7, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 43555, 'DU', 38991234, 'Franco', 'Capra', '4329875', 'francocapra@gmail.com', '1996-05-24', current_timestamp(), '20389912343', 'M', 1, 8, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 45566, 'DU', 42009877, 'Leonardo', 'Riera', '1879983', 'leonardoriera@gmail.com', '2000-01-30', current_timestamp(), '20420098774', 'M', 1, 9, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 29008, 'DU', 28009988, 'Maria', 'Cels', '4124567', 'mariacels@live.com', '1982-08-24', current_timestamp(), '27280099881', 'F', 1, 10, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 50998, 'DU', 44335566, 'Juan Pablo', 'Cisto', '5456677', 'juanpablocisto@hotmail.com', '2002-09-11', current_timestamp(), '20443355669', 'M', 1, 11, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 46766, 'DU', 43009988, 'Lucia', 'Vega', '', 'luciavega@gmail.com', '1999-11-23', current_timestamp(), '27430099882', 'F', 1, 12, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, '36777', 'DU', 36123456, 'Julian', 'Mascaro', '123567', 'julianmascaro@gmail.com', '1993-10-29', current_timestamp(), '20361234567', 'M', 1, 13, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 43986, 'DU', 39867895, 'Priscila', 'Son', '', 'priscila@gmail.com', '1996-12-09', current_timestamp(), '27398678959', 'F', 1, 14, null);
insert into alumnos(id, legajo, tipo_documento, nro_documento, nombre, apellido, telefono, email, fecha_nacimiento, create_at, cuit, sexo, id_ciudad, id_domicilio, foto) values
(default, 38521, 'DU', 34123456, 'Jonas', 'Rodriguez', '456033', 'jonasrodriguez@gmail.com', '1992-10-12', current_timestamp(), '20341234564', 'M', 1, 15, null);

-- Tabla tipo_carreras
CREATE TABLE `nrtsig_dev`.`tipo_carreras` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tipo_carrera` VARCHAR(45) NOT NULL,
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into tipo_carreras(id, tipo_carrera, create_at) values(default, 'PRE-GRADO', current_timestamp());
insert into tipo_carreras(id, tipo_carrera, create_at) values(default, 'GRADO', current_timestamp());
insert into tipo_carreras(id, tipo_carrera, create_at) values(default, 'POS-GRADO', current_timestamp());
insert into tipo_carreras(id, tipo_carrera, create_at) values(default, 'MAESTRIA', current_timestamp());
insert into tipo_carreras(id, tipo_carrera, create_at) values(default, 'DOCTORADO', current_timestamp());

-- Tabla departamentos
CREATE TABLE `nrtsig_dev`.`departamentos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `denominacion` VARCHAR(45) NOT NULL,
  `codigo` VARCHAR(10) NOT NULL,
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into departamentos(id, denominacion, codigo, create_at) values(default, 'Departamento de Tecnologia', 'DT', current_timestamp());
insert into departamentos(id, denominacion, codigo, create_at) values(default, 'Departamento de Quimica', 'DQ', current_timestamp());
insert into departamentos(id, denominacion, codigo, create_at) values(default, 'Departamento de Mecanica', 'DM', current_timestamp());
insert into departamentos(id, denominacion, codigo, create_at) values(default, 'Departamento de Ciencias Basicas', 'DCB', current_timestamp());
insert into departamentos(id, denominacion, codigo, create_at) values(default, 'Departamento Audiovisual', 'DA', current_timestamp());

-- Tabla carreras
CREATE TABLE `nrtsig_dev`.`carreras` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `nombre_corto` VARCHAR(10) NOT NULL,
  `duracion` INT NOT NULL,
  `descripcion` VARCHAR(256),
  `create_at` TIMESTAMP,
  `id_tipo_carrera` BIGINT NOT NULL,
  `id_departamento` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla tipo_carreras
ALTER TABLE carreras ADD CONSTRAINT `tipo_carreras_fk` FOREIGN KEY (`id_tipo_carrera`) 
REFERENCES tipo_carreras (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

-- Agregamos la foreign key a la tabla departamentos
ALTER TABLE carreras ADD CONSTRAINT `departamento_fk` FOREIGN KEY (`id_departamento`) 
REFERENCES departamentos (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Ingenieria en Sistemas de Informacion', 'ISI', 5, '', current_timestamp(), 2, 1);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Ingenieria de Software', 'IS', 5, '', current_timestamp(), 2, 1);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Ingenieria Mecanica', 'IM', 5, '', current_timestamp(), 2, 3);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Licenciatura Ciencias de la Computacion', 'LCC', 5, '', current_timestamp(), 2, 1);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Analista de Sistema', 'AS', 3, '', current_timestamp(), 1, 1);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Ingenieria Electronica', 'IE', 5, '', current_timestamp(), 2, 1);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Tecnicatura en Programacion', 'TP', 2, '', current_timestamp(), 1, 1);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Ingenieria Quimica', 'IQ', 5, '', current_timestamp(), 1, 2);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Licenciatura en Matematica', 'LM', 5, '', current_timestamp(), 2, 4);
insert into carreras(id, nombre, nombre_corto, duracion, descripcion, create_at, id_tipo_carrera, id_departamento) values
(default, 'Diseño Digital', 'DD', 3, '', current_timestamp(), 1, 5);

-- Tabla plan_carreras
CREATE TABLE `nrtsig_dev`.`plan_carreras` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `anio_plan` INT NOT NULL,
  `fecha_cierre` DATE,
  `resolucion` VARCHAR(10),
  `create_at` TIMESTAMP,
  `id_carrera` BIGINT NOT NULL,
  `id_departamento` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla carreras
ALTER TABLE plan_carreras ADD CONSTRAINT `carreras_fk` FOREIGN KEY (`id_carrera`) 
REFERENCES carreras (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

-- Agregamos la foreign key a la tabla departamentos
ALTER TABLE plan_carreras ADD CONSTRAINT `departamentos_fk` FOREIGN KEY (`id_departamento`) 
REFERENCES departamentos (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

insert into plan_carreras(id, anio_plan, fecha_cierre, resolucion, create_at, id_carrera, id_departamento) values(default, 2008, '2017-12-31', 'r555', current_timestamp(), 1, 1);
insert into plan_carreras(id, anio_plan, fecha_cierre, resolucion, create_at, id_carrera, id_departamento) values(default, 2018, null, 'r666', current_timestamp(), 1, 1);
insert into plan_carreras(id, anio_plan, fecha_cierre, resolucion, create_at, id_carrera, id_departamento) values(default, 2008, null, 'r333', current_timestamp(), 6, 1);
insert into plan_carreras(id, anio_plan, fecha_cierre, resolucion, create_at, id_carrera, id_departamento) values(default, 2008, '2017-12-31', 'r555', current_timestamp(), 2, 1);
insert into plan_carreras(id, anio_plan, fecha_cierre, resolucion, create_at, id_carrera, id_departamento) values(default, 2018, null, 'r666', current_timestamp(), 2, 1);
insert into plan_carreras(id, anio_plan, fecha_cierre, resolucion, create_at, id_carrera, id_departamento) values(default, 2010, null, 'r455', current_timestamp(), 3, 1);
insert into plan_carreras(id, anio_plan, fecha_cierre, resolucion, create_at, id_carrera, id_departamento) values(default, 2018, null, 'r666', current_timestamp(), 5, 1);
insert into plan_carreras(id, anio_plan, fecha_cierre, resolucion, create_at, id_carrera, id_departamento) values(default, 2018, null, 'r666', current_timestamp(), 7, 1);

-- Tabla estados_carrera
CREATE TABLE `nrtsig_dev`.`estados_carrera` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(10) NOT NULL,
  `descripcion` VARCHAR(30),
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into estados_carrera(id, codigo, descripcion, create_at) values(default, 'E', 'En espera', current_timestamp());
insert into estados_carrera(id, codigo, descripcion, create_at) values(default, 'EG', 'Egresado', current_timestamp());
insert into estados_carrera(id, codigo, descripcion, create_at) values(default, 'C', 'En Curso', current_timestamp());
insert into estados_carrera(id, codigo, descripcion, create_at) values(default, 'L', 'Libre', current_timestamp());

-- Tabla estados_inscripcion
CREATE TABLE `nrtsig_dev`.`estados_inscripcion` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(10) NOT NULL,
  `descripcion` VARCHAR(30),
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into estados_inscripcion(id, codigo, descripcion, create_at) values(default, 'PI', 'Pre-Inscripcion', current_timestamp());
insert into estados_inscripcion(id, codigo, descripcion, create_at) values(default, 'C', 'Confirmada', current_timestamp());
insert into estados_inscripcion(id, codigo, descripcion, create_at) values(default, 'NA', 'No Aprobada', current_timestamp());

-- Tabla inscripcion_carrera
CREATE TABLE `nrtsig_dev`.`inscripcion_carrera` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `anio_plan` INT NOT NULL,
  `fecha_inscripcion` DATE,
  `nota_promedio` FLOAT,
  `create_at` TIMESTAMP,
  `cantidad_asignaturas` INT,
  `id_plan_carrera` BIGINT NOT NULL,
  `id_alumno` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla alumnos
ALTER TABLE inscripcion_carrera ADD CONSTRAINT `alumno_fk` FOREIGN KEY (`id_alumno`) 
REFERENCES alumnos (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

-- Agregamos la foreign key a la tabla plan_carreras
ALTER TABLE inscripcion_carrera ADD CONSTRAINT `plan_carrera_fk` FOREIGN KEY (`id_plan_carrera`) 
REFERENCES plan_carreras (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

-- Eliminamos la columna anio_plan
ALTER TABLE inscripcion_carrera DROP COLUMN anio_plan;

-- Agregamos columna fecha de egreso
ALTER TABLE inscripcion_carrera ADD COLUMN fecha_egreso DATE;

-- Agregamos columna id estado
ALTER TABLE inscripcion_carrera ADD COLUMN id_estado BIGINT NOT NULL;

-- Agregamos la foreign key a la tabla estados_carreras
ALTER TABLE inscripcion_carrera ADD CONSTRAINT `estado_carrera_fk` FOREIGN KEY (`id_estado`) 
REFERENCES estados_carrera (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

-- Agregamos columna id_estado_inscripcion
ALTER TABLE inscripcion_carrera ADD COLUMN id_estado_inscripcion BIGINT NOT NULL;

ALTER TABLE inscripcion_carrera ADD CONSTRAINT `estado_inscripcion_fk` FOREIGN KEY (`id_estado_inscripcion`) 
REFERENCES estados_inscripcion (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

insert into inscripcion_carrera(id, fecha_inscripcion, nota_promedio, create_at, cantidad_asignaturas, id_plan_carrera, id_alumno, fecha_egreso, id_estado, id_estado_inscripcion)
values(default, '2015-02-12', 8.5, current_timestamp(), 15, 2, 1, null, 3, 2);
insert into inscripcion_carrera(id, fecha_inscripcion, nota_promedio, create_at, cantidad_asignaturas, id_plan_carrera, id_alumno, fecha_egreso, id_estado, id_estado_inscripcion)
values(default, '2014-10-28', 9.0, current_timestamp(), 30, 2, 2, null, 3, 2);
insert into inscripcion_carrera(id, fecha_inscripcion, nota_promedio, create_at, cantidad_asignaturas, id_plan_carrera, id_alumno, fecha_egreso, id_estado, id_estado_inscripcion)
values(default, '2016-12-15', 6.0, current_timestamp(), 7, 2, 3, null, 3, 2);
insert into inscripcion_carrera(id, fecha_inscripcion, nota_promedio, create_at, cantidad_asignaturas, id_plan_carrera, id_alumno, fecha_egreso, id_estado, id_estado_inscripcion)
values(default, '2015-03-01', 6.0, current_timestamp(), 7, 2, 4, null, 3, 2);
insert into inscripcion_carrera(id, fecha_inscripcion, nota_promedio, create_at, cantidad_asignaturas, id_plan_carrera, id_alumno, fecha_egreso, id_estado, id_estado_inscripcion)
values(default, '2016-11-23', 7.0, current_timestamp(), 2, 2, 5, null, 3, 2);
insert into inscripcion_carrera(id, fecha_inscripcion, nota_promedio, create_at, cantidad_asignaturas, id_plan_carrera, id_alumno, fecha_egreso, id_estado, id_estado_inscripcion)
values(default, '2017-12-20', 6.0, current_timestamp(), 6, 2, 6, null, 3, 2);
insert into inscripcion_carrera(id, fecha_inscripcion, nota_promedio, create_at, cantidad_asignaturas, id_plan_carrera, id_alumno, fecha_egreso, id_estado, id_estado_inscripcion)
values(default, '2018-12-22', 7.5, current_timestamp(), 5, 2, 7, null, 3, 2);
insert into inscripcion_carrera(id, fecha_inscripcion, nota_promedio, create_at, cantidad_asignaturas, id_plan_carrera, id_alumno, fecha_egreso, id_estado, id_estado_inscripcion)
values(default, '2013-02-04', 5.5, current_timestamp(), 8, 2, 8, null, 3, 2);

/*
-- Tabla cursillo
CREATE TABLE `nrtsig_dev`.`cursillo` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `create_at` TIMESTAMP,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into cursillo(id, create_at) values(default, current_timestamp());
*/

-- Tabla cursillo_alumnos
CREATE TABLE `nrtsig_dev`.`cursillo_alumnos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nota_promedio` FLOAT,
  `create_at` TIMESTAMP,
  `id_alumno` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `alumnos_fk` FOREIGN KEY(`id_alumno`) references `alumnos`(`id`) ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
