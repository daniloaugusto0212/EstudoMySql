create database empresa;

use empresa;

create table cargos(
id_cargo int not null auto_increment,
descricao_cargo varchar (50), 
salario decimal(9,2),
primary key (id_cargo)
);
select * from cargos;

