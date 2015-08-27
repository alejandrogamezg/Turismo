-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2015 a las 23:48:13
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `turismo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE IF NOT EXISTS `lugares` (
`id` int(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `ubicacion` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `inagurado` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `gobernador` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `escultor` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`id`, `nombre`, `ubicacion`, `inagurado`, `gobernador`, `descripcion`, `escultor`) VALUES
(1, 'Monumento al Meztizaje', 'En la entrada de Chetumal', '25 de octubre de 1996', 'Ing. Mario Villanueva', 'PLACA: “Chetumal Cuna del Mestizaje, monumento inaugurado por el C. Presidente de la República, Gonzalo Guerrero le respondió: “Hermano Aguilar: Yo soy casado y tengo tres hijos y tiénenme por cacique y capitán cuando hay guerra. Idos con Dios, que tengo labrada la cara y horadadas las orejas” (un fragmento de la crónica de uno de los cronistas de la nueva España Bernal Díaz del Castillo). Inaugurado por el presidente de la república Ernesto Zedillo Ponce de León siendo gobernador el Ing. Mario E. Villanueva Madrid. El barco en el que naufragó Gonzalo Guerrero se llamó LA ESPERANZA', 'Rosa María Ponzanelly. '),
(2, 'Monumento a la Bandera', 'Frente al Palacio de Gobierno de Quintana Roo', '24 de febrero de 1943', 'Gabriel R. Guevara', 'Al sureste del palacio de Gobierno se encuentra un bello obelisco con cuatro relojes, uno en cada costado, que marcan las apacibles horas de Chetumal. En su base, flanqueada por dos águilas monumentales, se levanta una escultura en homenaje a la Bandera Nacional y al Ejército Mexicano. Representa a la patria soldadera resguardada por dos de sus hijos. El pedestal de granito rojo que sostiene la escultura lleva al frente una placa de granito negro.', 'Guillermo Castaño y Cornelio Cambrane.'),
(3, 'Monumento al Renacimiento', 'Avenida 22 de Enero y Boulevard Bahía.', '5 DE MAYO DE 1998', 'Ing. Mario Villanueva Madrid', 'Ubicada en el parque del renacimiento obra realizada en bronce por la escultora Rosa María Ponzanelly de ocho metros de alto por ocho de ancho. A esta artista se le conoce también como “la escultora de Quintana Roo” por sus diversas obras que han cobrado importancia en Othón P. Blanco y Cozumel, entre las que destacan: El monumento al “mestizaje”, “El pescador”, “Los Manatíes”, “Los Buzos” en Cozumel y la presente. La obra representa un homenaje a los habitantes de la ciudad capital que supieron salir adelante, pese a la tragedia que vivieron a causa del meteoro de 1955, su creación expresa la voluntad y renacimiento de un pueblo que supo levantarse de sus adversidades, así como elementos extraños que sucedieron durante este ciclón que azotó la ciudad .', 'sin datos'),
(4, 'Monumento al Pescador', 'Bulevar Bahía ', '25 octubre de 1996', 'Mario E. Villanueva Madrid', 'Como un acto de elemental justicia, el gobierno local mando esculpir una hermosa alegoría en la que resalta majestuoso el pescador con su red; utensilio que le apoya a capturar el preciado alimento, para recordar a los niños que nuestros recursos naturales merecen su atención y cuidado. Obra realizada por la escultora Rosa María Ponzanelly. Inaugurado por el presidente de la república Ernesto Zedillo Ponce de León siendo gobernador el Ing. Mario E. Villanueva Madrid.', 'sin datos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
`id` int(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `telefono` int(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `dni`, `telefono`, `email`) VALUES
(60, 'prueba', 'uruhf6ujf', 9862484, 'je6dh@jsyd.com'),
(61, 'gnbbc', 'chjfjj', 2147483647, 'gjmm@f.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
