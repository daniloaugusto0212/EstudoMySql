/*GROUP BY*/



SELECT  totaulas FROM cursos GROUP BY totaulas ORDER BY totaulas; /*Agrupa os dados de mesmo valor*/

SELECT  totaulas,count(*) FROM cursos GROUP BY totaulas ORDER BY totaulas; /*Agrupa os dados de mesmo valor e mostra a quantidade de cada agrupamento*/

SELECT carga FROM cursos WHERE totaulas > 20 GROUP BY carga; /*Mostra e agrupa todos os curso onde a carga é maior do que 20*/

SELECT carga, count(*) FROM cursos WHERE totaulas > 20 GROUP BY carga; /*Mostra e agrupa todos os curso onde a carga é maior do que 20 e os conta*/


SELECT ano, count(*) FROM cursos GROUP BY ano ORDER BY count(*);/*Agrupa os cursos por ano, conta quantos tem de cada ano e ordena por quantidade*/

SELECT ano, count(*) FROM cursos GROUP BY ano HAVING count(ano) >= 3 ORDER BY count(*);/*Agrupa os cursos por ano, conta quantos tem de cada ano e ordena por quantidade mostrando somente os que tem quantidade maior ou igual a 3*/


SELECT avg(carga) FROM cursos; /*Mostra a média da carga de todos os cursos*/

SELECT  carga, count(*) FROM cursos WHERE ano > 2013 GROUP BY carga HAVING carga > (SELECT avg(carga) FROM cursos);
/*Seleciona  a carga e total dela, filtra somente as acima de 2013 agrupa por carga e mostra somente os que tem a carga acima da média*/

