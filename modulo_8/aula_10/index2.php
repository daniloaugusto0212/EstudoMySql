<?php

    $pdo = new PDO('mysql:host=localhost;dbname=erp','root','681015');
   // $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   $sql = $pdo->prepare("SELECT * FROM `produtos`");
   $sql->execute();
   $produtos = $sql->fetchAll();
   foreach($produtos as $key => $value){
       echo $value['nome'];
       echo '<hr>';
   }
  




?>