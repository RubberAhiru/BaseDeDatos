
//clientes
INSERT INTO `cliente`(`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`)
VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6]);

INSERT INTO `cliente`(`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`)
VALUES (1, "aallisonfloo@gmail.com","012345678","piedras","224","Ciudad Vieja");

INSERT INTO `cliente`(`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`)
VALUES (2, "guarino.marcos93@gmail.com","1234","jardines del prado","1234","Sayago");

INSERT INTO `cliente`(`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`)
VALUES (3, "babarboza98@gmail.com","1234","montecarlo","3583","Jardines del Hipodromo");

INSERT INTO `cliente`(`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`)
VALUES (4, "guarino_diego@yahoo.com","1234","jardines del prado","1234","Sayago");

INSERT INTO `cliente`(`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`)
VALUES (5, "valeria_zeballos@gmail.com","1234","av Uruguay","1030","Centro");

INSERT INTO `cliente`(`nroCliente`, `email`, `contrasenia`, `dir_calle`, `dir_num`, `dir_barrio`)
VALUES (6, "fabian_acosta@gmail.com","1234","av Uruguay","1030","Centro");

//persona
INSERT INTO `persona`(`nroCliente`, `nombre`, `apellido`, `doc_tipo`, `dor_num`) VALUES ("1","Allison","Flores","ci","50083335");

INSERT INTO `persona`(`nroCliente`, `nombre`, `apellido`, `doc_tipo`, `doc_num`)
VALUES ("2","Marcos","Guarino","CI","48481987");

INSERT INTO `persona`(`nroCliente`, `nombre`, `apellido`, `doc_tipo`, `doc_num`)
VALUES ("3","Agustin","Barboza","CI","51721077");

INSERT INTO `persona`(`nroCliente`, `nombre`, `apellido`, `doc_tipo`, `doc_num`)
VALUES ("4","Diego","Guarino","CI","48482022");

INSERT INTO `persona`(`nroCliente`, `nombre`, `apellido`, `doc_tipo`, `doc_num`)
VALUES ("5","Valeria","Zeballos","CI","40940529");

INSERT INTO `persona`(`nroCliente`, `nombre`, `apellido`, `doc_tipo`, `doc_num`)
VALUES ("6","Fabian","Acosta","CI","42254708");


//empresa
INSERT INTO `empresa`(`nroCliente`, `rut`, `razon_social`)
VALUES ([value-1],[value-2],[value-3]);

INSERT INTO `empresa`(`nroCliente`, `rut`, `razon_social`)
VALUES (6,"211000010000","REMAR");

INSERT INTO `empresa`(`nroCliente`, `rut`, `razon_social`)
VALUES (1,211888818888,"Abitab");

//telefono
INSERT INTO `telefono`(`nroCliente`, `num_cliente`) VALUES ("1","095381606");
INSERT INTO `telefono`(`nroCliente`, `num_cliente`) VALUES ("2","097026760");
INSERT INTO `telefono`(`nroCliente`, `num_cliente`) VALUES ("3","091970775");
INSERT INTO `telefono`(`nroCliente`, `num_cliente`) VALUES ("4","094369246");

//menu
INSERT INTO `menu`(`id`, `frecuencia`) VALUES ("1","semanal");
INSERT INTO `menu`(`id`, `frecuencia`) VALUES ("2","quincenal");
INSERT INTO `menu`(`id`, `frecuencia`) VALUES ("3","mensual");

//dietas
INSERT INTO `dieta`(`nombre`, `descrip`) VALUES ("clasica","Incluye alimentos vegetales y animales. Seguir este tipo de alimentación de manera equilibrada aporta todos los nutrientes necesarios y contribuye a la salud.");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES
("2","vegetariana","Cuando las personas piensan en una dieta vegetariana, normalmente creen que no incluye carne de vaca, pollo o pescado. ");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES
("3","Mediterranea","De origen vegetal, consta de cereales integrales, verduras, legumbres, frutas, frutos secos, semillas, hierbas y especias.");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("4","Sin Sal","Comidas sin sal para hipertensos, el tratamiento dietético.");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("5","Veganas","Que no incluyen ningún alimento de origen animal");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("6","Celiaca","comidas libres de gluten y gliadina");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("7","Lactovegetariana","incluyen leche y sus derivados (sin huevo o miel)");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("8","Ovovegetariana","incluyen huevo");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("9","Ovolactovegetariano","tambien llamada Lactoovovegetariana: incluye lácteos y huevo, pero no miel.");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("10","Crudivegana","Alimentos crudos de origen vegetal (excluye todo alimento vegetal que para consumirse necesiten ser sometidos a cocción).");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("11","pescetariana","Incluyendo en pequeñas porciones carne de pescado y camarones.");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("12","apivegetariana","No consumen lácteos ni huevos pero sí miel");
INSERT INTO `dieta`(`id`, `nombre`, `descrip`) VALUES ("13","flexivegetariana","Tambien conocido como semivegano es una dieta que puede incluir un poco de carne ocacionalmente.");

