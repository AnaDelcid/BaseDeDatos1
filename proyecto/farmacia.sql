create database farmacia
use farmacia

create table clientes(id_cliente int primary key,nombre varchar(60), colonia varchar(50), bloque varchar(50), calle varchar(50), numero_casa int,
descripcion varchar(50), telefono_celular varchar(9), telefono_fijo varchar(9), correo varchar (50),
fecha_nacimiento date, usuario varchar(50), contrasenia varchar(50))

create table categoria(id_categoria int primary key, nombre_categoria varchar(60)) 

create table laboratorio(id_laboratorio int, primary key (id_laboratorio), nombre varchar(60), direccion varchar(100), telefono varchar(9))

create table producto(id_producto int primary key, id_laboratorio int, foreign key(id_laboratorio) 
references laboratorio(id_laboratorio), nombre varchar(60), precio_compra float, precio_venta float, descripcion varchar(100), id_categoria int, foreign key(id_categoria) 
references categoria(id_categoria),
fotografia varbinary(max) not null)

create table inv_sucursal(numero_sucursal int primary key, id_producto int, foreign key(id_producto) references producto(id_producto), cantidad int)

create table compras(numero_factura int primary key, fecha_compra date, id_producto int, foreign key(id_producto) 
references producto(id_producto), cantidad int, id_cliente int, foreign key(id_cliente) references clientes(id_cliente))

create table promociones(id_promocion int primary key, fecha_inicio date, fecha_final date, porcentaje int, numero_factura int, foreign key(numero_factura) 
references compras(numero_factura))

insert into categoria values(001,'medicamento')
insert into categoria values(002,'productos cuidado personal')
insert into categoria values(003,'electronicos')
insert into categoria values(004,'lentes')
insert into categoria values(005,'abarroteria')

insert into laboratorio values(01,'dorgueria lozano', 'col. barrio abajo', '33448877')
insert into laboratorio values(0,'---', '---', '---')

Insert producto
   (id_producto, id_laboratorio, nombre, precio_compra, precio_venta, descripcion, id_categoria, fotografia) 
   Select 1,01, 'panadol',4,6,'tabletas',001, BulkColumn 
   from Openrowset( Bulk 'C:\Users\IUSUARIOI\Pictures\271.jpg', Single_Blob) as fotografia

Insert producto
   (id_producto, id_laboratorio, nombre, precio_compra, precio_venta, descripcion, id_categoria, fotografia) 
   Select 2,01, 'jarabe tos',185,190,'Jarabe',001, BulkColumn 
   from Openrowset( Bulk 'C:\Users\IUSUARIOI\Pictures\271.jpg', Single_Blob) as fotografia

Insert producto
   (id_producto, id_laboratorio, nombre, precio_compra, precio_venta, descripcion, id_categoria, fotografia) 
   Select 3,0, 'bloqueador',200,210,'bloqueador nivel 30',02, BulkColumn 
   from Openrowset( Bulk 'C:\Users\IUSUARIOI\Pictures\271.jpg', Single_Blob) as fotografia

Insert producto
   (id_producto, id_laboratorio, nombre, precio_compra, precio_venta, descripcion, id_categoria, fotografia) 
   Select 4,0, 'jugo',14,16,'jugo de naranja',005, BulkColumn 
   from Openrowset( Bulk 'C:\Users\IUSUARIOI\Pictures\271.jpg', Single_Blob) as fotografia

select * from producto

insert into clientes values(0001,'Juan zapata', 'col miraflores','17','calle principal', 9,
'cerca del parqueo','33558844', '22246978','Juanzapata@gmail.com',
'19/03/2001','juanzapata', 'jzapata1')
insert into clientes values(0002,'Andrea sanchez', 'col hato','221','calle 2', 12,
'casa de esquina','33486684', '22254748','asanchez@gmail.com',
'1/04/1999','andreasanchez', 'sanchez222')

insert into compras values(00001,'1/01/2022', 1, 1, 0001 )
insert into compras values(00002,'6/02/2022', 1, 5, 0001 )
insert into compras values(00003,'4/03/2022', 3, 4, 0001 )
insert into compras values(00004,'13/04/2022', 4, 2, 0002 )


insert into inv_sucursal values(1,1,100)
insert into inv_sucursal values(2,2,50)
insert into inv_sucursal values(3,3,70)

  

--Edad promedio de los clientes
Select avg(DATEDIFF(YEAR,fecha_nacimiento,GETDATE())) as Edad_promedio from clientes

--10 productos más vendidos
Select top 10 id_producto, count(id_producto) as cantidad from compras group by id_producto order by cantidad desc

--Cantidad de productos por categoría
select id_categoria,count(id_producto) as cantidad_categoria from producto group by id_categoria 

--Listar los productos más bajos en ventas
Select id_producto, count(id_producto) as cantidad from compras group by id_producto order by cantidad asc

--Listado de productos agrupados por categoría
Select id_producto, nombre,id_categoria from producto order by id_categoria

--Reporte mensual de ventas por sucursal
create view reporte_sucursal as select numero_sucursal,inv_sucursal.id_producto, month(compras.fecha_compra) as mes from inv_sucursal,compras where
compras.id_producto=inv_sucursal.id_producto

select * from reporte_sucursal
 
--Reporte de ventas mensual por producto
create view reporte_producto as select inv_sucursal.id_producto, month(compras.fecha_compra)
as mes, COUNT(inv_sucursal.id_producto) as cantidad from inv_sucursal,compras where
compras.id_producto=inv_sucursal.id_producto group by inv_sucursal.id_producto,compras.fecha_compra

select * from reporte_producto

--Total ventas por categoría
create view total_vc as select compras.id_producto, producto.id_categoria, month(compras.fecha_compra) as mes, 
COUNT(producto.id_categoria) as cantidad from producto,compras,categoria where
categoria.id_categoria=producto.id_categoria group by cantidad,compras.id_producto,compras.fecha_compra,producto.id_categoria

select * from total_vc 







