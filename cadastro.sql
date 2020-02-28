-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 28-Fev-2020 às 13:52
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `idcurso` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totaulas` int(10) UNSIGNED DEFAULT NULL,
  `ano` year(4) DEFAULT 2016,
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, 2014),
(2, 'Algoritmos', 'Lógica de programação', 20, 15, 2014),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, 2015),
(5, 'Java', 'Introdução à linguagem Java', 40, 29, 2015),
(6, 'MySQL', 'Banco de Dados MySQL', 30, 15, 2016),
(7, 'Word', 'Curso completo de Word', 40, 30, 2016);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
CREATE TABLE IF NOT EXISTS `gafanhotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `prof`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'Solange', 'Programador', '1986-10-16', 'F', '60.20', '1.73', 'Brasil'),
(2, 'Danilo', 'Desenvolvedor', '1985-12-02', 'M', '80.20', '1.85', 'Brasil'),
(3, 'Cláudio', 'Programador', '1975-11-02', 'M', '86.20', '1.85', 'Brasil'),
(4, 'Pedro Silva', 'Programador', '0199-12-03', 'M', '89.00', '2.00', 'Brasil'),
(5, 'Janína', 'Programador', '1987-11-12', 'F', '75.40', '1.66', 'EUA'),
(6, 'Silvana Albuquerque', 'Programador', '1999-05-22', 'F', '56.00', '1.50', 'Brasil'),
(8, 'Eliana', 'Costureira', '2019-03-12', 'F', '85.00', '1.50', 'Brasil'),
(9, 'Zefa', 'Costureira', '2019-03-12', 'F', '85.00', '1.50', 'Brasil'),
(10, 'Zefa', 'Costureira', '2019-03-12', 'F', '85.00', '1.50', 'Brasil'),
(11, 'Zenaidde', 'Costureira', '2019-03-12', 'F', '85.00', '1.50', 'Brasil'),
(12, 'João da Silva', 'Costureiro', '2001-01-29', 'M', '80.50', '1.65', 'Bolívia'),
(13, 'João', 'Costureiro', '2001-01-29', 'M', '80.50', '1.65', 'Bolívia'),
(14, 'Kévyn', 'Ajudante', '2004-08-02', 'M', '105.00', '1.65', 'Brasil'),
(15, 'Sônia', 'Dona de casa', '2000-01-29', 'F', '60.50', '1.55', 'Angola'),
(16, 'Joana', 'Motorista', '1999-01-30', 'F', '110.00', '1.75', 'Brasil'),
(17, 'Abner', 'Motorista', '2018-01-02', 'M', '85.00', '1.60', 'Brasil'),
(18, 'Manoel', 'Pedreiro', '2016-01-09', 'M', '85.00', '1.60', 'Brasil'),
(19, 'Roberto', 'Pedreiro', '2016-01-09', 'M', '85.00', '1.60', 'Bolívia'),
(20, 'Norberto', 'Gerente', '2010-01-09', 'M', '150.00', '1.60', 'EUA'),
(21, 'Núbia', 'Gerente', '2010-01-09', 'M', '120.00', '1.60', 'Bolívia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
CREATE TABLE IF NOT EXISTS `pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'Solange', '1986-10-16', 'F', '60.20', '1.73', 'Brasil'),
(2, 'Danilo', '1985-12-02', 'M', '80.20', '1.85', 'Brasil'),
(3, 'Cládio', '1975-11-02', 'M', '86.20', '1.85', 'Brasil'),
(4, 'Pedro', '0199-12-03', 'M', '85.00', '2.00', 'Brasil'),
(5, 'Janína', '1987-11-12', 'F', '75.40', '1.66', 'EUA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

DROP TABLE IF EXISTS `teste`;
CREATE TABLE IF NOT EXISTS `teste` (
  `id` int(11) DEFAULT NULL,
  `nome` varchar(10) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `teste`
--

INSERT INTO `teste` (`id`, `nome`, `idade`) VALUES
(1, 'Pedro', 22),
(2, 'Maria', 12),
(3, 'Maricota', 77);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
