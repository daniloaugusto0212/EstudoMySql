/*Funções do select*/

select * from gafanhotos;

select * from cursos order by nome desc; /*ordena por nome em ordem decrescente*/

select * from cursos order by nome; /*ordena por nome em ordem crescente*/

SELECT nome, carga, ano from cursos; /*Seleciona as colunas descritas no comando*/

SELECT ano, nome, carga from cursos order by ano, nome; /*Seleciona as colunas ano, nome e carga nesta ordem e ordena por ano, e dentro de cada ano ordena por nome*/

SELECT * FROM cursos WHERE ano = '2016' order by nome; /*Seleciona todas as colunas e apenas as linhas que contem o ano 2016*/

SELECT nome, carga FROM cursos WHERE ano = '2016' order by nome; /*Seleciona as colunas nome e carga apenas as linhas que contem o ano 2016*/

SELECT nome, descricao FROM cursos WHERE ano <= '2015' order by nome; /*Seleciona as linhas onde o ano é igual ou menos a 2015 e às ordena por nome*/;
/*Operadores utilizados em MySql: = < > 'diferente(!= ou <>)' */

SELECT nome, ano FROM cursos WHERE ano BETWEEN 2014 and 2016; /*Mostra as linhas entre 2014 e 2016 usando o comando "BETWEEN"*/

SELECT nome, descricao, ano FROM cursos WHERE ano IN (2014, 2016) ORDER BY ano; /*Mostra as linhas onde exista os anos de 2014 e 2016 usando o camando IN, e depois ordena por ano*/

SELECT nome, carga, totaulas FROM cursos WHERE carga > 35 AND totaulas < 30; /*Mostra onde a carga é maior que 35 e o totaulas é menor do que 30, podemos também utilizar o camndo OR*/



