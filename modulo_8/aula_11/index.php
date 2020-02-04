<?php
    //INSERÇÃO DOS DADOS NA TABELA
    /*
	$pdo = new PDO('mysql:host=localhost;dbname=testes','root','681015');

	if(isset($_POST['acao'])){
		$nome = $_POST['nome'];
		$sobrenome = $_POST['email'];		

		$sql = $pdo->prepare("INSERT INTO `clientes` VALUES (null,?,?)");

		$sql->execute(array($nome,$sobrenome));
		echo 'Cliente inserido com sucesso!';
	}
?>
<!DOCTYPE html>
<html>
<head>	
	<title>Cadastro no banco</title>
</head>
<body>
	<form method="post">
		<input type="text" name="nome" required />
		<input type="text" name="email" required />
		<input type="submit" name="acao" value="Enviar!" />
		
	</form>
	
</body>
</html>
*/
//FAZENDO PESQUISA LIKE
$pdo = new PDO('mysql:host=localhost;dbname=testes','root','681015');

$sql = $pdo->prepare("SELECT * FROM clientes WHERE email LIKE '%g%'");

$sql->execute();

//$emails = $sql->fetchAll();

//print_r($emails); //Retorna todos os email

echo $sql->fetch()['email']; //Retorna apenas os email que contem 'g'





?>