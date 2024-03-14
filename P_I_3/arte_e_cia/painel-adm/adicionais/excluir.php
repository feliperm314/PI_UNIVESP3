<?php 

require_once("../../conexao.php");

$id = $_POST['id'];



$pdo->query("DELETE from adicionais where id = '$id' ");

echo "Excluído com Sucesso!!";

?>