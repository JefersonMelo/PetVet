/* Cração do banco de dados */

CREATE DATABASE PetVet_DB;

/* Ligando BD */

USE PetVet_DB;

/* 
criação das tabelas do banco de dados
 */

CREATE TABLE ChecagemLista
(
   idCliente INT NOT NULL  PRIMARY KEY,
   nome VARCHAR(100) NOT NULL,
   telefone VARCHAR(15)NOT NULL,
   dataAgendamento DATE NOT NULL,
   tipoAnimal VARCHAR(20) NOT NULL,
   necessidade VARCHAR(500) NOT NULL
);

/* Entrada de dados */

INSERT INTO ChecagemLista (idCliente, nome, telefone, dataAgendamento, tipoAnimal, necessidade)
VALUES (1, crianca1, 199999999, 01/12/19, 'Toto', 'tosar esta criatura mega peluda')

INSERT INTO ChecagemLista (idCliente, nome, telefone, dataAgendamento, tipoAnimal, necessidade)
VALUES (2, crianca2, 299999999, 01/12/19, 'Miau', 'dar banho, ele não gosta')

INSERT INTO ChecagemLista (idCliente, nome, telefone, dataAgendamento, tipoAnimal, necessidade)
VALUES (3, crianca3, 399999999, 01/12/19, 'passalinho', 'dar banho e comida, ele está triste')