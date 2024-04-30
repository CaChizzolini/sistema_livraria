<?php
//Recebendo dados do formulário

$nome = $_POST['nome'];
$setor = $_POST['setor'];
$login = $_POST['login'];
$senha = $_POST['senha'];

//echo "$nome";
//echo "<br>";
//echo "$setor";
//echo "<br>";
//echo "$login";
//echo "<br>";
//echo "$senha";
//echo "<br>";

//Inserindo dados do banco 

include 'conexao.php';

//Dados para inserir os dados
$insert = "INSERT INTO tb_user VALUES (NULL,'$nome, '$setor', '$login', '$senha') ";

//Inserindo os dados no banco de dados utilizando a função muysqli

$query = mysqli_query($conexao, $insert);

Echo "Inserido com Sucesso";


?>
