use dubaiuni_dbpedidos;
DELIMITER //
CREATE PROCEDURE sp_relacioncamisapantalon ()
BEGIN
       SELECT 
              talla_camisa as fntallacamisa,
              talla_pantalon as fntallapantalon,
              talla_camisa_comercial as fntallacomercialcamisa
              FROM camisa_pantalon 
			  order by talla_pantalon asc;


END//
DELIMITER;

call sp_relacioncamisapantalon ();



CREATE TABLE Productos (
fiIdProducto int auto_increment,
fcDescripcion varchar(60),
primary key (fiIdProducto)
);

insert into Productos (fcDescripcion) values ('Pantalon de vestir');
insert into Productos (fcDescripcion) values ('Pantalon de mezclilla');
insert into Productos (fcDescripcion) values ('Camisa perfil');
insert into Productos (fcDescripcion) values ('Camisa de vestir');
insert into Productos (fcDescripcion) values ('Playera tipo polo');
insert into Productos (fcDescripcion) values ('Playera cuello redondo');

select * from Productos;

CREATE TABLE Caracteristicas_Producto (
fiIdCaract int auto_increment,
fcDescripcion varchar(60),
primary key (fiIdCaract)
);

insert into Caracteristicas_Producto (fcDescripcion) values ('Manga corta');
insert into Caracteristicas_Producto (fcDescripcion) values ('Manga larga');




CREATE TABLE Colores (
fiIdColor int auto_increment,
fcnombreColor varchar(60),
fccodigoHTML  varchar(50),
primary key (fiIdColor)
);

insert into Colores (fcnombreColor, fccodigoHTML) values ('Gris', '#808080');
insert into Colores (fcnombreColor, fccodigoHTML) values ('Azul marino', '#000080');
insert into Colores (fcnombreColor, fccodigoHTML) values ('Vino', '#5e2129');
insert into Colores (fcnombreColor, fccodigoHTML) values ('Azul', '	#0000FF');




CREATE TABLE Detalle_Configuracion_Paquetes (
fiIdDetallePaquetes int auto_increment,
fiIdProducto int,
fiCantidadProducto int,
fiIdColor int,
fiIdEmpresa int,
fiIdTipoPersonal int,
primary key (fiIdDetallePaquetes)
);

select * from Productos;
select * from Colores;
select * from categoriatipopersonal;
/*Pantalones Administrativos*/
insert into Detalle_Configuracion_Paquetes (fiIdProducto, fiCantidadProducto, fiIdColor, fiIdEmpresa, fiIdTipoPersonal)
values (1, 2, 1, 1, 1);

insert into Detalle_Configuracion_Paquetes (fiIdProducto, fiCantidadProducto, fiIdColor, fiIdEmpresa, fiIdTipoPersonal)
values (1, 2, 2, 1, 1);
/*Pantalones Administrativos*/

/*Camisas Administrativos*/
insert into Detalle_Configuracion_Paquetes (fiIdProducto, fiCantidadProducto, fiIdColor, fiIdEmpresa, fiIdTipoPersonal)
values (3, 1, 3, 1, 1);

insert into Detalle_Configuracion_Paquetes (fiIdProducto, fiCantidadProducto, fiIdColor, fiIdEmpresa, fiIdTipoPersonal)
values (3, 1, 0, 1, 1);

insert into Detalle_Configuracion_Paquetes (fiIdProducto, fiCantidadProducto, fiIdColor, fiIdEmpresa, fiIdTipoPersonal)
values (4, 2, 4, 1, 1);
/*Camisas Administrativos*/

/*Playeras Mozos*/
insert into Detalle_Configuracion_Paquetes (fiIdProducto, fiCantidadProducto, fiIdColor, fiIdEmpresa, fiIdTipoPersonal)
values (5, 2, 0, 1, 2);

insert into Detalle_Configuracion_Paquetes (fiIdProducto, fiCantidadProducto, fiIdColor, fiIdEmpresa, fiIdTipoPersonal)
values (6, 2, 0, 1, 2);

insert into Detalle_Configuracion_Paquetes (fiIdProducto, fiCantidadProducto, fiIdColor, fiIdEmpresa, fiIdTipoPersonal)
values (2, 2, 4, 1, 2);

/*Playeras Mozos*/









