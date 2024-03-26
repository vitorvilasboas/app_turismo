-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/03/2024 às 18:49
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `turismofso`
--
DROP DATABASE IF EXISTS `turismofso`;
CREATE DATABASE IF NOT EXISTS `turismofso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `turismofso`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_tag` varchar(100) NOT NULL,
  `cat_titulo` varchar(60) NOT NULL,
  `cat_descricao` text NOT NULL,
  `cat_sobre` text NOT NULL,
  `cat_dt_modif` date NOT NULL,
  `cat_usu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`cat_id`, `cat_tag`, `cat_titulo`, `cat_descricao`, `cat_sobre`, `cat_dt_modif`, `cat_usu_id`) VALUES
(1, 'gastronomia', 'GASTRONOMIA', 'Saboreie pratos de peixe fresco à beira-rio, mergulhando nos sabores autênticos da culinária típica do Tocantins.', 'Deleite-se com os sabores autênticos do Tocantins à beira do Araguaia! Descubra restaurantes à beira-rio oferecendo pratos típicos da região, destacando peixes frescos pescados localmente. Saboreie a culinária tradicional, desde deliciosos pratos de peixe até a riqueza dos ingredientes regionais. A gastronomia de Formoso do Araguaia é uma fusão única de sabores que certamente irá encantar seu paladar.', '2024-03-22', 5),
(2, 'hotelaria', 'HOTELARIA', 'Relaxe em acomodações confortáveis com vistas panorâmicas, abraçando o conforto e a conexão com a natureza.', 'Experimente o conforto e a hospitalidade à moda de Formoso do Araguaia! Aprecie a variedade de opções de hospedagem, desde aconchegantes pousadas familiares até resorts à beira-rio com vistas deslumbrantes. Com acomodações que se integram harmoniosamente à natureza, cada estadia é uma oportunidade para relaxar e recarregar as energias após um dia emocionante de pesca e exploração.', '2024-03-22', 5),
(3, 'lazer', 'LAZER', 'Desfrute de praias serenas, atividades aquáticas e momentos de tranquilidade em meio à beleza natural da região.', 'Dê asas à diversão e relaxamento em Formoso do Araguaia! Além da pesca esportiva, descubra atividades de lazer para todos os gostos. Relaxe em praias fluviais tranquilas, pratique esportes aquáticos emocionantes, faça passeios de barco ao pôr do sol ou simplesmente desfrute de momentos de tranquilidade em meio à natureza exuberante. Há sempre algo para todos os visitantes explorarem e desfrutarem.', '2024-03-22', 5),
(4, 'atracoes', 'ATRAÇÕES', 'Explore a natureza do Rio Araguaia e suas ilhas, desfrutando da pesca esportiva em meio a uma paisagem deslumbrante.', 'Descubra os encantos naturais de Formoso do Araguaia! Deixe-se envolver pelas águas cristalinas do Rio Araguaia, mergulhe na exuberância da natureza local e explore ilhas paradisíacas. Testemunhe a diversidade da fauna e flora enquanto desfruta de atividades emocionantes de pesca esportiva. Explore trilhas naturais, áreas de preservação e mergulhe na beleza natural desta joia do sul do Tocantins.', '2024-03-22', 5),
(5, 'eventos', 'EVENTOS', 'Participe de torneios de pesca emocionantes e celebre a cultura local em festivais à beira do rio, imergindo na energia vibrante da comunidade.', 'Em Formoso do Araguaia, a emoção nunca acaba! Participe de eventos exclusivos dedicados aos amantes do rio Javaés e da cultura local. Desde torneios de pesca até cavalgadas, cada momento é uma oportunidade para celebrar a vida à beira do rio. Prepare-se para se conectar com pescadores, entusiasmados e vivenciar tradições locais em eventos vibrantes que deixarão lembranças inesquecíveis.', '2024-03-22', 5),
(6, 'servicos', 'SERVIÇOS', 'Encontre facilmente lojas de equipamentos de pesca e serviços personalizados para uma estadia sem preocupações.', 'Encontre tudo o que precisa para uma experiência perfeita em Formoso do Araguaia! Descubra serviços que facilitam sua estadia, desde agências de turismo locais que oferecem passeios personalizados até guias especializados em pesca esportiva. Conte com lojas de equipamentos de pesca, aluguel de barcos e tudo mais para tornar sua viagem ainda mais memorável e conveniente.', '2024-03-22', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato_local`
--

