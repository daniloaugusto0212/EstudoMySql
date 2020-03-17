use cadastro;

describe gafanhotos;

alter table gafanhotos add column cursopreferido int; /*adicinando tabela cursopreferido  que será a chave estrangeira*/

alter table gafanhotos add foreign key (cursopreferido)
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