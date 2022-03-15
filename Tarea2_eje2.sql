create database tarea2_eje2;
use tarea2_eje2;
create table autor(nombre_autor varchar(50), nacionalidad varchar(100), anioNacimiento date);
create table escribe(nombre_autor varchar(50), titulo varchar (50));
create table libro(titulo varchar(50), genero varchar(30), resenias varchar(200));
create table edicion(isbn int, anio date, idioma varchar (30), titulo varchar(50));
create table copia(numero_copia int, isbn int);
create table prestamo(fecha_prestamo date, fecha_devolucion date, numero_copia int);
create table usuario(dni int, email varchar(50), nombre varchar(50), apellido varchar(50), numero_copia int);
