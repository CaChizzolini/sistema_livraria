-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23-Abr-2024 às 02:19
-- Versão do servidor: 8.0.27
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_sistema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `cd_cliente` int NOT NULL,
  `nm_cliente` varchar(45) NOT NULL,
  `nm_endereco` varchar(45) NOT NULL,
  `nr_endereco` int NOT NULL,
  `nr_cpf` char(11) NOT NULL,
  `nr_cnpj` char(14) NOT NULL,
  `nr_telefone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`cd_cliente`, `nm_cliente`, `nm_endereco`, `nr_endereco`, `nr_cpf`, `nr_cnpj`, `nr_telefone`) VALUES
(1, 'Gicelly ', 'rua bruna tamagnini de souza ', 880, '1452456875', '42157854257635', '1144524365'),
(2, 'Gicelly ', 'rua bruna tamagnini de souza ', 252, '45785245789', '45217856952', '4154572');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_editora`
--

CREATE TABLE `tb_editora` (
  `cd_editora` int NOT NULL,
  `nm_editora` varchar(45) NOT NULL,
  `nm_endereco` varchar(45) NOT NULL,
  `nr_endereco` int NOT NULL,
  `nm_bairro` varchar(30) NOT NULL,
  `nr_telefone` varchar(11) NOT NULL,
  `nm_gerente` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_user`
--

CREATE TABLE `tb_user` (
  `id_usuario` int NOT NULL,
  `nm_usuario` varchar(45) NOT NULL,
  `nm_setor` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `confirme` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `tb_user`
--

INSERT INTO `tb_user` (`id_usuario`, `nm_usuario`, `nm_setor`, `login`, `senha`, `confirme`) VALUES
(1, 'Gicelly Gomes', 'TI', 'gicellygomes@gmail.com', 'root', '123456'),
(2, 'pão', 'queijo', 'queijopao@gmail.com', '123456', '123456'),
(3, '', '', '', '', ''),
(4, '', '', '', '', ''),
(5, '', '', '', '', ''),
(6, '', '', '', '', ''),
(7, '', '', '', '', ''),
(8, 'gi', 'ti', 'gi@gmail.com', '12345', '12345'),
(9, '', '', '', '', ''),
(10, 'gi', 'ti', 'gi@gmail.com', '123', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`cd_cliente`);

--
-- Índices para tabela `tb_editora`
--
ALTER TABLE `tb_editora`
  ADD PRIMARY KEY (`cd_editora`);

--
-- Índices para tabela `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `cd_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_editora`
--
ALTER TABLE `tb_editora`
  MODIFY `cd_editora` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;