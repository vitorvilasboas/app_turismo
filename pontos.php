<?php
  require_once "conexao.php";
  if (mysqli_ping($conexao)) { // verifica se Conexão MySQL está ativa
    $parametro = strtoupper($_GET['p']);
    $sql = "SELECT * FROM categoria where cat_titulo='$parametro'"; // "cat_titulo='{$_GET['p']}
    $result = mysqli_query($conexao, $sql);
    if (mysqli_num_rows($result) > 0) { // Verifica se a consulta retornou resultados
      while($row = mysqli_fetch_assoc($result)) { // Loop através dos resultados e exibe cada linha
?>
        <h3><?=strtoupper($row['cat_titulo'])?></h3>
        <p><?php echo $row["cat_sobre"]; ?></p>

        <h3>Pontos Turísticos</h3>
        <div class="categorias">

        <?php
          $sql_pts = "SELECT * FROM local where loc_cat_id='{$row['cat_id']}'"; // "cat_titulo='{$_GET['p']}
          $result_pts = mysqli_query($conexao, $sql_pts);
          $cont = 0;
          if (mysqli_num_rows($result_pts) > 0) {
            while($row_pts = mysqli_fetch_assoc($result_pts)) {
        ?>
              <a href="index.php?p=local"> <!-- index.php?p=strtolower($row_pts['loc_titulo']) -->
                <div class="categoria">
                  <!-- <div class="categoria_img" id="<?php // echo strtolower($row_pts['loc_titulo']) . '_img';?>"></div> -->
                  <div class="categoria_img fade" style="background-image: url('<?php echo './img/categorias/' . 
                  strtolower($row['cat_tag']) . '/' . strtolower($row_pts['loc_tag']) . '/imagem01.jpg';?>')"></div>
                  <div class="categoria_img fade" style="background-image: url('<?php echo './img/categorias/' . 
                  strtolower($row['cat_tag']) . '/' . strtolower($row_pts['loc_tag']) . '/imagem02.jpg';?>')"></div>
                  <h3><?=strtoupper($row_pts['loc_titulo'])?></h3>
                  <p>
                    <?= $row_pts['loc_descricao'] ?>
                  </p>
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
            echo "Não foram encontrados pontos turísticos da categoria.";
          }
?>
        </div>
<?php
      }
    } else {
      echo "Não foram encontradas categorias.";
    }
  } else {
    echo "Conexão MySQL está inativa.";
  }
  mysqli_close($conexao);
?>



<!-- ATRAÇÕES

Ilha do Bananal
A maior ilha fluvial do mundo, situada entre os rios Javaé e Araguaia, é o lar de povos indígenas Javaé e Karajá.

Lago Calumbi 1
lago do calumbi projetado para reservar água para o plantio de arroz no Projeto Rio Formoso.

Lago Municipal
Lago urbano com uma pista de caminhada na margem.

Lago Taboca
Ponto para a pesca de tucunaré, pirarucu, pintado, aruanã, etc.

Lagoão
Um lago criado pelo o Projeto Rio Formoso

Lago das Piranhas
Lago para pesca, rodeado de verde

Praia recanto da ilha
Rio Javaé próximo a ilha com muita água

Rio Formoso
Rio que denomina a cidade, ponto privilegiado de observação de fauna, incluindo botos, ararinhas, capivaras, além de diversos pássaros

Rio Javaé
Um dos rios que delimita a Ilha do Bananal, é base da organização do Povo Javaé. Tem como característica diminuir o volume das águas no período de seca (maio a outubro) e o acúmulo de areia no seu leito

Praia Grande
Rio Javaé com muita praia e natureza próximo a Ilha do Bananal

Lago Calumbi 2 
Lago do Projeto Rio Formoso, criado para reservar água.

Rio Xavante
Rio próximo da cidade com sua beleza natural -->




<!-- HOTELARIA

Hotel Girassol
Bom atendimento e conforto
          
Hotel Goldem
Conforto e comodidade
          
Hotel Jiripoca
Conforto e qualidade de atendimento
          
Hotel Serra Dourada
Conforto e qualidade na sua hospedagem em Formoso do Araguaia

Pousada Triuno
Muito conforto e infraestrutura na área rural

Toca do Tucunaré
Hospedagem e Pesca exportiva -->


<!-- LAZER

Rancho do Bita
Ponto de encontro de pescadores com atendimento famoso em toda a região.

Estádio Municipal

 -->


<!-- SERVIÇOS 

Oficina
farmacia
Borracharia
Limpeza
Mercados
Posto de combustiveis
 -->


 <!-- EVENTOS
Evento A
Veniam illo atque placeat, totam, hic ipsam quidem repellendus velit doloribus neque -->