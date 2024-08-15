-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/08/2024 às 02:21
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mercearia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinhos_de_compras`
--

CREATE TABLE `carrinhos_de_compras` (
  `Carrinho_id` int(11) NOT NULL,
  `CPF` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carrinhos_de_compras`
--
ALTER TABLE `carrinhos_de_compras`
  ADD PRIMARY KEY (`Carrinho_id`),
  ADD KEY `fk_cpf` (`CPF`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `carrinhos_de_compras`
--
ALTER TABLE `carrinhos_de_compras`
  ADD CONSTRAINT `carrinhos_de_compras_ibfk_1` FOREIGN KEY (`CPF`) REFERENCES `clientes` (`CPF`),
  ADD CONSTRAINT `fk_cpf` FOREIGN KEY (`CPF`) REFERENCES `clientes` (`CPF`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
