<?php 

require_once("../../conexao.php");

$id = $_POST['id'];



$pdo->query("DELETE from vendas where id = '$id' ");

echo "Excluído com Sucesso!!";

?>