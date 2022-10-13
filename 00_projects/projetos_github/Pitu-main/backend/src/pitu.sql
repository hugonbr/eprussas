-- phpMyAdmin SQL Dump
-- version 5.2.0-1.fc36
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13-Out-2022 às 17:29
-- Versão do servidor: 10.5.16-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pitu`
--

CREATE DATABASE pitu;
USE pitu;

-- --------------------------------------------------------

--
-- Estrutura da tabela `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `links`
--

INSERT INTO `links` (`id`, `url`, `code`, `hits`, `createdAt`, `updatedAt`) VALUES
(41, 'https://www.google.com/', 'USYLg', 21, '2020-11-30 00:30:13', '2020-11-30 00:30:19'),
(42, 'https://g1.globo.com/', 'qUebk', 3, '2020-11-30 00:36:08', '2020-11-30 00:36:13'),
(43, 'https://www.facebook.com/', 'UZN4X', 10, '2020-11-30 01:23:10', '2020-11-30 01:23:19');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
