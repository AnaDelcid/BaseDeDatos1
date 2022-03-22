create database tarea1_eje2;
use tarea1_eje2;
create table ciudadano(id int, nombre varchar (100), telefono varchar (10), salario float, codigo_localidad int);
create table localidad(codigo_localidad int, nombre varchar(10), codigo_municipio int);
create table municipio(codigo_municipio int, nombre varchar (100), codigo_departamento int);
create table departamento(codigo_departamento int, nombre varchar (100));