/* Cração do banco de dados */

CREATE DATABASE PetVet_DB;

/* Ligando BD */

USE PetVet_DB;

/* 
criação das tabelas do banco de dados
 */

CREATE TABLE Cliente
(
   idCliente INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
   nome VARCHAR(100) NOT NULL,
   telefone VARCHAR(15)NOT NULL,
   dataAgendamento DATE NOT NULL,
   tipoAnimal VARCHAR(20) NOT NULL,
   necessidade VARCHAR(500) NOT NULL
);

/* Entrada de dados */

INSERT INTO ChecagemLista (idCliente, nome, telefone, dataAgendamento, tipoAnimal, necessidade)
VALUES (1, 'Criança_1', '199999999', '01/12/19', 'Toto', 'tosar esta criatura mega peluda')

INSERT INTO ChecagemLista (idCliente, nome, telefone, dataAgendamento, tipoAnimal, necessidade)
VALUES (2, 'Criança_2', '299999999', '01/12/19', 'Miau', 'dar banho, ele não gosta')

INSERT INTO ChecagemLista (idCliente, nome, telefone, dataAgendamento, tipoAnimal, necessidade)
VALUES (3, 'Criança_3', '399999999', '01/12/19', 'passalinho', 'dar banho e comida, ele está triste')


/* Criação da Tabela de serviços */

CREATE TABLE Servicos(
   IdServico INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   servico VARCHAR(20) NOT NULL,
   descricao VARCHAR(100),
   valor FLOAT(10,2)
);

INSERT INTO Servicos (IdServico, servico, descricao, valor)
VALUES(1, 'Tosa', 'cortar os pêlos do pet', 100.00)

INSERT INTO Servicos (IdServico, servico, descricao, valor)
VALUES(2, 'Banho', 'com água e sabão, o pet fica limpo', 200.00)




/* 
Olá Jeferson 
bom trabalho! É uma tarefa introdutória de SQL, mas acho importante
te apontar alguns ajustes a realizar:
- o nome "ChecagemLista" não parece muito adequado, não é claro o que a 
tabela significa; sugeriria algo como "Cliente".
- incorreto o "AUTO INCREMENTE"; o correto seria "AUTO_INCREMENT"
- os inserts tem algumas pequenas falhas de sintaxe. Exemplo;
INSERT INTO ChecagemLista (idCliente, nome, telefone, dataAgendamento, tipoAnimal, necessidade)
VALUES (1, crianca1, '199999999', 01/12/19, 'Toto', 'tosar esta criatura mega peluda')
tanto o valor "cirança1" (um texto) quanto o valor da data (01/12/19) devem ficar entre aspas simples.
- a tabela servicos também tem o "auto incremente" ao invés de "auto_increment"
- por fim, o número com casas decimais devem ter a casa separada por ponto, não vírgula 
(senão o SQL vai achar que você está informando outra coluna. Por exemplo, ao invés de 200,00 devemos usar 200.00.
Apesar de numerosas, são correções pontuais e simples. qualquer dúvida, pode chamar!
Abraço
tutor Daltron
*/