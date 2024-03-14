<?php 

require_once("../../conexao.php");
@session_start();


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


	//verificar duplicaidade de dados
	$res = $pdo->query("SELECT * from locais where nome = '$nome'");
	$dados = $res->fetchAll(PDO::FETCH_ASSOC);
	$linhas = count($dados);
	if($linhas > 0){
		echo 'Registro já Cadastrado';
		exit();
	}


	$res = $pdo->prepare("INSERT into locais (nome, valor) values (:nome, :valor)");

	
	$res->bindValue(":nome", $nome);
	$res->bindValue(":valor", $valor);

	
	$res->execute();

	

	echo "Cadastrado com Sucesso!!";



?>