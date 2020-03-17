create table if not exists cursos(  /*cria a tabela somente se não existir*/
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
)default charset=utf8mb4;

alter table cursos
add column idcurso int first; 

alter table cursos
add primary key (idcurso);

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

select * from teste;

drop table teste; /*Apagar tabela 'teste'*/

alter table `tb_site.config`
drop column imagem_descricao;

update `tb_site.config`
set titulo1 = 'CSS3', titulo2 = 'HTML5',titulo3 = 'JavaScript' where titulo = 'projeto_01';
