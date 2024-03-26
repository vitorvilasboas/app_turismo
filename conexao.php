<?php
$hostname = "localhost";
$bancodedados = "turismofso";
$username = "root";
$password = "";

$conexao = new mysqli($hostname, $username, $password, $bancodedados);

if ($conexao->connect_error) {
    echo "Falha ao conectar: (" . $conexao->connect_error . ") " . $conexao->connect_error;
} 

// // Verifica se a conexão foi bem sucedida
// if (!$conexao) {
//   die("Falha na conexão: " . mysqli_connect_error());
// }


?>
