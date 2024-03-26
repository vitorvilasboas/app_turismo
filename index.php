<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/style.css">
  <title>Turismo FSO</title>
</head>

<body>
  
  <?php include 'topo.php'; ?>
  
  <main>
    <div class="content">
      <?php
        if (isset($_GET['p'])) {
          if($_GET['p'] == "home"){
            include 'categorias.php';
          } else if ($_GET['p'] == "local"){
            // include "{$_GET['p']}" . ".php";
            include 'local.php';
          // } else if ($_GET['p'] == "gastronomia"){
          //   include 'categorias/gastronomia.php';
          // } else if ($_GET['p'] == "hotelaria"){
          //   include 'categorias/hotelaria.php';
          // } else if ($_GET['p'] == "lazer"){
          //   include 'categorias/lazer.php';
          // } else if ($_GET['p'] == "eventos"){
          //   include 'categorias/eventos.php';
          // } else if ($_GET['p'] == "atracoes"){
          //   include 'categorias/atracoes.php';
          // } else if ($_GET['p'] == "servicos"){
          //   include 'categorias/servicos.php';
          // } else if ($_GET['p'] == "sobre"){
          //   include 'sobre.php';
          // } else if ($_GET['p'] == "contato"){
          //   include 'contato.php';
          } else {
            include 'pontos.php';
          }
        } else {
          include 'categorias.php';
        }
      ?>
      <div class="mapa">
        <h3>Mapa de Formoso</h3>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d17208.050228662312!2d-49.52239590915116!3d-11.809121363394047!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x933e67d2220a0a55%3A0x5d94ee7800305d73!2sFormoso%20do%20Araguaia%2C%20TO%2C%2077470-000!5e1!3m2!1spt-BR!2sbr!4v1698775200767!5m2!1spt-BR!2sbr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
    </div>
    
  </main>
  
  

  <?php include 'rodape.php'; ?>

  <script src="./js/script.js"></script>

</body>

</html>