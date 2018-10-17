use dubaiuni_DBPedidos;

DELIMITER $$
CREATE PROCEDURE sp_conusltaPedidoEmpleado (IN _empleadoId INT, IN _tipoEmpleadoId INT)
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
					cabp.fcTallaPlayera  AS Talla_Plallera,
					prod.fcDescripcion   AS Prenda,
                    detconf.fcUrlImagen  AS Url_Imagen,
					colrs.fcnombreColor  AS Color_Prenda,
					CASE prod.fiIdProducto WHEN CSIUNO
					THEN (SELECT cp.fcDescripcion FROM detallepedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fidetallePantalon1 where dp.iIdEmpleado = Pers.finumeroEmpleado)
					WHEN CSIDOS
					THEN (SELECT cp.fcDescripcion FROM detallepedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fidetallePantalon2 where dp.iIdEmpleado = Pers.finumeroEmpleado)
					WHEN CSITRES
					THEN (SELECT cp.fcDescripcion FROM detallepedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fidetalleCamisaVino where dp.iIdEmpleado = Pers.finumeroEmpleado)
					WHEN CSICUATRO
					THEN (SELECT cp.fcDescripcion FROM detallepedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fidetalleCamisaGris where dp.iIdEmpleado = Pers.finumeroEmpleado)
					WHEN CSICINCO
					THEN (SELECT cp.fcDescripcion FROM detallepedido dp left join caracteristicas_producto cp on cp.fiIdCaract = dp.fiDetalleCamisaAzul where dp.iIdEmpleado = Pers.finumeroEmpleado)
					END
					AS Caracteristica_Prenda,
					detconf.fiCantidadProducto AS Cantidad,
					cabp.fdFecha AS Fecha_Pedido,
                    prod.fiIdProducto AS Id_Producto
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
					 WHERE cabp.fiIdEmpleado = _empleadoId
					 AND tipPers.fiIdTipoPersonal = _tipoEmpleadoId
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
					cabp.fdFecha AS Fecha_Pedido,
                    prod.fiIdProducto AS Id_Producto
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
					 WHERE cabp.fiIdEmpleado = _empleadoId
					 AND tipPers.fiIdTipoPersonal = _tipoEmpleadoId
					 ORDER BY Pers.finumeroEmpleado ASC;
END IF; 
END $$
DELIMITER ;

DROP PROCEDURE sp_conusltaPedidoEmpleado;

CALL sp_conusltaPedidoEmpleado(1200005, 1);


DELIMITER $$

CREATE PROCEDURE sp_verificaPedidoExistenteEmpleado(IN _empleadoId INT, IN _empresaId INT)
BEGIN
DECLARE VIRESULTADO INT default null;

SET VIRESULTADO = (SELECT COUNT(*) FROM cabeceroPedido WHERE  fiIdEmpleado =  _empleadoId AND fiIdEmpresa = _empresaId);

SELECT VIRESULTADO;

END $$
DELIMITER ;
DROP procedure sp_verificaPedidoExistenteEmpleado;
call sp_verificaPedidoExistenteEmpleado (1700004 ,2);
select * from cabeceropedido;

/*=======================================================Alter empresas=========================================================*/
DELIMITER $$
CREATE PROCEDURE `sp_consultaEmpresas`()
BEGIN
      SELECT fiIdEmpresa,
			 fcnombre,
             fcemail,
			 fctelefono,
             fiestatusEmpresa
             FROM empresas;
END$$
DELIMITER ;

drop procedure sp_consultaEmpresas;

ALTER TABLE empresas add fiestatusEmpresa int;

UPDATE empresas SET fiestatusEmpresa = 1 WHERE fiIdEmpresa IN (1,2);

UPDATE empresas SET fiestatusEmpresa = 0 WHERE fiIdEmpresa = 1;



