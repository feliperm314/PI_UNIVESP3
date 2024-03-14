 <?php 



//VERIFICAR SE TEM REGISTROS NO CARRINHO COM MAIS DE XX DIAS
$data_carrinho = date('Y-m-d', strtotime("-".$dias_limpar_carrinho." days"));
$res = $pdo->query("SELECT * from carrinho where data <= '$data_carrinho' and id_venda = 0");
$dados = $res->fetchAll(PDO::FETCH_ASSOC);
for ($i=0; $i < count($dados); $i++) { 
 foreach ($dados[$i] as $key => $value) {
 }

 $id = $dados[$i]['id'];


 $query_c = $pdo->query("SELECT * from adicionais_itens where id_car = '$id'");
$res_c = $query_c->fetchAll(PDO::FETCH_ASSOC);
$total_itens_car = @count($res_c);

if($total_itens_car > 0){

     $query4 = $pdo->query("SELECT * from adicionais_itens where id_car = '$id'");
    $res4 = $query4->fetchAll(PDO::FETCH_ASSOC);
    
    
    for ($i2=0; $i2 < count($res4); $i2++) { 
        foreach ($res4[$i2] as $key => $value) {
    }

    $pdo->query("DELETE FROM adicionais_itens where id_car = '$id'");

  
  
}

}

 $pdo->query("DELETE FROM carrinho where id = '$id'");
}



 $res_todos = $pdo->query("SELECT * from clientes");
  $dados_total = $res_todos->fetchAll(PDO::FETCH_ASSOC);
  $total_clientes = count($dados_total);


  $res_todos = $pdo->query("SELECT * from vendas where data = curDate()");
  $dados_total = $res_todos->fetchAll(PDO::FETCH_ASSOC);
  $total_pedidos_dia = count($dados_total);


$res_todos = $pdo->query("SELECT * from vendas where data = curDate() and status != 'Concluído' ");
  $dados_total = $res_todos->fetchAll(PDO::FETCH_ASSOC);
  $total_pedidos_aguardando = count($dados_total);





$res = $pdo->query("SELECT * from vendas where data = curDate() and pago = 'Sim'");
$dados = $res->fetchAll(PDO::FETCH_ASSOC);
$total_dia = 0;

for ($i=0; $i < count($dados); $i++) { 
  foreach ($dados[$i] as $key => $value) {
  }

  $id = $dados[$i]['id']; 
  $valor = $dados[$i]['total'];
  

 $total_dia = $total_dia + $valor;
 
}


  ?>


 <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Clientes</span>
                <span class="info-box-number">
                  <?php echo $total_clientes ?>
                  <small></small>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Pedidos Hoje</span>
                <span class="info-box-number"><?php echo $total_pedidos_dia ?></span>
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
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-truck-loading"></i></span>
              

              <div class="info-box-content">
                <span class="info-box-text">Entregas Aguardando</span>
                <span class="info-box-number"><?php echo $total_pedidos_aguardando ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-dollar-sign"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Vendido</span>
                <span class="info-box-number">R$ <?php echo $total_dia ?></span>
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




    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">

          <?php 

          $res = $pdo->query("SELECT * from vendas where data = curDate() and status = 'Iniciado' order by id desc LIMIT 8");
          $dados = $res->fetchAll(PDO::FETCH_ASSOC);

          for ($i=0; $i < count($dados); $i++) { 
      foreach ($dados[$i] as $key => $value) {
      }

      $id = $dados[$i]['id']; 
      $hora = $dados[$i]['hora'];
      $total = $dados[$i]['total'];
      $tipo_pgto = $dados[$i]['tipo_pgto'];
      $status = $dados[$i]['status'];
      $pago = $dados[$i]['pago'];
      $troco = $dados[$i]['troco'];
      $cliente = $dados[$i]['cliente'];
      $obs = $dados[$i]['obs'];

         $res = $pdo->query("SELECT * from clientes where cpf = '$cliente'");
          $dados = $res->fetchAll(PDO::FETCH_ASSOC);
          //$nome_cliente = $dados[0]['nome'];
          if (isset($dados_total[0]['nome'])) {
          // Acesse a chave 'nome' se ela existir
            $nome_cliente = $dados_total[0]['nome'];
          } else {
          // Lide com a situação em que a chave 'nome' não está definida
            $nome_cliente = "Nome não disponível";
          }

           ?>
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-shopping-cart"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Pedido <?php echo $id ?></span>
                <span class="info-box-text">Hora <?php echo $hora ?></span>
                <span class="info-box-text"><?php echo $nome_cliente ?></span>
                <span class="info-box-number">
                  Total - <?php echo $total ?>

                  <small></small>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>

        <?php } ?>


        </div>
      </div>
    </section>



     