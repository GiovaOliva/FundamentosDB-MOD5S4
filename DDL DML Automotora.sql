--Listamos la tabla Empresa para ver sus columnas y agregar una empresa
select * from empresa;
insert into empresa values('9888777-6', 'GioMotors', 'Los Jacintos #444, Peor Es Nada', '+5698765421', 'gmotors@gmail.com', 'www.gmotors.cl');
--Listamos la tabla tipovehiculo para ver sus columnas y agregar 2 tipos de vehiculo
select * from tipovehiculo;

insert into tipovehiculo values (1, 'camioneta');
insert into tipovehiculo values (2, 'tractor');

--Listamos la tabla cliente para ver sus columnas y agregar 3 clientes
select * from cliente;

insert into cliente values ('10192333-7', 'Pedro Peres', 'pperes@gmail.com', 'Los Peraltos #123, Amsterdam #124, Chiloe', '+56988888888', 'A');
insert into cliente values ('11123234-5', 'Transito Rodriguez', 'dontransito@gmail.com', 'Av Del Carmen #77, Punta Arenas', '+56977777777', 'B');
insert into cliente values ('12333445-6', 'Jaime del Carmen', 'jdelcarmen@gmail.com', 'Av Del Carmen #74, Punta Arenas', '+56955555555', 'C');

--Listamos la tabla marca para ver sus columnas y agregar 2 marcas
select * from marca;

insert into marca values (1, 'Dodge');
insert into marca values (2, 'Mercedes-Benz');

--Listamos la tabla vehiculo para ver sus columnas y agregar 5 vehiculos
select * from vehiculo;

insert into vehiculo values (1, 'CGPT44', 'RAM 1500','Rojo', 27000000, 4, 1, 1);
insert into vehiculo values (2,'GGWP55', 'RAM 2500', 'Negro', 48000000, 5, 1, 1);
insert into vehiculo values (3, 'EASY77', 'U216', 'Verde', 60000000, 4, 2, 2);
insert into vehiculo values (4, 'GLHF88', 'U310', 'Azul', 70000000, 5, 2, 2);
insert into vehiculo values (5, 'GGEZ33', 'RAM 3000', 'Plateado', 60000000, 5, 1, 1);

--Listamos la tabla cliente para ver su contenido y eliminar el ultimo cliente
select * from cliente;

delete from cliente where rut = '12333445-6';

--Listamos la tabla venta para ver su contenido e ingresar una venta para cada cliente
select * from venta;

insert into venta values (123456, '2020-11-02', 70000000, 4, '10192333-7');
insert into venta values (123457, '2021-05-22', 60000000, 5, '11123234-5');

--Listamos la tabla cliente para modificar el nombre del segundo cliente

select * from cliente;

update cliente set nombre= 'Transito Rorfirez' where rut = '11123234-5';

--Listamos todas las ventas
select * from venta;

--Listamos las ventas del primer cliente

select * from venta where cliente_rut = '10192333-7';

--Listamos las patentes de todos los vehiculos

select patente from vehiculo;

 


