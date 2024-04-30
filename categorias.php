<?php
  require_once "conexao.php";
?>

<h3>Categorias</h3>
<div class="categorias">

  <?php
    if (mysqli_ping($conexao)) { // verifica se Conexão MySQL está ativa

      $sql = "SELECT * FROM categoria";     
      $result = mysqli_query($conexao, $sql);

      if (mysqli_num_rows($result) > 0) { // Verifica se a consulta retornou resultados
        $cont = 0;
        while($row = mysqli_fetch_assoc($result)) { // Loop através dos resultados e exibe cada linha
          // echo "ID: " . $row["cat_id"] . " - Titulo: " . $row["cat_titulo"] . "<br>";
  ?>
          
          
          
          
          
          <a href="index.php?p=GASTRONOMIA"> <!-- <a href="./categorias/gastronomia.html"> -->
            <div class="categoria">
              <div class="categoria_img" style="background-image: url('<?php echo './img/categorias/' . strtolower($row['cat_tag']) . '/thumbs/imagem01.jpg';?>')"></div>
              <div class="categoria_img" style="background-image: url('<?php echo './img/categorias/' . strtolower($row['cat_tag']) . '/thumbs/imagem02.jpg';?>')"></div>
              <h3><?=strtoupper($row['cat_titulo'])?></h3>
              <p><?= $row['cat_descricao'] ?></p>
            </div>
          </a>









          <?php 
            $cont++;
            if ($cont % 3 == 0) { // Verifica se o contador é um múltiplo de três
          ?>
              </div>
              <div class="categorias">
  <?php
            }
        } 
      } else {
        echo "Não foram encontrados resultados.";
      }
    } else {
      echo "Conexão MySQL está inativa.";
    }
    mysqli_close($conexao);
  ?>
</div>