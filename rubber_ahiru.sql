-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2023 a las 03:27:11
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`) VALUES
(1, 'aallisonfloo@gmail.com', '012345678', 'piedras', 224, 'Ciudad Vieja'),
(2, 'guarino.marcos93@gmail.com', '1234', 'jardines del prado', 1234, 'Sayago'),
(3, 'babarboza98@gmail.com', '1234', 'montecarlo', 3583, 'Jardines del Hipodro'),
(4, 'guarino_diego@yahoo.com', '1234', 'jardines del prado', 1234, 'Sayago'),
(5, 'valeria_zeballos@gmail.com', '1234', 'av Uruguay', 1030, 'Centro'),
(6, 'fabian_acosta@gmail.com', '1234', 'av Uruguay', 1030, 'Centro');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dieta`
--

CREATE TABLE `dieta` (
  `id` int(11) NOT NULL COMMENT 'identificador para cada dieta',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre de la dieta\r\n',
  `descrip` varchar(200) NOT NULL COMMENT 'descripción y/o composición de determinada dieta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `rut` int(11) NOT NULL COMMENT 'numero único para cada empresa otorgado por DGI',
  `razon_social` varchar(50) NOT NULL COMMENT 'la razón social es el nombre oficial de la empresa, con el cual se la registra'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`nroCliente`, `rut`, `razon_social`) VALUES
(1, 2147483647, 'Abitab'),
(6, 2147483647, 'REMAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envasa`
--

CREATE TABLE `envasa` (
  `id_caja` int(11) NOT NULL COMMENT 'identificación de la caja de menú',
  `id_vianda` int(11) NOT NULL COMMENT 'identificador de la vianda',
  `id_menu` int(11) NOT NULL COMMENT 'identificador del menú'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL COMMENT 'identificador del estado de un pedido',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del estado/proceso actuante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresa`
--

CREATE TABLE `ingresa` (
  `id_caja` int(11) NOT NULL COMMENT 'identificador de la caja de menú',
  `id_proceso` int(11) NOT NULL COMMENT 'identificador el proceso que esta actuando en este momento en la caja',
  `fecha_ini` int(11) NOT NULL COMMENT 'fecha de inicio del proceso',
  `fecha_fin` int(11) NOT NULL COMMENT 'fecha de finalización del proceso'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integra`
--

CREATE TABLE `integra` (
  `id_menu` int(11) NOT NULL COMMENT 'identificador de la vianda',
  `id_vianda` int(11) NOT NULL COMMENT 'identificador del menú'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL COMMENT 'identificador del menú',
  `frecuencia` varchar(10) NOT NULL COMMENT 'nos dice si el menú será semanal, quincenal o mensual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasa`
--

CREATE TABLE `pasa` (
  `id_pedido` int(11) NOT NULL COMMENT 'número de pedido',
  `id_estado` int(11) NOT NULL COMMENT 'identificador del estado en el que se encuentra el pedido en determinado momento',
  `fecha_ini` datetime NOT NULL COMMENT 'fecha inicial del estado del pedido',
  `fecha_fin` datetime NOT NULL COMMENT 'fecha final del estado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`nroCliente`, `nombre`, `apellido`, `doc_tipo`, `doc_num`) VALUES
(1, 'Allison', 'Flores', 'ci', '50083335'),
(2, 'Marcos', 'Guarino', 'CI', '48481987'),
(3, 'Agustin', 'Barboza', 'CI', '51721077'),
(4, 'Diego', 'Guarino', 'CI', '48482022'),
(5, 'Valeria', 'Zeballos', 'CI', '40940529'),
(6, 'Fabian', 'Acosta', 'CI', '42254708');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalizado`
--

CREATE TABLE `personalizado` (
  `id` int(11) NOT NULL COMMENT 'identificador del menú personalizado',
  `recargo` int(11) NOT NULL COMMENT 'precio que se le agregara al pedido por ser personalizado (heredado de menú)',
  `precT` int(11) NOT NULL COMMENT 'precio total'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `id_dieta` int(11) NOT NULL COMMENT 'identificador de la dieta',
  `id_vianda` int(11) NOT NULL COMMENT 'identificación de la vianda'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`id_dieta`, `id_vianda`) VALUES
(1, 1),
(2, 1),
(7, 1),
(8, 1),
(9, 1),
(11, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `id` int(11) NOT NULL COMMENT 'identificador del proceso o estado',
  `estado` varchar(20) NOT NULL COMMENT 'nombre del estado/proceso actuante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realiza`
--

CREATE TABLE `realiza` (
  `nroCliente` int(11) NOT NULL COMMENT 'número que identifica a un cliente',
  `id_pedido` int(11) NOT NULL COMMENT 'número de pedido',
  `fecha` date NOT NULL COMMENT 'fecha en la que se realiza el pedido',
  `hora` time NOT NULL COMMENT 'hora de realización del pedido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL COMMENT 'identificador de la sucursal',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del establecimiento o sucursal',
  `cant_cocinas` int(11) NOT NULL COMMENT 'cantidad de cocinas que posee determinada sucursal',
  `datos` varchar(100) NOT NULL COMMENT 'datos extras, estos pueden incluir la ubicación y el teléfono por posibles problemas.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `nroCliente` int(11) NOT NULL COMMENT 'número identificador  del cliente',
  `num_cliente` varchar(20) NOT NULL COMMENT 'número de teléfono del cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vianda`
--

INSERT INTO `vianda` (`id`, `nombre`, `tiempo`, `precio`, `imagen`, `contenido`) VALUES
(1, 'pasta italiana', 30, 150, 'pasta-italiana.png', 'espaguetis con salsa tomate y morron rojo');

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
  MODIFY `nroCliente` int(11) NOT NULL AUTO_INCREMENT COMMENT 'número identificador y único de cada cliente', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `dieta`
--
ALTER TABLE `dieta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador para cada dieta', AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del estado de un pedido';

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del proceso o estado';

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la sucursal';

--
-- AUTO_INCREMENT de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador automático para agregar a cada nueva tarjeta';

--
-- AUTO_INCREMENT de la tabla `vianda`
--
ALTER TABLE `vianda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la vianda', AUTO_INCREMENT=2;

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
