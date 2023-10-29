-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2023 a las 02:23:10
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rubber_ahiru`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_menu`
--

CREATE TABLE `caja_menu` (
  `id` int(11) NOT NULL COMMENT 'identificador de la caja de menú',
  `lote` date NOT NULL COMMENT 'fecha de elaboración',
  `exp` date NOT NULL COMMENT 'fecha de expiración o vencimiento',
  `id_pedido` int(11) NOT NULL COMMENT 'identificador el pedido'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nroCliente` int(11) NOT NULL COMMENT 'número identificador y único de cada cliente',
  `email` varchar(50) NOT NULL COMMENT 'correo electrónico',
  `contrasenia` varchar(20) NOT NULL COMMENT 'Contraseña personal de cada cliente que va a ingresar a la pagina',
  `dir_calle` varchar(30) NOT NULL COMMENT 'calle en donde vive el cliente',
  `dir_num` int(11) NOT NULL COMMENT 'número de puerta de la dirección del cliente',
  `dir_barrio` varchar(20) NOT NULL COMMENT 'barrio de su dirección personal'
);

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`) VALUES
(1, 'aallisonfloo@gmail.com', '012345678', 'piedras', 224, 'Ciudad Vieja'),
(2, 'guarino.marcos93@gmail.com', '1234', 'jardines del prado', 1234, 'Sayago'),
(3, 'babarboza98@gmail.com', '1234', 'montecarlo', 3583, 'Jardines del Hipodro'),
(4, 'guarino_diego@yahoo.com', '1234', 'jardines del prado', 1234, 'Sayago'),
(5, 'valeria_zeballos@gmail.com', '1234', 'av Uruguay', 1030, 'Centro'),
(6, 'fabian_acosta@gmail.com', '1234', 'av Uruguay', 1030, 'Centro'),
(7, 'perez42@gmail.com', '1234', 'durazno', 1532, 'Barrio sur'),
(8, 'ferdelarua@gmail.com', '1234', 'canelones', 1774, 'Palermo'),
(9, 'caro321@gmail.com', '', 'Atahona', 2056, 'Aires puros'),
(10, 'lauri24@gmail.com', '1234', 'durazno', 1532, 'Palermo'),
(11, 'migue_98@gmail.com', '1234', 'carlos roxlo', 1532, 'Cordón'),
(12, 'juli321@gmail.com', '1234', 'ferrer serra', 1032, 'Tres Cruces'),
(13, 'nico02@gmail.com', '1234', 'rincon', 519, 'Ciudad vieja'),
(14, 'leo95@gmail.com', '1234', 'sarandi', 2026, 'Aduana'),
(15, 'tati-acosta@gmail.com', '1234', 'soria', 1332, 'Sayago'),
(16, 'poli362@gmail.com', '1234', 'ejido', 1024, 'Palermo'),
(17, 'lor3na@gmail.com', '1234', 'bell', 1375, 'Sayago'),
(18, 'kari24@gmail.com', '1234', 'tristan narvaja', 1026, 'Cordón'),
(19, 'bruno1992@gmail.com', '1234', 'avenida lezica', 2045, 'Lezica'),
(20, 'gaston2432@gmail.com', '1234', 'henderso ', 3026, 'Peñarol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comun`
--

CREATE TABLE `comun` (
  `id` int(11) NOT NULL COMMENT 'identificador del menú común',
  `precT` int(11) NOT NULL COMMENT 'precio total',
  `stock_min` int(11) NOT NULL COMMENT 'stock mínimo o stock colchón',
  `stock_max` int(11) NOT NULL COMMENT 'stock máximo',
  `stock_real` int(11) NOT NULL COMMENT 'hace referencia al stock actual en disponible'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dieta`
--

CREATE TABLE `dieta` (
  `id` int(11) NOT NULL COMMENT 'identificador para cada dieta',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre de la dieta\r\n',
  `descrip` varchar(200) NOT NULL COMMENT 'descripción y/o composición de determinada dieta'
);

--
-- Volcado de datos para la tabla `dieta`
--

INSERT INTO `dieta` (`id`, `nombre`, `descrip`) VALUES
(1, 'clasica', 'Incluye alimentos vegetales y animales. Seguir este tipo de alimentación de manera equilibrada aporta todos los nutrientes necesarios y contribuye a la salud.'),
(2, 'vegetariana', 'Cuando las personas piensan en una dieta vegetariana, normalmente creen que no incluye carne de vaca, pollo o pescado. '),
(3, 'Mediterranea', 'De origen vegetal, consta de cereales integrales, verduras, legumbres, frutas, frutos secos, semillas, hierbas y especias.'),
(4, 'Sin Sal', 'Comidas sin sal para hipertensos, el tratamiento dietético.'),
(5, 'Veganas', 'Que no incluyen ningún alimento de origen animal'),
(6, 'Celiaca', 'comidas libres de gluten y gliadina'),
(7, 'Lactovegetariana', 'incluyen leche y sus derivados (sin huevo o miel)'),
(8, 'Ovovegetariana', 'incluyen huevo.'),
(9, 'Ovolactovegetariano', 'tambien llamada Lactoovovegetariana: incluye lácteos y huevo, pero no miel.'),
(10, 'Crudivegana', 'Alimentos crudos de origen vegetal (excluye todo alimento vegetal que para consumirse necesiten ser sometidos a cocción).'),
(11, 'pescetariana', 'Incluyendo en pequeñas porciones carne de pescado y camarones.'),
(12, 'apivegetariana', 'No consumen lácteos ni huevos pero sí miel'),
(13, 'flexivegetariana', 'Tambien conocido como semivegano es una dieta que puede incluir un poco de carne ocacionalmente.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `nroCliente` int(11) NOT NULL COMMENT 'identificador, número de cliente para la empresa',
  `rut` varchar(12) NOT NULL COMMENT 'numero único para cada empresa otorgado por DGI, de 12 digitos si no tiene 12 se le agregan ceros delante',
  `razon_social` varchar(50) NOT NULL COMMENT 'la razón social es el nombre oficial de la empresa, con el cual se la registra'
);

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`nroCliente`, `rut`, `razon_social`) VALUES
(1, '211888818888', 'Abitab'),
(2, '215005003111', 'Arcos Dorados'),
(3, '215005003952', 'Nunis'),
(4, '215005003952', 'Nunis'),
(6, '211000010000', 'REMAR'),
(8, '215005003888', 'Helacor'),
(9, '215005003222', 'BK Servicios de Comida Rapida'),
(10, '215008008888', 'Nike, Inc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envasa`
--

CREATE TABLE `envasa` (
  `id_caja` int(11) NOT NULL COMMENT 'identificación de la caja de menú',
  `id_vianda` int(11) NOT NULL COMMENT 'identificador de la vianda',
  `id_menu` int(11) NOT NULL COMMENT 'identificador del menú'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL COMMENT 'identificador del estado de un pedido',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del estado/proceso actuante'
);

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'Solicitado'),
(2, 'Confirmado'),
(3, 'Enviado'),
(4, 'Entregado'),
(5, 'Rechazado'),
(6, 'Devuelto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresa`
--

CREATE TABLE `ingresa` (
  `id_caja` int(11) NOT NULL COMMENT 'identificador de la caja de menú',
  `id_proceso` int(11) NOT NULL COMMENT 'identificador el proceso que esta actuando en este momento en la caja',
  `fecha_ini` datetime NOT NULL COMMENT 'fecha de inicio del proceso',
  `fecha_fin` datetime DEFAULT NULL COMMENT 'fecha de finalización del proceso'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integra`
--

CREATE TABLE `integra` (
  `id_menu` int(11) NOT NULL COMMENT 'identificador de la vianda',
  `id_vianda` int(11) NOT NULL COMMENT 'identificador del menú'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL COMMENT 'identificador del menú',
  `frecuencia` varchar(10) NOT NULL COMMENT 'nos dice si el menú será semanal, quincenal o mensual'
);

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `frecuencia`) VALUES
(1, 'semanal'),
(2, 'quincenal'),
(3, 'mensual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paga`
--

CREATE TABLE `paga` (
  `nroCliente` int(11) NOT NULL COMMENT 'número de pedido',
  `id_pedido` int(11) NOT NULL COMMENT 'número que identifica a un cliente',
  `fecha` date NOT NULL COMMENT 'fecha en la que se realiza el pedido',
  `hora` time NOT NULL COMMENT 'hora en la que se realiza el pedido'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasa`
--

CREATE TABLE `pasa` (
  `id_pedido` int(11) NOT NULL COMMENT 'número de pedido',
  `id_estado` int(11) NOT NULL COMMENT 'identificador del estado en el que se encuentra el pedido en determinado momento',
  `fecha_ini` datetime NOT NULL COMMENT 'fecha inicial del estado del pedido',
  `fecha_fin` datetime DEFAULT NULL COMMENT 'fecha final del estado'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL COMMENT 'identificador del pedido',
  `fecha` date NOT NULL COMMENT 'fecha de realizado',
  `hora` time NOT NULL COMMENT 'hora de realizado',
  `id_sucursal` int(11) NOT NULL COMMENT 'identificador de sucursal',
  `id_tarjeta` int(11) NOT NULL COMMENT 'identificador de la tarjeta'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `nroCliente` int(11) NOT NULL COMMENT 'identificador, número de cliente para la empresa',
  `nombre` varchar(20) NOT NULL COMMENT 'numero único para cada empresa otorgado por DGI',
  `apellido` varchar(20) NOT NULL COMMENT 'la razón social es el nombre oficial de la empresa, con el cual se la registra',
  `doc_tipo` varchar(10) NOT NULL,
  `doc_num` varchar(20) NOT NULL
);

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`nroCliente`, `nombre`, `apellido`, `doc_tipo`, `doc_num`) VALUES
(1, 'Allison', 'Flores', 'ci', '50083335'),
(2, 'Marcos', 'Guarino', 'CI', '48481987'),
(3, 'Agustin', 'Barboza', 'CI', '51721077'),
(4, 'Diego', 'Guarino', 'CI', '48482022'),
(5, 'Valeria', 'Zeballos', 'CI', '40940529'),
(6, 'Fabian', 'Acosta', 'CI', '42254708'),
(7, 'Juan', 'Perez', 'CI', '43654719'),
(8, 'Fernando', 'De la rua', 'CI', '30526841'),
(9, 'Carolina', 'Sosa', 'CI', '35451236'),
(10, 'Laura', 'Yanez', 'CI', '43712518'),
(11, 'Miguel', 'Ramirez', 'CI', '48362152'),
(12, 'Juliana', 'Sanchez', 'CI', '47621432'),
(13, 'Nicolas', 'Valdez', 'CI', '36547082'),
(14, 'Leonardo', 'Morales', 'CI', '37526437'),
(15, 'Tatiana', 'Flores', 'CI', '48473254'),
(16, 'Paul', 'Zarate', 'CI', '38612573'),
(17, 'Lorena', 'Marquez', 'CI', '52346153'),
(18, 'Karina', 'Gonzalez', 'CI', '50324168'),
(19, 'Bruno', 'Lopez', 'CI', '49624163'),
(20, 'Gaston', 'Alvarez', 'CI', '48426341');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalizado`
--

CREATE TABLE `personalizado` (
  `id` int(11) NOT NULL COMMENT 'identificador del menú personalizado',
  `recargo` int(11) NOT NULL COMMENT 'precio que se le agregara al pedido por ser personalizado (heredado de menú)',
  `precT` int(11) NOT NULL COMMENT 'precio total'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `id_dieta` int(11) NOT NULL COMMENT 'identificador de la dieta',
  `id_vianda` int(11) NOT NULL COMMENT 'identificación de la vianda'
);

--
-- Volcado de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`id_dieta`, `id_vianda`) VALUES
(1, 1),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(2, 1),
(2, 34),
(2, 36),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 80),
(2, 81),
(2, 83),
(2, 85),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(3, 88),
(4, 59),
(4, 60),
(4, 61),
(4, 62),
(4, 63),
(4, 64),
(4, 65),
(4, 66),
(4, 67),
(4, 68),
(4, 69),
(4, 70),
(4, 71),
(4, 72),
(4, 73),
(5, 36),
(5, 53),
(5, 81),
(5, 89),
(5, 90),
(5, 91),
(5, 92),
(5, 93),
(5, 94),
(5, 95),
(5, 96),
(5, 97),
(5, 98),
(5, 99),
(5, 100),
(6, 36),
(6, 37),
(6, 74),
(6, 75),
(6, 76),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 88),
(7, 1),
(7, 34),
(7, 36),
(7, 46),
(7, 48),
(7, 52),
(7, 53),
(7, 54),
(7, 81),
(7, 88),
(8, 1),
(8, 36),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(8, 57),
(8, 58),
(8, 81),
(8, 83),
(8, 85),
(8, 87),
(8, 88),
(9, 1),
(9, 36),
(9, 44),
(9, 45),
(9, 46),
(9, 47),
(9, 48),
(9, 49),
(9, 50),
(9, 51),
(9, 52),
(9, 53),
(9, 54),
(9, 55),
(9, 56),
(9, 57),
(9, 58),
(9, 81),
(9, 83),
(9, 85),
(9, 87),
(9, 88),
(10, 36),
(11, 1),
(11, 29),
(11, 30),
(11, 33),
(11, 36),
(11, 37),
(11, 81),
(11, 82),
(11, 84),
(12, 36),
(12, 81),
(13, 1),
(13, 29),
(13, 30),
(13, 35),
(13, 36),
(13, 38),
(13, 40),
(13, 41),
(13, 42),
(13, 47),
(13, 48),
(13, 49),
(13, 50),
(13, 51),
(13, 52),
(13, 53),
(13, 54),
(13, 55),
(13, 56),
(13, 57),
(13, 58),
(13, 74),
(13, 75),
(13, 77),
(13, 78),
(13, 81),
(13, 82),
(13, 83),
(13, 84),
(13, 85),
(13, 86),
(13, 87),
(13, 88),
(13, 89),
(13, 90),
(13, 91),
(13, 92),
(13, 93),
(13, 94),
(13, 95),
(13, 96),
(13, 97),
(13, 98),
(13, 99),
(13, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `id` int(11) NOT NULL COMMENT 'identificador del proceso o estado',
  `estado` varchar(20) NOT NULL COMMENT 'nombre del estado/proceso actuante'
);

--
-- Volcado de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`id`, `estado`) VALUES
(1, 'Solicitado'),
(2, 'En stock'),
(3, 'En produccioón'),
(4, 'Envasado'),
(5, 'Entregado'),
(6, 'Devuelto'),
(7, 'Desechado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realiza`
--

CREATE TABLE `realiza` (
  `nroCliente` int(11) NOT NULL COMMENT 'número que identifica a un cliente',
  `id_pedido` int(11) NOT NULL COMMENT 'número de pedido',
  `fecha` date NOT NULL COMMENT 'fecha en la que se realiza el pedido',
  `hora` time NOT NULL COMMENT 'hora de realización del pedido'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL COMMENT 'identificador de la sucursal',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del establecimiento o sucursal',
  `cant_cocinas` int(11) NOT NULL COMMENT 'cantidad de cocinas que posee determinada sucursal',
  `datos` varchar(100) NOT NULL COMMENT 'datos extras, estos pueden incluir la ubicación y el teléfono por posibles problemas.'
);

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id`, `nombre`, `cant_cocinas`, `datos`) VALUES
(1, 'Sisviansa', 4, 'Rio Negro 123, 29002122'),
(2, 'Sisviandas', 3, 'Paso Monlino 2730, 29002223'),
(3, 'Sistemas de Viandas', 10, 'Punta carretas 824, 29002324'),
(4, 'Viandas Saludables', 2, 'Av Uruguay 1030, 29002425');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `id` int(11) NOT NULL COMMENT 'identificador automático para agregar a cada nueva tarjeta',
  `titular` varchar(50) NOT NULL COMMENT 'nombre del titular de la tarjeta',
  `banco` varchar(20) NOT NULL COMMENT 'ej: oca, visa, master, etc.',
  `num` int(11) NOT NULL COMMENT 'número en la tarjeta',
  `codigo` int(4) NOT NULL COMMENT 'código de verificación de 3 dígitos',
  `exp` date NOT NULL COMMENT 'fecha de expiración/vencimiento de la tarjeta'
);

--
-- Volcado de datos para la tabla `tarjeta`
--

INSERT INTO `tarjeta` (`id`, `titular`, `banco`, `num`, `codigo`, `exp`) VALUES
(1, '4', 'Santander', 2147483647, 222, '2024-01-31'),
(2, '1', 'Itaud', 7554652, 111, '2025-08-08'),
(3, '1', 'OCA', 2147483647, 888, '2024-10-08'),
(4, '2', 'Scotiabank', 2147483647, 999, '2024-11-01'),
(5, '5', 'Cabal', 2147483647, 80, '2025-06-30'),
(6, '5', 'Pass Card', 786876876, 1, '2025-01-01'),
(7, '5', 'Universo Binario', 2147483647, 88, '2024-05-01'),
(8, '3', 'Brou', 2147483647, 121, '2024-10-01'),
(9, '3', 'Prex', 1706165652, 122, '2025-11-01'),
(10, '6', 'Pronto', 2147483647, 808, '2025-11-01'),
(11, '6', 'Si Si', 2147483647, 838, '2024-08-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `nroCliente` int(11) NOT NULL COMMENT 'número identificador  del cliente',
  `num_cliente` varchar(20) NOT NULL COMMENT 'número de teléfono del cliente'
);

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`nroCliente`, `num_cliente`) VALUES
(1, '095381606'),
(2, '097026760'),
(3, '091970775'),
(4, '094369246');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `user` varchar(20) NOT NULL COMMENT 'usuario o nombre personal del empleado',
  `password` varchar(15) NOT NULL COMMENT 'contraseña personal',
  `rol` varchar(20) NOT NULL COMMENT 'rol o rubro de personal por ingresar con determinados permisos'
);

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`user`, `password`, `rol`) VALUES
('allita', 'infor', 'informatico'),
('Ricardo', 'ger', 'gerente'),
('Allison', 'admi', 'administrativo'),
('Marcos', 'admi2', 'administrativo'),
('Diego', 'admi3', 'administrativo'),
('Agustin', 'admi4', 'administrativo'),
('Franco', 'cocina', 'cocinero'),
('Franchini', 'boss', 'jefe_cocina'),
('Carla', 'atp', 'atencion_al_publico'),
('Cliente', 'cliente', 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vianda`
--

CREATE TABLE `vianda` (
  `id` int(11) NOT NULL COMMENT 'identificador de la vianda',
  `nombre` varchar(30) NOT NULL COMMENT 'nombre de la comida que contiene esa vianda',
  `tiempo` int(11) NOT NULL COMMENT 'duración de la preparación de dicha vianda',
  `precio` int(11) NOT NULL COMMENT 'precio unitario',
  `imagen` varchar(100) NOT NULL COMMENT 'url para la visualización de la vianda',
  `contenido` varchar(200) NOT NULL COMMENT 'detalle del contenido o los ingredientes de la vianda'
);

--
-- Volcado de datos para la tabla `vianda`
--

INSERT INTO `vianda` (`id`, `nombre`, `tiempo`, `precio`, `imagen`, `contenido`) VALUES
(1, 'pasta italiana', 30, 150, '1.png', 'espaguetis con salsa tomate y morron rojo'),
(2, 'fideos con tuco', 35, 250, '2.png', 'fideos rulos con tuco de pollo grill'),
(4, 'comida completa', 40, 300, '4.png', 'arroz blanco, pan integral, tuco con carne, perejil, cebolla y lechuga'),
(5, 'arroz con camarones', 40, 250, '5.png', 'arroz con huevo frito revuelto, camarones, cemillas de chia'),
(6, 'spaguetti con salsa', 30, 250, '6.png', 'spaguetti con salsa de tomate y cubierto de una buena porcion de salsa blanca'),
(7, 'arroz pure con carne y guarnic', 40, 300, '.png', 'arroz blanco con semillas, pure de papa, tomates cherry lechuga, queso y carne hervida'),
(8, 'hambuguesa de pescado', 40, 350, '8.png', 'pan, milanesa de pescado, pure, lechuga, perejil, zapallito'),
(9, 'arroz primavera', 250, 35, '9.png', 'arroz blanco con verduras y queso'),
(11, 'taco verde', 35, 300, '11.png', 'tacos de espinaca, pepino, cebolla y pezcado'),
(12, 'tacos de huevo', 35, 250, '12.png', 'tacos de vegetales y huevo'),
(13, 'tacos de aroz de cebolla', 35, 250, '13.png', ' , aroz de cebolla, perejil, cebolla y morron'),
(14, 'tacos de zanahoria y cebolla', 30, 200, '14.png', 'taco, zanahorias, cebolla y queso'),
(15, 'tacos agridulces', 30, 250, '15.png', 'taco de verduras y miel'),
(16, 'tacos de pollo ', 35, 250, '16.png', 'taco, pechuga de pollo, verduras, queso y mayonesa'),
(17, 'tacos sin tacc', 35, 250, '17.png', 'taco trico cebada centeno, verduras y queso'),
(18, 'tacos de ', 35, 250, '18.png', 'taco, x, verduras y queso'),
(20, 'pideos al camaron', 40, 250, '20.png', 'fideos chinos con camarones, morron, perejil y chia'),
(21, 'ensalada agridulce', 45, 200, '21.png', 'ensalada de zanaorias, pollo hervido-empanado, tomates, morron, cemillas, durazno y zapallito'),
(22, 'el sol', 30, 150, '22.png', 'fideos gruesos con huevo en su punto y panceta'),
(23, 'ñoquis con nuez', 35, 200, '23.png', 'ñoquis con nueces, albahaca y queso'),
(24, 'sushi', 35, 300, '24.png', 'arroz, algas, verduras, atún'),
(25, 'ensalada de mariscos', 30, 200, '25.png', 'albahaca, camarones, mejillones, cesamo, cebolla y tomates cherry'),
(26, 'el trozon', 30, 150, '26.png', 'trozo de carne vacuna con hongos, brocoli y coliflor'),
(27, 'pez triangular', 25, 150, '27.png', 'nuggets de merluza'),
(28, 'pinchos de carne', 25, 150, '28.png', 'carne, queso,cebolla y tomate'),
(29, 'ensalada de brocoli', 30, 150, '29.jpg', 'brocoli,atun, manzana'),
(30, 'tarta de atun', 45, 180, '30.jpg', 'atún, ricota, huevo'),
(31, 'milanesa con fritas y ensalada', 25, 250, '31.jpg', 'milanesa de carne, papas fritas'),
(32, 'pizza con chorizo jamon y ques', 30, 220, '32.jpg', 'chorizo, jamón, queso'),
(33, 'Pescado con salsa de mango', 20, 150, '33.jpg', 'milanesa de pescado'),
(34, 'buñuelos de queso', 40, 200, '34.jpg', 'buñuelos'),
(35, 'salteado de pollo con brocoli', 30, 195, '35.jpg', 'pollo, brocoli'),
(36, 'patatas fritas francesa', 10, 150, '36.jpg', 'papas fritas'),
(37, 'milanesas de merluza', 25, 220, '37.jpg', 'merluza'),
(38, 'espagueti con tuco', 15, 160, '38.jpg', ''),
(39, 'magret depato con salsa', 45, 350, '39.jpg', 'pato asado uwu'),
(40, 'macarrones con tuco', 20, 165, '40.jpg', 'macarrones'),
(41, 'estofado d ecarney verduras', 45, 170, '41.jpg', 'estofado'),
(42, 'espaguetis con tuco', 25, 160, '42.jpg', 'espaguetis con tuco'),
(43, 'milanesas de carne con y ensal', 20, 250, '43.jpg', 'milanesas y ensalada'),
(44, 'tortilla de calabacin y ceboll', 30, 240, '44.jpg', 'tortilla'),
(45, 'pastel de verduras', 30, 230, '45.jpg', 'pastel de verduras'),
(46, 'Berejenas con tomate y queso a', 20, 160, '46.jpg', 'berenjenas'),
(47, 'coliflor rebozada crujiente', 25, 200, '47.jpg', 'coliflor frito'),
(48, 'hamburguesa de lentejas y arro', 25, 250, '48.jpg', 'hamburguesa veggie'),
(49, 'croquetas de acelga y choclo', 30, 200, '49.jpg', 'croquetas veggie'),
(50, 'fideos con verduras', 25, 150, '50.jpg', 'fideos con verduras'),
(51, 'faina de zapallitos', 30, 250, '51.jpg', 'fainá'),
(52, 'Canelones de zucchini rellenos', 20, 160, '52.jpg', 'canelones'),
(53, 'empanadas de berenjenas', 45, 230, '53.jpg', 'empanadas'),
(54, 'Sandwich vegetariano al grill', 20, 150, '54.jpg', 'sandwich'),
(55, 'zapallitos rellenos con choclo', 30, 189, '55.jpg', 'zapallitos'),
(56, 'milanesas de lentejas', 30, 175, '56.jpg', 'milanesas de lentejas'),
(57, 'tarta de verdura y ricota', 40, 240, '57.jpg', 'tarta'),
(58, 'pasta con vegetales al horno', 30, 65, '58.jpg', 'pasta con vegetales'),
(59, 'ensalada de pollo sin sal', 25, 220, '59.jpg', 'lechuga, tomate y pollo'),
(60, 'salmon a la plancha sin sal', 35, 250, '60.jpg', 'salmón y especias'),
(61, 'calabacines rellenos de carne ', 40, 280, '61.jpg', 'zapllitos con carne picada'),
(62, 'ensalada con tomate sin sal', 20, 150, '62.jpg', 'tomate, manzana, ciboulet'),
(63, 'garbanzos con tomatitos y atun', 25, 200, '63.jpg', 'garbanzos, cherry, atún'),
(64, 'arroz de verduras sin sal', 25, 175, '64.jpg', 'arroz, verduras'),
(65, 'hamburguesas veganas de garban', 20, 200, '65.jpg', 'hamburguesas veganas'),
(66, 'ensalada de lentejas sin sal', 25, 150, '66.jpg', 'ensalada'),
(67, 'pollo a la mostaza light sin s', 45, 320, '67.jpg', 'pollo al horno'),
(68, 'ensalada tomate queso sin sal', 25, 180, '68.jpg', 'tomates. queso'),
(69, 'rollitos de merluza rellenos d', 35, 290, '69.jpg', 'merluza'),
(70, 'pollo a la portuguesa sin sal', 50, 250, '70.jpg', 'pollo a la portuguesa'),
(71, 'calamar con alcachofas sin sal', 30, 300, '71.jpg', 'calamar, fideos'),
(72, 'ensalada de garbanzos con poll', 25, 180, '72.jpg', 'pollo, garbanzos'),
(73, 'ensalada cesar con pollo sin s', 20, 160, '73.jpg', 'ensalada con pollo'),
(74, 'espaguetis sin gluten', 20, 160, '74.jpg', 'espaguetis'),
(75, 'lasagna isn gluten', 35, 300, '75.jpg', 'lasagna'),
(76, 'lomode cordero con miel sin ta', 50, 350, '76.jpg', 'bifes de cordero'),
(77, 'galette bretonne sin tacc', 15, 150, '77.jpg', 'crepé con huevo'),
(78, 'revuelto de huevos con champin', 20, 220, '78.jpg', 'champiñones, queso, jamón'),
(79, 'salmón al horno con papas y ve', 35, 330, '79.jpg', 'salmón,verduras'),
(80, 'Tarta de papa y puerros', 45, 250, '80.jpg', 'tarta de verduras'),
(81, 'papas fritas en freidora', 15, 160, '81.jpg', ''),
(82, 'berenjenas rellenas de atun al', 30, 210, '82.jpg', 'berenjenas rellenas'),
(83, 'ravioles sin tacc', 25, 210, '83.jpg', 'ravioles'),
(84, 'pastel de atun, champinones y ', 30, 300, '84.jpg', 'atún'),
(85, 'buñuelos de espinaca sin tacc', 35, 200, '85.jpg', 'buñuelos'),
(86, 'espaguetis Carbonara sin glute', 20, 190, '86.jpg', 'espaguetis'),
(87, 'sandwich Omelete de Papa Sin T', 20, 175, '87.jpg', 'sandwich sin tacc'),
(88, 'pizza para celíacos sin gluten', 40, 320, '88.jpg', 'pizza sin gluten'),
(89, 'hamburguesas veganas de garban', 30, 240, '89.jpg', 'hamburguesas veganas'),
(90, 'ensalada de lentejas arcoiris', 25, 170, '90.jpg', 'ensalada arcoiris'),
(91, 'lentejas con verduras', 25, 150, '91.jpg', 'ensalada con lentejas'),
(92, 'ramen vegano', 20, 160, '92.jpg', 'ramen vegano'),
(93, 'hamburguesa de berenjena', 20, 2000, '93.jpg', 'berenjena'),
(94, 'albondigas de lentejas con sal', 30, 215, '94.jpg', 'lentejas, miso, avena'),
(95, 'fideos con verduras vegano', 25, 180, '95.jpg', 'fideos, verduras'),
(96, 'Cheesecake vegano', 35, 230, '96.jpg', 'cheesecake vegano'),
(97, 'tortilla de papas vegana', 25, 200, '97.jpg', 'papas,huevo, aceite, oregano'),
(98, 'guiso delentejas con verduras ', 35, 180, '98.jpg', 'guiso de lentejas'),
(99, 'albondigas veganas de lentejas', 35, 210, '99.jpg', 'albondigas veganas de lentejas'),
(100, 'ensalada mediterranea', 30, 170, '100.jpg', 'ensalada mediterranea');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja_menu`
--
ALTER TABLE `caja_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK12` (`id_pedido`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`nroCliente`);

--
-- Indices de la tabla `comun`
--
ALTER TABLE `comun`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dieta`
--
ALTER TABLE `dieta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`nroCliente`);

--
-- Indices de la tabla `envasa`
--
ALTER TABLE `envasa`
  ADD PRIMARY KEY (`id_caja`,`id_vianda`,`id_menu`),
  ADD KEY `FK15` (`id_vianda`),
  ADD KEY `FK16` (`id_menu`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingresa`
--
ALTER TABLE `ingresa`
  ADD PRIMARY KEY (`id_caja`,`id_proceso`),
  ADD KEY `FK24` (`id_proceso`);

--
-- Indices de la tabla `integra`
--
ALTER TABLE `integra`
  ADD PRIMARY KEY (`id_menu`,`id_vianda`),
  ADD KEY `FK11` (`id_vianda`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paga`
--
ALTER TABLE `paga`
  ADD PRIMARY KEY (`nroCliente`,`id_pedido`),
  ADD KEY `FK20` (`id_pedido`);

--
-- Indices de la tabla `pasa`
--
ALTER TABLE `pasa`
  ADD PRIMARY KEY (`id_pedido`,`id_estado`),
  ADD KEY `FK22` (`id_estado`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9` (`id_sucursal`),
  ADD KEY `FK8` (`id_tarjeta`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`nroCliente`);

--
-- Indices de la tabla `personalizado`
--
ALTER TABLE `personalizado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD PRIMARY KEY (`id_dieta`,`id_vianda`),
  ADD KEY `FK7` (`id_vianda`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `realiza`
--
ALTER TABLE `realiza`
  ADD PRIMARY KEY (`nroCliente`,`id_pedido`),
  ADD KEY `FK18` (`id_pedido`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`nroCliente`,`num_cliente`);

--
-- Indices de la tabla `vianda`
--
ALTER TABLE `vianda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja_menu`
--
ALTER TABLE `caja_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la caja de menú';

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `nroCliente` int(11) NOT NULL AUTO_INCREMENT COMMENT 'número identificador y único de cada cliente', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `dieta`
--
ALTER TABLE `dieta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador para cada dieta', AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del estado de un pedido', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del menú', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del pedido';

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del proceso o estado', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la sucursal', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador automático para agregar a cada nueva tarjeta', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `vianda`
--
ALTER TABLE `vianda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la vianda', AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caja_menu`
--
ALTER TABLE `caja_menu`
  ADD CONSTRAINT `FK12` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `comun`
--
ALTER TABLE `comun`
  ADD CONSTRAINT `FK5` FOREIGN KEY (`id`) REFERENCES `menu` (`id`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK3` FOREIGN KEY (`nroCliente`) REFERENCES `cliente` (`nroCliente`);

--
-- Filtros para la tabla `envasa`
--
ALTER TABLE `envasa`
  ADD CONSTRAINT `FK14` FOREIGN KEY (`id_caja`) REFERENCES `caja_menu` (`id`),
  ADD CONSTRAINT `FK15` FOREIGN KEY (`id_vianda`) REFERENCES `vianda` (`id`),
  ADD CONSTRAINT `FK16` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`);

--
-- Filtros para la tabla `ingresa`
--
ALTER TABLE `ingresa`
  ADD CONSTRAINT `FK23` FOREIGN KEY (`id_caja`) REFERENCES `caja_menu` (`id`),
  ADD CONSTRAINT `FK24` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id`);

--
-- Filtros para la tabla `integra`
--
ALTER TABLE `integra`
  ADD CONSTRAINT `FK10` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `FK11` FOREIGN KEY (`id_vianda`) REFERENCES `vianda` (`id`);

--
-- Filtros para la tabla `paga`
--
ALTER TABLE `paga`
  ADD CONSTRAINT `FK19` FOREIGN KEY (`nroCliente`) REFERENCES `cliente` (`nroCliente`),
  ADD CONSTRAINT `FK20` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `pasa`
--
ALTER TABLE `pasa`
  ADD CONSTRAINT `FK21` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`),
  ADD CONSTRAINT `FK22` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK8` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjeta` (`id`),
  ADD CONSTRAINT `FK9` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK2` FOREIGN KEY (`nroCliente`) REFERENCES `cliente` (`nroCliente`);

--
-- Filtros para la tabla `personalizado`
--
ALTER TABLE `personalizado`
  ADD CONSTRAINT `FK4` FOREIGN KEY (`id`) REFERENCES `menu` (`id`);

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `FK6` FOREIGN KEY (`id_dieta`) REFERENCES `dieta` (`id`),
  ADD CONSTRAINT `FK7` FOREIGN KEY (`id_vianda`) REFERENCES `vianda` (`id`);

--
-- Filtros para la tabla `realiza`
--
ALTER TABLE `realiza`
  ADD CONSTRAINT `FK17` FOREIGN KEY (`nroCliente`) REFERENCES `cliente` (`nroCliente`),
  ADD CONSTRAINT `FK18` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`nroCliente`) REFERENCES `cliente` (`nroCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
