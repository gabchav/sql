#Iniciar servicio
sudo service postgresql start

#Abrir Postgresql con permisos de administrador
sudo su -postgres psql
  
#Agregar contraseña al usuario postgres
ALTER USER postgres WITH PASSWORD '123';

#Listar base de datos
\l

#Mostrar tablas de una base de datos
\dt

#Mostrar una tabla de una base de datos
\dt nombredelatabla

#Seleccionar o cambiar base de datos
\c otrabasededatos
