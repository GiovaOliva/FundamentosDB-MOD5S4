--Listamos la tabla empresa para ver sus columnas y agregar una empresa
select * from empresa;

insert into empresa values ('9876543-2', 'GioHerramientas', 'Av. La Feria #324, P.A.C.', '+56987654321', 'gherramientas@gmail.com', 'gherramientas.cl');

-- listamos la tabla herramienta para ver sus columnas y agregar cinco herramientas
select * from herramienta;

insert into herramienta values (1, 'Mezcladora de concreto', 30000);
insert into herramienta values (2, 'Taladro Percutor', 10000);
insert into herramienta values (3, 'Pistola de clavos', 15000);
insert into herramienta values (4, 'Sierra Circular Electrica', 10000);
insert into herramienta values (5, 'Motosierra Electrica', 15000);

--listamos la tabla cliente para ver sus columnas y agregar clientes
select * from cliente;

insert into cliente values ('10110120-0', 'Abelardo del Carmen', 'adelcarmen@gmail.com', 'Av. Del Carmen #75, Punta Arenas', '+56988776655');
insert into cliente values ('11222333-4', 'Jaimico Casas', 'jaimicoc@gmail.com', 'Av. Del Carmen #70, Punta Arenas', '+56977665544');
insert into cliente values ('12333444-5', 'Pedro Peralta', 'pperalta@gmail.com', 'Av. Del Carmen #80, Punta Arenas', '+56966554433');

--Listamos la tabla cliente y eliminamos el ultimo cliente
select * from cliente;

delete from cliente where rut = '12333444-5';

--Listamos la tabla herramienta y eliminamos la primera herramienta
select * from herramienta;

delete from herramienta where idherramienta = 1;

--listamos la tabla cliente y arriendos para asi agregar 2 arriendos por cliente
select * from cliente;

--"10110120-0"	"Abelardo del Carmen"	"adelcarmen@gmail.com"	"Av. Del Carmen #75, Punta Arenas"	"+56988776655"
--"11222333-4"	"Jaimico Casas"	"jaimicoc@gmail.com"	"Av. Del Carmen #70, Punta Arenas"	"+56977665544"

select * from arriendo;

insert into arriendo values (123456, '2020-12-02', 4, 10000, 'no', 4, '10110120-0');
insert into arriendo values (123457, '2020-12-03', 3, 15000, 'no', 5, '10110120-0');
insert into arriendo values (123458, '2021-01-02', 3, 15000, 'no', 3, '11222333-4');
insert into arriendo values (123459, '2021-01-03', 2, 10000, 'no', 2, '11222333-4');

--Listamos tabla clientes y modificamos el correo electronico del primer cliente
select * from cliente;

update cliente set correo = 'abelardodc@gmail.com' where rut = '10110120-0';

--listamos todas las herramientas
select * from herramienta;

--listamos los arriendos del segundo cliente
select * from arriendo where cliente_rut = '11222333-4';

--listamos los clientes cuyo nombre tengan una a
select * from cliente where nombre like '%a%';

--obtenemos el nombre de la segunda herramienta insertada
--como las insertamos por orden le corresponde el id = 2

select nombre from herramienta where idherramienta = 2;

--modificamos los dos primeros arriendos y les ponemos fecha 15-01-2020
select * from arriendo;
update arriendo set fecha = '2020-01-15' where folio = 123456;
update arriendo set fecha = '2020-01-15' where folio = 123457;

--listamos folio, fecha y valor dia de los arriendos de enero del 2020
select folio, fecha, valordia from arriendo where fecha <= '2020-01-31' and fecha >= '2020-01-01';
