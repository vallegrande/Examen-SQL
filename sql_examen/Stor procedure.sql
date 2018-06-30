
--eliminar regisroa atavés de un sp

alter procedure sp_Socio
@Codigo varchar (1)

AS

BEGIN

if (select Socio.idSocio from Socio where Socio.idSocio = @codigo) IS  null

 select 'El codigo no exixte'as 'Resultado' 

delete from Socio
wHERE Socio.idSocio =@Codigo
end 

EXEC sp_DeleteSocio @Codigo =1


select * from Socio

--crear un sp que permita listar los registros de la tabla genero

create procedure sp_LisPelicu
AS
BEGIN
 select * from Pelicula


end

exec sp_LisPelicu

--crear un store procedure que permita listar los registros de la tabla cliente
create procedure sp_LisSocio
AS
BEGIN
 select * from Socio


end

exec sp_LisSocio


