CREATE DATABASE cadastro   /*criar banco de dados */
DEFAULT CHARACTER SET utf8mb4  /*Usar padrão latino(com acentuação)*/
DEFAULT COLLATE utf8mb4_general_ci;

USE cadastro;  /*Seleciona o banco*/

DROP DATABASE cadastro; /*Apaga o banco de dados*/

describe pessoas;

CREATE TABLE `pessoas`(  /*criar tabela*/
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal (5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
)default charset = utf8mb4;

INSERT INTO pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade) /*Necessário inserir as chaves somente se a ordem for diferente da do banco*/
VALUES 
(default, 'Godofredo', '1986-10-16', 'M', '78.2', '1.73', 'Brasil');

INSERT INTO pessoas 
VALUES (default, 'Danilo', '1985-12-02', 'M', '80.2', '1.85', default);
/*Caso a ordem de inserção seja a mesma do banco de dados não é necessário colocar as chaves*/

SELECT * FROM pessoas; /*Mostra todos os dados da tabela pessoas*/

insert into pessoas values 
(default, 'Cláudio', '1975-11-02', 'M', '86.2', '1.85', default),
(default, 'Pedro', '1999-12-3', 'M', '89', '2', default),
(default, 'Janína', '1987-11-12', 'F', '75.4', '1.66', 'EUA'); 
/*Inserindo várias pessoas ao mesmo tempo*/

ALTER TABLE pessoas /*alterar tabela*/
ADD COLUMN profissao varchar(10); /*adiciona coluna 'profissão' como última posição da tabela*/

ALTER TABLE pessoas
DROP COLUMN profissao; /*elimina a coluna*/ 

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) after nome; /*adiciona a coluna após o nome. Obs.: Não existe comando before*/

ALTER TABLE pessoas
ADD COLUMN codigo int first; /*adiciona coluna na primaira posição da tabela*/

ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20); /*altera a quantidade de caracteres */

ALTER TABLE pessoas
CHANGE COLUMN profissao prof varchar(20); /*altera a coluna profissao para prof*/

ALTER TABLE pessoas
RENAME TO gafanhotos; /*altera o nome da tabela pessoas para gafanhotos*/


desc pessoas; /*Mostra a descrção da tabela*/
 
select * from pessoas; /*Mostra tudo da tabela pessoas*/

create table if not exists cursos(  /*cria a tabela somente se não existir*/
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
)default charset=utf8mb4;

alter table cursos
add column idcurso int first;  /*adiciona uma nova coluna na tabela CURSOS*/

alter table cursos
add primary key (idcurso);  /*Define a coluna idcurso como chave primária*/

create table if not exists teste(
id int,
nome varchar(10),
idade int
);

/*criando uma tabela apenas pare teste e depois apagá-la*/
insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');
SELECT * FROM teste;

DROP TABLE IF EXISTS teste;/* Apaga a tabela se existir*/

/*
Comandos DDL: 
	CREATE DATABASE
    CREATE TABLE
    ALTER TABLE
    DROP TABLE
    
Comandos DML:
	INSERT INTO
*/

