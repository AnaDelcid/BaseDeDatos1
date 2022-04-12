create database tarea4;
use tarea4;

create table proveedor(id_proveedor int primary key, nombre varchar(40), categoría varchar(30), ciudad varchar(30))
create table producto(id_producto int primary key, descripción varchar(100), ciudad varchar(30), precio float)
create table cliente(id_cliente int primary key, nombre varchar(40), ciudad varchar(30))
create table pedido(id_pedido int primary key, id_producto int, foreign key (id_producto) references producto(id_producto), id_cliente int, foreign key (id_cliente) references cliente(id_cliente), id_proveedor int, foreign key (id_proveedor) references proveedor(id_proveedor), fecha_pedido date, cantidad int, precio_total float)
create table inventario(id_inventario int primary key, id_producto int, foreign key (id_producto) references producto(id_producto), fecha date, cantidad int)

INSERT INTO proveedor (id_proveedor, nombre, categoría, ciudad)
VALUES (1, 'Jose Catro', 'Salud', 'El Progreso');
INSERT INTO proveedor (id_proveedor, nombre, categoría, ciudad)
VALUES (2, 'Armando Calderon', 'Deporte', '	Comayagua');
INSERT INTO proveedor (id_proveedor, nombre, categoría, ciudad)
VALUES (3, 'Alex Ramos', 'Belleza', 'Choluteca');
INSERT INTO proveedor (id_proveedor, nombre, categoría, ciudad)
VALUES (4, 'Raul Lopez', 'medicina', 'Puerto Cortés');
INSERT INTO proveedor (id_proveedor, nombre, categoría, ciudad)
VALUES (5, 'Marcos Valencia', 'alimentos', 'Danlí');

INSERT INTO producto(id_producto, descripción, ciudad, precio)
VALUES (1001, 'pan integral', 'Danlí', 30.2);
INSERT INTO producto(id_producto, descripción, ciudad, precio)
VALUES (1002, 'acetaminofen', 'Puerto Cortés', 3);
INSERT INTO producto(id_producto, descripción, ciudad, precio)
VALUES (1003, 'perfume avon', 'Choluteca', 700);
INSERT INTO producto(id_producto, descripción, ciudad, precio)
VALUES (1004, 'pesas', 'Comayagua', 1500);
INSERT INTO producto(id_producto, descripción, ciudad, precio)
VALUES (1005, 'proteina', 'El Progreso', 800);

INSERT INTO cliente(id_cliente, nombre, ciudad)
VALUES (200001, 'Maria Cruz', 'Puerto Cortés');
INSERT INTO cliente(id_cliente, nombre, ciudad)
VALUES (200002, 'Carlos Ramirez', 'Puerto Cortés');
INSERT INTO cliente(id_cliente, nombre, ciudad)
VALUES (200003, 'Jesus Aguilera', 'Puerto Cortés');
INSERT INTO cliente(id_cliente, nombre, ciudad)
VALUES (200004, 'Esperanza Garcia', 'El Progreso');
INSERT INTO cliente(id_cliente, nombre, ciudad)
VALUES (200005, 'Ramon Castellanos', 'Choluteca');

INSERT INTO pedido(id_pedido, id_producto, id_cliente, id_proveedor, fecha_pedido, cantidad, precio_total)
VALUES (50000001, 1001, 200003, 1, '2022-2-1', 1, 30.2);
INSERT INTO pedido(id_pedido, id_producto, id_cliente, id_proveedor, fecha_pedido, cantidad, precio_total)
VALUES (50000002, 1002, 200002, 5, '2022-3-11', 2, 6);
INSERT INTO pedido(id_pedido, id_producto, id_cliente, id_proveedor, fecha_pedido, cantidad, precio_total)
VALUES (50000003, 1004, 200002, 4, '2022-4-10', 3, 9);
INSERT INTO pedido(id_pedido, id_producto, id_cliente, id_proveedor, fecha_pedido, cantidad, precio_total)
VALUES (50000004, 1005, 200001, 2, '2022-1-4', 1, 800);
INSERT INTO pedido(id_pedido, id_producto, id_cliente, id_proveedor, fecha_pedido, cantidad, precio_total)
VALUES (50000005, 1001, 200005, 2, '2022-3-25', 5, 151);

INSERT INTO inventario(id_inventario, id_producto, fecha, cantidad)
VALUES (1111111111, 1001,'2022-1-5', 100);
INSERT INTO inventario(id_inventario, id_producto, fecha, cantidad)
VALUES (1111111112, 1002,'2022-1-5', 150);
INSERT INTO inventario(id_inventario, id_producto, fecha, cantidad)
VALUES (1111111113, 1003,'2022-1-5', 120);
INSERT INTO inventario(id_inventario, id_producto, fecha, cantidad)
VALUES (1111111114, 1004,'2022-1-5', 100);
INSERT INTO inventario(id_inventario, id_producto, fecha, cantidad)
VALUES (1111111115, 1005,'2022-1-5', 150);
--1
select id_proveedor, nombre from proveedor where id_proveedor=1;
--2
select nombre from cliente INNER JOIN pedido on pedido.id_cliente=cliente.id_cliente where pedido.id_proveedor=1;
--3
select * from proveedor INNER JOIN pedido on proveedor.id_proveedor=pedido.id_proveedor INNER JOIN producto on pedido.id_producto=producto.id_producto having producto.precio> AVG(producto.precio) GROUP BY promedio;

select*from proveedor inner join pedido on pedido.id_proveedor=proveedor.id_proveedor 