//viandas
INSERT INTO `vianda`(`id`, `nombre`, `tiempo`, `precio`, `imagen`, `contenido`) VALUES ("1","pasta italiana","30","150","pasta-italiana.png","espaguetis con salsa tomate y morron rojo");

INSERT INTO `vianda`(`id`, `nombre`, `tiempo`, `precio`, `imagen`, `contenido`) VALUES ("2","","","","","");

//pertenece
INSERT INTO `pertenece`(`id_dieta`, `id_vianda`) VALUES ("1","1");
INSERT INTO `pertenece`(`id_dieta`, `id_vianda`) VALUES ("2","1");
INSERT INTO `pertenece`(`id_dieta`, `id_vianda`) VALUES ("7","1");
INSERT INTO `pertenece`(`id_dieta`, `id_vianda`) VALUES ("8","1");
INSERT INTO `pertenece`(`id_dieta`, `id_vianda`) VALUES ("9","1");
INSERT INTO `pertenece`(`id_dieta`, `id_vianda`) VALUES ("11","1");
INSERT INTO `pertenece`(`id_dieta`, `id_vianda`) VALUES ("13","1");

//caja_menu
INSERT INTO `caja_menu`(`id`, `lote`, `exp`, `id_pedido`) VALUES ("","","","");

//comun
INSERT INTO `comun`(`id`, `precT`, `stock_min`, `stock_max`, `stock_real`) VALUES ("","","","","");

//personalizado
INSERT INTO `personalizado`(`id`, `recargo`, `precT`) VALUES ("","","");

//integra
INSERT INTO `integra`(`id_menu`, `id_vianda`) VALUES ("","");

//ingresa
INSERT INTO `ingresa`(`id_caja`, `id_proceso`, `fecha_ini`, `fecha_fin`) VALUES ("","","","");

//pedido
INSERT INTO `pedido`(`id`, `fecha`, `hora`, `id_tarjeta`, `id_suc`) VALUES ("","","","","");

//proceso
INSERT INTO `proceso`(`id`, `estado`) VALUES ("1","");
INSERT INTO `proceso`(`id`, `estado`) VALUES ("2","");
INSERT INTO `proceso`(`id`, `estado`) VALUES ("3","");
INSERT INTO `proceso`(`id`, `estado`) VALUES ("4","");
INSERT INTO `proceso`(`id`, `estado`) VALUES ("5","");
INSERT INTO `proceso`(`id`, `estado`) VALUES ("6","");
INSERT INTO `proceso`(`id`, `estado`) VALUES ("7","");

//estado
INSERT INTO `estado`(`id`, `nombre`) VALUES ("","");
INSERT INTO `estado`(`id`, `nombre`) VALUES ("1", "Solicitado");
INSERT INTO `estado`(`id`, `nombre`) VALUES ("2", "Confirmado");
INSERT INTO `estado`(`id`, `nombre`) VALUES ("3", "Enviado");
INSERT INTO `estado`(`id`, `nombre`) VALUES ("4", "Entregado");
INSERT INTO `estado`(`id`, `nombre`) VALUES ("5", "Rechazado");
INSERT INTO `estado`(`id`, `nombre`) VALUES ("6", "Devuelto");

//realiza
INSERT INTO `realiza`(`nroCliente`, `id_pedido`, `fecha`, `hora`) VALUES ("","","","");

//sucursal
INSERT INTO `sucursal`(`id`, `nombre`, `cant_cocinas`, `datos`) VALUES ("","","","");

//tarjeta
INSERT INTO `tarjeta`(`id`, `titular`, `banco`, `num`, `codigo`, `exp`) VALUES ("","","","","","");

//paga
INSERT INTO `paga`(`nroCliente`, `id_pedido`, `fecha`, `hora`) VALUES ("","","","");

//pasa
INSERT INTO `pasa`(`id_pedido`, `id_estado`, `fecha_ini`, `fecha_fin`) VALUES ("","","","");


//envasa
INSERT INTO `envasa`(`id_caja`, `id_vianda`, `id_menu`) VALUES ("","","");

//usuario
INSERT INTO `usuario`(`user`, `password`, `rol`) VALUES ("","","");











