/*Creacion de vistas y inner joinn*/


/*visualizar nombre de la pelicula y su genero*/
 create view vw_Peli
 as

select 
nom_Pelicula,genero_Pelicula from Pelicula

select * from vw_Peli

/*visualizar nombre del socio, su telefono y su edad*/
 create view vw_socio
 as
select 
nom_Socio,edad_Socio,telefono_Socio from Socio

select * from vw_socio

/*visualizar el id del socio, el nombre , su direccion, su telefono */ 

 create view vw_soc
 as
select 
id_Socio,nom_Socio,direc_Socio,telefono_Socio from Socio





  /*Listar el nombre del autor, el libro, genero y pais respectivo  en una vista llamada vwDatosAutor*/
 create VIEW vwSocio
As
SELECT Socio.nomSocio as 'genero', count(Socio_idSocio) AS 'total'
FROM Socio
        INNER JOIN 
        ON Pelicula.Socio_idSocio = Socio.idSocio
        GROUP BY Socio.nomSocio
        go
 
 SELECT * from vwSocio
 go