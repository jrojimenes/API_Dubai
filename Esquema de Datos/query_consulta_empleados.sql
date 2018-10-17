DELIMITER $$
CREATE PROCEDURE `sp_consultaEmpleado`(IN `IdEmpresa` INT, IN `IdEmpleado` INT)
Begin
/*Declaramos las constantes locales*/
DECLARE  CSIUNO    INT default 1;
			SELECT p.fcnombrePersonal,
				   p.fcapellidoPaterno,
                   SUBSTRING_INDEX(p.fcapellidoMaterno,',', CSIUNO) AS fcapellidoMaterno,
				   p.finumeroEmpleado,
				   c.fcdescripcion as fccategoria,
				   p.finumeroEmpleado,
				   s.fcnombreSucursal,
				   p.fcmail,
				   p.fctelefono,
				   e.fcnombre as fcNombreEmpresa,
                   e.fiestatusEmpresa,
                   tp.fiIdTipoPersonal
			FROM personal p
			LEFT JOIN personalcategorias c
			on  p.ficategoria = c.fiIdCategoria
			LEFT JOIN categoriatipopersonal tp
			ON tp.fiIdTipoPersonal = c.fiTipoPersonal
			LEFT JOIN sucursales s
			ON s.fiIdSucursal = p.fisucursal
			LEFT JOIN empresas e
			ON e.fiIdEmpresa = s.fiEmpresa
			WHERE p.finumeroEmpleado = IdEmpleado AND e.fiIdEmpresa = IdEmpresa;
            
END$$
DELIMITER ;

drop procedure sp_consultaEmpleado;