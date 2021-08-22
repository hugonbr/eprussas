-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 08-Nov-2019 às 10:59
-- Versão do servidor: 5.7.23
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gemodoc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) NOT NULL,
  `usuario_login` varchar(255) NOT NULL,
  PRIMARY KEY (`idadmin`,`usuario_login`),
  KEY `fk_admin_usuario_idx` (`usuario_login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`idadmin`, `tipo`, `usuario_login`) VALUES
(1, 'Diretor', 'tadeu'),
(2, 'Gestor', 'jarlenice'),
(3, 'Gestor', 'thiago'),
(4, 'Secretário', 'joãovitor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_altera_oc`
--

DROP TABLE IF EXISTS `adm_altera_oc`;
CREATE TABLE IF NOT EXISTS `adm_altera_oc` (
  `admin_idadmin` int(11) NOT NULL,
  `ocorrencia_idocorrencia` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `motivo` varchar(255) NOT NULL,
  KEY `fk_admin_has_ocorrencia_ocorrencia1_idx` (`ocorrencia_idocorrencia`),
  KEY `fk_admin_has_ocorrencia_admin1_idx` (`admin_idadmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `idaluno` int(11) NOT NULL AUTO_INCREMENT,
  `serie` int(11) NOT NULL,
  `ano_inicio` int(11) NOT NULL,
  `ano_fim` int(11) DEFAULT NULL,
  `usuario_login` varchar(255) NOT NULL,
  `responsavel_idresponsavel` int(11) NOT NULL,
  `turma_idturma` int(11) NOT NULL,
  PRIMARY KEY (`idaluno`,`usuario_login`),
  KEY `fk_aluno_usuario1_idx` (`usuario_login`),
  KEY `fk_aluno_responsavel1_idx` (`responsavel_idresponsavel`),
  KEY `fk_aluno_turma1_idx` (`turma_idturma`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idaluno`, `serie`, `ano_inicio`, `ano_fim`, `usuario_login`, `responsavel_idresponsavel`, `turma_idturma`) VALUES
(1, 1, 2019, NULL, 'pedro', 1, 1),
(2, 1, 2018, NULL, 'paulo', 2, 1),
(3, 3, 2017, NULL, 'carla', 3, 2),
(4, 3, 2017, NULL, 'ana', 4, 3),
(5, 1, 2019, NULL, 'lucas', 5, 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `alunos_max_num_oc`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `alunos_max_num_oc`;
CREATE TABLE IF NOT EXISTS `alunos_max_num_oc` (
`aluno_idaluno` int(11)
,`quant_oc` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `maior_quant_oc`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `maior_quant_oc`;
CREATE TABLE IF NOT EXISTS `maior_quant_oc` (
`maior` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
--

DROP TABLE IF EXISTS `ocorrencia`;
CREATE TABLE IF NOT EXISTS `ocorrencia` (
  `idocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `tipo_ocorrencia_idtipo_ocorrencia` int(11) NOT NULL,
  `professor_idprofessor` int(11) NOT NULL,
  `aluno_idaluno` int(11) NOT NULL,
  `cancelada` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idocorrencia`),
  KEY `fk_ocorrencia_tipo_ocorrencia1_idx` (`tipo_ocorrencia_idtipo_ocorrencia`),
  KEY `fk_ocorrencia_professor1_idx` (`professor_idprofessor`),
  KEY `fk_ocorrencia_aluno1_idx` (`aluno_idaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`idocorrencia`, `data`, `tipo_ocorrencia_idtipo_ocorrencia`, `professor_idprofessor`, `aluno_idaluno`, `cancelada`) VALUES
(1, '2019-08-20 07:30:00', 1, 3, 4, NULL),
(2, '2019-08-14 11:00:00', 6, 4, 2, NULL),
(3, '2019-08-14 11:00:00', 6, 3, 1, NULL),
(4, '2019-09-01 11:00:00', 1, 2, 4, NULL),
(5, '2019-08-14 11:00:00', 1, 4, 4, NULL),
(6, '2019-09-06 08:00:00', 1, 3, 1, NULL),
(7, '2019-09-17 10:00:00', 1, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

DROP TABLE IF EXISTS `professor`;
CREATE TABLE IF NOT EXISTS `professor` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_login` varchar(255) NOT NULL,
  PRIMARY KEY (`idprofessor`,`usuario_login`),
  KEY `fk_professor_usuario1_idx` (`usuario_login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`idprofessor`, `usuario_login`) VALUES
(4, 'dinardo'),
(1, 'hugo'),
(2, 'renan'),
(3, 'rogério');

-- --------------------------------------------------------

--
-- Stand-in structure for view `quantidade_de_oc`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `quantidade_de_oc`;
CREATE TABLE IF NOT EXISTS `quantidade_de_oc` (
`aluno_idaluno` int(11)
,`quant_oc` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
CREATE TABLE IF NOT EXISTS `responsavel` (
  `idresponsavel` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_login` varchar(255) NOT NULL,
  PRIMARY KEY (`idresponsavel`,`usuario_login`),
  KEY `fk_responsavel_usuario1_idx` (`usuario_login`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `responsavel`
--

INSERT INTO `responsavel` (`idresponsavel`, `usuario_login`) VALUES
(3, 'francisco'),
(1, 'joão'),
(2, 'josé'),
(4, 'maria'),
(5, 'maria2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `saida_sala`
--

DROP TABLE IF EXISTS `saida_sala`;
CREATE TABLE IF NOT EXISTS `saida_sala` (
  `idsaida_sala` int(11) NOT NULL AUTO_INCREMENT,
  `horário_aula` int(11) NOT NULL,
  `fazendo_prova` tinyint(4) NOT NULL,
  `tipo_saida_sala_idtipo_saida_sala` int(11) NOT NULL,
  `admin_idadmin` int(11) NOT NULL,
  `aluno_idaluno` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`idsaida_sala`),
  KEY `fk_saida_sala_tipo_saida_sala1_idx` (`tipo_saida_sala_idtipo_saida_sala`),
  KEY `fk_saida_sala_admin1_idx` (`admin_idadmin`),
  KEY `fk_saida_sala_aluno1_idx` (`aluno_idaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `saida_sala`
--

INSERT INTO `saida_sala` (`idsaida_sala`, `horário_aula`, `fazendo_prova`, `tipo_saida_sala_idtipo_saida_sala`, `admin_idadmin`, `aluno_idaluno`, `data`) VALUES
(1, 4, 1, 1, 2, 1, '2019-09-20 11:10:00'),
(2, 5, 1, 1, 2, 2, '2019-09-20 11:15:00'),
(3, 6, 0, 2, 3, 5, '2019-08-20 13:30:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `suspensao`
--

DROP TABLE IF EXISTS `suspensao`;
CREATE TABLE IF NOT EXISTS `suspensao` (
  `idsuspensao` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `quant_dias` int(11) NOT NULL,
  `tipo_suspensao_idtipo_suspensao` int(11) NOT NULL,
  `admin_idadmin` int(11) NOT NULL,
  `aluno_idaluno` int(11) NOT NULL,
  PRIMARY KEY (`idsuspensao`),
  KEY `fk_suspensao_tipo_suspensao1_idx` (`tipo_suspensao_idtipo_suspensao`),
  KEY `fk_suspensao_admin1_idx` (`admin_idadmin`),
  KEY `fk_suspensao_aluno1_idx` (`aluno_idaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `suspensao`
--

INSERT INTO `suspensao` (`idsuspensao`, `data`, `quant_dias`, `tipo_suspensao_idtipo_suspensao`, `admin_idadmin`, `aluno_idaluno`) VALUES
(1, '2019-08-22 14:30:00', 2, 1, 3, 4),
(2, '2019-08-22 14:30:00', 2, 3, 3, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_ocorrencia`
--

DROP TABLE IF EXISTS `tipo_ocorrencia`;
CREATE TABLE IF NOT EXISTS `tipo_ocorrencia` (
  `idtipo_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`idtipo_ocorrencia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_ocorrencia`
--

INSERT INTO `tipo_ocorrencia` (`idtipo_ocorrencia`, `nivel`, `descricao`) VALUES
(1, 1, 'Fardamento incompleto'),
(2, 2, 'Esquecimento de material didático'),
(3, 2, 'Não cumprimento de atividades'),
(4, 3, 'Falta de Respeito com o professor ou\n	com a instituição'),
(5, 3, 'Falta de Respeito com o(a) colega'),
(6, 3, 'Pesca em prova');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_saida_sala`
--

DROP TABLE IF EXISTS `tipo_saida_sala`;
CREATE TABLE IF NOT EXISTS `tipo_saida_sala` (
  `idtipo_saida_sala` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`idtipo_saida_sala`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_saida_sala`
--

INSERT INTO `tipo_saida_sala` (`idtipo_saida_sala`, `descricao`) VALUES
(1, 'Banheiro'),
(2, 'Participação em eventos'),
(3, 'Chegada em atraso');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_suspensao`
--

DROP TABLE IF EXISTS `tipo_suspensao`;
CREATE TABLE IF NOT EXISTS `tipo_suspensao` (
  `idtipo_suspensao` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`idtipo_suspensao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_suspensao`
--

INSERT INTO `tipo_suspensao` (`idtipo_suspensao`, `nivel`, `descricao`) VALUES
(1, 1, 'Acumulo de ocorrências'),
(2, 2, 'Namoro'),
(3, 3, 'Motivo extra gravíssimo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

DROP TABLE IF EXISTS `turma`;
CREATE TABLE IF NOT EXISTS `turma` (
  `idturma` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`idturma`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`idturma`, `nome`) VALUES
(1, 'INFORMÁTICA'),
(2, 'ADMINISTRAÇÃO'),
(3, 'ENFERMAGEM'),
(4, 'MASSOTERAPIA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`login`, `senha`, `nome`) VALUES
('ana', '0000', 'Ana'),
('carla', '0000', 'Carla'),
('dinardo', '2255', 'Dinardo'),
('francisco', '1111', 'Francisco'),
('hugo', '1234', 'Hugo'),
('jarlenice', '10203040', 'Jarlenice'),
('joão', '1111', 'João'),
('joãovitor', '10203040', 'Joãovitor'),
('josé', '1111', 'José'),
('lucas', '0000', 'Lucas'),
('maria', '1111', 'Maria'),
('maria2', '1111', 'Maria'),
('paulo', '0000', 'Paulo'),
('pedro', '0000', 'Pedro'),
('renan', '4321', 'Renan'),
('rogério', '2255', 'Rogério'),
('tadeu', '10203040', 'Tadeu'),
('thiago', '10203040', 'Thiago');

-- --------------------------------------------------------

--
-- Structure for view `alunos_max_num_oc`
--
DROP TABLE IF EXISTS `alunos_max_num_oc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alunos_max_num_oc`  AS  select `quantidade_de_oc`.`aluno_idaluno` AS `aluno_idaluno`,`quantidade_de_oc`.`quant_oc` AS `quant_oc` from `quantidade_de_oc` where (`quantidade_de_oc`.`quant_oc` = (select `maior_quant_oc`.`maior` from `maior_quant_oc`)) order by `quantidade_de_oc`.`aluno_idaluno` ;

-- --------------------------------------------------------

--
-- Structure for view `maior_quant_oc`
--
DROP TABLE IF EXISTS `maior_quant_oc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maior_quant_oc`  AS  select max(`quantidade_de_oc`.`quant_oc`) AS `maior` from `quantidade_de_oc` ;

-- --------------------------------------------------------

--
-- Structure for view `quantidade_de_oc`
--
DROP TABLE IF EXISTS `quantidade_de_oc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `quantidade_de_oc`  AS  select `ocorrencia`.`aluno_idaluno` AS `aluno_idaluno`,count(`ocorrencia`.`aluno_idaluno`) AS `quant_oc` from `ocorrencia` group by `ocorrencia`.`aluno_idaluno` ;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_usuario` FOREIGN KEY (`usuario_login`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `adm_altera_oc`
--
ALTER TABLE `adm_altera_oc`
  ADD CONSTRAINT `fk_admin_has_ocorrencia_admin1` FOREIGN KEY (`admin_idadmin`) REFERENCES `admin` (`idadmin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_admin_has_ocorrencia_ocorrencia1` FOREIGN KEY (`ocorrencia_idocorrencia`) REFERENCES `ocorrencia` (`idocorrencia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_aluno_responsavel1` FOREIGN KEY (`responsavel_idresponsavel`) REFERENCES `responsavel` (`idresponsavel`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_turma1` FOREIGN KEY (`turma_idturma`) REFERENCES `turma` (`idturma`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_usuario1` FOREIGN KEY (`usuario_login`) REFERENCES `usuario` (`login`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD CONSTRAINT `fk_ocorrencia_aluno1` FOREIGN KEY (`aluno_idaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ocorrencia_professor1` FOREIGN KEY (`professor_idprofessor`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ocorrencia_tipo_ocorrencia1` FOREIGN KEY (`tipo_ocorrencia_idtipo_ocorrencia`) REFERENCES `tipo_ocorrencia` (`idtipo_ocorrencia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `fk_professor_usuario1` FOREIGN KEY (`usuario_login`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `responsavel`
--
ALTER TABLE `responsavel`
  ADD CONSTRAINT `fk_responsavel_usuario1` FOREIGN KEY (`usuario_login`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `saida_sala`
--
ALTER TABLE `saida_sala`
  ADD CONSTRAINT `fk_saida_sala_admin1` FOREIGN KEY (`admin_idadmin`) REFERENCES `admin` (`idadmin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_saida_sala_aluno1` FOREIGN KEY (`aluno_idaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_saida_sala_tipo_saida_sala1` FOREIGN KEY (`tipo_saida_sala_idtipo_saida_sala`) REFERENCES `tipo_saida_sala` (`idtipo_saida_sala`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `suspensao`
--
ALTER TABLE `suspensao`
  ADD CONSTRAINT `fk_suspensao_admin1` FOREIGN KEY (`admin_idadmin`) REFERENCES `admin` (`idadmin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_suspensao_aluno1` FOREIGN KEY (`aluno_idaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_suspensao_tipo_suspensao1` FOREIGN KEY (`tipo_suspensao_idtipo_suspensao`) REFERENCES `tipo_suspensao` (`idtipo_suspensao`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
