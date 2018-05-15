-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2018 a las 23:11:54
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `suscerte_wiki`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE IF NOT EXISTS `bitacora` (
  `ID_BITACORA` int(11) NOT NULL AUTO_INCREMENT,
  `UCEDULA` varchar(20) NOT NULL,
  `HOST` varchar(20) NOT NULL,
  `FECHA` datetime NOT NULL,
  `ACCION` varchar(20) NOT NULL,
  `TABLA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_BITACORA`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`ID_BITACORA`, `UCEDULA`, `HOST`, `FECHA`, `ACCION`, `TABLA`) VALUES
(1, '2020', 'localhost', '2018-04-19 15:05:00', 'Insertar', 'gestion_incidente_articulo_t'),
(2, '2020', 'localhost', '2018-04-19 15:07:00', 'Eliminar', 'gestion_incidente_articulo_t'),
(3, '2020', 'localhost', '2018-04-19 15:16:28', 'Modificar', 'gestion_incidente_articulo_d'),
(4, '2020', 'localhost', '2018-04-19 15:16:55', 'Modificar', 'gestion_incidente_articulo_d'),
(5, '2020', 'localhost', '2018-04-19 15:18:48', 'Insertar', 'gestion_incidente_articulo_t'),
(6, '2020', 'localhost', '2018-04-19 15:18:53', 'Eliminar', 'gestion_incidente_articulo_d'),
(7, '2020', 'localhost', '2018-04-19 15:19:42', 'Eliminar', 'gestion_incidente_articulo_d'),
(8, '2', 'localhost', '2018-04-19 15:20:22', 'Insertar', 'gestion_incidente_articulo_t'),
(9, '2020', 'localhost', '2018-04-19 15:20:58', 'Eliminar', 'gestion_incidente_articulo_d'),
(10, '2', 'localhost', '2018-04-19 15:21:58', 'Eliminar', 'gestion_incidente_articulo_d'),
(11, '2020', 'localhost', '2018-04-19 15:22:11', 'Eliminar', 'gestion_incidente_articulo_t'),
(12, '2', 'localhost', '2018-04-19 15:23:04', 'Eliminar', 'gestion_incidente_articulo_d'),
(13, '2', 'localhost', '2018-04-19 15:24:15', 'Eliminar', 'gestion_incidente_articulo_t'),
(14, '2020', 'localhost', '2018-04-19 15:26:10', 'Insertar', 'gestion_incidente_articulo_t'),
(15, '2020', 'localhost', '2018-04-19 15:26:29', 'Eliminar', 'gestion_incidente_articulo_t'),
(16, '2020', 'localhost', '2018-04-19 15:28:50', 'Modificar', 'gestion_incidente_articulo_d'),
(17, '2020', 'localhost', '2018-04-19 15:32:04', 'Insertar', 'gestion_incidente_manual'),
(18, '2020', 'localhost', '2018-04-19 15:33:22', 'Insertar', 'gestion_incidente_tutorial'),
(19, '2', 'localhost', '2018-04-19 15:36:06', 'Eliminar', 'gestion_incidente_manual'),
(20, '2', 'localhost', '2018-04-19 15:36:15', 'Eliminar', 'gestion_incidente_tutorial'),
(21, '20490050', 'localhost', '2018-04-19 15:38:19', 'Modificar', 'gestion_incidente_manual'),
(22, '2020', 'localhost', '2018-04-19 15:39:03', 'Modificar', 'gestion_incidente_tutorial'),
(23, '2', 'localhost', '2018-04-19 15:40:06', 'Modificar', 'gestion_incidente_tutorial'),
(24, '2', 'localhost', '2018-04-19 15:40:17', 'Modificar', 'gestion_incidente_manual'),
(25, '2', 'localhost', '2018-04-19 15:40:28', 'Modificar', 'gestion_incidente_manual'),
(26, '2', 'localhost', '2018-04-19 15:40:44', 'Modificar', 'gestion_incidente_tutorial'),
(27, '2', 'localhost', '2018-04-19 15:40:54', 'Modificar', 'gestion_incidente_tutorial'),
(28, '2', 'localhost', '2018-04-19 15:42:32', 'Eliminar', 'gestion_incidente_manual'),
(29, '22', 'localhost', '2018-04-19 16:40:43', 'Insertar', 'seguridad_logica_articulo_t'),
(30, '22', 'localhost', '2018-04-19 16:41:11', 'Modificar', 'seguridad_logica_articulo_d'),
(31, '22', 'localhost', '2018-04-19 16:41:30', 'Modificar', 'seguridad_logica_articulo_d');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificacion_electronica_criptografica_articulo_d`
--

CREATE TABLE IF NOT EXISTS `certificacion_electronica_criptografica_articulo_d` (
  `ID_CECAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_CECAT` int(100) NOT NULL,
  `DESCRIPCION_CECAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CECAD`,`ID_TITULO_CECAT`),
  KEY `certificacion_electronica_criptografica_articulo_d_ibfk_1` (`ID_TITULO_CECAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `certificacion_electronica_criptografica_articulo_d`
--