CREATE TABLE `contato_local` (
  `cont_id` int(11) NOT NULL,
  `cont_nome` varchar(60) NOT NULL,
  `cont_email` varchar(100) NOT NULL,
  `cont_fone1` varchar(20) NOT NULL,
  `cont_fone2` varchar(20) NOT NULL,
  `cont_loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imgs_local`
--

CREATE TABLE `imgs_local` (
  `img_id` int(11) NOT NULL,
  `img_titulo` varchar(60) NOT NULL,
  `img_descricao` varchar(60) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `img_loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `local`
--

CREATE TABLE `local` (
  `loc_id` int(11) NOT NULL,
  `loc_tag` varchar(100) NOT NULL,
  `loc_titulo` varchar(60) NOT NULL,
  `loc_descricao` text NOT NULL,
  `loc_sobre` text NOT NULL,
  `loc_endereco` varchar(140) NOT NULL,
  `loc_url_mapa` text NOT NULL,
  `loc_dt_mod` date NOT NULL,
  `loc_cat_id` int(11) NOT NULL,
  `loc_usu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `local`
--

INSERT INTO `local` (`loc_id`, `loc_tag`, `loc_titulo`, `loc_descricao`, `loc_sobre`, `loc_endereco`, `loc_url_mapa`, `loc_dt_mod`, `loc_cat_id`, `loc_usu_id`) VALUES
(1, 'ponto_picanha', 'Churrascaria Ponto da Picanha', 'Comida por quilo com churrasco', '', '', '', '2024-03-22', 1, 5),
(2, 'restaurante_matheus', 'Restaurante Matheus', 'Atendimento com qualidade', '', '', '', '2024-03-22', 1, 5),
(3, 'restaurante_pousada_triuno', 'Restaurante Pousada Triuno', 'Comida no fogão a lenha, sempre tem peixe no seu cardápio.', '', '', '', '2024-03-22', 1, 5),
(4, 'come_come', 'Come Come', 'Sanduíches e pizzaria', '', '', '', '2024-03-22', 1, 5),
(5, 'imperio_espetos', 'Império dos Espetos', 'Espetinho e jantinha', '', '', '', '2024-03-22', 1, 5),
(6, 'mais_sabor', 'Mais Sabor', 'Lanchonete com grande variedade de salgados', '', '', '', '2024-03-22', 1, 5),
(7, 'rei_acai', 'Rei do açaí', 'lanchonete e açaiteria', '', '', '', '2024-03-22', 1, 5),
(8, 'mistura_fina', 'Panificadora Mistura fina', 'Panificadora', '', '', '', '2024-03-22', 1, 5),
(9, 'sorvete_creme_mel', 'Sorveteria Creme Mel', 'Sorveteria e lanchonete', '', '', '', '2024-03-22', 1, 5),
(10, 'ilha_bananal', 'ILHA DO BANANAL', 'A maior ilha fluvial do mundo, situada entre os rios Javaé e Araguaia, é o lar de povos indígenas Javaé e Karajá.', 'A Ilha do Bananal, localizada no estado do Tocantins, é famosa por ser a maior ilha fluvial do mundo, com uma área de aproximadamente 25.000 km². Ilha fluvial é toda e qualquer porção de terras cercada de águas de rios por todos os lados. No caso, os rios são o Araguaia e o Javaés. Ela situa-se na divisão do Tocantins com os estados de Goiás e Mato Grosso, integrando os municípios de Pium, Caseara, Lagoa da Confusão, Formoso do Araguaia e Marianópolis do Tocantins. Localiza-se no relevo da Planície do Cantão e possui uma altitude', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d481104.20163479756!2d-50.288572380249335!3d-11.732187549459413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93163fa69780377f%3A0xc78ec5c12ce1fc94!2sIlha%20do%20Bananal!5e1!3m2!1spt-BR!2sbr!4v1701775595418!5m2!1spt-BR!2sbr', '2024-03-26', 4, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `redes_local`
--

CREATE TABLE `redes_local` (
  `red_id` int(11) NOT NULL,
  `red_plataforma` varchar(60) NOT NULL,
  `red_usuario` varchar(60) NOT NULL,
  `red_url` varchar(255) NOT NULL,
  `red_loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nome` varchar(60) NOT NULL,
  `usu_nickname` varchar(60) NOT NULL,
  `usu_senha` varchar(60) NOT NULL,
  `usu_permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`usu_id`, `usu_nome`, `usu_nickname`, `usu_senha`, `usu_permissao`) VALUES
(5, 'Administrador', 'admin', 'admin', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `FK_USU_ID` (`cat_usu_id`);

--
-- Índices de tabela `contato_local`
--
ALTER TABLE `contato_local`
  ADD PRIMARY KEY (`cont_id`),
  ADD KEY `cont_loc_id` (`cont_loc_id`);

--
-- Índices de tabela `imgs_local`
--
ALTER TABLE `imgs_local`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `loc_id` (`img_loc_id`);

--
-- Índices de tabela `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`loc_id`),
  ADD KEY `cat_id` (`loc_cat_id`),
  ADD KEY `usu_id` (`loc_usu_id`);

--
-- Índices de tabela `redes_local`
--
ALTER TABLE `redes_local`
  ADD PRIMARY KEY (`red_id`),
  ADD KEY `loc_id` (`red_loc_id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `contato_local`
--
ALTER TABLE `contato_local`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imgs_local`
--
ALTER TABLE `imgs_local`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `local`
--
ALTER TABLE `local`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redes_local`
--
ALTER TABLE `redes_local`
  MODIFY `red_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `cat_usu_fk` FOREIGN KEY (`cat_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `contato_local`
--
ALTER TABLE `contato_local`
  ADD CONSTRAINT `cont_loc_id` FOREIGN KEY (`cont_loc_id`) REFERENCES `contato_local` (`cont_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `imgs_local`
--
ALTER TABLE `imgs_local`
  ADD CONSTRAINT `img_loc_fk` FOREIGN KEY (`img_loc_id`) REFERENCES `local` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `local`
--
ALTER TABLE `local`
  ADD CONSTRAINT `loc_cat_fk` FOREIGN KEY (`loc_cat_id`) REFERENCES `categoria` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loc_usu_fk` FOREIGN KEY (`loc_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `redes_local`
--
ALTER TABLE `redes_local`
  ADD CONSTRAINT `red_loc_fk` FOREIGN KEY (`red_loc_id`) REFERENCES `local` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
