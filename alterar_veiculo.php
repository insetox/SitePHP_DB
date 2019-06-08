<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Editar Veiculo</title>
  </head>
  <body>
  <?php
    include "config.php";
    include "classVeiculo.php";
    
    $veiculo = new Carro( DB_STRING, DB_USER, DB_PASS);

    if($veiculo->getfotonome1() == null){
        $mime="";
    }else{
        if(strpos($_FILES["fotonome1"]['tmp_name'],"jpge") == true || strpos($_FILES["fotonome1"]['tmp_name'],"jpg") == true)
            $mime = "image/jpeg";
        else 
            $mime = "image/png";
    }
    
    $alterar = @$_GET['alterar'];

    if($alterar != "" ){

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
    $veiculo->Alterar($alterar);

    $ativado = $veiculo->Getativo() ? "Sim":"Não";

    echo "<script>alert('Veiculo alterado com sucesso!');</script>";
 echo"
<table>
    <th>Informações do Veiculo</th>
        <tr>
            <td>Codigo Veiculo: </td>
            <td>".$alterar."</td>
        </tr>
        <tr>
            <td>Modelo: </td>
            <td>".$veiculo->Getmodelo()."</td>
        </tr>
        <tr>
            <td>Marca: </td>
            <td>". $veiculo->Getmarca()."</td>
        </tr>
        <tr>
            <td>Descrição: </td>
            <td>".$veiculo->Getdescricao()."</td>
        </tr>
        <tr>
            <td>Portas: </td>
            <td>".$veiculo->Getportas()."</td>
        </tr>
        <tr>
            <td>Ano de Fabricação: </td>
            <td>".$veiculo->Getano_fab()."</td>
        </tr>
        <tr>
            <td>Ano do Modelo: </td>
            <td>".$veiculo->Getano_mod()."</td>
        </tr>
        <tr>
            <td>Cor: </td>
            <td>".$veiculo->Getcor()."</td>
        </tr>
        <tr>
            <td>KM: </td>
            <td>".$veiculo->Getkm()."</td>
        </tr>
        <tr>
            <td>Placa: </td>
            <td>".$veiculo->Getplaca()."</td>
        </tr>
        <tr>
            <td>Valor: </td>
            <td>".$veiculo->Getvalor()."</td>
        </tr>
        <tr>
            <td>Observação: </td>
            <td>".$veiculo->Getobs()."</td>
        </tr>
        <tr>
            <td>data da Inclusão: </td>
            <td>".$veiculo->Getdtinclu()."</td>
        </tr>  
        <tr>
            <td>Ativo: </td>
            <td>".$ativado."</td>
        </tr>
</table>";

echo '<img src="'.$veiculo->getfotonome1().'">'; // mostra a imagem

echo "<a href='consultar_veiculo.php'> <== Voltar</a>";

   }
  
    $alt = @$_GET['id'];

if($alt != "" ){
    
   $veiculo = new Carro (DB_STRING, DB_USER, DB_PASS);
    if( $veiculo->Consultar($alt) )
      {
        ?>
        <form action="./alterar_veiculo.php?alterar=<?php echo $alt ?>" method="POST" enctype="multipart/form-data">
          <table>
            <th>Alterar Veiculo</th>
            <tr>
              <td><label>Código: </label></td>
              <td><label><?php echo $alt ?></label></td>
            </tr>
            <tr>
              <td><label>Modelo: </label></td>
              <td><input type="text" name="modelo" value="<?php echo $veiculo->getmodelo(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Marca: </label></td>
              <td><input type="text" name="marca" value="<?php echo $veiculo->getmarca(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Descrição: </label></td>
              <td><input type="text" name="descricao" value="<?php echo $veiculo->getdescricao(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Portas: </label></td>
              <td><input type="number" name="portas" value="<?php echo $veiculo->getportas(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Ano de fabricação: </label></td>
              <td><input type="text" name="ano_fab" maxlength="4" value="<?php echo $veiculo->getano_fab(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Ano do Modelo: </label></td>
              <td><input type="text" name="ano_mod" maxlength="4" value="<?php echo $veiculo->getano_mod(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Cor: </label></td>
              <td><input type="text" name="cor" value="<?php echo $veiculo->getcor(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Km: </label></td>
              <td><input type="number" name="km" value="<?php echo $veiculo->getkm(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Placa: </label></td>
              <td><input type="text" name="placa" value="<?php echo $veiculo->getplaca(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Valor: </label></td>
              <td><input type="number" name="valor" value="<?php echo $veiculo->getvalor(); ?>" /></td>
            </tr>
            <tr>
              <td><label>Observação: </label></td>
              <td><textarea name="obs" rows="4" cols="50"><?php echo $veiculo->getobs(); ?></textarea></td>
            </tr>
            <tr>
              <td><label>Ativo: </label></td>
              <td><input type="checkbox" name="ativo" <?php  if($veiculo->getativo() == 1) echo "checked"; ?> value="<?php echo $veiculo->getativo();?>" /></td>
            </tr>
            <tr>
              <td><label>Foto: </label></td>
              <td><input type="file" name="fotonome1" accept="image/png,image/jpeg" required value="<?php echo $veiculo->getfotonome1(); ?>" /></td>
            </tr>
            <tr><td><a href='consultar_veiculo.php'> <== Voltar</a> <input type="submit" value="Salvar"></td></tr>
          </table>
        </form>
        <?php echo '<img src="'.$veiculo->getfotonome1().'">';  ?>
      <?php 
       }
       else
       {
           echo "<script>alert('Código do veiculo inválido!');</script>";
           echo "<script>window.location = 'consultar_veiculo.php';</script>";
       }
    }
?>
  </body>
</html>