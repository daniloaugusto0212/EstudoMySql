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


SELECT * FROM cursos;

INSERT INTO cursos values
('1','HTML4','Curso de HTML5','40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8','2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Intrdução à linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

UPDATE cursos
SET nome = 'HTML5' 
WHERE idcurso='1';/*Atualiza o campo nome onde o idcurso é 1, para HTML5*/

UPDATE cursos
SET nome = 'PHP', 
ano = '2015' 
WHERE idcurso = '4';

UPDATE cursos 
SET nome = 'Java', carga = '40', ano = '2015' 
WHERE idcurso = '5' LIMIT 1; 

update cursos 
set ano = '2050', carga = '800' 
where ano = '2018';

update cursos 
set ano = '2018', carga = '0' 
where ano = '2050' limit 1; /*comando limit 1 limita a alteração à uma linha apenas(a primeira da tabela)*/

delete from cursos 
where idcurso = '8';

delete from cursos 
where ano = '2050' limit 2;

truncate table cursos; /*limpa todos os dados da tabela*/

show databases; /* Mostra todas os bancos de dados cadastrados*/
use cadastro;
show tables;
describe cursos;
desc gafanhotos;


/*aula 11*/
select * from gafanhotos;
select * from cursos;

/*Funções do select*/

select * from cursos 
order by nome desc; /*ordena por nome em ordem decrescente*/

select * from cursos 
order by nome; /*ordena por nome em ordem crescente*/

SELECT nome, carga, ano from cursos; /*Seleciona as colunas descritas no comando*/

SELECT ano, nome, carga from cursos 
order by ano, nome; /*Seleciona as colunas ano, nome e carga nesta ordem e ordena por ano, e dentro de cada ano ordena por nome*/

SELECT * FROM cursos 
WHERE ano = '2016' order by nome; /*Seleciona todas as colunas e apenas as linhas que contem o ano 2016*/

SELECT nome, carga FROM cursos
WHERE ano = '2016' order by nome; /*Seleciona as colunas nome e carga apenas as linhas que contem o ano 2016*/

SELECT nome, descricao FROM cursos 
WHERE ano <= '2015' order by nome; /*Seleciona as linhas onde o ano é igual ou menos a 2015 e às ordena por nome*/;

/*Operadores utilizados em MySql: = < > 'diferente(!= ou <>)' */

SELECT nome, ano FROM cursos 
WHERE ano BETWEEN 2014 and 2016; /*Mostra as linhas entre 2014 e 2016 usando o comando "BETWEEN"*/

SELECT nome, descricao, ano FROM cursos 
WHERE ano IN (2014, 2016) 
ORDER BY ano; /*Mostra as linhas onde exista os anos de 2014 e 2016 usando o camando IN, e depois ordena por ano*/

SELECT nome, carga, totaulas FROM cursos 
WHERE carga > 35 AND totaulas < 30; /*Mostra onde a carga é maior que 35 e o totaulas é menor do que 30, podemos também utilizar o camndo OR*/

/*Aula 12*/
/*OPERADOR LIKE*/

SELECT * FROM cursos 
WHERE nome LIKE 'P%'; /*Mostra os dados da coluna 'nome' que começam com a letra P, independente de digitar maiúsculo ou minúsculo*/

SELECT * FROM cursos 
WHERE nome LIKE '%a'; /*Mostra os dados da coluna 'nome' que a última letra é A ou a*/

SELECT * FROM cursos 
WHERE nome LIKE '%a%';/*Mostra os dados da coluna nome que contém a letra A em qualquer lugar, mesmo que a letra estaja acentuada*/

SELECT * FROM cursos 
WHERE nome NOT LIKE '%a';/*Dados que não contém a letra 'A'*/


SELECT * FROM cursos 
WHERE nome LIKE 'PH%P';/*Dados que comecem com PH e terminem com P*/

SELECT * FROM cursos 
WHERE nome LIKE 'H%L_';/*O caractere _ obriga a ter qualquer caractere após a letra selecionada*/

SELECT * FROM gafanhotos 
WHERE nome LIKE '%silva%'; /*Mostra os dados onde contém silva, inclusive Silvana*/


SELECT * FROM gafanhotos 
WHERE nome LIKE '%_silva%';/*MOstra os dados onde contém Silva somento como sobrenome*/


/*DISTINCT*/

SELECT DISTINCT nacionalidade FROM gafanhotos;/*MOstra Os dados da coluna nacionalidade distintamente(Somente uma vez cada um dos existentes)*/

SELECT DISTINCT carga FROM cursos 
ORDER BY carga;/*MOstra Os dados da coluna carga distintamente(Somente uma vez cada um dos existentes) e em ordem numérica*/


SELECT count(*) FROM cursos; /*Mostra a quantidade de cursos da tabela*/

SELECT count(*) FROM cursos 
WHERE carga >= 40;/*Mostra a quantidade de cursos que tem a carga maior ou igual a 40*/

SELECT max(carga) FROM cursos; /*Mostra a maior carga*/

SELECT max(totaulas) FROM cursos 
WHERE ano = '2016'; /*Mostra a maior quantidade de aulas entre os curos de 2016*/

/*Pode-se usar a função MIN para pegar os menores valores*/

SELECT sum(totaulas) FROM cursos 
WHERE ano = '2016'; /*Soma o totaulas dos curos de 2016*/

SELECT avg(totaulas) FROM cursos 
WHERE ano ='2016'; /*Mostra a média entre os cursos de 2016*/


/*Exercícios*/
/*1- Lista com todas as gafanhotas*/
SELECT * FROM gafanhotos WHERE sexo = 'F';

/*2- Lista dos que nasceram entre 01/01/2000 e 31/12/2015*/
SELECT * FROM gafanhotos WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

/*3- Lista de todos os homens Programadores*/
SELECT * FROM gafanhotos WHERE prof = 'Programador' AND sexo = 'M';

/*4- Lista de mulherees que nasceram no Brasil e que o nome comece com J */
SELECT * FROM gafanhotos WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'J%'; 

/*5- Lista com nome e nacionalidade dos homens que tem Silva no nome, não nasceram no Brasil e pesam menos de 100Kg*/
SELECT nome, nacionalidade FROM gafanhotos WHERE sexo = 'M' AND nome LIKE '%Silva%' AND nacionalidade <> 'Brasil' AND peso < 100;

/*6- Maior altura entre os gafanhotos que moram no Brasil*/
SELECT max(altura) FROM gafanhotos WHERE sexo = 'M' AND nacionalidade = 'Brasil';

/*7- Média de peso dos gafanhotos cadastrados*/
SELECT avg(peso) FROM gafanhotos;

/*8- Menor peso entre as mulheres que nasceram fora do Brasil e entre 01/01/1990*e 31/12/2000*/
SELECT min(peso) FROM gafanhotos WHERE sexo = 'F' AND nacionalidade <> 'Brasil' AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';

/*9- Quantas mulheres tem mais de 1.90 de altura*/
SELECT count(*) FROM gafanhotos WHERE sexo = 'F' AND altura > 1.90;


/*Aula 13*/
/*GROUP BY*/
SELECT  totaulas FROM cursos 
GROUP BY totaulas ORDER BY totaulas; /*Agrupa os dados de mesmo valor*/

SELECT  totaulas,count(*) FROM cursos 
GROUP BY totaulas ORDER BY totaulas; /*Agrupa os dados de mesmo valor e mostra a quantidade de cada agrupamento*/

SELECT carga FROM cursos 
WHERE totaulas > 20 GROUP BY carga; /*Mostra e agrupa todos os curso onde a carga é maior do que 20*/

SELECT carga, count(*) FROM cursos 
WHERE totaulas > 20 GROUP BY carga; /*Mostra e agrupa todos os curso onde a carga é maior do que 20 e os conta*/


SELECT ano, count(*) FROM cursos G
ROUP BY ano ORDER BY count(*);/*Agrupa os cursos por ano, conta quantos tem de cada ano e ordena por quantidade*/

SELECT ano, count(*) FROM cursos 
GROUP BY ano HAVING count(ano) >= 3; ORDER BY count(*);/*Agrupa os cursos por ano, conta quantos tem de cada ano e ordena por quantidade mostrando somente os que tem quantidade maior ou igual a 3*/

SELECT avg(carga) FROM cursos; /*Mostra a média da carga de todos os cursos*/

SELECT  carga, count(*) FROM cursos 
WHERE ano > 2013 GROUP BY carga HAVING carga > (SELECT avg(carga) FROM cursos);
/*Seleciona  a carga e total dela, filtra somente as acima de 2013 agrupa por carga e mostra somente os que tem a carga acima da média*/


/*1- Lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
SELECT profissao, count(*) FROM gafanhotos group by profissao;

SELECT sexo, count(*) FROM gafanhotos WHERE nascimento > '2005-01-01' group by sexo ;

SELECT nacionalidade, count(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil' 
GROUP BY nacionalidade having count(nacionalidade) > 3;

SELECT altura, count(*) FROM gafanhotos
WHERE peso > '100' AND altura > (SELECT avg(altura) FROM gafanhotos) group by altura;


/*Aula 15**/

describe gafanhotos;

describe gafanhotos;

alter table gafanhotos 
add column cursopreferido int; /*adicinando tabela cursopreferido  que será a chave estrangeira*/

alter table gafanhotos 
add foreign key (cursopreferido)
references cursos(idcurso); /*cursopreferido da tablela gafanhotos está sendo ligado com a coluna idcurso da 
 tabela cursos*/
 
select * from gafanhotos;
select * from cursos;
 
update gafanhotos set cursopreferido = '6' where id = '1';/*seleciona como preferido do gafanhoto com id = 1
o curso com id 6*/

select nome, cursopreferido from gafanhotos;

select nome,ano from cursos;

select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos inner join cursos on cursos.idcurso = gafanhotos.cursopreferido;/*fazendo a junção das duas tabelas
usando o comando inner join*/

select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos right outer join cursos on cursos.idcurso = gafanhotos.cursopreferido;


/*Aula 16*/

/*Juntando 3 tabelas*/
create table assiste(
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idcurso)
)default charset = utf8;

insert into assiste values
(default,'2014-03-01','1','2');

select * from assiste;

select g.nome, c.nome from gafanhotos g
join assiste a
on g.id = a.idgafanhoto
join cursos c 
on c.idcurso = a.idcurso;

/*
Comandos DDL: 
	CREATE DATABASE
    CREATE TABLE
    ALTER TABLE
    DROP TABLE
    
Comandos DML:
	INSERT INTO
    UPDATE
    DELETE
    TRUNCATE
*/

