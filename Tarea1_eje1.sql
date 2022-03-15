create database tarea1_eje1;
use tarea1_eje1;
create table alumno(numero_cuenta int, nombre varchar (100), telefono varchar (10), fechaNacimiento date);
create table matricula(codigo_matricula int, numero_cuenta int, codigo_asignatura int);
create table asignatura(codigo_asignatura int, nombre varchar (100), unidades_valorativas int);
create table docente(id_docente int, nombre varchar (100), telefono varchar(10), codigo_asignatura int);