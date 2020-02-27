

SELECT * FROM gafanhotos;

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

