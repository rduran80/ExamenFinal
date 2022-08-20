create database ExamenFinal

use ExamenFinal

--tabla articulo
create table articulo
(
	id int identity(1,1),
	codArticulo int not null,
	codTipoArticulo int not null,
	descArticulo varchar(50)not null,
	precioArticulo money not null,
	costo_Articulo money not null,
	cantidadArticulo int

	constraint PK_idarticulo primary key (codTipoArticulo)
)

--Procedimientos articulo
create proc insertarArticulo
	@codArticulo int,
	@codTipoArticulo int,
	@descArticulo varchar(50),
	@precioArticulo money,
	@costo_Articulo money,
	@cantidadArticulo int
	as
	begin
	insert into articulo values(@codArticulo,@codTipoArticulo,@descArticulo,@precioArticulo,@costo_Articulo,@cantidadArticulo)
	end

create proc eliminarArticulo
	@codArticulo int
	as
	begin
	delete articulo where codArticulo = @codArticulo
	end

create proc actualizarArticulo
	@codArticulo int,
	@codTipoArticulo int,
	@descArticulo varchar(50),
	@precioArticulo money,
	@costo_Articulo money,
	@cantidadArticulo int
	as
	begin
	update articulo set codArticulo=@codArticulo,codTipoArticulo=@codTipoArticulo,descArticulo=@descArticulo,
	precioArticulo=@precioArticulo,costo_Articulo=@costo_Articulo,cantidadArticulo=@cantidadArticulo where codArticulo=@codArticulo
	end

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
create proc insertarTipoArticulo
	@codTipoArticulo int,
	@descTipoArticulo varchar(50)
	as
	begin
	insert into tipoArticulo values(@codTipoArticulo,@descTipoArticulo)
	end

create proc actualizarTipoArticulo
    @id int,
	@codTipoArticulo int,
	@descTipoArticulo varchar(50)
	as
	begin
	update tipoArticulo set codTipoArticulo=@codTipoArticulo,descTipoArticulo=@descTipoArticulo where id = @id
	end
	drop proc actualizarTipoArticulo

create proc eliminarTipoArticulo
	@codTipoArticulo int
	as
	begin
	delete tipoArticulo where codTipoArticulo=@codTipoArticulo
	end

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

create proc insertarUsuario
	@codUsuario int,
	@nombreUsuario varchar(50),
	@tipoUsuario int,
	@claveUsuario varchar(50)
	as
	begin
	insert into usuario values(@codUsuario,@nombreUsuario,@tipoUsuario,@claveUsuario)
	end

create proc actualizarUsuario
    @id int, 
	@codUsuario int,
	@nombreUsuario varchar(50),
	@tipoUsuario int,
	@claveUsuario varchar(50)
	as
	begin
	update usuario set codUsuario=@codUsuario,nombreUsuario=@nombreUsuario,tipoUsuario=@tipoUsuario,claveUsuario=@claveUsuario where id=@id
	end

create proc eliminarUsuario
	@codUsuario int
	as
	begin
	delete usuario where codUsuario=@codUsuario
	end

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
create proc insertarTipoUsuario
	@tipoUsuario int,
	@descTipoUsuario varchar(50)	
	as
	begin
	insert into tipoUsuario values(@tipoUsuario,@descTipoUsuario)
	end 

create proc actualizarTipoUsuario
	@id int,
	@tipoUsuario int,
	@descTipoUsuario varchar(50)	
	as
	begin
	update tipoUsuario set tipoUsuario=@tipoUsuario,descTipoUsuario=@descTipoUsuario
	end 

create proc eliminarTipoUsuario
	@id int	
	as
	begin
	delete tipoUsuario where id=@id
	end 

--Tabla auditoria articulo
create table Articulo_Auditoria
(
	id int identity(1,1),
	Descripcion varchar(50),
	Usuario varchar(50),
	Tipo varchar(20),
	Fecha Datetime
)
drop table articulo_Auditoria
select * from Articulo_Auditoria

create trigger Trigger_Articulo_Auditoria
	on articulo
		after Insert, Delete

		as
		begin
		insert into Articulo_Auditoria (id, Descripcion,Usuario,Tipo,Fecha)
		select i.id, i.Descripcion, 'Administrador', 'Ingresado',GETDATE() from inserted i
		union all
		select d.id, d.Descripcion, 'Administrador', 'Eliminado',GETDATE() from inserted d
		end

exec Trigger_articulo_Auditoria
select * from tipoUsuario
insert into tipoUsuario values(1,'Administrador'),(2,'Usuario')