#Script Base de Datos
CREATE DATABASE IF NOT EXISTS grupo_dubai;
use grupo_dubai;
CREATE TABLE Empresas(
fiIdEmpresa   INT AUTO_INCREMENT,
fcnombre      varchar(60)  not null,
fcRFC         varchar (13) not null,
fctelefono    varchar(30)  not null,
fcemail       varchar(50)  not null,
primary key (fiIdEmpresa)
);

CREATE TABLE EstadosRepublica(
fiIdEstado INT AUTO_INCREMENT,
fcnombreEstado varchar(50),
primary key (fiIdEstado)
);

CREATE TABLE Direcciones(
fiIdDireccion INT AUTO_INCREMENT,
fccalle          varchar(50) not null,
finumeroExterior INT not null,
finumeroInterior INT not null, 
fccolonia        varchar(50) not null,
ficodifoPostal   INT not null,
fiestadoRepublica INT not null,
primary key (fiIdDireccion),
foreign key (fiestadoRepublica) references EstadosRepublica (fiIdEstado)
);

CREATE TABLE Sucursales(
fiIdSucursal      INT AUTO_INCREMENT,
fcnombreSucursal  varchar(60) not null,
fiEmpresa         INT not null,
fiIdDireccion     INT not null,
primary key     (fiIdSucursal),
foreign key     (fiempresa) references Empresas (fiIdEmpresa),
foreign key     (fiIdDireccion) references Direcciones (fiIdDireccion)
);

CREATE TABLE PersonalCategorias(
fiIdCategoria INT AUTO_INCREMENT,
fcdescripcion varchar(60) not null,
primary key (fiIdCategoria)
);

CREATE TABLE Personal(
fiIdPersonal      INT AUTO_INCREMENT,
fcnombrePersonal  varchar(50) not null,
fcapellidoPaterno varchar(50) not null,
fcapellidoMaterno varchar(50) not null,
finumeroEmpreado  INT not null,
fcmail            varchar(50),
fctelefono        varchar(50),
fisucursal        INT not null,
ficategoria       INT not null,
primary key (fiIdPersonal),
foreign key (fisucursal) references Sucursales (fiIdSucursal),
foreign key (ficategoria) references PersonalCategorias (fiIdCategoria)
);

