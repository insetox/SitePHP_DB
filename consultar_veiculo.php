<!DOCTYPE html>
<html>
<head>
<title>Indice Site Veiculos</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
</head>

<body>

    <?php 
    include "config.php";
    include "classVeiculo.php";
    $veiculo = new Carro ( DB_STRING, DB_USER, DB_PASS);
    
    $quant = $veiculo->Contar();

    
    $exc = @$_GET['excluir'];
if(!$exc=="");
$veiculo->Excluir($exc);

    
    $pag = @$_GET['pag'];
    if( $pag == "")		
        $pag = 1;
            
    $limitePaginas = 5;
    $inicio = (($pag-1) * $limitePaginas) ;	
    $paginas = ceil($quant / $limitePaginas);	
      
echo "<h1>".$quant." - Veiculos Cadastrados</h1>";
echo "<table border='1' style='text-align: center;'>
		<tr>
			<td>Código</td>
            <td>Modelo</td>
            <td>Descrição</td>
            <td>Foto Principal</td>
			<td>Ações</td>
        </tr>";

//====================================== Menu cadastrar

$result = $veiculo->ListarPag($inicio, $limitePaginas);

if (isset($result))
  {
    while ($Linha = $result->fetchObject())
    {
      echo "<tr><td>".$Linha->codigovei."</td> <td>".$Linha->modelo."</td> <td>".$Linha->descricao."</td> <td><img src='".$Linha->fotonome1."' style='max-width:180px;'></td>";
      echo "<td>";
      echo "<a href='./novo_veiculo.php'>Novo</a> ";
      echo "<a href='./alterar_veiculo.php?id=".$Linha->codigovei."'>Editar</a> ";
      echo "<a href='./consultar_veiculo.php?excluir=".$Linha->codigovei."'>Excluir</a>";
      echo "</td></tr>";
    }
  }
  else
  {
      echo "<tr><td colspan='4'>Não há dados para listar!</td></tr>";
  }
  echo "</table>";
  echo "<a href='index.php'> <== Voltar</a>";
/*
  //======================================   Produtos em Destaque
  $result2 = $veiculo->Listar(); //listar todos carros tipo section

  if (isset($result2))
  {
    echo "<div class='section group'>"; // inicia section
    while ($Linha = $result2->fetchObject())
    {
        echo "<div class='col_1_of_4 span_1_of_4'><img src='data:;base64,".$Linha->fotonome1."'/>";
        echo "<div class='grid_desc'><p class='title'>".$Linha->descricao."</p><p class='title1'>".$Linha->obs."</p>";
        echo "<div class='price1' style='height: 19px;'><span class='reducedfrom'>".$Linha->valor."</span><span class='actual'>".$Linha->valor."</span></div></div>";
        echo "<div class='Details'><a href='#' title='Mais detalhes' class='button'>Details<span></span></a></div></div>";
    }
    echo "<div class='clear'></div></div>"; // fecha section
  }
//======================================

//====================================== Services
  $result3 = $veiculo->Listar(); //listar todos carros tipo grid 

  if (isset($result3))
  {
    echo "<div class='gallery-grids'>"; // inicia section
    while ($Linha = $result3->fetchObject())
    {
        echo "<div class='gallery-grid'><a href='#' class='swipebox'><img src='data:;base64,".$Linha->fotonome1."'></a>";
        echo "<h4>Aenean nonummy hendrerit</h4><p>observações</p>";
        echo "<p><a href='#' class='btn btn-primary'>Ler mais</a></p></div>";
    }
    echo "<div class='clear'></div></div>"; // fecha section
  }
  */
//======================================
?>
<div id="paginacao"><?php for($i = 1; $i <= $paginas; $i++) echo "<span class='paginacao'><a href='./consultar_veiculo.php?pag=$i'>$i</a>  - </span>"; ?> </div>
</body>
</html>