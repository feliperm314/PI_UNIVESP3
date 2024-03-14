 <?php 
 $cpf = $_SESSION['cpf_usuario'];
 $res_todos = $pdo->query("SELECT * from vendas where cliente = '$cpf'");
  $dados_total = $res_todos->fetchAll(PDO::FETCH_ASSOC);
  $total_pedidos = count($dados_total);


  $res_todos = $pdo->query("SELECT * from carrinho where cpf = '$cpf' and id_venda != 0");
  $dados_total = $res_todos->fetchAll(PDO::FETCH_ASSOC);
  $total_produtos = count($dados_total);


   $res_todos = $pdo->query("SELECT * from carrinho where cpf = '$cpf' and id_venda = 0");
  $dados_total = $res_todos->fetchAll(PDO::FETCH_ASSOC);
  $total_carrinho = count($dados_total);



    $carimbos = 0;


    $res_todos = $pdo->query("SELECT * from clientes where cpf = '$cpf'");
    $dados_total = $res_todos->fetchAll(PDO::FETCH_ASSOC);
    if (!empty($dados_total)) {
      $carimbos = $dados_total[0]['cartao'];

    }
                                     
   
  ?>


 <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">
           <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-cog"></i></span>

              <div class="info-box-content">
               <span class="info-box-text">Pedidos</span>
                <span class="info-box-number"><?php echo $total_pedidos ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-truck-loading"></i></span>
              

              <div class="info-box-content">
                <span class="info-box-text">Produtos Comprados</span>
                <span class="info-box-number"><?php echo $total_produtos ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-shopping-cart"></i></span>
              

              <div class="info-box-content">
                 <span class="info-box-text">Carrinho</span>
                <span class="info-box-number"><?php echo $total_carrinho ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
             <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-address-card"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Cartão Fidelidade</span>
                <span class="info-box-number"><?php echo $carimbos ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

        
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->

    


<div class="container mt-4 ml-4">

<h4>Cartão Fidelidade</h4>
<span>A cada <?php echo $total_cartoes_troca ?> compras no site você ganha uma bebida!!</span><br>

<?php if($carimbos == 0){ ?>
  <small><span class="text-muted">Faça já a sua primeira compra no site e comece a preencher seu cartão!!</span></small><br>
<?php } ?>
<br>



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

     

