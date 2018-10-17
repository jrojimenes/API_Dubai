DROP PROCEDURE sp_conusltaDetallePedidosEmpleados;

DELIMITER $$
CREATE PROCEDURE sp_conusltaDetallePedidosEmpleados (IN _tipoEmpleadoId INT)
BEGIN
/*Declaramos las constantes locales*/
DECLARE  CSIUNO    INT default 1;
DECLARE  CSIDOS    INT default 2;
DECLARE  CSITRES   INT default 3;
DECLARE  CSICUATRO INT default 4;
DECLARE  CSICINCO  INT default 5;


IF _tipoEmpleadoId = CSIUNO
   THEN
			SELECT  
					cabp.fiIdEmpleado AS Numero_Empleado,
					CONCAT(Pers.fcnombrePersonal,' ',  
						   Pers.fcapellidoPaterno,' ',
						   SUBSTRING_INDEX(Pers.fcapellidoMaterno,',', CSIUNO)) AS Nombre_Empleado,
					cabp.fiTallaPantalon AS Talla_Pantalon,
					cabp.fiTallaCamisa   AS Talla_Camisa,
					cabp.fiLargoManga    AS Largo_Mangas,
					prod.fcDescripcion   AS Prenda,
					colrs.fcnombreColor  AS Color_Prenda,
					CASE prod.fiIdProducto WHEN CSIUNO
					THEN (SELECT cp.fcDescripcion FROM detallePedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fidetallePantalon1 where dp.iIdEmpleado = Pers.finumeroEmpleado)
					WHEN CSIDOS
					THEN (SELECT cp.fcDescripcion FROM detallePedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fidetallePantalon2 where dp.iIdEmpleado = Pers.finumeroEmpleado)
					WHEN CSITRES
					THEN (SELECT cp.fcDescripcion FROM detallePedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fidetalleCamisaVino where dp.iIdEmpleado = Pers.finumeroEmpleado)
					WHEN CSICUATRO
					THEN (SELECT cp.fcDescripcion FROM detallePedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fidetalleCamisaGris where dp.iIdEmpleado = Pers.finumeroEmpleado)
					WHEN CSICINCO
					THEN (SELECT cp.fcDescripcion FROM detallePedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fiDetalleCamisaAzul where dp.iIdEmpleado = Pers.finumeroEmpleado)
					END
					AS Caracteristica_Prenda,
					detconf.fiCantidadProducto AS Cantidad,
					cabp.fdFecha AS Fecha_Pedido
					FROM 
					 cabeceroPedido cabp
			 /*ejecuta la comparacion entre el cabecero y el detalle del pedido*/
					 LEFT JOIN detallePedido detp
					 ON cabp.fiIdCabecero = detp.fiIdetallePed
					 AND cabp.fiIdEmpleado = detp.iIdEmpleado
			/*ejecuta la comparación entre la configuración de los pedidos por empresa, según el cabecero del pedido*/         
					 LEFT JOIN detalle_configuracion_paquetes detconf
					 ON detconf.fiIdEmpresa = cabp.fiIdEmpresa 
					 AND detconf.fiIdTipoPersonal = _tipoEmpleadoId
			/*ejecuta la union entre el detalle de la configuración de pedidos y los productos para ese pedido*/
					 LEFT JOIN productos prod
					 ON prod.fiIdProducto = detconf.fiIdProducto
			/*ejecuta la union entre el detalle de la configuración de pedidos y el color de cada produto*/
					 LEFT JOIN colores colrs
					 ON colrs.fiIdColor = detconf.fiIdColor
			/*Ejecutamos la union para obtener los datos del cliente*/
					 LEFT JOIN personal Pers
					 ON Pers.finumeroEmpleado = cabp.fiIdEmpleado
			/*Ejecutamos la union entre el empleado y su categoria*/
					 LEFT JOIN personalcategorias catPers
					 ON catPers.fiIdCategoria = Pers.ficategoria
			/*Ejecutamos la union entre la categoria y el tipo de personal*/
					 LEFT JOIN categoriatipopersonal tipPers
					 ON catPers.fiTipoPersonal = tipPers.fiIdTipoPersonal
					 WHERE tipPers.fiIdTipoPersonal = _tipoEmpleadoId
                     AND cabp.fdFecha != '0000-00-00 00:00:00'
					 ORDER BY Pers.finumeroEmpleado ASC;
     
     ELSEIF _tipoEmpleadoId = CSIDOS
     THEN
          SELECT  
					cabp.fiIdEmpleado AS Numero_Empleado,
					CONCAT(Pers.fcnombrePersonal,' ',  
						   Pers.fcapellidoPaterno,' ',
						   SUBSTRING_INDEX(Pers.fcapellidoMaterno,',', CSIUNO)) AS Nombre_Empleado,
					cabp.fiTallaPantalon AS Talla_Pantalon,
					cabp.fcTallaPlayera AS Talla_Plallera,
					prod.fcDescripcion AS Prenda,
					colrs.fcnombreColor AS Color_Prenda,
                    detconf.fcUrlImagen AS Url_Imagen,
					detconf.fiCantidadProducto AS Cantidad,
					cabp.fdFecha AS Fecha_Pedido
					FROM 
					 cabeceroPedido cabp
			 /*ejecuta la comparacion entre el cabecero y el detalle del pedido*/
					 LEFT JOIN detallePedido detp
					 ON cabp.fiIdCabecero = detp.fiIdetallePed
					 AND cabp.fiIdEmpleado = detp.iIdEmpleado
			/*ejecuta la comparación entre la configuración de los pedidos por empresa, según el cabecero del pedido*/         
					 LEFT JOIN detalle_configuracion_paquetes detconf
					 ON detconf.fiIdEmpresa = cabp.fiIdEmpresa 
					 AND detconf.fiIdTipoPersonal = _tipoEmpleadoId
			/*ejecuta la union entre el detalle de la configuración de pedidos y los productos para ese pedido*/
					 LEFT JOIN productos prod
					 ON prod.fiIdProducto = detconf.fiIdProducto
			/*ejecuta la union entre el detalle de la configuración de pedidos y el color de cada produto*/
					 LEFT JOIN colores colrs
					 ON colrs.fiIdColor = detconf.fiIdColor
			/*Ejecutamos la union para obtener los datos del cliente*/
					 LEFT JOIN personal Pers
					 ON Pers.finumeroEmpleado = cabp.fiIdEmpleado
			/*Ejecutamos la union entre el empleado y su categoria*/
					 LEFT JOIN personalcategorias catPers
					 ON catPers.fiIdCategoria = Pers.ficategoria
			/*Ejecutamos la union entre la categoria y el tipo de personal*/
					 LEFT JOIN categoriatipopersonal tipPers
					 ON catPers.fiTipoPersonal = tipPers.fiIdTipoPersonal
					 WHERE tipPers.fiIdTipoPersonal = _tipoEmpleadoId
                     AND cabp.fdFecha != '0000-00-00 00:00:00'
					 ORDER BY Pers.finumeroEmpleado ASC;
END IF; 
END $$
DELIMITER ;



call sp_conusltaDetallePedidosEmpleados (2); 