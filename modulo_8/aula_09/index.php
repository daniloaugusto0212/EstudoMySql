<?php
    define('HOST','localhost');
    define('DB','modulo_8');
    define('USER','root');
    define('PASS','681015');

    try{
        $pdo = new PDO('mysql:host='.HOST.';dbname='.DB,USER,PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        echo 'Conectou!';
        }catch(Exception $e){
            echo '<h1>erro ao conectar<h1/>';
        }

        

?>

