create database if not exists libreria;

USE libreria;

DROP TABLE IF EXISTS libros;
DROP TABLE IF EXISTS autores;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS editoriales;
DROP TABLE IF EXISTS libros_autores;

CREATE TABLE autores(
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  edad INT NOT NULL
);

CREATE TABLE categorias(
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100) NOT NULL,
UNIQUE KEY (titulo)
);

CREATE TABLE editoriales(
  id_editorial INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100) NOT NULL,
  UNIQUE KEY (titulo)
);

CREATE TABLE promociones(
  id_promocion INT AUTO_INCREMENT PRIMARY KEY,
  descuento INT NOT NULL
);

CREATE TABLE pedidos(
  id_pedido INT AUTO_INCREMENT PRIMARY KEY,
  costo_total INT NOT NULL
);

CREATE TABLE clientes(
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE libros(
  id_libro INT AUTO_INCREMENT PRIMARY KEY,
  id_categoria INT,
  id_editorial INT,
  titulo VARCHAR(100) NOT NULL,
  precio INT NOT NULL,
  FOREIGN KEY (id_editorial) REFERENCES editoriales(id_editorial) ON UPDATE CASCADE,
  FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE libros_autores(
  id_libro INT,
  id_autor INT,
  PRIMARY KEY (id_libro, id_autor),
  FOREIGN KEY (id_libro) REFERENCES libros(id_libro),
  FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

INSERT INTO categorias(titulo) VALUES
  ('Cocina'),('Infantiles'), ('Ficcion'), ('Nutricion'), ('Comunicacion'), ('Autoayuda'), ('Narrativa'), ('Filosofia'), ('Viajes'), ('Medicina');

insert into autores (id_autor, nombre, edad) values (1, 'Alexine Chamberlen', 60);
insert into autores (id_autor, nombre, edad) values (2, 'Sashenka Winterflood', 76);
insert into autores (id_autor, nombre, edad) values (3, 'Boony Maccaig', 43);
insert into autores (id_autor, nombre, edad) values (4, 'Benoit Farlam', 76);
insert into autores (id_autor, nombre, edad) values (5, 'Tallia Skerme', 78);
insert into autores (id_autor, nombre, edad) values (6, 'Farley Ealles', 39);
insert into autores (id_autor, nombre, edad) values (7, 'Buddy Cromett', 57);
insert into autores (id_autor, nombre, edad) values (8, 'Hesther Kubicki', 70);
insert into autores (id_autor, nombre, edad) values (9, 'Markos Skewes', 68);
insert into autores (id_autor, nombre, edad) values (10, 'Mic O''Henecan', 39);

insert into editoriales (id_editorial, titulo) values (1, 'Helodium Moss');
insert into editoriales (id_editorial, titulo) values (2, 'Antenoron');
insert into editoriales (id_editorial, titulo) values (3, 'Donner Lake Lupine');
insert into editoriales (id_editorial, titulo) values (4, 'Devils Gate Twinpod');
insert into editoriales (id_editorial, titulo) values (5, 'Silverskin Lichen');
insert into editoriales (id_editorial, titulo) values (6, 'Ladies'' Tobacco');
insert into editoriales (id_editorial, titulo) values (7, 'Beaked Mock Vervain');
insert into editoriales (id_editorial, titulo) values (8, 'Sweetbush');
insert into editoriales (id_editorial, titulo) values (9, 'Jaboticaba');
insert into editoriales (id_editorial, titulo) values (10, 'Red Pricklypoppy');


insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (1, 3, 6, 'Darwin''s Nightmare', '$791.75');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (2, 8, 5, 'Onibi: The Fire Within', '$660.67');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (3, 1, 8, 'Frozen River', '$436.54');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (4, 4, 4, 'Demon Wind', '$791.98');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (5, 3, 5, '1, 2, 3, Sun (Un, deuz, trois, soleil)', '$631.55');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (6, 3, 6, 'Spetters', '$367.24');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (7, 2, 1, 'Switching Channels', '$658.91');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (8, 2, 8, 'What Matters Most', '$375.02');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (9, 6, 9, 'George and the Dragon', '$433.87');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (10, 5, 3, 'R', '$727.72');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (11, 2, 1, 'I Am Michael', '$697.63');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (12, 7, 10, 'Wayne''s World 2', '$738.98');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (13, 8, 2, 'World Without Thieves, A (Tian xia wu zei)', '$528.61');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (14, 9, 6, 'Sense & Sensibility', '$427.27');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (15, 5, 4, 'Vääpeli Körmy ja kahtesti laukeava', '$444.07');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (16, 9, 2, 'Tension', '$739.92');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (17, 2, 8, 'Bring It On: All or Nothing', '$490.78');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (18, 2, 10, '1971', '$873.65');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (19, 4, 10, 'When the Game Stands Tall', '$704.64');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (20, 5, 6, 'Sunnyside', '$566.49');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (21, 1, 5, 'Angus, Thongs and Perfect Snogging', '$392.15');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (22, 5, 10, 'Good German, The', '$469.97');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (23, 3, 5, 'Gifted Hands: The Ben Carson Story', '$404.84');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (24, 7, 7, 'Soldiers of Fortune', '$542.02');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (25, 5, 4, 'Screamtime', '$706.41');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (26, 5, 9, 'Price Above Rubies, A', '$663.45');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (27, 8, 1, 'Homicidal', '$342.51');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (28, 1, 1, 'Gloria', '$629.93');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (29, 6, 5, 'Last of the Red Hot Lovers', '$398.80');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (30, 10, 8, 'Brothers of the Head', '$353.27');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (31, 4, 8, 'Breakin'' 2: Electric Boogaloo', '$488.29');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (32, 7, 9, 'Dirty Dozen, The', '$626.16');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (33, 7, 8, 'This Is My Father', '$775.34');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (34, 8, 3, 'Mother India', '$367.70');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (35, 7, 9, 'Very Social Secretary, A', '$472.58');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (36, 10, 4, 'Jude the Obscure', '$407.26');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (37, 6, 5, 'Kung Phooey!', '$742.06');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (38, 9, 7, 'Awful Dr. Orlof, The (Gritos en la Noche)', '$869.08');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (39, 10, 6, 'Who the #$&% is Jackson Pollock?', '$361.94');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (40, 8, 8, 'Esa ja Vesa - auringonlaskun ratsastajat', '$694.82');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (41, 3, 9, 'Cassandra Crossing, The', '$836.26');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (42, 10, 3, 'Noah', '$655.31');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (43, 7, 2, 'Silver Bears', '$447.81');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (44, 8, 7, 'Hollow Point', '$322.87');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (45, 10, 1, 'Ainoat Oikeat', '$430.15');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (46, 2, 5, 'Christmas in Connecticut', '$532.56');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (47, 4, 8, 'Your Friend the Rat', '$495.66');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (48, 1, 5, 'Ip Man', '$724.36');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (49, 10, 4, 'Man with the Screaming Brain', '$702.86');
insert into libros (id_libro, id_categoria, id_editorial, titulo, precio) values (50, 9, 5, 'Cat in the Hat, The', '$763.22');

insert into libros_autores (id_libro, id_autor) values (17, 5);
insert into libros_autores (id_libro, id_autor) values (41, 10);
insert into libros_autores (id_libro, id_autor) values (16, 8);
insert into libros_autores (id_libro, id_autor) values (36, 10);
insert into libros_autores (id_libro, id_autor) values (32, 10);
insert into libros_autores (id_libro, id_autor) values (21, 8);
insert into libros_autores (id_libro, id_autor) values (9, 10);
insert into libros_autores (id_libro, id_autor) values (28, 3);
insert into libros_autores (id_libro, id_autor) values (10, 4);
insert into libros_autores (id_libro, id_autor) values (50, 4);
insert into libros_autores (id_libro, id_autor) values (22, 5);
insert into libros_autores (id_libro, id_autor) values (14, 10);
insert into libros_autores (id_libro, id_autor) values (18, 7);
insert into libros_autores (id_libro, id_autor) values (7, 9);
insert into libros_autores (id_libro, id_autor) values (10, 3);
insert into libros_autores (id_libro, id_autor) values (44, 9);
insert into libros_autores (id_libro, id_autor) values (38, 4);
insert into libros_autores (id_libro, id_autor) values (20, 10);
insert into libros_autores (id_libro, id_autor) values (30, 3);
insert into libros_autores (id_libro, id_autor) values (24, 10);
insert into libros_autores (id_libro, id_autor) values (36, 3);
insert into libros_autores (id_libro, id_autor) values (29, 8);
insert into libros_autores (id_libro, id_autor) values (11, 2);
insert into libros_autores (id_libro, id_autor) values (14, 6);
insert into libros_autores (id_libro, id_autor) values (21, 9);
insert into libros_autores (id_libro, id_autor) values (17, 3);
insert into libros_autores (id_libro, id_autor) values (25, 6);
insert into libros_autores (id_libro, id_autor) values (8, 5);
insert into libros_autores (id_libro, id_autor) values (17, 10);
insert into libros_autores (id_libro, id_autor) values (41, 4);
insert into libros_autores (id_libro, id_autor) values (11, 2);
insert into libros_autores (id_libro, id_autor) values (11, 5);
insert into libros_autores (id_libro, id_autor) values (31, 10);
insert into libros_autores (id_libro, id_autor) values (31, 9);
insert into libros_autores (id_libro, id_autor) values (48, 3);
insert into libros_autores (id_libro, id_autor) values (14, 1);
insert into libros_autores (id_libro, id_autor) values (44, 4);
insert into libros_autores (id_libro, id_autor) values (28, 9);
insert into libros_autores (id_libro, id_autor) values (18, 8);
insert into libros_autores (id_libro, id_autor) values (39, 6);
insert into libros_autores (id_libro, id_autor) values (50, 4);
insert into libros_autores (id_libro, id_autor) values (16, 6);
insert into libros_autores (id_libro, id_autor) values (10, 3);
insert into libros_autores (id_libro, id_autor) values (13, 9);
insert into libros_autores (id_libro, id_autor) values (23, 10);
insert into libros_autores (id_libro, id_autor) values (34, 2);
insert into libros_autores (id_libro, id_autor) values (31, 10);
insert into libros_autores (id_libro, id_autor) values (31, 4);
insert into libros_autores (id_libro, id_autor) values (16, 4);
insert into libros_autores (id_libro, id_autor) values (7, 9);

