create database ExamenFinal

use ExamenFinal

--tabla articulo
create table articulo
(
	codArticulo int not null,
	codTipoArticulo int not null,
	descArticulo varchar(50)not null,
	precioArticulo money not null,
	costo_Articulo money not null,
	cantidadArticulo int

	constraint PK_idarticulo primary key (codTipoArticulo)
)
--Procedimientos articulo


--tabla tipoArticulo
create table tipoArticulo
(
	id int identity (100,1),
	codTipoArticulo int not null,
	descTipoArticulo varchar(50)not null,

	constraint PK_idCodArticulo primary key (id),
	constraint FK_CodTipoArticulo foreign key (codTipoArticulo) references articulo(codTipoArticulo),
	constraint UC_codTipoArticulo unique(codTipoArticulo)
)
--Procedimientos tipoArticulo

--tabla usuario
create table usuario
(
	id int identity (1,1),
	codUsuario int not null,
	nombreUsuario varchar(50)not null,
	tipoUsuario int not null,
	claveUsuario varchar(50)not null,

	constraint PK_idusuario primary key (codUsuario),
	constraint FK_tipoUsuario foreign key (tipoUsuario) references tipoUsuario(tipoUsuario),
)
insert into usuario values(100,'Roy',1,'123'),(101,'Ana',2,'456')
select * from usuario

--Procedimientos usuario

--tabla tipoUsuario
create table tipoUsuario
(
	id int identity (1,1),
	tipoUsuario int,
	descTipoUsuario varchar(50)not null,

	constraint PK_tipoUsuario primary key (tipoUsuario),
	constraint UC_tipoUsuario unique(tipoUsuario)
	   
)
--Procedimientos

select * from tipoUsuario
insert into tipoUsuario values(1,'Administrador'),(2,'Usuario')