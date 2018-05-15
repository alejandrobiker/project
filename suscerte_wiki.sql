-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2018 a las 00:55:23
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=305 ;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`ID_BITACORA`, `UCEDULA`, `HOST`, `FECHA`, `ACCION`, `TABLA`) VALUES
(1, '2020', '127.0.0.1', '2018-05-14 14:53:46', 'Registrar', 'gestion_incidente_articulo_t'),
(2, '2020', '127.0.0.1', '2018-05-14 14:53:59', 'Registrar', 'gestion_incidente_articulo_d'),
(3, '2020', '127.0.0.1', '2018-05-14 14:54:18', 'Registrar', 'gestion_incidente_manual'),
(4, '2020', '127.0.0.1', '2018-05-14 14:54:30', 'Registrar', 'gestion_incidente_tutorial'),
(5, '2020', '127.0.0.1', '2018-05-14 14:54:45', 'Modificar', 'gestion_incidente_articulo_t'),
(6, '2020', '127.0.0.1', '2018-05-14 14:54:48', 'Modificar', 'gestion_incidente_articulo_d'),
(7, '2020', '127.0.0.1', '2018-05-14 15:02:59', 'Eliminar', 'gestion_incidente_articulo_d'),
(8, '2020', '127.0.0.1', '2018-05-14 15:04:09', 'Modificar', 'gestion_incidente_articulo_t'),
(9, '2020', '127.0.0.1', '2018-05-14 15:04:12', 'Modificar', 'gestion_incidente_articulo_d'),
(10, '2020', '127.0.0.1', '2018-05-14 15:04:22', 'Modificar', 'gestion_incidente_manual'),
(11, '2020', '127.0.0.1', '2018-05-14 15:04:26', 'Modificar', 'gestion_incidente_tutorial'),
(12, '2020', '127.0.0.1', '2018-05-14 15:04:40', 'Eliminar', 'gestion_incidente_manual'),
(13, '2020', '127.0.0.1', '2018-05-14 15:04:44', 'Eliminar', 'gestion_incidente_tutorial'),
(14, '2020', '127.0.0.1', '2018-05-14 15:20:26', 'Registrar', 'gestion_incidente_manual'),
(15, '2020', '127.0.0.1', '2018-05-14 15:20:31', 'Registrar', 'gestion_incidente_tutorial'),
(16, '2020', '127.0.0.1', '2018-05-14 15:20:34', 'Eliminar', 'gestion_incidente_tutorial'),
(17, '2020', '127.0.0.1', '2018-05-14 15:20:38', 'Eliminar', 'gestion_incidente_manual'),
(18, '2020', '127.0.0.1', '2018-05-14 15:21:16', 'Eliminar', 'gestion_incidente_articulo_t'),
(19, '2020', '127.0.0.1', '2018-05-14 15:29:03', 'Registrar', 'seguridad_logica_articulo_t'),
(20, '2020', '127.0.0.1', '2018-05-14 15:29:07', 'Registrar', 'seguridad_logica_articulo_d'),
(21, '2020', '127.0.0.1', '2018-05-14 15:29:36', 'Modificar', 'seguridad_logica_articulo_t'),
(22, '2020', '127.0.0.1', '2018-05-14 15:29:39', 'Modificar', 'seguridad_logica_articulo_d'),
(23, '2020', '127.0.0.1', '2018-05-14 15:29:43', 'Eliminar', 'seguridad_logica_articulo_d'),
(24, '2020', '127.0.0.1', '2018-05-14 15:29:45', 'Eliminar', 'seguridad_logica_articulo_t'),
(25, '2020', '127.0.0.1', '2018-05-14 15:30:11', 'Registrar', 'seguridad_logica_manual'),
(26, '2020', '127.0.0.1', '2018-05-14 15:30:15', 'Modificar', 'seguridad_logica_manual'),
(27, '2020', '127.0.0.1', '2018-05-14 15:30:21', 'Modificar', 'seguridad_logica_manual'),
(28, '2020', '127.0.0.1', '2018-05-14 15:30:26', 'Modificar', 'seguridad_logica_manual'),
(29, '2020', '127.0.0.1', '2018-05-14 15:30:29', 'Eliminar', 'seguridad_logica_manual'),
(30, '2020', '127.0.0.1', '2018-05-14 15:30:42', 'Registrar', 'seguridad_logica_tutorial'),
(31, '2020', '127.0.0.1', '2018-05-14 15:30:45', 'Modificar', 'seguridad_logica_tutorial'),
(32, '2020', '127.0.0.1', '2018-05-14 15:30:50', 'Modificar', 'seguridad_logica_tutorial'),
(33, '2020', '127.0.0.1', '2018-05-14 15:30:54', 'Eliminar', 'seguridad_logica_tutorial'),
(34, '2020', '127.0.0.1', '2018-05-14 15:36:39', 'Registrar', 'oam_articulo_t'),
(35, '2020', '127.0.0.1', '2018-05-14 15:36:43', 'Registrar', 'oam_articulo_d'),
(36, '2020', '127.0.0.1', '2018-05-14 15:36:47', 'Modificar', 'oam_articulo_t'),
(37, '2020', '127.0.0.1', '2018-05-14 15:36:50', 'Modificar', 'oam_articulo_d'),
(38, '2020', '127.0.0.1', '2018-05-14 15:36:58', 'Eliminar', 'oam_articulo_d'),
(39, '2020', '127.0.0.1', '2018-05-14 15:37:02', 'Eliminar', 'oam_articulo_t'),
(40, '2020', '127.0.0.1', '2018-05-14 15:37:20', 'Registrar', 'oam_manual'),
(41, '2020', '127.0.0.1', '2018-05-14 15:37:23', 'Modificar', 'oam_manual'),
(42, '2020', '127.0.0.1', '2018-05-14 15:37:30', 'Modificar', 'oam_manual'),
(43, '2020', '127.0.0.1', '2018-05-14 15:37:33', 'Eliminar', 'oam_manual'),
(44, '2020', '127.0.0.1', '2018-05-14 15:37:49', 'Registrar', 'oam_tutorial'),
(45, '2020', '127.0.0.1', '2018-05-14 15:37:53', 'Modificar', 'oam_tutorial'),
(46, '2020', '127.0.0.1', '2018-05-14 15:37:56', 'Eliminar', 'oam_tutorial'),
(47, '3030', '127.0.0.1', '2018-05-14 16:06:01', 'Registrar', 'uaf_fuentes_abiertas_articulo_t'),
(48, '3030', '127.0.0.1', '2018-05-14 16:06:06', 'Modificar', 'uaf_fuentes_abiertas_articulo_t'),
(49, '3030', '127.0.0.1', '2018-05-14 16:06:13', 'Modificar', 'uaf_fuentes_abiertas_articulo_d'),
(50, '3030', '127.0.0.1', '2018-05-14 16:06:17', 'Registrar', 'uaf_fuentes_abiertas_articulo_d'),
(51, '3030', '127.0.0.1', '2018-05-14 16:06:32', 'Eliminar', 'uaf_fuentes_abiertas_articulo_d'),
(52, '3030', '127.0.0.1', '2018-05-14 16:06:34', 'Eliminar', 'uaf_fuentes_abiertas_articulo_t'),
(53, '3030', '127.0.0.1', '2018-05-14 16:06:44', 'Registrar', 'uaf_fuentes_abiertas_manual'),
(54, '3030', '127.0.0.1', '2018-05-14 16:06:49', 'Modificar', 'uaf_fuentes_abiertas_manual'),
(55, '3030', '127.0.0.1', '2018-05-14 16:06:52', 'Eliminar', 'uaf_fuentes_abiertas_manual'),
(56, '3030', '127.0.0.1', '2018-05-14 16:07:03', 'Registrar', 'uaf_fuentes_abiertas_tutorial'),
(57, '3030', '127.0.0.1', '2018-05-14 16:07:10', 'Modificar', 'uaf_fuentes_abiertas_tutorial'),
(58, '3030', '127.0.0.1', '2018-05-14 16:07:13', 'Eliminar', 'uaf_fuentes_abiertas_tutorial'),
(59, '3030', '127.0.0.1', '2018-05-14 16:15:16', 'Registrar', 'uaf_equipos_moviles_articulo_t'),
(60, '3030', '127.0.0.1', '2018-05-14 16:15:22', 'Registrar', 'uaf_equipos_moviles_manual'),
(61, '3030', '127.0.0.1', '2018-05-14 16:15:26', 'Registrar', 'uaf_equipos_moviles_tutorial'),
(62, '3030', '127.0.0.1', '2018-05-14 16:15:36', 'Modificar', 'uaf_equipos_moviles_tutorial'),
(63, '3030', '127.0.0.1', '2018-05-14 16:15:37', 'Modificar', 'uaf_equipos_moviles_tutorial'),
(64, '3030', '127.0.0.1', '2018-05-14 16:15:40', 'Eliminar', 'uaf_equipos_moviles_tutorial'),
(65, '3030', '127.0.0.1', '2018-05-14 16:15:50', 'Modificar', 'uaf_equipos_moviles_manual'),
(66, '3030', '127.0.0.1', '2018-05-14 16:15:53', 'Eliminar', 'uaf_equipos_moviles_manual'),
(67, '3030', '127.0.0.1', '2018-05-14 16:20:19', 'Registrar', 'uaf_dispositivo_almacenamiento_articulo_t'),
(68, '3030', '127.0.0.1', '2018-05-14 16:20:24', 'Registrar', 'uaf_dispositivo_almacenamiento_manual'),
(69, '3030', '127.0.0.1', '2018-05-14 16:20:28', 'Registrar', 'uaf_dispositivo_almacenamiento_tutorial'),
(70, '3030', '127.0.0.1', '2018-05-14 16:21:09', 'Registrar', 'uaf_dispositivo_almacenamiento_articulo_d'),
(71, '3030', '127.0.0.1', '2018-05-14 16:21:12', 'Modificar', 'uaf_dispositivo_almacenamiento_articulo_d'),
(72, '3030', '127.0.0.1', '2018-05-14 16:21:15', 'Modificar', 'uaf_dispositivo_almacenamiento_articulo_t'),
(73, '3030', '127.0.0.1', '2018-05-14 16:21:18', 'Eliminar', 'uaf_dispositivo_almacenamiento_articulo_d'),
(74, '3030', '127.0.0.1', '2018-05-14 16:21:21', 'Eliminar', 'uaf_dispositivo_almacenamiento_articulo_t'),
(75, '3030', '127.0.0.1', '2018-05-14 16:21:46', 'Modificar', 'uaf_dispositivo_almacenamiento_manual'),
(76, '3030', '127.0.0.1', '2018-05-14 16:21:52', 'Modificar', 'uaf_dispositivo_almacenamiento_manual'),
(77, '3030', '127.0.0.1', '2018-05-14 16:21:56', 'Eliminar', 'uaf_dispositivo_almacenamiento_manual'),
(78, '3030', '127.0.0.1', '2018-05-14 16:22:12', 'Modificar', 'uaf_dispositivo_almacenamiento_tutorial'),
(79, '3030', '127.0.0.1', '2018-05-14 16:22:16', 'Modificar', 'uaf_dispositivo_almacenamiento_tutorial'),
(80, '3030', '127.0.0.1', '2018-05-14 16:22:19', 'Eliminar', 'uaf_dispositivo_almacenamiento_tutorial'),
(81, '3030', '127.0.0.1', '2018-05-14 16:28:27', 'Registrar', 'uaf_electronica_articulo_t'),
(82, '3030', '127.0.0.1', '2018-05-14 16:28:31', 'Registrar', 'uaf_electronica_manual'),
(83, '3030', '127.0.0.1', '2018-05-14 16:28:36', 'Registrar', 'uaf_electronica_tutorial'),
(84, '3030', '127.0.0.1', '2018-05-14 16:28:47', 'Registrar', 'uaf_electronica_articulo_d'),
(85, '3030', '127.0.0.1', '2018-05-14 16:28:53', 'Modificar', 'uaf_electronica_articulo_d'),
(86, '3030', '127.0.0.1', '2018-05-14 16:28:57', 'Modificar', 'uaf_electronica_manual'),
(87, '3030', '127.0.0.1', '2018-05-14 16:29:00', 'Modificar', 'uaf_electronica_manual'),
(88, '3030', '127.0.0.1', '2018-05-14 16:29:03', 'Eliminar', 'uaf_electronica_manual'),
(89, '3030', '127.0.0.1', '2018-05-14 16:29:14', 'Modificar', 'uaf_electronica_tutorial'),
(90, '3030', '127.0.0.1', '2018-05-14 16:29:17', 'Eliminar', 'uaf_electronica_tutorial'),
(91, '3030', '127.0.0.1', '2018-05-14 16:29:23', 'Modificar', 'uaf_electronica_tutorial'),
(92, '3030', '127.0.0.1', '2018-05-14 16:29:54', 'Modificar', 'uaf_electronica_articulo_t'),
(93, '3030', '127.0.0.1', '2018-05-14 16:29:59', 'Eliminar', 'uaf_electronica_articulo_d'),
(94, '3030', '127.0.0.1', '2018-05-14 16:30:01', 'Eliminar', 'uaf_electronica_articulo_t'),
(95, '3030', '127.0.0.1', '2018-05-14 16:30:30', 'Registrar', 'uaf_electronica_tutorial'),
(96, '3030', '127.0.0.1', '2018-05-14 16:30:33', 'Eliminar', 'uaf_electronica_tutorial'),
(97, '3030', '127.0.0.1', '2018-05-14 16:31:03', 'Registrar', 'uaf_electronica_manual'),
(98, '3030', '127.0.0.1', '2018-05-14 16:31:06', 'Eliminar', 'uaf_electronica_manual'),
(99, '3030', '127.0.0.1', '2018-05-14 16:34:37', 'Registrar', 'uaf_imagen_video_audio_articulo_t'),
(100, '3030', '127.0.0.1', '2018-05-14 16:34:41', 'Modificar', 'uaf_imagen_video_audio_articulo_d'),
(101, '3030', '127.0.0.1', '2018-05-14 16:34:44', 'Registrar', 'uaf_imagen_video_audio_articulo_d'),
(102, '3030', '127.0.0.1', '2018-05-14 16:34:47', 'Eliminar', 'uaf_imagen_video_audio_articulo_d'),
(103, '3030', '127.0.0.1', '2018-05-14 16:34:53', 'Eliminar', 'uaf_imagen_video_audio_articulo_t'),
(104, '3030', '127.0.0.1', '2018-05-14 16:35:18', 'Registrar', 'uaf_imagen_video_audio_manual'),
(105, '3030', '127.0.0.1', '2018-05-14 16:35:22', 'Modificar', 'uaf_imagen_video_audio_manual'),
(106, '3030', '127.0.0.1', '2018-05-14 16:35:24', 'Modificar', 'uaf_imagen_video_audio_manual'),
(107, '3030', '127.0.0.1', '2018-05-14 16:35:27', 'Eliminar', 'uaf_imagen_video_audio_manual'),
(108, '3030', '127.0.0.1', '2018-05-14 16:35:39', 'Registrar', 'uaf_imagen_video_audio_tutorial'),
(109, '3030', '127.0.0.1', '2018-05-14 16:35:47', 'Modificar', 'uaf_imagen_video_audio_tutorial'),
(110, '3030', '127.0.0.1', '2018-05-14 16:35:50', 'Eliminar', 'uaf_imagen_video_audio_tutorial'),
(111, '3030', '127.0.0.1', '2018-05-14 16:37:26', 'Registrar', 'uaf_imagen_video_audio_tutorial'),
(112, '3030', '127.0.0.1', '2018-05-14 16:37:43', 'Modificar', 'uaf_imagen_video_audio_tutorial'),
(113, '3030', '127.0.0.1', '2018-05-14 16:38:09', 'Modificar', 'uaf_imagen_video_audio_tutorial'),
(114, '3030', '127.0.0.1', '2018-05-14 16:38:19', 'Modificar', 'uaf_imagen_video_audio_tutorial'),
(115, '3030', '127.0.0.1', '2018-05-14 16:38:25', 'Eliminar', 'uaf_imagen_video_audio_tutorial'),
(116, '4040', '127.0.0.1', '2018-05-14 16:43:06', 'Registrar', 'procesos_administrativo_articulo_t'),
(117, '4040', '127.0.0.1', '2018-05-14 16:43:18', 'Registrar', 'procesos_administrativo_articulo_d'),
(118, '4040', '127.0.0.1', '2018-05-14 16:43:21', 'Modificar', 'procesos_administrativo_articulo_d'),
(119, '4040', '127.0.0.1', '2018-05-14 16:43:24', 'Eliminar', 'procesos_administrativo_articulo_d'),
(120, '4040', '127.0.0.1', '2018-05-14 16:43:27', 'Eliminar', 'procesos_administrativo_articulo_t'),
(121, '4040', '127.0.0.1', '2018-05-14 16:43:37', 'Registrar', 'procesos_administrativo_manual'),
(122, '4040', '127.0.0.1', '2018-05-14 16:43:41', 'Modificar', 'procesos_administrativo_manual'),
(123, '4040', '127.0.0.1', '2018-05-14 16:43:49', 'Modificar', 'procesos_administrativo_manual'),
(124, '4040', '127.0.0.1', '2018-05-14 16:43:52', 'Eliminar', 'procesos_administrativo_manual'),
(125, '4040', '127.0.0.1', '2018-05-14 16:44:10', 'Registrar', 'procesos_administrativo_tutorial'),
(126, '4040', '127.0.0.1', '2018-05-14 16:44:14', 'Modificar', 'procesos_administrativo_tutorial'),
(127, '4040', '127.0.0.1', '2018-05-14 16:44:21', 'Modificar', 'procesos_administrativo_tutorial'),
(128, '4040', '127.0.0.1', '2018-05-14 16:44:23', 'Eliminar', 'procesos_administrativo_tutorial'),
(129, '5050', '127.0.0.1', '2018-05-14 16:48:45', 'Registrar', 'oficina_organizacion_articulo_t'),
(130, '5050', '127.0.0.1', '2018-05-14 16:48:51', 'Modificar', 'oficina_organizacion_articulo_d'),
(131, '5050', '127.0.0.1', '2018-05-14 16:48:55', 'Registrar', 'oficina_organizacion_articulo_d'),
(132, '5050', '127.0.0.1', '2018-05-14 16:48:58', 'Eliminar', 'oficina_organizacion_articulo_d'),
(133, '5050', '127.0.0.1', '2018-05-14 16:49:01', 'Eliminar', 'oficina_organizacion_articulo_t'),
(134, '5050', '127.0.0.1', '2018-05-14 16:49:45', 'Registrar', 'oficina_organizacion_manual'),
(135, '5050', '127.0.0.1', '2018-05-14 16:49:48', 'Eliminar', 'oficina_organizacion_manual'),
(136, '5050', '127.0.0.1', '2018-05-14 16:49:51', 'Modificar', 'oficina_organizacion_manual'),
(137, '5050', '127.0.0.1', '2018-05-14 16:50:03', 'Modificar', 'oficina_organizacion_manual'),
(138, '5050', '127.0.0.1', '2018-05-14 16:50:08', 'Eliminar', 'oficina_organizacion_manual'),
(139, '5050', '127.0.0.1', '2018-05-14 16:50:12', 'Modificar', 'oficina_organizacion_tutorial'),
(140, '5050', '127.0.0.1', '2018-05-14 16:50:20', 'Registrar', 'oficina_organizacion_tutorial'),
(141, '5050', '127.0.0.1', '2018-05-14 16:50:30', 'Modificar', 'oficina_organizacion_tutorial'),
(142, '5050', '127.0.0.1', '2018-05-14 16:50:37', 'Modificar', 'oficina_organizacion_tutorial'),
(143, '5050', '127.0.0.1', '2018-05-14 16:50:44', 'Eliminar', 'oficina_organizacion_tutorial'),
(144, '5050', '127.0.0.1', '2018-05-14 16:59:45', 'Registrar', 'oficina_planificacion_articulo_t'),
(145, '5050', '127.0.0.1', '2018-05-14 16:59:50', 'Eliminar', 'oficina_planificacion_articulo_d'),
(146, '5050', '127.0.0.1', '2018-05-14 16:59:53', 'Registrar', 'oficina_planificacion_articulo_d'),
(147, '5050', '127.0.0.1', '2018-05-14 16:59:56', 'Eliminar', 'oficina_planificacion_articulo_t'),
(148, '5050', '127.0.0.1', '2018-05-14 17:00:06', 'Registrar', 'oficina_planificacion_manual'),
(149, '5050', '127.0.0.1', '2018-05-14 17:00:11', 'Registrar', 'oficina_planificacion_tutorial'),
(150, '5050', '127.0.0.1', '2018-05-14 17:00:21', 'Eliminar', 'oficina_planificacion_tutorial'),
(151, '5050', '127.0.0.1', '2018-05-14 17:00:25', 'Modificar', 'oficina_planificacion_tutorial'),
(152, '5050', '127.0.0.1', '2018-05-14 17:00:30', 'Modificar', 'oficina_planificacion_tutorial'),
(153, '5050', '127.0.0.1', '2018-05-14 17:00:36', 'Modificar', 'oficina_planificacion_tutorial'),
(154, '5050', '127.0.0.1', '2018-05-14 17:00:53', 'Modificar', 'oficina_planificacion_manual'),
(155, '5050', '127.0.0.1', '2018-05-14 17:00:56', 'Eliminar', 'oficina_planificacion_manual'),
(156, '5050', '127.0.0.1', '2018-05-14 17:01:03', 'Modificar', 'oficina_planificacion_manual'),
(157, '5050', '127.0.0.1', '2018-05-14 17:04:35', 'Registrar', 'oficina_presupuesto_articulo_t'),
(158, '5050', '127.0.0.1', '2018-05-14 17:04:41', 'Eliminar', 'oficina_presupuesto_articulo_d'),
(159, '5050', '127.0.0.1', '2018-05-14 17:05:00', 'Registrar', 'oficina_presupuesto_articulo_t'),
(160, '5050', '127.0.0.1', '2018-05-14 17:05:25', 'Registrar', 'oficina_presupuesto_articulo_d'),
(161, '5050', '127.0.0.1', '2018-05-14 17:05:30', 'Eliminar', 'oficina_presupuesto_articulo_d'),
(162, '5050', '127.0.0.1', '2018-05-14 17:05:33', 'Eliminar', 'oficina_presupuesto_articulo_t'),
(163, '5050', '127.0.0.1', '2018-05-14 17:05:36', 'Eliminar', 'oficina_presupuesto_articulo_t'),
(164, '5050', '127.0.0.1', '2018-05-14 17:06:34', 'Registrar', 'oficina_presupuesto_manual'),
(165, '5050', '127.0.0.1', '2018-05-14 17:06:37', 'Modificar', 'oficina_presupuesto_manual'),
(166, '5050', '127.0.0.1', '2018-05-14 17:06:41', 'Modificar', 'oficina_presupuesto_manual'),
(167, '5050', '127.0.0.1', '2018-05-14 17:06:51', 'Eliminar', 'oficina_presupuesto_manual'),
(168, '5050', '127.0.0.1', '2018-05-14 17:06:58', 'Modificar', 'oficina_presupuesto_tutorial'),
(169, '5050', '127.0.0.1', '2018-05-14 17:07:03', 'Registrar', 'oficina_presupuesto_tutorial'),
(170, '5050', '127.0.0.1', '2018-05-14 17:07:10', 'Modificar', 'oficina_presupuesto_tutorial'),
(171, '5050', '127.0.0.1', '2018-05-14 17:07:13', 'Eliminar', 'oficina_presupuesto_tutorial'),
(172, '6060', '127.0.0.1', '2018-05-14 17:21:36', 'Registrar', 'dictamenes_articulo_t'),
(173, '6060', '127.0.0.1', '2018-05-14 17:21:41', 'Registrar', 'dictamenes_articulo_d'),
(174, '6060', '127.0.0.1', '2018-05-14 17:21:44', 'Eliminar', 'dictamenes_articulo_d'),
(175, '6060', '127.0.0.1', '2018-05-14 17:21:47', 'Eliminar', 'dictamenes_articulo_t'),
(176, '6060', '127.0.0.1', '2018-05-14 17:21:57', 'Registrar', 'dictamenes_manual'),
(177, '6060', '127.0.0.1', '2018-05-14 17:22:00', 'Modificar', 'dictamenes_manual'),
(178, '6060', '127.0.0.1', '2018-05-14 17:22:04', 'Modificar', 'dictamenes_manual'),
(179, '6060', '127.0.0.1', '2018-05-14 17:22:06', 'Eliminar', 'dictamenes_manual'),
(180, '6060', '127.0.0.1', '2018-05-14 17:22:16', 'Registrar', 'dictamenes_tutorial'),
(181, '6060', '127.0.0.1', '2018-05-14 17:22:21', 'Modificar', 'dictamenes_tutorial'),
(182, '6060', '127.0.0.1', '2018-05-14 17:22:25', 'Eliminar', 'dictamenes_tutorial'),
(183, '6060', '127.0.0.1', '2018-05-14 17:22:30', 'Modificar', 'dictamenes_tutorial'),
(184, '6060', '127.0.0.1', '2018-05-14 17:25:37', 'Registrar', 'convenios_articulo_t'),
(185, '6060', '127.0.0.1', '2018-05-14 17:25:41', 'Eliminar', 'convenios_articulo_d'),
(186, '6060', '127.0.0.1', '2018-05-14 17:25:44', 'Modificar', 'convenios_articulo_d'),
(187, '6060', '127.0.0.1', '2018-05-14 17:25:49', 'Registrar', 'convenios_articulo_d'),
(188, '6060', '127.0.0.1', '2018-05-14 17:25:52', 'Eliminar', 'convenios_articulo_t'),
(189, '6060', '127.0.0.1', '2018-05-14 17:26:05', 'Registrar', 'convenios_manual'),
(190, '6060', '127.0.0.1', '2018-05-14 17:26:07', 'Eliminar', 'convenios_manual'),
(191, '6060', '127.0.0.1', '2018-05-14 17:26:10', 'Modificar', 'convenios_manual'),
(192, '6060', '127.0.0.1', '2018-05-14 17:26:18', 'Registrar', 'convenios_tutorial'),
(193, '6060', '127.0.0.1', '2018-05-14 17:26:20', 'Eliminar', 'convenios_tutorial'),
(194, '6060', '127.0.0.1', '2018-05-14 17:26:23', 'Modificar', 'convenios_tutorial'),
(195, '6060', '127.0.0.1', '2018-05-14 17:29:33', 'Registrar', 'pronunciamiento_articulo_t'),
(196, '6060', '127.0.0.1', '2018-05-14 17:29:42', 'Modificar', 'pronunciamiento_articulo_d'),
(197, '6060', '127.0.0.1', '2018-05-14 17:29:45', 'Eliminar', 'pronunciamiento_articulo_d'),
(198, '6060', '127.0.0.1', '2018-05-14 17:29:54', 'Registrar', 'pronunciamiento_articulo_d'),
(199, '6060', '127.0.0.1', '2018-05-14 17:29:58', 'Eliminar', 'pronunciamiento_articulo_t'),
(200, '6060', '127.0.0.1', '2018-05-14 17:30:10', 'Registrar', 'pronunciamiento_manual'),
(201, '6060', '127.0.0.1', '2018-05-14 17:30:16', 'Modificar', 'pronunciamiento_manual'),
(202, '6060', '127.0.0.1', '2018-05-14 17:30:19', 'Eliminar', 'pronunciamiento_manual'),
(203, '6060', '127.0.0.1', '2018-05-14 17:30:27', 'Registrar', 'pronunciamiento_tutorial'),
(204, '6060', '127.0.0.1', '2018-05-14 17:30:33', 'Modificar', 'pronunciamiento_tutorial'),
(205, '6060', '127.0.0.1', '2018-05-14 17:30:37', 'Eliminar', 'pronunciamiento_tutorial'),
(206, '7070', '127.0.0.1', '2018-05-14 17:34:24', 'Registrar', 'hcm_articulo_t'),
(207, '7070', '127.0.0.1', '2018-05-14 17:34:30', 'Modificar', 'hcm_articulo_d'),
(208, '7070', '127.0.0.1', '2018-05-14 17:34:37', 'Eliminar', 'hcm_articulo_d'),
(209, '7070', '127.0.0.1', '2018-05-14 17:34:42', 'Registrar', 'hcm_articulo_d'),
(210, '7070', '127.0.0.1', '2018-05-14 17:34:46', 'Eliminar', 'hcm_articulo_t'),
(211, '7070', '127.0.0.1', '2018-05-14 17:34:57', 'Registrar', 'hcm_manual'),
(212, '7070', '127.0.0.1', '2018-05-14 17:35:03', 'Modificar', 'hcm_manual'),
(213, '7070', '127.0.0.1', '2018-05-14 17:35:06', 'Eliminar', 'hcm_manual'),
(214, '7070', '127.0.0.1', '2018-05-14 17:35:13', 'Registrar', 'hcm_tutorial'),
(215, '7070', '127.0.0.1', '2018-05-14 17:35:17', 'Modificar', 'hcm_tutorial'),
(216, '7070', '127.0.0.1', '2018-05-14 17:35:19', 'Eliminar', 'hcm_tutorial'),
(217, '7070', '127.0.0.1', '2018-05-14 17:38:19', 'Registrar', 'nomina_articulo_t'),
(218, '7070', '127.0.0.1', '2018-05-14 17:38:24', 'Modificar', 'nomina_articulo_t'),
(219, '7070', '127.0.0.1', '2018-05-14 17:38:28', 'Registrar', 'nomina_articulo_d'),
(220, '7070', '127.0.0.1', '2018-05-14 17:38:32', 'Eliminar', 'nomina_articulo_t'),
(221, '7070', '127.0.0.1', '2018-05-14 17:38:47', 'Registrar', 'nomina_manual'),
(222, '7070', '127.0.0.1', '2018-05-14 17:38:51', 'Modificar', 'nomina_manual'),
(223, '7070', '127.0.0.1', '2018-05-14 17:38:55', 'Modificar', 'nomina_manual'),
(224, '7070', '127.0.0.1', '2018-05-14 17:39:19', 'Eliminar', 'nomina_manual'),
(225, '7070', '127.0.0.1', '2018-05-14 17:39:22', 'Registrar', 'nomina_tutorial'),
(226, '7070', '127.0.0.1', '2018-05-14 17:39:32', 'Modificar', 'nomina_tutorial'),
(227, '7070', '127.0.0.1', '2018-05-14 17:39:35', 'Eliminar', 'nomina_tutorial'),
(228, '8080', '127.0.0.1', '2018-05-14 17:43:37', 'Registrar', 'certificacion_electronica_criptografica_articulo_t'),
(229, '8080', '127.0.0.1', '2018-05-14 17:43:41', 'Registrar', 'certificacion_electronica_criptografica_articulo_d'),
(230, '8080', '127.0.0.1', '2018-05-14 17:43:50', 'Registrar', 'certificacion_electronica_criptografica_manual'),
(231, '8080', '127.0.0.1', '2018-05-14 17:43:56', 'Registrar', 'certificacion_electronica_criptografica_tutorial'),
(232, '8080', '127.0.0.1', '2018-05-14 17:44:03', 'Eliminar', 'certificacion_electronica_criptografica_articulo_d'),
(233, '8080', '127.0.0.1', '2018-05-14 17:44:07', 'Modificar', 'certificacion_electronica_criptografica_articulo_d'),
(234, '8080', '127.0.0.1', '2018-05-14 17:44:32', 'Registrar', 'certificacion_electronica_criptografica_articulo_t'),
(235, '8080', '127.0.0.1', '2018-05-14 17:46:05', 'Eliminar', 'certificacion_electronica_criptografica_articulo_t'),
(236, '8080', '127.0.0.1', '2018-05-14 17:46:08', 'Eliminar', 'certificacion_electronica_criptografica_articulo_t'),
(237, '8080', '127.0.0.1', '2018-05-14 17:46:33', 'Registrar', 'certificacion_electronica_criptografica_articulo_t'),
(238, '8080', '127.0.0.1', '2018-05-14 17:49:57', 'Registrar', 'certificacion_electronica_criptografica_articulo_t'),
(239, '8080', '127.0.0.1', '2018-05-14 17:50:15', 'Eliminar', 'certificacion_electronica_criptografica_articulo_t'),
(240, '8080', '127.0.0.1', '2018-05-14 17:50:18', 'Eliminar', 'certificacion_electronica_criptografica_articulo_t'),
(241, '8080', '127.0.0.1', '2018-05-14 17:51:27', 'Registrar', 'certificacion_electronica_criptografica_manual'),
(242, '8080', '127.0.0.1', '2018-05-14 17:51:34', 'Registrar', 'certificacion_electronica_criptografica_tutorial'),
(243, '8080', '127.0.0.1', '2018-05-14 17:52:00', 'Registrar', 'certificacion_electronica_criptografica_articulo_t'),
(244, '8080', '127.0.0.1', '2018-05-14 17:52:32', 'Registrar', 'certificacion_electronica_criptografica_articulo_t'),
(245, '8080', '127.0.0.1', '2018-05-14 17:52:51', 'Eliminar', 'certificacion_electronica_criptografica_articulo_t'),
(246, '8080', '127.0.0.1', '2018-05-14 17:52:54', 'Eliminar', 'certificacion_electronica_criptografica_articulo_t'),
(247, '8080', '127.0.0.1', '2018-05-14 17:53:03', 'Registrar', 'certificacion_electronica_criptografica_articulo_t'),
(248, '8080', '127.0.0.1', '2018-05-14 17:55:10', 'Registrar', 'certificacion_electronica_criptografica_articulo_t'),
(249, '8080', '127.0.0.1', '2018-05-14 17:55:26', 'Eliminar', 'certificacion_electronica_criptografica_articulo_t'),
(250, '8080', '127.0.0.1', '2018-05-14 17:55:59', 'Modificar', 'certificacion_electronica_criptografica_manual'),
(251, '8080', '127.0.0.1', '2018-05-14 17:56:03', 'Modificar', 'certificacion_electronica_criptografica_manual'),
(252, '8080', '127.0.0.1', '2018-05-14 17:56:12', 'Eliminar', 'certificacion_electronica_criptografica_manual'),
(253, '8080', '127.0.0.1', '2018-05-14 17:56:23', 'Registrar', 'certificacion_electronica_criptografica_tutorial'),
(254, '8080', '127.0.0.1', '2018-05-14 17:56:27', 'Eliminar', 'certificacion_electronica_criptografica_tutorial'),
(255, '8080', '127.0.0.1', '2018-05-14 17:56:31', 'Eliminar', 'certificacion_electronica_criptografica_tutorial'),
(256, '8080', '127.0.0.1', '2018-05-14 17:56:35', 'Modificar', 'certificacion_electronica_criptografica_tutorial'),
(257, '8080', '127.0.0.1', '2018-05-14 17:56:37', 'Modificar', 'certificacion_electronica_criptografica_tutorial'),
(258, '8080', '127.0.0.1', '2018-05-14 17:56:44', 'Eliminar', 'certificacion_electronica_criptografica_tutorial'),
(259, '8080', '127.0.0.1', '2018-05-14 18:03:28', 'Registrar', 'formacion_desarrollo_articulo_t'),
(260, '8080', '127.0.0.1', '2018-05-14 18:03:38', 'Eliminar', 'formacion_desarrollo_articulo_t'),
(261, '8080', '127.0.0.1', '2018-05-14 18:03:48', 'Registrar', 'formacion_desarrollo_articulo_d'),
(262, '8080', '127.0.0.1', '2018-05-14 18:03:56', 'Registrar', 'formacion_desarrollo_articulo_d'),
(263, '8080', '127.0.0.1', '2018-05-14 18:04:00', 'Modificar', 'formacion_desarrollo_articulo_d'),
(264, '8080', '127.0.0.1', '2018-05-14 18:04:03', 'Eliminar', 'formacion_desarrollo_articulo_t'),
(265, '8080', '127.0.0.1', '2018-05-14 18:04:17', 'Registrar', 'formacion_desarrollo_manual'),
(266, '8080', '127.0.0.1', '2018-05-14 18:04:21', 'Modificar', 'formacion_desarrollo_manual'),
(267, '8080', '127.0.0.1', '2018-05-14 18:04:24', 'Modificar', 'formacion_desarrollo_manual'),
(268, '8080', '127.0.0.1', '2018-05-14 18:04:27', 'Eliminar', 'formacion_desarrollo_manual'),
(269, '8080', '127.0.0.1', '2018-05-14 18:04:37', 'Registrar', 'formacion_desarrollo_tutorial'),
(270, '8080', '127.0.0.1', '2018-05-14 18:04:47', 'Modificar', 'formacion_desarrollo_tutorial'),
(271, '8080', '127.0.0.1', '2018-05-14 18:04:51', 'Modificar', 'formacion_desarrollo_tutorial'),
(272, '8080', '127.0.0.1', '2018-05-14 18:04:55', 'Eliminar', 'formacion_desarrollo_tutorial'),
(273, '8080', '127.0.0.1', '2018-05-14 18:10:01', 'Registrar', 'estandarizacion_fiscalizacion_articulo_t'),
(274, '8080', '127.0.0.1', '2018-05-14 18:10:12', 'Modificar', 'estandarizacion_fiscalizacion_articulo_d'),
(275, '8080', '127.0.0.1', '2018-05-14 18:10:15', 'Modificar', 'estandarizacion_fiscalizacion_articulo_t'),
(276, '8080', '127.0.0.1', '2018-05-14 18:10:25', 'Registrar', 'estandarizacion_fiscalizacion_articulo_d'),
(277, '8080', '127.0.0.1', '2018-05-14 18:10:28', 'Eliminar', 'estandarizacion_fiscalizacion_articulo_d'),
(278, '8080', '127.0.0.1', '2018-05-14 18:10:31', 'Eliminar', 'estandarizacion_fiscalizacion_articulo_t'),
(279, '8080', '127.0.0.1', '2018-05-14 18:10:41', 'Registrar', 'estandarizacion_fiscalizacion_manual'),
(280, '8080', '127.0.0.1', '2018-05-14 18:10:50', 'Eliminar', 'estandarizacion_fiscalizacion_manual'),
(281, '8080', '127.0.0.1', '2018-05-14 18:10:53', 'Modificar', 'estandarizacion_fiscalizacion_manual'),
(282, '8080', '127.0.0.1', '2018-05-14 18:10:57', 'Modificar', 'estandarizacion_fiscalizacion_manual'),
(283, '8080', '127.0.0.1', '2018-05-14 18:11:07', 'Modificar', 'estandarizacion_fiscalizacion_tutorial'),
(284, '8080', '127.0.0.1', '2018-05-14 18:11:14', 'Registrar', 'estandarizacion_fiscalizacion_tutorial'),
(285, '8080', '127.0.0.1', '2018-05-14 18:11:24', 'Eliminar', 'estandarizacion_fiscalizacion_tutorial'),
(286, '8080', '127.0.0.1', '2018-05-14 18:11:30', 'Modificar', 'estandarizacion_fiscalizacion_tutorial'),
(287, '8080', '127.0.0.1', '2018-05-14 18:15:40', 'Registrar', 'soporte_tecnico_articulo_t'),
(288, '8080', '127.0.0.1', '2018-05-14 18:15:49', 'Modificar', 'soporte_tecnico_articulo_d'),
(289, '8080', '127.0.0.1', '2018-05-14 18:15:53', 'Modificar', 'soporte_tecnico_articulo_t'),
(290, '8080', '127.0.0.1', '2018-05-14 18:15:58', 'Registrar', 'soporte_tecnico_articulo_d'),
(291, '8080', '127.0.0.1', '2018-05-14 18:16:02', 'Eliminar', 'soporte_tecnico_articulo_t'),
(292, '8080', '127.0.0.1', '2018-05-14 18:16:13', 'Registrar', 'soporte_tecnico_manual'),
(293, '8080', '127.0.0.1', '2018-05-14 18:16:20', 'Modificar', 'soporte_tecnico_manual'),
(294, '8080', '127.0.0.1', '2018-05-14 18:16:24', 'Modificar', 'soporte_tecnico_manual'),
(295, '8080', '127.0.0.1', '2018-05-14 18:16:30', 'Eliminar', 'soporte_tecnico_manual'),
(296, '8080', '127.0.0.1', '2018-05-14 18:16:40', 'Registrar', 'soporte_tecnico_tutorial'),
(297, '8080', '127.0.0.1', '2018-05-14 18:16:47', 'Modificar', 'soporte_tecnico_tutorial'),
(298, '8080', '127.0.0.1', '2018-05-14 18:16:53', 'Modificar', 'soporte_tecnico_tutorial'),
(299, '8080', '127.0.0.1', '2018-05-14 18:16:57', 'Eliminar', 'soporte_tecnico_tutorial'),
(300, '1', '127.0.0.1', '2018-05-14 18:20:19', 'Modificar Usuario', 'usuarios_wiki'),
(301, '1', '127.0.0.1', '2018-05-14 18:20:43', 'Registrar Usuario', 'usuarios_wiki'),
(302, '1', '127.0.0.1', '2018-05-14 18:21:20', 'Registrar Usuario', 'usuarios_wiki'),
(303, '1', '127.0.0.1', '2018-05-14 18:21:26', 'Eliminar Usuario', 'usuarios_wiki'),
(304, '4040', '127.0.0.1', '2018-05-14 18:22:11', 'Modificar Usuario', 'usuarios_wiki');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `certificacion_electronica_criptografica_articulo_d`
--

