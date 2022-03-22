create database tarea1_eje7;
use tarea1_eje7;
create table autor(codigo_autor int, nombre varchar (100));
create table libro(codigo_libro int, isbn int, numero_paginas int, titulo varchar (50), editorial varchar(50));
create table escribe(codigo_autor int, codigo_libro int, titulo varchar (50));
create table ejemplar(codigo_ejemplar int, localizacion varchar(50), codigo_libro int);
create table usuario(codigo_usuario int, telefono varchar (10), nombre varchar (50), direccion varchar(100), codigo_ejemplar int);
