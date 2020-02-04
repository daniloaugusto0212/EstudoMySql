<?php

    $pdo = new PDO('mysql:host=localhost;dbname=erp','root','681015');
   // $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);   
    $pdo->exec("LOCK TABLES `produtos` WRITE");

    sleep(10);
    
  




?>