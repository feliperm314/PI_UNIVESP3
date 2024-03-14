<?php 

require_once("../../conexao.php");
$pagina = 'pedidos';


$id_venda = $_POST['id'];


echo '

<div class="">';


            $res_adc = $pdo->query("SELECT * from carrinho where id_venda = '$id_venda' order by id asc");
            $dados_adc = $res_adc->fetchAll(PDO::FETCH_ASSOC);
            $linhas = count($dados_adc);
            for ($i_adc=0; $i_adc < count($dados_adc); $i_adc++) { 
              foreach ($dados_adc[$i_adc] as $key => $value) {
              }

              $id_produto = $dados_adc[$i_adc]['id_produto']; 
              $quantidade = $dados_adc[$i_adc]['quantidade'];
              $id_carrinho = $dados_adc[$i_adc]['id'];


              $res_p = $pdo->query("SELECT * from produtos where id = '$id_produto' ");
              $dados_p = $res_p->fetchAll(PDO::FETCH_ASSOC);
              $nome_produto = $dados_p[0]['nome'];  
              $valor = $dados_p[0]['valor'];
              $imagem = $dados_p[0]['imagem'];
              $total_item = $valor * $quantidade;
              $adc_sabor = $dados_p[0]['adicional'];


              //verificar se o produto é pizza com mais de um sabor
        $total_sab = 0;
        if($adc_sabor == 'Sim'){
          

          $res_sab = $pdo->query("SELECT * from sabores_itens where id_car = '$id_carrinho'");
          $dados_sab = $res_sab->fetchAll(PDO::FETCH_ASSOC);

          for ($i_sab=0; $i_sab < count($dados_sab); $i_sab++) { 
            foreach ($dados_sab[$i_sab] as $key => $value) {
            }

            $id_sab = $dados_sab[$i_sab]['id_sab'];
            $id_item_sab = $dados_sab[$i_sab]['id'];
            $res2_sab = $pdo->query("SELECT * from sabores where id = '$id_sab'");
            $dados2_sab = $res2_sab->fetchAll(PDO::FETCH_ASSOC);
            $nome_sab = $dados2_sab[0]['nome'];
            $valor_sab = $dados2_sab[0]['valor'];
            @$total_sab = @$total_sab + $valor_sab;

            if(@count($dados_sab > 1)){
              if($i_sab == 0){
              @$nome_sab2 = @$nome_sab2 .''.$nome_sab .' / ';
              }else{
                @$nome_sab2 = @$nome_sab2 .''.$nome_sab;
              }
            }else{
              @$nome_sab2 = @$nome_sab;
            }
            

            

          }


        }else{
          @$nome_sab2 = "";
        }

        
              

             echo '
             <table class="table">
              <tr>
              <td><img src="../images/produtos/'.$imagem.'" width="50"></td>
              <td><h5>'.$quantidade.' - ' .$nome_produto.'</h5>
              '.$nome_sab2.'</td>
              <td>';
                
              $total_adc = 0;
              $res = $pdo->query("SELECT * from adicionais_itens where id_car = '$id_carrinho'");
          $dados = $res->fetchAll(PDO::FETCH_ASSOC);
          for ($i=0; $i < count($dados); $i++) { 
            foreach ($dados[$i] as $key => $value) {
            }

       $id_adc = $dados[$i]['id_adc'];
       $id_item_adc = $dados[$i]['id'];
       $res2 = $pdo->query("SELECT * from adicionais where id = '$id_adc'");
        $dados2 = $res2->fetchAll(PDO::FETCH_ASSOC);
        $nome_adc = $dados2[0]['nome'];
      $valor_adc = $dados2[0]['valor'];
      @$total_adc = @$total_adc + $valor_adc;
      
      $valor_adc2 = number_format( $valor_adc , 2, ',', '.');

    echo '<span> <i class="fas fa-check"></i> '. $nome_adc . ' - R$ ' . $valor_adc2 .'</span><br> ';


    

}

      $total_item = $total_item + @$total_adc + @$total_sab;
     $total_item = number_format( $total_item , 2, ',', '.');

              echo '</td>
              <td><h5>R$ '.$total_item .'</h5></td>
              <td></td>
              </tr>
             </table>
              
              ';


             }

             echo ' 

         
         
        </div>

';


?>