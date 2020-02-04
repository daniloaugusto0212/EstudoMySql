<?php

    $pdo = new PDO('mysql:host=localhost;dbname=db_teste','root','681015');
   // $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = $pdo->prepare("SELECT * FROM `clientes` RIGHT JOIN cargos ON `clientes`.`cargo` = `cargos`.`id`");
    $sql->execute();
    $clientes = $sql->fetchAll();
    foreach ($clientes as $key => $value){
        echo $value['nome'];
        echo ' | ';
        echo $value['nome_cargo'];
        echo '<hr>';
    }




?>