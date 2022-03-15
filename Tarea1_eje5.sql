create database tarea1_eje5;
use tarea1_eje5;
create table cliente(id int, nombre varchar (100), apellido varchar (10), direccion varchar(150), fechaNacimiento date);
create table compra(codigo_compra int, id int, codigo_producto int);
create table producto(codigo_producto int, nombre varchar (100), precio_unitario float, rtn int);
create table proveedor(rtn int, nombre varchar(100), direccion varchar (100));

