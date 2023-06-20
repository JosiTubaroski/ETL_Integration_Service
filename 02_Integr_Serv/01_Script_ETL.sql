
/* CRIANDO A DATABASE */

CREATE DATABASE PRJ_INTEGRATION
GO

/*Conectando a Database*/

USE PRJ_INTEGRATION
go


/* CRIANDO UMA TABELA DE ORIGEM */

CREATE TABLE CLIENTES (
  IDCLIENTE INT IDENTITY PRIMARY KEY,
  NOME VARCHAR (30),
  SEXO CHAR(1),
  EMAIL VARchar(50)
)
GO

insert into CLIENTES values ('clara', 'F', 'clara@gmail.com')
insert into CLIENTES values ('jojo', 'F', 'jojo@gmail.com')
insert into CLIENTES values ('debis', 'F', 'debis@gmail.com')
insert into CLIENTES values ('ana', 'F', 'ana@gmail.com')
insert into CLIENTES values ('tatiana', 'F', 'tatiana@gmail.com')

select * from CLIENTES

/*
Realizar updates
*/

Update CLIENTES set nome= 'Teste'
where NOME = 'Paloma';

select * from CLIENTES;

/* Clientes 02 que vai ser para onde vou mandar os meus dados*/

CREATE TABLE CLIENTES_02 (
  IDCLIENTE INT PRIMARY KEY, -- Tirar o identity que é a numeração automática
  NOME VARCHAR (50),
  EMAIL VARchar(50)
)
GO

select * from CLIENTES_02;
drop table CLIENTES_02
truncate table CLIENTES_02;