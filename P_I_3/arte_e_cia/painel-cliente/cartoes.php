
    <?php
    include_once('../conexao.php');

     
      //RECUPERAR CAMPOS PARA EDIÇAO

    // $cpf = $_SESSION['cpf_usuario'];
    $cpf = isset($_SESSION['cpf_usuario']) ? $_SESSION['cpf_usuario'] : '';
    
    if (!empty($cpf)) {
      $res_todos = $pdo->query("SELECT * from clientes where cpf = '$cpf'");
      $dados_total = $res_todos->fetchAll(PDO::FETCH_ASSOC);
    
      if (!empty($dados_total)) {
        $carimbos = $dados_total[0]['cartao'];
      } else {  
        $carimbos = 0;
      }
    }  

    ?>



    


<div class="container ml-4">

<h4>Cartão Fidelidade</h4>
<span>A cada <?php echo $total_cartoes_troca ?> compras no site você ganha uma bebida!!</span><br>

<?php if($carimbos == 0){ ?>
  <small><span class="text-muted">Faça já a sua primeira compra no site e comece a preencher seu cartão!!</span></small><br>
<?php } ?>
<br>

<span><b>Como Funciona?</b></span><br>
 <small><span class="text-muted">Após efetuar <?php echo $total_cartoes_troca ?> compras no site você ganhará <?php echo $trocar_por ?> gratis na sua próxima compra!</span></small>

<br><br>

<div class="row">

  <?php 
for ($i=1; $i <= $total_cartoes_troca; $i++) { 
  if($i <= $carimbos){
    $img = 'carimbado.png';
  }else{
    $img = 'nao-carimbado.png';
  }
 ?>


    <div class="col-md-2 ml-2 " align="center">
        <img src="../images/<?php echo $img ?>" width="180">
      </div>

 <?php } ?>
     

 

</div>
 


 

</div>

     

