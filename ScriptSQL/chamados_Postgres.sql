---Criar DB chamados;

CREATE DATABASE chamados
  WITH ENCODING='UTF8'
       CONNECTION LIMIT=-1;
	   
	   
---Mudar Conexao para novo Banco e Criar tabelas

---Tablea Clean
DROP TABLE IF EXISTS registros CASCADE;
DROP TABLE IF EXISTS solicitante CASCADE;
---Tabela solicitante
CREATE TABLE solicitante
(
   id serial PRIMARY KEY NOT NULL,
   nome varchar(100) NOT NULL UNIQUE,
   cpf varchar(15) NOT NULL
); 
INSERT INTO solicitante (nome, cpf) VALUES ('EDLEY ALLAN','000.000.000-11');
INSERT INTO solicitante (nome, cpf) VALUES ('LEONARDO BOY','000.000.000-22');
INSERT INTO solicitante (nome, cpf) VALUES ('PROF. RAFAELZAO','000.000.000-33');
INSERT INTO solicitante (nome, cpf) VALUES ('TADEU E MATIAS','000.000.000-44');
INSERT INTO solicitante (nome, cpf) VALUES ('MATIAS E TADEU','000.000.000-55');
---Tabela Registros
CREATE TABLE registros
(
   id serial PRIMARY KEY NOT NULL,
   descricao varchar(100) NOT NULL,
   hardware varchar(100) NOT NULL,
   solicitante varchar(100) NOT NULL references solicitante(nome),
   status varchar(100) NOT NULL
);
INSERT INTO registros (hardware, descricao, solicitante, status) VALUES ('Mouse','Mouse sem sinal','EDLEY ALLAN','Aberto');
INSERT INTO registros (hardware, descricao, solicitante, status) VALUES ('Teclado','Teclado sem sinal','EDLEY ALLAN','Aberto');
INSERT INTO registros (hardware, descricao, solicitante, status) VALUES ('Monitor','Nao Liga','EDLEY ALLAN','Aberto');
INSERT INTO registros (hardware, descricao, solicitante, status) VALUES ('Mouse','Mouse sem sinal4','EDLEY ALLAN','Aberto');
