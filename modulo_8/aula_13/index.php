<?php

$pdo = new PDO('mysql:host=localhost;dbname=erp','root','681015');
/*
$tables = $pdo->query("SHOW TABLES"); //Mostra todas as tabelas do banco de dados
$tables = $tables->fetchAll();

echo '<pre>';
print_r($tables);
echo '<pre/>';
*/

$sql = 'CREATE TABLE cursos (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_curso VARCHAR(30) NOT NULL
)';  //Criando uma tabela 'cursos' diretamente no banco de dados

$pdo->exec($sql);



?>