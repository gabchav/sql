#Iniciar servicio
sudo service postgresql start

#Abrir Postgresql con permisos de administrador
sudo su -postgres psql
  
#Agregar contraseña al usuario postgres
ALTER USER postgres WITH PASSWORD '123';

#Crear un usuario:
CREATE USER username WITH password '123';

#Crear una base de datos y asignarla al usuario creado anteriormente:
CREATE DATABASE basededatos WITH owner = username;

#Conectarse a la base datos con el usuario creado
psql -U username -h 127.0.0.1 -d basededatos

#Crear una base de datos:
CREATE DATABASE basededatos;

#Asignar el usuario a la base de datos
GRANT ALL PRIVILEGES ON DATABASE basededatos TO username;

#Asignar super privelegios
ALTER USER username WITH SUPERUSER;

#Eliminar base datos
DROP DATABASE basededatos;

#Importar una base datos
psql username -h servidor -d basededatos < respaldo.sql

#Listar base de datos
\l

#Mostrar tablas de una base de datos
\dt

#Mostrar una tabla de una base de datos
\dt nombredelatabla

#Seleccionar o cambiar base de datos
\c otrabasededatos

#Listar usuarios
\du

#Eliminar usuario
DROP USER nomusr

#Obtener ayuda
\?

#Salir de postgres
\q

#Cambiar Puerto o Conectarse a un servidor diferente
# se debe cambiar en el archivo postgresql.conf y pg_hba.conf
