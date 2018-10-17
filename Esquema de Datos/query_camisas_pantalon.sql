SELECT * FROM dubaiuni_dbpedidos.medidas_camisa;
SELECT * FROM dubaiuni_dbpedidos.camisa_pantalon;

alter table dubaiuni_dbpedidos.camisa_pantalon add talla_camisa_comercial int;

SELECT * FROM dubaiuni_dbpedidos.camisa_pantalon order by talla_pantalon asc;
update dubaiuni_dbpedidos.camisa_pantalon 
	   set talla_pantalon = 28 
       where talla_camisa in (14, 14.5, 15); 
update dubaiuni_dbpedidos.camisa_pantalon set talla_camisa_comercial = 38 where talla_camisa = 15;

insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (18, 42, 46);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (18.5, 42, 47);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (19, 42, 48);




insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (18.5, 44, 47);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (19, 44, 48);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (19.5, 44, 49);



insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (19, 46, 48);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (19.5, 46, 49);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (20, 46, 50);


insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (19.5, 48, 49);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (20, 48, 50);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (20.5, 48, 52);


insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (20, 50, 50);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (20.5, 50, 52);
insert into dubaiuni_dbpedidos.camisa_pantalon (talla_camisa, talla_pantalon, talla_camisa_comercial)
values (21, 50, 53);









/*delete from dubaiuni_dbpedidos.camisa_pantalon where talla_pantalon not in(28,30)*/