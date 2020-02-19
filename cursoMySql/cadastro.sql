create database cadastro   /*criar banco de dados */
default character set utf8mb4  /*Usar padrão latino(com acentuação)*/
default collate utf8mb4_general_ci;

create table `pessoas`(  /*criar tabela*/
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal (5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
)default charset = utf8mb4;

insert into pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade) /*Necessário inserir as chaves somente se a ordem for diferente da do banco*/
values (default, 'Solange', '1986-10-16', 'F', '60.2', '1.73', default);

insert into pessoas values (default, 'Danilo', '1985-12-02', 'M', '80.2', '1.85', default);/*Caso a ordem de inserção seja a mesma do banco de dados não é necessário colocar as chaves*/

insert into pessoas values 
(default, 'Cláudio', '1975-11-02', 'M', '86.2', '1.85', default),
(default, 'Pedro', '199-12-3', 'M', '89', '2', default),
(default, 'Janína', '1987-11-12', 'F', '75.4', '1.66', 'EUA'); /*Inserindo várias pessoas ao mesmo tempo*/

alter table pessoas /*alterar tabela*/
add column profissao varchar(10); /*adiciona coluna 'profissão' como última posição da tabela*/

alter table pessoas
drop column profissao; /*elimina a coluna*/ 

alter table pessoas
add column profissao varchar(10) after nome; /*adiciona a coluna após o nome. Obs.: Não existe comando before*/

alter table pessoas
add column codigo int first; /*adiciona coluna na primaira posição da tabela*/

alter table pessoas
modify column profissao varchar(20); /*altera a quantidade de caracteres */

alter table pessoas
change column profissao prof varchar(20); /*altera a coluna profissao para prof*/

alter table pessoas
rename to gafanhotos; /*altera o nome da tabela pessoas para gafanhotos*/


desc pessoas; /*Mostra a descrção da tabela*/
 
select * from pessoas; /*Mostra tudo da tabela pessoas*/

