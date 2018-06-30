-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-06-30 13:53:37.993
create database caso6
use caso6

-- tables
-- Table: FechaPrestamo
CREATE TABLE FechaPrestamo (
    id_FecPrestamo int  NOT NULL,
    fech_FecPrestamo date  NOT NULL,
    Pelicula_id_Pelicula int  NOT NULL,
    Socio_id_Socio int  NOT NULL,
    CONSTRAINT FechaPrestamo_pk PRIMARY KEY (id_FecPrestamo)
);

-- Table: ListaEspera
CREATE TABLE ListaEspera (
    id_Espera int  NOT NULL,
    Socio_id_Socio int  NOT NULL,
    Pelicula_id_Pelicula int  NOT NULL,
    CONSTRAINT ListaEspera_pk PRIMARY KEY (id_Espera)
);

-- Table: Pelicula
CREATE TABLE Pelicula (
    id_Pelicula int  NOT NULL,
    nom_Pelicula varchar(50)  NOT NULL,
    genero_Pelicula varchar(20)  NOT NULL,
    costo_Pelicula int  NOT NULL,
    CONSTRAINT Pelicula_pk PRIMARY KEY (id_Pelicula)
);

-- Table: Socio
CREATE TABLE Socio (
    id_Socio int  NOT NULL,
    nom_Socio varchar(50)  NOT NULL,
    ape_Socio varchar(50)  NOT NULL,
    edad_Socio int  NOT NULL,
    fecnac_Socio date  NOT NULL,
    direc_Socio varchar(50)  NOT NULL,
    telefono_Socio varchar(50)  NOT NULL,
    CONSTRAINT Socio_pk PRIMARY KEY (id_Socio)
);

-- foreign keys
-- Reference: FecPrestamo_Pelicula (table: FechaPrestamo)
ALTER TABLE FechaPrestamo ADD CONSTRAINT FecPrestamo_Pelicula
    FOREIGN KEY (Pelicula_id_Pelicula)
    REFERENCES Pelicula (id_Pelicula)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FecPrestamo_Socio (table: FechaPrestamo)
ALTER TABLE FechaPrestamo ADD CONSTRAINT FecPrestamo_Socio
    FOREIGN KEY (Socio_id_Socio)
    REFERENCES Socio (id_Socio)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: ListaEspera_Pelicula (table: ListaEspera)
ALTER TABLE ListaEspera ADD CONSTRAINT ListaEspera_Pelicula
    FOREIGN KEY (Pelicula_id_Pelicula)
    REFERENCES Pelicula (id_Pelicula)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: ListaEspera_Socio (table: ListaEspera)
ALTER TABLE ListaEspera ADD CONSTRAINT ListaEspera_Socio
    FOREIGN KEY (Socio_id_Socio)
    REFERENCES Socio (id_Socio)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.


