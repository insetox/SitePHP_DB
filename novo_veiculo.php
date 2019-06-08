<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Novo veiculo</title>


  </head>
  <body>
  <?php 
  include "config.php";
  include "classVeiculo.php";

  $veiculo = new Carro ( DB_STRING, DB_USER, DB_PASS);
	$quant = $veiculo->ultimoID();
  
if(isset($_GET['incluir']))		
{  
  
  $veiculo->Setmodelo($_POST["modelo"]);
  $veiculo->Setmarca($_POST["marca"]);
  $veiculo->Setdescricao($_POST["descricao"]);
  $veiculo->Setportas($_POST["portas"]);
  $veiculo->Setano_fab($_POST["ano_fab"]);
  $veiculo->Setano_mod($_POST["ano_mod"]);
  $veiculo->Setcor($_POST["cor"]);
  $veiculo->Setkm($_POST["km"]);
  $veiculo->Setplaca($_POST["placa"]);
  $veiculo->Setvalor($_POST["valor"]);
  $veiculo->Setobs($_POST["obs"]);
  $veiculo->Setdtinclu(date("Y/m/d")); // data atual registrada automaticamente
  $veiculo->Setativo(isset($_POST["ativo"])? 1: 0);
  //$veiculo->Setfotonome1(base64_encode(file_get_contents($_FILES["fotonome1"]["tmp_name"])));

  $veiculo->Setfotonome1("img/".$_FILES["fotonome1"]["name"]);

      $rsp = $veiculo->Incluir();
      if( $rsp ){
        echo "<script>alert('Cadastrado com Sucesso!');</script>";
        echo "<script>window.location = 'consultar_veiculo.php';</script>";
      }else{
        echo "<script>alert('Erro não foi cadastrado!');</script>";
        echo "<script>window.location = 'consultar_veiculo.php';</script>";
      }
}
?>
    <form action="./novo_veiculo.php?incluir" method="POST" enctype="multipart/form-data">
      <table>
        <th>Incluir veiculo</th>
        <tr>
              <td><label>Código: </label></td>
              <td><label><?php echo $quant?></label></td>
            </tr>
        <tr>
          <td><label>Modelo: </label></td>
          <td><input type="text" name="modelo" /></td>
        </tr>
        <tr>
          <td><label>Marca: </label></td>
          <td><input type="text" name="marca" /></td>
        </tr>
        <tr>
          <td><label>Descrição: </label></td>
          <td><input type="text" name="descricao" /></td>
        </tr>
        <td><label>Portas: </label></td>
          <td><input type="number" name="portas" /></td>
        </tr>
        <tr>
          <td><label>Ano de Fabricação: </label></td>
          <td><input type="text" name="ano_fab"  maxlength="4"/></td>
        </tr>
        <tr>
          <td><label>Ano do Modelo: </label></td>
          <td><input type="text" name="ano_mod"  maxlength="4"/></td>
        </tr>
        <td><label>Cor: </label></td>
          <td><input type="text" name="cor" /></td>
        </tr>
        <tr>
          <td><label>KM: </label></td>
          <td><input type="number" name="km" /></td>
        </tr>
        <tr>
          <td><label>Placa: </label></td>
          <td><input type="text" name="placa" /></td>
        </tr>
        <td><label>Valor: </label></td>
          <td><input type="number" name="valor" /></td>
        </tr>
        <tr>
          <td><label>Observação: </label></td>
          <td><textarea name="obs" rows="4" cols="50"></textarea></td>
        </tr>
        <td><label>ativo: </label></td>
          <td><input type="checkbox" name="ativo"/></td>
        </tr>
        <tr>
          <td><label>Foto 1: </label></td>
          <td><input type="file" name="fotonome1" accept="image/png,image/jpeg" /></td>

        </tr>
        <tr><td><a href='consultar_veiculo.php'> <== Voltar</a> <input type="submit" value="Salvar"></td></tr>
      </table>
    </form>
  </body>
</html>