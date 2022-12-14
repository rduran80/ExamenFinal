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

	constraint PK_idarticulo primary key (id)
)

select * from Articulo

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
	drop proc insertarArticulo

exec insertarArticulo 301,300,'Coca cola',1200,800,25
select * from tipoArticulo 

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

create proc obtArticulos
	as
	begin
	select codArticulo as Codigo,
	codTipoArticulo as [Tipo Articulo],
	descArticulo as Descripcion,
	precioArticulo as Precio,
	costo_Articulo as Costo,
	cantidadArticulo as Cantidad
	from articulo
	end
exec obtArticulos

create proc obtArticulosCod
	@codArticulo int
	as
	begin
	select
	a.codTipoArticulo as [Tipo Articulo],
	t.descTipoArticulo as [Descripcion Tipo Articulo],
	a.descArticulo as Descripcion,
	a.costo_Articulo * cantidadArticulo as [Costo Inventario],
	precioArticulo * cantidadArticulo as [Proyeccion Ganancias],
	(precioArticulo * cantidadArticulo) - (a.costo_Articulo * cantidadArticulo)
	as Ganancias
	from articulo a
	inner join tipoArticulo t
	on t.codTipoArticulo = a.codTipoArticulo where a.codArticulo = @codArticulo
	end

exec obtArticulosCod 301

create proc costoInventario
	as
	begin
	select sum(costo_Articulo * cantidadArticulo) as [Costo Inventario]

	from articulo
	end

exec costoInventario

	@codArticulo int,
	@codTipoArticulo int,
	@descArticulo varchar(50),
	@precioArticulo money,
	@costo_Articulo money,
	@cantidadArticulo int

create proc ganancias
	as
	begin
	select sum(precioArticulo * cantidadArticulo) - sum(costo_Articulo * cantidadArticulo) as [Total Ganancias]
	from articulo
	end

exec ganancias

--tabla tipoArticulo
create table tipoArticulo
(
	id int identity (100,1),
	codTipoArticulo int not null,
	descTipoArticulo varchar(50)not null,

	constraint PK_idCodArticulo primary key (codTipoArticulo),
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

create proc eliminarTipoArticulo
	@codTipoArticulo int
	as
	begin
	delete tipoArticulo where codTipoArticulo=@codTipoArticulo
	end

create proc obtTipoArticulo
	as
	begin
	select     
	id as ID,
	codTipoArticulo as [Tipo Articulo],
	descTipoArticulo as [Descripcion Tipo]
	from tipoArticulo
	end

exec obtTipoArticulo

--tabla usuario
create table usuario
(
	codUsuario int identity (1000,1),
	nombreUsuario varchar(50)not null,
	tipoUsuario int not null,
	claveUsuario varchar(50)not null,

	constraint PK_idusuario primary key (codUsuario),
	constraint FK_tipoUsuario foreign key (tipoUsuario) references tipoUsuario(tipoUsuario),
	constraint UC_nombreUsuario unique(nombreUsuario)
)

insert into usuario values('Roy',1,'123'),('Ana',2,'456')
select * from usuario

--Procedimientos usuario
create proc consultaUsuario
	as
	begin
	select codUsuario as Codigo,nombreUsuario as Nombre,tipoUsuario as Tipo, claveUsuario as Clave from usuario
	end

create proc obtUsuario
	@nombreUsuario varchar(50),
	@claveUsuario varchar(50)
	as
	begin
	select codUsuario as Codigo,nombreUsuario as Usuario,	tipoUsuario as [Tipo Usuario],	claveUsuario as Clave
	from usuario where nombreUsuario=@nombreUsuario and claveUsuario=@claveUsuario
	end

exec obtUsuario 'Roy',123

create proc insertarUsuario
	@nombreUsuario varchar(50),
	@tipoUsuario int,
	@claveUsuario varchar(50)
	as
	begin
	insert into usuario values(@nombreUsuario,@tipoUsuario,@claveUsuario)
	end

create proc actualizarUsuario
	@nombreUsuario varchar(50),
	@tipoUsuario int,
	@claveUsuario varchar(50)
	as
	begin
	update usuario set nombreUsuario=@nombreUsuario,tipoUsuario=@tipoUsuario,claveUsuario=@claveUsuario where nombreUsuario=@nombreUsuario
	end
	
create proc eliminarUsuario
	@nombreUsuario varchar(50)
	as
	begin
	delete usuario where nombreUsuario=@nombreUsuario
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
insert into tipoUsuario values(1,'Administrador'),(2,'Usuario')

--Procedimientos
create proc obtTipoUsuario
	as
	begin
	select id as ID, tipoUsuario as [Tipo Usuario],descTipoUsuario as Descripcion from tipoUsuario
	end

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

create proc obtArticuloAuditoria
	as
	begin
	select id as ID,Descripcion,Usuario,Tipo,Fecha from Articulo_Auditoria
	end 

create trigger Trigger_Articulo_Auditoria
	on articulo
		after Insert, Delete

		as
		begin
		SET IDENTITY_INSERT Articulo_Auditoria ON;
		insert into Articulo_Auditoria (id, Descripcion,Usuario,Tipo,Fecha)
		select i.id, i.descArticulo, 'Administrador', 'Ingresado',GETDATE() from inserted i
		union all
		select d.id, d.descArticulo, 'Administrador', 'Eliminado',GETDATE() from inserted d
		end

exec Trigger_articulo_Auditoria
drop trigger Trigger_Articulo_Auditoria

