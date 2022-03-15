create database tarea2_eje4;
use tarea2_eje4;
create table producto(codigo_producto int, precio float, dimensiones varchar(50));
create table cupon(numero_cupon int, hora_vencimiento time, importe float, fecha date, codigo_producto int);
create table compra(fecha_compra date, hora_compra time, numero_cupon int, forma_pago varchar(20), dni int);
create table cliente(dni int, nombre varchar(50), email varchar(50), telefono varchar(10));
create table ofrecido(codigo_producto int, codigo_proveedor int);
create table proveedor(codigo_proveedor int, razon_social float, telefono varchar(10), cuit int);