INSERT INTO `certificacion_electronica_criptografica_articulo_d` (`ID_CECAD`, `ID_TITULO_CECAT`, `DESCRIPCION_CECAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">La Certificaci&oacute;n Electr&oacute;nica se define como el proceso mediante el cual se generan certificados electr&oacute;nicos, garantizando la integridad de un documento digital o una acci&oacute;n cometida sobre &eacute;ste. </span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">Los certificados electr&oacute;nicos pueden identificar a las personas y/u organizaciones, convirti&eacute;ndose de esta manera en documentos de identidad que contienen informaci&oacute;n importante con respecto a su portador, por ejemplo: nombre, fecha de nacimiento o constituci&oacute;n y direcci&oacute;n. Adem&aacute;s, contienen el dato m&aacute;s importante para la identificaci&oacute;n de la persona natural o jur&iacute;dica: La clave p&uacute;blica de su signatario. La funci&oacute;n de esta clave es establecer un par&aacute;metro t&eacute;cnico que permita darle seguridad a una informaci&oacute;n y el acceso a ella cuando sea necesario o deseado. </span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">Al mismo tiempo, un certificado electr&oacute;nico, emitido y firmado por un PSC permite autenticar a su signatario. Esto apunta a un rol significativo de la certificaci&oacute;n electr&oacute;nica en el modelado de la identidad del usuario, permiti&eacute;ndole identificarse de forma segura y confiable en los portales del gobierno, la banca por internet, las empresas, entre otros. </span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">Los certificados electr&oacute;nicos son generados siguiendo los est&aacute;ndares internacionales, con la finalidad de unificar criterios y lograr a futuro su uso en otros pa&iacute;ses. El est&aacute;ndar utilizado es el X.509 V3, el cual define la estructura de los certificados, desarrollado por la Uni&oacute;n Internacional de Telecomunicaciones (UIT) y la Organizaci&oacute;n Internacional para la Estandarizaci&oacute;n (ISO). </span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">B&aacute;sicamente el est&aacute;ndar X.509 V3 tiene una serie de campos b&aacute;sicos, entre los cuales est&aacute;n: </span></span></p>\n\n<p style="text-align:justify">&bull; <span style="font-family:arial,sans-serif"><span style="font-size:medium">La identificaci&oacute;n del signatario</span></span></p>\n\n<p style="text-align:justify">&bull; <span style="font-family:arial,sans-serif"><span style="font-size:medium">La clave p&uacute;blica del signatario</span></span><br />\n&bull; <span style="font-family:arial,sans-serif"><span style="font-size:medium">El per&iacute;odo de validez</span></span><br />\n&bull; <span style="font-family:arial,sans-serif"><span style="font-size:medium">El nombre de la autoridad o entidad emisora.</span></span></p>\n\n<p style="text-align:justify"><span style="font-family:arial,sans-serif"><span style="font-size:medium">A su vez, el est&aacute;ndar presenta una serie de extensiones, como la localizaci&oacute;n de la informaci&oacute;n de estado de certificado, la ubicaci&oacute;n del certificado de la entidad emisora, los campos alternativos del nombre del signatario, las restricciones de uso y la informaci&oacute;n de las pol&iacute;ticas.</span></span></p>\n', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `certificacion_electronica_criptografica_articulo_t`
--

INSERT INTO `certificacion_electronica_criptografica_articulo_t` (`ID_CECAT`, `TITULO_CECAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'CertificaciÃ³n ElectrÃ³nica', 'privado', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `certificacion_electronica_criptografica_manual`
--

INSERT INTO `certificacion_electronica_criptografica_manual` (`ID_CECM`, `TITULO_CECM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(2, 'Ds', 'publico', '../manual/Manual Laravel 5.4.docx', '8080'),
(3, 'F', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `certificacion_electronica_criptografica_tutorial`
--

INSERT INTO `certificacion_electronica_criptografica_tutorial` (`ID_CECTT`, `TITULO_CECTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'Ds', 'publico', 'video 2.webm', '8080');

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
(2, 2, '<p style="text-align:justify"><span style="font-size:14px">La expresi&oacute;n &ldquo;convenio colectivo&rdquo;, por su parte, identifica al acuerdo que vincula a quienes representan a los trabajadores con los empresarios y que sirve para regular las condiciones de trabajo. Por medio de estos convenios, los sindicatos y las organizaciones empresarias fijan diferentes derechos y obligaciones en el marco de la relaci&oacute;n laboral.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Los convenios pueden ser valorados como contratos, normativas o una combinaci&oacute;n de ambos. Entre las condiciones que contemplan los convenios colectivos, se encuentran la duraci&oacute;n de la jornada laboral, los salarios, las vacaciones y las licencias.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Cabe destacar que el convenio colectivo se hace extensivo para todos los empleados del rubro en cuesti&oacute;n (una empresa o un sector en general), sin importar si est&aacute;n, o no, afiliados al sindicato que logr&oacute; el acuerdo.</span></p>\n\n<p style="text-align:justify">&nbsp;</p>\n\n<p style="text-align:center">&nbsp;</p>\n\n<p style="text-align:justify">&nbsp;</p>\n', '6060');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `convenios_manual`
--

INSERT INTO `convenios_manual` (`ID_CM`, `TITULO_CM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Aaa', 'publico', '../manual/Manual de Usuario 2,86.pdf', '6060');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `convenios_tutorial`
--

INSERT INTO `convenios_tutorial` (`ID_CTT`, `TITULO_CTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Sff', 'privado', 'video 1.webm', '6060');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `dictamenes_tutorial`
--

INSERT INTO `dictamenes_tutorial` (`ID_DTT`, `TITULO_DTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Ass', 'publico', 'video 1.webm', '6060');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `estandarizacion_fiscalizacion_manual`
--

INSERT INTO `estandarizacion_fiscalizacion_manual` (`ID_EFM`, `TITULO_EFM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Vvs', 'publico', '../manual/Manual Laravel 5.4.docx', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `estandarizacion_fiscalizacion_tutorial`
--

INSERT INTO `estandarizacion_fiscalizacion_tutorial` (`ID_EFTT`, `TITULO_EFTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Vvss', 'publico', 'video 1.webm', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `formacion_desarrollo_articulo_t`
--

INSERT INTO `formacion_desarrollo_articulo_t` (`ID_FDAT`, `TITULO_FDAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'InvestigaciÃ³n, FormaciÃ³n y Desarrollo', 'privado', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `formacion_desarrollo_manual`
--

INSERT INTO `formacion_desarrollo_manual` (`ID_FDM`, `TITULO_FDM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Sadj', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=104 ;

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
(70, 42, '<p style="text-align:justify">La&nbsp;<strong>gesti&oacute;n de incidentes</strong>&nbsp;es un &aacute;rea de procesos perteneciente a la&nbsp;<a href="https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_servicios_de_tecnolog%C3%ADas_de_la_informaci%C3%B3n" title="GestiÃ³n de servicios de tecnologÃ­as de la informaciÃ³n">gesti&oacute;n de s<span style="font-size:14px">ervicios de tecnolog&iacute;as de la informaci&oacute;n</span></a><span style="font-size:14px">. El primer objetivo de la gesti&oacute;n de incidentes es recuperar el nivel habitual de funcionamiento del servicio y minimizar en todo lo posible el impacto negativo en la organizaci&oacute;n de forma que la calidad del servicio y la disponibilidad se mantengan.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Los incidentes que no pueden ser resueltos r&aacute;pidamente por el equipo de ayuda al usuario, son asignados a un especialista del equipo de soporte t&eacute;cnico. La resoluci&oacute;n del incidente debe ser ejecutada lo antes posible para restaurar el servicio r&aacute;pidamente.-</span></p>\n\n<p style="text-align:justify">&nbsp;</p>\n', '2020');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=80 ;

--
-- Volcado de datos para la tabla `gestion_incidente_articulo_t`
--

INSERT INTO `gestion_incidente_articulo_t` (`ID_GIT`, `TITULO_GIT`, `TIPO`, `UCEDULA`) VALUES
(42, 'GestiÃ³n de Incidentes', 'privado', '2020'),
(43, 'Ãndice', 'publico', '20490050'),
(44, 'DefiniciÃ³n', 'publico', '20490050'),
(45, 'Incidentes, problemas y errores conocidos', 'publico', '20490050'),
(46, 'Incidentes y cambios', 'publico', '20490050'),
(47, 'Procesos de gestiÃ³n de incidentes', 'publico', '20490050'),
(48, 'Ejemplos', 'publico', '20490050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `gestion_incidente_manual`
--

INSERT INTO `gestion_incidente_manual` (`ID_GIM`, `TITULO_GIM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(13, 'privado', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '2020'),
(15, 'Privado manual', 'privado', '../manual/Manual de Usuario 2,86.pdf', '2'),
(16, 'A', 'publico', '../manual/Manual Laravel 5.4.docx', '2020');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `gestion_incidente_tutorial`
--

INSERT INTO `gestion_incidente_tutorial` (`ID_GITT`, `TITULO_GITT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(10, 'Sssaaaddasd', 'privado', 'video 2.webm', '2020');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `hcm_manual`
--

INSERT INTO `hcm_manual` (`ID_HCMM`, `TITULO_HCMM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Adf', 'privado', '../manual/Manual Laravel 5.4.docx', '7070');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `hcm_tutorial`
--

INSERT INTO `hcm_tutorial` (`ID_HCMTT`, `TITULO_HCMTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'Fass', 'publico', '../tutorial/video 1.webm', '7070');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `nomina_articulo_d`
--

INSERT INTO `nomina_articulo_d` (`ID_NAD`, `ID_TITULO_NAT`, `DESCRIPCION_NAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">En una empresa, la n&oacute;mina es la suma de todos los registros financieros de los sueldos de los empleados, incluyendo los salarios, las bonificaciones y las deducciones. En la contabilidad, la n&oacute;mina se refiere a la cantidad pagada a los empleados por los servicios que prestaron durante un cierto per&iacute;odo de tiempo. La n&oacute;mina tiene un papel importante en una sociedad por varias razones.</span></p>\n', '7070'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `nomina_manual`
--

INSERT INTO `nomina_manual` (`ID_NM`, `TITULO_NM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Dff', 'publico', '../manual/Manual de Usuario 2,86.pdf', '7070');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `nomina_tutorial`
--

INSERT INTO `nomina_tutorial` (`ID_NTT`, `TITULO_NTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Dff', 'publico', 'video 1.webm', '7070');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `oam_articulo_d`
--

INSERT INTO `oam_articulo_d` (`ID_OAMD`, `ID_TITULO_OAMT`, `DESCRIPCION_OAMD`, `UCEDULA`) VALUES
(1, 6, '<p style="text-align:justify"><span style="font-size:14px"><strong>OAM: </strong>Es un protocolo de uso a nivel mundial en las redes de telecomunicaciones, OAM sus siglas hace referencia a la operaci&oacute;n, administraci&oacute;n y mantenimiento de redes con &uacute;ltima milla ethernet y servicios extremo a extremo que entregan los datos en interfaz ethernet al cliente.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px"><strong>VENTAJAS:</strong></span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">la ventaja principal del uso de OAM en redes ethernet es la facilidad que este provee para detectar fallas en la red de manera m&aacute;s r&aacute;pida, medir desempe&ntilde;o de la red, realizar pruebas de loopback y de conectividad a nivel de capa 2, y entre todas las funcionalidades de OAM la que m&aacute;s llama la atenci&oacute;n de los proveedores de servicios se trata de la detecci&oacute;n de fallas el&eacute;ctricas en el equipo remoto.</span></p>\n', '2020'),
(2, 7, '<p style="text-align:justify"><span style="font-size:14px">Hoy en d&iacute;a la tecnolog&iacute;a m&aacute;s utilizada en las redes de acceso por los proveedores de servicio es Ethernet, dado que esta tecnolog&iacute;a provee mayor econom&iacute;a al momento del despliegue de redes y crecimiento, el tiempo de comisionamiento es menor, los equipos a utilizar son m&aacute;s econ&oacute;micos, y se puede transportar sobre otras tecnolog&iacute;as como SDH-NG.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Las facilidades hacia el usuario son servicios de capa 2 en las cuales se puede interconectar varias sedes del cliente final simulando un switch virtual como si todo fuera una sola red.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Para hacer confiable el transporte de datos sobre redes ethernet se aplican tecnolog&iacute;as como MPLS o Carrier Ethernet, y se aplican protocolos de OAM que junto a pol&iacute;ticas de calidad de servicio hace &oacute;ptimo la transmisi&oacute;n de datos de diferentes aplicaciones como VoIP, Video, Triple Play. Los protocolos de OAM proporcionan a los proveedores mecanismos de diagn&oacute;stico, gesti&oacute;n y medici&oacute;n de performance, para manejar de manera remota los recursos de red.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px"><strong>Ventajas</strong></span></p>\n\n<ul>\n	<li style="text-align: justify;"><span style="font-size:14px">Se minoriza la frecuencia de env&iacute;o de personal t&eacute;cnico al sitio remoto para revisi&oacute;n de fallas.</span></li>\n	<li style="text-align: justify;"><span style="font-size:14px">Se monitorea la red y los servicios que se encuentran en &eacute;sta, provee una visi&oacute;n end to end de los servicios aprovisonados sobre esta.</span></li>\n	<li style="text-align: justify;"><span style="font-size:14px">Se provee aislamiento de fallas r&aacute;pidamente en la red y en el servicio.</span></li>\n</ul>\n', '2020'),
(3, 8, '<p>s11111</p>\n', '2020');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `oam_articulo_t`
--

INSERT INTO `oam_articulo_t` (`ID_OAMT`, `TITULO_OAMT`, `TIPO`, `UCEDULA`) VALUES
(6, 'OPERACIÃ“N, ADMINISTRACIÃ“N Y MANTENIMIENTO', 'publico', '2020'),
(7, 'ETHERNET y OAM', 'privado', '2020'),
(8, 'S', 'privado', '222');

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
(1, 'alos', 'privado', '../manual/Manual Laravel 5.4.docx', '2020'),
(2, 'As', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '2020');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oam_tutorial`
--

INSERT INTO `oam_tutorial` (`ID_OAMTT`, `TITULO_OAMTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'titulo', 'publico', 'Screencast_03-09-17_18_54_53.webm.webm', '2020');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `oficina_organizacion_articulo_d`
--

INSERT INTO `oficina_organizacion_articulo_d` (`ID_OAD`, `ID_TITULO_OAT`, `DESCRIPCION_OAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><span style="font-size:14px">Una organizaci&oacute;n, es un grupo social compuesto por personas naturales, tareas y administraciones que forman una estructura sistem&aacute;tica de relaciones de interacci&oacute;n, tendientes a producir bienes, servicios o normativas para satisfacer las necesidades de una comunidad dentro de un entorno, y as&iacute; poder lograr el prop&oacute;sito distintivo que es su misi&oacute;n. Es un sistema de actividades conscientemente coordinadas formado por dos o m&aacute;s personas; la cooperaci&oacute;n entre ellas es esencial para la existencia de la organizaci&oacute;n. Una organizaci&oacute;n s&oacute;lo existe cuando hay personas capaces de comunicarse y que est&aacute;n dispuestas a actuar conjuntamente para lograr un objetivo com&uacute;n. Es un conjunto de cargos con reglas y normas de comportamiento que han de respetar todos sus miembros, y as&iacute; generar el medio que permite la acci&oacute;n de una empresa. La organizaci&oacute;n es el acto de disponer y coordinar los recursos disponibles (materiales, humanos y financieros). Funciona mediante normas y bases de datos que han sido dispuestas para estos prop&oacute;sitos.</span></p>\n\n<p style="text-align:center">&nbsp;</p>\n\n<p style="text-align:justify"><span style="font-size:14px">La forma en que se organizan las empresas es estudiada por una<strong> </strong>ciencia administrativa denominada administraci&oacute;n de empresas, que estudia la forma en qu&eacute; se gestionan los recursos y procesos. Esta<strong> </strong>administraci&oacute;n es considerada como la base del funcionamiento de una empresa.</span></p>\n\n<p style="text-align:center">&nbsp;</p>\n\n<p style="text-align:justify">&nbsp;</p>\n', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oficina_organizacion_articulo_t`
--

INSERT INTO `oficina_organizacion_articulo_t` (`ID_OAT`, `TITULO_OAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'OrganizaciÃ³n', 'publico', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `oficina_organizacion_tutorial`
--

INSERT INTO `oficina_organizacion_tutorial` (`ID_OTT`, `TITULO_OTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'Asddd', 'publico', 'video 1.webm', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oficina_planificacion_manual`
--

INSERT INTO `oficina_planificacion_manual` (`ID_OPM`, `TITULO_OPM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Sss', 'publico', '../manual/Manual de Usuario 2,86.pdf', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oficina_planificacion_tutorial`
--

INSERT INTO `oficina_planificacion_tutorial` (`ID_OPTT`, `TITULO_OPTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Sdfs', 'publico', 'video 2.webm', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `oficina_presupuesto_articulo_d`
--

INSERT INTO `oficina_presupuesto_articulo_d` (`ID_OPAD`, `ID_TITULO_OPAT`, `DESCRIPCION_OPAD`, `UCEDULA`) VALUES
(1, 1, '<p>&nbsp;</p>\n\n<p>Es un conjunto de gastos y entradas que una persona, entidad o gobierno puede preveer para un per&iacute;odo determinado en lo que respecta a sus finanzas, los usos y los objetivos que se le dar&aacute;n a cada partida o gasto as&iacute; como tambi&eacute;n los usos y previsiones a largo plazo de los fondos disponibles.</p>\n\n<p>El presupuesto es justamente pre-suponer en materia de finanzas y&nbsp; econom&iacute;a cu&aacute;les ser&aacute;n las actividades o movimientos a realizar en un per&iacute;odo futuro que se calcula demanera aproximada.</p>\n\n<p>&nbsp;</p>\n\n<p>La importancia del presupuesto siempre radica en realizar una proyecci&oacute;n seria y fundada sobre los movimientos econ&oacute;micos, monetarios y financieros que caracterizar&aacute;n al sujeto que lo realiza. As&iacute;, sin el presupuesto se puede f&aacute;cilmente entrar en caos al generarse m&aacute;s gastos de lo necesario o incluso al no controlar las ganancias o entradas de capital que se realicen.</p>\n\n<p>a importancia del presupuesto siempre radica en realizar una proyecci&oacute;n seria y fundada sobre los movimientos econ&oacute;micos, monetarios y financieros que caracterizar&aacute;n al sujeto que lo realiza. As&iacute;, sin el presupuesto se puede f&aacute;cilmente entrar en caos al generarse m&aacute;s gastos de lo necesario o incluso al no controlar las ganancias o entradas de capital que se realicen.<br />\n&nbsp;</p>\n\n<div style="left:-99999px; position:absolute">econom&iacute;a cu&aacute;les ser&aacute;n las actividades o movimientos a realizar en un per&iacute;odo futuro que se calcula de<br />\n<br />\n... de Importancia: https://www.importancia.org/presupuesto.php</div>\n\n<div style="left:-99999px; position:absolute">econom&iacute;a cu&aacute;les ser&aacute;n las actividades o movimientos a realizar en un per&iacute;odo futuro que se calcula de<br />\n<br />\n... de Importancia: https://www.importancia.org/presupuesto.php</div>\n', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `oficina_presupuesto_articulo_t`
--

INSERT INTO `oficina_presupuesto_articulo_t` (`ID_OPAT`, `TITULO_OPAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Presupuesto', 'publico', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oficina_presupuesto_manual`
--

INSERT INTO `oficina_presupuesto_manual` (`ID_OPM`, `TITULO_OPM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Sf', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `oficina_presupuesto_tutorial`
--

INSERT INTO `oficina_presupuesto_tutorial` (`ID_OPTT`, `TITULO_OPTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'As', 'publico', 'video 1.webm', '5050');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `procesos_administrativo_articulo_t`
--

INSERT INTO `procesos_administrativo_articulo_t` (`ID_PAAT`, `TITULO_PAAT`, `TIPO`, `UCEDULA`) VALUES
(3, 'AdministraciÃ³n', 'privado', '4040');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `procesos_administrativo_manual`
--

INSERT INTO `procesos_administrativo_manual` (`ID_PAM`, `TITULO_PAM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(2, 'Ssx', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '4040');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `procesos_administrativo_tutorial`
--

INSERT INTO `procesos_administrativo_tutorial` (`ID_PATT`, `TITULO_PATT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Sad2', 'privado', 'video 1.webm', '4040');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `pronunciamiento_articulo_t`
--

INSERT INTO `pronunciamiento_articulo_t` (`ID_PAT`, `TITULO_PAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Pronunciamientos', 'privado', '6060'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `pronunciamiento_manual`
--

INSERT INTO `pronunciamiento_manual` (`ID_PM`, `TITULO_PM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Aaxd', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '6060');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `pronunciamiento_tutorial`
--

INSERT INTO `pronunciamiento_tutorial` (`ID_PTT`, `TITULO_PTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Ssdd', 'privado', 'video 1.webm', '6060');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `seguridad_logica_articulo_d`
--

INSERT INTO `seguridad_logica_articulo_d` (`ID_SLD`, `ID_TITULO_SLT`, `DESCRIPCION_SLD`, `UCEDULA`) VALUES
(14, 13, '<p style="text-align:justify"><span style="background-color:#ffffff; font-family:sans-serif; font-size:14px">Se refiere a la seguridad en el uso de&nbsp;</span><a href="https://es.wikipedia.org/wiki/Software" style="text-decoration: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" title="Software"><span style="color:#000000">software</span></a><span style="background-color:#ffffff; font-family:sans-serif; font-size:14px">&nbsp;y los sistemas, la protecci&oacute;n de los datos, procesos y programas, as&iacute; como la del acceso ordenado y autorizado de los usuarios a la&nbsp;</span><strong><a href="https://es.wikipedia.org/wiki/Informaci%C3%B3n" style="text-decoration: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" title="InformaciÃ³n"><span style="color:#000000">informaci&oacute;n</span></a></strong><span style="background-color:#ffffff; font-family:sans-serif; font-size:14px"><strong><span style="color:#000000">.</span></strong> La &ldquo;seguridad l&oacute;gica&rdquo; involucra todas aquellas medidas establecidas por la administraci&oacute;n -usuarios y administradores de recursos de tecnolog&iacute;a de informaci&oacute;n- para minimizar los riesgos de seguridad asociados con sus operaciones cotidianas llevadas a cabo utilizando la tecnolog&iacute;a de informaci&oacute;n.</span></p>\n', '2020'),
(15, 14, '<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px">Los principales objetivos que persigue la seguridad l&oacute;gica son:</span></p>\n\n<ul style="list-style-type:disc; margin-left:1.6em; margin-right:0px">\n	<li style="text-align: justify;"><span style="font-size:14px">Restringir el acceso a los programas y archivos</span></li>\n	<li style="text-align: justify;"><span style="font-size:14px">Asegurar que se est&eacute;n utilizando los datos, archivos y programas correctos en y por el procedimiento correcto.</span></li>\n</ul>\n', '2020');

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
(13, 'Seguridad lÃ³gica', 'privado', '2020'),
(14, 'Objetivos ', 'publico', '2020');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `seguridad_logica_manual`
--

INSERT INTO `seguridad_logica_manual` (`ID_SLM`, `TITULO_SLM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(3, 'manual', 'privado', '../manual/Manual Laravel 5.4.docx', '2020'),
(4, 'Archivo pdf', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '2020'),
(5, 'Manual en Odt', 'publico', '../manual/Vision GEV.odt', '22');

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
(4, 'Tutorial', 'publico', 'video 2.webm', '2020');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `soporte_tecnico_articulo_d`
--

INSERT INTO `soporte_tecnico_articulo_d` (`ID_STAD`, `ID_TITULO_STAT`, `DESCRIPCION_STAD`, `UCEDULA`) VALUES
(1, 1, '<p style="text-align:justify"><img alt="Resultado de imagen para Imagenes de soporte tecnico" src="https://i2.wp.com/www.siideingenieria.com/wp-content/uploads/2017/04/soporte-tecnico-de-equipo-de-computo.jpg?fit=541%2C304&amp;ssl=1" style="height:169px; width:350px" /></p>\n\n<p style="text-align:justify"><span style="font-size:14px">El soporte t&eacute;cnico es un rango de servicios por medio del cual se proporciona asistencia a los usuarios al tener alg&uacute;n problema al utilizar un producto o servicio, ya sea este el hardware o software de una computadora de un servidor de Internet, perif&eacute;ricos, art&iacute;culos electr&oacute;nicos, maquinaria, o cualquier otro equipo o dispositivo. El soporte t&eacute;cnico se puede dar por distintos medios, incluyendo el correo electr&oacute;nico, chat, software de aplicaci&oacute;n, faxes y t&eacute;cnicos, aunque el m&aacute;s com&uacute;n es el telef&oacute;nico. En los &uacute;ltimos a&ntilde;os hay una tendencia a la prestaci&oacute;n de soporte t&eacute;cnico remoto, donde un t&eacute;cnico se conecta al ordenador mediante una aplicaci&oacute;n de conexi&oacute;n remota que cuenta con la capacidad </span> <span style="font-size:14px">de almacenar muchos trabajos de memoria.</span></p>\n\n<p style="text-align:right"><img alt="Resultado de imagen para Imagenes de soporte tecnico" src="https://jatconsulting.pe/wp-content/uploads/2017/03/Soporte-Tecnico-Informatico-Infografia-4.png" style="height:374px; width:350px" /></p>\n', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `soporte_tecnico_articulo_t`
--

INSERT INTO `soporte_tecnico_articulo_t` (`ID_STAT`, `TITULO_STAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'Soporte TÃ©cnico', 'privado', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `soporte_tecnico_manual`
--

INSERT INTO `soporte_tecnico_manual` (`ID_STM`, `TITULO_STM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'nss', 'publico', '../manual/Manual Laravel 5.4.docx', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `soporte_tecnico_tutorial`
--

INSERT INTO `soporte_tecnico_tutorial` (`ID_STTT`, `TITULO_STTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(3, 'Ssss', 'privado', 'video 1.webm', '8080');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_dispositivo_almacenamiento_articulo_t`
--

INSERT INTO `uaf_dispositivo_almacenamiento_articulo_t` (`ID_DAAT`, `TITULO_DAAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en Dispositivos de Almacenamiento', 'privado', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `uaf_dispositivo_almacenamiento_manual`
--

INSERT INTO `uaf_dispositivo_almacenamiento_manual` (`ID_DAM`, `TITULO_DAM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Ccs2', 'publico', '../manual/Wiki_Gestion de Incidentes.pdf', '3030'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_dispositivo_almacenamiento_tutorial`
--

INSERT INTO `uaf_dispositivo_almacenamiento_tutorial` (`ID_DATT`, `TITULO_DATT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Dddd', 'publico', 'video 1.webm', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_electronica_articulo_t`
--

INSERT INTO `uaf_electronica_articulo_t` (`ID_EAT`, `TITULO_EAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en ElectrÃ³nica', 'publico', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `uaf_electronica_manual`
--

INSERT INTO `uaf_electronica_manual` (`ID_EM`, `TITULO_EM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Asdd', 'privado', '../manual/Manual Laravel 5.4.docx', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `uaf_electronica_tutorial`
--

INSERT INTO `uaf_electronica_tutorial` (`ID_ETT`, `TITULO_ETT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Asdasdd', 'privado', 'video 1.webm', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_equipos_moviles_articulo_d`
--

INSERT INTO `uaf_equipos_moviles_articulo_d` (`ID_EMAD`, `ID_TITULO_EMAT`, `DESCRIPCION_EMAD`, `UCEDULA`) VALUES
(1, 1, '<div class="avia_textblock">\n<p style="text-align:justify"><span style="font-size:14px">Con la aparici&oacute;n de los equipos m&oacute;viles (Tel&eacute;fonos celulares, Tablet, etc) la comunicaci&oacute;n a trav&eacute;s de ese medio se hace m&aacute;s directa e intima, ya que le permite a los usuarios comunicarse desde cualquier&nbsp; ugar en que se encuentren.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Los equipos m&oacute;viles est&aacute;n presentes en todos los lugares, de forma que se ha generalizado de manera silenciosa y se ha deslizado hasta los lugares m&aacute;s intr&iacute;nsecos de las actividades individuales.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Durante la realizaci&oacute;n de actividades inapropiadas o il&iacute;citas, es habitual que se generen registros de estas actividades en los equipos m&oacute;viles siempre y cuando estos son usados como medio del hecho, por lo tanto una revisi&oacute;n integral y/o exhaustiva de este tipo de equipos es fundamental para identificar y recuperar cualquier informaci&oacute;n a los sucesos investigados.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">Para realizar un an&aacute;lisis forense de dispositivos m&oacute;viles, es imprescindible contar con el equipamiento necesario, no solo para investigar, sino tambi&eacute;n para proteger la integridad de los dispositivos m&oacute;viles a analizar, de forma que sigan siendo v&aacute;lidos como prueba judicial.</span></p>\n\n<p style="text-align:justify"><span style="font-size:14px">En la Unidad de An&aacute;lisis Forense en Equipos M&oacute;viles del Centro Nacional de Inform&aacute;tica Forense (CENIF), dispone de las herramientas con la tecnolog&iacute;a m&aacute;s avanzada en el campo de An&aacute;lisis Forense de Dispositivos M&oacute;viles; equipos dise&ntilde;ados exclusivamente para la extracci&oacute;n tanto l&oacute;gico como f&iacute;sico de datos de los equipos a investigar y software especializados en el an&aacute;lisis de la informaci&oacute;n recolectada.</span></p>\n\n<p style="text-align:center">&nbsp;&nbsp; &nbsp;&nbsp; <img alt="" class="avia_image" src="http://www.suscerte.gob.ve/wp-content/uploads/2017/02/2.png" style="height:459px; width:357px" title="2" /></p>\n</div>\n', '3030'),
(2, 2, '<p>d</p>\n', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_equipos_moviles_articulo_t`
--

INSERT INTO `uaf_equipos_moviles_articulo_t` (`ID_EMAT`, `TITULO_EMAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en Dispositivos MÃ³viles', 'privado', '3030'),
(2, 'D', 'publico', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `uaf_equipos_moviles_manual`
--

INSERT INTO `uaf_equipos_moviles_manual` (`ID_EMM`, `TITULO_EMM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(4, 'Aaab', 'privado', '../manual/Wiki_Gestion de Incidentes.pdf', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `uaf_equipos_moviles_tutorial`
--

INSERT INTO `uaf_equipos_moviles_tutorial` (`ID_EMTT`, `TITULO_EMTT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(5, 'Video Titulo', 'privado', 'video 2.webm', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_fuentes_abiertas_articulo_t`
--

INSERT INTO `uaf_fuentes_abiertas_articulo_t` (`ID_FAAT`, `TITULO_FAAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en RecolecciÃ³n de Inteligencias de Fuentes Abiertas', 'privado', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_fuentes_abiertas_manual`
--

INSERT INTO `uaf_fuentes_abiertas_manual` (`ID_FAM`, `TITULO_FAM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Manual', 'privado', '../manual/Manual de Usuario 2,86.pdf', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_fuentes_abiertas_tutorial`
--

INSERT INTO `uaf_fuentes_abiertas_tutorial` (`ID_FATT`, `TITULO_FATT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(1, 'Video', 'privado', 'video 1.webm', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_imagen_video_audio_articulo_t`
--

INSERT INTO `uaf_imagen_video_audio_articulo_t` (`ID_IVAAT`, `TITULO_IVAAT`, `TIPO`, `UCEDULA`) VALUES
(1, 'AnÃ¡lisis Forense en ImÃ¡genes, Audio y Video', 'publico', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `uaf_imagen_video_audio_manual`
--

INSERT INTO `uaf_imagen_video_audio_manual` (`ID_IVAM`, `TITULO_IVAM`, `TIPO`, `DOCUMENTO`, `UCEDULA`) VALUES
(1, 'Xs', 'publico', '../manual/Manual de Usuario 2,86.pdf', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `uaf_imagen_video_audio_tutorial`
--

INSERT INTO `uaf_imagen_video_audio_tutorial` (`ID_IVATT`, `TITULO_IVATT`, `TIPO`, `VIDEO`, `UCEDULA`) VALUES
(2, 'alo', 'publico', 'video 1.webm', '3030');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=337 ;

--
-- Volcado de datos para la tabla `usuarios_wiki`
--

INSERT INTO `usuarios_wiki` (`ID_USUARIO`, `NOMBRES`, `APELLIDOS`, `CEDULA`, `CLAVE`, `ROL`, `EMAIL`, `UCEDULA`) VALUES
(165, 'Naimar', 'Obando', 18932954, '18932954', 'Manager Area Tecnica', 'nobando@suscerte.gob.ve', 1),
(167, 'JORGE DANIEL', 'HERRERA RANGEL', 16600807, '16600806', 'Manager Vencert', 'jherrera@suscerte.gob.ve', 20490050),
(168, 'JORGE DANIEL', 'HERRERA RANGEL', 16600806, '16600806', 'Manager Cenif', 'jherrera@suscerte.gob.ve', 20490050),
(169, 'YENKARI YANAIS ', 'CHAVEZ MONZON', 18039939, '18039939', 'Manager Administracion', 'ychavez@suscerte.gob.ve', 20490050),
(170, 'GILLIAM ELIZABETH ', 'MANAURE LOBO', 13542630, '13542630', 'Manager P O P', 'gmanaure@suscerte.gob.ve', 20490050),
(171, 'MARIA GABRIELA', 'MONTILVA BENSAYA', 6979578, '6979578', 'Manager Asesoria Legal', 'mmontilva@suscerte.gob.ve', 20490050),
(172, 'JESSIKA DEL CARMEN', ' QUIJANO GRANADOS', 14974239, '14974239', 'Manager Recursos Humanos', 'jquijano@suscerte.gob.ve', 20490050),
(275, 'Ale', 'Ramirez', 2020, '2020', 'Manager Vencert', 'ale@suscerte.gob.ve', 1),
(276, 'Ale', 'Ramirez', 3030, '3030', 'Manager Cenif', 'ale@suscerte.gob.ve', 20490050),
(278, 'Ale', 'Ramirez', 5050, '5050', 'Manager P O P', 'ale@suscerte.gob.ve', 20490050),
(279, 'Ale', 'Ramirez', 4040, '4040', 'Manager Administracion', 'ale@suscerte.gob.ve', 20490050),
(280, 'Ale', 'Ramirez', 6060, '6060', 'Manager Asesoria Legal', 'Ale@suscerte.gob.ve', 20490050),
(281, 'Ale', 'Ramirez', 7070, '7070', 'Manager Recursos Humanos', 'Ale@suscerte.gob.ve', 20490050),
(282, 'Ale', 'Ramirez', 8080, '8080', 'Manager Area Tecnica', 'Ale@suscerte.gob.ve', 20490050),
(300, 'H', 'Hs', 3, '3', 'Usuario Fuentes Abiertas', 'as@suscerte.gob.ve', 3030),
(302, 'Aa', 'Aa', 4, '4', 'Usuario Administracion', 'as@suscerte.gob.ve', 4040),
(304, 'Tsa', 'T', 5, '5', 'Usuario Organizacion', 'asj@suscerte.gob.ve', 5050),
(306, 'Ase', 'Lega', 6, '6', 'Usuario Dictamenes', 'as@suscerte.gob.ve', 6060),
(308, 'A', 'A', 7, '7', 'Usuario HCM', 'asddd@suscerte.gob.ve', 1),
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
(330, 'Leonardo', 'Guia', 22, '22', 'Usuario Seguridad Logica', 'asas@suscerte.gob.ve', 2020),
(334, 'Francisco', 'Ramirez', 1, '1', 'Administrador Principal', 'jramirez@suscerte.gob.ve', 11);

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
