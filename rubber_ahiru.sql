-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2023 a las 01:31:41
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
  `id_proceso` int(11) NOT NULL COMMENT 'identificador el proceso que esta actuando en este momento en la caja',
  `lote` date NOT NULL COMMENT 'fecha de elaboración',
  `exp` date NOT NULL COMMENT 'fecha de expiración o vencimiento',
  `fecha_ini` date NOT NULL COMMENT 'fecha de inicio del proceso',
  `fecha_fin` date NOT NULL COMMENT 'fecha de finalización del proceso'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nroCliente` int(11) NOT NULL COMMENT 'número identificador y único de cada cliente',
  `email` varchar(50) NOT NULL COMMENT 'correo electrónico',
  `dir_calle` varchar(30) NOT NULL COMMENT 'calle en donde vive el cliente',
  `dir_num` int(11) NOT NULL COMMENT 'número de puerta de la dirección del cliente',
  `dir_barrio` varchar(20) NOT NULL COMMENT 'barrio de su dirección personal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comun`
--

CREATE TABLE `comun` (
  `id` int(11) NOT NULL COMMENT 'identificador del menú común',
  `prcT` int(11) NOT NULL COMMENT 'precio total',
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
  `nombre` varchar(20) NOT NULL COMMENT 'nombre de la dieta',
  `descrip` varchar(200) NOT NULL COMMENT 'descripción y/o composición de determinada dieta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL COMMENT 'identificador, número de cliente para la empresa',
  `rut` int(11) NOT NULL COMMENT 'numero único para cada empresa otorgado por DGI',
  `razon_social` varchar(50) NOT NULL COMMENT 'la razón social es el nombre oficial de la empresa, con el cual se la registra'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `id` int(11) NOT NULL COMMENT 'identificador del estado',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del estado actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integra`
--

CREATE TABLE `integra` (
  `id_menu` int(11) NOT NULL COMMENT 'identificador del menú',
  `id_vianda` int(11) NOT NULL COMMENT 'identificador de la vianda'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL COMMENT 'identificador del menú',
  `frecuencia` varchar(10) NOT NULL COMMENT 'nos dice si el menú será semanal, quincenal o mensual.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL COMMENT 'identificador del pedido',
  `fecha` date NOT NULL COMMENT 'fecha de realizado',
  `hora` time NOT NULL COMMENT 'hora de realizacion',
  `nroCliente` int(11) NOT NULL COMMENT 'número de cliente',
  `id_caja` int(11) NOT NULL COMMENT 'identificador de la caja de menú',
  `id_tarjeta` int(11) NOT NULL COMMENT 'identificador de tarjeta',
  `id_suc` int(11) NOT NULL COMMENT 'identificador de sucursal',
  `id_estado` int(11) NOT NULL COMMENT 'identificador de estado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL COMMENT 'identificador del cliente, proviene de la tabla cliente y seria igual que el numero de cliente',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del individuo',
  `apellido` varchar(20) NOT NULL COMMENT 'apellido del individuo',
  `doc_tipo` varchar(10) NOT NULL COMMENT 'determinar si hablamos de cédula, pasaporte o DNI',
  `doc_num` varchar(20) NOT NULL COMMENT 'numero del documento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalizado`
--

CREATE TABLE `personalizado` (
  `id` int(11) NOT NULL COMMENT 'identificador del menú personalizado',
  `prcT` int(11) NOT NULL COMMENT 'precio total'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `id_vianda` int(11) NOT NULL COMMENT 'identificación de la vianda',
  `id_dieta` int(11) NOT NULL COMMENT 'identificador de la dieta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `nroCliente` int(11) NOT NULL COMMENT 'número de cliente',
  `id_pedido` int(11) NOT NULL COMMENT 'identificador de pedido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL COMMENT 'identificador de la sucursal',
  `nombre` varchar(20) NOT NULL COMMENT 'nombre del lugar/sucursal',
  `cant_cocinas` int(11) NOT NULL COMMENT 'cantidad de cocinas que posee determinada sucursal',
  `datos_extras` varchar(100) NOT NULL COMMENT 'datos extras, estos pueden incluir la ubicación y el teléfono por posibles problemas.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `id` int(11) NOT NULL COMMENT 'identificador automático para agregar a cada nueva tarjeta',
  `titular` int(50) NOT NULL COMMENT 'nombre del titular de la tarjeta',
  `banco` varchar(20) NOT NULL COMMENT 'ej: oca, visa, master, etc.',
  `num` int(11) NOT NULL COMMENT 'número en la tarjeta',
  `codigo` int(11) NOT NULL COMMENT 'código de verificación de 3 dígitos',
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `user` varchar(20) NOT NULL COMMENT 'usuario o nombre personal del empleado',
  `password` varchar(10) NOT NULL COMMENT 'contraseña personal',
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
  `imagen` varchar(100) NOT NULL COMMENT 'visualización de la vianda',
  `contenido` varchar(200) NOT NULL COMMENT 'detalle del contenido o los ingredientes de la vianda'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja_menu`
--
ALTER TABLE `caja_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8` (`id_proceso`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `envasa`
--
ALTER TABLE `envasa`
  ADD PRIMARY KEY (`id_caja`,`id_vianda`,`id_menu`),
  ADD KEY `FK18` (`id_menu`),
  ADD KEY `FK19` (`id_vianda`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `integra`
--
ALTER TABLE `integra`
  ADD PRIMARY KEY (`id_menu`,`id_vianda`),
  ADD KEY `FK10` (`id_vianda`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK12` (`nroCliente`),
  ADD KEY `FK13` (`id_caja`),
  ADD KEY `FK14` (`id_estado`),
  ADD KEY `FK15` (`id_suc`),
  ADD KEY `FK16` (`id_tarjeta`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personalizado`
--
ALTER TABLE `personalizado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD PRIMARY KEY (`id_vianda`,`id_dieta`),
  ADD KEY `FK4` (`id_dieta`);

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
  ADD KEY `FK21` (`id_pedido`);

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
  ADD PRIMARY KEY (`nroCliente`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`user`);

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
  MODIFY `nroCliente` int(11) NOT NULL AUTO_INCREMENT COMMENT 'número identificador y único de cada cliente';

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del estado';

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del menú';

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la vianda';

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caja_menu`
--
ALTER TABLE `caja_menu`
  ADD CONSTRAINT `FK8` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id`);

--
-- Filtros para la tabla `comun`
--
ALTER TABLE `comun`
  ADD CONSTRAINT `FK7` FOREIGN KEY (`id`) REFERENCES `menu` (`id`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK2` FOREIGN KEY (`id`) REFERENCES `cliente` (`nroCliente`);

--
-- Filtros para la tabla `envasa`
--
ALTER TABLE `envasa`
  ADD CONSTRAINT `FK17` FOREIGN KEY (`id_caja`) REFERENCES `caja_menu` (`id`),
  ADD CONSTRAINT `FK18` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `FK19` FOREIGN KEY (`id_vianda`) REFERENCES `vianda` (`id`);

--
-- Filtros para la tabla `integra`
--
ALTER TABLE `integra`
  ADD CONSTRAINT `FK10` FOREIGN KEY (`id_vianda`) REFERENCES `vianda` (`id`),
  ADD CONSTRAINT `FK9` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK12` FOREIGN KEY (`nroCliente`) REFERENCES `cliente` (`nroCliente`),
  ADD CONSTRAINT `FK13` FOREIGN KEY (`id_caja`) REFERENCES `caja_menu` (`id`),
  ADD CONSTRAINT `FK14` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `FK15` FOREIGN KEY (`id_suc`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FK16` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjeta` (`id`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK3` FOREIGN KEY (`id`) REFERENCES `cliente` (`nroCliente`);

--
-- Filtros para la tabla `personalizado`
--
ALTER TABLE `personalizado`
  ADD CONSTRAINT `FK6` FOREIGN KEY (`id`) REFERENCES `menu` (`id`);

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `FK4` FOREIGN KEY (`id_dieta`) REFERENCES `dieta` (`id`),
  ADD CONSTRAINT `FK5` FOREIGN KEY (`id_vianda`) REFERENCES `vianda` (`id`);

--
-- Filtros para la tabla `realiza`
--
ALTER TABLE `realiza`
  ADD CONSTRAINT `FK20` FOREIGN KEY (`nroCliente`) REFERENCES `cliente` (`nroCliente`),
  ADD CONSTRAINT `FK21` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`nroCliente`) REFERENCES `cliente` (`nroCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
