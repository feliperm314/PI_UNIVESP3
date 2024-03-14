<?php 

require_once("../../conexao.php");
@session_start();


$nome = $_POST['nome'];
$valor = $_POST['valor'];
$categoria = $_POST['categoria'];

$valor = str_replace(',', '.', $valor);

if($nome == ''){
	echo "Preencha o Nome!";
	exit();
}

if($valor == ''){
	echo "Preencha o Valor!";
	exit();
}


	//verificar duplicaidade de dados
	$res = $pdo->query("SELECT * from adicionais where nome = '$nome' and id_cat = '$categoria'");
	$dados = $res->fetchAll(PDO::FETCH_ASSOC);
	$linhas = count($dados);
	if($linhas > 0){
		echo 'Adicional já Cadastrado';
		exit();
	}


	$res = $pdo->prepare("INSERT into adicionais (id_cat, nome, valor) values (:id_cat, :nome, :valor)");

	
	$res->bindValue(":nome", $nome);
	$res->bindValue(":valor", $valor);
	$res->bindValue(":id_cat", $categoria);

	
	$res->execute();

	

	echo "Cadastrado com Sucesso!!";



?>