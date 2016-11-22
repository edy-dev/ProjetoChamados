 
CREATE DATABASE chamados
  WITH ENCODING='UTF8'
       CONNECTION LIMIT=-1;

	   

	   
---Mudar Conexao para novo Banco e Criar tabelas
DROP TABLE IF EXISTS solicitante CASCADE;
CREATE TABLE solicitante
(
   id serial PRIMARY KEY NOT NULL,
   nome varchar(100) NOT NULL,
   cpf varchar(15) NOT NULL
); 

INSERT INTO solicitante (nome, cpf) VALUES ('EDLEY ALLAN','000.000.000-11');
INSERT INTO solicitante (nome, cpf) VALUES ('LEONARDO BOY','000.000.000-22');
INSERT INTO solicitante (nome, cpf) VALUES ('PROF. RAFAELZAO','000.000.000-33');
INSERT INTO solicitante (nome, cpf) VALUES ('TADEU E MATIAS','000.000.000-44');
INSERT INTO solicitante (nome, cpf) VALUES ('MATIAS E TADEU','000.000.000-55');







CREATE TABLE chamado(
   id serial PRIMARY KEY NOT NULL,
   hardware varchar(100) NOT NULL,
   empresa varchar(100) NOT NULL,
   descricao varchar(100) NOT NULL,
   solicitante varchar(100) NOT NULL,
   status varchar(100) NOT NULL
   PRIMARY KEY(ID)
);