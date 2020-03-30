CREATE DATABASE empresa;

USE empresa;

CREATE TABLE cargos(
id_cargo INT NOT NULL AUTO_INCREMENT,
descricao_cargo VARCHAR (50), 
salario DECIMAL(9,2),
PRIMARY KEY (id_cargo)
);


