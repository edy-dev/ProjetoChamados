DROP DATABASE IF EXISTS `chamados` ;
CREATE SCHEMA `chamados` ;
USE chamados;

CREATE TABLE `chamados`.`cidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `estado` VARCHAR(100) NULL,
  `pais` VARCHAR(100) NULL,
  PRIMARY KEY (`id`));

  
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('Cuiaba', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('Juara', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('Sinop', 'Mato Grosso', 'Brasil');
INSERT INTO `chamados`.`cidade` (`nome`, `estado`, `pais`) VALUES ('VG', 'Mato Grosso', 'Brasil');


select * from cidade;








CREATE TABLE `chamados`.`empresa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cnpj` VARCHAR(18) NOT NULL,
  cidade INT NOT NULL
  PRIMARY KEY (`id`)
  
  
  );

  
  