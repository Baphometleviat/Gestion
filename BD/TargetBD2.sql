##Puerto3306
drop database if exists  gestion;
create database if not exists gestion;
use gestion;

##Principales
create table if not exists tarjetas(idTarjeta int(2) auto_increment primary key, descripcionTarjeta nvarchar(50), total int(10), fechaCorte nvarchar(50));
create table if not exists tipo_op(idTipo_op int(2) primary key, descripcionTipo_op nvarchar(25));

##Relacional
create table if not exists operaciones(folio int(10) auto_increment primary key, idTarjeta int(2), tipo_op int(2), descripcion nvarchar(100), monto int(10));
alter table operaciones add foreign key(idTarjeta) references tarjetas(idTarjeta);
alter table operaciones add foreign key(tipo_op) references tipo_op(idTipo_op);

##inserciones
insert into tipo_op(idTipo_op, descripcionTipo_op) values(1, 'Deposito');
insert into tipo_op(idTipo_op, descripcionTipo_op) values(2, 'Retiro');
insert into tipo_op(idTipo_op, descripcionTipo_op) values(3, 'Compra');