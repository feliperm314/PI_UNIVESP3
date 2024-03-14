<?php 

require_once("../../conexao.php");

$id = $_POST['id'];



$pdo->query("DELETE from sabores where id = '$id' ");

echo "Excluído com Sucesso!!";

?>