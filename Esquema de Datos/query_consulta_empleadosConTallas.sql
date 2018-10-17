SELECT   cabp.fiIdEmpleado AS Numero_Empleado,
		 CONCAT(per.fcnombrePersonal,' ',  
                per.fcapellidoPaterno,' ',
		        SUBSTRING_INDEX(per.fcapellidoMaterno,',', 1)) AS Nombre_Empleado,
		 per.fcmail AS Mail,
         per.fctelefono AS Telefono,
         perCat.fcdescripcion AS Puesto_Empleado,
         catTipPer.fcDescripcion AS Tipo_Empleado,
         suc.fcnombreSucursal AS Sucursal,
         emp.fcnombre AS Empresa,
         cabp.fdFecha AS Fecha_Registro
		 FROM 
         cabeceroPedido cabp
         LEFT JOIN personal per
         ON cabp.fiIdEmpleado = per.finumeroEmpleado
         LEFT JOIN sucursales suc
         ON per.fisucursal = suc.fiIdSucursal
         LEFT JOIN empresas emp
         ON emp.fiIdEmpresa = suc.fiEmpresa
         LEFT JOIN personalcategorias perCat
         ON perCat.fiIdCategoria = per.ficategoria
         LEFT JOIN categoriatipopersonal catTipPer
         ON catTipPer.fiIdTipoPersonal = perCat.fiTipoPersonal
         where cabp.fdFecha != '0000-00-00 00:00:00'