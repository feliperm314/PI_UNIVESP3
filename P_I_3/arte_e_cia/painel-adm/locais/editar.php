<?php 

require_once("../../conexao.php");
@session_start();

$id = $_POST['id'];
$reg_antigo = $_POST['reg_antigo'];

$nome = $_POST['nome'];
$valor = $_POST['valor'];


if($nome == ''){
	echo "Preencha o Nome!";
	exit();
}

if($valor == ''){
	echo "Preencha o Valor!";
	exit();
}


if($reg_antigo != $nome){
	//verificar duplicaidade de dados
	$res = $pdo->query("SELECT * from locais where nome = '$nome'");
	$dados = $res->fetchAll(PDO::FETCH_ASSOC);
	$linhas = count($dados);
	if($linhas > 0){
		echo 'Registro já Cadastrado';
		exit();
	}
}


 	$res = $pdo->prepare("UPDATE locais SET nome = :nome, valor = :valor where id = :id");
 

	
	$res->bindValue(":nome", $nome);
	$res->bindValue(":valor", $valor);
	
	$res->bindValue(":id", $id);
	
	$res->execute();

	

	echo "Editado com Sucesso!!";


?>