use dubaiuni_dbpedidos;
select * from sucursales;
truncate table  sucursales;
truncate table personal;

/*
insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('MARCO ANTONIO','DE LA ROSA','GONZALEZ',2010038,(select fiIdSucursal from sucursales where fcnombreSucursal ='DEPTO. DE ADMON. PERSONAL SIND'),(select fiIdCategoria from personalcategorias where fcdescripcion='EMERGENTES DE CUARTA'));


insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('JAVIER','DEL REAL','MORALES',1975043,(select fiIdSucursal from sucursales where fcnombreSucursal ='CASA MATRIZ COMERCIAL'),(select fiIdCategoria from personalcategorias where fcdescripcion='EXPENDEDORES'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('JAVIER','DE LA TORRE',' FLORES',2010375,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No. 03 TACUBAYA, D.F.- PR'),(select fiIdCategoria from personalcategorias where fcdescripcion='CAJEROS DE EMPENO'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('ABRAHAM','PAZ','ZARZA',2011060,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No. 03 TACUBAYA, D.F.- PR'),(select fiIdCategoria from personalcategorias where fcdescripcion='AUXILIAR DE SUPLENCIAS'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('GABRIEL ADOLFO','DE LOS COBOS','MACIAS',1975001,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No. 07 VER., VER.- COMERC'),(select fiIdCategoria from personalcategorias where fcdescripcion='EXPENDEDORES'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('GERARDO DANIEL','DE LEON','ALMANZA',1200535,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No. 16 AGS., AGS. - PREND'),(select fiIdCategoria from personalcategorias where fcdescripcion='AUX. LABORES C.M S. LOC. Y FOR'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('EDUARDO ANTONIO','DE LA TORRE','GUZMAN',2010180,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No. 16 AGS., AGS. - PREND'),(select fiIdCategoria from personalcategorias where fcdescripcion='CAJEROS DE REFRENDO SUCURSALES'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('JUAN EMILIO','WOO','GARCIA',2001268,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No. 19 TORREON, COAH.- PR'),(select fiIdCategoria from personalcategorias where fcdescripcion='AUXILIAR DEPOSITO L. Y F.'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('MARIO CESAR','PAZ','CELESTINO',1200601,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No.22 MONTERREY, N.L.ADM'),(select fiIdCategoria from personalcategorias where fcdescripcion='VIGILANTE DE ALMONEDA'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('GABRIEL','DE SANTIAGO','BARRAGAN',2006136,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No.25 GUADALAJARA, JAL.PR'),(select fiIdCategoria from personalcategorias where fcdescripcion='AUXILIAR DEPOSITO L. Y F.'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('SERGIO LUIS','DE ANDA','CABEZA DE VACA',1986043,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No. 28 MERIDA, YUC.- PRE'),(select fiIdCategoria from personalcategorias where fcdescripcion='AUXILIAR DE SUPLENCIAS'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('RODRIGO','AKE','SANCHEZ',1200517,(select fiIdSucursal from sucursales where fcnombreSucursal ='SUC. No. 32 CHETUMAL, Q.ROO.PR'),(select fiIdCategoria from personalcategorias where fcdescripcion='CAJEROS DE REFRENDO SUCURSALES'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('FABIAN JESUS','TAX','CAB',2001400,(select fiIdSucursal from sucursales where fcnombreSucursal ='AGENC. 45 "TIPO"- CAMPECHE, CA'),(select fiIdCategoria from personalcategorias where fcdescripcion='AUXILIARES DEP.A.Y R.L.Y F.'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('FREDDY RAMON','MAY','PUCH',2001401,(select fiIdSucursal from sucursales where fcnombreSucursal ='AGENC. 45 "TIPO"- CAMPECHE, CA'),(select fiIdCategoria from personalcategorias where fcdescripcion='AUXILIARES DEP.A.Y R.L.Y F.'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('GILBERTO','DEL MORAL','HERNANDEZ',1978018,(select fiIdSucursal from sucursales where fcnombreSucursal ='AGENC. 53 "TIPO" CANCUN, Q.R.C'),(select fiIdCategoria from personalcategorias where fcdescripcion='JEFE ALMONE Y EXPEND SUC L Y F'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('MIGUEL ALONSO','DE LA CRUZ','DE LA CRUZ',2004104,(select fiIdSucursal from sucursales where fcnombreSucursal ='AGENC. 66 TAPACHULA, CHIS.- P'),(select fiIdCategoria from personalcategorias where fcdescripcion='MECANOGRAFAS'));

insert into personal (fcnombrepersonal,fcapellidoPaterno,fcapellidoMaterno,finumeroEmpleado,fisucursal,ficategoria) 
values('ALFREDO','DE LA CRUZ','HERNANDEZ',1200508,(select fiIdSucursal from sucursales where fcnombreSucursal ='AGENC. 102 CD. MADERO, TAMPS P'),(select fiIdCategoria from personalcategorias where fcdescripcion='AUXILIAR PERITO VALUADOR'));
*/


















