DROP DATABASE IF EXISTS `chamados` ;
CREATE SCHEMA `chamados` ;
USE `chamados`;


DROP TABLE IF exists `chamados`.`cidade`;
CREATE TABLE `chamados`.`cidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `estado` VARCHAR(100) NULL,
  `pais` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  INDEX `indexNomeCidade` (`nome` ASC)
  );
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('Cuiaba', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('Juara', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('Sinop', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('CidadeSemUsar1', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('CidadeSemUsar3', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('CidadeSemUsar3', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('CidadeSemUsar4', 'Mato Grosso', 'Brasil');
select * from `chamados`.`cidade`;



DROP TABLE IF exists `chamados`.`empresa`;
CREATE TABLE `chamados`.`empresa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cnpj` VARCHAR(18) NOT NULL,
  `cidade` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  INDEX `indexNomeEmpresa` (`nome` ASC),
  CONSTRAINT `FkEmpresaCidade` FOREIGN KEY (`cidade`) REFERENCES `chamados`.`cidade` (`nome`)
   );
INSERT INTO `chamados`.`empresa` (`nome`, `cnpj`, `cidade`) VALUES ('HOYLER Tecnologia', '14.795.364/0001-10', 'Cuiaba');
INSERT INTO `chamados`.`empresa` (`nome`, `cnpj`, `cidade`) VALUES ('IBM', '15.795.364/0001-10', 'Sinop');
INSERT INTO `chamados`.`empresa` (`nome`, `cnpj`, `cidade`) VALUES ('Microsoft', '16.795.364/0001-10', 'Juara');
INSERT INTO `chamados`.`empresa` (`nome`, `cnpj`, `cidade`) VALUES ('Generico', '16.795.364/0001-10', 'Cuiaba');
select * from `chamados`.`empresa`;



DROP TABLE IF exists `chamados`.`hardware`;
CREATE TABLE `chamados`.`hardware` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `tipo` VARCHAR(100) NOT NULL,
  `fabricante` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fkFabricanteEmpresa_idx` (`fabricante` ASC),
  CONSTRAINT `fkFabricanteEmpresa` FOREIGN KEY (`fabricante`) REFERENCES `chamados`.`empresa` (`nome`)
  );
INSERT INTO `chamados`.`hardware` (`nome`, `tipo`, `fabricante`) VALUES ('Mouse', 'Generico', 'Microsoft');
INSERT INTO `chamados`.`hardware` (`nome`, `tipo`, `fabricante`) VALUES ('Teclado', 'Generico', 'Microsoft');
INSERT INTO `chamados`.`hardware` (`nome`, `tipo`, `fabricante`) VALUES ('PC 63 i3', 'Desktop', 'Microsoft');
INSERT INTO `chamados`.`hardware` (`nome`, `tipo`, `fabricante`) VALUES ('Seridor IBM 3550', 'Servidor', 'IBM');
INSERT INTO `chamados`.`hardware` (`nome`, `tipo`, `fabricante`) VALUES ('Fone de Ouvido', 'Generico', 'Microsoft');
INSERT INTO `chamados`.`hardware` (`nome`, `tipo`, `fabricante`) VALUES ('Monitor 3D', 'Desktop', 'IBM');
select * from `chamados`.`hardware`;