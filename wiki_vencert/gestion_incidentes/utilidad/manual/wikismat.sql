-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2017 at 12:33 AM
-- Server version: 5.6.27-2
-- PHP Version: 5.6.24-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wikismat`
--

-- --------------------------------------------------------

--
-- Table structure for table `descripcion_wiki`
--

CREATE TABLE IF NOT EXISTS `descripcion_wiki` (
`ID` int(100) NOT NULL,
  `ID_TITULO` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `DESCRIPCION` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `FECHAN` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `FECHAL` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `HORA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `descripcion_wiki`
--

INSERT INTO `descripcion_wiki` (`ID`, `ID_TITULO`, `DESCRIPCION`, `FECHAN`, `FECHAL`, `HORA`, `UCEDULA`) VALUES
(3, '4', 'Ã‘aÃ±aÃ±aÃ±aÃ±a', '4/10/2016', 'Martes / Octubre / 2016', '11 : 1 : 33', '20490050'),
(8, '7', 'Awawawawaw', '18/10/2016', 'Martes / Octubre / 2016', '11 : 1 : 46', '20490050'),
(22, '3', '<p><span style="font-family:Verdana,Geneva,sans-serif"><span style="font-size:14px">Open Source Security Information Management por sus siglas (OSSIM) es una colecci&oacute;n de herramientas bajo la licencia GPL, dise&ntilde;adas para ayudar a los administradores de red en la seguridad de las computadoras, detecci&oacute;n de intrusos y prevenci&oacute;n. El objetivo del proyecto es ofrecer una herramienta que ayude a la administraci&oacute;n de eventos de seguridad mediante un motor de correlaci&oacute;n y una colecci&oacute;n detallada de herramientas open source las cuales sirven al administrador para tener una vista de todos los aspectos relativos a la seguridad en su infraestructura. OSSIM a su vez provee una fuerte motor de correlaci&oacute;n, con detallados niveles, bajos, medianos y altos de interfaces de visualizaci&oacute;n, como tambi&eacute;n reportes y herramientas de manejo de incidentes. La habilidad de actuar como un sistema de prevenci&oacute;n de intrusos basado en informaci&oacute;n correlativa de cualquier fuente, resulta en una &uacute;til herramienta de seguridad. Toda esta informaci&oacute;n puede ser filtrada por red o sensor con el objetivo de proveer &uacute;nicamente la informaci&oacute;n requerida por un usuario espec&iacute;fico, permitiendo una buena granularidad en un ambiente de seguridad multi usuario. esto es una damier</span></span></p>\n', '18 - 11 - 2016', '09 - 46 - 35', 'Friday - 46 - Nov - 2016', '20490050'),
(23, '20', '<p style="text-align:justify">OSSIM features the following software components:</p>\n\n<ul>\n	<li style="text-align: justify;"><a class="new" href="https://en.wikipedia.org/w/index.php?title=PRADS&amp;action=edit&amp;redlink=1" title="PRADS (page does not exist)">PRADS</a>, used to identify hosts and services by passively monitoring network traffic. Added in release v4.0.<sup><a href="https://en.wikipedia.org/wiki/OSSIM#cite_note-9">[9]</a></sup></li>\n	<li style="text-align: justify;"><a href="https://en.wikipedia.org/wiki/OpenVAS" title="OpenVAS">OpenVAS</a>, used for vulnerability assessment and for cross correlation of (<a href="https://en.wikipedia.org/wiki/Intrusion_detection_system" title="Intrusion detection system">Intrusion detection system</a> (IDS) alerts vs <a class="mw-redirect" href="https://en.wikipedia.org/wiki/Vulnerability_Scanner" title="Vulnerability Scanner">Vulnerability Scanner</a>) information.</li>\n	<li style="text-align: justify;"><a href="https://en.wikipedia.org/wiki/Snort_%28software%29" title="Snort (software)">Snort</a>, used as an <a href="https://en.wikipedia.org/wiki/Intrusion_detection_system" title="Intrusion detection system">Intrusion detection system</a> (IDS), and also used for cross correlation with Nessus.</li>\n	<li style="text-align: justify;"><a href="https://en.wikipedia.org/wiki/Suricata_%28software%29" title="Suricata (software)">Suricata</a>, used as an <a href="https://en.wikipedia.org/wiki/Intrusion_detection_system" title="Intrusion detection system">Intrusion detection system</a> (IDS), as of version 4.2 this is the IDS used in the default configuration</li>\n	<li style="text-align: justify;">Tcptrack, used for session data information which can grant useful information for attack correlation.</li>\n	<li style="text-align: justify;"><a href="https://en.wikipedia.org/wiki/Nagios" title="Nagios">Nagios</a>, used to monitor host and service availability information based on a host asset database.</li>\n	<li style="text-align: justify;"><a href="https://en.wikipedia.org/wiki/OSSEC" title="OSSEC">OSSEC</a>, a <a href="https://en.wikipedia.org/wiki/Host-based_intrusion_detection_system" title="Host-based intrusion detection system">Host-based intrusion detection system</a> (HIDS).</li>\n	<li style="text-align: justify;"><a class="mw-redirect" href="https://en.wikipedia.org/wiki/Munin_%28network_monitoring_application%29" title="Munin (network monitoring application)">Munin</a>, for traffic analysis and service watchdogging.</li>\n	<li style="text-align: justify;">NFSen/NFDump, used to collect and analyze <a href="https://en.wikipedia.org/wiki/NetFlow" title="NetFlow">NetFlow</a> information.</li>\n	<li style="text-align: justify;">FProbe, used to generate <a href="https://en.wikipedia.org/wiki/NetFlow" title="NetFlow">NetFlow</a> data from captured traffic.</li>\n	<li style="text-align: justify;">OSSIM also includes self developed tools, the most important being a generic correlation engine with logical directive support and logs integration with plugins.</li>\n</ul>\n\n<p style="text-align:justify">Note: Suricata and Snort cannot be used at the same time. Snort is currently being phased out in favor of Suricata.<sup><a href="https://en.wikipedia.org/wiki/OSSIM#cite_note-10">[10]</a></sup></p>\n', '18/11/2016', 'Viernes / Noviembre / 2016', '9 : 48 : 3', '20490050'),
(24, '21', 'SoluciÃ³n vs Producto \nOSSIM no quiere ser un producto, sino una soluciÃ³n, un sistema personalizado para las \nnecesidades de cada organizaciÃ³n formado por la conexiÃ³n e integraciÃ³n de varios mÃ³dulos \nespecialistas.  \nEn nuestra soluciÃ³n tan importante como el cÃ³digo son los conceptos o definiciones de:  \na. \nLa Arquitectura \nb.    Los Modelos y Algoritmos de \nCorrelaciÃ³n \nc.    La definiciÃ³n del \nEntorno y el Framework  \nd.    La definiciÃ³n del Modelo de \nGestiÃ³n de la Seguridad Perimetral \ne.    El Mapa y los Procedimientos de AuditorÃ­a de\n la Capacidad de DetecciÃ³n \nNuestro interÃ©s en este proyecto \ngnu\n es tanto ofrecer para su mejora el cÃ³digo como generar la \ndiscusiÃ³n y el conocimiento de estos modelos y algoritmos.  ', '18/11/2016', 'Viernes / Noviembre / 2016', '9 : 57 : 44', '20490050'),
(25, '22', 'OSSIM es una arquitectura de monitorizaciÃ³n abierta pues integra diversos productos del \nmundo libre, intentando seguir siempre los estÃ¡ndares y las tendencias del mundo open source \n(los cuales creemos que en soluciones de monitorizaciÃ³n serÃ¡n los estÃ¡ndares en todos los \nentornos). ', '18/11/2016', 'Viernes / Noviembre / 2016', '9 : 58 : 45', '20490050'),
(26, '23', '10 \n2. El Proceso de DetecciÃ³n \nSi tuviÃ©ramos que resumir en una frase \nde que trata \no\n quÃ© se busca \nen nuestro proyecto esta \nserÃ­a la siguiente:    \nâ€œAumentar la Capacidad de DetecciÃ³nâ€œ \nIntroduciremos en este apartado los conceptos relacionados con la detecciÃ³n de redes que se \ndesarrollarÃ¡n a lo largo del documento.  \nDetectores \nDefiniremos un detector como cualquier programa capaz de procesar informaciÃ³n en tiempo \nreal, informaciÃ³n normalmente a bajo nivel como trÃ¡fico o eventos de sistema y lanzar alertas \nante la localizaciÃ³n de situaciones previamente definidas.  \nLa definiciÃ³n de estas situaciones se puede hacer de dos formas:  \n1.    A travÃ©s de patrones, o reglas definidas por el usuario \n2.    A travÃ©s de grados de anomalÃ­a ', '18/11/2016', 'Viernes / Noviembre / 2016', '9 : 59 : 51', '20490050'),
(30, '26', 'Sdfsdfsfdsdfsdfs', '29/11/2016', 'Martes / Noviembre / 2016', '10 : 33 : 36', '20490050'),
(31, '3', '<h2><span style="font-family:Verdana,Geneva,sans-serif"><span style="font-size:14px">El objetivo del proyecto es ofrecer una herramienta que ayude a la administraci&oacute;n de eventos de seguridad mediante un motor de correlaci&oacute;n y una colecci&oacute;n detallada de herramientas open source las cuales sirven al administrador para tener una vista de todos los aspectos relativos a la seguridad en su infraestructura.</span></span></h2>\n\n<h2><span style="font-family:Verdana,Geneva,sans-serif"><span style="font-size:14px">OSSIM a su vez provee una fuerte motor de correlaci&oacute;n, con detallados niveles, bajos, medianos y altos de interfaces de visualizaci&oacute;n, como tambi&eacute;n reportes y herramientas de manejo de incidentes.</span></span></h2>\n\n<h2><span style="font-family:Verdana,Geneva,sans-serif"><span style="font-size:14px">La habilidad de actuar como un sistema de prevenci&oacute;n de intrusos basado en informaci&oacute;n correlativa de cualquier fuente, resulta en una &uacute;til herramienta de seguridad. Toda esta informaci&oacute;n puede ser filtrada por red o sensor con el objetivo de proveer &uacute;nicamente la informaci&oacute;n requerida por un usuario espec&iacute;fico, permitiendo una buena granularidad en un ambiente de seguridad multi usuario.</span></span></h2>\n\n<h2><span style="font-family:Verdana,Geneva,sans-serif"><span style="font-size:14px">esto es una damier</span></span></h2>\n', '', '', '', '20490050'),
(32, '3', '<p>El objetivo del proyecto es ofrecer una herramienta que ayude a la administraci&oacute;n de eventos de seguridad mediante un motor de correlaci&oacute;n y una colecci&oacute;n detallada de herramientas open source las cuales sirven al administrador para tener una vista de todos los aspectos relativos a la seguridad en su infraestructura.</p>\n\n<p>OSSIM a su vez provee una fuerte motor de correlaci&oacute;n, con detallados niveles, bajos, medianos y altos de interfaces de visualizaci&oacute;n, como tambi&eacute;n reportes y herramientas de manejo de incidentes.</p>\n\n<p>La habilidad de actuar como un sistema de prevenci&oacute;n de intrusos basado en informaci&oacute;n correlativa de cualquier fuente, resulta en una &uacute;til herramienta de seguridad. Toda esta informaci&oacute;n puede ser filtrada por red o sensor con el objetivo de proveer &uacute;nicamente la informaci&oacute;n requerida por un usuario espec&iacute;fico, permitiendo una buena granularidad en un ambiente de seguridad multi usuario.</p>\n\n<p>esto es una damier</p>\n', '', '', '', '20490050');

