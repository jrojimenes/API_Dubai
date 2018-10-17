use dubaiuni_dbpedidos;

CREATE TABLE menus_acceso(
fiIdMenu      		    INT AUTO_INCREMENT,
fcNombreMenu  		    VARCHAR(40),
fcUrlMenu     		  	VARCHAR(100),
fcidEmpresasIngreso     VARCHAR(100),
fcPaginasLigadasMenu    VARCHAR(100),
PRIMARY KEY (fiIdMenu)
);

INSERT INTO menus_acceso (fcNombreMenu, fcUrlMenu, fcidEmpresasIngreso, fcPaginasLigadasMenu)
VALUES('Menu Registra tallas Monte de Piedad','/home_tallas/form-validation','1','Inicio,Tallas');

select * from menus_acceso;