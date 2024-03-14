<?php 

require_once("../../conexao.php");
@session_start();

$id = $_POST['id'];
$reg_antigo = $_POST['reg_antigo'];

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

if($reg_antigo != $nome){
	//verificar duplicaidade de dados
	$res = $pdo->query("SELECT * from adicionais where nome = '$nome' and id_cat = '$categoria'");
	$dados = $res->fetchAll(PDO::FETCH_ASSOC);
	$linhas = count($dados);
	if($linhas > 0){
		echo 'Adicional já Cadastrado';
		exit();
	}
}


 	$res = $pdo->prepare("UPDATE adicionais SET id_cat = :id_cat, nome = :nome, valor = :valor where id = :id");
 

	
	$res->bindValue(":nome", $nome);
	$res->bindValue(":valor", $valor);
	$res->bindValue(":id_cat", $categoria);
	
	$res->bindValue(":id", $id);
	
	$res->execute();

	

	echo "Editado com Sucesso!!";


?>