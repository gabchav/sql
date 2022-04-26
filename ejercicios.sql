--Crear un usuario:
CREATE USER username WITH password '123';

--Crear una base de datos y asignarla al usuario creado anteriormente:
CREATE DATABASE basededatos WITH owner = username;

--Crear una base de datos:
CREATE DATABASE basededatos;

--Asignar el usuario a la base de datos
GRANT ALL PRIVILEGES ON DATABASE basededatos TO username;

--Crear una tabla:
CREATE TABLE productos
  (
     id                INT PRIMARY KEY,
     nombre_producto   VARCHAR,
     fecha_vencimiento TIMESTAMP,
     descripcion       TEXT
  );
  
  --Agregar datos a la tabla:
  INSERT INTO peliculas
            (id_pelicula,titulo,genero,empresa,recaudacion,estreno)
  VALUES      
        (1,'Music and Lyrics','Romance','Warner Bros.','364741055',2007),
        (2,'Monte Carlo','Romance','20th Century Fox','19832',2011),
        (3,'Miss Pettigrew Lives for a Day','Comedia','Independiente','2528949',2008),
        (4,'Midnight in Paris','Romance','Sony','8744705882',2011),
        (5,'Marley and Me','Comedia','Fox','3746781818',2008),
        (6,'Mamma Mia!','Comedia','Universal','9234453864',2008),
        (7,'Made of Honor','Comedia','Sony','264906835',2008),
        (8,'Love Happens','Drama','Universal','2004444444',2009),
        (9,'Love & Other Drugs','Comedia','Fox','1817666667',2010),
        (10,'Life as We Know It','Comedia','Independiente','2530526316',2010),
        (11,'License to Wed','Comedia','Warner Bros','19802064',2007),
        (12,'Letters to Juliet','Comedia','Summit','2639333333',2010),
        (13,'Leap Year','Comedia','Universal','1715263158',2010),
        (14,'Knocked Up','Comedia','Universal','6636401848',2007),
        (15,'Killers','Accion','Lionsgate','1245333333',2010),
        (16,'Just Wright','Comedia','Fox','1797416667',2010),
        (17,'Jane Eyre','Romance','Universal','0',2011),
        (18,'It''s Complicated','Comedia','Universal','2642352941',2009),
        (19,'I Love You Phillip Morris','Comedia','Independiente','134',2010),
        (20,'High School Musical 3: Senior Year','Comedia','Disney','2291313646',2008),
        (21,'He''s Just Not That Into You','Comedia','Warner Bros','71536',2009),
        (22,'Good Luck Chuck','Comedia','Lionsgate','236768512',2007),
        (23,'Going the Distance','Comedia','Warner Bros','13140625',2010),
        (24,'Gnomeo and Juliet','Animacion','Disney','5387972222',2011),
        (25,'Ghosts of Girlfriends Past','Comedia','Warner Bros','20444',2009),
        (26,'Four Christmases','Comedia','Warner Bros','2022925',2008),
        (27,'Fireproof','Drama','Independiente','66934',2008),
        (28,'Enchanted','Comedia','Disney','4005737082',2007),
        (29,'Dear John','Drama','Sony','45988',2010),
        (30,'Beginners','Comedia','Independiente','4471875',2011),
        (31,'Across the Universe','romance','Independiente','652603178',2007),
        (32,'A Serious Man','Drama','Universal','4382857143',2009),
        (33,'A Dangerous Method','Drama','Independiente','44864475',2011),
        (34,'27 Dresses','Comedia','Fox','53436218',2008),
        (35,'(500) Days of Summer','comedia','Fox','8096',2009);

--Encuentra y muestra el título de cada película. 
SELECT titulo FROM peliculas 

--Encuentra y muestra la empresa de cada película. 
SELECT empresa FROM peliculas 

--Encuentra y muestra el título y la empresa de cada película. 
SELECT titulo,empresa FROM peliculas

--Encuentra y muestra el título y el estreno de cada película. 
SELECT titulo,estreno FROM peliculas 

--Encuentra y muestra toda la información de cada película. 
SELECT * FROM peliculas  

--Encuentra y muestra el título, género y el estreno de las películas hechas en el año 2008. 
SELECT titulo,genero,estreno FROM peliculas WHERE  estreno = 2018

--Encuentra y muestra el título y la descripción de las películas estrenadas entre los años 2007 y 2009, de este resultado debes mostrar sólo 5 registros.
SELECT * FROM peliculas WHERE  estreno BETWEEN 2007 AND 2009 LIMIT  5 
