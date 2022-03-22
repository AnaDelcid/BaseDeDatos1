create database tarea1_eje3;
use tarea1_eje3;
create table cliente(id int, nombre varchar (100), telefono varchar (10), domicilio varchar(150));
create table contratar(codigo_contrato int, id int, codigo_evento int);
create table eventos(codigo_evento int, codigo_presentador int, codigo_animador int, precio float, harario varchar(100), descripcion varchar (150));
create table presentador(dni int, identidicador_presentador int, nombre varchar(100), anio_comienzo date);
create table animador(identidicador_animador int, id int, nombre varchar(100), codigo_disfraz int);
create table disfraz(codigo_disfraz int, personaje varchar(100), precio float);