-- --------------------------------------------------------

--
-- Table structure for table `titulo_wiki`
--

CREATE TABLE IF NOT EXISTS `titulo_wiki` (
`ID` int(100) NOT NULL,
  `TITULO` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `FECHAN` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `FECHAL` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `HORA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `UCEDULA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titulo_wiki`
--

INSERT INTO `titulo_wiki` (`ID`, `TITULO`, `FECHAN`, `FECHAL`, `HORA`, `UCEDULA`) VALUES
(3, 'Open Source Security Information Management (OSSIM)', '4/10/2016', 'Martes / Octubre / 2016', '10 : 57 : 31', '20490050'),
(20, 'Componentes', '18/11/2016', 'Viernes / Noviembre / 2016', '9 : 48 : 3', '20490050'),
(21, ' Infraestructura Open-Source de MonitorizaciÃ³n de Seguridad ', '18/11/2016', 'Viernes / Noviembre / 2016', '9 : 57 : 44', '20490050'),
(22, 'Arquitectura Abierta', '18/11/2016', 'Viernes / Noviembre / 2016', '9 : 58 : 45', '20490050'),
(23, ' El Proceso de DetecciÃ³n', '18/11/2016', 'Viernes / Noviembre / 2016', '9 : 59 : 51', '20490050'),
(24, 'Wao', '29/11/2016', 'Martes / Noviembre / 2016', '9 : 48 : 24', '20490050'),
(25, 'Dfdfsfk', '29/11/2016', 'Martes / Noviembre / 2016', '10 : 30 : 19', '20490050'),
(26, 'Dfsdfsdfsf', '29/11/2016', 'Martes / Noviembre / 2016', '10 : 33 : 36', '20490050');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `descripcion_wiki`
--
ALTER TABLE `descripcion_wiki`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `titulo_wiki`
--
ALTER TABLE `titulo_wiki`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `descripcion_wiki`
--
ALTER TABLE `descripcion_wiki`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `titulo_wiki`
--
ALTER TABLE `titulo_wiki`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
