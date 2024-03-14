-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 177.153.63.40
-- Generation Time: 09-Mar-2024 às 10:23
-- Versão do servidor: 5.7.32-35-log
-- PHP Version: 5.6.40-0+deb8u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arte_e_cia`
--
CREATE DATABASE IF NOT EXISTS `arte_e_cia` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `arte_e_cia`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adicionais`
--

CREATE TABLE `adicionais` (
  `id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adicionais`
--

INSERT INTO `adicionais` (`id`, `id_cat`, `nome`, `valor`) VALUES
(1, 9, 'Cebola', 1.00),
(2, 8, 'Cebola', 0.80),
(3, 8, 'Picles', 1.00),
(4, 7, 'Leite Condensado', 1.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adicionais_itens`
--

CREATE TABLE `adicionais_itens` (
  `id` int(11) NOT NULL,
  `id_car` int(11) NOT NULL,
  `id_adc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adicionais_itens`
--

INSERT INTO `adicionais_itens` (`id`, `id_car`, `id_adc`) VALUES
(11, 311, 4),
(13, 310, 2),
(14, 312, 4),
(16, 313, 2),
(17, 314, 2),
(20, 318, 1),
(21, 326, 2),
(22, 326, 3),
(23, 329, 2),
(24, 334, 3),
(25, 336, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_venda`, `id_produto`, `cpf`, `quantidade`, `data`) VALUES
(214, 24, 2, '000.000.000-10', 2, NULL),
(215, 24, 12, '000.000.000-10', 2, NULL),
(216, 25, 13, '000.000.000-10', 4, NULL),
(217, 25, 1, '000.000.000-10', 2, NULL),
(218, 26, 14, '000.000.000-10', 1, NULL),
(226, 26, 2, '000.000.000-10', 2, NULL),
(230, 27, 1, '000.000.000-10', 2, NULL),
(231, 27, 2, '000.000.000-10', 2, NULL),
(232, 28, 13, '000.000.000-10', 4, NULL),
(233, 28, 12, '000.000.000-10', 2, NULL),
(234, 29, 2, '000.000.000-10', 2, NULL),
(235, 29, 13, '000.000.000-10', 4, NULL),
(236, 30, 2, '000.000.000-10', 2, NULL),
(237, 30, 1, '000.000.000-10', 2, NULL),
(238, 31, 1, '000.000.000-10', 2, NULL),
(242, 32, 2, '000.000.000-00', 2, NULL),
(243, 32, 1, '000.000.000-00', 3, NULL),
(244, 33, 1, '000.000.000-10', 2, NULL),
(245, 33, 13, '000.000.000-10', 4, NULL),
(246, 34, 2, '000.000.000-10', 2, NULL),
(247, 34, 1, '000.000.000-10', 2, NULL),
(248, 34, 13, '000.000.000-10', 4, NULL),
(249, 35, 1, '000.000.000-10', 2, NULL),
(250, 35, 2, '000.000.000-10', 2, NULL),
(251, 36, 12, '000.000.000-10', 2, NULL),
(252, 36, 2, '000.000.000-10', 2, NULL),
(253, 37, 12, '000.000.000-10', 2, NULL),
(254, 37, 2, '000.000.000-10', 2, NULL),
(263, 45, 12, '999.999.999-99', 1, NULL),
(266, 63, 12, '000.000.000-00', 13, NULL),
(267, 38, 1, '000.000.000-10', 1, NULL),
(268, 38, 2, '000.000.000-10', 2, NULL),
(269, 38, 24, '000.000.000-10', 1, NULL),
(270, 38, 25, '000.000.000-10', 1, NULL),
(271, 39, 1, '000.000.000-10', 1, NULL),
(272, 39, 2, '000.000.000-10', 2, NULL),
(273, 40, 2, '000.000.000-10', 2, NULL),
(274, 41, 2, '000.000.000-10', 2, NULL),
(276, 42, 2, '000.000.000-10', 2, NULL),
(277, 46, 2, '000.000.000-10', 2, NULL),
(282, 43, 2, '000.000.000-01', 2, NULL),
(283, 44, 2, '000.000.000-01', 2, NULL),
(284, 44, 12, '000.000.000-01', 1, NULL),
(286, 0, 14, '999.999.999-99', 1, NULL),
(287, 47, 2, '000.000.000-10', 2, NULL),
(288, 48, 2, '000.000.000-10', 2, NULL),
(289, 49, 2, '000.000.000-10', 2, NULL),
(290, 50, 2, '000.000.000-10', 2, NULL),
(291, 51, 2, '000.000.000-10', 2, NULL),
(292, 52, 2, '000.000.000-10', 2, NULL),
(293, 53, 2, '000.000.000-10', 2, NULL),
(294, 55, 2, '000.000.000-10', 2, NULL),
(295, 56, 2, '000.000.000-10', 2, NULL),
(296, 57, 2, '000.000.000-10', 2, NULL),
(297, 58, 2, '000.000.000-10', 2, NULL),
(298, 59, 2, '000.000.000-10', 2, NULL),
(299, 60, 2, '000.000.000-10', 2, NULL),
(300, 61, 2, '000.000.000-10', 2, NULL),
(302, 62, 2, '000.000.000-10', 2, NULL),
(303, 64, 2, '000.000.000-10', 2, NULL),
(304, 0, 2, '999.999.999-99', 1, NULL),
(305, 65, 2, '000.000.000-10', 2, NULL),
(306, 65, 1, '000.000.000-10', 1, NULL),
(307, 65, 12, '000.000.000-10', 2, NULL),
(312, 66, 2, '000.000.000-10', 2, NULL),
(313, 66, 12, '000.000.000-10', 2, NULL),
(314, 67, 12, '000.000.000-10', 2, NULL),
(315, 67, 1, '000.000.000-10', 1, NULL),
(318, 68, 16, '000.000.000-10', 1, '2020-09-23'),
(325, 68, 12, '000.000.000-10', 2, '2020-09-23'),
(326, 69, 12, '000.000.000-10', 2, '2020-09-23'),
(327, 69, 16, '000.000.000-10', 1, '2020-09-23'),
(328, 70, 1, '000.000.000-10', 1, '2020-09-24'),
(329, 71, 13, '000.000.000-10', 1, '2020-09-24'),
(330, 72, 2, '000.000.000-10', 1, '2020-09-24'),
(331, 72, 12, '000.000.000-10', 2, '2020-09-24'),
(332, 73, 12, '000.000.000-10', 2, '2020-09-24'),
(333, 74, 1, '000.000.000-10', 1, '2020-09-24'),
(334, 75, 12, '564.655.555-55', 1, '2020-09-24'),
(335, 76, 1, '564.655.555-55', 1, '2020-09-24'),
(336, 77, 1, '564.655.555-55', 1, '2020-09-24'),
(337, 78, 1, '000.000.000-10', 1, '2020-09-24'),
(338, 79, 21, '333.333.333-33', 1, '2024-03-05'),
(339, 79, 20, '333.333.333-33', 1, '2024-03-05'),
(340, 79, 10, '333.333.333-33', 1, '2024-03-05'),
(342, 80, 2, '414.888.728-05', 1, '2024-03-06'),
(343, 80, 17, '414.888.728-05', 1, '2024-03-06'),
(344, 80, 27, '414.888.728-05', 1, '2024-03-06'),
(349, 0, 16, '414.888.728-05', 3, '2024-03-06'),
(352, 0, 16, '000.000.000-00', 1, '2024-03-06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `produtos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`, `produtos`) VALUES
(1, 'Bebidas', 'Bebidas', 'bebidas.jpeg', 'bebidas', 4),
(2, 'Sanduíches Artesanais', 'Sanduíches Artesanais', 'artesanal.jpeg', 'sanduiches-artesanais', 2),
(7, 'Açaí', 'Açaís', 'acai.jpeg', 'acai', 3),
(8, 'Sanduíches', 'Sanduíches', 'sanduiches.jpeg', 'sanduiches', 3),
(9, 'Pizza', 'Pizza', 'pizzas.jpeg', 'pizza', 3),
(15, 'PIZZAS SALGADAS', 'PIZZAS SALGADAS', 'sem-foto.png', 'pizzas-salgadas', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(5) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `cartao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `telefone`, `email`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `cartao`) VALUES
(1, 'Marcos Santos', '000.000.000-10', '(11) 11111-1111', 'marcos@gmail.com', 'Rua 5', '55', 'Céu Azul', 'Belo Horizonte', 'MG', '33333-333', 0),
(2, 'Hugo Freitas', '111.111.111-11', '(11) 11111-1111', 'hugovasconcelosf@hotmail.com', 'Rua 5', '55', 'Céu Azul', 'Belo Horizonte', '', '', 0),
(3, 'José Silva ', '000.000.000-01', '(99) 99999-999', 'teste@teste.com', 'Hhhh', '6666', 'Tatuapé', 'São Paulo', '', '', 2),
(4, 'Paula Campos', '564.655.555-55', '(55) 55555-5555', 'cliente@hotmail.com', 'Rua 5', '30', 'Serra Verde', 'Belo Horizonte', '', '', 3),
(5, 'Jaqueline Pereira', '333.333.333-33', '(55) 55555-5555', 'jaque@gmail.com', 'Rua dos Bobos', '0', 'Tatuapé', 'São Paulo', '', '', 1),
(6, 'Jose Alisom dos Santos Fonseca', '414.888.728-05', '(11) 96443-7023', 'alisomsantostecnico@gmail.com', 'Rua Serra de Jaire', '983', 'Moóca', 'São Paulo', 'MG', '03365050', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `previsao_minutos` int(11) NOT NULL,
  `taxa_entrega` decimal(8,2) NOT NULL,
  `abertura` time NOT NULL,
  `fechamento` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `previsao_minutos`, `taxa_entrega`, `abertura`, `fechamento`) VALUES
(1, 30, 5.00, '08:00:00', '23:59:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `locais`
--

CREATE TABLE `locais` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `locais`
--

INSERT INTO `locais` (`id`, `nome`, `valor`) VALUES
(11, 'Moóca', 5.00),
(12, 'Tatuapé', 5.00),
(13, 'Chácara Belenzinho', 5.00),
(14, 'Belenzinho', 5.00),
(15, 'Belém', 5.00),
(16, 'Carrão', 5.00),
(17, 'Vila Carrão', 5.00),
(18, 'Cambuci', 5.00),
(19, 'Quarta Parada', 5.00),
(20, 'Ipiranga', 5.00),
(21, 'Vila Formosa', 5.00),
(22, 'Anália Franco', 5.00),
(23, 'Regente Feijó', 5.00),
(24, 'Sapopemba', 5.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `descricao_longa` varchar(600) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `categoria` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `combo` varchar(10) DEFAULT NULL,
  `vendas` int(11) NOT NULL,
  `adicional` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `descricao_longa`, `valor`, `categoria`, `imagem`, `nome_url`, `combo`, `vendas`, `adicional`) VALUES
(1, 'Açai 600 ML', 'Açaí na Taça', 'Açaí com Leite em pó', 8.99, 7, 'acai 1.jpeg', 'acai-600-ml', NULL, 18, NULL),
(2, 'Açaí 300 ML', 'Creme de Açaí', 'Açaí com Leite em pó e Granola!', 1.00, 7, 'acai 2.jpeg', 'acai-300-ml', NULL, 42, NULL),
(10, 'Duas Barcas', 'Combo Completo', 'Combo imperdível com duas barcas completas com muito açãi e cheia de incrementos!', 60.00, 7, 'barcas.jpg', 'duas-barcas', 'Sim', 1, NULL),
(12, 'Chessburguer', 'Carne e Queijo', 'Delicioso Chessburguer com carne bovina, queijo, maionese, picles, ketchup!!', 9.99, 8, 'sanduiche 1.jpeg', 'chessburguer', NULL, 21, NULL),
(13, 'Bufalo Burguer', 'Gigante e Saboroso', 'Um Sanduíche gigantesco, pra quem tem muita fome, a base de carne bovina, cheddar ....', 12.50, 8, 'sanduiche 2.jpeg', 'bufalo-burguer', NULL, 3, NULL),
(14, '3 Pizzas Grandes', 'Super Promoção', 'Aproveite já nossa super promoção, são 3 pizzas grande de 8 fatias cada, muito saborosa...', 47.90, 9, 'pizza promocao.jpeg', '3-pizzas-grandes', 'Sim', 0, NULL),
(15, 'Sanduiche Gourmet', 'Delicioso Artesanal', 'Um Delicioso sanduiche artesenal, carne de frango ....', 10.00, 2, 'gourmet.jpeg', 'sanduiche-gourmet', NULL, 0, NULL),
(16, 'Pizza Grande', '8 Fatias', 'Pizza Grande de 8 Fatias nos sabores frango com catu....', 17.90, 9, 'pizza 1.jpeg', 'pizza-grande', NULL, 2, 'Sim'),
(17, 'Pizza Média', '6 Pedaços', 'Pizza Média ...', 11.90, 9, 'pizza 2.jpeg', 'pizza-media', NULL, 1, NULL),
(18, 'Combo Artesanais', '2 Sanduiches', 'Dois Deliciosos sanduiches artesanais', 18.00, 2, 'promocao artesanais.jpeg', 'combo-artesanais', 'Sim', 0, NULL),
(19, 'Combo Sanduíches', '3 Sanduiches', 'Trez Gigantescos sanduiches...', 29.99, 8, 'promocao sanduinches.jpeg', 'combo-sanduiches', 'Sim', 0, NULL),
(20, 'Coca Cola Lata', '350 ML', 'Refrigerante Coca Cola Lata', 3.50, 1, 'WhatsApp Image 2020-05-13 at 22.38.18.jpeg', 'coca-cola-lata', NULL, 1, NULL),
(21, 'Agua Mineral', 'Garrafa 200 ML', 'Agua Mineral', 2.00, 1, 'WhatsApp Image 2020-05-13 at 22.41.30.jpeg', 'agua-mineral', NULL, 1, NULL),
(22, 'Suco Lata', '290 ML', 'Suco de Lata 290 ML', 2.90, 1, 'WhatsApp Image 2020-05-13 at 22.45.31.jpeg', 'suco-lata', NULL, 0, NULL),
(23, 'Cerveja Lata', '350 ML', 'Cerveja Lata', 4.50, 1, 'WhatsApp Image 2020-05-13 at 22.49.20.jpeg', 'cerveja-lata', NULL, 0, NULL),
(28, 'PIZZAS SALGADAS', 'Escolha seu sabor preferido!', '', 50.00, 15, 'sem-foto.png', 'pizzas-salgadas', NULL, 0, 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sabores`
--

CREATE TABLE `sabores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sabores`
--

INSERT INTO `sabores` (`id`, `nome`, `valor`) VALUES
(7, 'Á MODA DO PIZZAIOLO', 10.00),
(8, 'ABOBRINHA', 11.00),
(9, 'ALEMÃ', 10.00),
(10, 'ALCACHOFRA', 12.00),
(11, 'ALHO E ÓLEO', 2.00),
(12, 'ALHO FRITO', 4.00),
(13, 'ALICHE', 18.00),
(14, 'AMERICANA', 10.00),
(15, 'ARTE & CIA', 14.00),
(16, 'ATUM RALADO', 0.00),
(17, 'MUSSARELA', 0.00),
(18, 'CALABRESA ACEBOLADA', 0.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sabores_itens`
--

CREATE TABLE `sabores_itens` (
  `id` int(11) NOT NULL,
  `id_car` int(11) NOT NULL,
  `id_sab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sabores_itens`
--

INSERT INTO `sabores_itens` (`id`, `id_car`, `id_sab`) VALUES
(7, 318, 5),
(8, 318, 2),
(9, 327, 3),
(10, 344, 2),
(11, 344, 5),
(12, 346, 7),
(14, 346, 8),
(16, 347, 13),
(17, 347, 9),
(20, 348, 8),
(21, 349, 8),
(22, 349, 9),
(23, 350, 8),
(24, 350, 10),
(25, 351, 8),
(26, 351, 9),
(27, 352, 8),
(28, 352, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `telefone`, `usuario`, `senha`, `nivel`) VALUES
(22, 'Marcos Santos', '000.000.000-10', '(11) 11111-1111', 'marcos@gmail.com', '123', 'Cliente'),
(23, 'Hugo Freitas', '111.111.111-11', '(11) 11111-1111', 'hugovasconcelosf@hotmail.com', '123', 'Cliente'),
(24, 'Rafael Aires', '000.000.000-00', '3333-3399', 'aires.fael@gmail.com', '123', 'Admin'),
(25, 'Flavio Campos', '777.777.777-80', '(33) 33335-5888', 'flavio@hotmail.com', '22222222222', 'Balconista'),
(26, 'Marcelo Campos', '999.999.999-99', '(99) 99999-9990', 'balconista@hotmail.com', '123', 'Balconista'),
(27, 'José Silva ', '000.000.000-01', '(99) 99999-999', 'teste@teste.com', 'Asdfghj', 'Cliente'),
(30, 'Paula Campos', '564.655.555-55', '(55) 55555-5555', 'cliente@hotmail.com', '123', 'Cliente'),
(31, 'Jaqueline Pereira', '333.333.333-33', '(55) 55555-5555', 'jaque@gmail.com', '123', 'Cliente'),
(32, 'Jose Alisom dos Santos Fonseca', '414.888.728-05', '(11) 96443-7023', 'alisomsantostecnico@gmail.com', '123', 'Cliente'),
(33, 'Guga', '', '', 'arte_e_cia', '', 'Balconista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `total_pago` decimal(8,2) NOT NULL,
  `troco` decimal(8,2) NOT NULL,
  `tipo_pgto` varchar(30) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(25) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `obs` varchar(350) DEFAULT NULL,
  `entrega_fixa` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `cliente`, `total`, `total_pago`, `troco`, `tipo_pgto`, `data`, `hora`, `status`, `pago`, `obs`, `entrega_fixa`) VALUES
(26, '000.000.000-10', 49.90, 50.00, 0.10, 'Dinheiro', '2020-05-20', '11:58:13', 'Concluído', 'Não', NULL, NULL),
(27, '000.000.000-10', 19.98, 0.00, 0.00, 'Cartão de Crédito', '2020-05-20', '11:59:53', 'Concluído', 'Não', NULL, NULL),
(28, '000.000.000-10', 22.49, 0.00, 0.00, 'Cartão de Débito', '2020-05-20', '12:06:22', 'Concluído', 'Sim', NULL, NULL),
(29, '000.000.000-10', 27.00, 0.00, 0.00, 'Cartão de Débito', '2020-05-20', '12:09:07', 'Concluído', 'Sim', NULL, NULL),
(30, '000.000.000-10', 19.98, 0.00, 0.00, 'Cartão de Crédito', '2020-05-20', '12:10:04', 'Concluído', 'Sim', NULL, NULL),
(31, '000.000.000-10', 26.97, 0.00, 0.00, 'Cartão de Débito', '2020-05-20', '12:11:41', 'Concluído', 'Sim', NULL, NULL),
(32, '000.000.000-00', 15.99, 21.00, 5.01, 'Dinheiro', '2020-05-20', '16:39:04', 'Iniciado', 'Não', NULL, NULL),
(33, '000.000.000-10', 21.49, 50.00, 28.51, 'Dinheiro', '2020-05-20', '16:39:34', 'Despachado', 'Não', NULL, NULL),
(34, '000.000.000-10', 31.48, 50.00, 18.52, 'Dinheiro', '2020-05-20', '17:04:29', 'Preparando', 'Não', 'Tirar o Picles', NULL),
(35, '000.000.000-10', 9.99, 15.00, 5.01, 'Dinheiro', '2020-05-21', '12:23:47', 'Iniciado', 'Não', 'Retirar Cebola e Picles', NULL),
(36, '000.000.000-10', 10.99, 0.00, 0.00, 'Cartão de Débito', '2020-05-21', '12:24:48', 'Iniciado', 'Não', '', NULL),
(37, '000.000.000-10', 15.99, 20.00, 4.01, 'Dinheiro', '2020-05-21', '12:26:25', 'Iniciado', 'Sim', 'Tirar Picles e Azeitona', NULL),
(38, '000.000.000-10', 21.49, 0.00, 0.00, 'Mercado Pago', '2020-05-21', '15:41:47', 'Aguardando', 'Não', '', NULL),
(39, '000.000.000-10', 14.99, 0.00, 0.00, 'Cartão de Crédito', '2020-05-21', '16:03:33', 'Despachado', 'Não', '', NULL),
(40, '000.000.000-10', 1.00, 0.00, 0.00, 'Mercado Pago', '2020-05-21', '16:39:44', 'Iniciado', 'Sim', '', NULL),
(41, '000.000.000-10', 1.00, 0.00, 0.00, 'Mercado Pago', '2020-05-21', '16:40:36', 'Iniciado', 'Sim', '', NULL),
(42, '000.000.000-10', 1.00, 0.00, 0.00, 'Mercado Pago', '2020-05-21', '16:48:09', 'Aguardando', 'Não', '', NULL),
(43, '000.000.000-01', 7.00, 0.00, 0.00, 'Cartão de Débito', '2020-05-21', '20:09:18', 'Iniciado', 'Não', '', NULL),
(44, '000.000.000-01', 16.99, 20.00, 3.01, 'Dinheiro', '2020-05-21', '20:11:38', 'Iniciado', 'Não', '', NULL),
(45, '999.999.999-99', 15.99, 16.00, 0.01, 'Dinheiro', '2020-05-21', '20:55:22', 'Iniciado', 'Não', 'Nbbjjj', NULL),
(62, '000.000.000-10', 1.00, 0.00, 0.00, 'Mercado Pago', '2020-05-21', '23:04:03', 'Iniciado', 'Sim', '', NULL),
(63, '000.000.000-00', 9.99, 0.00, 0.00, 'Cartão de Débito', '2020-09-23', '09:31:46', 'Iniciado', 'Não', '', NULL),
(64, '000.000.000-10', 1.00, 0.00, 0.00, 'Cartão de Débito', '2020-09-23', '09:33:35', 'Iniciado', 'Não', 'Tirar cebola e tirar picles!!!', NULL),
(65, '000.000.000-10', 19.98, 0.00, 0.00, 'Cartão de Crédito', '2020-09-23', '10:04:11', 'Iniciado', 'Não', '', NULL),
(66, '000.000.000-10', 13.79, 0.00, 0.00, 'Cartão de Débito', '2020-09-23', '14:51:12', 'Iniciado', 'Não', 'Vou querer sem celbola', NULL),
(67, '000.000.000-10', 19.78, 0.00, 0.00, 'Cartão de Débito', '2020-09-23', '15:13:15', 'Iniciado', 'Não', '', NULL),
(68, '000.000.000-10', 83.84, 0.00, 0.00, 'Cartão de Débito', '2020-09-23', '18:50:56', 'Iniciado', 'Não', 'fsdfsdfsdfsd', NULL),
(69, '000.000.000-10', 36.69, 0.00, 0.00, 'Cartão de Débito', '2020-09-23', '20:13:21', 'Iniciado', 'Não', 'Tirar Picles', NULL),
(70, '000.000.000-10', 14.99, 0.00, 0.00, 'Cartão de Débito', '2020-09-24', '10:07:55', 'Iniciado', 'Não', 'fdsfsf', NULL),
(72, '000.000.000-10', 16.99, 0.00, 0.00, 'Cartão de Débito', '2020-09-24', '11:34:43', 'Preparando', 'Não', '', NULL),
(73, '000.000.000-10', 25.98, 0.00, 0.00, 'Cartão de Débito', '2020-09-24', '13:38:34', 'Concluído', 'Não', '', 6.00),
(74, '000.000.000-10', 16.99, 0.00, 0.00, 'Cartão de Débito', '2020-09-24', '13:39:59', 'Iniciado', 'Não', '', 8.00),
(75, '564.655.555-55', 10.99, 20.00, 9.01, 'Dinheiro', '2020-09-24', '13:42:32', 'Despachado', 'Não', '', 4.00),
(76, '564.655.555-55', 15.99, 20.00, 4.01, 'Dinheiro', '2020-09-24', '14:01:07', 'Iniciado', 'Não', '', 7.00),
(77, '564.655.555-55', 16.99, 0.00, 0.00, 'Cartão de Débito', '2020-09-24', '14:24:06', 'Iniciado', 'Não', '', 7.00),
(78, '000.000.000-10', 16.99, 0.00, 0.00, 'Cartão de Débito', '2020-09-24', '14:33:45', 'Iniciado', 'Não', '  ATENÇÃO : ESTE CLIENTE COMPLETOU 5 COMPRAS, ELE GANHOU Uma Bebida !', 8.00),
(79, '333.333.333-33', 71.50, 0.00, 0.00, 'Cartão de Crédito', '2024-03-05', '14:09:46', 'Concluído', 'Sim', '', 6.00),
(80, '414.888.728-05', 71.90, 0.00, 0.00, 'Cartão de Débito', '2024-03-06', '19:06:01', 'Concluído', 'Sim', '', 4.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adicionais`
--
ALTER TABLE `adicionais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adicionais_itens`
--
ALTER TABLE `adicionais_itens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sabores`
--
ALTER TABLE `sabores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sabores_itens`
--
ALTER TABLE `sabores_itens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adicionais`
--
ALTER TABLE `adicionais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adicionais_itens`
--
ALTER TABLE `adicionais_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locais`
--
ALTER TABLE `locais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sabores`
--
ALTER TABLE `sabores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sabores_itens`
--
ALTER TABLE `sabores_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