INSERT INTO `certificacion_electronica_criptografica_articulo_d` (`ID_CECAD`, `ID_TITULO_CECAT`, `DESCRIPCION_CECAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">La Certificaci&oacute;n Electr&oacute;nica se define como el proceso mediante el cual se generan certificados electr&oacute;nicos, garantizando la integridad de un documento digital o una acci&oacute;n cometida sobre &eacute;ste. </span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">Los certificados electr&oacute;nicos pueden identificar a las personas y/u organizaciones, convirti&eacute;ndose de esta manera en documentos de identidad que contienen informaci&oacute;n importante con respecto a su portador, por ejemplo: nombre, fecha de nacimiento o constituci&oacute;n y direcci&oacute;n. Adem&aacute;s, contienen el dato m&aacute;s importante para la identificaci&oacute;n de la persona natural o jur&iacute;dica: La clave p&uacute;blica de su signatario. La funci&oacute;n de esta clave es establecer un par&aacute;metro t&eacute;cnico que permita darle seguridad a una informaci&oacute;n y el acceso a ella cuando sea necesario o deseado. </span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">Al mismo tiempo, un certificado electr&oacute;nico, emitido y firmado por un PSC permite autenticar a su signatario. Esto apunta a un rol significativo de la certificaci&oacute;n electr&oacute;nica en el modelado de la identidad del usuario, permiti&eacute;ndole identificarse de forma segura y confiable en los portales del gobierno, la banca por internet, las empresas, entre otros. </span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">Los certificados electr&oacute;nicos son generados siguiendo los est&aacute;ndares internacionales, con la finalidad de unificar criterios y lograr a futuro su uso en otros pa&iacute;ses. El est&aacute;ndar utilizado es el X.509 V3, el cual define la estructura de los certificados, desarrollado por la Uni&oacute;n Internacional de Telecomunicaciones (UIT) y la Organizaci&oacute;n Internacional para la Estandarizaci&oacute;n (ISO). </span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">B&aacute;sicamente el est&aacute;ndar X.509 V3 tiene una serie de campos b&aacute;sicos, entre los cuales est&aacute;n: </span></span></p>\n\n<p style="text-align:justify">&bull; <span style="font-family:arial,sans-serif"><span style="font-size:medium">La identificaci&oacute;n del signatario</span></span></p>\n\n<p style="text-align:justify">&bull; <span style="font-family:arial,sans-serif"><span style="font-size:medium">La clave p&uacute;blica del signatario</span></span><br />\n&bull; <span style="font-family:arial,sans-serif"><span style="font-size:medium">El per&iacute;odo de validez</span></span><br />\n&bull; <span style="font-family:arial,sans-serif"><span style="font-size:medium">El nombre de la autoridad o entidad emisora.</span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">A su vez, el est&aacute;ndar presenta una serie de extensiones, como la localizaci&oacute;n de la informaci&oacute;n de estado de certificado, la ubicaci&oacute;n del certificado de la entidad emisora, los campos alternativos del nombre del signatario, las restricciones de uso y la informaci&oacute;n de las pol&iacute;ticas.</span></span></p>\n', '18932954');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificacion_electronica_criptografica_articulo_t`
--

CREATE TABLE IF NOT EXISTS `certificacion_electronica_criptografica_articulo_t` (
  `ID_CECAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CECAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_CECAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `certificacion_electronica_criptografica_articulo_t`
--

INSERT INTO `certificacion_electronica_criptografica_articulo_t` (`ID_CECAT`, `TITULO_CECAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'CertificaciÃ³n ElectrÃ³nica', 'privado', '18932954');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificacion_electronica_criptografica_manual`
--

CREATE TABLE IF NOT EXISTS `certificacion_electronica_criptografica_manual` (
  `ID_CECM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CECM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CECM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `certificacion_electronica_criptografica_manual`
--

INSERT INTO `certificacion_electronica_criptografica_manual` (`ID_CECM`, `TITULO_CECM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(2, 'D', 'privado', '../manual/Manual Laravel 5.4.docx', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificacion_electronica_criptografica_tutorial`
--

CREATE TABLE IF NOT EXISTS `certificacion_electronica_criptografica_tutorial` (
  `ID_CECTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CECTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CECTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `certificacion_electronica_criptografica_tutorial`
--

INSERT INTO `certificacion_electronica_criptografica_tutorial` (`ID_CECTT`, `TITULO_CECTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'D', 'privado', 'video 2.webm', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenios_articulo_d`
--

CREATE TABLE IF NOT EXISTS `convenios_articulo_d` (
  `ID_CAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_CAT` int(100) NOT NULL,
  `DESCRIPCION_CAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CAD`,`ID_TITULO_CAT`),
  KEY `convenios_articulo_d_ibfk_1` (`ID_TITULO_CAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `convenios_articulo_d`
--

INSERT INTO `convenios_articulo_d` (`ID_CAD`, `ID_TITULO_CAT`, `DESCRIPCION_CAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">Se conoce como convenio al contrato, convenci&oacute;n o acuerdo que se desarrolla en funci&oacute;n de un asunto espec&iacute;fico. Por citar algunos ejemplos: &ldquo;El club argentino anunci&oacute; la firma de un convenio con una universidad europea para la formaci&oacute;n de juveniles&rdquo;, &ldquo;La empresa me envi&oacute; a Brasil para cerrar un convenio de exportaci&oacute;n&rdquo;, &ldquo;El convenio fue ratificado por ambas partes tras una reuni&oacute;n que se prolong&oacute; por m&aacute;s de dos horas&rdquo;.</span></p>\n', '6060'),
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">La expresi&oacute;n &ldquo;convenio colectivo&rdquo;, por su parte, identifica al acuerdo que vincula a quienes representan a los trabajadores con los empresarios y que sirve para regular las condiciones de trabajo. Por medio de estos convenios, los sindicatos y las organizaciones empresarias fijan diferentes derechos y obligaciones en el marco de la relaci&oacute;n laboral.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Los convenios pueden ser valorados como contratos, normativas o una combinaci&oacute;n de ambos. Entre las condiciones que contemplan los convenios colectivos, se encuentran la duraci&oacute;n de la jornada laboral, los salarios, las vacaciones y las licencias.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Cabe destacar que el convenio colectivo se hace extensivo para todos los empleados del rubro en cuesti&oacute;n (una empresa o un sector en general), sin importar si est&aacute;n, o no, afiliados al sindicato que logr&oacute; el acuerdo.</span></p>\n\n<p style="text-align:justify">&nbsp;</p>\n\n<p style="text-align:center"><img alt="Resultado de imagen para convenios colectivo imagenes png" src="http://www.lacomunidadpublicitaria.com/files/field/image/convenio_publicidad.png" style="border-style:solid; border-width:1px; height:200px; width:400px" /></p>\n\n<p style="text-align:justify">&nbsp;</p>\n', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenios_articulo_t`
--

CREATE TABLE IF NOT EXISTS `convenios_articulo_t` (
  `ID_CAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_CAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `convenios_articulo_t`
--

INSERT INTO `convenios_articulo_t` (`ID_CAT`, `TITULO_CAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Convenios', 'publico', '6060'),
(2, 'Convenio colectivo', 'privado', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenios_manual`
--

CREATE TABLE IF NOT EXISTS `convenios_manual` (
  `ID_CM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `convenios_manual`
--

INSERT INTO `convenios_manual` (`ID_CM`, `TITULO_CM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'A', 'privado', '../manual/Manual de Usuario 2,86.pdf', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenios_tutorial`
--

CREATE TABLE IF NOT EXISTS `convenios_tutorial` (
  `ID_CTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `convenios_tutorial`
--

INSERT INTO `convenios_tutorial` (`ID_CTT`, `TITULO_CTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'S', 'privado', 'video 1.webm', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criptografia_articulo_d`
--

CREATE TABLE IF NOT EXISTS `criptografia_articulo_d` (
  `ID_CAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_CAT` int(100) NOT NULL,
  `DESCRIPCION_CAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CAD`,`ID_TITULO_CAT`),
  KEY `criptografia_articulo_d_ibfk_1` (`ID_TITULO_CAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `criptografia_articulo_d`
--

INSERT INTO `criptografia_articulo_d` (`ID_CAD`, `ID_TITULO_CAT`, `DESCRIPCION_CAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">La criptograf&iacute;a se ha definido, tradicionalmente, como el &aacute;mbito de la criptolog&iacute;a que se ocupa de las t&eacute;cnicas de cifrado o codificado destinadas a alterar las representaciones ling&uuml;&iacute;sticas de ciertos mensajes con el fin de hacerlos ininteligibles a receptores no autorizados.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Estas t&eacute;cnicas se utilizan tanto en el arte como en la ciencia y en la tecnolog&iacute;a. Por tanto, el &uacute;nico objetivo de la criptograf&iacute;a era conseguir la confidencialidad de los mensajes, para lo cual se dise&ntilde;aban sistemas de cifrado y c&oacute;digos, y la &uacute;nica criptograf&iacute;a existente era la llamada criptograf&iacute;a cl&aacute;sica.</span></p>\n\n<p style="text-align:right"><img alt="Resultado de imagen para criptografia imagenes png" src="https://www.bit4id.com/wp-content/uploads/2016/01/cryptography-1024x806.png" style="height:236px; width:300px" /></p>\n', '9090'),
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">La criptograf&iacute;a actualmente se encarga del estudio de los algoritmos, protocolos y sistemas que se utilizan para dotar de seguridad a las comunicaciones, a la informaci&oacute;n y a las entidades que se comunican.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Por tanto el tipo de propiedades de las que se ocupa la criptograf&iacute;a son, por ejemplo:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Confidencialidad</strong>. Es decir, garantiza que la informaci&oacute;n sea accesible &uacute;nicamente a personal autorizado. Para conseguirlo utiliza c&oacute;digos y t&eacute;cnicas de cifrado. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Integridad</strong>. Es decir garantiza la correcci&oacute;n y completitud de la informaci&oacute;n. Para conseguirlo puede usar por ejemplo funciones hash criptogr&aacute;ficas MDC, protocolos de compromiso de bit, o protocolos de notarizaci&oacute;n electr&oacute;nica. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Vinculaci&oacute;n</strong>. Permite vincular un documento o transacci&oacute;n a una persona o un sistema de gesti&oacute;n criptogr&aacute;fico automatizado. Cuando se trata de una persona, se trata de asegurar su conformidad respecto a esta vinculaci&oacute;n (content commitment) de forma que pueda entenderse que la vinculaci&oacute;n gestionada incluye el entendimiento de sus implicaciones por la persona. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Autenticaci&oacute;n</strong>. Es decir proporciona mecanismos que permiten verificar la identidad del comunicador. Para conseguirlo puede usar por ejemplo funci&oacute;n hash criptogr&aacute;fica MAC o protocolo de conocimiento cero. </span></p>\n	</li>\n</ul>\n', '9090'),
(3, 3, '<p style="text-align:justify"><span style="font-size:14px">El objetivo de un sistema criptogr&aacute;fico es dotar de seguridad. Por tanto para calibrar la calidad de un sistema criptogr&aacute;fico es necesario evaluar la seguridad que aporta dicho sistema.</span></p>\n\n<h3 style="text-align:justify"><span style="font-size:14px"><strong><strong>&iquest;Hacer p&uacute;blico o no?</strong></strong></span></h3>\n\n<p style="text-align:justify"><span style="font-size:14px">Para poder evaluar mejor la seguridad de un sistema criptogr&aacute;fico, adem&aacute;s de las verificaciones internas de seguridad que la organizaci&oacute;n haga, se puede considerar hacer p&uacute;blico a todo el mundo los entresijos del sistema. Sin embargo, al hacer p&uacute;blica esa informaci&oacute;n se facilita el que alguien pueda descubrir alguna debilidad y la aproveche o incluso la haga p&uacute;blica para que otros la puedan utilizar.</span></p>\n\n<h3 style="text-align:justify"><span style="font-size:14px"><strong>Formas de romper la seguridad</strong></span></h3>\n\n<p style="text-align:justify"><span style="font-size:14px">Hay b&aacute;sicamente tres formas de romper la seguridad de un sistema criptogr&aacute;ficoâ€‹</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Atacar la criptograf&iacute;a subyacente. Es lo que ser&iacute;a un ataque te&oacute;rico a los mecanismos criptogr&aacute;ficos usados. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Atacar la implementaci&oacute;n concreta. La criptograf&iacute;a puede ser implementada en software o en hardware. Es bastante probable que las implementaciones concretas tengan vulnerabilidades que se pueden aprovechar. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Atacar el lado humano. Muchas veces en los sistemas criptogr&aacute;ficas hay personas o entidades que tienen privilegios especiales. </span></p>\n	</li>\n</ul>\n\n<p style="text-align:justify">&nbsp;</p>\n\n<p style="text-align:center"><img alt="Resultado de imagen para criptografia imagenes png" src="https://upload.wikimedia.org/wikipedia/commons/6/68/CriptografiaAsimetrica.png" style="height:119px; width:500px" /></p>\n', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criptografia_articulo_t`
--

CREATE TABLE IF NOT EXISTS `criptografia_articulo_t` (
  `ID_CAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_CAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `criptografia_articulo_t`
--

INSERT INTO `criptografia_articulo_t` (`ID_CAT`, `TITULO_CAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'CriptografÃ­a', 'publico', '9090'),
(2, 'Objetivos de la criptografÃ­a', 'publico', '9090'),
(3, 'EvaluaciÃ³n de la seguridad de un sistema criptogrÃ¡fico', 'privado', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criptografia_manual`
--

CREATE TABLE IF NOT EXISTS `criptografia_manual` (
  `ID_CM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `criptografia_manual`
--

INSERT INTO `criptografia_manual` (`ID_CM`, `TITULO_CM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'As', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criptografia_tutorial`
--

CREATE TABLE IF NOT EXISTS `criptografia_tutorial` (
  `ID_CTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_CTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `criptografia_tutorial`
--

INSERT INTO `criptografia_tutorial` (`ID_CTT`, `TITULO_CTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'As', 'privado', 'video 3.mp4', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictamenes_articulo_d`
--

CREATE TABLE IF NOT EXISTS `dictamenes_articulo_d` (
  `ID_DAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_DAT` int(100) NOT NULL,
  `DESCRIPCION_DAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_DAD`,`ID_TITULO_DAT`),
  KEY `dictamenes_articulo_d_ibfk_1` (`ID_TITULO_DAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `dictamenes_articulo_d`
--

INSERT INTO `dictamenes_articulo_d` (`ID_DAD`, `ID_TITULO_DAT`, `DESCRIPCION_DAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">Un dictamen es un juicio desarrollado o comunicado respecto a alguna cuesti&oacute;n. El t&eacute;rmino no tiene una utilizaci&oacute;n demasiado frecuente en el lenguaje cotidiano, sino que est&aacute; m&aacute;s asociado al &aacute;mbito judicial o legislativo.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">El dictamen, por lo tanto, puede ser una sentencia de car&aacute;cter judicial que pronuncia un tribunal o un juez. De este modo, se da por finalizado una causa o un litigio. Lo que hace el dictamen es reconocer el derecho de alguno de los intervinientes en el proceso, estableciendo la obligaci&oacute;n a la otra parte de aceptar la resoluci&oacute;n y respetarla.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">En el caso del derecho penal, el dictamen establece la condena o brinda la absoluci&oacute;n al acusado. Si &eacute;ste es encontrado culpable, el dictamen establece el castigo adecuado seg&uacute;n lo tipificado por la ley.</span></p>\n', '6060'),
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">A su vez, si se analiza el concepto en t&eacute;rminos financieros, puede hacer referencia a la opini&oacute;n o el juicio que un auditor hace al realizar una Auditoria Externa. Dicha opini&oacute;n puede ser de cuatro tipos diferentes:</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">* <strong>Dictamen sin salvedades</strong>: Se da cuando el resultado del Balance General, los Estados de Cambio y de Resultado son considerados correctos o razonables por parte del auditor; es decir, que cumplen con lo establecido en los principios de contabilidad.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">* <strong>Dictamen con salvedades</strong>: Al terminar su labor, el auditor descubre que si bien los balances han devuelto un resultado razonable pero existen algunos hilos que desvelan una posible p&eacute;rdida o salvedad en las acciones realizadas por la empresa.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px"><strong>* Dictamen adverso</strong>: Cuando los balances no devuelven un resultado razonable o no se han cumplido los principios fundamentales de la contabilidad, tiene lugar este tipo de dictamen. En &eacute;l, el Auditor Externo explica cu&aacute;les son las irregularidades y ofrece posibles soluciones a las mismas.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px"><strong>* Dictamen con abstenci&oacute;n de opini&oacute;n</strong>: Se da cuando el Auditor se encuentra restringido por parte de la empresa a investigar ciertos aspectos que podr&iacute;an ayudar a resolver los inconvenientes o irregularidades que haya podido notar en el resultado del Balance. Al no tener acceso a los detalles importantes de las transacciones, el auditor debe optar por una decisi&oacute;n imparcial.</span></p>\n', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictamenes_articulo_t`
--

CREATE TABLE IF NOT EXISTS `dictamenes_articulo_t` (
  `ID_DAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_DAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_DAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `dictamenes_articulo_t`
--

INSERT INTO `dictamenes_articulo_t` (`ID_DAT`, `TITULO_DAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Dictamen', 'privado', '6060'),
(2, 'Tipos de Dictamen de AuditorÃ­a', 'publico', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictamenes_manual`
--

CREATE TABLE IF NOT EXISTS `dictamenes_manual` (
  `ID_DM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_DM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_DM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `dictamenes_manual`
--

INSERT INTO `dictamenes_manual` (`ID_DM`, `TITULO_DM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'A', 'privado', '../manual/Manual de Usuario 2,86.pdf', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictamenes_tutorial`
--

CREATE TABLE IF NOT EXISTS `dictamenes_tutorial` (
  `ID_DTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_DTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_DTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `dictamenes_tutorial`
--

INSERT INTO `dictamenes_tutorial` (`ID_DTT`, `TITULO_DTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'A', 'privado', 'video 1.webm', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estandarizacion_fiscalizacion_articulo_d`
--

CREATE TABLE IF NOT EXISTS `estandarizacion_fiscalizacion_articulo_d` (
  `ID_EFAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_EFAT` int(100) NOT NULL,
  `DESCRIPCION_EFAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_EFAD`,`ID_TITULO_EFAT`),
  KEY `estandarizacion_fiscalizacion_articulo_d_ibfk_1` (`ID_TITULO_EFAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `estandarizacion_fiscalizacion_articulo_d`
--

INSERT INTO `estandarizacion_fiscalizacion_articulo_d` (`ID_EFAD`, `ID_TITULO_EFAT`, `DESCRIPCION_EFAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><br />\n<span style="font-size:14px"><strong>Objetivo:</strong><br />\n<span style="color:#000000"><span style="font-family:metanormal,Arial,helvetica,sans-serif">El objetivo de la Direcci&oacute;n T&eacute;cnica es contribuir a aumentar la competitividad y eficacia de la empresa, a trav&eacute;s de soluciones t&eacute;cnicas y tecnol&oacute;gicas de alto valor para nuestros clientes que permitan conseguir mejoras en los resultado, as&iacute; como minimizar los riesgos t&eacute;cnicos asociados a las mismas.</span></span></span></p>\n\n<p><span style="font-size:14px"><strong>Funciones:</strong><br />\n<span style="color:#000000">1. Mantener en adecuado funcionamiento la infraestructura para el ejercicio de fiscalizaci&oacute;n de los Proveedores de Servicios de Certificaci&oacute;n con los est&aacute;ndares requeridos por este &oacute;rgano.<br />\n2. Gestionar el Registro de Auditores de SUSCERTE.<br />\n3. Elaborar y someter para la aprobaci&oacute;n del Superintendente normas, procedimientos y est&aacute;ndares t&eacute;cnicos, que deben cumplir toda aquella persona jur&iacute;dica que aspire a constituirse o a mantenerse como&nbsp; Proveedores de Servicios de Certificaci&oacute;n Electr&oacute;nica acreditados ante SUSCERTE.<br />\n4. Recomendar y promover el cumplimiento de las pol&iacute;ticas, normas, lineamientos y/o est&aacute;ndares nacionales e internacionales en materia de Certificaci&oacute;n Electr&oacute;nica, Estampado de Tiempo, Uso Criptogr&aacute;fico, Gesti&oacute;n y Manejo de Incidentes Telem&aacute;ticos y Seguridad de la Informaci&oacute;n en los &oacute;rganos y entes de del Poder P&uacute;blico.<br />\n5. Inspeccionar los registros de las personas naturales o jur&iacute;dicas sujetas al control de este &oacute;rgano, para validar el cumplimiento de est&aacute;ndares, normas y procedimientos establecidos, adem&aacute;s de realizar el adecuado seguimiento de las acciones para subsanar las posibles desviaciones que puedan encontrarse.<br />\n6. Realizar las inspecciones peri&oacute;dicas y extraordinarias a los Proveedores de Servicios de Certificaci&oacute;n con los expertos t&eacute;cnicos y legales que se consideran necesarios.</span></span></p>\n', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estandarizacion_fiscalizacion_articulo_t`
--

CREATE TABLE IF NOT EXISTS `estandarizacion_fiscalizacion_articulo_t` (
  `ID_EFAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_EFAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_EFAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `estandarizacion_fiscalizacion_articulo_t`
--

INSERT INTO `estandarizacion_fiscalizacion_articulo_t` (`ID_EFAT`, `TITULO_EFAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'EstandarizaciÃ³n y FiscalizaciÃ³n', 'privado', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estandarizacion_fiscalizacion_manual`
--

CREATE TABLE IF NOT EXISTS `estandarizacion_fiscalizacion_manual` (
  `ID_EFM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_EFM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_EFM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `estandarizacion_fiscalizacion_manual`
--

INSERT INTO `estandarizacion_fiscalizacion_manual` (`ID_EFM`, `TITULO_EFM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Vv', 'privado', '../manual/Manual Laravel 5.4.docx', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estandarizacion_fiscalizacion_tutorial`
--

CREATE TABLE IF NOT EXISTS `estandarizacion_fiscalizacion_tutorial` (
  `ID_EFTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_EFTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_EFTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `estandarizacion_fiscalizacion_tutorial`
--

INSERT INTO `estandarizacion_fiscalizacion_tutorial` (`ID_EFTT`, `TITULO_EFTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Vv', 'privado', 'video 2.webm', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_desarrollo_articulo_d`
--

CREATE TABLE IF NOT EXISTS `formacion_desarrollo_articulo_d` (
  `ID_FDAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_FDAT` int(100) NOT NULL,
  `DESCRIPCION_FDAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_FDAD`,`ID_TITULO_FDAT`),
  KEY `formacion_desarrollo_articulo_d_ibfk_1` (`ID_TITULO_FDAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `formacion_desarrollo_articulo_d`
--

INSERT INTO `formacion_desarrollo_articulo_d` (`ID_FDAD`, `ID_TITULO_FDAT`, `DESCRIPCION_FDAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif">Se encarga de realizar charlas, cursos y talleres de formaci&oacute;n en materia de seguridad de la informaci&oacute;n a funcionarios y funcionarias de instituciones p&uacute;blicas y del poder popular. </span></span></span></p>\n\n<p style="text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif">Los programas de Formaci&oacute;n son los siguientes:&nbsp; </span></span></span></p>\n\n<ul>\n	<li style="text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif"><span style="background-color:#ffffff"><strong>Charla de Certificaci&oacute;n Electr&oacute;nica: </strong>Tiene como premisa instruir a los asistentes en la digitalizaci&oacute;n y automatizaci&oacute;n de los procesos, haciendo uso de la firma electr&oacute;nica como herramienta esencial para dar seguridad y confianza en el mundo digital a la Administraci&oacute;n P&uacute;blica Nacional.</span></span></span></span></li>\n	<li style="text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif"><span style="background-color:#ffffff"><strong>Curso B&aacute;sico y Medio de Infraestructura de Clave p&uacute;blica: </strong>Tiene como objetivo introducir a los estudiantes en los principales conceptos de Criptograf&iacute;a, Clave P&uacute;blica y Certificaci&oacute;n Electr&oacute;nica y brindar los conocimientos de la infraestructura de clave p&uacute;blica, autenticaci&oacute;n, firma y cifrado con certificados electr&oacute;nicos. Orientado a profesionales inform&aacute;ticos encargados de administrar el uso de una infraestructura de clave p&uacute;blica para su organizaci&oacute;n.</span></span></span></span></li>\n	<li style="text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif"><span style="background-color:#ffffff"><strong>Curso de Seguridad de la Informaci&oacute;n y Ethical Hacking:</strong> En este curso el asistente aprender&aacute; los conocimientos, habilidades, metodolog&iacute;as y herramientas de implementaci&oacute;n y control de medidas de seguridad de la informaci&oacute;n, de acuerdo con est&aacute;ndares internacionales desde un enfoque t&eacute;cnico. Orientado a profesionales inform&aacute;ticos, con inter&eacute;s en seguridad inform&aacute;tica.</span></span></span></span></li>\n	<li style="text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif"><span style="background-color:#ffffff"><strong>Curso B&aacute;sico y Medio de Inform&aacute;tica Forense:</strong> El prop&oacute;sito fundamental de este curso es brindar una mirada introductoria a la inform&aacute;tica forense a fin de sentar las bases de la investigaci&oacute;n cient&iacute;fica en esta materia, d&aacute;ndole pautas a los futuros investigadores de c&oacute;mo manejar una escena del delito en donde se vean involucrados sistemas de informaci&oacute;n o redes y la posterior recuperaci&oacute;n de la llamada evidencia digital, utilizando herramientas forenses en software libre.</span></span></span></span></li>\n</ul>\n\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif"><span style="background-color:#ffffff">Asimismo Suscerte a trav&eacute;s de la Direcci&oacute;n de Estandarizaci&oacute;n y Fiscalizaci&oacute;n dio inicio a sus Charlas y Mesas T&eacute;cnicas en materia de Certificaci&oacute;n Electr&oacute;nica.&nbsp;</span></span></span></span></p>\n\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif">El objetivo de estas Charlas y Mesas T&eacute;cnicas est&aacute; relacionado con el uso de la firma electr&oacute;nica, con el prop&oacute;sito de disminuir papel, impresiones y copias contribuyendo as&iacute; al Plan de la Patria y de los Objetivos de Desarrollo Sostenible y en apoyo a la Campa&ntilde;a &rdquo;Plan Papel Cero&rdquo; en toda la administraci&oacute;n p&uacute;blica, que promueve la Vicepresidencia de Planificaci&oacute;n. Esta Superintendencia dar&aacute; continuaci&oacute;n a estas actividades en las instituciones que lo soliciten.</span></span></span></p>\n\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial,Helvetica,sans-serif">Con estos planes de formaci&oacute;n que capacita a cientos de&nbsp; funcionarios y funcionarias Suscerte se plantea el reto de contribuir a la consolidaci&oacute;n del acceso seguro a las tecnolog&iacute;as de informaci&oacute;n y comunicaci&oacute;n, para as&iacute; destacar la funci&oacute;n principal de la Superintendencia que es el fortalecimiento del Modelo Jer&aacute;rquico de la Infraestructura y Sistema Nacional de Certificaci&oacute;n Electr&oacute;nica, contribuyendo a mantener altos niveles de seguridad en las plataformas tecnol&oacute;gicas del Poder P&uacute;blico y Poder Popular.</span></span></span></p>\n', '18932954');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_desarrollo_articulo_t`
--

CREATE TABLE IF NOT EXISTS `formacion_desarrollo_articulo_t` (
  `ID_FDAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_FDAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_FDAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `formacion_desarrollo_articulo_t`
--

INSERT INTO `formacion_desarrollo_articulo_t` (`ID_FDAT`, `TITULO_FDAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'InvestigaciÃ³n, FormaciÃ³n y Desarrollo', 'privado', '18932954');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_desarrollo_manual`
--

CREATE TABLE IF NOT EXISTS `formacion_desarrollo_manual` (
  `ID_FDM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_FDM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_FDM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `formacion_desarrollo_manual`
--

INSERT INTO `formacion_desarrollo_manual` (`ID_FDM`, `TITULO_FDM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Sad', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_desarrollo_tutorial`
--

CREATE TABLE IF NOT EXISTS `formacion_desarrollo_tutorial` (
  `ID_FDTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_FDTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_FDTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `formacion_desarrollo_tutorial`
--

INSERT INTO `formacion_desarrollo_tutorial` (`ID_FDTT`, `TITULO_FDTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Das', 'privado', 'video 1.webm', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_incidente_articulo_d`
--

CREATE TABLE IF NOT EXISTS `gestion_incidente_articulo_d` (
  `ID_GID` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_GIT` int(100) NOT NULL,
  `DESCRIPCION_GID` text COLLATE utf8_spanish_ci NOT NULL,
  `UCEDULA` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_GID`,`ID_TITULO_GIT`),
  KEY `gestion_incidente_articulo_d_ibfk_1` (`ID_TITULO_GIT`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `gestion_incidente_articulo_d`
--

INSERT INTO `gestion_incidente_articulo_d` (`ID_GID`, `ID_TITULO_GIT`, `DESCRIPCION_GID`, `UCEDULA`) VALUES
(58, 43, '<p><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Definici%C3%B3n">1 Definici&oacute;n</a></p><p><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Incidentes,_problemas_y_errores_conocidos">2 Incidentes, problemas y errores conocidos</a></p><p><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Incidentes_y_cambios">3 Incidentes y cambios</a></p><p><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Procesos_de_gesti%C3%B3n_de_incidentes">4 Procesos de gesti&oacute;n de incidentes</a></p><p style="margin-left:40px"><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Detecci%C3%B3n_y_registro_del_incidente">4.1 Detecci&oacute;n y registro del incidente</a></p><p style="margin-left:40px"><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Clasificaci%C3%B3n_y_soporte_inicial">4.2 Clasificaci&oacute;n y soporte inicial</a></p><p style="margin-left:40px"><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Investigaci%C3%B3n_y_diagn%C3%B3stico">4.3 Investigaci&oacute;n y diagn&oacute;stico</a></p><p style="margin-left:40px"><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Escalamiento">4.4 Escalamiento</a></p><p style="margin-left:40px"><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Soluci%C3%B3n_y_restablecimiento_del_servicio">4.5 Soluci&oacute;n y restablecimiento del servicio</a></p><p style="margin-left:40px"><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Cierre_del_incidente">4.6 Cierre del incidente</a></p><p style="margin-left:40px"><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Monitorizaci%C3%B3n,_seguimiento_y_comunicaci%C3%B3n_del_incidente">4.7 Monitorizaci&oacute;n, seguimiento y comunicaci&oacute;n del incidente</a></p><p><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Ejemplos">5 Ejemplos</a></p><p><a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_incidentes#Referencias">6 Referencias</a></p>', '20490050'),
(59, 44, '<p>La terminolog&iacute;a&nbsp;<a href="https://es.wikipedia.org/wiki/ITIL" title="ITIL">ITIL</a>&nbsp;define un incidente como:</p>\n\n<p><em>Cualquier evento que no forma parte del desarrollo habitual del servicio y que causa, o puede causar una interrupci&oacute;n del mismo o una reducci&oacute;n de la calidad de dicho servicio. El objetivo de ITIL es reiniciar el funcionamiento normal tan r&aacute;pido como sea posible con el menor impacto para el negocio y el usuario con el menor coste posible.</em></p>\n', '20490050'),
(60, 45, '<p>Un incidente puede coincidir con un &ldquo;problema conocido&rdquo; (fallo sin un origen conocido) o con un &ldquo;error conocido&rdquo; (fallo con origen conocido) bajo el control de la gesti&oacute;n de problemas y registrado en la base de datos de errores conocidos.</p>\n\n<p>En el caso de que se hayan determinado algunas estrategias de resoluci&oacute;n de problemas, el acceso a ellas por parte del servicio t&eacute;cnico permitir&aacute; una mayor velocidad a la hora de resolverlas. Cuando un incidente no es el resultado de un problema conocido o un error conocido, puede ser un fallo puntual o puede ser necesario comenzar una gesti&oacute;n de problemas, de forma que este incidente quede registrado para futuras referencias.</p>\n', '20490050'),
(61, 46, '<p>Los incidentes son el resultado de fallos o errores en la infraestructura TI. La causa de los incidentes puede ser aparente y puede ser solucionada sin necesidad de inversiones futuras, mediante una reparaci&oacute;n o una petici&oacute;n de cambio para solventar el error.</p>\n\n<p>Cuando un incidente es considerado como grave, o se observan m&uacute;ltiples casos de incidentes similares, puede crearse el registro de un problema (el problema puede no ser registrado hasta que se haya repetido varias veces el mismo incidente). La gesti&oacute;n de un problema es diferente a la gesti&oacute;n de incidentes, se desarrolla en otro equipo de trabajo y se controla mediante la gesti&oacute;n de problemas. Cuando un problema se ha identificado y no se conoce la soluci&oacute;n, el problema se convierte en un &ldquo;problema conocido&rdquo;. Tras identificar la causa del problema, este pasa a ser un &ldquo;error conocido&rdquo;. Finalmente una petici&oacute;n de cambio puede ser realizada para solventar el error. A partir de este punto, el proyecto es competencia de la gesti&oacute;n del cambio.</p>\n\n<p>Una petici&oacute;n de un nuevo servicio no se clasifica como incidente, si no como una petici&oacute;n de cambio.</p>\n', '20490050'),
(62, 47, '<p>El proceso habitual de gesti&oacute;n de incidentes es el siguiente:</p>\n\n<h3>Detecci&oacute;n y registro del incidente</h3>\n\n<p>Con la afectaci&oacute;n a uno o varios usuarios, o la detecci&oacute;n de un sistema de monitoreo, se crea una nueva incidencia, en general, en un sistema de solicitud de tickets (Ticket Request System o Help Desk)</p>\n\n<h3>Clasificaci&oacute;n y soporte inicial</h3>\n\n<p>Como pueden recibirse m&uacute;ltiples incidencias al mismo tiempo, el paso siguiente es determinar el nivel de prioridad, para enviarse al personal de soporte correspondiente.</p>\n\n<p>La mayor&iacute;a de aplicaciones permite automatizar la asignaci&oacute;n de incidencias para reducir los tiempos de atenci&oacute;n, conforme a reglas de negocio, creando los criterios necesarios.</p>\n\n<p>La prioridad se asigna seg&uacute;n:</p>\n\n<p><strong>Impacto &nbsp;:</strong>&nbsp;Afectaci&oacute;n del negocio y/o n&uacute;mero de usuarios afectados</p>\n\n<p><strong>Urgencia&nbsp;:</strong>&nbsp;Tiempo m&aacute;ximo para soluci&oacute;n y/o nivel de servicio o ANS (en ingl&eacute;s Service Level Agreement o SLA)</p>\n\n<h3>Investigaci&oacute;n y diagn&oacute;stico</h3>\n\n<p>Inicialmente se deben identificar, analizar y documentar todos los s&iacute;ntomas. Esto ayuda a determinar la ubicaci&oacute;n y posibles correcciones.</p>\n\n<h3>Escalamiento</h3>\n\n<p>Mecanismo para agilizar la soluci&oacute;n oportuna que puede darse en cualquier etapa del proceso. Ocurre cuando el personal de un Nivel de Soporte transfiere el incidente hac&iacute;a el siguiente nivel, por:</p>\n\n<ul>\n	<li>Falta de conocimientos</li>\n	<li>Poca experiencia</li>\n	<li>Falta de recursos requeridos</li>\n</ul>\n\n<h3>Soluci&oacute;n y restablecimiento del servicio</h3>\n\n<p>La r&aacute;pida soluci&oacute;n es cr&iacute;tica, lo importante es restablecer el servicio y mejorar la satisfacci&oacute;n del usuario.</p>\n\n<p>Despu&eacute;s de lo cual, se puede agregar la soluci&oacute;n a la base de conocimiento (Knowledge Base - KB), que ayudar&aacute; a disminuir los tiempos de respuesta cuando se repita una incidencia igual o similar.</p>\n\n<h3>Cierre del incidente</h3>\n\n<p>Despu&eacute;s de restablecer el servicio y que el usuario confirme la soluci&oacute;n del problema, se cierra la incidencia documentando detalladamente.</p>\n\n<p><em>Si se conoce la causa, &eacute;sta se agrega a la base de conocimiento con las evidencias, an&aacute;lisis, descartes y soluci&oacute;n.</em></p>\n\n<p><em>Si se desconoce la causa, se genera un caso donde se analice toda la documentaci&oacute;n y se realicen acciones tendientes a encontrala.</em></p>\n\n<h3>Monitorizaci&oacute;n, seguimiento y comunicaci&oacute;n del incidente</h3>\n\n<p>El an&aacute;lisis de repetici&oacute;n de incidencias, tiempos de respuesta y soluci&oacute;n medir&aacute;n el rendimiento del &aacute;rea de soporte como el nivel de satisfacci&oacute;n del usuario</p>\n\n<p>--</p>\n', '20490050'),
(63, 48, '<p>Los incidentes deben clasificarse a medida que son reportados. Algunos ejemplos de incidentes seg&uacute;n su clasificaci&oacute;n son los siguientes:</p>\n\n<ul>\n	<li>Aplicaciones\n	<ul>\n		<li>Servicio no disponible</li>\n		<li>Fallo de la aplicaci&oacute;n</li>\n		<li>Capacidad del disco duro excedida</li>\n	</ul>\n	</li>\n	<li>Hardware\n	<ul>\n		<li>Ca&iacute;da del sistema</li>\n		<li>Alerta autom&aacute;tica</li>\n		<li>Impresi&oacute;n</li>\n	</ul>\n	</li>\n</ul>\n', '20490050'),
(70, 42, '<p style="text-align:justify">La&nbsp;<strong>gesti&oacute;n de incidentes</strong>&nbsp;es un &aacute;rea de procesos perteneciente a la&nbsp;<a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_servicios_de_tecnolog%C3%ADas_de_la_informaci%C3%B3n" title="GestiÃ³n de servicios de tecnologÃ­as de la informaciÃ³n">gesti&oacute;n de s<span style="font-size:14px">ervicios de tecnolog&iacute;as de la informaci&oacute;n</span></a><span style="font-size:14px">. El primer objetivo de la gesti&oacute;n de incidentes es recuperar el nivel habitual de funcionamiento del servicio y minimizar en todo lo posible el impacto negativo en la organizaci&oacute;n de forma que la calidad del servicio y la disponibilidad se mantengan.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Los incidentes que no pueden ser resueltos r&aacute;pidamente por el equipo de ayuda al usuario, son asignados a un especialista del equipo de soporte t&eacute;cnico. La resoluci&oacute;n del incidente debe ser ejecutada lo antes posible para restaurar el servicio r&aacute;pidamente</span></p>\n', '2020');

--
-- Disparadores `gestion_incidente_articulo_d`
--
DROP TRIGGER IF EXISTS `modificar_gestion_incidente_articulo_d`;
DELIMITER //
CREATE TRIGGER `modificar_gestion_incidente_articulo_d` AFTER UPDATE ON `gestion_incidente_articulo_d`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Modificar', 'gestion_incidente_articulo_d')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_incidente_articulo_t`
--

CREATE TABLE IF NOT EXISTS `gestion_incidente_articulo_t` (
  `ID_GIT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_GIT` text COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `UCEDULA` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_GIT`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=76 ;

--
-- Volcado de datos para la tabla `gestion_incidente_articulo_t`
--

INSERT INTO `gestion_incidente_articulo_t` (`ID_GIT`, `TITULO_GIT`, `TIPO`, `UCEDULA`) VALUES
(42, 'GestiÃ³n de Incidentes', 'privado', '2'),
(43, 'Ãndice', 'publico', '20490050'),
(44, 'DefiniciÃ³n', 'publico', '20490050'),
(45, 'Incidentes, problemas y errores conocidos', 'publico', '20490050'),
(46, 'Incidentes y cambios', 'publico', '20490050'),
(47, 'Procesos de gestiÃ³n de incidentes', 'publico', '20490050'),
(48, 'Ejemplos', 'publico', '20490050');

--
-- Disparadores `gestion_incidente_articulo_t`
--
DROP TRIGGER IF EXISTS `insertar_gestion_incidente_articulo_t`;
DELIMITER //
CREATE TRIGGER `insertar_gestion_incidente_articulo_t` AFTER INSERT ON `gestion_incidente_articulo_t`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Insertar', 'gestion_incidente_articulo_t')
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modificar_gestion_incidente_articulo_t`;
DELIMITER //
CREATE TRIGGER `modificar_gestion_incidente_articulo_t` AFTER UPDATE ON `gestion_incidente_articulo_t`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Modificar', 'gestion_incidente_articulo_t')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_incidente_manual`
--

CREATE TABLE IF NOT EXISTS `gestion_incidente_manual` (
  `ID_GIM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_GIM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_GIM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `gestion_incidente_manual`
--

INSERT INTO `gestion_incidente_manual` (`ID_GIM`, `TITULO_GIM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(13, 'Manual de pruebasss', 'publico', '../manual/Manual Laravel 5.4.docx', '2');

--
-- Disparadores `gestion_incidente_manual`
--
DROP TRIGGER IF EXISTS `insertar_gestion_incidente_manual`;
DELIMITER //
CREATE TRIGGER `insertar_gestion_incidente_manual` AFTER INSERT ON `gestion_incidente_manual`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Insertar', 'gestion_incidente_manual')
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modificar_gestion_incidente_manual`;
DELIMITER //
CREATE TRIGGER `modificar_gestion_incidente_manual` AFTER UPDATE ON `gestion_incidente_manual`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Modificar', 'gestion_incidente_manual')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_incidente_tutorial`
--

CREATE TABLE IF NOT EXISTS `gestion_incidente_tutorial` (
  `ID_GITT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_GITT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_GITT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `gestion_incidente_tutorial`
--

INSERT INTO `gestion_incidente_tutorial` (`ID_GITT`, `TITULO_GITT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(10, 'Sssaaa', 'publico', 'video 2.webm', '2');

--
-- Disparadores `gestion_incidente_tutorial`
--
DROP TRIGGER IF EXISTS `insertar_gestion_incidente_tutorial`;
DELIMITER //
CREATE TRIGGER `insertar_gestion_incidente_tutorial` AFTER INSERT ON `gestion_incidente_tutorial`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Insertar', 'gestion_incidente_tutorial')
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modificar_gestion_incidente_tutorial`;
DELIMITER //
CREATE TRIGGER `modificar_gestion_incidente_tutorial` AFTER UPDATE ON `gestion_incidente_tutorial`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Modificar', 'gestion_incidente_tutorial')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hcm_articulo_d`
--

CREATE TABLE IF NOT EXISTS `hcm_articulo_d` (
  `ID_HCMAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_HCMAT` int(100) NOT NULL,
  `DESCRIPCION_HCMAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_HCMAD`,`ID_TITULO_HCMAT`),
  KEY `hcm_articulo_d_ibfk_1` (`ID_TITULO_HCMAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `hcm_articulo_d`
--

INSERT INTO `hcm_articulo_d` (`ID_HCMAD`, `ID_TITULO_HCMAT`, `DESCRIPCION_HCMAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">Es una inversi&oacute;n que resulta perentoria e ineludible pues a pesar que afecte el presupuesto, brindar&aacute; seguridad en el futuro.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">El objeto del Seguro de HCM<strong>,</strong> es indemnizar al asegurado titular por los gastos razonables m&eacute;dicamente necesarios incurridos por el asegurado o sus familiares dependientes inscritos en la p&oacute;liza.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Siempre y cuando, tales gastos se originen como consecuencia directa de alteraciones a la salud,<strong> </strong>de acuerdo a los l&iacute;mites y condiciones en ella establecidos y se hubiere pagado previamente la prima convenida.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Entre los gastos amparados por la p&oacute;liza, se encuentran:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Estad&iacute;a Hospitalaria. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Honorarios M&eacute;dicos. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Gastos cl&iacute;nicos y especiales de diagn&oacute;stico. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Maternidad y Obstetricia (generalmente opcional) </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Gastos por cirug&iacute;a ambulatoria. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Tratamiento M&eacute;dico con o sin Hospitalizaci&oacute;n. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Ambulancia. </span></p>\n	</li>\n</ul>\n', '7070'),
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">Generalmente, este per&iacute;odo varia entre 3 y 18 meses, dependiendo de la enfermedad de que se trate.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Sin embargo, en los casos de accidente, no se aplican plazos de espera como tampoco en las siguientes enfermedades agudas:</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Fiebre reum&aacute;tica, apendicitis, bronquitis, gastroenteritis, abscesos (intraabdominales, intratoraxicos e intracraneales), adenoiditis, v&eacute;rtigo o laberintitis, far&iacute;ngo &ndash; amigdalitis (sola o combinada), otitis, trastornos de la laringe, infecci&oacute;n respiratoria baja, dengue hemorr&aacute;gico, malaria, meningo-encefalitis, neumon&iacute;a y pielonefritis.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Asimismo, los gastos ocasionados por las siguientes enfermedades virales:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Parotiditis. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Rub&eacute;ola. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Sarampi&oacute;n. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Varicela. </span></p>\n	</li>\n</ul>\n\n<p style="text-align:justify"><span style="font-size:14px">Tambi&eacute;n, aquellas emergencias m&eacute;dicas que no sean consecuencia de una enfermedad preexsistente( ver condiciones de la p&oacute;liza ) .</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Es importante tomar en cuenta al momento de llenar la solicitud, colocar los datos exactos con respecto a las :</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Enfermedades. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Padecimientos. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Intervenciones quir&uacute;rgicas.</span></p>\n	</li>\n</ul>\n', '7070'),
(3, 3, '<p style="text-align:justify"><span style="font-size:14px">Esta cobertura garantiza el pago de los gastos usuales, razonales y acostumbrados, del lugar en que se causen, bien sea en Venezuela o en el exterior, como consecuencia de enfermedades o de los eventos siguientes:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Enfermedades neurol&oacute;gicas y neuroquir&uacute;rgicas, incluyendo accidentes cerebro-vasculares y neoplasmas. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Tratamiento quir&uacute;rgico de cardiopat&iacute;a isqu&eacute;mica. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Tratamiento de c&aacute;ncer, incluyendo quimioterapia, radioterapia y hormonoterapia. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Transplante de &oacute;rganos. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Tratamiento m&eacute;dico quir&uacute;rgico para el paciente con trauma mayor (politraumatismo). </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Tratamiento de la insuficiencia renal ( di&aacute;lisis). </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Quemaduras Graves. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Sep&aacute;is severa. </span></p>\n	</li>\n</ul>\n', '7070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hcm_articulo_t`
--

CREATE TABLE IF NOT EXISTS `hcm_articulo_t` (
  `ID_HCMAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_HCMAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_HCMAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `hcm_articulo_t`
--

INSERT INTO `hcm_articulo_t` (`ID_HCMAT`, `TITULO_HCMAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Seguros de HCM', 'publico', '7070'),
(2, 'Reglamentos del seguro HCM', 'privado', '7070'),
(3, 'Situaciones extremas', 'publico', '7070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hcm_manual`
--

CREATE TABLE IF NOT EXISTS `hcm_manual` (
  `ID_HCMM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_HCMM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_HCMM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `hcm_manual`
--

INSERT INTO `hcm_manual` (`ID_HCMM`, `TITULO_HCMM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Ad', 'privado', '../manual/Manual Laravel 5.4.docx', '7070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hcm_tutorial`
--

CREATE TABLE IF NOT EXISTS `hcm_tutorial` (
  `ID_HCMTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_HCMTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_HCMTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `hcm_tutorial`
--

INSERT INTO `hcm_tutorial` (`ID_HCMTT`, `TITULO_HCMTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'Fas', 'privado', '../tutorial/video 1.webm', '7070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informatica_forense_articulo_d`
--

CREATE TABLE IF NOT EXISTS `informatica_forense_articulo_d` (
  `ID_IFAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_IFAT` int(100) NOT NULL,
  `DESCRIPCION_IFAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_IFAD`,`ID_TITULO_IFAT`),
  KEY `informatica_forense_articulo_d_ibfk_1` (`ID_TITULO_IFAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `informatica_forense_articulo_d`
--

INSERT INTO `informatica_forense_articulo_d` (`ID_IFAD`, `ID_TITULO_IFAT`, `DESCRIPCION_IFAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">Tambi&eacute;n llamado inform&aacute;tica forense, computaci&oacute;n forense, an&aacute;lisis forense digital o examinaci&oacute;n forense digital es la aplicaci&oacute;n de t&eacute;cnicas cient&iacute;ficas y anal&iacute;ticas especializadas a infraestructura tecnol&oacute;gica que permiten identificar, preservar, analizar y presentar datos que sean v&aacute;lidos dentro de un proceso legal.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Dichas t&eacute;cnicas incluyen reconstruir el bien inform&aacute;tico, examinar datos residuales, autenticar datos y explicar las caracter&iacute;sticas t&eacute;cnicas del uso aplicado a los datos y bienes inform&aacute;ticos.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Como la definici&oacute;n anterior lo indica, esta disciplina hace uso no solo de tecnolog&iacute;as de punta para poder mantener la integridad de los datos y del procesamiento de los mismos; sino que tambi&eacute;n requiere de una especializaci&oacute;n y conocimientos avanzados en materia de inform&aacute;tica y sistemas para poder detectar dentro de cualquier dispositivo electr&oacute;nico lo que ha sucedido.</span></p>\n', '9090'),
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">La inform&aacute;tica forense tiene tres objetivos:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">La compensaci&oacute;n de los da&ntilde;os causados por los intrusos o criminales. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">La persecuci&oacute;n y procesamiento judicial de los criminales. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">La creaci&oacute;n y aplicaci&oacute;n de medidas para prevenir casos similares. </span></p>\n	</li>\n</ul>\n\n<p style="text-align:justify"><span style="font-size:14px">Estos objetivos son logrados de varias formas, entre ellas, la principal es la colecci&oacute;n de evidencia.</span></p>\n', '9090'),
(3, 3, '<p style="text-align:justify"><span style="font-size:14px">La infraestructura inform&aacute;tica a analizar puede ser toda aquella que tenga una Memoria, por lo que se incluyen en tal pericia los siguientes dispositivos:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Disco duro de una Computadora o Servidor </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Documentaci&oacute;n referida del caso. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Tipo de Sistema de Telecomunicaciones </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Informaci&oacute;n Electr&oacute;nica MAC address </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Logs de seguridad. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Informaci&oacute;n de Firewalls </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">IP, redes Proxy. lmhost, host, Crossover, pasarelas </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Software de monitoreo y seguridad </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Credenciales de autentificaci&oacute;n </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Trazo de paquetes de red. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Tel&eacute;fono M&oacute;vil o Celular, parte de la telefon&iacute;a celular, </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Agendas Electr&oacute;nicas (PDA) </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Dispositivos de GPS. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Impresora </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Memoria USB </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Bios </span></p>\n	</li>\n</ul>\n\n<p style="text-align:center"><img alt="Imagen relacionada" src="http://404.in.ua/wp-content/uploads/2017/01/yak-vidnovyty-dani.png" style="height:191px; width:500px" />&nbsp;</p>\n', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informatica_forense_articulo_t`
--

CREATE TABLE IF NOT EXISTS `informatica_forense_articulo_t` (
  `ID_IFAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_IFAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_IFAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `informatica_forense_articulo_t`
--

INSERT INTO `informatica_forense_articulo_t` (`ID_IFAT`, `TITULO_IFAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'El cÃ³mputo forense', 'publico', '9090'),
(2, 'Objetivos de la InformÃ¡tica Forense', 'publico', '9090'),
(3, 'Dispositivos a analizar', 'privado', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informatica_forense_manual`
--

CREATE TABLE IF NOT EXISTS `informatica_forense_manual` (
  `ID_IFM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_IFM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_IFM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `informatica_forense_manual`
--

INSERT INTO `informatica_forense_manual` (`ID_IFM`, `TITULO_IFM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(2, 'Asd', 'publico', '../manual/Manual Laravel 5.4.docx', '9090'),
(4, 'D', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informatica_forense_tutorial`
--

CREATE TABLE IF NOT EXISTS `informatica_forense_tutorial` (
  `ID_IFTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_IFTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_IFTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `informatica_forense_tutorial`
--

INSERT INTO `informatica_forense_tutorial` (`ID_IFTT`, `TITULO_IFTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'W', 'privado', 'video 2.webm', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina_articulo_d`
--

CREATE TABLE IF NOT EXISTS `nomina_articulo_d` (
  `ID_NAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_NAT` int(100) NOT NULL,
  `DESCRIPCION_NAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_NAD`,`ID_TITULO_NAT`),
  KEY `nomina_articulo_d_ibfk_1` (`ID_TITULO_NAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `nomina_articulo_d`
--

INSERT INTO `nomina_articulo_d` (`ID_NAD`, `ID_TITULO_NAT`, `DESCRIPCION_NAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">En una empresa, la n&oacute;mina es la suma de todos los registros financieros de los sueldos de los empleados, incluyendo los salarios, las bonificaciones y las deducciones. En la contabilidad, la n&oacute;mina se refiere a la cantidad pagada a los empleados por los servicios que prestaron durante un cierto per&iacute;odo de tiempo. La n&oacute;mina tiene un papel importante en una sociedad por varias razones.</span></p>\n\n<p style="text-align:right"><img alt="Resultado de imagen para nomina imagenes" src="http://conceptodefinicion.de/wp-content/uploads/2016/11/N%C3%B3mina.jpg" style="border-style:solid; border-width:1px; height:183px; margin:0px; width:300px" /></p>\n', '7070'),
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">Existen pasos fundamentales que son comunes en la mayor&iacute;a de las organizaciones. Uno de esos pasos, que se ejecuta al final de cada per&iacute;odo de pago, consiste en la preparaci&oacute;n de la n&oacute;mina, debe mostrar los nombres y remuneraciones de todos los trabajadores as&iacute; como sus deducciones. La informaci&oacute;n que se incluye en ese registro de n&oacute;mina consiste en el salario autorizado para cada trabajador y el n&uacute;mero de horas trabajadas, tomadas de las tarjetas de tiempo o de documentos similares. Despu&eacute;s de separar las horas ordinarias (estructurales) de las extraordinarias (no estructurales), y de aplicar las tarifas apropiadas para cada categor&iacute;a laboral se tiene el total del salario devengado. La retenci&oacute;n en la fuente, el aporte al seguro social y cualquier otra deducci&oacute;n autorizada por el trabajador se registran luego del valor devengado para obtener por diferencia entre el total devengado y los totales retenidos el valor neto.</span></p>\n', '7070'),
(3, 3, '<p style="text-align:justify"><span style="font-size:14px">Se incluyen las deducciones de Seguridad Social y Hacienda, y dem&aacute;s obligaciones adquiridas de forma voluntaria por el trabajador con la empresa: anticipos, pr&eacute;stamos, etc.</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Contingencias</strong>: C&aacute;lculo de las bases de cotizaci&oacute;n por contingencias comunes y por contingencias profesionales, tambi&eacute;n la base de horas extras, etc. La base de cotizaci&oacute;n mensual se obtiene como regla general del total devengado anual incluyendo las pagas extras que se&ntilde;ale el convenio, divido por 12 meses y multiplicado por los d&iacute;as o meses de alta del trabajador en la empresa.</span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Contingencias comune</strong>s: 4,7% de la Base de Cotizaci&oacute;n por Contingencias Comunes. En caso de baja por enfermedad, el salario a percibir es un porcentaje legal (ver regla dictada por la ley) de la base de cotizaci&oacute;n del mes (o d&iacute;as) anterior al d&iacute;a efectivo de la baja multiplicado por los d&iacute;as reales de baja por enfermedad del periodo(mes). </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Desempleo</strong>: 1,55 % de la Base de Cotizaci&oacute;n por Contingencias Profesionales.</span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Formaci&oacute;n profesional</strong>: 0,1 % de la Base de Cotizaci&oacute;n por Contingencias Profesionales, se destina a cursos.</span></p>\n	</li>\n</ul>\n', '7070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina_articulo_t`
--

CREATE TABLE IF NOT EXISTS `nomina_articulo_t` (
  `ID_NAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_NAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_NAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `nomina_articulo_t`
--

INSERT INTO `nomina_articulo_t` (`ID_NAT`, `TITULO_NAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'NÃ³mina', 'publico', '7070'),
(2, 'Registro y procedimiento para contabilizar la nÃ³mina en AdministraciÃ³n', 'publico', '7070'),
(3, 'Deducciones', 'privado', '7070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina_manual`
--

CREATE TABLE IF NOT EXISTS `nomina_manual` (
  `ID_NM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_NM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_NM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `nomina_manual`
--

INSERT INTO `nomina_manual` (`ID_NM`, `TITULO_NM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'D', 'privado', '../manual/Manual de Usuario 2,86.pdf', '7070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina_tutorial`
--

CREATE TABLE IF NOT EXISTS `nomina_tutorial` (
  `ID_NTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_NTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_NTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `nomina_tutorial`
--

INSERT INTO `nomina_tutorial` (`ID_NTT`, `TITULO_NTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'D', 'privado', 'video 1.webm', '7070');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oam_articulo_d`
--

CREATE TABLE IF NOT EXISTS `oam_articulo_d` (
  `ID_OAMD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_OAMT` int(100) NOT NULL,
  `DESCRIPCION_OAMD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OAMD`,`ID_TITULO_OAMT`),
  KEY `oam_articulo_d_ibfk_1` (`ID_TITULO_OAMT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oam_articulo_d`
--

INSERT INTO `oam_articulo_d` (`ID_OAMD`, `ID_TITULO_OAMT`, `DESCRIPCION_OAMD`, `UCEDULA`) VALUES
(1, 6, '<p style="text-align:justify"><span style="font-size:14px"><strong>OAM: </strong>Es un protocolo de uso a nivel mundial en las redes de telecomunicaciones, OAM sus siglas hace referencia a la operaci&oacute;n, administraci&oacute;n y mantenimiento de redes con &uacute;ltima milla ethernet y servicios extremo a extremo que entregan los datos en interfaz ethernet al cliente.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px"><strong>VENTAJAS:</strong></span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">la ventaja principal del uso de OAM en redes ethernet es la facilidad que este provee para detectar fallas en la red de manera m&aacute;s r&aacute;pida, medir desempe&ntilde;o de la red, realizar pruebas de loopback y de conectividad a nivel de capa 2, y entre todas las funcionalidades de OAM la que m&aacute;s llama la atenci&oacute;n de los proveedores de servicios se trata de la detecci&oacute;n de fallas el&eacute;ctricas en el equipo remoto.</span></p>\n', '20490050'),
(2, 7, '<p style="text-align:justify"><span style="font-size:14px">Hoy en d&iacute;a la tecnolog&iacute;a m&aacute;s utilizada en las redes de acceso por los proveedores de servicio es Ethernet, dado que esta tecnolog&iacute;a provee mayor econom&iacute;a al momento del despliegue de redes y crecimiento, el tiempo de comisionamiento es menor, los equipos a utilizar son m&aacute;s econ&oacute;micos, y se puede transportar sobre otras tecnolog&iacute;as como SDH-NG.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Las facilidades hacia el usuario son servicios de capa 2 en las cuales se puede interconectar varias sedes del cliente final simulando un switch virtual como si todo fuera una sola red.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Para hacer confiable el transporte de datos sobre redes ethernet se aplican tecnolog&iacute;as como MPLS o Carrier Ethernet, y se aplican protocolos de OAM que junto a pol&iacute;ticas de calidad de servicio hace &oacute;ptimo la transmisi&oacute;n de datos de diferentes aplicaciones como VoIP, Video, Triple Play. Los protocolos de OAM proporcionan a los proveedores mecanismos de diagn&oacute;stico, gesti&oacute;n y medici&oacute;n de performance, para manejar de manera remota los recursos de red.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px"><strong>Ventajas</strong></span></p>\n\n<ul>\n	<li style="text-align: justify;"><span style="font-size:14px">Se minoriza la frecuencia de env&iacute;o de personal t&eacute;cnico al sitio remoto para revisi&oacute;n de fallas.</span></li>\n	<li style="text-align: justify;"><span style="font-size:14px">Se monitorea la red y los servicios que se encuentran en &eacute;sta, provee una visi&oacute;n end to end de los servicios aprovisonados sobre esta.</span></li>\n	<li style="text-align: justify;"><span style="font-size:14px">Se provee aislamiento de fallas r&aacute;pidamente en la red y en el servicio.</span></li>\n</ul>\n', '2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oam_articulo_t`
--

CREATE TABLE IF NOT EXISTS `oam_articulo_t` (
  `ID_OAMT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OAMT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_OAMT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `oam_articulo_t`
--

INSERT INTO `oam_articulo_t` (`ID_OAMT`, `TITULO_OAMT`, `TIPO`, `UCEDULA`) VALUES
(6, 'OPERACIÃ“N, ADMINISTRACIÃ“N Y MANTENIMIENTO', 'publico', '20490050'),
(7, 'ETHERNET y OAM', 'privado', '2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oam_manual`
--

CREATE TABLE IF NOT EXISTS `oam_manual` (
  `ID_OAMM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OAMM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OAMM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `oam_manual`
--

INSERT INTO `oam_manual` (`ID_OAMM`, `TITULO_OAMM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'alo', 'publico', '../manual/Manual Laravel 5.4.docx', '20490050'),
(2, 'As', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '2020'),
(3, 'Asd', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oam_tutorial`
--

CREATE TABLE IF NOT EXISTS `oam_tutorial` (
  `ID_OAMTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OAMTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OAMTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oam_tutorial`
--

INSERT INTO `oam_tutorial` (`ID_OAMTT`, `TITULO_OAMTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, '5325', 'privado', 'Screencast_03-09-17_18_54_53.webm.webm', '20490050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_organizacion_articulo_d`
--

CREATE TABLE IF NOT EXISTS `oficina_organizacion_articulo_d` (
  `ID_OAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_OAT` int(100) NOT NULL,
  `DESCRIPCION_OAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OAD`,`ID_TITULO_OAT`),
  KEY `oficina_organizacion_articulo_d_ibfk_1` (`ID_TITULO_OAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_organizacion_articulo_d`
--

INSERT INTO `oficina_organizacion_articulo_d` (`ID_OAD`, `ID_TITULO_OAT`, `DESCRIPCION_OAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">Una organizaci&oacute;n, es un grupo social compuesto por personas naturales, tareas y administraciones que forman una estructura sistem&aacute;tica de relaciones de interacci&oacute;n, tendientes a producir bienes, servicios o normativas para satisfacer las necesidades de una comunidad dentro de un entorno, y as&iacute; poder lograr el prop&oacute;sito distintivo que es su misi&oacute;n. Es un sistema de actividades conscientemente coordinadas formado por dos o m&aacute;s personas; la cooperaci&oacute;n entre ellas es esencial para la existencia de la organizaci&oacute;n. Una organizaci&oacute;n s&oacute;lo existe cuando hay personas capaces de comunicarse y que est&aacute;n dispuestas a actuar conjuntamente para lograr un objetivo com&uacute;n. Es un conjunto de cargos con reglas y normas de comportamiento que han de respetar todos sus miembros, y as&iacute; generar el medio que permite la acci&oacute;n de una empresa. La organizaci&oacute;n es el acto de disponer y coordinar los recursos disponibles (materiales, humanos y financieros). Funciona mediante normas y bases de datos que han sido dispuestas para estos prop&oacute;sitos.</span></p>\n\n<p style="text-align:center"><img alt="Imagen relacionada" class="irc_mi" src="https://latizavirtual.files.wordpress.com/2013/11/recu.png" style="height:264px; margin-top:15px; width:367px" /></p>\n\n<p style="text-align:justify"><span style="font-size:14px">La forma en que se organizan las empresas es estudiada por una<strong> </strong>ciencia administrativa denominada administraci&oacute;n de empresas, que estudia la forma en qu&eacute; se gestionan los recursos y procesos. Esta<strong> </strong>administraci&oacute;n es considerada como la base del funcionamiento de una empresa.</span></p>\n\n<p style="text-align:center"><img alt="Resultado de imagen para imagen de organizacion en png" class="irc_mi" src="https://userscontent2.emaze.com/images/063d6b44-3700-4303-8dc4-e5b1ebf17683/779b5204053eabcc50e96985b322662d.png" style="height:278px; margin-top:90px; width:647px" /></p>\n\n<p style="text-align:justify">&nbsp;</p>\n', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_organizacion_articulo_t`
--

CREATE TABLE IF NOT EXISTS `oficina_organizacion_articulo_t` (
  `ID_OAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_OAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_organizacion_articulo_t`
--

INSERT INTO `oficina_organizacion_articulo_t` (`ID_OAT`, `TITULO_OAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'OrganizaciÃ³n', 'privado', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_organizacion_manual`
--

CREATE TABLE IF NOT EXISTS `oficina_organizacion_manual` (
  `ID_OM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oficina_organizacion_manual`
--

INSERT INTO `oficina_organizacion_manual` (`ID_OM`, `TITULO_OM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(2, 'Manual', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_organizacion_tutorial`
--

CREATE TABLE IF NOT EXISTS `oficina_organizacion_tutorial` (
  `ID_OTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oficina_organizacion_tutorial`
--

INSERT INTO `oficina_organizacion_tutorial` (`ID_OTT`, `TITULO_OTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'Asd', 'privado', 'video 2.webm', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_planificacion_articulo_d`
--

CREATE TABLE IF NOT EXISTS `oficina_planificacion_articulo_d` (
  `ID_OPAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_OPAT` int(100) NOT NULL,
  `DESCRIPCION_OPAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OPAD`,`ID_TITULO_OPAT`),
  KEY `oficina_planificacion_articulo_d_ibfk_1` (`ID_TITULO_OPAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_planificacion_articulo_d`
--

INSERT INTO `oficina_planificacion_articulo_d` (`ID_OPAD`, `ID_TITULO_OPAT`, `DESCRIPCION_OPAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">Los esfuerzos que se realizan a fin de cumplir objetivos y hacer realidad diversos prop&oacute;sitos se enmarcan dentro de una planificaci&oacute;n. Este proceso exige respetar una serie de pasos que se fijan en un primer momento, para lo cual aquellos que elaboran una planificaci&oacute;n emplean diferentes herramientas y expresiones.</span></p>\n\n<p style="text-align:center"><img alt="Imagen relacionada" class="irc_mi" src="http://www.delfinnetsoftware.com/wp-content/uploads/2016/08/ingenieria.png" style="height:383px; margin-top:42px; width:484px" /></p>\n\n<p style="text-align:justify">Cabe destacar que, aunque hay organismos que acuden a una planificaci&oacute;n formal y sistem&aacute;tica, la planificaci&oacute;n tambi&eacute;n puede concretarse de manera emp&iacute;rica en la vida cotidiana. Al igual que la<strong> </strong>administraci&oacute;n, la planificaci&oacute;n forma parte de la mayor&iacute;a de las actividades de las personas, empresas y organizaciones de toda &iacute;ndole.</p>\n', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_planificacion_articulo_t`
--

CREATE TABLE IF NOT EXISTS `oficina_planificacion_articulo_t` (
  `ID_OPAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OPAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_OPAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_planificacion_articulo_t`
--

INSERT INTO `oficina_planificacion_articulo_t` (`ID_OPAT`, `TITULO_OPAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'PlanificaciÃ³n', 'privado', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_planificacion_manual`
--

CREATE TABLE IF NOT EXISTS `oficina_planificacion_manual` (
  `ID_OPM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OPM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OPM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_planificacion_manual`
--

INSERT INTO `oficina_planificacion_manual` (`ID_OPM`, `TITULO_OPM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Ss', 'privado', '../manual/Manual Laravel 5.4.docx', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_planificacion_tutorial`
--

CREATE TABLE IF NOT EXISTS `oficina_planificacion_tutorial` (
  `ID_OPTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OPTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OPTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_planificacion_tutorial`
--

INSERT INTO `oficina_planificacion_tutorial` (`ID_OPTT`, `TITULO_OPTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Sd', 'privado', 'video 2.webm', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_presupuesto_articulo_d`
--

CREATE TABLE IF NOT EXISTS `oficina_presupuesto_articulo_d` (
  `ID_OPAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_OPAT` int(100) NOT NULL,
  `DESCRIPCION_OPAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OPAD`,`ID_TITULO_OPAT`),
  KEY `oficina_presupuesto_articulo_d_ibfk_1` (`ID_TITULO_OPAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_presupuesto_articulo_d`
--

INSERT INTO `oficina_presupuesto_articulo_d` (`ID_OPAD`, `ID_TITULO_OPAT`, `DESCRIPCION_OPAD`, `UCEDULA`) VALUES
(1, 1, '<p><img alt="" class="alignleft size-medium wp-image-225" src="https://www.importancia.org/wp-content/uploads/presupuesto-300x225.jpg" style="height:225px; width:300px" /></p>\n\n<p>Es un conjunto de gastos y entradas que una persona, entidad o gobierno puede preveer para un per&iacute;odo determinado en lo que respecta a sus finanzas, los usos y los objetivos que se le dar&aacute;n a cada partida o gasto as&iacute; como tambi&eacute;n los usos y previsiones a largo plazo de los fondos disponibles.</p>\n\n<p>El presupuesto es justamente pre-suponer en materia de finanzas y&nbsp; econom&iacute;a cu&aacute;les ser&aacute;n las actividades o movimientos a realizar en un per&iacute;odo futuro que se calcula demanera aproximada.</p>\n\n<p><img alt="Resultado de imagen para imagen de presupuesto en png" class="irc_mi" src="http://oscasa.es/wp-content/uploads/2017/04/emitirpresupuesto.png" style="float:right; height:247px; margin-top:35px; width:498px" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>La importancia del presupuesto siempre radica en realizar una proyecci&oacute;n seria y fundada sobre los movimientos econ&oacute;micos, monetarios y financieros que caracterizar&aacute;n al sujeto que lo realiza. As&iacute;, sin el presupuesto se puede f&aacute;cilmente entrar en caos al generarse m&aacute;s gastos de lo necesario o incluso al no controlar las ganancias o entradas de capital que se realicen.</p>\n\n<p><img alt="Resultado de imagen para imagen de presupuesto en png" class="irc_mi" src="https://i1.wp.com/www.mtitecnologia.com.br/wp-content/uploads/2017/10/mtitecnologia-empreendedorismo-feminino-1.jpg?resize=585%2C331" style="height:331px; margin-top:114px; width:585px" /></p>\n\n<div style="left:-99999px; position:absolute">a importancia del presupuesto siempre radica en realizar una proyecci&oacute;n seria y fundada sobre los movimientos econ&oacute;micos, monetarios y financieros que caracterizar&aacute;n al sujeto que lo realiza. As&iacute;, sin el presupuesto se puede f&aacute;cilmente entrar en caos al generarse m&aacute;s gastos de lo necesario o incluso al no controlar las ganancias o entradas de capital que se realicen.<br />\n<br />\n... de Importancia: https://www.importancia.org/presupuesto.php</div>\n\n<div style="left:-99999px; position:absolute">econom&iacute;a cu&aacute;les ser&aacute;n las actividades o movimientos a realizar en un per&iacute;odo futuro que se calcula de<br />\n<br />\n... de Importancia: https://www.importancia.org/presupuesto.php</div>\n\n<div style="left:-99999px; position:absolute">econom&iacute;a cu&aacute;les ser&aacute;n las actividades o movimientos a realizar en un per&iacute;odo futuro que se calcula de<br />\n<br />\n... de Importancia: https://www.importancia.org/presupuesto.php</div>\n', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_presupuesto_articulo_t`
--

CREATE TABLE IF NOT EXISTS `oficina_presupuesto_articulo_t` (
  `ID_OPAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OPAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_OPAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_presupuesto_articulo_t`
--

INSERT INTO `oficina_presupuesto_articulo_t` (`ID_OPAT`, `TITULO_OPAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Presupuesto', 'privado', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_presupuesto_manual`
--

CREATE TABLE IF NOT EXISTS `oficina_presupuesto_manual` (
  `ID_OPM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OPM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OPM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_presupuesto_manual`
--

INSERT INTO `oficina_presupuesto_manual` (`ID_OPM`, `TITULO_OPM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'S', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina_presupuesto_tutorial`
--

CREATE TABLE IF NOT EXISTS `oficina_presupuesto_tutorial` (
  `ID_OPTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_OPTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_OPTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `oficina_presupuesto_tutorial`
--

INSERT INTO `oficina_presupuesto_tutorial` (`ID_OPTT`, `TITULO_OPTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'A', 'privado', 'video 1.webm', '5050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos_administrativo_articulo_d`
--

CREATE TABLE IF NOT EXISTS `procesos_administrativo_articulo_d` (
  `ID_PAAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_PAAT` int(100) NOT NULL,
  `DESCRIPCION_PAAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_PAAD`,`ID_TITULO_PAAT`),
  KEY `procesos_administrativo_articulo_d_ibfk_1` (`ID_TITULO_PAAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `procesos_administrativo_articulo_d`
--

INSERT INTO `procesos_administrativo_articulo_d` (`ID_PAAD`, `ID_TITULO_PAAT`, `DESCRIPCION_PAAD`, `UCEDULA`) VALUES
(5, 3, '<p style="text-align:right"><img alt="Resultado de imagen para imagenes de administracion" class="irc_mi" src="http://pp.e3.pe/ima/0/0/0/1/6/16083.jpg" style="height:228px; margin-top:48px; width:459px" /></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Es la ciencia social que tiene por objeto el estudio de las organizaciones y la t&eacute;cnica encargada de la planificaci&oacute;n, organizaci&oacute;n, integraci&oacute;n, direcci&oacute;n y control de los recursos (humanos, financieros, materiales, tecnol&oacute;gicos, del conocimiento, etc.) de una organizaci&oacute;n, con el fin de obtener el m&aacute;ximo beneficio posible; este beneficio puede ser social, econ&oacute;mico, dependiendo de los fines perseguidos por la organizaci&oacute;n.</span></p>\n\n<p style="text-align:center"><img alt="" class="thumbimage" src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/BSC-es.png/400px-BSC-es.png" style="height:321px; width:400px" /></p>\n\n<p style="text-align:center"><span style="font-size:14px">Administraci&oacute;n moderna de una organizaci&oacute;n, centrada en la estrategia y enfocada a las necesidades del cliente.</span></p>\n', '4040');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos_administrativo_articulo_t`
--

CREATE TABLE IF NOT EXISTS `procesos_administrativo_articulo_t` (
  `ID_PAAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_PAAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_PAAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `procesos_administrativo_articulo_t`
--

INSERT INTO `procesos_administrativo_articulo_t` (`ID_PAAT`, `TITULO_PAAT`, `TIPO`, `UCEDULA`) VALUES
(3, 'AdministraciÃ³n', 'privado', '20490050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos_administrativo_manual`
--

CREATE TABLE IF NOT EXISTS `procesos_administrativo_manual` (
  `ID_PAM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_PAM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_PAM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `procesos_administrativo_manual`
--

INSERT INTO `procesos_administrativo_manual` (`ID_PAM`, `TITULO_PAM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(2, 'Ss', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '4040');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos_administrativo_tutorial`
--

CREATE TABLE IF NOT EXISTS `procesos_administrativo_tutorial` (
  `ID_PATT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_PATT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_PATT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `procesos_administrativo_tutorial`
--

INSERT INTO `procesos_administrativo_tutorial` (`ID_PATT`, `TITULO_PATT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Sad', 'privado', 'video 1.webm', '4040');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pronunciamiento_articulo_d`
--

CREATE TABLE IF NOT EXISTS `pronunciamiento_articulo_d` (
  `ID_PAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_PAT` int(100) NOT NULL,
  `DESCRIPCION_PAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_PAD`,`ID_TITULO_PAT`),
  KEY `pronunciamiento_articulo_d_ibfk_1` (`ID_TITULO_PAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `pronunciamiento_articulo_d`
--

INSERT INTO `pronunciamiento_articulo_d` (`ID_PAD`, `ID_TITULO_PAT`, `DESCRIPCION_PAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">Pronunciamiento es una noci&oacute;n con diferentes alcances. En el &aacute;mbito del derecho, el t&eacute;rmino refiere a la orden o la declaraci&oacute;n que emite un tribunal, un juez o una entidad a cargo de juzgar.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Los pronunciamientos judiciales, si bien se refieren en sentido amplio a todas las decisiones que emanan de los jueces y tribunales de justicia, en sentido estricto son aquellas decisiones, que se resuelven antes de la sentencia definitiva, y separadas de la causa principal.</span></p>\n', '6060'),
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">Otras voces que guardan relaci&oacute;n con Pronunciamiento en la secci&oacute;n sobre los Delitos pueden ser las siguientes:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Pr&oacute;fugo </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Prenda con registro </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Perjurio </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Pago con giro sin provisi&oacute;n de fondos </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px">Prenda con registro </span></p>\n	</li>\n</ul>\n', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pronunciamiento_articulo_t`
--

CREATE TABLE IF NOT EXISTS `pronunciamiento_articulo_t` (
  `ID_PAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_PAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_PAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `pronunciamiento_articulo_t`
--

INSERT INTO `pronunciamiento_articulo_t` (`ID_PAT`, `TITULO_PAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Pronunciamiento', 'privado', '6060'),
(2, 'Otras bÃºsquedas sobre pronunciamientos en el diccionario JurÃ­dico', 'publico', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pronunciamiento_manual`
--

CREATE TABLE IF NOT EXISTS `pronunciamiento_manual` (
  `ID_PM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_PM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_PM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `pronunciamiento_manual`
--

INSERT INTO `pronunciamiento_manual` (`ID_PM`, `TITULO_PM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Aa', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pronunciamiento_tutorial`
--

CREATE TABLE IF NOT EXISTS `pronunciamiento_tutorial` (
  `ID_PTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_PTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_PTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `pronunciamiento_tutorial`
--

INSERT INTO `pronunciamiento_tutorial` (`ID_PTT`, `TITULO_PTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Ss', 'privado', 'video 1.webm', '6060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_informatica_articulo_d`
--

CREATE TABLE IF NOT EXISTS `seguridad_informatica_articulo_d` (
  `ID_SIAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_SIAT` int(100) NOT NULL,
  `DESCRIPCION_SIAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_SIAD`,`ID_TITULO_SIAT`),
  KEY `seguridad_informatica_articulo_d_ibfk_1` (`ID_TITULO_SIAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `seguridad_informatica_articulo_d`
--

INSERT INTO `seguridad_informatica_articulo_d` (`ID_SIAD`, `ID_TITULO_SIAT`, `DESCRIPCION_SIAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">La seguridad inform&aacute;tica, tambi&eacute;n conocida como ciberseguridad o seguridad de tecnolog&iacute;as de la informaci&oacute;n, es el &aacute;rea relacionada con la inform&aacute;tica y la telem&aacute;tica que se enfoca en la protecci&oacute;n de la infraestructura computacional y todo lo relacionado con esta y, especialmente, la informaci&oacute;n contenida en una computadora o circulante a trav&eacute;s de las redes de computadoras.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Para ello existen una serie de est&aacute;ndares, protocolos, m&eacute;todos, reglas, herramientas y leyes concebidas para minimizar los posibles riesgos a la infraestructura o a la informaci&oacute;n. La ciberseguridad comprende software (bases de datos, metadatos, archivos), hardware, redes de computadoras y todo lo que la organizaci&oacute;n valore y signifique un riesgo si esta informaci&oacute;n confidencial llega a manos de otras personas, convirti&eacute;ndose, por ejemplo, en informaci&oacute;n privilegiada.</span></p>\n\n<p style="text-align:center"><img alt="Resultado de imagen para seguridad informatica imagenes png" src="https://cnsoluciones.com/wp-content/uploads/2016/07/seguridad-informatica-online.png" style="height:377px; width:400px" /></p>\n', '9090'),
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">La seguridad inform&aacute;tica debe establecer normas que minimicen los riesgos a la informaci&oacute;n o infraestructura inform&aacute;tica. Estas normas incluyen horarios de funcionamiento, restricciones a ciertos lugares, autorizaciones, denegaciones, perfiles de usuario, planes de emergencia, protocolos y todo lo necesario que permita un buen nivel de seguridad inform&aacute;tica minimizando el impacto en el desempe&ntilde;o de los trabajadores y de la organizaci&oacute;n en general y como principal contribuyente al uso de programas realizados por programadores.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">La seguridad inform&aacute;tica est&aacute; concebida para proteger los activos inform&aacute;ticos, entre los que se encuentran los siguientes:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>La infraestructura computacional</strong>: es una parte fundamental para el almacenamiento y gesti&oacute;n de la informaci&oacute;n, as&iacute; como para el funcionamiento mismo de la organizaci&oacute;n. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Los usuarios</strong>: son las personas que utilizan la estructura tecnol&oacute;gica, zona de comunicaciones y que gestionan la informaci&oacute;n. </span></p>\n	</li>\n</ul>\n', '9090'),
(3, 3, '<p style="text-align:justify"><span style="font-size:14px">No s&oacute;lo las amenazas que surgen de la programaci&oacute;n y el funcionamiento de un dispositivo de almacenamiento, transmisi&oacute;n o proceso deben ser consideradas, tambi&eacute;n hay otras circunstancias no inform&aacute;ticas que deben ser tomadas en cuenta.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Las <em>amenazas</em> pueden ser causadas por:</span></p>\n\n<ul>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Usuarios</strong>: causa del mayor problema ligado a la seguridad de un sistema inform&aacute;tico. En algunos casos sus acciones causan problemas de seguridad, si bien en la mayor&iacute;a de los casos es porque tienen permisos sobredimensionados, no se les han restringido acciones innecesarias, etc. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Programas maliciosos</strong>: programas destinados a perjudicar o a hacer un uso il&iacute;cito de los recursos del sistema. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Errores de programaci&oacute;n:</strong> la mayor&iacute;a de los errores de programaci&oacute;n que se pueden considerar como una amenaza inform&aacute;tica es por su condici&oacute;n de poder ser usados como exploits por los crackers, aunque se dan casos donde el mal desarrollo es, en s&iacute; mismo, una amenaza. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Intrusos</strong>: personas que consiguen acceder a los datos o programas a los cuales no est&aacute;n autorizados (<em>crackers</em>, <em>defacers</em>, <em>hackers</em>, <em>script kiddie</em> o <em>script boy</em>, <em>viruxers</em>, etc.). </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Fallos electr&oacute;nicos o l&oacute;gicos de los sistemas inform&aacute;ticos en general</strong>. </span></p>\n	</li>\n	<li>\n	<p style="text-align:justify"><span style="font-size:14px"><strong>Cat&aacute;strofes naturales</strong>: rayos, terremotos, inundaciones, rayos c&oacute;smicos, etc. </span></p>\n	</li>\n</ul>\n', '9090'),
(4, 4, '<p style="text-align:justify"><span style="font-size:14px">Seg&uacute;n Valdivia; 2014, los ataques inform&aacute;ticos m&aacute;s usuales son los siguientes:</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">1) <strong>Ataques por repetici&oacute;n:</strong> ocurre cuando un pirata inform&aacute;tico copia una secuencia de mensajes entre dos usuarios y env&iacute;a tal secuencia a uno o m&aacute;s usuarios. A menos que esto sea minimizado, el sistema atacado procesa este comportamiento como mensajes leg&iacute;timos y producen respuestas como pedidos redundantes.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">2) <strong>Ataques de modificaci&oacute;n de bits: </strong>se basan en las respuestas predecibles de las estaciones receptoras. El pirata modifica bits de un mensaje para enviar un mensaje cifrado err&oacute;neo a la estaci&oacute;n receptora, y &eacute;ste se puede comparar entonces contra la respuesta predecible para obtener la clave a trav&eacute;s de m&uacute;ltiples repeticiones.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">3) <strong>Ataques de denegaci&oacute;n de servicio</strong> (DOS, Denial of Service): consiste en colapsar total o parcialmente a un servidor para que &eacute;ste no pueda dar respuesta a los comandos (no para sacar de &eacute;l informaci&oacute;n). En la red internet, esto puede lograrse saturando un solo servidor con m&uacute;ltiples solicitudes desde m&uacute;ltiples ordenadores. </span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">4) <strong>Ataques de diccionario</strong>: en ciertos modelos de autenticaci&oacute;n de datos, para ingresar al sistema la contrase&ntilde;a se mantiene en secreto, mientras que el nombre de usuario es enviado en forma de texto simple y es f&aacute;cilmente interceptable.</span></p>\n\n<p style="text-align:center">&nbsp;</p>\n', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_informatica_articulo_t`
--

CREATE TABLE IF NOT EXISTS `seguridad_informatica_articulo_t` (
  `ID_SIAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_SIAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_SIAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `seguridad_informatica_articulo_t`
--

INSERT INTO `seguridad_informatica_articulo_t` (`ID_SIAT`, `TITULO_SIAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Seguridad informÃ¡tica', 'publico', '9090'),
(2, 'Objetivos', 'publico', '9090'),
(3, 'Amenazas', 'publico', '9090'),
(4, 'Ejemplos de ataques informÃ¡ticos', 'privado', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_informatica_manual`
--

CREATE TABLE IF NOT EXISTS `seguridad_informatica_manual` (
  `ID_SIM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_SIM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_SIM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `seguridad_informatica_manual`
--

INSERT INTO `seguridad_informatica_manual` (`ID_SIM`, `TITULO_SIM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'As', 'privado', '../manual/Manual Laravel 5.4.docx', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_informatica_tutorial`
--

CREATE TABLE IF NOT EXISTS `seguridad_informatica_tutorial` (
  `ID_SITT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_SITT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_SITT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `seguridad_informatica_tutorial`
--

INSERT INTO `seguridad_informatica_tutorial` (`ID_SITT`, `TITULO_SITT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'D', 'privado', 'video 2.webm', '9090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_logica_articulo_d`
--

CREATE TABLE IF NOT EXISTS `seguridad_logica_articulo_d` (
  `ID_SLD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_SLT` int(100) NOT NULL,
  `DESCRIPCION_SLD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_SLD`,`ID_TITULO_SLT`),
  KEY `seguridad_logica_articulo_d_ibfk_1` (`ID_TITULO_SLT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `seguridad_logica_articulo_d`
--

INSERT INTO `seguridad_logica_articulo_d` (`ID_SLD`, `ID_TITULO_SLT`, `DESCRIPCION_SLD`, `UCEDULA`) VALUES
(14, 13, '<p style="text-align:justify"><span style="background-color:#ffffff; font-family:sans-serif; font-size:14px">Se refiere a la seguridad en el uso de&nbsp;</span><a href="https://es.wikipedia.org/wiki/Software" style="text-decoration: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" title="Software"><span style="color:#000000">software</span></a><span style="background-color:#ffffff; font-family:sans-serif; font-size:14px">&nbsp;y los sistemas, la protecci&oacute;n de los datos, procesos y programas, as&iacute; como la del acceso ordenado y autorizado de los usuarios a la&nbsp;</span><strong><a href="https://es.wikipedia.org/wiki/Informaci%C3%B3n" style="text-decoration: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" title="InformaciÃ³n"><span style="color:#000000">informaci&oacute;n</span></a></strong><span style="background-color:#ffffff; font-family:sans-serif; font-size:14px"><strong><span style="color:#000000">.</span></strong> La &ldquo;seguridad l&oacute;gica&rdquo; involucra todas aquellas medidas establecidas por la administraci&oacute;n -usuarios y administradores de recursos de tecnolog&iacute;a de informaci&oacute;n- para minimizar los riesgos de seguridad asociados con sus operaciones cotidianas llevadas a cabo utilizando la tecnolog&iacute;a de informaci&oacute;n.</span></p>\n', '20490050'),
(15, 14, '<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px">Los principales objetivos que persigue la seguridad l&oacute;gica son:</span></p>\n\n<ul style="list-style-type:disc; margin-left:1.6em; margin-right:0px">\n	<li style="text-align: justify;"><span style="font-size:14px">Restringir el acceso a los programas y archivos</span></li>\n	<li style="text-align: justify;"><span style="font-size:14px">Asegurar que se est&eacute;n utilizando los datos, archivos y programas correctos en y por el procedimiento correcto.</span></li>\n</ul>\n', '2020'),
(16, 15, '<p>asfasasd</p>\n', '22');

--
-- Disparadores `seguridad_logica_articulo_d`
--
DROP TRIGGER IF EXISTS `modificar_seguridad_logica_articulo_d`;
DELIMITER //
CREATE TRIGGER `modificar_seguridad_logica_articulo_d` AFTER UPDATE ON `seguridad_logica_articulo_d`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Modificar', 'seguridad_logica_articulo_d')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_logica_articulo_t`
--

CREATE TABLE IF NOT EXISTS `seguridad_logica_articulo_t` (
  `ID_SLT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_SLT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(40) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_SLT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `seguridad_logica_articulo_t`
--

INSERT INTO `seguridad_logica_articulo_t` (`ID_SLT`, `TITULO_SLT`, `TIPO`, `UCEDULA`) VALUES
(13, 'Seguridad lÃ³gica', 'privado', '20490050'),
(14, 'Objetivos ', 'publico', '2020'),
(15, 'Asf', 'publico', '22');

--
-- Disparadores `seguridad_logica_articulo_t`
--
DROP TRIGGER IF EXISTS `insertar_seguridad_logica_articulo_t`;
DELIMITER //
CREATE TRIGGER `insertar_seguridad_logica_articulo_t` AFTER INSERT ON `seguridad_logica_articulo_t`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Insertar', 'seguridad_logica_articulo_t')
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modificar_seguridad_logica_articulo_t`;
DELIMITER //
CREATE TRIGGER `modificar_seguridad_logica_articulo_t` AFTER UPDATE ON `seguridad_logica_articulo_t`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Modificar', 'seguridad_logica_articulo_t')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_logica_manual`
--

CREATE TABLE IF NOT EXISTS `seguridad_logica_manual` (
  `ID_SLM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_SLM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_SLM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `seguridad_logica_manual`
--

INSERT INTO `seguridad_logica_manual` (`ID_SLM`, `TITULO_SLM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(3, 'Manual Laravel', 'privado', '../manual/Manual de Usuario 2,86.pdf', '20490050'),
(4, 'Archivo pdf', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '2020'),
(5, 'ODT', 'publico', '../manual/Vision GEV.odt', '2020');

--
-- Disparadores `seguridad_logica_manual`
--
DROP TRIGGER IF EXISTS `insertar_seguridad_logica_manual`;
DELIMITER //
CREATE TRIGGER `insertar_seguridad_logica_manual` AFTER INSERT ON `seguridad_logica_manual`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Insertar', 'seguridad_logica_manual')
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modificar_seguridad_logica_manual`;
DELIMITER //
CREATE TRIGGER `modificar_seguridad_logica_manual` AFTER UPDATE ON `seguridad_logica_manual`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Modificar', 'seguridad_logica_manual')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_logica_tutorial`
--

CREATE TABLE IF NOT EXISTS `seguridad_logica_tutorial` (
  `ID_SLTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_SLTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_SLTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `seguridad_logica_tutorial`
--

INSERT INTO `seguridad_logica_tutorial` (`ID_SLTT`, `TITULO_SLTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(4, 'Tutorial', 'privado', 'video 2.webm', '20490050'),
(5, 'Tutorial GI EDIT', 'publico', 'Screencast_13-12-16_16_16_17.webm', '20490050');

--
-- Disparadores `seguridad_logica_tutorial`
--
DROP TRIGGER IF EXISTS `insertar_seguridad_logica_tutorial`;
DELIMITER //
CREATE TRIGGER `insertar_seguridad_logica_tutorial` AFTER INSERT ON `seguridad_logica_tutorial`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Insertar', 'seguridad_logica_tutorial')
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modificar_seguridad_logica_tutorial`;
DELIMITER //
CREATE TRIGGER `modificar_seguridad_logica_tutorial` AFTER UPDATE ON `seguridad_logica_tutorial`
 FOR EACH ROW insert into bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values (new.UCEDULA, SUBSTRING(user(),(INSTR(USER(),'@')+1)), now(), 'Modificar', 'seguridad_logica_tutorial')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte_tecnico_articulo_d`
--

CREATE TABLE IF NOT EXISTS `soporte_tecnico_articulo_d` (
  `ID_STAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_STAT` int(100) NOT NULL,
  `DESCRIPCION_STAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_STAD`,`ID_TITULO_STAT`),
  KEY `soporte_tecnico_articulo_d_ibfk_1` (`ID_TITULO_STAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `soporte_tecnico_articulo_d`
--

INSERT INTO `soporte_tecnico_articulo_d` (`ID_STAD`, `ID_TITULO_STAT`, `DESCRIPCION_STAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><img alt="Resultado de imagen para Imagenes de soporte tecnico" src="https://i2.wp.com/www.siideingenieria.com/wp-content/uploads/2017/04/soporte-tecnico-de-equipo-de-computo.jpg?fit=541%2C304&amp;ssl=1" style="height:169px; width:350px" /></p>\n\n<p style="text-align:justify"><span style="font-size:14px">El soporte t&eacute;cnico es un rango de servicios por medio del cual se proporciona asistencia a los usuarios al tener alg&uacute;n problema al utilizar un producto o servicio, ya sea este el hardware o software de una computadora de un servidor de Internet, perif&eacute;ricos, art&iacute;culos electr&oacute;nicos, maquinaria, o cualquier otro equipo o dispositivo. El soporte t&eacute;cnico se puede dar por distintos medios, incluyendo el correo electr&oacute;nico, chat, software de aplicaci&oacute;n, faxes y t&eacute;cnicos, aunque el m&aacute;s com&uacute;n es el telef&oacute;nico. En los &uacute;ltimos a&ntilde;os hay una tendencia a la prestaci&oacute;n de soporte t&eacute;cnico remoto, donde un t&eacute;cnico se conecta al ordenador mediante una aplicaci&oacute;n de conexi&oacute;n remota que cuenta con la capacidad </span> <span style="font-size:14px">de almacenar muchos trabajos de memoria.</span></p>\n\n<p style="text-align:right"><img alt="Resultado de imagen para Imagenes de soporte tecnico" src="https://jatconsulting.pe/wp-content/uploads/2017/03/Soporte-Tecnico-Informatico-Infografia-4.png" style="height:374px; width:350px" /></p>\n', '18932954');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte_tecnico_articulo_t`
--

CREATE TABLE IF NOT EXISTS `soporte_tecnico_articulo_t` (
  `ID_STAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_STAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_STAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `soporte_tecnico_articulo_t`
--

INSERT INTO `soporte_tecnico_articulo_t` (`ID_STAT`, `TITULO_STAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Soporte TÃ©cnico', 'privado', '18932954');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte_tecnico_manual`
--

CREATE TABLE IF NOT EXISTS `soporte_tecnico_manual` (
  `ID_STM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_STM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_STM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `soporte_tecnico_manual`
--

INSERT INTO `soporte_tecnico_manual` (`ID_STM`, `TITULO_STM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'A', 'privado', '../manual/Manual Laravel 5.4.docx', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte_tecnico_tutorial`
--

CREATE TABLE IF NOT EXISTS `soporte_tecnico_tutorial` (
  `ID_STTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_STTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_STTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `soporte_tecnico_tutorial`
--

INSERT INTO `soporte_tecnico_tutorial` (`ID_STTT`, `TITULO_STTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'D', 'privado', 'video 1.webm', '8080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_dispositivo_almacenamiento_articulo_d`
--

CREATE TABLE IF NOT EXISTS `uaf_dispositivo_almacenamiento_articulo_d` (
  `ID_DAAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_DAAT` int(100) NOT NULL,
  `DESCRIPCION_DAAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_DAAD`,`ID_TITULO_DAAT`),
  KEY `uaf_dispositivo_almacenamiento_articulo_d_ibfk_1` (`ID_TITULO_DAAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_dispositivo_almacenamiento_articulo_d`
--

INSERT INTO `uaf_dispositivo_almacenamiento_articulo_d` (`ID_DAAD`, `ID_TITULO_DAAT`, `DESCRIPCION_DAAD`, `UCEDULA`) VALUES
(1, 1, '<p>&iquest;Como Solicitar peritaje en Inform&aacute;tica?<br />\nPara solicitar el peritaje inform&aacute;tico deber&aacute;n dirigirse los interesados a los &oacute;rganos del poder judicial entendi&eacute;ndose por lo mismo los tribunales de la Rep&uacute;blica, Ministerio Publico y entes administrativos entendi&eacute;ndose por los mismo la Inspectorias del Trabajo para que estos oficien a la Superintendencia y as&iacute; dar inicio al proceso.</p>\n\n<p style="text-align:center"><img alt="" class="avia_image" src="http://www.suscerte.gob.ve/wp-content/uploads/2017/02/3-.png" style="height:418px; width:314px" title="3-" /></p>\n', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_dispositivo_almacenamiento_articulo_t`
--

CREATE TABLE IF NOT EXISTS `uaf_dispositivo_almacenamiento_articulo_t` (
  `ID_DAAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_DAAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_DAAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_dispositivo_almacenamiento_articulo_t`
--

INSERT INTO `uaf_dispositivo_almacenamiento_articulo_t` (`ID_DAAT`, `TITULO_DAAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en Dispositivos de Almacenamiento', 'publico', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_dispositivo_almacenamiento_manual`
--

CREATE TABLE IF NOT EXISTS `uaf_dispositivo_almacenamiento_manual` (
  `ID_DAM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_DAM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_DAM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_dispositivo_almacenamiento_manual`
--

INSERT INTO `uaf_dispositivo_almacenamiento_manual` (`ID_DAM`, `TITULO_DAM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Cc', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '3030'),
(2, 'Jj', 'publico', '../manual/Manual Laravel 5.4.docx', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_dispositivo_almacenamiento_tutorial`
--

CREATE TABLE IF NOT EXISTS `uaf_dispositivo_almacenamiento_tutorial` (
  `ID_DATT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_DATT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_DATT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_dispositivo_almacenamiento_tutorial`
--

INSERT INTO `uaf_dispositivo_almacenamiento_tutorial` (`ID_DATT`, `TITULO_DATT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Dd', 'privado', 'video 1.webm', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_electronica_articulo_d`
--

CREATE TABLE IF NOT EXISTS `uaf_electronica_articulo_d` (
  `ID_EAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_EAT` int(100) NOT NULL,
  `DESCRIPCION_EAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_EAD`,`ID_TITULO_EAT`),
  KEY `uaf_electronica_articulo_d_ibfk_1` (`ID_TITULO_EAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_electronica_articulo_d`
--

INSERT INTO `uaf_electronica_articulo_d` (`ID_EAD`, `ID_TITULO_EAT`, `DESCRIPCION_EAD`, `UCEDULA`) VALUES
(1, 1, '<div class="avia_textblock">\n<p style="text-align:justify">Los peritos forenses son los encargados de aplicar su habilidad cient&iacute;fica en la recolecci&oacute;n y la preservaci&oacute;n de pruebas y el manejo de la cadena de custodia necesaria para esclarecer la verdad sobre el caso en cuesti&oacute;n. Ante el avance de la utilizaci&oacute;n de computadoras, tel&eacute;fonos y otros dispositivos, crece la necesidad de forenses con especializaci&oacute;n en delitos del mundo digital. Los conocimientos de hardware, software y seguridad inform&aacute;tica, as&iacute; como de Derecho, se vuelven indispensables.</p>\n\n<p>Muchos casos requieren an&aacute;lisis forense electr&oacute;nico para la reparaci&oacute;n de las tarjetas electr&oacute;nicas que controlan los dispositivos de almacenamiento y de esta manera hacerlos funcionar con las caracter&iacute;sticas m&iacute;nimas y as&iacute; acceder a la informaci&oacute;n para que sigan siendo v&aacute;lidos como prueba judicial.</p>\n\n<p>En la Unidad de An&aacute;lisis Forense en Electr&oacute;nica del Centro Nacional de Inform&aacute;tica Forense (CENIF), cuenta con equipos de alta tecnolog&iacute;a en dispositivos de la rama de electr&oacute;nica para garantizar el funcionamiento de los equipos electr&oacute;nicos a analizar, y en conjunto con los software especializados realizar la extracci&oacute;n de la informaci&oacute;n recolectada.</p>\n</div>\n\n<p style="text-align:center"><img alt="Imagen relacionada" class="irc_mi" src="http://binarytrade.mx/media/wysiwyg/protektnet/identificar.jpg" style="height:322px; margin-top:118px; width:728px" /></p>\n', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_electronica_articulo_t`
--

CREATE TABLE IF NOT EXISTS `uaf_electronica_articulo_t` (
  `ID_EAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_EAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_EAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_electronica_articulo_t`
--

INSERT INTO `uaf_electronica_articulo_t` (`ID_EAT`, `TITULO_EAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en ElectrÃ³nica', 'privado', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_electronica_manual`
--

CREATE TABLE IF NOT EXISTS `uaf_electronica_manual` (
  `ID_EM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_EM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_EM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_electronica_manual`
--

INSERT INTO `uaf_electronica_manual` (`ID_EM`, `TITULO_EM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Asd', 'publico', '../manual/Manual Laravel 5.4.docx', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_electronica_tutorial`
--

CREATE TABLE IF NOT EXISTS `uaf_electronica_tutorial` (
  `ID_ETT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_ETT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_ETT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_electronica_tutorial`
--

INSERT INTO `uaf_electronica_tutorial` (`ID_ETT`, `TITULO_ETT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Asdasd', 'privado', 'video 1.webm', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_equipos_moviles_articulo_d`
--

CREATE TABLE IF NOT EXISTS `uaf_equipos_moviles_articulo_d` (
  `ID_EMAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_EMAT` int(100) NOT NULL,
  `DESCRIPCION_EMAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_EMAD`,`ID_TITULO_EMAT`),
  KEY `uaf_equipos_moviles_articulo_d_ibfk_1` (`ID_TITULO_EMAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_equipos_moviles_articulo_d`
--

INSERT INTO `uaf_equipos_moviles_articulo_d` (`ID_EMAD`, `ID_TITULO_EMAT`, `DESCRIPCION_EMAD`, `UCEDULA`) VALUES
(1, 1, '<div class="avia_textblock">\n<p style="text-align:justify"><span style="font-size:14px">Con la aparici&oacute;n de los equipos m&oacute;viles (Tel&eacute;fonos celulares, Tablet, etc) la comunicaci&oacute;n a trav&eacute;s de ese medio se hace m&aacute;s directa e intima, ya que le permite a los usuarios comunicarse desde cualquier&nbsp; ugar en que se encuentren.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Los equipos m&oacute;viles est&aacute;n presentes en todos los lugares, de forma que se ha generalizado de manera silenciosa y se ha deslizado hasta los lugares m&aacute;s intr&iacute;nsecos de las actividades individuales.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Durante la realizaci&oacute;n de actividades inapropiadas o il&iacute;citas, es habitual que se generen registros de estas actividades en los equipos m&oacute;viles siempre y cuando estos son usados como medio del hecho, por lo tanto una revisi&oacute;n integral y/o exhaustiva de este tipo de equipos es fundamental para identificar y recuperar cualquier informaci&oacute;n a los sucesos investigados.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Para realizar un an&aacute;lisis forense de dispositivos m&oacute;viles, es imprescindible contar con el equipamiento necesario, no solo para investigar, sino tambi&eacute;n para proteger la integridad de los dispositivos m&oacute;viles a analizar, de forma que sigan siendo v&aacute;lidos como prueba judicial.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">En la Unidad de An&aacute;lisis Forense en Equipos M&oacute;viles del Centro Nacional de Inform&aacute;tica Forense (CENIF), dispone de las herramientas con la tecnolog&iacute;a m&aacute;s avanzada en el campo de An&aacute;lisis Forense de Dispositivos M&oacute;viles; equipos dise&ntilde;ados exclusivamente para la extracci&oacute;n tanto l&oacute;gico como f&iacute;sico de datos de los equipos a investigar y software especializados en el an&aacute;lisis de la informaci&oacute;n recolectada.</span></p>\n\n<p style="text-align:center">&nbsp;&nbsp; &nbsp;&nbsp; <img alt="" class="avia_image" src="http://www.suscerte.gob.ve/wp-content/uploads/2017/02/2.png" style="height:459px; width:357px" title="2" /></p>\n</div>\n', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_equipos_moviles_articulo_t`
--

CREATE TABLE IF NOT EXISTS `uaf_equipos_moviles_articulo_t` (
  `ID_EMAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_EMAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_EMAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_equipos_moviles_articulo_t`
--

INSERT INTO `uaf_equipos_moviles_articulo_t` (`ID_EMAT`, `TITULO_EMAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en Dispositivos MÃ³viles', 'publico', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_equipos_moviles_manual`
--

CREATE TABLE IF NOT EXISTS `uaf_equipos_moviles_manual` (
  `ID_EMM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_EMM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_EMM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `uaf_equipos_moviles_manual`
--

INSERT INTO `uaf_equipos_moviles_manual` (`ID_EMM`, `TITULO_EMM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(4, 'Aaa', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_equipos_moviles_tutorial`
--

CREATE TABLE IF NOT EXISTS `uaf_equipos_moviles_tutorial` (
  `ID_EMTT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_EMTT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_EMTT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `uaf_equipos_moviles_tutorial`
--

INSERT INTO `uaf_equipos_moviles_tutorial` (`ID_EMTT`, `TITULO_EMTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(5, 'Aa', 'privado', 'video 2.webm', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_fuentes_abiertas_articulo_d`
--

CREATE TABLE IF NOT EXISTS `uaf_fuentes_abiertas_articulo_d` (
  `ID_FAAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_FAAT` int(100) NOT NULL,
  `DESCRIPCION_FAAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_FAAD`,`ID_TITULO_FAAT`),
  KEY `uaf_fuentes_abiertas_articulo_d_ibfk_1` (`ID_TITULO_FAAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_fuentes_abiertas_articulo_d`
--

INSERT INTO `uaf_fuentes_abiertas_articulo_d` (`ID_FAAD`, `ID_TITULO_FAAT`, `DESCRIPCION_FAAD`, `UCEDULA`) VALUES
(1, 1, '<div class="avia_textblock">\n<h4 style="text-align:justify"><span style="font-size:14px"><strong>Metodolog&iacute;a aplicada al an&aacute;lisis de fuentes abiertas:</strong></span></h4>\n\n<p style="text-align:justify"><span style="font-size:14px">Es una metodolog&iacute;a ense&ntilde;ada dentro de la inteligencia para fortalecer las herramientas y m&eacute;todos de informaci&oacute;n libremente disponible de investigaci&oacute;n. OSINT utiliza varias fuentes, entre ellas: los medios de comunicaci&oacute;n ( Internet, Deepweb, Peri&oacute;dicos Digitales, Revistas Digitales, Bases de Datos); archivos multimedia (v&iacute;deo, audio, Imagenes y mapas) as&iacute; como tambi&eacute;n, los datos de base de datos con informaci&oacute;n institucional de la persona natural o jur&iacute;dica.</span></p>\n\n<h4 style="text-align:justify"><strong><span style="font-size:14px">Actividades que se realizan en la Unidad:</span></strong></h4>\n\n<p style="text-align:justify"><span style="font-size:14px">Dichas actividades incluyen tanto recursos Online gratuitos como herramientas de software libre para la extracci&oacute;n y an&aacute;lisis de informaci&oacute;n en Internet , DeepWeb, Darknets. (Etc).</span></p>\n\n<p style="text-align:center"><img alt="" class="avia_image" src="http://www.suscerte.gob.ve/wp-content/uploads/2017/02/1.png" title="1" /></p>\n</div>\n', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_fuentes_abiertas_articulo_t`
--

CREATE TABLE IF NOT EXISTS `uaf_fuentes_abiertas_articulo_t` (
  `ID_FAAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_FAAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_FAAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_fuentes_abiertas_articulo_t`
--

INSERT INTO `uaf_fuentes_abiertas_articulo_t` (`ID_FAAT`, `TITULO_FAAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en RecolecciÃ³n de Inteligencias de Fuentes Abiertas', 'publico', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_fuentes_abiertas_manual`
--

CREATE TABLE IF NOT EXISTS `uaf_fuentes_abiertas_manual` (
  `ID_FAM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_FAM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_FAM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_fuentes_abiertas_manual`
--

INSERT INTO `uaf_fuentes_abiertas_manual` (`ID_FAM`, `TITULO_FAM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Manual', 'privado', '../manual/Manual Laravel 5.4.docx', '20490050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_fuentes_abiertas_tutorial`
--

CREATE TABLE IF NOT EXISTS `uaf_fuentes_abiertas_tutorial` (
  `ID_FATT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_FATT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_FATT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_fuentes_abiertas_tutorial`
--

INSERT INTO `uaf_fuentes_abiertas_tutorial` (`ID_FATT`, `TITULO_FATT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'As', 'privado', 'video 1.webm', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_imagen_video_audio_articulo_d`
--

CREATE TABLE IF NOT EXISTS `uaf_imagen_video_audio_articulo_d` (
  `ID_IVAAD` int(100) NOT NULL AUTO_INCREMENT,
  `ID_TITULO_IVAAT` int(100) NOT NULL,
  `DESCRIPCION_IVAAD` text NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_IVAAD`,`ID_TITULO_IVAAT`),
  KEY `uaf_imagen_video_audio_articulo_d_ibfk_1` (`ID_TITULO_IVAAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_imagen_video_audio_articulo_d`
--

INSERT INTO `uaf_imagen_video_audio_articulo_d` (`ID_IVAAD`, `ID_TITULO_IVAAT`, `DESCRIPCION_IVAAD`, `UCEDULA`) VALUES
(1, 1, '<div class="avia_textblock">\n<p style="text-align:justify"><span style="font-size:14px">En la actualidad, se vive en una sociedad que documenta su progreso diario a trav&eacute;s de fotograf&iacute;as de nuestro entorno , videos de eventos o presentaciones que asisten y en algunos casos notas de voz o audio para expresar las ideas.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Durante la realizaci&oacute;n de actividades inapropiadas o il&iacute;citas, es habitual que se generen registros de estas actividades, dichos registros pueden ser fotograf&iacute;as digitales o videos generados por c&aacute;maras de seguridad o audios registrados por un equipo m&oacute;vil; por lo tanto una revisi&oacute;n integral y/o exhaustiva de este tipo de registros y as&iacute; determinar su autenticidad.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Las im&aacute;genes digitales, los videos y los audios digitales pueden ser catalogados como una evidencia digital; dichas evidencias pueden aplicarse la experticia forense para as&iacute; determinar su autenticidad, veracidad e integridad de la misma.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Para realizar un an&aacute;lisis forense de im&aacute;genes, audio y video, es imprescindible contar con el equipamiento necesario, no solo para investigar, sino tambi&eacute;n para proteger la integridad, veracidad y autenticidad de la evidencia digital, de forma que sigan siendo v&aacute;lidos como prueba judicial.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">En la Unidad de An&aacute;lisis Forense de Im&aacute;genes, Audio y Video del Centro Nacional de Inform&aacute;tica Forense (CENIF), dispone de herramientas con tecnolog&iacute;a avanzada en el campo de an&aacute;lisis de evidencia forense en im&aacute;genes, audio y videos digitales. Dichas Herramientas est&aacute;n dise&ntilde;adas exclusivamente para verificar la autenticidad, veracidad e integridad de la evidencia.</span></p>\n\n<p style="text-align:center"><img alt="" class="avia_image" src="http://www.suscerte.gob.ve/wp-content/uploads/2017/02/4-copia.png" title="4-copia" /></p>\n</div>\n', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_imagen_video_audio_articulo_t`
--

CREATE TABLE IF NOT EXISTS `uaf_imagen_video_audio_articulo_t` (
  `ID_IVAAT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_IVAAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_IVAAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_imagen_video_audio_articulo_t`
--

INSERT INTO `uaf_imagen_video_audio_articulo_t` (`ID_IVAAT`, `TITULO_IVAAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en ImÃ¡genes, Audio y Video', 'privado', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_imagen_video_audio_manual`
--

CREATE TABLE IF NOT EXISTS `uaf_imagen_video_audio_manual` (
  `ID_IVAM` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_IVAM` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `DOCUMENTO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_IVAM`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `uaf_imagen_video_audio_manual`
--

INSERT INTO `uaf_imagen_video_audio_manual` (`ID_IVAM`, `TITULO_IVAM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'X', 'privado', '../manual/Manual de Usuario 2,86.pdf', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uaf_imagen_video_audio_tutorial`
--

CREATE TABLE IF NOT EXISTS `uaf_imagen_video_audio_tutorial` (
  `ID_IVATT` int(100) NOT NULL AUTO_INCREMENT,
  `TITULO_IVATT` varchar(100) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `VIDEO` varchar(100) NOT NULL,
  `UCEDULA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_IVATT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_imagen_video_audio_tutorial`
--

INSERT INTO `uaf_imagen_video_audio_tutorial` (`ID_IVATT`, `TITULO_IVATT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'Asd', 'privado', 'video 1.webm', '3030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_wiki`
--

CREATE TABLE IF NOT EXISTS `usuarios_wiki` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRES` varchar(100) NOT NULL,
  `APELLIDOS` varchar(100) NOT NULL,
  `CEDULA` int(50) NOT NULL,
  `CLAVE` varchar(1000) NOT NULL,
  `ROL` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `UCEDULA` int(11) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`),
  UNIQUE KEY `CEDULA` (`CEDULA`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=331 ;

--
-- Volcado de datos para la tabla `usuarios_wiki`
--

INSERT INTO `usuarios_wiki` (`ID_USUARIO`, `NOMBRES`, `APELLIDOS`, `CEDULA`, `CLAVE`, `ROL`, `EMAIL`, `UCEDULA`) VALUES
(165, 'Naimar', 'Obando', 18932954, '18932954', 'Manager Area Tecnica', 'nobando@suscerte.gob.ve', 20490050),
(166, 'Francisco', 'Ramirez', 1, '1', 'Administrador', 'jramirez@suscerte.gob.ve', 20490050),
(167, 'JORGE DANIEL', 'HERRERA RANGEL', 16600807, '16600806', 'Manager Vencert', 'jherrera@suscerte.gob.ve', 20490050),
(168, 'JORGE DANIEL', 'HERRERA RANGEL', 16600806, '16600806', 'Manager Cenif', 'jherrera@suscerte.gob.ve', 20490050),
(169, 'YENKARI YANAIS ', 'CHAVEZ MONZON', 18039939, '18039939', 'Manager Administracion', 'ychavez@suscerte.gob.ve', 20490050),
(170, 'GILLIAM ELIZABETH ', 'MANAURE LOBO', 13542630, '13542630', 'Manager P O P', 'gmanaure@suscerte.gob.ve', 20490050),
(171, 'MARIA GABRIELA', 'MONTILVA BENSAYA', 6979578, '6979578', 'Manager Asesoria Legal', 'mmontilva@suscerte.gob.ve', 20490050),
(172, 'JESSIKA DEL CARMEN', ' QUIJANO GRANADOS', 14974239, '14974239', 'Manager Recursos Humanos', 'jquijano@suscerte.gob.ve', 20490050),
(275, 'Ale', 'Ramirez', 2020, '2020', 'Manager Vencert', 'ale@suscerte.gob.ve', 20490050),
(276, 'Ale', 'Ramirez', 3030, '3030', 'Manager Cenif', 'ale@suscerte.gob.ve', 20490050),
(278, 'Ale', 'Ramirez', 5050, '5050', 'Manager P O P', 'ale@suscerte.gob.ve', 20490050),
(279, 'Ale', 'Ramirez', 4040, '4040', 'Manager Administracion', 'ale@suscerte.gob.ve', 20490050),
(280, 'Ale', 'Ramirez', 6060, '6060', 'Manager Asesoria Legal', 'Ale@suscerte.gob.ve', 20490050),
(281, 'Ale', 'Ramirez', 7070, '7070', 'Manager Recursos Humanos', 'Ale@suscerte.gob.ve', 20490050),
(282, 'Ale', 'Ramirez', 8080, '8080', 'Manager Area Tecnica', 'Ale@suscerte.gob.ve', 20490050),
(300, 'H', 'Hs', 3, '3', 'Usuario Fuentes Abiertas', 'as@suscerte.gob.ve', 3030),
(302, 'Aa', 'Aa', 4, '4', 'Usuario Administracion', 'as@suscerte.gob.ve', 4040),
(304, 'T', 'T', 5, '5', 'Usuario Organizacion', 'asj@suscerte.gob.ve', 5050),
(306, 'Ase', 'Lega', 6, '6', 'Usuario Dictamenes', 'as@suscerte.gob.ve', 6060),
(308, 'A', 'A', 7, '7', 'Usuario HCM', 'asddd@suscerte.gob.ve', 7070),
(311, 'A', 'A', 77, '77', 'Usuario Nomina', 'asdd@suscerte.gob.ve', 7070),
(312, 'Aaa', 'Aa', 8, '8', 'Usuario Servicio Certificacion', 'daas@suscerte.gob.ve', 8080),
(313, 'D', 'D', 88, '88', 'Usuario Formacion', 'fff@suscerte.gob.ve', 8080),
(314, 'Ff', 'Ff', 888, '888', 'Usuario Estandarizacion', 'kkk@suscerte.gob.ve', 8080),
(315, 'hh', 'hh', 8888, '8888', 'Usuario Area Tecnica', 'kkkhg@suscerte.gob.ve', 8080),
(317, 'Aasd', 'Ddd', 66, '66', 'Usuario Convenios', 'dfff@suscerte.gob.ve', 6060),
(318, 'Jsfk', 'Hjs', 666, '666', 'Usuario Pronunciamientos', 'fksl@suscerte.gob.ve', 6060),
(319, 'Y', 'Y', 55, '55', 'Usuario Planificacion', 'skf@suscerte.gob.ve', 5050),
(320, 'U', 'U', 555, '555', 'Usuario Presupuesto', 'si@suscerte.gob.ve', 5050),
(321, 'H', 'F', 33, '33', 'Usuario Equipos Moviles', 'asd@suscerte.gob.ve', 3030),
(322, 'H', 'F', 333, '333', 'Usuario Dispositivos Almacenamiento', 'asssd@suscerte.gob.ve', 3030),
(323, 'H', 'F', 3333, '3333', 'Usuario Electronica', 'gggd@suscerte.gob.ve', 3030),
(324, 'H', 'F', 33333, '33333', 'Usuario Img, Audio y Video', 'bbbgdb@suscerte.gob.ve', 3030),
(326, 'B', 'B', 222, '222', 'Usuario OAM', 'kazzzasj@suscerte.gob.ve', 2020),
(327, 'Ff', 'Ff', 2, '2', 'Usuario Gestion de incidentes', 'asjk@suscerte.gob.ve', 2020),
(330, 'Fff', 'Fff', 22, '22', 'Usuario Seguridad Logica', 'asas@suscerte.gob.ve', 2020);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `certificacion_electronica_criptografica_articulo_d`
--
ALTER TABLE `certificacion_electronica_criptografica_articulo_d`
  ADD CONSTRAINT `certificacion_electronica_criptografica_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_CECAT`) REFERENCES `certificacion_electronica_criptografica_articulo_t` (`ID_CECAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `convenios_articulo_d`
--
ALTER TABLE `convenios_articulo_d`
  ADD CONSTRAINT `convenios_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_CAT`) REFERENCES `convenios_articulo_t` (`ID_CAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `criptografia_articulo_d`
--
ALTER TABLE `criptografia_articulo_d`
  ADD CONSTRAINT `criptografia_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_CAT`) REFERENCES `criptografia_articulo_t` (`ID_CAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dictamenes_articulo_d`
--
ALTER TABLE `dictamenes_articulo_d`
  ADD CONSTRAINT `dictamenes_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_DAT`) REFERENCES `dictamenes_articulo_t` (`ID_DAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estandarizacion_fiscalizacion_articulo_d`
--
ALTER TABLE `estandarizacion_fiscalizacion_articulo_d`
  ADD CONSTRAINT `estandarizacion_fiscalizacion_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_EFAT`) REFERENCES `estandarizacion_fiscalizacion_articulo_t` (`ID_EFAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `formacion_desarrollo_articulo_d`
--
ALTER TABLE `formacion_desarrollo_articulo_d`
  ADD CONSTRAINT `formacion_desarrollo_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_FDAT`) REFERENCES `formacion_desarrollo_articulo_t` (`ID_FDAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `gestion_incidente_articulo_d`
--
ALTER TABLE `gestion_incidente_articulo_d`
  ADD CONSTRAINT `gestion_incidente_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_GIT`) REFERENCES `gestion_incidente_articulo_t` (`ID_GIT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hcm_articulo_d`
--
ALTER TABLE `hcm_articulo_d`
  ADD CONSTRAINT `hcm_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_HCMAT`) REFERENCES `hcm_articulo_t` (`ID_HCMAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `informatica_forense_articulo_d`
--
ALTER TABLE `informatica_forense_articulo_d`
  ADD CONSTRAINT `informatica_forense_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_IFAT`) REFERENCES `informatica_forense_articulo_t` (`ID_IFAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `nomina_articulo_d`
--
ALTER TABLE `nomina_articulo_d`
  ADD CONSTRAINT `nomina_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_NAT`) REFERENCES `nomina_articulo_t` (`ID_NAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oam_articulo_d`
--
ALTER TABLE `oam_articulo_d`
  ADD CONSTRAINT `oam_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_OAMT`) REFERENCES `oam_articulo_t` (`ID_OAMT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oficina_organizacion_articulo_d`
--
ALTER TABLE `oficina_organizacion_articulo_d`
  ADD CONSTRAINT `oficina_organizacion_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_OAT`) REFERENCES `oficina_organizacion_articulo_t` (`ID_OAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oficina_planificacion_articulo_d`
--
ALTER TABLE `oficina_planificacion_articulo_d`
  ADD CONSTRAINT `oficina_planificacion_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_OPAT`) REFERENCES `oficina_planificacion_articulo_t` (`ID_OPAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oficina_presupuesto_articulo_d`
--
ALTER TABLE `oficina_presupuesto_articulo_d`
  ADD CONSTRAINT `oficina_presupuesto_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_OPAT`) REFERENCES `oficina_presupuesto_articulo_t` (`ID_OPAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `procesos_administrativo_articulo_d`
--
ALTER TABLE `procesos_administrativo_articulo_d`
  ADD CONSTRAINT `procesos_administrativo_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_PAAT`) REFERENCES `procesos_administrativo_articulo_t` (`ID_PAAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pronunciamiento_articulo_d`
--
ALTER TABLE `pronunciamiento_articulo_d`
  ADD CONSTRAINT `pronunciamiento_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_PAT`) REFERENCES `pronunciamiento_articulo_t` (`ID_PAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguridad_informatica_articulo_d`
--
ALTER TABLE `seguridad_informatica_articulo_d`
  ADD CONSTRAINT `seguridad_informatica_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_SIAT`) REFERENCES `seguridad_informatica_articulo_t` (`ID_SIAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguridad_logica_articulo_d`
--
ALTER TABLE `seguridad_logica_articulo_d`
  ADD CONSTRAINT `seguridad_logica_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_SLT`) REFERENCES `seguridad_logica_articulo_t` (`ID_SLT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `soporte_tecnico_articulo_d`
--
ALTER TABLE `soporte_tecnico_articulo_d`
  ADD CONSTRAINT `soporte_tecnico_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_STAT`) REFERENCES `soporte_tecnico_articulo_t` (`ID_STAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `uaf_dispositivo_almacenamiento_articulo_d`
--
ALTER TABLE `uaf_dispositivo_almacenamiento_articulo_d`
  ADD CONSTRAINT `uaf_dispositivo_almacenamiento_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_DAAT`) REFERENCES `uaf_dispositivo_almacenamiento_articulo_t` (`ID_DAAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `uaf_electronica_articulo_d`
--
ALTER TABLE `uaf_electronica_articulo_d`
  ADD CONSTRAINT `uaf_electronica_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_EAT`) REFERENCES `uaf_electronica_articulo_t` (`ID_EAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `uaf_equipos_moviles_articulo_d`
--
ALTER TABLE `uaf_equipos_moviles_articulo_d`
  ADD CONSTRAINT `uaf_equipos_moviles_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_EMAT`) REFERENCES `uaf_equipos_moviles_articulo_t` (`ID_EMAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `uaf_fuentes_abiertas_articulo_d`
--
ALTER TABLE `uaf_fuentes_abiertas_articulo_d`
  ADD CONSTRAINT `uaf_fuentes_abiertas_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_FAAT`) REFERENCES `uaf_fuentes_abiertas_articulo_t` (`ID_FAAT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `uaf_imagen_video_audio_articulo_d`
--
ALTER TABLE `uaf_imagen_video_audio_articulo_d`
  ADD CONSTRAINT `uaf_imagen_video_audio_articulo_d_ibfk_1` FOREIGN KEY (`ID_TITULO_IVAAT`) REFERENCES `uaf_imagen_video_audio_articulo_t` (`ID_IVAAT`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
