create database tarea1_eje4;
use tarea1_eje4;
create table camionero(dni int, nombre varchar (100), telefono varchar (10), direccion varchar(150), salario float);
create table conduce(dni int, id int, matricula varchar(15), tipo varchar (25), potencia float, modelo varchar (50));
create table camion(matricula int, tipo varchar (100), protencia float, modelo varchar(100));
create table paquete(codigo_paquete int, descripcion varchar(100), destinatario varchar (100), descipcion_destinatario varchar(100), codigo_departamento int, dni int);
create table departamento(codigo_departamento int, nombre varchar(100));
