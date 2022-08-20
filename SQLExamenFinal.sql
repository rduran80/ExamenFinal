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

	constraint PK_idarticulo primary key (codArticulo)

)

--tabla tipoArticulo
create table tipoArticulo
(
	id int identity (100,1),
	codTipoArticulo int not null,
	descTipoArticulo varchar(50)not null,

	constraint PK_idCodArticulo primary key (codTipoArticulo),
	constraint FK_CodTipoArticulo foreign key (id) references articulo(codTipoArticulo),
	constraint UC_codTipoArticulo unique(codTipoArticulo)
)

--tabla usuario
create table usuario
(
	id int identity (1,1),
	codUsuario int not null,
	nombreUsuario varchar(50)not null,
	tipoUsuario int not null,
	claveUsuario varchar(50)not null,

	constraint PK_idusuario primary key (id)
)

--tabla tipoUsuario
create table tipoUsuario
(
	id int identity (1,1),
	descTipoUsuario varchar(50)not null,

	constraint PK_idtipoUsuario primary key (id),
	constraint FK_idtipoUsuario foreign key (id) references usuario(tipoUsuario)

)