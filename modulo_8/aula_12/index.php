<?php

$pdo = new PDO('mysql:host=localhost;dbname=testes','root','681015');

$sql = $pdo->prepare("SELECT * FROM clientes WHERE data BETWEEN '2017-01-01' AND '2017-12-01'");

$sql->execute();

$emails = $sql->fetchAll();

print_r($emails); //Retorna todos os email







?>