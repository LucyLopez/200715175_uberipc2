USE UBER
CREATE TABLE USUARIO(
ID_USUARIO INT PRIMARY KEY,
ID_NOMBRE_USUARIO VARCHAR(50) NOT NULL, 
CONTRASENA VARCHAR(50) NOT NULL
)
CREATE TABLE CONDUCTOR(
id_conductor int primary key,
pass varchar(50) not null,
cant_viajes int not null,
tipo int not null,
auto int null
)
CREATE TABLE AUTO (
id_auto int primary key,
tipo int not null,
capacidad int not null,
modelo int not null,
caracteristica int not null
)
CREATE TABLE CARACTERISTICA(
id_carctreristica int primary key,
caracteristica varchar(50) not null
)
CREATE TABLE SERVICIO(
id_servicio int primary key,
especificacion int not null)
CREATE TABLE SOLICITAR_sERVICIO(
id_solocitar_servicio int primary key,
origen varchar(50) not null,
destino varchar(50) not null
)
ALTER TABLE SERVICIO ADD caracteristica varchar(50) not null
ALTER TABLE SERVICIO CHANGE caracteristica carac varchar(50) null 
ALTER TABLE SERVICIO ADD conductor int not null 
ALTER TABLE SERVICIO FOREIGN KEY CONSTRAINT (conductor) REFERENCES AUTO(id_auto)