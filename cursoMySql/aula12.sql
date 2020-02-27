SELECT * FROM cursos;

SELECT * FROM gafanhotos;


/*OPERADOR LIKE*/

SELECT * FROM cursos WHERE nome LIKE 'P%'; /*Mostra os dados da coluna 'nome' que começam com a letra P, independente de digitar maiúsculo ou minúsculo*/

SELECT * FROM cursos WHERE nome LIKE '%a'; /*MOstra os dados da coluna 'nome' que a última letra é A ou a*/

SELECT * FROM cursos WHERE nome LIKE '%a%';/*Mostra os dados da coluna nome que contém a letra A em qualquer lugar, mesmo que a letra estaja acentuada*/

SELECT * FROM cursos WHERE nome NOT LIKE '%a';/*Dados que não contém a letra 'A'*/


SELECT * FROM cursos WHERE nome LIKE 'PH%P';/*Dados que comecem com PH e terminem com P*/


SELECT * FROM cursos WHERE nome LIKE 'H%L_';/*O caractere _ obriga a ter qualquer caractere após a letra selecionada*/

SELECT * FROM gafanhotos WHERE nome LIKE '%silva%'; /*Mostra os dados onde contém silva, inclusive Silvana*/


SELECT * FROM gafanhotos WHERE nome LIKE '%_silva%';/*MOstra os dados onde contém Silva somento como sobrenome*/

/*DISTINCT*/

SELECT DISTINCT nacionalidade FROM gafanhotos;/*MOstra Os dados da coluna nacionalidade distintamente(Somente uma vez cada um dos existentes)*/

SELECT DISTINCT carga FROM cursos ORDER BY carga;/*MOstra Os dados da coluna carga distintamente(Somente uma vez cada um dos existentes) e em ordem numérica*/



SELECT count(*) FROM cursos; /*Mostra a quantidade de cursos da tabela*/

SELECT count(*) FROM cursos WHERE carga >= 40;/*Mostra a quantidade de cursos que tem a carga maior ou igual a 40*/

SELECT max(carga) FROM cursos; /*Mostra a maior carga*/

SELECT max(totaulas) FROM cursos WHERE ano = '2016'; /*Mostra a maior quantidade de aulas entre os curos de 2016*/

/*Pode-se usar a função MIN para pegar os menores valores*/

SELECT sum(totaulas) FROM cursos WHERE ano = '2016'; /*Soma o totaulas dos curos de 2016*/

SELECT avg(totaulas) FROM cursos WHERE ano ='2016'; /*Mostra a média entre os cursos de 2016*/







