-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Jun-2019 às 03:08
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `codigovei` int(11) NOT NULL,
  `modelo` varchar(40) NOT NULL,
  `marca` varchar(40) NOT NULL,
  `descricao` text NOT NULL,
  `portas` int(2) NOT NULL,
  `ano_fab` char(4) NOT NULL,
  `ano_mod` char(4) NOT NULL,
  `cor` varchar(40) NOT NULL,
  `km` double NOT NULL,
  `placa` text NOT NULL,
  `valor` double NOT NULL,
  `obs` text NOT NULL,
  `dtinclu` date NOT NULL,
  `ativo` text NOT NULL,
  `fotonome1` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`codigovei`, `modelo`, `marca`, `descricao`, `portas`, `ano_fab`, `ano_mod`, `cor`, `km`, `placa`, `valor`, `obs`, `dtinclu`, `ativo`, `fotonome1`) VALUES
(1, '147', 'Fiat', 'FIAT 147', 2, '1980', '1980', 'Bege Dolomiti', 1284, 'BDX5080', 40000, 'FIAT 147 1980/1980 na cor Bege Dolomiti. VeÃ­culo restaurado nos mÃ­nimos detalhes! Tudo feito do zero! ImpecÃ¡vel! Foram gastos mais de R$ 60 mil na restauraÃ§Ã£o!\r\n\r\nMOTOR - Cilindrada: 1.048 cmÂ³. Taxa de compressÃ£o: 7,4:1. PotÃªncia mÃ¡xima bruta: 57 cv a 5.800 rpm. Torque mÃ¡ximo bruto: 7,8 m.kgf a 3.800 rpm.\r\n\r\nO Fiat 147 foi o primeiro carro que deu inÃ­cio as atividades da Fiat no paÃ­s em 1976. Ele tambÃ©m foi seu maior trunfo e mostrou que a gigante italiana nÃ£o estava para brincadeira.\r\n\r\nCom 3,63 metros de comprimento, o Fiat 147 era cerca de 40 centÃ­metros menor que o Volkswagen Fusca, e pesava menos, cerca de 800 quilos.\r\n', '2019-06-08', '1', 'img/fiat147.jpg'),
(2, 'Belina ', 'Ford', 'FORD BELINA', 2, '1974', '1974', 'Vermelho', 52900, 'DPO8090', 25000, 'A Ford ampliava a linha Corcel jÃ¡ em 1969, com o lanÃ§amento da carroceria de duas portas, que deslanchou de vez as vendas do modelo. O vidro traseiro estava mais inclinado e transmitia certa jovialidade. Assim como no sedÃ£, as janelas laterais posteriores podiam de abertas baixando-se os vidros. Aproveitando as linhas mais dinÃ¢micas do cupÃª, a Ford introduziu a versÃ£o esportiva GT. AlÃ©m do visual diferenciado, com faixas pretas no capÃ´, nas laterais e na traseira e capota revestida em vinil, o GT tinha algumas modificaÃ§Ãµes mecÃ¢nicas. O motor manteve a cilindrada, mas teve a taxa de compressÃ£o ligeiramente aumentada, o que fez a potÃªncia bruta crescer para 80 cavalos. As modificaÃ§Ãµes, no entanto nÃ£o eram capazes de surtir grandes diferenÃ§as no desempenho do carro.', '2019-06-08', '1', 'img/belina.jpg'),
(3, '1502', 'BMW', 'BMW 1502', 2, '1976', '1976', 'Bege', 75000, 'KTX9084', 21000, 'Linda e impecÃ¡vel BMW 1502 1976/1976. Rara versÃ£o de entrada do sedan esportivo 2002, com motor 1.6 de 75 cv. Apenas 75 mil quilÃ´metros rodados. Foi tema de reportagem do programa Vrum, em matÃ©ria apresentada por Boris Feldman. Inteiramente original, nunca restaurado e em excelente estado. Manual do proprietÃ¡rio original, alÃ©m de 4Âª via de importaÃ§Ã£o original e todos os documentos emitidos pelo Detran desde 1976. Teto solar, interior original imaculado, vidros verdes, chaves originais, painel em madeira, bancos dianteiros com encosto de cabeÃ§a. Placa preta, assistÃªncia tÃ©cnica sempre feita em concessionÃ¡ria BMW. Ã“tima dirigibilidade. RÃ¡dio original BMW FM com livreto.', '2019-06-08', '1', 'img/bmw1502.jpg'),
(4, 'Corcel Luxo', 'Ford', 'FORD CORCEL LUXO', 2, '1977', '1977', 'Branco Nevasca', 45600, 'DTO6050', 32000, 'Ford Corcel Luxo 1977/1977. VeÃ­culo de plaqueta, na cor Branco Nevasca (B0). VeÃ­culo em raro estado de conservaÃ§Ã£o, levou um banho de tinta para deixar a pintura igual a nova!\r\n\r\nMotor dianteiro, longitudinal, 4 cilindros em linha, 2 vÃ¡lvulas por cilindro, gasolina, 1.372cmÂ³, 1,4 litro (1372cmÂ³) com potÃªncia bruta de 72 cv a 5400rpm 11,5 kgf.m a 3600 rpm. Fazia de 0 a 100 km/h em 17 segundos e atingia em torno de 145 km/h de velocidade mÃ¡xima.\r\n', '2019-06-08', '1', 'img/corcel.jpg'),
(5, 'Escort XR3 1.8 ConversÃ­ve', 'Ford', 'FORD ESCORT XR3 1.8 CONVERSÃVE', 2, '1992', '1992', 'Bege Nevada', 74530, 'BBA6548', 21500, 'Ford Escort XR3 1.8 ConversÃ­vel 1992/1992 na cor Bege Nevada. Carro em raro estado de conservaÃ§Ã£o, com farÃ³is Arteb, manual do proprietÃ¡rio, chave reserva, ar condicionado gelando e direÃ§Ã£o hidrÃ¡ulica!\r\n\r\nMotor transversal, 4 cilindros em linha, 1.781 cmÂ³, 2 vÃ¡lvulas por cilindro, comando de vÃ¡lvulas simples no cabeÃ§ote, carburador de corpo duplo. PotÃªncia de 105 cv a 6.000 rpm. Torque de 16 mkgf a 3.000 rpm.', '2019-06-08', '1', 'img/escortrs.jpg'),
(6, 'F355 Berlinetta', 'Ferrari', 'FERRARI F355 BERLINETTA', 2, '1995', '1995', 'Vermelho Modena', 58400, 'DTX4450', 500, 'Ferrari F355 Berlinetta 1995/1995 na cor Vermelho Modena com cÃ¢mbio manual de 6 velocidades.\r\nMotor Traseiro-central, 3.5 litros (3496 cmÂ³), 8 cilindros em â€œVâ€ a 90Âº, 40 vÃ¡lvulas DOHC, injeÃ§Ã£o integral Bosch Mono-Motronic  com PotÃªncia de 380cv (375hp) a 8250 rpm e Torque de 37,0 kgfm @ 6000 rpm\r\nA Ferrari F355 foi construÃ­da pela marca de 1994 atÃ© 1999. Ã‰ uma evoluÃ§Ã£o do Ferrari 348, e foi substituÃ­do pelo Ferrari 360. Seguindo a linha de sucesso dos modelos de entrada da marca, a F355 Ã© coupÃ© V8 de motor central e dois lugares. Uma das principais diferenÃ§as entre o V8 do 348 e do F355 foi o aumento do deslocamento de 3.4 a 3.5 litros, alÃ©m do aumento no nÃºmero de vÃ¡lvulas, passando para cinco ao total (trÃªs de admissÃ£o e duas de exaustÃ£o). E Ã© este o motivo do nome da 355, nos quais os dois primeiros dÃ­gitos se referem a capacidade cÃºbica, em litros, do motor. E o Ãºltimo dÃ­gito faz referÃªncia ao uso das cinco vÃ¡lvulas por cilindro.\r\nPossui monitoramento eletrÃ´nico da suspensÃ£o\r\nForam produzidas 11.273 unidades', '2019-06-08', '1', 'img/ferrari.jpg'),
(7, 'Fusca 1300', 'VW', 'VW FUSCA 1300', 2, '1974', '1974', 'Azul CaiÃ§ara', 129400, 'BFF6049', 50000, 'VW Fusca 1300 1974/1974 na cor Azul CaiÃ§ara. VeÃ­culo com lanternas traseiras com logo VW/Audi, FarÃ³is CibiÃ©, Placas Amarelas Guardadas. Ã“timo estado geral. VelocÃ­metro com lacre de fÃ¡brica. Perfeito funcionamento.\r\n\r\nMotor de combustÃ£o interna de 4 cilindros e a 4 tempos, montado na traseira, 1285cmÂ³ com potÃªncia de 38 CV a 4000rpm (mÃ©todo DIN) / 46HP a 4500rpm (mÃ©todo SAE) e torque de 9,1mKgf a 2600rpm (mÃ©todo SAE).\r\n\r\nPeso: 780Kg', '2019-06-08', '1', 'img/fusca.jpg'),
(8, 'Gol S', 'VW', 'VW GOL S', 2, '1983', '1983', 'Branco Paina', 52800, 'GFE6350', 28000, 'VW Gol S 1983/1983 na cor Branco Paina, raro modelo bÃ¡sico (versÃ£o de entrada da linha VW Gol), apenas 52.800km, veÃ­culo nunca restaurado.\r\nFarÃ³is dianteiros CibiÃ©, lanternas traseiras com logo VW/Audi. Possui pintura original com pequenos retoques, somente 3 donos, pneus traseiros Pirelli SL93 originais de Ã©poca.\r\n\r\nMotor dianteiro, 4 cilindros contrapostos, refrigerado a ar, 1584 cmÂ³, potÃªncia de 51 CV a 4400rpm e torque de 105 Nm a 3000rpm', '2019-06-08', '1', 'img/gol.jpg'),
(9, 'Kadett GS', 'GM', 'GM KADETT GS', 2, '1991', '1991', 'Preto Formal', 103500, 'HTT6181', 35900, 'Chevrolet Kadett GS 1991/1991 na cor Preto Formal, em raro estado de conservaÃ§Ã£o. VeÃ­culo com direÃ§Ã£o hidrÃ¡ulica e vidros elÃ©tricos. VeÃ­culo nunca restaurado.\r\n\r\nMotor: transversal, 4 cilindros em linha, duas vÃ¡lvulas por cilindro, comando de vÃ¡lvulas simples no cabeÃ§ote, alimentaÃ§Ã£o por carburador de corpo duplo, potÃªncia de 110 cv a 5.600 rpm e torque de 17,3 kgfm a 3.000 rpm.', '2019-06-08', '1', 'img/kadett.jpg'),
(10, 'Kombi Standard 1500', 'VW', 'VW KOMBI STANDARD 1500', 3, '1975', '1975', 'Azul CaiÃ§ara', 100800, 'SPO5354', 65000, 'Volkswagen Kombi Standard 1975/1975 na cor Azul CaiÃ§ara. VeÃ­culo em raro estado de conservaÃ§Ã£o.\r\n\r\nMotor Boxer de 1493 cmÂ³ com potÃªncia de 42 CV a 4000rpm (mÃ©todo DIN) / 52CV a 4600rpm (mÃ©todo SAE) e 10,3kgfm de torque a 2600rpm (mÃ©todo SAE).', '2019-06-08', '1', 'img/Kombi.jpg'),
(11, 'Galaxie LTD Landau', 'Ford', 'FORD GALAXIE LTD LANDAU', 4, '1972', '1972', 'Turquesa Roya', 44461, 'JKK6497', 70000, 'Motor V8 (4.9L) com 190CV de potÃªncia.\r\nCaixa de cÃ¢mbio Ford-o-Matic C4 (AutomÃ¡tico de 3 velocidades). \r\n\r\nEm 1967, mais precisamente no dia 16 de Fevereiro o primeiro Ford Galaxie 500 saÃ­ da linha de montagem, o carro jÃ¡ tinha chamado Ã  atenÃ§Ã£o do pÃºblico no final do ano anterior no â€œV SalÃ£o do AutomÃ³vel de SÃ£o Pauloâ€ e marcou sua Ã©poca por ser o primeiro automÃ³vel de passeio nacional da Ford.', '2019-06-08', '1', 'img/landau.jpg'),
(12, ' Passat LS', 'VW', 'VW PASSAT LS', 2, '1982', '1982', 'Cinza Carrara', 64300, 'NHI8080', 32000, 'Volkswagen Passat LS 1982/1982 na cor Cinza Carrara. VeÃ­culo em raro estado de conservaÃ§Ã£o, farÃ³is Arteb/Hella, estepe Firestone Radial 720, Certificado de Originalidade (Placa Preta).\r\n\r\nMotor 1.6 Litros (1.588cmÂ³) a quatro tempos arrefecido a Ã¡gua , potÃªncia de 78cv a 6100rpm e torque de 11,5kgfm a 3600rpm.\r\n', '2019-06-08', '1', 'img/Passat.jpg'),
(13, 'Santana 2.0 Evidence', 'VW', 'VW SANTANA 2.0 EVIDENCE', 4, '1996', '1996', 'Vermelho Rea', 155800, 'KDA9074', 15000, 'VW Santana 2000Mi Evidence na cor Vermelho Real 1996/1996. VeÃ­culo em raro estado de conservaÃ§Ã£o! Manual do proprietÃ¡rio e cÃ³pia da nota fiscal de compra!\r\n\r\nMotor de 4 cilindros 2.0L (1.984 cmÂ³). PotÃªncia de 114 cv a 5.600 rpm e torque de 17,6 m.kgf a 3.200 rpm.', '2019-06-08', '1', 'img/santana.jpg'),
(14, 'Uno Mille Electronic', 'Fiat', 'FIAT UNO MILLE ELECTRONIC', 2, '1993', '1993', 'Cinza', 10900, 'CDB2031', 10000, 'FIAT Uno Mille Electronic 1993/1993. VeÃ­culo com apenas 10.900KM.\r\nMotor dianteiro, transversal, 1.0L (994cmÂ³) com potÃªncia de 56CV e Torque de 8,2Kgfm.\r\nEm 1993 a FIAT lanÃ§a a versÃ£o Eletronic do Uno Mille aonde a igniÃ§Ã£o digital substitui o platinado.', '2019-06-08', '1', 'img/unomille.jpg'),
(15, 'Opala Comodoro ChÃ¢teau', 'GM', 'GM OPALA COMODORO CHÃ‚TEAU', 2, '1977', '1978', 'BordÃ´', 32200, 'RBX9263', 22000, 'Chevrolet Opala Comodoro ChÃ¢teau 1977/1978 com teto de Vinil Las Vegas, interior Chateau, carro todo original, nunca restaurado com 32.000 Km, manual do proprietÃ¡rio e Placa Preta\r\nMotor 2.5 litros (2.474cmÂ³) com 89HP a 4500rpm e 18Kgfm de torque a 2800rpm.\r\nNo final do ano de 1977, o Opala recebe novas modificaÃ§Ãµes, como novas calotas, novas faixas (filetes laterais), nova grade de radiador, novo volante, novos bancos, a chave da igniÃ§Ã£o passou a ser na coluna de direÃ§Ã£o alÃ©m de um belo acabamento interior vinho (ChÃ¢teau), alÃ©m dos monocromÃ¡ticos preto e marrom.', '2019-06-08', '1', 'img/opalacomodorochateau1978.jpg'),
(16, 'TL 1600', 'VW', 'VW TL 1600', 2, '1971', '1972', 'Azul PavÃ£o', 56200, 'YFZ8250', 50000, 'Volkswagen TL 1600 1971/1972 na cor Azul PavÃ£o. VeÃ­culo em raro estado de conservaÃ§Ã£o. \r\nDe 1971 atÃ© 2000 foi de Ãºnico dono e de 2000 atÃ© 2018, teve seu segundo dono.\r\nInterior imaculado, 4 pneus novos, manual, chave reserva, documentos de Ã©poca e nota fiscal de compra com data de 20 de Outubro de 1971.\r\n', '2019-06-08', '1', 'img/tl.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`codigovei`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `codigovei` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
