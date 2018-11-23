-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 23/11/2018 às 10:00
-- Versão do servidor: 10.0.31-MariaDB
-- Versão do PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `servelo_drev`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `app_processamento`
--

CREATE TABLE `app_processamento` (
  `processamento_id` int(11) NOT NULL,
  `processamento_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `processamento_title` varchar(255) DEFAULT NULL,
  `processamento_name` varchar(255) DEFAULT NULL,
  `processamento_file_upload` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `app_regra`
--

CREATE TABLE `app_regra` (
  `regra_id` int(11) NOT NULL,
  `regra_content` longtext,
  `regra_suporte` float DEFAULT NULL,
  `regra_confianca` float DEFAULT NULL,
  `regra_nome` varchar(255) DEFAULT NULL,
  `regra_qtd` int(11) DEFAULT NULL,
  `regra_excecao` varchar(255) NOT NULL,
  `regra_condicao` varchar(512) NOT NULL,
  `processamento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `app_user`
--

CREATE TABLE `app_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` text,
  `user_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `app_processamento`
--
ALTER TABLE `app_processamento`
  ADD PRIMARY KEY (`processamento_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `app_regra`
--
ALTER TABLE `app_regra`
  ADD PRIMARY KEY (`regra_id`),
  ADD KEY `processamento_id` (`processamento_id`);

--
-- Índices de tabela `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `app_processamento`
--
ALTER TABLE `app_processamento`
  MODIFY `processamento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT de tabela `app_regra`
--
ALTER TABLE `app_regra`
  MODIFY `regra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228309;
--
-- AUTO_INCREMENT de tabela `app_user`
--
ALTER TABLE `app_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `app_processamento`
--
ALTER TABLE `app_processamento`
  ADD CONSTRAINT `app_processamento_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`);

--
-- Restrições para tabelas `app_regra`
--
ALTER TABLE `app_regra`
  ADD CONSTRAINT `app_regra_ibfk_1` FOREIGN KEY (`processamento_id`) REFERENCES `app_processamento` (`processamento_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
