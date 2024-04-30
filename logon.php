<?php

//Recebendo dados do formulario

$nome = $_POST['login'];
$senha = $_POST['senha'];

//Incluindo arquivo de conexão

include 'conexao.php';

//selecionar os dados no banco de dados 
$select = "SELECT * FROM tb_user WHERE login = '$nome'";

$query= mysqli_query($conexao,$select);

$result = mysqli_fetch_array($query);

//Dados do banco armazenado na variável

$name_banco = $result['login'];
$senha_banco = $result['senha'];

//Comparação para acessar o sistema

if ($nome ==$name_banco && $senha == $senha_banco) {
    header(location: 'C.cliente.php');
} else {

    echo "<script>alert('Usuário Inválido!'; history.back())</script>";

}



?>