create database tarea1_eje6;
use tarea1_eje6;
create table ciudad(codigo_postal int, nombre varchar (100));
create table farmacia(id_farmacia int, diasGuardia varchar(50), calle varchar (50),direccion varchar (100), numero int, codigo_postal int);
create table vende(codigo_venta int, id_farmacia int, codigo_medicamento int);
create table medicamento(codigo_medicamento int, precio float, presentacion varchar(50), nombre varchar (50), codigo_laboratorio int);
create table contiene(codigo_medicamento int, codigo_componente int);
create table compomente(codigo_componente int, cantidad float, nombre_cientifico varchar (50), nombre_comercial varchar (50));
create table laboratorio(codigo_laboratorio int, apellido_duenio varchar (30), domicion varchar(100), nombre varchar (50), nombre_duenio varchar(50));
create table accion_terapeutica(codigo_medicamento int, nombre varchar (50), tiempo varchar(20));
create table empleado(dni int, nombre varchar(50), fecha_ingreso date, enfermedades varchar (100), id_farmacia int);

