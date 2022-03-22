create database tarea2_eje3;
use tarea2_eje3;
create table agencia(codigo_agencia int, fecha_inicio date, ciudad varchar(100));
create table paquete_turistico(codPaquete int, pais varchar(50), precio float, codigo_agencia int);
create table compra(codPaquete int, dni int, fecha_compra date);
create table cliente(dni int, domicilio varchar(100), nyAp int);
create table forma_pago(tipo varchar(20), monto float, fecha_validez date, dni int);
create table banco(nombre varchar(50), sucursal varchar(100), tipo varchar(50));
